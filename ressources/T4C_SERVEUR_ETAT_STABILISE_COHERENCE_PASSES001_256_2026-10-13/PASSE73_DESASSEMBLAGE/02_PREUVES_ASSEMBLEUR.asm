; Passe 73 — GROUPES_ET_CARTE
; PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions atteignables statiquement depuis les entrées définies, vérifiées octet par octet.
; NOP/INT3 exclues du comptage, zones data non traversées; branches indirectes non résolues.

; [00439D00] Group::??0Group ; instruction=78 ; plage_limite=00439DF0 ; issues=0
  00439d00: 55                                             push   ebp
  00439d01: 8b ec                                          mov    ebp,esp
  00439d03: 6a ff                                          push   0xffffffff
  00439d05: 68 7e 56 4d 00                                 push   0x4d567e
  00439d0a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00439d10: 50                                             push   eax
  00439d11: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00439d18: 83 ec 0c                                       sub    esp,0xc
  00439d1b: 53                                             push   ebx
  00439d1c: 56                                             push   esi
  00439d1d: 8b f1                                          mov    esi,ecx
  00439d1f: 57                                             push   edi
  00439d20: 8d 46 08                                       lea    eax,[esi+0x8]
  00439d23: 50                                             push   eax
  00439d24: 89 75 f0                                       mov    DWORD PTR [ebp-0x10],esi
  00439d27: c7 06 8c e5 4d 00                              mov    DWORD PTR [esi],0x4de58c
  00439d2d: c7 46 04 ff ff ff ff                           mov    DWORD PTR [esi+0x4],0xffffffff
  00439d34: ff 15 dc e0 4d 00                              call   DWORD PTR ds:0x4de0dc
  00439d3a: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  00439d3d: 8a 55 0b                                       mov    dl,BYTE PTR [ebp+0xb]
  00439d40: 8a 45 0b                                       mov    al,BYTE PTR [ebp+0xb]
  00439d43: 89 4e 20                                       mov    DWORD PTR [esi+0x20],ecx
  00439d46: 8d 7e 24                                       lea    edi,[esi+0x24]
  00439d49: 33 db                                          xor    ebx,ebx
  00439d4b: 6a 14                                          push   0x14
  00439d4d: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00439d50: 88 17                                          mov    BYTE PTR [edi],dl
  00439d52: 88 47 01                                       mov    BYTE PTR [edi+0x1],al
  00439d55: e8 96 82 00 00                                 call   0x441ff0
  00439d5a: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00439d5d: c6 40 10 01                                    mov    BYTE PTR [eax+0x10],0x1
  00439d61: 88 58 11                                       mov    BYTE PTR [eax+0x11],bl
  00439d64: 89 47 04                                       mov    DWORD PTR [edi+0x4],eax
  00439d67: c6 40 11 01                                    mov    BYTE PTR [eax+0x11],0x1
  00439d6b: 8b 47 04                                       mov    eax,DWORD PTR [edi+0x4]
  00439d6e: 89 40 04                                       mov    DWORD PTR [eax+0x4],eax
  00439d71: 8b 47 04                                       mov    eax,DWORD PTR [edi+0x4]
  00439d74: 89 00                                          mov    DWORD PTR [eax],eax
  00439d76: 8b 47 04                                       mov    eax,DWORD PTR [edi+0x4]
  00439d79: 89 40 08                                       mov    DWORD PTR [eax+0x8],eax
  00439d7c: 89 5f 08                                       mov    DWORD PTR [edi+0x8],ebx
  00439d7f: 8a 4d 0b                                       mov    cl,BYTE PTR [ebp+0xb]
  00439d82: 8a 55 0b                                       mov    dl,BYTE PTR [ebp+0xb]
  00439d85: 6a 14                                          push   0x14
  00439d87: 88 4e 30                                       mov    BYTE PTR [esi+0x30],cl
  00439d8a: 88 56 31                                       mov    BYTE PTR [esi+0x31],dl
  00439d8d: e8 5e 82 00 00                                 call   0x441ff0
  00439d92: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00439d95: c6 40 10 01                                    mov    BYTE PTR [eax+0x10],0x1
  00439d99: 88 58 11                                       mov    BYTE PTR [eax+0x11],bl
  00439d9c: 89 46 34                                       mov    DWORD PTR [esi+0x34],eax
  00439d9f: c6 40 11 01                                    mov    BYTE PTR [eax+0x11],0x1
  00439da3: 8b 46 34                                       mov    eax,DWORD PTR [esi+0x34]
  00439da6: 89 40 04                                       mov    DWORD PTR [eax+0x4],eax
  00439da9: 8b 46 34                                       mov    eax,DWORD PTR [esi+0x34]
  00439dac: 89 00                                          mov    DWORD PTR [eax],eax
  00439dae: 8b 46 34                                       mov    eax,DWORD PTR [esi+0x34]
  00439db1: 89 40 08                                       mov    DWORD PTR [eax+0x8],eax
  00439db4: 83 c4 08                                       add    esp,0x8
  00439db7: 89 5e 38                                       mov    DWORD PTR [esi+0x38],ebx
  00439dba: 8d 46 20                                       lea    eax,[esi+0x20]
  00439dbd: 50                                             push   eax
  00439dbe: 8d 45 e8                                       lea    eax,[ebp-0x18]
  00439dc1: 50                                             push   eax
  00439dc2: 8b cf                                          mov    ecx,edi
  00439dc4: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  00439dc8: c7 06 7c e5 4d 00                              mov    DWORD PTR [esi],0x4de57c
  00439dce: c6 46 3c 01                                    mov    BYTE PTR [esi+0x3c],0x1
  00439dd2: e8 c9 14 00 00                                 call   0x43b2a0
  00439dd7: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00439dda: 5f                                             pop    edi
  00439ddb: 8b c6                                          mov    eax,esi
  00439ddd: 5e                                             pop    esi
  00439dde: 5b                                             pop    ebx
  00439ddf: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00439de6: 8b e5                                          mov    esp,ebp
  00439de8: 5d                                             pop    ebp
  00439de9: c2 04 00                                       ret    0x4

; [00439DF0] Group::??1Group ; instruction=101 ; plage_limite=00439F10 ; issues=0
  00439df0: 55                                             push   ebp
  00439df1: 8b ec                                          mov    ebp,esp
  00439df3: 6a ff                                          push   0xffffffff
  00439df5: 68 a3 56 4d 00                                 push   0x4d56a3
  00439dfa: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00439e00: 50                                             push   eax
  00439e01: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00439e08: 83 ec 14                                       sub    esp,0x14
  00439e0b: 53                                             push   ebx
  00439e0c: 56                                             push   esi
  00439e0d: 57                                             push   edi
  00439e0e: 8b f9                                          mov    edi,ecx
  00439e10: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  00439e13: c7 07 7c e5 4d 00                              mov    DWORD PTR [edi],0x4de57c
  00439e19: 8b 47 34                                       mov    eax,DWORD PTR [edi+0x34]
  00439e1c: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00439e1e: 8d 77 30                                       lea    esi,[edi+0x30]
  00439e21: 50                                             push   eax
  00439e22: 51                                             push   ecx
  00439e23: 8d 45 f0                                       lea    eax,[ebp-0x10]
  00439e26: 50                                             push   eax
  00439e27: 8b ce                                          mov    ecx,esi
  00439e29: c7 45 fc 01 00 00 00                           mov    DWORD PTR [ebp-0x4],0x1
  00439e30: e8 5b 15 00 00                                 call   0x43b390
  00439e35: 8b 46 04                                       mov    eax,DWORD PTR [esi+0x4]
  00439e38: 50                                             push   eax
  00439e39: e8 22 82 00 00                                 call   0x442060
  00439e3e: 33 c9                                          xor    ecx,ecx
  00439e40: 89 4e 04                                       mov    DWORD PTR [esi+0x4],ecx
  00439e43: 89 4e 08                                       mov    DWORD PTR [esi+0x8],ecx
  00439e46: 8b 47 28                                       mov    eax,DWORD PTR [edi+0x28]
  00439e49: 8b 57 2c                                       mov    edx,DWORD PTR [edi+0x2c]
  00439e4c: 8d 77 24                                       lea    esi,[edi+0x24]
  00439e4f: 8b d8                                          mov    ebx,eax
  00439e51: 8b 00                                          mov    eax,DWORD PTR [eax]
  00439e53: 83 c4 04                                       add    esp,0x4
  00439e56: 3b d1                                          cmp    edx,ecx
  00439e58: 88 4d fc                                       mov    BYTE PTR [ebp-0x4],cl
  00439e5b: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  00439e5e: 74 4b                                          je     0x439eab
  00439e60: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  00439e63: 51                                             push   ecx
  00439e64: 8b ce                                          mov    ecx,esi
  00439e66: e8 55 9c fc ff                                 call   0x403ac0
  00439e6b: 8b d0                                          mov    edx,eax
  00439e6d: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00439e70: 3b 02                                          cmp    eax,DWORD PTR [edx]
  00439e72: 75 37                                          jne    0x439eab
  00439e74: 8b 4e 04                                       mov    ecx,DWORD PTR [esi+0x4]
  00439e77: 3b d9                                          cmp    ebx,ecx
  00439e79: 75 30                                          jne    0x439eab
  00439e7b: 8b 41 04                                       mov    eax,DWORD PTR [ecx+0x4]
  00439e7e: 50                                             push   eax
  00439e7f: 8b ce                                          mov    ecx,esi
  00439e81: e8 1a a3 fc ff                                 call   0x4041a0
  00439e86: 8b 46 04                                       mov    eax,DWORD PTR [esi+0x4]
  00439e89: 89 40 04                                       mov    DWORD PTR [eax+0x4],eax
  00439e8c: 8b 46 04                                       mov    eax,DWORD PTR [esi+0x4]
  00439e8f: c7 46 08 00 00 00 00                           mov    DWORD PTR [esi+0x8],0x0
  00439e96: 89 00                                          mov    DWORD PTR [eax],eax
  00439e98: 8b 46 04                                       mov    eax,DWORD PTR [esi+0x4]
  00439e9b: 8d 4d e4                                       lea    ecx,[ebp-0x1c]
  00439e9e: 51                                             push   ecx
  00439e9f: 8b ce                                          mov    ecx,esi
  00439ea1: 89 40 08                                       mov    DWORD PTR [eax+0x8],eax
  00439ea4: e8 17 9c fc ff                                 call   0x403ac0
  00439ea9: eb 25                                          jmp    0x439ed0
  00439eab: 3b c3                                          cmp    eax,ebx
  00439ead: 74 21                                          je     0x439ed0
  00439eaf: 6a 00                                          push   0x0
  00439eb1: 8d 55 e8                                       lea    edx,[ebp-0x18]
  00439eb4: 52                                             push   edx
  00439eb5: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00439eb8: e8 63 a3 fc ff                                 call   0x404220
  00439ebd: 8b 00                                          mov    eax,DWORD PTR [eax]
  00439ebf: 50                                             push   eax
  00439ec0: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  00439ec3: 51                                             push   ecx
  00439ec4: 8b ce                                          mov    ecx,esi
  00439ec6: e8 95 9d fc ff                                 call   0x403c60
  00439ecb: 39 5d f0                                       cmp    DWORD PTR [ebp-0x10],ebx
  00439ece: 75 df                                          jne    0x439eaf
  00439ed0: 8b 56 04                                       mov    edx,DWORD PTR [esi+0x4]
  00439ed3: 52                                             push   edx
  00439ed4: e8 87 81 00 00                                 call   0x442060
  00439ed9: 33 c0                                          xor    eax,eax
  00439edb: 89 46 04                                       mov    DWORD PTR [esi+0x4],eax
  00439ede: 89 46 08                                       mov    DWORD PTR [esi+0x8],eax
  00439ee1: c7 07 8c e5 4d 00                              mov    DWORD PTR [edi],0x4de58c
  00439ee7: 83 c4 04                                       add    esp,0x4
  00439eea: 83 c7 08                                       add    edi,0x8
  00439eed: 57                                             push   edi
  00439eee: ff 15 e0 e0 4d 00                              call   DWORD PTR ds:0x4de0e0
  00439ef4: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00439ef7: 5f                                             pop    edi
  00439ef8: 5e                                             pop    esi
  00439ef9: 5b                                             pop    ebx
  00439efa: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00439f01: 8b e5                                          mov    esp,ebp
  00439f03: 5d                                             pop    ebp
  00439f04: c3                                             ret

; [00439F10] Group::?CreateGroup@Group ; instruction=46 ; plage_limite=00439FA0 ; issues=0
  00439f10: 55                                             push   ebp
  00439f11: 8b ec                                          mov    ebp,esp
  00439f13: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00439f19: 6a ff                                          push   0xffffffff
  00439f1b: 68 bb 56 4d 00                                 push   0x4d56bb
  00439f20: 50                                             push   eax
  00439f21: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00439f28: 56                                             push   esi
  00439f29: 57                                             push   edi
  00439f2a: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  00439f2d: 8b cf                                          mov    ecx,edi
  00439f2f: 33 f6                                          xor    esi,esi
  00439f31: e8 8a 5d fe ff                                 call   0x41fcc0
  00439f36: 85 c0                                          test   eax,eax
  00439f38: 75 45                                          jne    0x439f7f
  00439f3a: 8b 07                                          mov    eax,DWORD PTR [edi]
  00439f3c: 8b cf                                          mov    ecx,edi
  00439f3e: ff 90 3c 01 00 00                              call   DWORD PTR [eax+0x13c]
  00439f44: 66 3d 01 00                                    cmp    ax,0x1
  00439f48: 72 35                                          jb     0x439f7f
  00439f4a: 6a 40                                          push   0x40
  00439f4c: e8 9f 80 00 00                                 call   0x441ff0
  00439f51: 83 c4 04                                       add    esp,0x4
  00439f54: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  00439f57: 3b c6                                          cmp    eax,esi
  00439f59: 89 75 fc                                       mov    DWORD PTR [ebp-0x4],esi
  00439f5c: 74 0a                                          je     0x439f68
  00439f5e: 57                                             push   edi
  00439f5f: 8b c8                                          mov    ecx,eax
  00439f61: e8 9a fd ff ff                                 call   0x439d00
  00439f66: 8b f0                                          mov    esi,eax
  00439f68: 56                                             push   esi
  00439f69: 8b cf                                          mov    ecx,edi
  00439f6b: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00439f72: e8 39 5d fe ff                                 call   0x41fcb0
  00439f77: 57                                             push   edi
  00439f78: 8b ce                                          mov    ecx,esi
  00439f7a: e8 81 0f 00 00                                 call   0x43af00
  00439f7f: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00439f82: 5f                                             pop    edi
  00439f83: 8b c6                                          mov    eax,esi
  00439f85: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00439f8c: 5e                                             pop    esi
  00439f8d: 8b e5                                          mov    esp,ebp
  00439f8f: 5d                                             pop    ebp
  00439f90: c3                                             ret

; [00439FA0] Group::?DistributeKillXP@Group ; instruction=179 ; plage_limite=0043A1D0 ; issues=0
  00439fa0: 55                                             push   ebp
  00439fa1: 8b ec                                          mov    ebp,esp
  00439fa3: 6a ff                                          push   0xffffffff
  00439fa5: 68 d8 56 4d 00                                 push   0x4d56d8
  00439faa: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00439fb0: 50                                             push   eax
  00439fb1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00439fb8: 81 ec 1c 08 00 00                              sub    esp,0x81c
  00439fbe: 8a 45 0b                                       mov    al,BYTE PTR [ebp+0xb]
  00439fc1: 53                                             push   ebx
  00439fc2: 56                                             push   esi
  00439fc3: 57                                             push   edi
  00439fc4: 8b f1                                          mov    esi,ecx
  00439fc6: 6a 00                                          push   0x0
  00439fc8: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  00439fcb: 88 45 d8                                       mov    BYTE PTR [ebp-0x28],al
  00439fce: e8 ad 17 00 00                                 call   0x43b780
  00439fd3: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  00439fd6: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  00439fd9: 51                                             push   ecx
  00439fda: 52                                             push   edx
  00439fdb: 8b ce                                          mov    ecx,esi
  00439fdd: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  00439fe4: e8 c7 0c 00 00                                 call   0x43acb0
  00439fe9: 8b 75 dc                                       mov    esi,DWORD PTR [ebp-0x24]
  00439fec: 85 f6                                          test   esi,esi
  00439fee: 0f 84 ba 01 00 00                              je     0x43a1ae
  00439ff4: 8b 5d e0                                       mov    ebx,DWORD PTR [ebp-0x20]
  00439ff7: 8b fb                                          mov    edi,ebx
  00439ff9: 2b fe                                          sub    edi,esi
  00439ffb: c1 ff 02                                       sar    edi,0x2
  00439ffe: 0f 84 9d 01 00 00                              je     0x43a1a1
  0043a004: 8d 47 ff                                       lea    eax,[edi-0x1]
  0043a007: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  0043a00a: c7 45 ec 00 00 00 00                           mov    DWORD PTR [ebp-0x14],0x0
  0043a011: df 6d e8                                       fild   QWORD PTR [ebp-0x18]
  0043a014: dc 0d 18 ef 4d 00                              fmul   QWORD PTR ds:0x4def18
  0043a01a: dc 05 c0 e8 4d 00                              fadd   QWORD PTR ds:0x4de8c0
  0043a020: dc 15 10 ef 4d 00                              fcom   QWORD PTR ds:0x4def10
  0043a026: df e0                                          fnstsw ax
  0043a028: f6 c4 41                                       test   ah,0x41
  0043a02b: 75 08                                          jne    0x43a035
  0043a02d: dd d8                                          fstp   st(0)
  0043a02f: dd 05 10 ef 4d 00                              fld    QWORD PTR ds:0x4def10
  0043a035: df 6d 0c                                       fild   QWORD PTR [ebp+0xc]
  0043a038: d8 c9                                          fmul   st,st(1)
  0043a03a: e8 3b 7d 09 00                                 call   0x4d1d7a
  0043a03f: dd d8                                          fstp   st(0)
  0043a041: 6a 00                                          push   0x0
  0043a043: 57                                             push   edi
  0043a044: 52                                             push   edx
  0043a045: 50                                             push   eax
  0043a046: e8 15 7e 09 00                                 call   0x4d1e60
  0043a04b: 3b f3                                          cmp    esi,ebx
  0043a04d: 89 45 0c                                       mov    DWORD PTR [ebp+0xc],eax
  0043a050: 89 55 10                                       mov    DWORD PTR [ebp+0x10],edx
  0043a053: c7 45 08 00 00 00 00                           mov    DWORD PTR [ebp+0x8],0x0
  0043a05a: 74 35                                          je     0x43a091
  0043a05c: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  0043a05e: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0043a060: ff 92 3c 01 00 00                              call   DWORD PTR [edx+0x13c]
  0043a066: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0043a069: 25 ff ff 00 00                                 and    eax,0xffff
  0043a06e: 3b c1                                          cmp    eax,ecx
  0043a070: 76 12                                          jbe    0x43a084
  0043a072: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  0043a074: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043a076: ff 90 3c 01 00 00                              call   DWORD PTR [eax+0x13c]
  0043a07c: 25 ff ff 00 00                                 and    eax,0xffff
  0043a081: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  0043a084: 8b 5d e0                                       mov    ebx,DWORD PTR [ebp-0x20]
  0043a087: 83 c6 04                                       add    esi,0x4
  0043a08a: 3b f3                                          cmp    esi,ebx
  0043a08c: 75 ce                                          jne    0x43a05c
  0043a08e: 8b 75 dc                                       mov    esi,DWORD PTR [ebp-0x24]
  0043a091: 8b c6                                          mov    eax,esi
  0043a093: 3b c3                                          cmp    eax,ebx
  0043a095: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0043a098: 0f 84 03 01 00 00                              je     0x43a1a1
  0043a09e: eb 03                                          jmp    0x43a0a3
  0043a0a0: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  0043a0a3: 8b 30                                          mov    esi,DWORD PTR [eax]
  0043a0a5: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043a0a7: 8b ce                                          mov    ecx,esi
  0043a0a9: ff 92 3c 01 00 00                              call   DWORD PTR [edx+0x13c]
  0043a0af: 33 c9                                          xor    ecx,ecx
  0043a0b1: 66 8b c8                                       mov    cx,ax
  0043a0b4: b8 1f 85 eb 51                                 mov    eax,0x51eb851f
  0043a0b9: 81 e1 ff ff 00 00                              and    ecx,0xffff
  0043a0bf: f7 e9                                          imul   ecx
  0043a0c1: c1 fa 03                                       sar    edx,0x3
  0043a0c4: 8b c2                                          mov    eax,edx
  0043a0c6: c1 e8 1f                                       shr    eax,0x1f
  0043a0c9: 03 d0                                          add    edx,eax
  0043a0cb: 8d 3c 95 04 00 00 00                           lea    edi,[edx*4+0x4]
  0043a0d2: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043a0d4: 8b ce                                          mov    ecx,esi
  0043a0d6: ff 92 3c 01 00 00                              call   DWORD PTR [edx+0x13c]
  0043a0dc: 66 8b c8                                       mov    cx,ax
  0043a0df: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0043a0e2: 33 d2                                          xor    edx,edx
  0043a0e4: 8b 5d 10                                       mov    ebx,DWORD PTR [ebp+0x10]
  0043a0e7: 81 e1 ff ff 00 00                              and    ecx,0xffff
  0043a0ed: 2b c1                                          sub    eax,ecx
  0043a0ef: f7 f7                                          div    edi
  0043a0f1: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  0043a0f4: 85 c0                                          test   eax,eax
  0043a0f6: 76 25                                          jbe    0x43a11d
  0043a0f8: 83 f8 01                                       cmp    eax,0x1
  0043a0fb: dd 05 18 ef 4d 00                              fld    QWORD PTR ds:0x4def18
  0043a101: 76 0a                                          jbe    0x43a10d
  0043a103: 48                                             dec    eax
  0043a104: 48                                             dec    eax
  0043a105: dc 0d 08 ef 4d 00                              fmul   QWORD PTR ds:0x4def08
  0043a10b: 75 f7                                          jne    0x43a104
  0043a10d: df 6d 0c                                       fild   QWORD PTR [ebp+0xc]
  0043a110: d8 c9                                          fmul   st,st(1)
  0043a112: e8 63 7c 09 00                                 call   0x4d1d7a
  0043a117: dd d8                                          fstp   st(0)
  0043a119: 8b f8                                          mov    edi,eax
  0043a11b: 8b da                                          mov    ebx,edx
  0043a11d: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a11f: 8b ce                                          mov    ecx,esi
  0043a121: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  0043a124: ff 50 54                                       call   DWORD PTR [eax+0x54]
  0043a127: 03 c7                                          add    eax,edi
  0043a129: 13 d3                                          adc    edx,ebx
  0043a12b: 52                                             push   edx
  0043a12c: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  0043a12f: 50                                             push   eax
  0043a130: 8b ce                                          mov    ecx,esi
  0043a132: ff 52 50                                       call   DWORD PTR [edx+0x50]
  0043a135: 8b ce                                          mov    ecx,esi
  0043a137: e8 b4 09 fe ff                                 call   0x41aaf0
  0043a13c: 85 c0                                          test   eax,eax
  0043a13e: 74 40                                          je     0x43a180
  0043a140: 8b c8                                          mov    ecx,eax
  0043a142: e8 99 a9 01 00                                 call   0x454ae0
  0043a147: 25 00 00 00 80                                 and    eax,0x80000000
  0043a14c: 33 c9                                          xor    ecx,ecx
  0043a14e: 0b c1                                          or     eax,ecx
  0043a150: 74 2e                                          je     0x43a180
  0043a152: 53                                             push   ebx
  0043a153: 57                                             push   edi
  0043a154: 8d 85 d8 f7 ff ff                              lea    eax,[ebp-0x828]
  0043a15a: 68 b4 34 50 00                                 push   0x5034b4
  0043a15f: 50                                             push   eax
  0043a160: 88 8d d8 f7 ff ff                              mov    BYTE PTR [ebp-0x828],cl
  0043a166: e8 d5 97 fc ff                                 call   0x403940
  0043a16b: 83 c4 0c                                       add    esp,0xc
  0043a16e: 8b cc                                          mov    ecx,esp
  0043a170: 89 65 ec                                       mov    DWORD PTR [ebp-0x14],esp
  0043a173: 50                                             push   eax
  0043a174: e8 eb 78 09 00                                 call   0x4d1a64
  0043a179: 8b ce                                          mov    ecx,esi
  0043a17b: e8 10 8d fe ff                                 call   0x422e90
  0043a180: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043a182: 8b ce                                          mov    ecx,esi
  0043a184: ff 92 30 01 00 00                              call   DWORD PTR [edx+0x130]
  0043a18a: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  0043a18d: 8b 4d e0                                       mov    ecx,DWORD PTR [ebp-0x20]
  0043a190: 83 c0 04                                       add    eax,0x4
  0043a193: 3b c1                                          cmp    eax,ecx
  0043a195: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0043a198: 0f 85 02 ff ff ff                              jne    0x43a0a0
  0043a19e: 8b 75 dc                                       mov    esi,DWORD PTR [ebp-0x24]
  0043a1a1: 85 f6                                          test   esi,esi
  0043a1a3: 74 09                                          je     0x43a1ae
  0043a1a5: 56                                             push   esi
  0043a1a6: e8 b5 7e 00 00                                 call   0x442060
  0043a1ab: 83 c4 04                                       add    esp,0x4
  0043a1ae: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043a1b1: 5f                                             pop    edi
  0043a1b2: 5e                                             pop    esi
  0043a1b3: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043a1ba: 5b                                             pop    ebx
  0043a1bb: 8b e5                                          mov    esp,ebp
  0043a1bd: 5d                                             pop    ebp
  0043a1be: c2 0c 00                                       ret    0xc

; [0043A1D0] Group::?DistributeKillGold@Group ; instruction=47 ; plage_limite=0043A260 ; issues=0
  0043a1d0: 55                                             push   ebp
  0043a1d1: 8b ec                                          mov    ebp,esp
  0043a1d3: 6a ff                                          push   0xffffffff
  0043a1d5: 68 f8 56 4d 00                                 push   0x4d56f8
  0043a1da: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043a1e0: 50                                             push   eax
  0043a1e1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043a1e8: 51                                             push   ecx
  0043a1e9: 56                                             push   esi
  0043a1ea: 8b f1                                          mov    esi,ecx
  0043a1ec: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a1ee: 89 75 f0                                       mov    DWORD PTR [ebp-0x10],esi
  0043a1f1: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043a1f4: 8a 46 3c                                       mov    al,BYTE PTR [esi+0x3c]
  0043a1f7: 84 c0                                          test   al,al
  0043a1f9: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0043a200: 74 11                                          je     0x43a213
  0043a202: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a205: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  0043a208: 51                                             push   ecx
  0043a209: 52                                             push   edx
  0043a20a: 8b ce                                          mov    ecx,esi
  0043a20c: e8 4f 00 00 00                                 call   0x43a260
  0043a211: eb 1f                                          jmp    0x43a232
  0043a213: 53                                             push   ebx
  0043a214: 57                                             push   edi
  0043a215: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  0043a218: 8b 1f                                          mov    ebx,DWORD PTR [edi]
  0043a21a: 6a 01                                          push   0x1
  0043a21c: 8b cf                                          mov    ecx,edi
  0043a21e: ff 93 04 01 00 00                              call   DWORD PTR [ebx+0x104]
  0043a224: 03 45 0c                                       add    eax,DWORD PTR [ebp+0xc]
  0043a227: 50                                             push   eax
  0043a228: 8b cf                                          mov    ecx,edi
  0043a22a: ff 93 08 01 00 00                              call   DWORD PTR [ebx+0x108]
  0043a230: 5f                                             pop    edi
  0043a231: 5b                                             pop    ebx
  0043a232: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a234: 8b ce                                          mov    ecx,esi
  0043a236: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043a23d: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0043a240: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043a243: 5e                                             pop    esi
  0043a244: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043a24b: 8b e5                                          mov    esp,ebp
  0043a24d: 5d                                             pop    ebp
  0043a24e: c2 08 00                                       ret    0x8

; [0043A260] Group::?DistributeGold@Group ; instruction=110 ; plage_limite=0043A3B0 ; issues=0
  0043a260: 55                                             push   ebp
  0043a261: 8b ec                                          mov    ebp,esp
  0043a263: 6a ff                                          push   0xffffffff
  0043a265: 68 28 57 4d 00                                 push   0x4d5728
  0043a26a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043a270: 50                                             push   eax
  0043a271: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043a278: 81 ec 18 04 00 00                              sub    esp,0x418
  0043a27e: 53                                             push   ebx
  0043a27f: 56                                             push   esi
  0043a280: 8b f1                                          mov    esi,ecx
  0043a282: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a284: 57                                             push   edi
  0043a285: 89 75 e0                                       mov    DWORD PTR [ebp-0x20],esi
  0043a288: 89 75 dc                                       mov    DWORD PTR [ebp-0x24],esi
  0043a28b: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043a28e: 8a 4d 0b                                       mov    cl,BYTE PTR [ebp+0xb]
  0043a291: 33 ff                                          xor    edi,edi
  0043a293: 88 4d e4                                       mov    BYTE PTR [ebp-0x1c],cl
  0043a296: 57                                             push   edi
  0043a297: 8d 4d e4                                       lea    ecx,[ebp-0x1c]
  0043a29a: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  0043a29d: e8 de 14 00 00                                 call   0x43b780
  0043a2a2: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0043a2a5: 8d 55 e4                                       lea    edx,[ebp-0x1c]
  0043a2a8: 52                                             push   edx
  0043a2a9: 50                                             push   eax
  0043a2aa: 8b ce                                          mov    ecx,esi
  0043a2ac: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043a2b0: e8 fb 09 00 00                                 call   0x43acb0
  0043a2b5: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  0043a2b8: 3b cf                                          cmp    ecx,edi
  0043a2ba: 0f 84 c0 00 00 00                              je     0x43a380
  0043a2c0: 8b 5d ec                                       mov    ebx,DWORD PTR [ebp-0x14]
  0043a2c3: 8b fb                                          mov    edi,ebx
  0043a2c5: 2b f9                                          sub    edi,ecx
  0043a2c7: c1 ff 02                                       sar    edi,0x2
  0043a2ca: 0f 84 a1 00 00 00                              je     0x43a371
  0043a2d0: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  0043a2d3: 33 d2                                          xor    edx,edx
  0043a2d5: f7 f7                                          div    edi
  0043a2d7: 3b cb                                          cmp    ecx,ebx
  0043a2d9: 8b f8                                          mov    edi,eax
  0043a2db: 8b c1                                          mov    eax,ecx
  0043a2dd: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  0043a2e0: 0f 84 8b 00 00 00                              je     0x43a371
  0043a2e6: 8b 30                                          mov    esi,DWORD PTR [eax]
  0043a2e8: 8b 1e                                          mov    ebx,DWORD PTR [esi]
  0043a2ea: 6a 00                                          push   0x0
  0043a2ec: 8b d3                                          mov    edx,ebx
  0043a2ee: 8b ce                                          mov    ecx,esi
  0043a2f0: ff 92 04 01 00 00                              call   DWORD PTR [edx+0x104]
  0043a2f6: 03 c7                                          add    eax,edi
  0043a2f8: 50                                             push   eax
  0043a2f9: 8b ce                                          mov    ecx,esi
  0043a2fb: ff 93 08 01 00 00                              call   DWORD PTR [ebx+0x108]
  0043a301: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0043a304: 8b 08                                          mov    ecx,DWORD PTR [eax]
  0043a306: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0043a308: 57                                             push   edi
  0043a309: 68 58 13 51 00                                 push   0x511358
  0043a30e: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  0043a314: 50                                             push   eax
  0043a315: 68 53 1d 00 00                                 push   0x1d53
  0043a31a: e8 d1 36 00 00                                 call   0x43d9f0
  0043a31f: 83 c4 0c                                       add    esp,0xc
  0043a322: 50                                             push   eax
  0043a323: 8d 85 dc fb ff ff                              lea    eax,[ebp-0x424]
  0043a329: 50                                             push   eax
  0043a32a: ff 15 44 e3 4d 00                              call   DWORD PTR ds:0x4de344
  0043a330: 83 c4 08                                       add    esp,0x8
  0043a333: 8d 95 dc fb ff ff                              lea    edx,[ebp-0x424]
  0043a339: 8b cc                                          mov    ecx,esp
  0043a33b: 89 65 0c                                       mov    DWORD PTR [ebp+0xc],esp
  0043a33e: 52                                             push   edx
  0043a33f: e8 20 77 09 00                                 call   0x4d1a64
  0043a344: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043a347: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043a34b: e8 30 10 00 00                                 call   0x43b380
  0043a350: 8b 08                                          mov    ecx,DWORD PTR [eax]
  0043a352: e8 39 8b fe ff                                 call   0x422e90
  0043a357: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0043a35a: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  0043a35d: 83 c0 04                                       add    eax,0x4
  0043a360: 3b c1                                          cmp    eax,ecx
  0043a362: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  0043a365: 0f 85 7b ff ff ff                              jne    0x43a2e6
  0043a36b: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  0043a36e: 8b 75 e0                                       mov    esi,DWORD PTR [ebp-0x20]
  0043a371: 85 c9                                          test   ecx,ecx
  0043a373: 74 09                                          je     0x43a37e
  0043a375: 51                                             push   ecx
  0043a376: e8 e5 7c 00 00                                 call   0x442060
  0043a37b: 83 c4 04                                       add    esp,0x4
  0043a37e: 33 ff                                          xor    edi,edi
  0043a380: 89 7d e8                                       mov    DWORD PTR [ebp-0x18],edi
  0043a383: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  0043a386: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  0043a389: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a38b: 8b ce                                          mov    ecx,esi
  0043a38d: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043a394: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0043a397: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043a39a: 5f                                             pop    edi
  0043a39b: 5e                                             pop    esi
  0043a39c: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043a3a3: 5b                                             pop    ebx
  0043a3a4: 8b e5                                          mov    esp,ebp
  0043a3a6: 5d                                             pop    ebp
  0043a3a7: c2 08 00                                       ret    0x8

; [0043A3B0] Group::?Invite@Group ; instruction=263 ; plage_limite=0043A6E0 ; issues=0
  0043a3b0: 55                                             push   ebp
  0043a3b1: 8b ec                                          mov    ebp,esp
  0043a3b3: 6a ff                                          push   0xffffffff
  0043a3b5: 68 58 57 4d 00                                 push   0x4d5758
  0043a3ba: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043a3c0: 50                                             push   eax
  0043a3c1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043a3c8: 83 ec 24                                       sub    esp,0x24
  0043a3cb: 53                                             push   ebx
  0043a3cc: 56                                             push   esi
  0043a3cd: 8b f1                                          mov    esi,ecx
  0043a3cf: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a3d1: 57                                             push   edi
  0043a3d2: 89 75 e8                                       mov    DWORD PTR [ebp-0x18],esi
  0043a3d5: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043a3d8: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a3db: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0043a3e2: e8 d9 58 fe ff                                 call   0x41fcc0
  0043a3e7: 85 c0                                          test   eax,eax
  0043a3e9: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  0043a3ec: 74 57                                          je     0x43a445
  0043a3ee: 8b cb                                          mov    ecx,ebx
  0043a3f0: e8 cb 58 fe ff                                 call   0x41fcc0
  0043a3f5: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a3f8: 8b f8                                          mov    edi,eax
  0043a3fa: e8 c1 58 fe ff                                 call   0x41fcc0
  0043a3ff: 3b c7                                          cmp    eax,edi
  0043a401: 74 42                                          je     0x43a445
  0043a403: 8b 13                                          mov    edx,DWORD PTR [ebx]
  0043a405: 68 58 13 51 00                                 push   0x511358
  0043a40a: 8b cb                                          mov    ecx,ebx
  0043a40c: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  0043a412: 50                                             push   eax
  0043a413: 68 5e 1c 00 00                                 push   0x1c5e
  0043a418: e8 d3 35 00 00                                 call   0x43d9f0
  0043a41d: 83 c4 08                                       add    esp,0x8
  0043a420: 8b cc                                          mov    ecx,esp
  0043a422: 89 65 ec                                       mov    DWORD PTR [ebp-0x14],esp
  0043a425: 50                                             push   eax
  0043a426: e8 39 76 09 00                                 call   0x4d1a64
  0043a42b: 8b cb                                          mov    ecx,ebx
  0043a42d: e8 5e 8a fe ff                                 call   0x422e90
  0043a432: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a434: 8b ce                                          mov    ecx,esi
  0043a436: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043a43d: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0043a440: e9 7d 02 00 00                                 jmp    0x43a6c2
  0043a445: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a448: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0043a44a: ff 92 3c 01 00 00                              call   DWORD PTR [edx+0x13c]
  0043a450: 66 3d 01 00                                    cmp    ax,0x1
  0043a454: 73 27                                          jae    0x43a47d
  0043a456: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0043a458: 68 58 13 51 00                                 push   0x511358
  0043a45d: 8b cb                                          mov    ecx,ebx
  0043a45f: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0043a465: 50                                             push   eax
  0043a466: 68 5f 1c 00 00                                 push   0x1c5f
  0043a46b: e8 80 35 00 00                                 call   0x43d9f0
  0043a470: 83 c4 08                                       add    esp,0x8
  0043a473: 8b cc                                          mov    ecx,esp
  0043a475: 89 65 ec                                       mov    DWORD PTR [ebp-0x14],esp
  0043a478: e9 2a 02 00 00                                 jmp    0x43a6a7
  0043a47d: 3b 5e 20                                       cmp    ebx,DWORD PTR [esi+0x20]
  0043a480: 74 27                                          je     0x43a4a9
  0043a482: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0043a484: 68 58 13 51 00                                 push   0x511358
  0043a489: 8b cb                                          mov    ecx,ebx
  0043a48b: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0043a491: 50                                             push   eax
  0043a492: 68 60 1c 00 00                                 push   0x1c60
  0043a497: e8 54 35 00 00                                 call   0x43d9f0
  0043a49c: 83 c4 08                                       add    esp,0x8
  0043a49f: 8b cc                                          mov    ecx,esp
  0043a4a1: 89 65 ec                                       mov    DWORD PTR [ebp-0x14],esp
  0043a4a4: e9 fe 01 00 00                                 jmp    0x43a6a7
  0043a4a9: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  0043a4ac: 8d 4d 0c                                       lea    ecx,[ebp+0xc]
  0043a4af: 8d 7e 24                                       lea    edi,[esi+0x24]
  0043a4b2: 51                                             push   ecx
  0043a4b3: 8b cf                                          mov    ecx,edi
  0043a4b5: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  0043a4b8: e8 23 13 00 00                                 call   0x43b7e0
  0043a4bd: 8b 7f 04                                       mov    edi,DWORD PTR [edi+0x4]
  0043a4c0: 3b c7                                          cmp    eax,edi
  0043a4c2: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a4c5: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  0043a4c8: 74 0a                                          je     0x43a4d4
  0043a4ca: 3b 48 0c                                       cmp    ecx,DWORD PTR [eax+0xc]
  0043a4cd: 72 05                                          jb     0x43a4d4
  0043a4cf: 8d 45 08                                       lea    eax,[ebp+0x8]
  0043a4d2: eb 06                                          jmp    0x43a4da
  0043a4d4: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  0043a4d7: 8d 45 f0                                       lea    eax,[ebp-0x10]
  0043a4da: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  0043a4dd: 39 10                                          cmp    DWORD PTR [eax],edx
  0043a4df: 74 27                                          je     0x43a508
  0043a4e1: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0043a4e3: 68 58 13 51 00                                 push   0x511358
  0043a4e8: 8b cb                                          mov    ecx,ebx
  0043a4ea: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0043a4f0: 50                                             push   eax
  0043a4f1: 68 61 1c 00 00                                 push   0x1c61
  0043a4f6: e8 f5 34 00 00                                 call   0x43d9f0
  0043a4fb: 83 c4 08                                       add    esp,0x8
  0043a4fe: 8b cc                                          mov    ecx,esp
  0043a500: 89 65 ec                                       mov    DWORD PTR [ebp-0x14],esp
  0043a503: e9 9f 01 00 00                                 jmp    0x43a6a7
  0043a508: 8b 46 2c                                       mov    eax,DWORD PTR [esi+0x2c]
  0043a50b: 8b 56 38                                       mov    edx,DWORD PTR [esi+0x38]
  0043a50e: 03 c2                                          add    eax,edx
  0043a510: 83 f8 08                                       cmp    eax,0x8
  0043a513: 72 27                                          jb     0x43a53c
  0043a515: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0043a517: 68 58 13 51 00                                 push   0x511358
  0043a51c: 8b cb                                          mov    ecx,ebx
  0043a51e: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0043a524: 50                                             push   eax
  0043a525: 68 63 1c 00 00                                 push   0x1c63
  0043a52a: e8 c1 34 00 00                                 call   0x43d9f0
  0043a52f: 83 c4 08                                       add    esp,0x8
  0043a532: 8b cc                                          mov    ecx,esp
  0043a534: 89 65 ec                                       mov    DWORD PTR [ebp-0x14],esp
  0043a537: e9 6b 01 00 00                                 jmp    0x43a6a7
  0043a53c: e8 cf 82 fe ff                                 call   0x422810
  0043a541: 84 c0                                          test   al,al
  0043a543: 75 27                                          jne    0x43a56c
  0043a545: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0043a547: 68 58 13 51 00                                 push   0x511358
  0043a54c: 8b cb                                          mov    ecx,ebx
  0043a54e: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0043a554: 50                                             push   eax
  0043a555: 68 fd 28 00 00                                 push   0x28fd
  0043a55a: e8 91 34 00 00                                 call   0x43d9f0
  0043a55f: 83 c4 08                                       add    esp,0x8
  0043a562: 8b cc                                          mov    ecx,esp
  0043a564: 89 65 ec                                       mov    DWORD PTR [ebp-0x14],esp
  0043a567: e9 3b 01 00 00                                 jmp    0x43a6a7
  0043a56c: 8b 56 34                                       mov    edx,DWORD PTR [esi+0x34]
  0043a56f: 8b 42 04                                       mov    eax,DWORD PTR [edx+0x4]
  0043a572: 80 78 11 00                                    cmp    BYTE PTR [eax+0x11],0x0
  0043a576: b1 01                                          mov    cl,0x1
  0043a578: 8b fa                                          mov    edi,edx
  0043a57a: 88 4d f0                                       mov    BYTE PTR [ebp-0x10],cl
  0043a57d: 75 1f                                          jne    0x43a59e
  0043a57f: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a582: 3b 48 0c                                       cmp    ecx,DWORD PTR [eax+0xc]
  0043a585: 8b f8                                          mov    edi,eax
  0043a587: 0f 92 c1                                       setb   cl
  0043a58a: 84 c9                                          test   cl,cl
  0043a58c: 88 4d f0                                       mov    BYTE PTR [ebp-0x10],cl
  0043a58f: 74 04                                          je     0x43a595
  0043a591: 8b 00                                          mov    eax,DWORD PTR [eax]
  0043a593: eb 03                                          jmp    0x43a598
  0043a595: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  0043a598: 80 78 11 00                                    cmp    BYTE PTR [eax+0x11],0x0
  0043a59c: 74 e1                                          je     0x43a57f
  0043a59e: 84 c9                                          test   cl,cl
  0043a5a0: 89 7d 08                                       mov    DWORD PTR [ebp+0x8],edi
  0043a5a3: 74 19                                          je     0x43a5be
  0043a5a5: 3b 3a                                          cmp    edi,DWORD PTR [edx]
  0043a5a7: 75 0d                                          jne    0x43a5b6
  0043a5a9: 8d 55 0c                                       lea    edx,[ebp+0xc]
  0043a5ac: 52                                             push   edx
  0043a5ad: 57                                             push   edi
  0043a5ae: 6a 01                                          push   0x1
  0043a5b0: 8d 45 ec                                       lea    eax,[ebp-0x14]
  0043a5b3: 50                                             push   eax
  0043a5b4: eb 24                                          jmp    0x43a5da
  0043a5b6: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043a5b9: e8 52 12 00 00                                 call   0x43b810
  0043a5be: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  0043a5c1: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a5c4: 39 4a 0c                                       cmp    DWORD PTR [edx+0xc],ecx
  0043a5c7: 0f 83 b8 00 00 00                              jae    0x43a685
  0043a5cd: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  0043a5d0: 8d 45 0c                                       lea    eax,[ebp+0xc]
  0043a5d3: 50                                             push   eax
  0043a5d4: 57                                             push   edi
  0043a5d5: 51                                             push   ecx
  0043a5d6: 8d 55 f0                                       lea    edx,[ebp-0x10]
  0043a5d9: 52                                             push   edx
  0043a5da: 8d 4e 30                                       lea    ecx,[esi+0x30]
  0043a5dd: e8 5e 0e 00 00                                 call   0x43b440
  0043a5e2: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a5e5: 56                                             push   esi
  0043a5e6: e8 c5 56 fe ff                                 call   0x41fcb0
  0043a5eb: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043a5ee: e8 fd b7 04 00                                 call   0x485df0
  0043a5f3: 6a 4e                                          push   0x4e
  0043a5f5: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043a5f8: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043a5fc: e8 4f bb 04 00                                 call   0x486150
  0043a601: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0043a604: e8 f7 10 05 00                                 call   0x48b700
  0043a609: 50                                             push   eax
  0043a60a: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043a60d: e8 de bb 04 00                                 call   0x4861f0
  0043a612: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  0043a615: 8b 38                                          mov    edi,DWORD PTR [eax]
  0043a617: e8 44 34 00 00                                 call   0x43da60
  0043a61c: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043a61f: 50                                             push   eax
  0043a620: 51                                             push   ecx
  0043a621: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0043a624: ff 57 48                                       call   DWORD PTR [edi+0x48]
  0043a627: 50                                             push   eax
  0043a628: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043a62b: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  0043a62f: e8 1c bd 04 00                                 call   0x486350
  0043a634: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043a637: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043a63b: e8 00 74 09 00                                 call   0x4d1a40
  0043a640: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0043a643: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0043a645: 8d 45 d0                                       lea    eax,[ebp-0x30]
  0043a648: 50                                             push   eax
  0043a649: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  0043a64f: 8b ce                                          mov    ecx,esi
  0043a651: e8 aa 07 00 00                                 call   0x43ae00
  0043a656: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043a659: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0043a65d: e8 1e b8 04 00                                 call   0x485e80
  0043a662: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043a664: 8b ce                                          mov    ecx,esi
  0043a666: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043a66d: ff 52 08                                       call   DWORD PTR [edx+0x8]
  0043a670: b0 01                                          mov    al,0x1
  0043a672: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043a675: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043a67c: 5f                                             pop    edi
  0043a67d: 5e                                             pop    esi
  0043a67e: 5b                                             pop    ebx
  0043a67f: 8b e5                                          mov    esp,ebp
  0043a681: 5d                                             pop    ebp
  0043a682: c2 08 00                                       ret    0x8
  0043a685: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0043a687: 68 58 13 51 00                                 push   0x511358
  0043a68c: 8b cb                                          mov    ecx,ebx
  0043a68e: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0043a694: 50                                             push   eax
  0043a695: 68 62 1c 00 00                                 push   0x1c62
  0043a69a: e8 51 33 00 00                                 call   0x43d9f0
  0043a69f: 83 c4 08                                       add    esp,0x8
  0043a6a2: 8b cc                                          mov    ecx,esp
  0043a6a4: 89 65 ec                                       mov    DWORD PTR [ebp-0x14],esp
  0043a6a7: 50                                             push   eax
  0043a6a8: e8 b7 73 09 00                                 call   0x4d1a64
  0043a6ad: 8b cb                                          mov    ecx,ebx
  0043a6af: e8 dc 87 fe ff                                 call   0x422e90
  0043a6b4: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043a6b6: 8b ce                                          mov    ecx,esi
  0043a6b8: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043a6bf: ff 52 08                                       call   DWORD PTR [edx+0x8]
  0043a6c2: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043a6c5: 5f                                             pop    edi
  0043a6c6: 5e                                             pop    esi
  0043a6c7: 32 c0                                          xor    al,al
  0043a6c9: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043a6d0: 5b                                             pop    ebx
  0043a6d1: 8b e5                                          mov    esp,ebp
  0043a6d3: 5d                                             pop    ebp
  0043a6d4: c2 08 00                                       ret    0x8

; [0043A6E0] Group::?Dismiss@Group ; instruction=210 ; plage_limite=0043A950 ; issues=0
  0043a6e0: 55                                             push   ebp
  0043a6e1: 8b ec                                          mov    ebp,esp
  0043a6e3: 6a ff                                          push   0xffffffff
  0043a6e5: 68 90 57 4d 00                                 push   0x4d5790
  0043a6ea: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043a6f0: 50                                             push   eax
  0043a6f1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043a6f8: 81 ec 28 08 00 00                              sub    esp,0x828
  0043a6fe: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0043a701: 53                                             push   ebx
  0043a702: 56                                             push   esi
  0043a703: 8b f1                                          mov    esi,ecx
  0043a705: 3b 46 20                                       cmp    eax,DWORD PTR [esi+0x20]
  0043a708: 57                                             push   edi
  0043a709: 0f 85 a1 00 00 00                              jne    0x43a7b0
  0043a70f: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043a711: 8b ce                                          mov    ecx,esi
  0043a713: 89 75 e8                                       mov    DWORD PTR [ebp-0x18],esi
  0043a716: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0043a719: 33 ff                                          xor    edi,edi
  0043a71b: 8b ce                                          mov    ecx,esi
  0043a71d: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  0043a720: e8 eb 06 00 00                                 call   0x43ae10
  0043a725: 8b 4e 28                                       mov    ecx,DWORD PTR [esi+0x28]
  0043a728: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  0043a72b: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043a72d: 3b c1                                          cmp    eax,ecx
  0043a72f: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0043a732: 74 1b                                          je     0x43a74f
  0043a734: 8b 48 0c                                       mov    ecx,DWORD PTR [eax+0xc]
  0043a737: 57                                             push   edi
  0043a738: e8 73 55 fe ff                                 call   0x41fcb0
  0043a73d: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0043a740: e8 db a0 fc ff                                 call   0x404820
  0043a745: 8b 4e 28                                       mov    ecx,DWORD PTR [esi+0x28]
  0043a748: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  0043a74b: 3b c1                                          cmp    eax,ecx
  0043a74d: 75 e5                                          jne    0x43a734
  0043a74f: 8b 4e 34                                       mov    ecx,DWORD PTR [esi+0x34]
  0043a752: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043a754: 3b c1                                          cmp    eax,ecx
  0043a756: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0043a759: 74 1b                                          je     0x43a776
  0043a75b: 8b 48 0c                                       mov    ecx,DWORD PTR [eax+0xc]
  0043a75e: 57                                             push   edi
  0043a75f: e8 4c 55 fe ff                                 call   0x41fcb0
  0043a764: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0043a767: e8 b4 a0 fc ff                                 call   0x404820
  0043a76c: 8b 4e 34                                       mov    ecx,DWORD PTR [esi+0x34]
  0043a76f: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  0043a772: 3b c1                                          cmp    eax,ecx
  0043a774: 75 e5                                          jne    0x43a75b
  0043a776: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a778: 8b ce                                          mov    ecx,esi
  0043a77a: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043a781: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0043a784: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0043a787: 57                                             push   edi
  0043a788: e8 23 55 fe ff                                 call   0x41fcb0
  0043a78d: 3b f7                                          cmp    esi,edi
  0043a78f: 0f 84 a6 01 00 00                              je     0x43a93b
  0043a795: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043a797: 6a 01                                          push   0x1
  0043a799: 8b ce                                          mov    ecx,esi
  0043a79b: ff 12                                          call   DWORD PTR [edx]
  0043a79d: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043a7a0: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043a7a7: 5f                                             pop    edi
  0043a7a8: 5e                                             pop    esi
  0043a7a9: 5b                                             pop    ebx
  0043a7aa: 8b e5                                          mov    esp,ebp
  0043a7ac: 5d                                             pop    ebp
  0043a7ad: c2 04 00                                       ret    0x4
  0043a7b0: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a7b2: 8b ce                                          mov    ecx,esi
  0043a7b4: 89 75 e8                                       mov    DWORD PTR [ebp-0x18],esi
  0043a7b7: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043a7ba: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043a7bd: 8d 5e 24                                       lea    ebx,[esi+0x24]
  0043a7c0: 51                                             push   ecx
  0043a7c1: 8b cb                                          mov    ecx,ebx
  0043a7c3: c7 45 fc 01 00 00 00                           mov    DWORD PTR [ebp-0x4],0x1
  0043a7ca: e8 11 10 00 00                                 call   0x43b7e0
  0043a7cf: 8b 4b 04                                       mov    ecx,DWORD PTR [ebx+0x4]
  0043a7d2: 3b c1                                          cmp    eax,ecx
  0043a7d4: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  0043a7d7: 74 0d                                          je     0x43a7e6
  0043a7d9: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  0043a7dc: 3b 50 0c                                       cmp    edx,DWORD PTR [eax+0xc]
  0043a7df: 72 05                                          jb     0x43a7e6
  0043a7e1: 8d 45 ec                                       lea    eax,[ebp-0x14]
  0043a7e4: eb 06                                          jmp    0x43a7ec
  0043a7e6: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  0043a7e9: 8d 45 f0                                       lea    eax,[ebp-0x10]
  0043a7ec: 8b 38                                          mov    edi,DWORD PTR [eax]
  0043a7ee: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  0043a7f1: 3b f8                                          cmp    edi,eax
  0043a7f3: 74 49                                          je     0x43a83e
  0043a7f5: 8d 4d cc                                       lea    ecx,[ebp-0x34]
  0043a7f8: e8 f3 b5 04 00                                 call   0x485df0
  0043a7fd: 6a 50                                          push   0x50
  0043a7ff: 8d 4d cc                                       lea    ecx,[ebp-0x34]
  0043a802: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  0043a806: e8 45 b9 04 00                                 call   0x486150
  0043a80b: 8b 4f 0c                                       mov    ecx,DWORD PTR [edi+0xc]
  0043a80e: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043a810: 8d 55 cc                                       lea    edx,[ebp-0x34]
  0043a813: 52                                             push   edx
  0043a814: ff 90 4c 01 00 00                              call   DWORD PTR [eax+0x14c]
  0043a81a: 57                                             push   edi
  0043a81b: 8d 45 ec                                       lea    eax,[ebp-0x14]
  0043a81e: 50                                             push   eax
  0043a81f: 8b cb                                          mov    ecx,ebx
  0043a821: e8 3a 94 fc ff                                 call   0x403c60
  0043a826: 8b ce                                          mov    ecx,esi
  0043a828: e8 33 05 00 00                                 call   0x43ad60
  0043a82d: 8d 4d cc                                       lea    ecx,[ebp-0x34]
  0043a830: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043a834: e8 47 b6 04 00                                 call   0x485e80
  0043a839: e9 cd 00 00 00                                 jmp    0x43a90b
  0043a83e: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043a841: 8d 7e 30                                       lea    edi,[esi+0x30]
  0043a844: 51                                             push   ecx
  0043a845: 8b cf                                          mov    ecx,edi
  0043a847: e8 94 0f 00 00                                 call   0x43b7e0
  0043a84c: 8b 7f 04                                       mov    edi,DWORD PTR [edi+0x4]
  0043a84f: 3b c7                                          cmp    eax,edi
  0043a851: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0043a854: 74 0d                                          je     0x43a863
  0043a856: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  0043a859: 3b 50 0c                                       cmp    edx,DWORD PTR [eax+0xc]
  0043a85c: 72 05                                          jb     0x43a863
  0043a85e: 8d 45 f0                                       lea    eax,[ebp-0x10]
  0043a861: eb 06                                          jmp    0x43a869
  0043a863: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  0043a866: 8d 45 ec                                       lea    eax,[ebp-0x14]
  0043a869: 8b 00                                          mov    eax,DWORD PTR [eax]
  0043a86b: 3b 46 34                                       cmp    eax,DWORD PTR [esi+0x34]
  0043a86e: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  0043a871: 0f 84 94 00 00 00                              je     0x43a90b
  0043a877: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  0043a87a: c6 85 cc f7 ff ff 00                           mov    BYTE PTR [ebp-0x834],0x0
  0043a881: e8 da 0a 00 00                                 call   0x43b360
  0043a886: 8b 38                                          mov    edi,DWORD PTR [eax]
  0043a888: 8b 1f                                          mov    ebx,DWORD PTR [edi]
  0043a88a: e8 d1 31 00 00                                 call   0x43da60
  0043a88f: 8b cf                                          mov    ecx,edi
  0043a891: 50                                             push   eax
  0043a892: 8d 45 f0                                       lea    eax,[ebp-0x10]
  0043a895: 50                                             push   eax
  0043a896: ff 53 48                                       call   DWORD PTR [ebx+0x48]
  0043a899: 8b 7e 20                                       mov    edi,DWORD PTR [esi+0x20]
  0043a89c: 8b c8                                          mov    ecx,eax
  0043a89e: c6 45 fc 03                                    mov    BYTE PTR [ebp-0x4],0x3
  0043a8a2: e8 c9 74 fe ff                                 call   0x421d70
  0043a8a7: 8b 17                                          mov    edx,DWORD PTR [edi]
  0043a8a9: 50                                             push   eax
  0043a8aa: 68 58 13 51 00                                 push   0x511358
  0043a8af: 8b cf                                          mov    ecx,edi
  0043a8b1: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  0043a8b7: 50                                             push   eax
  0043a8b8: 68 05 1e 00 00                                 push   0x1e05
  0043a8bd: e8 2e 31 00 00                                 call   0x43d9f0
  0043a8c2: 83 c4 0c                                       add    esp,0xc
  0043a8c5: 50                                             push   eax
  0043a8c6: 8d 85 cc f7 ff ff                              lea    eax,[ebp-0x834]
  0043a8cc: 50                                             push   eax
  0043a8cd: e8 6e 90 fc ff                                 call   0x403940
  0043a8d2: 83 c4 08                                       add    esp,0x8
  0043a8d5: 8b cc                                          mov    ecx,esp
  0043a8d7: 89 65 e4                                       mov    DWORD PTR [ebp-0x1c],esp
  0043a8da: 50                                             push   eax
  0043a8db: e8 84 71 09 00                                 call   0x4d1a64
  0043a8e0: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0043a8e3: e8 a8 85 fe ff                                 call   0x422e90
  0043a8e8: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0043a8eb: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043a8ef: e8 4c 71 09 00                                 call   0x4d1a40
  0043a8f4: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  0043a8f7: 51                                             push   ecx
  0043a8f8: 8d 55 e4                                       lea    edx,[ebp-0x1c]
  0043a8fb: 52                                             push   edx
  0043a8fc: 8d 4e 30                                       lea    ecx,[esi+0x30]
  0043a8ff: e8 5c 93 fc ff                                 call   0x403c60
  0043a904: 8b ce                                          mov    ecx,esi
  0043a906: e8 f5 04 00 00                                 call   0x43ae00
  0043a90b: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0043a90e: 6a 00                                          push   0x0
  0043a910: e8 9b 53 fe ff                                 call   0x41fcb0
  0043a915: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a917: 8b ce                                          mov    ecx,esi
  0043a919: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043a920: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0043a923: 83 7e 2c 01                                    cmp    DWORD PTR [esi+0x2c],0x1
  0043a927: 75 12                                          jne    0x43a93b
  0043a929: 8b 46 38                                       mov    eax,DWORD PTR [esi+0x38]
  0043a92c: 85 c0                                          test   eax,eax
  0043a92e: 75 0b                                          jne    0x43a93b
  0043a930: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0043a933: 51                                             push   ecx
  0043a934: 8b ce                                          mov    ecx,esi
  0043a936: e8 a5 fd ff ff                                 call   0x43a6e0
  0043a93b: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043a93e: 5f                                             pop    edi
  0043a93f: 5e                                             pop    esi
  0043a940: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043a947: 5b                                             pop    ebx
  0043a948: 8b e5                                          mov    esp,ebp
  0043a94a: 5d                                             pop    ebp
  0043a94b: c2 04 00                                       ret    0x4

; [0043A950] Group::?Dismiss@Group ; instruction=101 ; plage_limite=0043AA60 ; issues=0
  0043a950: 55                                             push   ebp
  0043a951: 8b ec                                          mov    ebp,esp
  0043a953: 6a ff                                          push   0xffffffff
  0043a955: 68 a8 57 4d 00                                 push   0x4d57a8
  0043a95a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043a960: 50                                             push   eax
  0043a961: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043a968: 83 ec 08                                       sub    esp,0x8
  0043a96b: 56                                             push   esi
  0043a96c: 8b f1                                          mov    esi,ecx
  0043a96e: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043a970: 57                                             push   edi
  0043a971: 33 ff                                          xor    edi,edi
  0043a973: 89 75 ec                                       mov    DWORD PTR [ebp-0x14],esi
  0043a976: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043a979: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  0043a97c: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  0043a97f: 8b 08                                          mov    ecx,DWORD PTR [eax]
  0043a981: 3b c8                                          cmp    ecx,eax
  0043a983: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  0043a986: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  0043a989: 74 31                                          je     0x43a9bc
  0043a98b: 85 ff                                          test   edi,edi
  0043a98d: 0f 85 9d 00 00 00                              jne    0x43aa30
  0043a993: 8b 49 0c                                       mov    ecx,DWORD PTR [ecx+0xc]
  0043a996: e8 65 0d 05 00                                 call   0x48b700
  0043a99b: 3b 45 08                                       cmp    eax,DWORD PTR [ebp+0x8]
  0043a99e: 75 06                                          jne    0x43a9a6
  0043a9a0: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  0043a9a3: 8b 79 0c                                       mov    edi,DWORD PTR [ecx+0xc]
  0043a9a6: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0043a9a9: e8 72 9e fc ff                                 call   0x404820
  0043a9ae: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  0043a9b1: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  0043a9b4: 3b c8                                          cmp    ecx,eax
  0043a9b6: 75 d3                                          jne    0x43a98b
  0043a9b8: 85 ff                                          test   edi,edi
  0043a9ba: 75 74                                          jne    0x43aa30
  0043a9bc: 8b 46 34                                       mov    eax,DWORD PTR [esi+0x34]
  0043a9bf: 8b 08                                          mov    ecx,DWORD PTR [eax]
  0043a9c1: 3b c8                                          cmp    ecx,eax
  0043a9c3: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  0043a9c6: 74 68                                          je     0x43aa30
  0043a9c8: 85 ff                                          test   edi,edi
  0043a9ca: 75 64                                          jne    0x43aa30
  0043a9cc: 8b 49 0c                                       mov    ecx,DWORD PTR [ecx+0xc]
  0043a9cf: e8 2c 0d 05 00                                 call   0x48b700
  0043a9d4: 3b 45 08                                       cmp    eax,DWORD PTR [ebp+0x8]
  0043a9d7: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  0043a9da: 75 03                                          jne    0x43a9df
  0043a9dc: 8b 79 0c                                       mov    edi,DWORD PTR [ecx+0xc]
  0043a9df: 8a 41 11                                       mov    al,BYTE PTR [ecx+0x11]
  0043a9e2: 84 c0                                          test   al,al
  0043a9e4: 75 45                                          jne    0x43aa2b
  0043a9e6: 8b 41 08                                       mov    eax,DWORD PTR [ecx+0x8]
  0043a9e9: 8a 50 11                                       mov    dl,BYTE PTR [eax+0x11]
  0043a9ec: 84 d2                                          test   dl,dl
  0043a9ee: 75 18                                          jne    0x43aa08
  0043a9f0: 8b c8                                          mov    ecx,eax
  0043a9f2: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043a9f4: 8a 50 11                                       mov    dl,BYTE PTR [eax+0x11]
  0043a9f7: 84 d2                                          test   dl,dl
  0043a9f9: 75 2d                                          jne    0x43aa28
  0043a9fb: 8b c8                                          mov    ecx,eax
  0043a9fd: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043a9ff: 8a 50 11                                       mov    dl,BYTE PTR [eax+0x11]
  0043aa02: 84 d2                                          test   dl,dl
  0043aa04: 74 f5                                          je     0x43a9fb
  0043aa06: eb 20                                          jmp    0x43aa28
  0043aa08: 8b 41 04                                       mov    eax,DWORD PTR [ecx+0x4]
  0043aa0b: 8a 50 11                                       mov    dl,BYTE PTR [eax+0x11]
  0043aa0e: 84 d2                                          test   dl,dl
  0043aa10: 75 14                                          jne    0x43aa26
  0043aa12: 3b 48 08                                       cmp    ecx,DWORD PTR [eax+0x8]
  0043aa15: 75 0f                                          jne    0x43aa26
  0043aa17: 8b c8                                          mov    ecx,eax
  0043aa19: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  0043aa1c: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  0043aa1f: 8a 50 11                                       mov    dl,BYTE PTR [eax+0x11]
  0043aa22: 84 d2                                          test   dl,dl
  0043aa24: 74 ec                                          je     0x43aa12
  0043aa26: 8b c8                                          mov    ecx,eax
  0043aa28: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  0043aa2b: 3b 4e 34                                       cmp    ecx,DWORD PTR [esi+0x34]
  0043aa2e: 75 98                                          jne    0x43a9c8
  0043aa30: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043aa32: 8b ce                                          mov    ecx,esi
  0043aa34: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043aa3b: ff 52 08                                       call   DWORD PTR [edx+0x8]
  0043aa3e: 85 ff                                          test   edi,edi
  0043aa40: 74 08                                          je     0x43aa4a
  0043aa42: 57                                             push   edi
  0043aa43: 8b ce                                          mov    ecx,esi
  0043aa45: e8 96 fc ff ff                                 call   0x43a6e0
  0043aa4a: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043aa4d: 5f                                             pop    edi
  0043aa4e: 5e                                             pop    esi
  0043aa4f: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043aa56: 8b e5                                          mov    esp,ebp
  0043aa58: 5d                                             pop    ebp
  0043aa59: c2 04 00                                       ret    0x4

; [0043AA60] Group::?Join@Group ; instruction=124 ; plage_limite=0043ABB0 ; issues=0
  0043aa60: 55                                             push   ebp
  0043aa61: 8b ec                                          mov    ebp,esp
  0043aa63: 6a ff                                          push   0xffffffff
  0043aa65: 68 c8 57 4d 00                                 push   0x4d57c8
  0043aa6a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043aa70: 50                                             push   eax
  0043aa71: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043aa78: 83 ec 14                                       sub    esp,0x14
  0043aa7b: 53                                             push   ebx
  0043aa7c: 56                                             push   esi
  0043aa7d: 8b f1                                          mov    esi,ecx
  0043aa7f: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043aa81: 57                                             push   edi
  0043aa82: 89 75 e4                                       mov    DWORD PTR [ebp-0x1c],esi
  0043aa85: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043aa88: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043aa8b: 8d 7e 30                                       lea    edi,[esi+0x30]
  0043aa8e: 51                                             push   ecx
  0043aa8f: 8b cf                                          mov    ecx,edi
  0043aa91: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0043aa98: e8 43 0d 00 00                                 call   0x43b7e0
  0043aa9d: 8b 4f 04                                       mov    ecx,DWORD PTR [edi+0x4]
  0043aaa0: 3b c1                                          cmp    eax,ecx
  0043aaa2: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  0043aaa5: 74 0d                                          je     0x43aab4
  0043aaa7: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  0043aaaa: 3b 50 0c                                       cmp    edx,DWORD PTR [eax+0xc]
  0043aaad: 72 05                                          jb     0x43aab4
  0043aaaf: 8d 45 e8                                       lea    eax,[ebp-0x18]
  0043aab2: eb 06                                          jmp    0x43aaba
  0043aab4: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  0043aab7: 8d 45 ec                                       lea    eax,[ebp-0x14]
  0043aaba: 8b 00                                          mov    eax,DWORD PTR [eax]
  0043aabc: 3b 46 34                                       cmp    eax,DWORD PTR [esi+0x34]
  0043aabf: 75 23                                          jne    0x43aae4
  0043aac1: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043aac3: 8b ce                                          mov    ecx,esi
  0043aac5: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043aacc: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0043aacf: 5f                                             pop    edi
  0043aad0: 5e                                             pop    esi
  0043aad1: 32 c0                                          xor    al,al
  0043aad3: 5b                                             pop    ebx
  0043aad4: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043aad7: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043aade: 8b e5                                          mov    esp,ebp
  0043aae0: 5d                                             pop    ebp
  0043aae1: c2 04 00                                       ret    0x4
  0043aae4: 50                                             push   eax
  0043aae5: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  0043aae8: 51                                             push   ecx
  0043aae9: 8b cf                                          mov    ecx,edi
  0043aaeb: e8 70 91 fc ff                                 call   0x403c60
  0043aaf0: 8b 56 28                                       mov    edx,DWORD PTR [esi+0x28]
  0043aaf3: 8b 42 04                                       mov    eax,DWORD PTR [edx+0x4]
  0043aaf6: 80 78 11 00                                    cmp    BYTE PTR [eax+0x11],0x0
  0043aafa: 8d 5e 24                                       lea    ebx,[esi+0x24]
  0043aafd: b1 01                                          mov    cl,0x1
  0043aaff: c6 45 f3 00                                    mov    BYTE PTR [ebp-0xd],0x0
  0043ab03: 8b fa                                          mov    edi,edx
  0043ab05: 88 4d e8                                       mov    BYTE PTR [ebp-0x18],cl
  0043ab08: 75 1f                                          jne    0x43ab29
  0043ab0a: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0043ab0d: 3b 48 0c                                       cmp    ecx,DWORD PTR [eax+0xc]
  0043ab10: 8b f8                                          mov    edi,eax
  0043ab12: 0f 92 c1                                       setb   cl
  0043ab15: 84 c9                                          test   cl,cl
  0043ab17: 88 4d e8                                       mov    BYTE PTR [ebp-0x18],cl
  0043ab1a: 74 04                                          je     0x43ab20
  0043ab1c: 8b 00                                          mov    eax,DWORD PTR [eax]
  0043ab1e: eb 03                                          jmp    0x43ab23
  0043ab20: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  0043ab23: 80 78 11 00                                    cmp    BYTE PTR [eax+0x11],0x0
  0043ab27: 74 e1                                          je     0x43ab0a
  0043ab29: 84 c9                                          test   cl,cl
  0043ab2b: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  0043ab2e: 74 22                                          je     0x43ab52
  0043ab30: 3b 3a                                          cmp    edi,DWORD PTR [edx]
  0043ab32: 75 16                                          jne    0x43ab4a
  0043ab34: 8d 55 08                                       lea    edx,[ebp+0x8]
  0043ab37: 52                                             push   edx
  0043ab38: 57                                             push   edi
  0043ab39: 6a 01                                          push   0x1
  0043ab3b: 8d 45 e0                                       lea    eax,[ebp-0x20]
  0043ab3e: 50                                             push   eax
  0043ab3f: 8b cb                                          mov    ecx,ebx
  0043ab41: e8 fa 08 00 00                                 call   0x43b440
  0043ab46: b3 01                                          mov    bl,0x1
  0043ab48: eb 2e                                          jmp    0x43ab78
  0043ab4a: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  0043ab4d: e8 be 0c 00 00                                 call   0x43b810
  0043ab52: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  0043ab55: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0043ab58: 39 4a 0c                                       cmp    DWORD PTR [edx+0xc],ecx
  0043ab5b: 73 18                                          jae    0x43ab75
  0043ab5d: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  0043ab60: 8d 45 08                                       lea    eax,[ebp+0x8]
  0043ab63: 50                                             push   eax
  0043ab64: 57                                             push   edi
  0043ab65: 51                                             push   ecx
  0043ab66: 8d 55 e8                                       lea    edx,[ebp-0x18]
  0043ab69: 52                                             push   edx
  0043ab6a: 8b cb                                          mov    ecx,ebx
  0043ab6c: e8 cf 08 00 00                                 call   0x43b440
  0043ab71: b3 01                                          mov    bl,0x1
  0043ab73: eb 03                                          jmp    0x43ab78
  0043ab75: 8a 5d f3                                       mov    bl,BYTE PTR [ebp-0xd]
  0043ab78: 8b ce                                          mov    ecx,esi
  0043ab7a: e8 e1 01 00 00                                 call   0x43ad60
  0043ab7f: 8b ce                                          mov    ecx,esi
  0043ab81: e8 7a 02 00 00                                 call   0x43ae00
  0043ab86: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043ab88: 8b ce                                          mov    ecx,esi
  0043ab8a: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043ab91: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0043ab94: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043ab97: 5f                                             pop    edi
  0043ab98: 5e                                             pop    esi
  0043ab99: 8a c3                                          mov    al,bl
  0043ab9b: 5b                                             pop    ebx
  0043ab9c: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043aba3: 8b e5                                          mov    esp,ebp
  0043aba5: 5d                                             pop    ebp
  0043aba6: c2 04 00                                       ret    0x4

; [0043ABB0] Group::?IsGroupMember@Group ; instruction=41 ; plage_limite=0043AC10 ; issues=0
  0043abb0: 55                                             push   ebp
  0043abb1: 8b ec                                          mov    ebp,esp
  0043abb3: 51                                             push   ecx
  0043abb4: 56                                             push   esi
  0043abb5: 57                                             push   edi
  0043abb6: 8b 79 28                                       mov    edi,DWORD PTR [ecx+0x28]
  0043abb9: 8d 71 24                                       lea    esi,[ecx+0x24]
  0043abbc: 8d 45 08                                       lea    eax,[ebp+0x8]
  0043abbf: 50                                             push   eax
  0043abc0: 8b ce                                          mov    ecx,esi
  0043abc2: e8 19 0c 00 00                                 call   0x43b7e0
  0043abc7: 8b 76 04                                       mov    esi,DWORD PTR [esi+0x4]
  0043abca: 3b c6                                          cmp    eax,esi
  0043abcc: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  0043abcf: 74 1e                                          je     0x43abef
  0043abd1: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0043abd4: 3b 48 0c                                       cmp    ecx,DWORD PTR [eax+0xc]
  0043abd7: 72 16                                          jb     0x43abef
  0043abd9: 8d 45 fc                                       lea    eax,[ebp-0x4]
  0043abdc: 8b 00                                          mov    eax,DWORD PTR [eax]
  0043abde: 33 d2                                          xor    edx,edx
  0043abe0: 3b c7                                          cmp    eax,edi
  0043abe2: 0f 95 c2                                       setne  dl
  0043abe5: 5f                                             pop    edi
  0043abe6: 8a c2                                          mov    al,dl
  0043abe8: 5e                                             pop    esi
  0043abe9: 8b e5                                          mov    esp,ebp
  0043abeb: 5d                                             pop    ebp
  0043abec: c2 04 00                                       ret    0x4
  0043abef: 89 75 08                                       mov    DWORD PTR [ebp+0x8],esi
  0043abf2: 8d 45 08                                       lea    eax,[ebp+0x8]
  0043abf5: 8b 00                                          mov    eax,DWORD PTR [eax]
  0043abf7: 33 d2                                          xor    edx,edx
  0043abf9: 3b c7                                          cmp    eax,edi
  0043abfb: 0f 95 c2                                       setne  dl
  0043abfe: 5f                                             pop    edi
  0043abff: 8a c2                                          mov    al,dl
  0043ac01: 5e                                             pop    esi
  0043ac02: 8b e5                                          mov    esp,ebp
  0043ac04: 5d                                             pop    ebp
  0043ac05: c2 04 00                                       ret    0x4

; [0043AC10] Group::?GetGroupMembers@Group ; instruction=49 ; plage_limite=0043ACA0 ; issues=0
  0043ac10: 55                                             push   ebp
  0043ac11: 8b ec                                          mov    ebp,esp
  0043ac13: 6a ff                                          push   0xffffffff
  0043ac15: 68 e8 57 4d 00                                 push   0x4d57e8
  0043ac1a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043ac20: 50                                             push   eax
  0043ac21: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043ac28: 83 ec 08                                       sub    esp,0x8
  0043ac2b: 56                                             push   esi
  0043ac2c: 57                                             push   edi
  0043ac2d: 8b f9                                          mov    edi,ecx
  0043ac2f: 8b 07                                          mov    eax,DWORD PTR [edi]
  0043ac31: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  0043ac34: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043ac37: 8b 77 28                                       mov    esi,DWORD PTR [edi+0x28]
  0043ac3a: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043ac3c: 3b c6                                          cmp    eax,esi
  0043ac3e: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0043ac45: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0043ac48: 74 2c                                          je     0x43ac76
  0043ac4a: 53                                             push   ebx
  0043ac4b: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  0043ac4e: 83 c0 0c                                       add    eax,0xc
  0043ac51: 50                                             push   eax
  0043ac52: 51                                             push   ecx
  0043ac53: 54                                             push   esp
  0043ac54: 8b cb                                          mov    ecx,ebx
  0043ac56: e8 15 07 00 00                                 call   0x43b370
  0043ac5b: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043ac5e: 51                                             push   ecx
  0043ac5f: 8b cb                                          mov    ecx,ebx
  0043ac61: e8 ba 0a 00 00                                 call   0x43b720
  0043ac66: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0043ac69: e8 b2 9b fc ff                                 call   0x404820
  0043ac6e: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  0043ac71: 3b c6                                          cmp    eax,esi
  0043ac73: 75 d9                                          jne    0x43ac4e
  0043ac75: 5b                                             pop    ebx
  0043ac76: 8b 17                                          mov    edx,DWORD PTR [edi]
  0043ac78: 8b cf                                          mov    ecx,edi
  0043ac7a: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043ac81: ff 52 08                                       call   DWORD PTR [edx+0x8]
  0043ac84: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043ac87: 5f                                             pop    edi
  0043ac88: 5e                                             pop    esi
  0043ac89: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043ac90: 8b e5                                          mov    esp,ebp
  0043ac92: 5d                                             pop    ebp
  0043ac93: c2 04 00                                       ret    0x4

; [0043ACB0] Group::?GetRangeGroupMembers@Group ; instruction=72 ; plage_limite=0043AD60 ; issues=0
  0043acb0: 55                                             push   ebp
  0043acb1: 8b ec                                          mov    ebp,esp
  0043acb3: 83 ec 38                                       sub    esp,0x38
  0043acb6: 8b 41 28                                       mov    eax,DWORD PTR [ecx+0x28]
  0043acb9: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0043acc0: 56                                             push   esi
  0043acc1: 8b 30                                          mov    esi,DWORD PTR [eax]
  0043acc3: 3b f0                                          cmp    esi,eax
  0043acc5: 89 4d f8                                       mov    DWORD PTR [ebp-0x8],ecx
  0043acc8: 89 75 fc                                       mov    DWORD PTR [ebp-0x4],esi
  0043accb: 0f 84 87 00 00 00                              je     0x43ad58
  0043acd1: 53                                             push   ebx
  0043acd2: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  0043acd5: 57                                             push   edi
  0043acd6: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0043acd8: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  0043acdb: 51                                             push   ecx
  0043acdc: 8b cb                                          mov    ecx,ebx
  0043acde: 83 c6 0c                                       add    esi,0xc
  0043ace1: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  0043ace4: 8b 38                                          mov    edi,DWORD PTR [eax]
  0043ace6: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  0043ace9: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  0043acec: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  0043acee: 89 45 f4                                       mov    DWORD PTR [ebp-0xc],eax
  0043acf1: 8d 45 d4                                       lea    eax,[ebp-0x2c]
  0043acf4: 89 55 f0                                       mov    DWORD PTR [ebp-0x10],edx
  0043acf7: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0043acf9: 50                                             push   eax
  0043acfa: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  0043acfd: 8b d0                                          mov    edx,eax
  0043acff: 8b 02                                          mov    eax,DWORD PTR [edx]
  0043ad01: 8b 4a 04                                       mov    ecx,DWORD PTR [edx+0x4]
  0043ad04: 8b 52 08                                       mov    edx,DWORD PTR [edx+0x8]
  0043ad07: 2b c7                                          sub    eax,edi
  0043ad09: 89 55 d0                                       mov    DWORD PTR [ebp-0x30],edx
  0043ad0c: 99                                             cdq
  0043ad0d: 33 c2                                          xor    eax,edx
  0043ad0f: 2b c2                                          sub    eax,edx
  0043ad11: 83 f8 14                                       cmp    eax,0x14
  0043ad14: 7f 2d                                          jg     0x43ad43
  0043ad16: 8b c1                                          mov    eax,ecx
  0043ad18: 2b 45 f0                                       sub    eax,DWORD PTR [ebp-0x10]
  0043ad1b: 99                                             cdq
  0043ad1c: 33 c2                                          xor    eax,edx
  0043ad1e: 2b c2                                          sub    eax,edx
  0043ad20: 83 f8 14                                       cmp    eax,0x14
  0043ad23: 7f 1e                                          jg     0x43ad43
  0043ad25: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  0043ad28: 8b 75 0c                                       mov    esi,DWORD PTR [ebp+0xc]
  0043ad2b: 83 c0 0c                                       add    eax,0xc
  0043ad2e: 50                                             push   eax
  0043ad2f: 51                                             push   ecx
  0043ad30: 54                                             push   esp
  0043ad31: 8b ce                                          mov    ecx,esi
  0043ad33: e8 38 06 00 00                                 call   0x43b370
  0043ad38: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0043ad3b: 51                                             push   ecx
  0043ad3c: 8b ce                                          mov    ecx,esi
  0043ad3e: e8 dd 09 00 00                                 call   0x43b720
  0043ad43: 8d 4d fc                                       lea    ecx,[ebp-0x4]
  0043ad46: e8 d5 9a fc ff                                 call   0x404820
  0043ad4b: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  0043ad4e: 8b 75 fc                                       mov    esi,DWORD PTR [ebp-0x4]
  0043ad51: 3b 72 28                                       cmp    esi,DWORD PTR [edx+0x28]
  0043ad54: 75 80                                          jne    0x43acd6
  0043ad56: 5f                                             pop    edi
  0043ad57: 5b                                             pop    ebx
  0043ad58: 5e                                             pop    esi
  0043ad59: 8b e5                                          mov    esp,ebp
  0043ad5b: 5d                                             pop    ebp
  0043ad5c: c2 08 00                                       ret    0x8

; [0043AD60] Group::?UpdateGroupListing@Group ; instruction=59 ; plage_limite=0043AE00 ; issues=0
  0043ad60: 55                                             push   ebp
  0043ad61: 8b ec                                          mov    ebp,esp
  0043ad63: 6a ff                                          push   0xffffffff
  0043ad65: 68 08 58 4d 00                                 push   0x4d5808
  0043ad6a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043ad70: 50                                             push   eax
  0043ad71: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043ad78: 51                                             push   ecx
  0043ad79: 56                                             push   esi
  0043ad7a: 57                                             push   edi
  0043ad7b: 8b f9                                          mov    edi,ecx
  0043ad7d: 8b 07                                          mov    eax,DWORD PTR [edi]
  0043ad7f: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  0043ad82: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043ad85: 8b 47 28                                       mov    eax,DWORD PTR [edi+0x28]
  0043ad88: 8b 30                                          mov    esi,DWORD PTR [eax]
  0043ad8a: 3b f0                                          cmp    esi,eax
  0043ad8c: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0043ad93: 74 49                                          je     0x43adde
  0043ad95: 8b 4e 0c                                       mov    ecx,DWORD PTR [esi+0xc]
  0043ad98: 51                                             push   ecx
  0043ad99: 8b cf                                          mov    ecx,edi
  0043ad9b: e8 60 01 00 00                                 call   0x43af00
  0043ada0: 8a 46 11                                       mov    al,BYTE PTR [esi+0x11]
  0043ada3: 84 c0                                          test   al,al
  0043ada5: 75 32                                          jne    0x43add9
  0043ada7: 8b 46 08                                       mov    eax,DWORD PTR [esi+0x8]
  0043adaa: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043adad: 84 c9                                          test   cl,cl
  0043adaf: 75 0b                                          jne    0x43adbc
  0043adb1: 50                                             push   eax
  0043adb2: e8 49 94 fc ff                                 call   0x404200
  0043adb7: 83 c4 04                                       add    esp,0x4
  0043adba: eb 1b                                          jmp    0x43add7
  0043adbc: 8b 46 04                                       mov    eax,DWORD PTR [esi+0x4]
  0043adbf: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043adc2: 84 c9                                          test   cl,cl
  0043adc4: 75 11                                          jne    0x43add7
  0043adc6: 3b 70 08                                       cmp    esi,DWORD PTR [eax+0x8]
  0043adc9: 75 0c                                          jne    0x43add7
  0043adcb: 8b f0                                          mov    esi,eax
  0043adcd: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  0043add0: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043add3: 84 c9                                          test   cl,cl
  0043add5: 74 ef                                          je     0x43adc6
  0043add7: 8b f0                                          mov    esi,eax
  0043add9: 3b 77 28                                       cmp    esi,DWORD PTR [edi+0x28]
  0043addc: 75 b7                                          jne    0x43ad95
  0043adde: 8b 17                                          mov    edx,DWORD PTR [edi]
  0043ade0: 8b cf                                          mov    ecx,edi
  0043ade2: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043ade9: ff 52 08                                       call   DWORD PTR [edx+0x8]
  0043adec: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043adef: 5f                                             pop    edi
  0043adf0: 5e                                             pop    esi
  0043adf1: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043adf8: 8b e5                                          mov    esp,ebp
  0043adfa: 5d                                             pop    ebp
  0043adfb: c3                                             ret

; [0043AE00] Group::?UpdateInviteListing@Group ; instruction=1 ; plage_limite=0043AE10 ; issues=0
  0043ae00: c3                                             ret

; [0043AF00] Group::?SendGroupMembers@Group ; instruction=125 ; plage_limite=0043B080 ; issues=0
  0043af00: 55                                             push   ebp
  0043af01: 8b ec                                          mov    ebp,esp
  0043af03: 6a ff                                          push   0xffffffff
  0043af05: 68 58 58 4d 00                                 push   0x4d5858
  0043af0a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043af10: 50                                             push   eax
  0043af11: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043af18: 83 ec 24                                       sub    esp,0x24
  0043af1b: 53                                             push   ebx
  0043af1c: 56                                             push   esi
  0043af1d: 8b f1                                          mov    esi,ecx
  0043af1f: 8b 06                                          mov    eax,DWORD PTR [esi]
  0043af21: 89 75 e8                                       mov    DWORD PTR [ebp-0x18],esi
  0043af24: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043af27: 33 db                                          xor    ebx,ebx
  0043af29: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043af2c: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  0043af2f: e8 bc ae 04 00                                 call   0x485df0
  0043af34: 6a 4c                                          push   0x4c
  0043af36: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043af39: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043af3d: e8 0e b2 04 00                                 call   0x486150
  0043af42: 38 5e 3c                                       cmp    BYTE PTR [esi+0x3c],bl
  0043af45: 0f 95 c1                                       setne  cl
  0043af48: 51                                             push   ecx
  0043af49: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043af4c: e8 5f b2 04 00                                 call   0x4861b0
  0043af51: 8b 46 2c                                       mov    eax,DWORD PTR [esi+0x2c]
  0043af54: 50                                             push   eax
  0043af55: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043af58: e8 f3 b1 04 00                                 call   0x486150
  0043af5d: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  0043af60: 89 5d f0                                       mov    DWORD PTR [ebp-0x10],ebx
  0043af63: 8b 08                                          mov    ecx,DWORD PTR [eax]
  0043af65: 3b c8                                          cmp    ecx,eax
  0043af67: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  0043af6a: 0f 84 ce 00 00 00                              je     0x43b03e
  0043af70: 57                                             push   edi
  0043af71: 8b 49 0c                                       mov    ecx,DWORD PTR [ecx+0xc]
  0043af74: e8 87 07 05 00                                 call   0x48b700
  0043af79: 50                                             push   eax
  0043af7a: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043af7d: e8 6e b2 04 00                                 call   0x4861f0
  0043af82: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  0043af85: 8b 4a 0c                                       mov    ecx,DWORD PTR [edx+0xc]
  0043af88: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043af8a: ff 90 3c 01 00 00                              call   DWORD PTR [eax+0x13c]
  0043af90: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043af93: 50                                             push   eax
  0043af94: e8 b7 b1 04 00                                 call   0x486150
  0043af99: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  0043af9c: 8b 49 0c                                       mov    ecx,DWORD PTR [ecx+0xc]
  0043af9f: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0043afa1: ff 92 cc 00 00 00                              call   DWORD PTR [edx+0xcc]
  0043afa7: 85 c0                                          test   eax,eax
  0043afa9: 75 03                                          jne    0x43afae
  0043afab: 50                                             push   eax
  0043afac: eb 2c                                          jmp    0x43afda
  0043afae: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  0043afb1: 8b 48 0c                                       mov    ecx,DWORD PTR [eax+0xc]
  0043afb4: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043afb6: 8b f9                                          mov    edi,ecx
  0043afb8: ff 90 d8 00 00 00                              call   DWORD PTR [eax+0xd8]
  0043afbe: 8b 17                                          mov    edx,DWORD PTR [edi]
  0043afc0: 8d 04 80                                       lea    eax,[eax+eax*4]
  0043afc3: 8d 1c 80                                       lea    ebx,[eax+eax*4]
  0043afc6: 8b cf                                          mov    ecx,edi
  0043afc8: c1 e3 02                                       shl    ebx,0x2
  0043afcb: ff 92 cc 00 00 00                              call   DWORD PTR [edx+0xcc]
  0043afd1: 8b c8                                          mov    ecx,eax
  0043afd3: 8b c3                                          mov    eax,ebx
  0043afd5: 33 d2                                          xor    edx,edx
  0043afd7: f7 f1                                          div    ecx
  0043afd9: 50                                             push   eax
  0043afda: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043afdd: e8 6e b1 04 00                                 call   0x486150
  0043afe2: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  0043afe5: 8b 42 0c                                       mov    eax,DWORD PTR [edx+0xc]
  0043afe8: 3b 46 20                                       cmp    eax,DWORD PTR [esi+0x20]
  0043afeb: 0f 94 c1                                       sete   cl
  0043afee: 51                                             push   ecx
  0043afef: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043aff2: e8 b9 b1 04 00                                 call   0x4861b0
  0043aff7: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  0043affa: 8b 7a 0c                                       mov    edi,DWORD PTR [edx+0xc]
  0043affd: 8b 1f                                          mov    ebx,DWORD PTR [edi]
  0043afff: e8 5c 2a 00 00                                 call   0x43da60
  0043b004: 8b cf                                          mov    ecx,edi
  0043b006: 50                                             push   eax
  0043b007: 8d 45 ec                                       lea    eax,[ebp-0x14]
  0043b00a: 50                                             push   eax
  0043b00b: ff 53 48                                       call   DWORD PTR [ebx+0x48]
  0043b00e: 50                                             push   eax
  0043b00f: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043b012: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  0043b016: e8 35 b3 04 00                                 call   0x486350
  0043b01b: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  0043b01e: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043b022: e8 19 6a 09 00                                 call   0x4d1a40
  0043b027: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0043b02a: e8 f1 97 fc ff                                 call   0x404820
  0043b02f: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  0043b032: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  0043b035: 3b c8                                          cmp    ecx,eax
  0043b037: 0f 85 34 ff ff ff                              jne    0x43af71
  0043b03d: 5f                                             pop    edi
  0043b03e: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0043b041: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0043b043: 8d 45 d0                                       lea    eax,[ebp-0x30]
  0043b046: 50                                             push   eax
  0043b047: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  0043b04d: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0043b050: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0043b054: e8 27 ae 04 00                                 call   0x485e80
  0043b059: 8b 16                                          mov    edx,DWORD PTR [esi]
  0043b05b: 8b ce                                          mov    ecx,esi
  0043b05d: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043b064: ff 52 08                                       call   DWORD PTR [edx+0x8]
  0043b067: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043b06a: 5e                                             pop    esi
  0043b06b: 5b                                             pop    ebx
  0043b06c: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043b073: 8b e5                                          mov    esp,ebp
  0043b075: 5d                                             pop    ebp
  0043b076: c2 04 00                                       ret    0x4

; [0043B080] Group::?SendHpUpdate@Group ; instruction=104 ; plage_limite=0043B1B0 ; issues=0
  0043b080: 55                                             push   ebp
  0043b081: 8b ec                                          mov    ebp,esp
  0043b083: 6a ff                                          push   0xffffffff
  0043b085: 68 80 58 4d 00                                 push   0x4d5880
  0043b08a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043b090: 50                                             push   eax
  0043b091: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043b098: 83 ec 20                                       sub    esp,0x20
  0043b09b: 53                                             push   ebx
  0043b09c: 8b d9                                          mov    ebx,ecx
  0043b09e: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0043b0a0: 56                                             push   esi
  0043b0a1: 89 5d f0                                       mov    DWORD PTR [ebp-0x10],ebx
  0043b0a4: 89 5d ec                                       mov    DWORD PTR [ebp-0x14],ebx
  0043b0a7: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043b0aa: 8b 43 28                                       mov    eax,DWORD PTR [ebx+0x28]
  0043b0ad: 8b 30                                          mov    esi,DWORD PTR [eax]
  0043b0af: 3b f0                                          cmp    esi,eax
  0043b0b1: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0043b0b8: 0f 84 d2 00 00 00                              je     0x43b190
  0043b0be: 57                                             push   edi
  0043b0bf: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  0043b0c2: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  0043b0c5: e8 26 ad 04 00                                 call   0x485df0
  0043b0ca: 6a 57                                          push   0x57
  0043b0cc: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  0043b0cf: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043b0d3: e8 78 b0 04 00                                 call   0x486150
  0043b0d8: 8b cf                                          mov    ecx,edi
  0043b0da: e8 21 06 05 00                                 call   0x48b700
  0043b0df: 50                                             push   eax
  0043b0e0: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  0043b0e3: e8 08 b1 04 00                                 call   0x4861f0
  0043b0e8: 8b 17                                          mov    edx,DWORD PTR [edi]
  0043b0ea: 8b cf                                          mov    ecx,edi
  0043b0ec: ff 92 cc 00 00 00                              call   DWORD PTR [edx+0xcc]
  0043b0f2: 85 c0                                          test   eax,eax
  0043b0f4: 75 0b                                          jne    0x43b101
  0043b0f6: 50                                             push   eax
  0043b0f7: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  0043b0fa: e8 51 b0 04 00                                 call   0x486150
  0043b0ff: eb 31                                          jmp    0x43b132
  0043b101: 8b 07                                          mov    eax,DWORD PTR [edi]
  0043b103: 8b cf                                          mov    ecx,edi
  0043b105: ff 90 d8 00 00 00                              call   DWORD PTR [eax+0xd8]
  0043b10b: 8b 17                                          mov    edx,DWORD PTR [edi]
  0043b10d: 8d 04 80                                       lea    eax,[eax+eax*4]
  0043b110: 8d 1c 80                                       lea    ebx,[eax+eax*4]
  0043b113: 8b cf                                          mov    ecx,edi
  0043b115: c1 e3 02                                       shl    ebx,0x2
  0043b118: ff 92 cc 00 00 00                              call   DWORD PTR [edx+0xcc]
  0043b11e: 8b c8                                          mov    ecx,eax
  0043b120: 33 d2                                          xor    edx,edx
  0043b122: 8b c3                                          mov    eax,ebx
  0043b124: f7 f1                                          div    ecx
  0043b126: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  0043b129: 50                                             push   eax
  0043b12a: e8 21 b0 04 00                                 call   0x486150
  0043b12f: 8b 5d f0                                       mov    ebx,DWORD PTR [ebp-0x10]
  0043b132: 8b 4e 0c                                       mov    ecx,DWORD PTR [esi+0xc]
  0043b135: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0043b137: 8d 45 d4                                       lea    eax,[ebp-0x2c]
  0043b13a: 50                                             push   eax
  0043b13b: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  0043b141: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  0043b144: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0043b148: e8 33 ad 04 00                                 call   0x485e80
  0043b14d: 8a 46 11                                       mov    al,BYTE PTR [esi+0x11]
  0043b150: 84 c0                                          test   al,al
  0043b152: 75 32                                          jne    0x43b186
  0043b154: 8b 46 08                                       mov    eax,DWORD PTR [esi+0x8]
  0043b157: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043b15a: 84 c9                                          test   cl,cl
  0043b15c: 75 0b                                          jne    0x43b169
  0043b15e: 50                                             push   eax
  0043b15f: e8 9c 90 fc ff                                 call   0x404200
  0043b164: 83 c4 04                                       add    esp,0x4
  0043b167: eb 1b                                          jmp    0x43b184
  0043b169: 8b 46 04                                       mov    eax,DWORD PTR [esi+0x4]
  0043b16c: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043b16f: 84 c9                                          test   cl,cl
  0043b171: 75 11                                          jne    0x43b184
  0043b173: 3b 70 08                                       cmp    esi,DWORD PTR [eax+0x8]
  0043b176: 75 0c                                          jne    0x43b184
  0043b178: 8b f0                                          mov    esi,eax
  0043b17a: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  0043b17d: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043b180: 84 c9                                          test   cl,cl
  0043b182: 74 ef                                          je     0x43b173
  0043b184: 8b f0                                          mov    esi,eax
  0043b186: 3b 73 28                                       cmp    esi,DWORD PTR [ebx+0x28]
  0043b189: 0f 85 33 ff ff ff                              jne    0x43b0c2
  0043b18f: 5f                                             pop    edi
  0043b190: 8b 13                                          mov    edx,DWORD PTR [ebx]
  0043b192: 8b cb                                          mov    ecx,ebx
  0043b194: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043b19b: ff 52 08                                       call   DWORD PTR [edx+0x8]
  0043b19e: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043b1a1: 5e                                             pop    esi
  0043b1a2: 5b                                             pop    ebx
  0043b1a3: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043b1aa: 8b e5                                          mov    esp,ebp
  0043b1ac: 5d                                             pop    ebp
  0043b1ad: c2 04 00                                       ret    0x4

; [0043B1B0] Group::?ToggleAutoSplit@Group ; instruction=77 ; plage_limite=0043CC00 ; issues=0
  0043b1b0: 55                                             push   ebp
  0043b1b1: 8b ec                                          mov    ebp,esp
  0043b1b3: 6a ff                                          push   0xffffffff
  0043b1b5: 68 a0 58 4d 00                                 push   0x4d58a0
  0043b1ba: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0043b1c0: 50                                             push   eax
  0043b1c1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0043b1c8: 83 ec 1c                                       sub    esp,0x1c
  0043b1cb: 56                                             push   esi
  0043b1cc: 57                                             push   edi
  0043b1cd: 8b f9                                          mov    edi,ecx
  0043b1cf: 8b 07                                          mov    eax,DWORD PTR [edi]
  0043b1d1: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  0043b1d4: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0043b1d7: 8a 4d 08                                       mov    cl,BYTE PTR [ebp+0x8]
  0043b1da: 88 4f 3c                                       mov    BYTE PTR [edi+0x3c],cl
  0043b1dd: 8b 47 28                                       mov    eax,DWORD PTR [edi+0x28]
  0043b1e0: 8b 30                                          mov    esi,DWORD PTR [eax]
  0043b1e2: 3b f0                                          cmp    esi,eax
  0043b1e4: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0043b1eb: 0f 84 80 00 00 00                              je     0x43b271
  0043b1f1: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  0043b1f4: e8 f7 ab 04 00                                 call   0x485df0
  0043b1f9: 6a 58                                          push   0x58
  0043b1fb: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  0043b1fe: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0043b202: e8 49 af 04 00                                 call   0x486150
  0043b207: 8a 57 3c                                       mov    dl,BYTE PTR [edi+0x3c]
  0043b20a: 84 d2                                          test   dl,dl
  0043b20c: 0f 95 c2                                       setne  dl
  0043b20f: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  0043b212: 52                                             push   edx
  0043b213: e8 98 af 04 00                                 call   0x4861b0
  0043b218: 8b 4e 0c                                       mov    ecx,DWORD PTR [esi+0xc]
  0043b21b: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0043b21d: 8d 55 d8                                       lea    edx,[ebp-0x28]
  0043b220: 52                                             push   edx
  0043b221: ff 90 4c 01 00 00                              call   DWORD PTR [eax+0x14c]
  0043b227: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  0043b22a: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0043b22e: e8 4d ac 04 00                                 call   0x485e80
  0043b233: 8a 46 11                                       mov    al,BYTE PTR [esi+0x11]
  0043b236: 84 c0                                          test   al,al
  0043b238: 75 32                                          jne    0x43b26c
  0043b23a: 8b 46 08                                       mov    eax,DWORD PTR [esi+0x8]
  0043b23d: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043b240: 84 c9                                          test   cl,cl
  0043b242: 75 0b                                          jne    0x43b24f
  0043b244: 50                                             push   eax
  0043b245: e8 b6 8f fc ff                                 call   0x404200
  0043b24a: 83 c4 04                                       add    esp,0x4
  0043b24d: eb 1b                                          jmp    0x43b26a
  0043b24f: 8b 46 04                                       mov    eax,DWORD PTR [esi+0x4]
  0043b252: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043b255: 84 c9                                          test   cl,cl
  0043b257: 75 11                                          jne    0x43b26a
  0043b259: 3b 70 08                                       cmp    esi,DWORD PTR [eax+0x8]
  0043b25c: 75 0c                                          jne    0x43b26a
  0043b25e: 8b f0                                          mov    esi,eax
  0043b260: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  0043b263: 8a 48 11                                       mov    cl,BYTE PTR [eax+0x11]
  0043b266: 84 c9                                          test   cl,cl
  0043b268: 74 ef                                          je     0x43b259
  0043b26a: 8b f0                                          mov    esi,eax
  0043b26c: 3b 77 28                                       cmp    esi,DWORD PTR [edi+0x28]
  0043b26f: 75 80                                          jne    0x43b1f1
  0043b271: 8b 07                                          mov    eax,DWORD PTR [edi]
  0043b273: 8b cf                                          mov    ecx,edi
  0043b275: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0043b27c: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0043b27f: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0043b282: 5f                                             pop    edi
  0043b283: 5e                                             pop    esi
  0043b284: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0043b28b: 8b e5                                          mov    esp,ebp
  0043b28d: 5d                                             pop    ebp
  0043b28e: c2 04 00                                       ret    0x4

; [004AF110] WorldMap::?deposit_unit@WorldMap ; instruction=112 ; plage_limite=004AF250 ; issues=0
  004af110: 55                                             push   ebp
  004af111: 8b ec                                          mov    ebp,esp
  004af113: 6a ff                                          push   0xffffffff
  004af115: 68 cb c6 4d 00                                 push   0x4dc6cb
  004af11a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004af120: 50                                             push   eax
  004af121: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004af128: 83 ec 08                                       sub    esp,0x8
  004af12b: 53                                             push   ebx
  004af12c: 56                                             push   esi
  004af12d: 8b f1                                          mov    esi,ecx
  004af12f: 8b 06                                          mov    eax,DWORD PTR [esi]
  004af131: 57                                             push   edi
  004af132: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004af135: 8b 4d 14                                       mov    ecx,DWORD PTR [ebp+0x14]
  004af138: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004af13a: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  004af13d: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004af140: 8b 7e 28                                       mov    edi,DWORD PTR [esi+0x28]
  004af143: 83 ec 0c                                       sub    esp,0xc
  004af146: 8b c4                                          mov    eax,esp
  004af148: 89 18                                          mov    DWORD PTR [eax],ebx
  004af14a: 89 48 04                                       mov    DWORD PTR [eax+0x4],ecx
  004af14d: 8b 4d 14                                       mov    ecx,DWORD PTR [ebp+0x14]
  004af150: 89 7d 10                                       mov    DWORD PTR [ebp+0x10],edi
  004af153: 89 78 08                                       mov    DWORD PTR [eax+0x8],edi
  004af156: ff 52 20                                       call   DWORD PTR [edx+0x20]
  004af159: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  004af15c: 83 ec 0c                                       sub    esp,0xc
  004af15f: 8b d4                                          mov    edx,esp
  004af161: 89 1a                                          mov    DWORD PTR [edx],ebx
  004af163: 89 42 04                                       mov    DWORD PTR [edx+0x4],eax
  004af166: 8b ce                                          mov    ecx,esi
  004af168: 89 7a 08                                       mov    DWORD PTR [edx+0x8],edi
  004af16b: e8 f0 2a 00 00                                 call   0x4b1c60
  004af170: 8b 4e 24                                       mov    ecx,DWORD PTR [esi+0x24]
  004af173: 8b fb                                          mov    edi,ebx
  004af175: 8b 5d 0c                                       mov    ebx,DWORD PTR [ebp+0xc]
  004af178: c1 ff 02                                       sar    edi,0x2
  004af17b: c1 e7 02                                       shl    edi,0x2
  004af17e: 8b 14 39                                       mov    edx,DWORD PTR [ecx+edi*1]
  004af181: c1 fb 02                                       sar    ebx,0x2
  004af184: c1 e3 02                                       shl    ebx,0x2
  004af187: 8b 0c 1a                                       mov    ecx,DWORD PTR [edx+ebx*1]
  004af18a: 85 c9                                          test   ecx,ecx
  004af18c: 88 45 f0                                       mov    BYTE PTR [ebp-0x10],al
  004af18f: 75 38                                          jne    0x4af1c9
  004af191: 68 44 01 00 00                                 push   0x144
  004af196: e8 55 2e f9 ff                                 call   0x441ff0
  004af19b: 83 c4 04                                       add    esp,0x4
  004af19e: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  004af1a1: 85 c0                                          test   eax,eax
  004af1a3: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004af1aa: 74 09                                          je     0x4af1b5
  004af1ac: 8b c8                                          mov    ecx,eax
  004af1ae: e8 8d 15 f6 ff                                 call   0x410740
  004af1b3: eb 02                                          jmp    0x4af1b7
  004af1b5: 33 c0                                          xor    eax,eax
  004af1b7: 8b 4e 24                                       mov    ecx,DWORD PTR [esi+0x24]
  004af1ba: 8b 14 39                                       mov    edx,DWORD PTR [ecx+edi*1]
  004af1bd: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004af1c4: 89 04 1a                                       mov    DWORD PTR [edx+ebx*1],eax
  004af1c7: eb 1b                                          jmp    0x4af1e4
  004af1c9: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  004af1cc: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  004af1cf: 50                                             push   eax
  004af1d0: 52                                             push   edx
  004af1d1: e8 2a 17 f6 ff                                 call   0x410900
  004af1d6: 85 c0                                          test   eax,eax
  004af1d8: 74 0a                                          je     0x4af1e4
  004af1da: 8b c8                                          mov    ecx,eax
  004af1dc: e8 af 02 fe ff                                 call   0x48f490
  004af1e1: 88 45 f0                                       mov    BYTE PTR [ebp-0x10],al
  004af1e4: 8b 45 14                                       mov    eax,DWORD PTR [ebp+0x14]
  004af1e7: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004af1ea: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  004af1ed: 50                                             push   eax
  004af1ee: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004af1f1: 51                                             push   ecx
  004af1f2: 8b 0c 38                                       mov    ecx,DWORD PTR [eax+edi*1]
  004af1f5: 8b 0c 19                                       mov    ecx,DWORD PTR [ecx+ebx*1]
  004af1f8: 52                                             push   edx
  004af1f9: e8 b2 16 f6 ff                                 call   0x4108b0
  004af1fe: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  004af201: 8b 7d 14                                       mov    edi,DWORD PTR [ebp+0x14]
  004af204: 52                                             push   edx
  004af205: 8b cf                                          mov    ecx,edi
  004af207: e8 74 02 fe ff                                 call   0x48f480
  004af20c: 8b cf                                          mov    ecx,edi
  004af20e: e8 5d 02 fe ff                                 call   0x48f470
  004af213: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  004af216: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  004af219: 50                                             push   eax
  004af21a: 83 ec 0c                                       sub    esp,0xc
  004af21d: 8b c4                                          mov    eax,esp
  004af21f: 89 08                                          mov    DWORD PTR [eax],ecx
  004af221: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  004af224: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  004af227: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  004af22a: 8b ce                                          mov    ecx,esi
  004af22c: e8 1f 01 00 00                                 call   0x4af350
  004af231: 8b 16                                          mov    edx,DWORD PTR [esi]
  004af233: 8b ce                                          mov    ecx,esi
  004af235: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004af238: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004af23b: 5f                                             pop    edi
  004af23c: 5e                                             pop    esi
  004af23d: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004af244: 5b                                             pop    ebx
  004af245: 8b e5                                          mov    esp,ebp
  004af247: 5d                                             pop    ebp
  004af248: c2 10 00                                       ret    0x10

; [004AF250] WorldMap::?IsBlocking@WorldMap ; instruction=68 ; plage_limite=004AF350 ; issues=0
  004af250: 55                                             push   ebp
  004af251: 8b ec                                          mov    ebp,esp
  004af253: 56                                             push   esi
  004af254: 57                                             push   edi
  004af255: 8b f9                                          mov    edi,ecx
  004af257: 8b 07                                          mov    eax,DWORD PTR [edi]
  004af259: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004af25c: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  004af25f: 33 c9                                          xor    ecx,ecx
  004af261: 66 8b 4f 2c                                    mov    cx,WORD PTR [edi+0x2c]
  004af265: 3b f1                                          cmp    esi,ecx
  004af267: 7d 15                                          jge    0x4af27e
  004af269: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  004af26c: 33 d2                                          xor    edx,edx
  004af26e: 66 8b 57 2e                                    mov    dx,WORD PTR [edi+0x2e]
  004af272: 3b c2                                          cmp    eax,edx
  004af274: 7d 08                                          jge    0x4af27e
  004af276: 85 f6                                          test   esi,esi
  004af278: 7c 04                                          jl     0x4af27e
  004af27a: 85 c0                                          test   eax,eax
  004af27c: 7d 14                                          jge    0x4af292
  004af27e: 8b 17                                          mov    edx,DWORD PTR [edi]
  004af280: 8b cf                                          mov    ecx,edi
  004af282: be 01 00 00 00                                 mov    esi,0x1
  004af287: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004af28a: 5f                                             pop    edi
  004af28b: 8b c6                                          mov    eax,esi
  004af28d: 5e                                             pop    esi
  004af28e: 5d                                             pop    ebp
  004af28f: c2 18 00                                       ret    0x18
  004af292: d1 e9                                          shr    ecx,1
  004af294: 0f af c8                                       imul   ecx,eax
  004af297: 8b c6                                          mov    eax,esi
  004af299: 99                                             cdq
  004af29a: 2b c2                                          sub    eax,edx
  004af29c: d1 f8                                          sar    eax,1
  004af29e: 03 c8                                          add    ecx,eax
  004af2a0: 81 e6 01 00 00 80                              and    esi,0x80000001
  004af2a6: 79 05                                          jns    0x4af2ad
  004af2a8: 4e                                             dec    esi
  004af2a9: 83 ce fe                                       or     esi,0xfffffffe
  004af2ac: 46                                             inc    esi
  004af2ad: 75 0e                                          jne    0x4af2bd
  004af2af: 8b 47 30                                       mov    eax,DWORD PTR [edi+0x30]
  004af2b2: 8a 0c 08                                       mov    cl,BYTE PTR [eax+ecx*1]
  004af2b5: c0 e9 04                                       shr    cl,0x4
  004af2b8: 88 4d 10                                       mov    BYTE PTR [ebp+0x10],cl
  004af2bb: eb 0b                                          jmp    0x4af2c8
  004af2bd: 8b 57 30                                       mov    edx,DWORD PTR [edi+0x30]
  004af2c0: 8a 04 0a                                       mov    al,BYTE PTR [edx+ecx*1]
  004af2c3: 24 0f                                          and    al,0xf
  004af2c5: 88 45 10                                       mov    BYTE PTR [ebp+0x10],al
  004af2c8: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004af2cb: 25 ff 00 00 00                                 and    eax,0xff
  004af2d0: 83 f8 09                                       cmp    eax,0x9
  004af2d3: 77 4e                                          ja     0x4af323
  004af2d5: 33 c9                                          xor    ecx,ecx
  004af2d7: 8a 88 44 f3 4a 00                              mov    cl,BYTE PTR [eax+0x4af344]
  004af2dd: ff 24 8d 34 f3 4a 00                           jmp    DWORD PTR [ecx*4+0x4af334]
  004af323: 8b 17                                          mov    edx,DWORD PTR [edi]
  004af325: 8b cf                                          mov    ecx,edi
  004af327: 33 f6                                          xor    esi,esi
  004af329: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004af32c: 5f                                             pop    edi
  004af32d: 8b c6                                          mov    eax,esi
  004af32f: 5e                                             pop    esi
  004af330: 5d                                             pop    ebp
  004af331: c2 18 00                                       ret    0x18

; [004AF350] WorldMap::?SetBlocking@WorldMap ; instruction=59 ; plage_limite=004AF3E0 ; issues=0
  004af350: 55                                             push   ebp
  004af351: 8b ec                                          mov    ebp,esp
  004af353: 56                                             push   esi
  004af354: 33 f6                                          xor    esi,esi
  004af356: 66 8b 71 2c                                    mov    si,WORD PTR [ecx+0x2c]
  004af35a: 57                                             push   edi
  004af35b: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  004af35e: 3b fe                                          cmp    edi,esi
  004af360: 7d 6c                                          jge    0x4af3ce
  004af362: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  004af365: 33 d2                                          xor    edx,edx
  004af367: 66 8b 51 2e                                    mov    dx,WORD PTR [ecx+0x2e]
  004af36b: 3b c2                                          cmp    eax,edx
  004af36d: 7d 5f                                          jge    0x4af3ce
  004af36f: 85 ff                                          test   edi,edi
  004af371: 7c 5b                                          jl     0x4af3ce
  004af373: 85 c0                                          test   eax,eax
  004af375: 7c 57                                          jl     0x4af3ce
  004af377: d1 ee                                          shr    esi,1
  004af379: 0f af f0                                       imul   esi,eax
  004af37c: 8b c7                                          mov    eax,edi
  004af37e: 99                                             cdq
  004af37f: 2b c2                                          sub    eax,edx
  004af381: d1 f8                                          sar    eax,1
  004af383: 03 f0                                          add    esi,eax
  004af385: 81 e7 01 00 00 80                              and    edi,0x80000001
  004af38b: 79 05                                          jns    0x4af392
  004af38d: 4f                                             dec    edi
  004af38e: 83 cf fe                                       or     edi,0xfffffffe
  004af391: 47                                             inc    edi
  004af392: 8b 41 30                                       mov    eax,DWORD PTR [ecx+0x30]
  004af395: 75 22                                          jne    0x4af3b9
  004af397: 8a 14 30                                       mov    dl,BYTE PTR [eax+esi*1]
  004af39a: 03 c6                                          add    eax,esi
  004af39c: 80 e2 0f                                       and    dl,0xf
  004af39f: 88 10                                          mov    BYTE PTR [eax],dl
  004af3a1: 8b 49 30                                       mov    ecx,DWORD PTR [ecx+0x30]
  004af3a4: 8a 55 14                                       mov    dl,BYTE PTR [ebp+0x14]
  004af3a7: 8d 04 31                                       lea    eax,[ecx+esi*1]
  004af3aa: 8a 08                                          mov    cl,BYTE PTR [eax]
  004af3ac: c0 e2 04                                       shl    dl,0x4
  004af3af: 0a ca                                          or     cl,dl
  004af3b1: 5f                                             pop    edi
  004af3b2: 88 08                                          mov    BYTE PTR [eax],cl
  004af3b4: 5e                                             pop    esi
  004af3b5: 5d                                             pop    ebp
  004af3b6: c2 10 00                                       ret    0x10
  004af3b9: 8a 14 30                                       mov    dl,BYTE PTR [eax+esi*1]
  004af3bc: 03 c6                                          add    eax,esi
  004af3be: 80 e2 f0                                       and    dl,0xf0
  004af3c1: 88 10                                          mov    BYTE PTR [eax],dl
  004af3c3: 8b 49 30                                       mov    ecx,DWORD PTR [ecx+0x30]
  004af3c6: 8a 55 14                                       mov    dl,BYTE PTR [ebp+0x14]
  004af3c9: 8d 04 31                                       lea    eax,[ecx+esi*1]
  004af3cc: 08 10                                          or     BYTE PTR [eax],dl
  004af3ce: 5f                                             pop    edi
  004af3cf: 5e                                             pop    esi
  004af3d0: 5d                                             pop    ebp
  004af3d1: c2 10 00                                       ret    0x10

; [004AF3E0] WorldMap::?SetBlockingUnit@WorldMap ; instruction=130 ; plage_limite=004AF560 ; issues=0
  004af3e0: 55                                             push   ebp
  004af3e1: 8b ec                                          mov    ebp,esp
  004af3e3: 83 ec 1c                                       sub    esp,0x1c
  004af3e6: 53                                             push   ebx
  004af3e7: 56                                             push   esi
  004af3e8: 57                                             push   edi
  004af3e9: 8b 7d 14                                       mov    edi,DWORD PTR [ebp+0x14]
  004af3ec: 8b 07                                          mov    eax,DWORD PTR [edi]
  004af3ee: 6a 00                                          push   0x0
  004af3f0: 89 4d fc                                       mov    DWORD PTR [ebp-0x4],ecx
  004af3f3: 6a 0e                                          push   0xe
  004af3f5: 8b cf                                          mov    ecx,edi
  004af3f7: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  004af3fa: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  004af3fd: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004af400: 8b 75 0c                                       mov    esi,DWORD PTR [ebp+0xc]
  004af403: 6a 00                                          push   0x0
  004af405: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004af408: 8b 07                                          mov    eax,DWORD PTR [edi]
  004af40a: 89 4d e4                                       mov    DWORD PTR [ebp-0x1c],ecx
  004af40d: 6a 0e                                          push   0xe
  004af40f: 8b cf                                          mov    ecx,edi
  004af411: 89 75 e8                                       mov    DWORD PTR [ebp-0x18],esi
  004af414: 89 55 ec                                       mov    DWORD PTR [ebp-0x14],edx
  004af417: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  004af41a: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  004af41d: 8b de                                          mov    ebx,esi
  004af41f: 2b d9                                          sub    ebx,ecx
  004af421: 3b f3                                          cmp    esi,ebx
  004af423: 8b d6                                          mov    edx,esi
  004af425: c7 45 14 01 00 00 00                           mov    DWORD PTR [ebp+0x14],0x1
  004af42c: 89 55 f8                                       mov    DWORD PTR [ebp-0x8],edx
  004af42f: 0f 86 ad 00 00 00                              jbe    0x4af4e2
  004af435: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004af438: 33 c0                                          xor    eax,eax
  004af43a: 66 8b 41 2c                                    mov    ax,WORD PTR [ecx+0x2c]
  004af43e: 89 45 f4                                       mov    DWORD PTR [ebp-0xc],eax
  004af441: eb 03                                          jmp    0x4af446
  004af443: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004af446: 39 45 e4                                       cmp    DWORD PTR [ebp-0x1c],eax
  004af449: 89 55 e8                                       mov    DWORD PTR [ebp-0x18],edx
  004af44c: 7d 75                                          jge    0x4af4c3
  004af44e: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004af451: 33 c0                                          xor    eax,eax
  004af453: 66 8b 41 2e                                    mov    ax,WORD PTR [ecx+0x2e]
  004af457: 3b d0                                          cmp    edx,eax
  004af459: 7d 68                                          jge    0x4af4c3
  004af45b: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  004af45e: 85 c0                                          test   eax,eax
  004af460: 7c 61                                          jl     0x4af4c3
  004af462: 85 d2                                          test   edx,edx
  004af464: 7c 5d                                          jl     0x4af4c3
  004af466: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004af469: d1 e9                                          shr    ecx,1
  004af46b: 0f af ca                                       imul   ecx,edx
  004af46e: 99                                             cdq
  004af46f: 2b c2                                          sub    eax,edx
  004af471: 8b 55 e4                                       mov    edx,DWORD PTR [ebp-0x1c]
  004af474: d1 f8                                          sar    eax,1
  004af476: 03 c8                                          add    ecx,eax
  004af478: 81 e2 01 00 00 80                              and    edx,0x80000001
  004af47e: 79 05                                          jns    0x4af485
  004af480: 4a                                             dec    edx
  004af481: 83 ca fe                                       or     edx,0xfffffffe
  004af484: 42                                             inc    edx
  004af485: 75 11                                          jne    0x4af498
  004af487: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004af48a: 8b 50 30                                       mov    edx,DWORD PTR [eax+0x30]
  004af48d: 8a 04 0a                                       mov    al,BYTE PTR [edx+ecx*1]
  004af490: c0 e8 04                                       shr    al,0x4
  004af493: 88 45 f0                                       mov    BYTE PTR [ebp-0x10],al
  004af496: eb 0f                                          jmp    0x4af4a7
  004af498: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  004af49b: 8b 42 30                                       mov    eax,DWORD PTR [edx+0x30]
  004af49e: 8a 0c 08                                       mov    cl,BYTE PTR [eax+ecx*1]
  004af4a1: 80 e1 0f                                       and    cl,0xf
  004af4a4: 88 4d f0                                       mov    BYTE PTR [ebp-0x10],cl
  004af4a7: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  004af4aa: 25 ff 00 00 00                                 and    eax,0xff
  004af4af: 83 f8 09                                       cmp    eax,0x9
  004af4b2: 77 18                                          ja     0x4af4cc
  004af4b4: 33 d2                                          xor    edx,edx
  004af4b6: 8a 90 4c f5 4a 00                              mov    dl,BYTE PTR [eax+0x4af54c]
  004af4bc: ff 24 95 40 f5 4a 00                           jmp    DWORD PTR [edx*4+0x4af540]
  004af4c3: c7 45 14 00 00 00 00                           mov    DWORD PTR [ebp+0x14],0x0
  004af4ca: eb 03                                          jmp    0x4af4cf
  004af4cc: 8b 55 f8                                       mov    edx,DWORD PTR [ebp-0x8]
  004af4cf: 4a                                             dec    edx
  004af4d0: 3b d3                                          cmp    edx,ebx
  004af4d2: 89 55 f8                                       mov    DWORD PTR [ebp-0x8],edx
  004af4d5: 0f 87 68 ff ff ff                              ja     0x4af443
  004af4db: 8b 45 14                                       mov    eax,DWORD PTR [ebp+0x14]
  004af4de: 85 c0                                          test   eax,eax
  004af4e0: 74 4f                                          je     0x4af531
  004af4e2: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  004af4e5: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004af4e8: 83 ec 0c                                       sub    esp,0xc
  004af4eb: 8b c4                                          mov    eax,esp
  004af4ed: 89 08                                          mov    DWORD PTR [eax],ecx
  004af4ef: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004af4f2: 89 70 04                                       mov    DWORD PTR [eax+0x4],esi
  004af4f5: 89 50 08                                       mov    DWORD PTR [eax+0x8],edx
  004af4f8: e8 63 27 00 00                                 call   0x4b1c60
  004af4fd: 8b cf                                          mov    ecx,edi
  004af4ff: 50                                             push   eax
  004af500: e8 7b ff fd ff                                 call   0x48f480
  004af505: 3b f3                                          cmp    esi,ebx
  004af507: 76 28                                          jbe    0x4af531
  004af509: 8b cf                                          mov    ecx,edi
  004af50b: e8 60 ff fd ff                                 call   0x48f470
  004af510: 8b 4d e4                                       mov    ecx,DWORD PTR [ebp-0x1c]
  004af513: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  004af516: 50                                             push   eax
  004af517: 83 ec 0c                                       sub    esp,0xc
  004af51a: 8b c4                                          mov    eax,esp
  004af51c: 89 08                                          mov    DWORD PTR [eax],ecx
  004af51e: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004af521: 89 70 04                                       mov    DWORD PTR [eax+0x4],esi
  004af524: 89 50 08                                       mov    DWORD PTR [eax+0x8],edx
  004af527: e8 24 fe ff ff                                 call   0x4af350
  004af52c: 4e                                             dec    esi
  004af52d: 3b f3                                          cmp    esi,ebx
  004af52f: 77 d8                                          ja     0x4af509
  004af531: 8b 45 14                                       mov    eax,DWORD PTR [ebp+0x14]
  004af534: 5f                                             pop    edi
  004af535: 5e                                             pop    esi
  004af536: 5b                                             pop    ebx
  004af537: 8b e5                                          mov    esp,ebp
  004af539: 5d                                             pop    ebp
  004af53a: c2 10 00                                       ret    0x10

; [004AF560] WorldMap::?RemoveBlockingUnit@WorldMap ; instruction=48 ; plage_limite=004AF5D0 ; issues=0
  004af560: 55                                             push   ebp
  004af561: 8b ec                                          mov    ebp,esp
  004af563: 83 ec 10                                       sub    esp,0x10
  004af566: 53                                             push   ebx
  004af567: 8b 5d 0c                                       mov    ebx,DWORD PTR [ebp+0xc]
  004af56a: 56                                             push   esi
  004af56b: 8b 75 14                                       mov    esi,DWORD PTR [ebp+0x14]
  004af56e: 8b 06                                          mov    eax,DWORD PTR [esi]
  004af570: 57                                             push   edi
  004af571: 6a 00                                          push   0x0
  004af573: 89 4d fc                                       mov    DWORD PTR [ebp-0x4],ecx
  004af576: 6a 0e                                          push   0xe
  004af578: 8b ce                                          mov    ecx,esi
  004af57a: 89 5d f4                                       mov    DWORD PTR [ebp-0xc],ebx
  004af57d: 8b fb                                          mov    edi,ebx
  004af57f: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  004af582: 8b cb                                          mov    ecx,ebx
  004af584: 2b c8                                          sub    ecx,eax
  004af586: 3b d9                                          cmp    ebx,ecx
  004af588: 7e 37                                          jle    0x4af5c1
  004af58a: 8b ce                                          mov    ecx,esi
  004af58c: e8 ff fe fd ff                                 call   0x48f490
  004af591: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004af594: 50                                             push   eax
  004af595: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004af598: 83 ec 0c                                       sub    esp,0xc
  004af59b: 8b d4                                          mov    edx,esp
  004af59d: 89 02                                          mov    DWORD PTR [edx],eax
  004af59f: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004af5a2: 89 7a 04                                       mov    DWORD PTR [edx+0x4],edi
  004af5a5: 89 42 08                                       mov    DWORD PTR [edx+0x8],eax
  004af5a8: e8 a3 fd ff ff                                 call   0x4af350
  004af5ad: 8b 06                                          mov    eax,DWORD PTR [esi]
  004af5af: 6a 00                                          push   0x0
  004af5b1: 6a 0e                                          push   0xe
  004af5b3: 8b ce                                          mov    ecx,esi
  004af5b5: 4f                                             dec    edi
  004af5b6: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  004af5b9: 8b cb                                          mov    ecx,ebx
  004af5bb: 2b c8                                          sub    ecx,eax
  004af5bd: 3b f9                                          cmp    edi,ecx
  004af5bf: 7f c9                                          jg     0x4af58a
  004af5c1: 5f                                             pop    edi
  004af5c2: 5e                                             pop    esi
  004af5c3: 5b                                             pop    ebx
  004af5c4: 8b e5                                          mov    esp,ebp
  004af5c6: 5d                                             pop    ebp
  004af5c7: c2 10 00                                       ret    0x10

; [004AF770] WorldMap::?packet_peripheral_units@WorldMap ; instruction=512 ; plage_limite=004AFF00 ; issues=0
  004af770: 55                                             push   ebp
  004af771: 8b ec                                          mov    ebp,esp
  004af773: 6a ff                                          push   0xffffffff
  004af775: 68 18 c7 4d 00                                 push   0x4dc718
  004af77a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004af780: 50                                             push   eax
  004af781: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004af788: 83 ec 74                                       sub    esp,0x74
  004af78b: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  004af78e: 53                                             push   ebx
  004af78f: 56                                             push   esi
  004af790: 57                                             push   edi
  004af791: 33 ff                                          xor    edi,edi
  004af793: 48                                             dec    eax
  004af794: 83 f8 07                                       cmp    eax,0x7
  004af797: 8b f1                                          mov    esi,ecx
  004af799: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  004af79c: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004af79f: 77 4e                                          ja     0x4af7ef
  004af7a1: ff 24 85 d4 fe 4a 00                           jmp    DWORD PTR [eax*4+0x4afed4]
  004af7ef: 8b 7d 20                                       mov    edi,DWORD PTR [ebp+0x20]
  004af7f2: 8b 5d 20                                       mov    ebx,DWORD PTR [ebp+0x20]
  004af7f5: 8b 16                                          mov    edx,DWORD PTR [esi]
  004af7f7: 8b ce                                          mov    ecx,esi
  004af7f9: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004af7fc: 8d 45 88                                       lea    eax,[ebp-0x78]
  004af7ff: 50                                             push   eax
  004af800: c7 45 80 8c e5 4d 00                           mov    DWORD PTR [ebp-0x80],0x4de58c
  004af807: c7 45 84 ff ff ff ff                           mov    DWORD PTR [ebp-0x7c],0xffffffff
  004af80e: ff 15 dc e0 4d 00                              call   DWORD PTR ds:0x4de0dc
  004af814: 33 c0                                          xor    eax,eax
  004af816: 89 45 a4                                       mov    DWORD PTR [ebp-0x5c],eax
  004af819: 89 45 a8                                       mov    DWORD PTR [ebp-0x58],eax
  004af81c: 89 45 ac                                       mov    DWORD PTR [ebp-0x54],eax
  004af81f: 89 45 b0                                       mov    DWORD PTR [ebp-0x50],eax
  004af822: c7 45 80 6c e6 4d 00                           mov    DWORD PTR [ebp-0x80],0x4de66c
  004af829: 89 45 c0                                       mov    DWORD PTR [ebp-0x40],eax
  004af82c: c6 45 b4 08                                    mov    BYTE PTR [ebp-0x4c],0x8
  004af830: 89 45 b8                                       mov    DWORD PTR [ebp-0x48],eax
  004af833: 66 8b 4d f0                                    mov    cx,WORD PTR [ebp-0x10]
  004af837: 66 3b 4e 2c                                    cmp    cx,WORD PTR [esi+0x2c]
  004af83b: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  004af83e: 0f 83 9a 02 00 00                              jae    0x4afade
  004af844: 66 8b 55 ec                                    mov    dx,WORD PTR [ebp-0x14]
  004af848: 66 3b 56 2e                                    cmp    dx,WORD PTR [esi+0x2e]
  004af84c: 0f 83 8c 02 00 00                              jae    0x4afade
  004af852: 66 85 c9                                       test   cx,cx
  004af855: 0f 84 4b 01 00 00                              je     0x4af9a6
  004af85b: 66 c1 ef 02                                    shr    di,0x2
  004af85f: 81 e3 ff ff 00 00                              and    ebx,0xffff
  004af865: c1 eb 02                                       shr    ebx,0x2
  004af868: 43                                             inc    ebx
  004af869: 89 5d d4                                       mov    DWORD PTR [ebp-0x2c],ebx
  004af86c: 8b c7                                          mov    eax,edi
  004af86e: 25 ff ff 00 00                                 and    eax,0xffff
  004af873: 3b c3                                          cmp    eax,ebx
  004af875: 89 7d e0                                       mov    DWORD PTR [ebp-0x20],edi
  004af878: 0f 8d 28 01 00 00                              jge    0x4af9a6
  004af87e: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  004af881: 81 e1 ff ff 00 00                              and    ecx,0xffff
  004af887: 89 4d d8                                       mov    DWORD PTR [ebp-0x28],ecx
  004af88a: c1 e9 02                                       shr    ecx,0x2
  004af88d: c1 e1 02                                       shl    ecx,0x2
  004af890: 89 4d e4                                       mov    DWORD PTR [ebp-0x1c],ecx
  004af893: 8b 56 24                                       mov    edx,DWORD PTR [esi+0x24]
  004af896: 8b 14 0a                                       mov    edx,DWORD PTR [edx+ecx*1]
  004af899: c1 e0 02                                       shl    eax,0x2
  004af89c: 83 3c 02 00                                    cmp    DWORD PTR [edx+eax*1],0x0
  004af8a0: 89 45 dc                                       mov    DWORD PTR [ebp-0x24],eax
  004af8a3: 0f 84 ea 00 00 00                              je     0x4af993
  004af8a9: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004af8ac: c7 45 e8 04 00 00 00                           mov    DWORD PTR [ebp-0x18],0x4
  004af8b3: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004af8b6: 8b 4d e4                                       mov    ecx,DWORD PTR [ebp-0x1c]
  004af8b9: 8b 14 08                                       mov    edx,DWORD PTR [eax+ecx*1]
  004af8bc: 8b 45 dc                                       mov    eax,DWORD PTR [ebp-0x24]
  004af8bf: 8b 3c 02                                       mov    edi,DWORD PTR [edx+eax*1]
  004af8c2: 8b 16                                          mov    edx,DWORD PTR [esi]
  004af8c4: 8b ce                                          mov    ecx,esi
  004af8c6: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004af8c9: 8a 45 23                                       mov    al,BYTE PTR [ebp+0x23]
  004af8cc: 6a 00                                          push   0x0
  004af8ce: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004af8d1: 88 45 c4                                       mov    BYTE PTR [ebp-0x3c],al
  004af8d4: e8 67 31 00 00                                 call   0x4b2a40
  004af8d9: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  004af8dc: 8b 45 d8                                       mov    eax,DWORD PTR [ebp-0x28]
  004af8df: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004af8e2: 51                                             push   ecx
  004af8e3: 52                                             push   edx
  004af8e4: 50                                             push   eax
  004af8e5: 8b cf                                          mov    ecx,edi
  004af8e7: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  004af8eb: e8 70 13 f6 ff                                 call   0x410c60
  004af8f0: 8b 45 c8                                       mov    eax,DWORD PTR [ebp-0x38]
  004af8f3: 3b 45 cc                                       cmp    eax,DWORD PTR [ebp-0x34]
  004af8f6: 8b d8                                          mov    ebx,eax
  004af8f8: 74 46                                          je     0x4af940
  004af8fa: 8b 3b                                          mov    edi,DWORD PTR [ebx]
  004af8fc: 85 ff                                          test   edi,edi
  004af8fe: 74 36                                          je     0x4af936
  004af900: 8b cf                                          mov    ecx,edi
  004af902: e8 69 bd fd ff                                 call   0x48b670
  004af907: 3c 04                                          cmp    al,0x4
  004af909: 74 2b                                          je     0x4af936
  004af90b: 8b 17                                          mov    edx,DWORD PTR [edi]
  004af90d: 8b cf                                          mov    ecx,edi
  004af90f: ff 92 d0 01 00 00                              call   DWORD PTR [edx+0x1d0]
  004af915: 8b 4d 20                                       mov    ecx,DWORD PTR [ebp+0x20]
  004af918: 8b 10                                          mov    edx,DWORD PTR [eax]
  004af91a: 51                                             push   ecx
  004af91b: 8b c8                                          mov    ecx,eax
  004af91d: ff 12                                          call   DWORD PTR [edx]
  004af91f: 84 c0                                          test   al,al
  004af921: 74 13                                          je     0x4af936
  004af923: 8b 17                                          mov    edx,DWORD PTR [edi]
  004af925: 8b cf                                          mov    ecx,edi
  004af927: ff 92 c8 01 00 00                              call   DWORD PTR [edx+0x1c8]
  004af92d: 57                                             push   edi
  004af92e: 8d 4d 80                                       lea    ecx,[ebp-0x80]
  004af931: e8 8a e9 f9 ff                                 call   0x44e2c0
  004af936: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004af939: 83 c3 04                                       add    ebx,0x4
  004af93c: 3b d8                                          cmp    ebx,eax
  004af93e: 75 ba                                          jne    0x4af8fa
  004af940: 8b 06                                          mov    eax,DWORD PTR [esi]
  004af942: 8b ce                                          mov    ecx,esi
  004af944: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004af947: 8b 45 c8                                       mov    eax,DWORD PTR [ebp-0x38]
  004af94a: 33 ff                                          xor    edi,edi
  004af94c: 3b c7                                          cmp    eax,edi
  004af94e: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004af952: 74 19                                          je     0x4af96d
  004af954: 8b 4d cc                                       mov    ecx,DWORD PTR [ebp-0x34]
  004af957: 51                                             push   ecx
  004af958: 50                                             push   eax
  004af959: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004af95c: e8 6f 31 00 00                                 call   0x4b2ad0
  004af961: 8b 55 c8                                       mov    edx,DWORD PTR [ebp-0x38]
  004af964: 52                                             push   edx
  004af965: e8 f6 26 f9 ff                                 call   0x442060
  004af96a: 83 c4 04                                       add    esp,0x4
  004af96d: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  004af970: 8b 45 e8                                       mov    eax,DWORD PTR [ebp-0x18]
  004af973: 41                                             inc    ecx
  004af974: 48                                             dec    eax
  004af975: 89 7d c8                                       mov    DWORD PTR [ebp-0x38],edi
  004af978: 89 7d cc                                       mov    DWORD PTR [ebp-0x34],edi
  004af97b: 89 7d d0                                       mov    DWORD PTR [ebp-0x30],edi
  004af97e: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  004af981: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  004af984: 0f 85 29 ff ff ff                              jne    0x4af8b3
  004af98a: 8b 4d e4                                       mov    ecx,DWORD PTR [ebp-0x1c]
  004af98d: 8b 5d d4                                       mov    ebx,DWORD PTR [ebp-0x2c]
  004af990: 8b 7d e0                                       mov    edi,DWORD PTR [ebp-0x20]
  004af993: 47                                             inc    edi
  004af994: 8b c7                                          mov    eax,edi
  004af996: 25 ff ff 00 00                                 and    eax,0xffff
  004af99b: 3b c3                                          cmp    eax,ebx
  004af99d: 89 7d e0                                       mov    DWORD PTR [ebp-0x20],edi
  004af9a0: 0f 8c ed fe ff ff                              jl     0x4af893
  004af9a6: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  004af9a9: 66 85 c9                                       test   cx,cx
  004af9ac: 0f 84 2c 01 00 00                              je     0x4afade
  004af9b2: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004af9b5: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  004af9b8: 66 c1 ea 02                                    shr    dx,0x2
  004af9bc: 25 ff ff 00 00                                 and    eax,0xffff
  004af9c1: c1 e8 02                                       shr    eax,0x2
  004af9c4: 8d 78 01                                       lea    edi,[eax+0x1]
  004af9c7: 89 7d dc                                       mov    DWORD PTR [ebp-0x24],edi
  004af9ca: 8b c2                                          mov    eax,edx
  004af9cc: 25 ff ff 00 00                                 and    eax,0xffff
  004af9d1: 3b c7                                          cmp    eax,edi
  004af9d3: 89 55 e4                                       mov    DWORD PTR [ebp-0x1c],edx
  004af9d6: 0f 8d 02 01 00 00                              jge    0x4afade
  004af9dc: 81 e1 ff ff 00 00                              and    ecx,0xffff
  004af9e2: 89 4d d8                                       mov    DWORD PTR [ebp-0x28],ecx
  004af9e5: c1 e9 02                                       shr    ecx,0x2
  004af9e8: c1 e1 02                                       shl    ecx,0x2
  004af9eb: 89 4d e0                                       mov    DWORD PTR [ebp-0x20],ecx
  004af9ee: 8b 5e 24                                       mov    ebx,DWORD PTR [esi+0x24]
  004af9f1: c1 e0 02                                       shl    eax,0x2
  004af9f4: 8b 1c 03                                       mov    ebx,DWORD PTR [ebx+eax*1]
  004af9f7: 83 3c 0b 00                                    cmp    DWORD PTR [ebx+ecx*1],0x0
  004af9fb: 89 45 d4                                       mov    DWORD PTR [ebp-0x2c],eax
  004af9fe: 0f 84 c7 00 00 00                              je     0x4afacb
  004afa04: 89 45 18                                       mov    DWORD PTR [ebp+0x18],eax
  004afa07: c7 45 10 04 00 00 00                           mov    DWORD PTR [ebp+0x10],0x4
  004afa0e: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004afa11: 8b 4d d4                                       mov    ecx,DWORD PTR [ebp-0x2c]
  004afa14: 8b 14 08                                       mov    edx,DWORD PTR [eax+ecx*1]
  004afa17: 8b 45 e0                                       mov    eax,DWORD PTR [ebp-0x20]
  004afa1a: 8b 3c 02                                       mov    edi,DWORD PTR [edx+eax*1]
  004afa1d: 8b 16                                          mov    edx,DWORD PTR [esi]
  004afa1f: 8b ce                                          mov    ecx,esi
  004afa21: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004afa24: 8a 45 23                                       mov    al,BYTE PTR [ebp+0x23]
  004afa27: 6a 00                                          push   0x0
  004afa29: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004afa2c: 88 45 c4                                       mov    BYTE PTR [ebp-0x3c],al
  004afa2f: e8 0c 30 00 00                                 call   0x4b2a40
  004afa34: 8b 55 d8                                       mov    edx,DWORD PTR [ebp-0x28]
  004afa37: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  004afa3a: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004afa3d: 51                                             push   ecx
  004afa3e: 52                                             push   edx
  004afa3f: 50                                             push   eax
  004afa40: 8b cf                                          mov    ecx,edi
  004afa42: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  004afa46: e8 15 12 f6 ff                                 call   0x410c60
  004afa4b: 8b 45 c8                                       mov    eax,DWORD PTR [ebp-0x38]
  004afa4e: 3b 45 cc                                       cmp    eax,DWORD PTR [ebp-0x34]
  004afa51: 8b d8                                          mov    ebx,eax
  004afa53: 74 46                                          je     0x4afa9b
  004afa55: 8b 3b                                          mov    edi,DWORD PTR [ebx]
  004afa57: 85 ff                                          test   edi,edi
  004afa59: 74 36                                          je     0x4afa91
  004afa5b: 8b cf                                          mov    ecx,edi
  004afa5d: e8 0e bc fd ff                                 call   0x48b670
  004afa62: 3c 04                                          cmp    al,0x4
  004afa64: 74 2b                                          je     0x4afa91
  004afa66: 8b 17                                          mov    edx,DWORD PTR [edi]
  004afa68: 8b cf                                          mov    ecx,edi
  004afa6a: ff 92 d0 01 00 00                              call   DWORD PTR [edx+0x1d0]
  004afa70: 8b 4d 20                                       mov    ecx,DWORD PTR [ebp+0x20]
  004afa73: 8b 10                                          mov    edx,DWORD PTR [eax]
  004afa75: 51                                             push   ecx
  004afa76: 8b c8                                          mov    ecx,eax
  004afa78: ff 12                                          call   DWORD PTR [edx]
  004afa7a: 84 c0                                          test   al,al
  004afa7c: 74 13                                          je     0x4afa91
  004afa7e: 8b 17                                          mov    edx,DWORD PTR [edi]
  004afa80: 8b cf                                          mov    ecx,edi
  004afa82: ff 92 c8 01 00 00                              call   DWORD PTR [edx+0x1c8]
  004afa88: 57                                             push   edi
  004afa89: 8d 4d 80                                       lea    ecx,[ebp-0x80]
  004afa8c: e8 2f e8 f9 ff                                 call   0x44e2c0
  004afa91: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004afa94: 83 c3 04                                       add    ebx,0x4
  004afa97: 3b d8                                          cmp    ebx,eax
  004afa99: 75 ba                                          jne    0x4afa55
  004afa9b: 8b 06                                          mov    eax,DWORD PTR [esi]
  004afa9d: 8b ce                                          mov    ecx,esi
  004afa9f: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004afaa2: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004afaa5: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004afaa9: e8 e2 2f 00 00                                 call   0x4b2a90
  004afaae: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004afab1: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004afab4: 41                                             inc    ecx
  004afab5: 48                                             dec    eax
  004afab6: 89 4d 18                                       mov    DWORD PTR [ebp+0x18],ecx
  004afab9: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004afabc: 0f 85 4c ff ff ff                              jne    0x4afa0e
  004afac2: 8b 7d dc                                       mov    edi,DWORD PTR [ebp-0x24]
  004afac5: 8b 55 e4                                       mov    edx,DWORD PTR [ebp-0x1c]
  004afac8: 8b 4d e0                                       mov    ecx,DWORD PTR [ebp-0x20]
  004afacb: 42                                             inc    edx
  004afacc: 8b c2                                          mov    eax,edx
  004aface: 25 ff ff 00 00                                 and    eax,0xffff
  004afad3: 3b c7                                          cmp    eax,edi
  004afad5: 89 55 e4                                       mov    DWORD PTR [ebp-0x1c],edx
  004afad8: 0f 8c 10 ff ff ff                              jl     0x4af9ee
  004afade: 8b 16                                          mov    edx,DWORD PTR [esi]
  004afae0: 8b ce                                          mov    ecx,esi
  004afae2: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004afae5: 8b 45 b8                                       mov    eax,DWORD PTR [ebp-0x48]
  004afae8: 33 db                                          xor    ebx,ebx
  004afaea: 3b c3                                          cmp    eax,ebx
  004afaec: 0f 8e d4 02 00 00                              jle    0x4afdc6
  004afaf2: 8b 7d 1c                                       mov    edi,DWORD PTR [ebp+0x1c]
  004afaf5: 6a 10                                          push   0x10
  004afaf7: 8b cf                                          mov    ecx,edi
  004afaf9: e8 52 66 fd ff                                 call   0x486150
  004afafe: 8b 45 b8                                       mov    eax,DWORD PTR [ebp-0x48]
  004afb01: 50                                             push   eax
  004afb02: 8b cf                                          mov    ecx,edi
  004afb04: e8 47 66 fd ff                                 call   0x486150
  004afb09: 8b 55 a4                                       mov    edx,DWORD PTR [ebp-0x5c]
  004afb0c: 8b c2                                          mov    eax,edx
  004afb0e: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afb11: 89 5d c0                                       mov    DWORD PTR [ebp-0x40],ebx
  004afb14: c6 45 b4 08                                    mov    BYTE PTR [ebp-0x4c],0x8
  004afb18: 39 5d c0                                       cmp    DWORD PTR [ebp-0x40],ebx
  004afb1b: 0f 84 3f 01 00 00                              je     0x4afc60
  004afb21: 8b 00                                          mov    eax,DWORD PTR [eax]
  004afb23: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afb26: e9 3c 01 00 00                                 jmp    0x4afc67
  004afc60: c7 45 c0 01 00 00 00                           mov    DWORD PTR [ebp-0x40],0x1
  004afc67: 3b c3                                          cmp    eax,ebx
  004afc69: 74 4d                                          je     0x4afcb8
  004afc6b: 8b 70 08                                       mov    esi,DWORD PTR [eax+0x8]
  004afc6e: 8b 16                                          mov    edx,DWORD PTR [esi]
  004afc70: 8d 45 08                                       lea    eax,[ebp+0x8]
  004afc73: 50                                             push   eax
  004afc74: 8b ce                                          mov    ecx,esi
  004afc76: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  004afc79: 8b c8                                          mov    ecx,eax
  004afc7b: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004afc7d: 8b 59 04                                       mov    ebx,DWORD PTR [ecx+0x4]
  004afc80: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  004afc83: 50                                             push   eax
  004afc84: 8b cf                                          mov    ecx,edi
  004afc86: 89 55 d0                                       mov    DWORD PTR [ebp-0x30],edx
  004afc89: e8 c2 64 fd ff                                 call   0x486150
  004afc8e: 53                                             push   ebx
  004afc8f: 8b cf                                          mov    ecx,edi
  004afc91: e8 ba 64 fd ff                                 call   0x486150
  004afc96: 8b 06                                          mov    eax,DWORD PTR [esi]
  004afc98: 57                                             push   edi
  004afc99: 8b ce                                          mov    ecx,esi
  004afc9b: ff 90 ac 01 00 00                              call   DWORD PTR [eax+0x1ac]
  004afca1: 8b 16                                          mov    edx,DWORD PTR [esi]
  004afca3: 8b ce                                          mov    ecx,esi
  004afca5: ff 92 c4 01 00 00                              call   DWORD PTR [edx+0x1c4]
  004afcab: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afcae: 8b 55 a4                                       mov    edx,DWORD PTR [ebp-0x5c]
  004afcb1: 33 db                                          xor    ebx,ebx
  004afcb3: e9 60 fe ff ff                                 jmp    0x4afb18
  004afcb8: 8b c2                                          mov    eax,edx
  004afcba: 33 c9                                          xor    ecx,ecx
  004afcbc: c7 45 80 6c e6 4d 00                           mov    DWORD PTR [ebp-0x80],0x4de66c
  004afcc3: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afcc6: 89 4d c0                                       mov    DWORD PTR [ebp-0x40],ecx
  004afcc9: c6 45 b4 08                                    mov    BYTE PTR [ebp-0x4c],0x8
  004afccd: be 02 00 00 00                                 mov    esi,0x2
  004afcd2: 3b cb                                          cmp    ecx,ebx
  004afcd4: 74 07                                          je     0x4afcdd
  004afcd6: 8b 00                                          mov    eax,DWORD PTR [eax]
  004afcd8: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afcdb: eb 08                                          jmp    0x4afce5
  004afcdd: b9 01 00 00 00                                 mov    ecx,0x1
  004afce2: 89 4d c0                                       mov    DWORD PTR [ebp-0x40],ecx
  004afce5: 3b c3                                          cmp    eax,ebx
  004afce7: 0f 84 a5 00 00 00                              je     0x4afd92
  004afced: ff 4d b8                                       dec    DWORD PTR [ebp-0x48]
  004afcf0: 8b 4d a8                                       mov    ecx,DWORD PTR [ebp-0x58]
  004afcf3: 3b c1                                          cmp    eax,ecx
  004afcf5: 89 45 ac                                       mov    DWORD PTR [ebp-0x54],eax
  004afcf8: 74 37                                          je     0x4afd31
  004afcfa: 3b c2                                          cmp    eax,edx
  004afcfc: 74 52                                          je     0x4afd50
  004afcfe: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004afd00: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004afd03: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004afd06: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afd09: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004afd0c: 8b 10                                          mov    edx,DWORD PTR [eax]
  004afd0e: 89 11                                          mov    DWORD PTR [ecx],edx
  004afd10: 8b 45 c0                                       mov    eax,DWORD PTR [ebp-0x40]
  004afd13: 83 f8 01                                       cmp    eax,0x1
  004afd16: 75 0b                                          jne    0x4afd23
  004afd18: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afd1b: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004afd1e: 89 4d a0                                       mov    DWORD PTR [ebp-0x60],ecx
  004afd21: eb 55                                          jmp    0x4afd78
  004afd23: 3b c6                                          cmp    eax,esi
  004afd25: 75 51                                          jne    0x4afd78
  004afd27: 8b 55 a0                                       mov    edx,DWORD PTR [ebp-0x60]
  004afd2a: 8b 02                                          mov    eax,DWORD PTR [edx]
  004afd2c: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afd2f: eb 47                                          jmp    0x4afd78
  004afd31: 3b c2                                          cmp    eax,edx
  004afd33: 74 1b                                          je     0x4afd50
  004afd35: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004afd38: 89 19                                          mov    DWORD PTR [ecx],ebx
  004afd3a: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afd3d: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004afd40: 89 55 a8                                       mov    DWORD PTR [ebp-0x58],edx
  004afd43: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  004afd46: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afd49: 39 75 c0                                       cmp    DWORD PTR [ebp-0x40],esi
  004afd4c: 75 2a                                          jne    0x4afd78
  004afd4e: eb 25                                          jmp    0x4afd75
  004afd50: 3b c1                                          cmp    eax,ecx
  004afd52: 74 18                                          je     0x4afd6c
  004afd54: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004afd56: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004afd59: 8b 55 a0                                       mov    edx,DWORD PTR [ebp-0x60]
  004afd5c: 8b 02                                          mov    eax,DWORD PTR [edx]
  004afd5e: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afd61: 89 45 a4                                       mov    DWORD PTR [ebp-0x5c],eax
  004afd64: 83 7d c0 01                                    cmp    DWORD PTR [ebp-0x40],0x1
  004afd68: 75 0e                                          jne    0x4afd78
  004afd6a: eb 09                                          jmp    0x4afd75
  004afd6c: 89 5d a0                                       mov    DWORD PTR [ebp-0x60],ebx
  004afd6f: 89 5d a4                                       mov    DWORD PTR [ebp-0x5c],ebx
  004afd72: 89 5d a8                                       mov    DWORD PTR [ebp-0x58],ebx
  004afd75: 89 5d c0                                       mov    DWORD PTR [ebp-0x40],ebx
  004afd78: 8b 45 ac                                       mov    eax,DWORD PTR [ebp-0x54]
  004afd7b: 50                                             push   eax
  004afd7c: e8 df 22 f9 ff                                 call   0x442060
  004afd81: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afd84: 8b 55 a4                                       mov    edx,DWORD PTR [ebp-0x5c]
  004afd87: 8b 4d c0                                       mov    ecx,DWORD PTR [ebp-0x40]
  004afd8a: 83 c4 04                                       add    esp,0x4
  004afd8d: e9 40 ff ff ff                                 jmp    0x4afcd2
  004afd92: 3b cb                                          cmp    ecx,ebx
  004afd94: 74 04                                          je     0x4afd9a
  004afd96: c6 45 b4 07                                    mov    BYTE PTR [ebp-0x4c],0x7
  004afd9a: 8d 4d 88                                       lea    ecx,[ebp-0x78]
  004afd9d: 51                                             push   ecx
  004afd9e: 89 5d c0                                       mov    DWORD PTR [ebp-0x40],ebx
  004afda1: c7 45 80 8c e5 4d 00                           mov    DWORD PTR [ebp-0x80],0x4de58c
  004afda8: ff 15 e0 e0 4d 00                              call   DWORD PTR ds:0x4de0e0
  004afdae: 5f                                             pop    edi
  004afdaf: 5e                                             pop    esi
  004afdb0: b8 01 00 00 00                                 mov    eax,0x1
  004afdb5: 5b                                             pop    ebx
  004afdb6: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004afdb9: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004afdc0: 8b e5                                          mov    esp,ebp
  004afdc2: 5d                                             pop    ebp
  004afdc3: c2 1c 00                                       ret    0x1c
  004afdc6: 8b 55 a4                                       mov    edx,DWORD PTR [ebp-0x5c]
  004afdc9: 8b c2                                          mov    eax,edx
  004afdcb: 33 c9                                          xor    ecx,ecx
  004afdcd: c7 45 80 6c e6 4d 00                           mov    DWORD PTR [ebp-0x80],0x4de66c
  004afdd4: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afdd7: 89 4d c0                                       mov    DWORD PTR [ebp-0x40],ecx
  004afdda: c6 45 b4 08                                    mov    BYTE PTR [ebp-0x4c],0x8
  004afdde: be 01 00 00 00                                 mov    esi,0x1
  004afde3: bf 02 00 00 00                                 mov    edi,0x2
  004afde8: 3b cb                                          cmp    ecx,ebx
  004afdea: 74 07                                          je     0x4afdf3
  004afdec: 8b 00                                          mov    eax,DWORD PTR [eax]
  004afdee: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afdf1: eb 05                                          jmp    0x4afdf8
  004afdf3: 8b ce                                          mov    ecx,esi
  004afdf5: 89 4d c0                                       mov    DWORD PTR [ebp-0x40],ecx
  004afdf8: 3b c3                                          cmp    eax,ebx
  004afdfa: 0f 84 a3 00 00 00                              je     0x4afea3
  004afe00: ff 4d b8                                       dec    DWORD PTR [ebp-0x48]
  004afe03: 8b 4d a8                                       mov    ecx,DWORD PTR [ebp-0x58]
  004afe06: 3b c1                                          cmp    eax,ecx
  004afe08: 89 45 ac                                       mov    DWORD PTR [ebp-0x54],eax
  004afe0b: 74 36                                          je     0x4afe43
  004afe0d: 3b c2                                          cmp    eax,edx
  004afe0f: 74 51                                          je     0x4afe62
  004afe11: 8b 10                                          mov    edx,DWORD PTR [eax]
  004afe13: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  004afe16: 89 42 04                                       mov    DWORD PTR [edx+0x4],eax
  004afe19: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afe1c: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004afe1f: 8b 10                                          mov    edx,DWORD PTR [eax]
  004afe21: 89 11                                          mov    DWORD PTR [ecx],edx
  004afe23: 8b 45 c0                                       mov    eax,DWORD PTR [ebp-0x40]
  004afe26: 3b c6                                          cmp    eax,esi
  004afe28: 75 0b                                          jne    0x4afe35
  004afe2a: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afe2d: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004afe30: 89 4d a0                                       mov    DWORD PTR [ebp-0x60],ecx
  004afe33: eb 54                                          jmp    0x4afe89
  004afe35: 3b c7                                          cmp    eax,edi
  004afe37: 75 50                                          jne    0x4afe89
  004afe39: 8b 55 a0                                       mov    edx,DWORD PTR [ebp-0x60]
  004afe3c: 8b 02                                          mov    eax,DWORD PTR [edx]
  004afe3e: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afe41: eb 46                                          jmp    0x4afe89
  004afe43: 3b c2                                          cmp    eax,edx
  004afe45: 74 1b                                          je     0x4afe62
  004afe47: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004afe4a: 89 19                                          mov    DWORD PTR [ecx],ebx
  004afe4c: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afe4f: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004afe52: 89 55 a8                                       mov    DWORD PTR [ebp-0x58],edx
  004afe55: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  004afe58: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afe5b: 39 7d c0                                       cmp    DWORD PTR [ebp-0x40],edi
  004afe5e: 75 29                                          jne    0x4afe89
  004afe60: eb 24                                          jmp    0x4afe86
  004afe62: 3b c1                                          cmp    eax,ecx
  004afe64: 74 17                                          je     0x4afe7d
  004afe66: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004afe68: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004afe6b: 8b 55 a0                                       mov    edx,DWORD PTR [ebp-0x60]
  004afe6e: 8b 02                                          mov    eax,DWORD PTR [edx]
  004afe70: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004afe73: 89 45 a4                                       mov    DWORD PTR [ebp-0x5c],eax
  004afe76: 39 75 c0                                       cmp    DWORD PTR [ebp-0x40],esi
  004afe79: 75 0e                                          jne    0x4afe89
  004afe7b: eb 09                                          jmp    0x4afe86
  004afe7d: 89 5d a0                                       mov    DWORD PTR [ebp-0x60],ebx
  004afe80: 89 5d a4                                       mov    DWORD PTR [ebp-0x5c],ebx
  004afe83: 89 5d a8                                       mov    DWORD PTR [ebp-0x58],ebx
  004afe86: 89 5d c0                                       mov    DWORD PTR [ebp-0x40],ebx
  004afe89: 8b 45 ac                                       mov    eax,DWORD PTR [ebp-0x54]
  004afe8c: 50                                             push   eax
  004afe8d: e8 ce 21 f9 ff                                 call   0x442060
  004afe92: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004afe95: 8b 55 a4                                       mov    edx,DWORD PTR [ebp-0x5c]
  004afe98: 8b 4d c0                                       mov    ecx,DWORD PTR [ebp-0x40]
  004afe9b: 83 c4 04                                       add    esp,0x4
  004afe9e: e9 45 ff ff ff                                 jmp    0x4afde8
  004afea3: 3b cb                                          cmp    ecx,ebx
  004afea5: 74 04                                          je     0x4afeab
  004afea7: c6 45 b4 07                                    mov    BYTE PTR [ebp-0x4c],0x7
  004afeab: 8d 4d 88                                       lea    ecx,[ebp-0x78]
  004afeae: 51                                             push   ecx
  004afeaf: 89 5d c0                                       mov    DWORD PTR [ebp-0x40],ebx
  004afeb2: c7 45 80 8c e5 4d 00                           mov    DWORD PTR [ebp-0x80],0x4de58c
  004afeb9: ff 15 e0 e0 4d 00                              call   DWORD PTR ds:0x4de0e0
  004afebf: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004afec2: 5f                                             pop    edi
  004afec3: 5e                                             pop    esi
  004afec4: 33 c0                                          xor    eax,eax
  004afec6: 5b                                             pop    ebx
  004afec7: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004afece: 8b e5                                          mov    esp,ebp
  004afed0: 5d                                             pop    ebp
  004afed1: c2 1c 00                                       ret    0x1c

; [004B0C40] WorldMap::?packet_inview_units@WorldMap ; instruction=360 ; plage_limite=004B1090 ; issues=0
  004b0c40: 55                                             push   ebp
  004b0c41: 8b ec                                          mov    ebp,esp
  004b0c43: 6a ff                                          push   0xffffffff
  004b0c45: 68 9e c7 4d 00                                 push   0x4dc79e
  004b0c4a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004b0c50: 50                                             push   eax
  004b0c51: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004b0c58: 81 ec 90 00 00 00                              sub    esp,0x90
  004b0c5e: 53                                             push   ebx
  004b0c5f: 56                                             push   esi
  004b0c60: 8b f1                                          mov    esi,ecx
  004b0c62: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b0c64: 57                                             push   edi
  004b0c65: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004b0c68: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b0c6b: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  004b0c6e: 81 e1 ff 00 00 00                              and    ecx,0xff
  004b0c74: 8b c2                                          mov    eax,edx
  004b0c76: 2b c1                                          sub    eax,ecx
  004b0c78: 79 04                                          jns    0x4b0c7e
  004b0c7a: 33 ff                                          xor    edi,edi
  004b0c7c: eb 05                                          jmp    0x4b0c83
  004b0c7e: c1 f8 02                                       sar    eax,0x2
  004b0c81: 8b f8                                          mov    edi,eax
  004b0c83: 33 c0                                          xor    eax,eax
  004b0c85: 66 8b 46 2c                                    mov    ax,WORD PTR [esi+0x2c]
  004b0c89: 03 d1                                          add    edx,ecx
  004b0c8b: 3b d0                                          cmp    edx,eax
  004b0c8d: 7e 09                                          jle    0x4b0c98
  004b0c8f: 48                                             dec    eax
  004b0c90: c1 f8 02                                       sar    eax,0x2
  004b0c93: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  004b0c96: eb 06                                          jmp    0x4b0c9e
  004b0c98: c1 fa 02                                       sar    edx,0x2
  004b0c9b: 89 55 e8                                       mov    DWORD PTR [ebp-0x18],edx
  004b0c9e: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  004b0ca1: 8b c2                                          mov    eax,edx
  004b0ca3: 2b c1                                          sub    eax,ecx
  004b0ca5: 79 09                                          jns    0x4b0cb0
  004b0ca7: c7 45 e4 00 00 00 00                           mov    DWORD PTR [ebp-0x1c],0x0
  004b0cae: eb 06                                          jmp    0x4b0cb6
  004b0cb0: c1 f8 02                                       sar    eax,0x2
  004b0cb3: 89 45 e4                                       mov    DWORD PTR [ebp-0x1c],eax
  004b0cb6: 33 c0                                          xor    eax,eax
  004b0cb8: 66 8b 46 2e                                    mov    ax,WORD PTR [esi+0x2e]
  004b0cbc: 03 ca                                          add    ecx,edx
  004b0cbe: 3b c8                                          cmp    ecx,eax
  004b0cc0: 7e 0b                                          jle    0x4b0ccd
  004b0cc2: 8d 58 ff                                       lea    ebx,[eax-0x1]
  004b0cc5: c1 fb 02                                       sar    ebx,0x2
  004b0cc8: 89 5d ec                                       mov    DWORD PTR [ebp-0x14],ebx
  004b0ccb: eb 08                                          jmp    0x4b0cd5
  004b0ccd: c1 f9 02                                       sar    ecx,0x2
  004b0cd0: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  004b0cd3: 8b d9                                          mov    ebx,ecx
  004b0cd5: 8d 4d a8                                       lea    ecx,[ebp-0x58]
  004b0cd8: 51                                             push   ecx
  004b0cd9: c7 45 a0 8c e5 4d 00                           mov    DWORD PTR [ebp-0x60],0x4de58c
  004b0ce0: c7 45 a4 ff ff ff ff                           mov    DWORD PTR [ebp-0x5c],0xffffffff
  004b0ce7: ff 15 dc e0 4d 00                              call   DWORD PTR ds:0x4de0dc
  004b0ced: 33 c9                                          xor    ecx,ecx
  004b0cef: 89 4d c4                                       mov    DWORD PTR [ebp-0x3c],ecx
  004b0cf2: 89 4d c8                                       mov    DWORD PTR [ebp-0x38],ecx
  004b0cf5: 89 4d cc                                       mov    DWORD PTR [ebp-0x34],ecx
  004b0cf8: 89 4d d0                                       mov    DWORD PTR [ebp-0x30],ecx
  004b0cfb: c7 45 a0 6c e6 4d 00                           mov    DWORD PTR [ebp-0x60],0x4de66c
  004b0d02: 89 4d e0                                       mov    DWORD PTR [ebp-0x20],ecx
  004b0d05: c6 45 d4 08                                    mov    BYTE PTR [ebp-0x2c],0x8
  004b0d09: 89 4d d8                                       mov    DWORD PTR [ebp-0x28],ecx
  004b0d0c: 8b 55 e8                                       mov    edx,DWORD PTR [ebp-0x18]
  004b0d0f: 8b c7                                          mov    eax,edi
  004b0d11: 25 ff ff 00 00                                 and    eax,0xffff
  004b0d16: 3b c2                                          cmp    eax,edx
  004b0d18: 89 4d fc                                       mov    DWORD PTR [ebp-0x4],ecx
  004b0d1b: 89 7d 94                                       mov    DWORD PTR [ebp-0x6c],edi
  004b0d1e: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004b0d21: 0f 83 65 01 00 00                              jae    0x4b0e8c
  004b0d27: 8b 55 e4                                       mov    edx,DWORD PTR [ebp-0x1c]
  004b0d2a: 81 e2 ff ff 00 00                              and    edx,0xffff
  004b0d30: 89 55 88                                       mov    DWORD PTR [ebp-0x78],edx
  004b0d33: 3b d3                                          cmp    edx,ebx
  004b0d35: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  004b0d38: 89 45 98                                       mov    DWORD PTR [ebp-0x68],eax
  004b0d3b: 0f 83 31 01 00 00                              jae    0x4b0e72
  004b0d41: 89 55 10                                       mov    DWORD PTR [ebp+0x10],edx
  004b0d44: 8b 7d f0                                       mov    edi,DWORD PTR [ebp-0x10]
  004b0d47: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004b0d4a: 8b 04 b8                                       mov    eax,DWORD PTR [eax+edi*4]
  004b0d4d: 8b 7d 10                                       mov    edi,DWORD PTR [ebp+0x10]
  004b0d50: 39 0c b8                                       cmp    DWORD PTR [eax+edi*4],ecx
  004b0d53: 0f 84 02 01 00 00                              je     0x4b0e5b
  004b0d59: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  004b0d5c: 89 4d 18                                       mov    DWORD PTR [ebp+0x18],ecx
  004b0d5f: c7 45 9c 04 00 00 00                           mov    DWORD PTR [ebp-0x64],0x4
  004b0d66: 8b 5d 10                                       mov    ebx,DWORD PTR [ebp+0x10]
  004b0d69: c7 45 90 04 00 00 00                           mov    DWORD PTR [ebp-0x70],0x4
  004b0d70: 8b 56 28                                       mov    edx,DWORD PTR [esi+0x28]
  004b0d73: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004b0d76: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  004b0d79: 89 95 6c ff ff ff                              mov    DWORD PTR [ebp-0x94],edx
  004b0d7f: 8b 14 88                                       mov    edx,DWORD PTR [eax+ecx*4]
  004b0d82: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004b0d85: 8b 3c 82                                       mov    edi,DWORD PTR [edx+eax*4]
  004b0d88: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b0d8a: 8b ce                                          mov    ecx,esi
  004b0d8c: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004b0d8f: 8a 45 1f                                       mov    al,BYTE PTR [ebp+0x1f]
  004b0d92: 6a 00                                          push   0x0
  004b0d94: 8d 8d 78 ff ff ff                              lea    ecx,[ebp-0x88]
  004b0d9a: 88 85 78 ff ff ff                              mov    BYTE PTR [ebp-0x88],al
  004b0da0: e8 9b 1c 00 00                                 call   0x4b2a40
  004b0da5: 8b 55 18                                       mov    edx,DWORD PTR [ebp+0x18]
  004b0da8: 8d 8d 78 ff ff ff                              lea    ecx,[ebp-0x88]
  004b0dae: 51                                             push   ecx
  004b0daf: 53                                             push   ebx
  004b0db0: 52                                             push   edx
  004b0db1: 8b cf                                          mov    ecx,edi
  004b0db3: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  004b0db7: e8 a4 fe f5 ff                                 call   0x410c60
  004b0dbc: 8b 85 7c ff ff ff                              mov    eax,DWORD PTR [ebp-0x84]
  004b0dc2: 3b 45 80                                       cmp    eax,DWORD PTR [ebp-0x80]
  004b0dc5: 8b c8                                          mov    ecx,eax
  004b0dc7: 89 4d 8c                                       mov    DWORD PTR [ebp-0x74],ecx
  004b0dca: 74 4f                                          je     0x4b0e1b
  004b0dcc: 8b 39                                          mov    edi,DWORD PTR [ecx]
  004b0dce: 85 ff                                          test   edi,edi
  004b0dd0: 74 39                                          je     0x4b0e0b
  004b0dd2: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b0dd5: 8b 95 6c ff ff ff                              mov    edx,DWORD PTR [ebp-0x94]
  004b0ddb: 83 ec 0c                                       sub    esp,0xc
  004b0dde: 8b c4                                          mov    eax,esp
  004b0de0: 89 08                                          mov    DWORD PTR [eax],ecx
  004b0de2: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  004b0de5: 89 50 08                                       mov    DWORD PTR [eax+0x8],edx
  004b0de8: 8b 45 1c                                       mov    eax,DWORD PTR [ebp+0x1c]
  004b0deb: 50                                             push   eax
  004b0dec: 57                                             push   edi
  004b0ded: 8b ce                                          mov    ecx,esi
  004b0def: e8 dc e7 ff ff                                 call   0x4af5d0
  004b0df4: 84 c0                                          test   al,al
  004b0df6: 74 13                                          je     0x4b0e0b
  004b0df8: 8b 17                                          mov    edx,DWORD PTR [edi]
  004b0dfa: 8b cf                                          mov    ecx,edi
  004b0dfc: ff 92 c8 01 00 00                              call   DWORD PTR [edx+0x1c8]
  004b0e02: 57                                             push   edi
  004b0e03: 8d 4d a0                                       lea    ecx,[ebp-0x60]
  004b0e06: e8 b5 d4 f9 ff                                 call   0x44e2c0
  004b0e0b: 8b 4d 8c                                       mov    ecx,DWORD PTR [ebp-0x74]
  004b0e0e: 8b 45 80                                       mov    eax,DWORD PTR [ebp-0x80]
  004b0e11: 83 c1 04                                       add    ecx,0x4
  004b0e14: 3b c8                                          cmp    ecx,eax
  004b0e16: 89 4d 8c                                       mov    DWORD PTR [ebp-0x74],ecx
  004b0e19: 75 b1                                          jne    0x4b0dcc
  004b0e1b: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b0e1d: 8b ce                                          mov    ecx,esi
  004b0e1f: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004b0e22: 8d 8d 78 ff ff ff                              lea    ecx,[ebp-0x88]
  004b0e28: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004b0e2c: e8 5f 1c 00 00                                 call   0x4b2a90
  004b0e31: 8b 45 90                                       mov    eax,DWORD PTR [ebp-0x70]
  004b0e34: 43                                             inc    ebx
  004b0e35: 48                                             dec    eax
  004b0e36: 89 45 90                                       mov    DWORD PTR [ebp-0x70],eax
  004b0e39: 0f 85 31 ff ff ff                              jne    0x4b0d70
  004b0e3f: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b0e42: 8b 45 9c                                       mov    eax,DWORD PTR [ebp-0x64]
  004b0e45: 41                                             inc    ecx
  004b0e46: 48                                             dec    eax
  004b0e47: 89 4d 18                                       mov    DWORD PTR [ebp+0x18],ecx
  004b0e4a: 89 45 9c                                       mov    DWORD PTR [ebp-0x64],eax
  004b0e4d: 0f 85 13 ff ff ff                              jne    0x4b0d66
  004b0e53: 8b 5d ec                                       mov    ebx,DWORD PTR [ebp-0x14]
  004b0e56: 8b 55 88                                       mov    edx,DWORD PTR [ebp-0x78]
  004b0e59: 33 c9                                          xor    ecx,ecx
  004b0e5b: 8b 45 98                                       mov    eax,DWORD PTR [ebp-0x68]
  004b0e5e: 40                                             inc    eax
  004b0e5f: 89 45 98                                       mov    DWORD PTR [ebp-0x68],eax
  004b0e62: 25 ff ff 00 00                                 and    eax,0xffff
  004b0e67: 3b c3                                          cmp    eax,ebx
  004b0e69: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004b0e6c: 0f 82 d2 fe ff ff                              jb     0x4b0d44
  004b0e72: 8b 45 94                                       mov    eax,DWORD PTR [ebp-0x6c]
  004b0e75: 8b 7d e8                                       mov    edi,DWORD PTR [ebp-0x18]
  004b0e78: 40                                             inc    eax
  004b0e79: 89 45 94                                       mov    DWORD PTR [ebp-0x6c],eax
  004b0e7c: 25 ff ff 00 00                                 and    eax,0xffff
  004b0e81: 3b c7                                          cmp    eax,edi
  004b0e83: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004b0e86: 0f 82 a7 fe ff ff                              jb     0x4b0d33
  004b0e8c: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b0e8e: 8b ce                                          mov    ecx,esi
  004b0e90: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004b0e93: 8b 45 d8                                       mov    eax,DWORD PTR [ebp-0x28]
  004b0e96: 33 db                                          xor    ebx,ebx
  004b0e98: 3b c3                                          cmp    eax,ebx
  004b0e9a: 0f 8e d9 00 00 00                              jle    0x4b0f79
  004b0ea0: 8b 7d 14                                       mov    edi,DWORD PTR [ebp+0x14]
  004b0ea3: 6a 10                                          push   0x10
  004b0ea5: 8b cf                                          mov    ecx,edi
  004b0ea7: e8 a4 52 fd ff                                 call   0x486150
  004b0eac: 8b 45 d8                                       mov    eax,DWORD PTR [ebp-0x28]
  004b0eaf: 50                                             push   eax
  004b0eb0: 8b cf                                          mov    ecx,edi
  004b0eb2: e8 99 52 fd ff                                 call   0x486150
  004b0eb7: 8b 55 c4                                       mov    edx,DWORD PTR [ebp-0x3c]
  004b0eba: 8b c2                                          mov    eax,edx
  004b0ebc: 89 45 c0                                       mov    DWORD PTR [ebp-0x40],eax
  004b0ebf: 89 5d e0                                       mov    DWORD PTR [ebp-0x20],ebx
  004b0ec2: c6 45 d4 08                                    mov    BYTE PTR [ebp-0x2c],0x8
  004b0ec6: 39 5d e0                                       cmp    DWORD PTR [ebp-0x20],ebx
  004b0ec9: 74 07                                          je     0x4b0ed2
  004b0ecb: 8b 00                                          mov    eax,DWORD PTR [eax]
  004b0ecd: 89 45 c0                                       mov    DWORD PTR [ebp-0x40],eax
  004b0ed0: eb 07                                          jmp    0x4b0ed9
  004b0ed2: c7 45 e0 01 00 00 00                           mov    DWORD PTR [ebp-0x20],0x1
  004b0ed9: 3b c3                                          cmp    eax,ebx
  004b0edb: 0f 84 9b 00 00 00                              je     0x4b0f7c
  004b0ee1: 8b 70 08                                       mov    esi,DWORD PTR [eax+0x8]
  004b0ee4: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b0ee6: 8d 45 08                                       lea    eax,[ebp+0x8]
  004b0ee9: 50                                             push   eax
  004b0eea: 8b ce                                          mov    ecx,esi
  004b0eec: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  004b0eef: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  004b0ef2: 51                                             push   ecx
  004b0ef3: 8b cf                                          mov    ecx,edi
  004b0ef5: e8 56 52 fd ff                                 call   0x486150
  004b0efa: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  004b0efd: 52                                             push   edx
  004b0efe: 8b cf                                          mov    ecx,edi
  004b0f00: e8 4b 52 fd ff                                 call   0x486150
  004b0f05: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b0f07: 8b ce                                          mov    ecx,esi
  004b0f09: ff 50 2c                                       call   DWORD PTR [eax+0x2c]
  004b0f0c: 66 3d 1b 27                                    cmp    ax,0x271b
  004b0f10: 74 06                                          je     0x4b0f18
  004b0f12: 66 3d 1c 27                                    cmp    ax,0x271c
  004b0f16: 75 41                                          jne    0x4b0f59
  004b0f18: 8d 8d 70 ff ff ff                              lea    ecx,[ebp-0x90]
  004b0f1e: e8 cd 4e fd ff                                 call   0x485df0
  004b0f23: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b0f25: 8d 85 70 ff ff ff                              lea    eax,[ebp-0x90]
  004b0f2b: 50                                             push   eax
  004b0f2c: 8b ce                                          mov    ecx,esi
  004b0f2e: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  004b0f32: ff 92 c0 01 00 00                              call   DWORD PTR [edx+0x1c0]
  004b0f38: 8b 4d 1c                                       mov    ecx,DWORD PTR [ebp+0x1c]
  004b0f3b: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b0f3d: 8d 85 70 ff ff ff                              lea    eax,[ebp-0x90]
  004b0f43: 50                                             push   eax
  004b0f44: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  004b0f4a: 8d 8d 70 ff ff ff                              lea    ecx,[ebp-0x90]
  004b0f50: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004b0f54: e8 27 4f fd ff                                 call   0x485e80
  004b0f59: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b0f5b: 57                                             push   edi
  004b0f5c: 8b ce                                          mov    ecx,esi
  004b0f5e: ff 92 ac 01 00 00                              call   DWORD PTR [edx+0x1ac]
  004b0f64: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b0f66: 8b ce                                          mov    ecx,esi
  004b0f68: ff 90 c4 01 00 00                              call   DWORD PTR [eax+0x1c4]
  004b0f6e: 8b 45 c0                                       mov    eax,DWORD PTR [ebp-0x40]
  004b0f71: 8b 55 c4                                       mov    edx,DWORD PTR [ebp-0x3c]
  004b0f74: e9 4d ff ff ff                                 jmp    0x4b0ec6
  004b0f79: 8b 55 c4                                       mov    edx,DWORD PTR [ebp-0x3c]
  004b0f7c: 8b 75 d8                                       mov    esi,DWORD PTR [ebp-0x28]
  004b0f7f: 8b c2                                          mov    eax,edx
  004b0f81: 33 c9                                          xor    ecx,ecx
  004b0f83: c7 45 a0 6c e6 4d 00                           mov    DWORD PTR [ebp-0x60],0x4de66c
  004b0f8a: 89 45 c0                                       mov    DWORD PTR [ebp-0x40],eax
  004b0f8d: 89 4d e0                                       mov    DWORD PTR [ebp-0x20],ecx
  004b0f90: c6 45 d4 08                                    mov    BYTE PTR [ebp-0x2c],0x8
  004b0f94: 3b cb                                          cmp    ecx,ebx
  004b0f96: 74 07                                          je     0x4b0f9f
  004b0f98: 8b 00                                          mov    eax,DWORD PTR [eax]
  004b0f9a: 89 45 c0                                       mov    DWORD PTR [ebp-0x40],eax
  004b0f9d: eb 08                                          jmp    0x4b0fa7
  004b0f9f: b9 01 00 00 00                                 mov    ecx,0x1
  004b0fa4: 89 4d e0                                       mov    DWORD PTR [ebp-0x20],ecx
  004b0fa7: 3b c3                                          cmp    eax,ebx
  004b0fa9: 0f 84 a7 00 00 00                              je     0x4b1056
  004b0faf: ff 4d d8                                       dec    DWORD PTR [ebp-0x28]
  004b0fb2: 8b 4d c8                                       mov    ecx,DWORD PTR [ebp-0x38]
  004b0fb5: 3b c1                                          cmp    eax,ecx
  004b0fb7: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b0fba: 74 38                                          je     0x4b0ff4
  004b0fbc: 3b c2                                          cmp    eax,edx
  004b0fbe: 74 54                                          je     0x4b1014
  004b0fc0: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004b0fc2: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004b0fc5: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b0fc8: 8b 45 c0                                       mov    eax,DWORD PTR [ebp-0x40]
  004b0fcb: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b0fce: 8b 10                                          mov    edx,DWORD PTR [eax]
  004b0fd0: 89 11                                          mov    DWORD PTR [ecx],edx
  004b0fd2: 8b 45 e0                                       mov    eax,DWORD PTR [ebp-0x20]
  004b0fd5: 83 f8 01                                       cmp    eax,0x1
  004b0fd8: 75 0b                                          jne    0x4b0fe5
  004b0fda: 8b 45 c0                                       mov    eax,DWORD PTR [ebp-0x40]
  004b0fdd: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b0fe0: 89 4d c0                                       mov    DWORD PTR [ebp-0x40],ecx
  004b0fe3: eb 57                                          jmp    0x4b103c
  004b0fe5: 83 f8 02                                       cmp    eax,0x2
  004b0fe8: 75 52                                          jne    0x4b103c
  004b0fea: 8b 55 c0                                       mov    edx,DWORD PTR [ebp-0x40]
  004b0fed: 8b 02                                          mov    eax,DWORD PTR [edx]
  004b0fef: 89 45 c0                                       mov    DWORD PTR [ebp-0x40],eax
  004b0ff2: eb 48                                          jmp    0x4b103c
  004b0ff4: 3b c2                                          cmp    eax,edx
  004b0ff6: 74 1c                                          je     0x4b1014
  004b0ff8: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b0ffb: 89 19                                          mov    DWORD PTR [ecx],ebx
  004b0ffd: 8b 45 c0                                       mov    eax,DWORD PTR [ebp-0x40]
  004b1000: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004b1003: 89 55 c8                                       mov    DWORD PTR [ebp-0x38],edx
  004b1006: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  004b1009: 89 45 c0                                       mov    DWORD PTR [ebp-0x40],eax
  004b100c: 83 7d e0 02                                    cmp    DWORD PTR [ebp-0x20],0x2
  004b1010: 75 2a                                          jne    0x4b103c
  004b1012: eb 25                                          jmp    0x4b1039
  004b1014: 3b c1                                          cmp    eax,ecx
  004b1016: 74 18                                          je     0x4b1030
  004b1018: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004b101a: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004b101d: 8b 55 c0                                       mov    edx,DWORD PTR [ebp-0x40]
  004b1020: 8b 02                                          mov    eax,DWORD PTR [edx]
  004b1022: 89 45 c0                                       mov    DWORD PTR [ebp-0x40],eax
  004b1025: 89 45 c4                                       mov    DWORD PTR [ebp-0x3c],eax
  004b1028: 83 7d e0 01                                    cmp    DWORD PTR [ebp-0x20],0x1
  004b102c: 75 0e                                          jne    0x4b103c
  004b102e: eb 09                                          jmp    0x4b1039
  004b1030: 89 5d c0                                       mov    DWORD PTR [ebp-0x40],ebx
  004b1033: 89 5d c4                                       mov    DWORD PTR [ebp-0x3c],ebx
  004b1036: 89 5d c8                                       mov    DWORD PTR [ebp-0x38],ebx
  004b1039: 89 5d e0                                       mov    DWORD PTR [ebp-0x20],ebx
  004b103c: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b103f: 50                                             push   eax
  004b1040: e8 1b 10 f9 ff                                 call   0x442060
  004b1045: 8b 45 c0                                       mov    eax,DWORD PTR [ebp-0x40]
  004b1048: 8b 55 c4                                       mov    edx,DWORD PTR [ebp-0x3c]
  004b104b: 8b 4d e0                                       mov    ecx,DWORD PTR [ebp-0x20]
  004b104e: 83 c4 04                                       add    esp,0x4
  004b1051: e9 3e ff ff ff                                 jmp    0x4b0f94
  004b1056: 3b cb                                          cmp    ecx,ebx
  004b1058: 74 04                                          je     0x4b105e
  004b105a: c6 45 d4 07                                    mov    BYTE PTR [ebp-0x2c],0x7
  004b105e: 8d 4d a8                                       lea    ecx,[ebp-0x58]
  004b1061: 51                                             push   ecx
  004b1062: 89 5d e0                                       mov    DWORD PTR [ebp-0x20],ebx
  004b1065: c7 45 a0 8c e5 4d 00                           mov    DWORD PTR [ebp-0x60],0x4de58c
  004b106c: ff 15 e0 e0 4d 00                              call   DWORD PTR ds:0x4de0e0
  004b1072: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b1075: 5f                                             pop    edi
  004b1076: 8b c6                                          mov    eax,esi
  004b1078: 5e                                             pop    esi
  004b1079: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004b1080: 5b                                             pop    ebx
  004b1081: 8b e5                                          mov    esp,ebp
  004b1083: 5d                                             pop    ebp
  004b1084: c2 18 00                                       ret    0x18

; [004B1090] WorldMap::?remove_world_unit@WorldMap ; instruction=198 ; plage_limite=004B12A0 ; issues=0
  004b1090: 55                                             push   ebp
  004b1091: 8b ec                                          mov    ebp,esp
  004b1093: 83 ec 18                                       sub    esp,0x18
  004b1096: 53                                             push   ebx
  004b1097: 56                                             push   esi
  004b1098: 8b f1                                          mov    esi,ecx
  004b109a: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b109c: 57                                             push   edi
  004b109d: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004b10a0: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  004b10a3: 8b 5d 0c                                       mov    ebx,DWORD PTR [ebp+0xc]
  004b10a6: 8b 56 24                                       mov    edx,DWORD PTR [esi+0x24]
  004b10a9: 8b c7                                          mov    eax,edi
  004b10ab: c1 f8 02                                       sar    eax,0x2
  004b10ae: c1 e0 02                                       shl    eax,0x2
  004b10b1: 8b cb                                          mov    ecx,ebx
  004b10b3: c1 f9 02                                       sar    ecx,0x2
  004b10b6: c1 e1 02                                       shl    ecx,0x2
  004b10b9: 89 45 f8                                       mov    DWORD PTR [ebp-0x8],eax
  004b10bc: 8b 04 02                                       mov    eax,DWORD PTR [edx+eax*1]
  004b10bf: 8b 55 14                                       mov    edx,DWORD PTR [ebp+0x14]
  004b10c2: 89 4d f4                                       mov    DWORD PTR [ebp-0xc],ecx
  004b10c5: 8b 0c 08                                       mov    ecx,DWORD PTR [eax+ecx*1]
  004b10c8: 85 c9                                          test   ecx,ecx
  004b10ca: 52                                             push   edx
  004b10cb: 0f 84 49 01 00 00                              je     0x4b121a
  004b10d1: 53                                             push   ebx
  004b10d2: 57                                             push   edi
  004b10d3: e8 d8 f9 f5 ff                                 call   0x410ab0
  004b10d8: 85 c0                                          test   eax,eax
  004b10da: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  004b10dd: 74 56                                          je     0x4b1135
  004b10df: 8b c8                                          mov    ecx,eax
  004b10e1: e8 aa e3 fd ff                                 call   0x48f490
  004b10e6: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004b10e9: 88 45 14                                       mov    BYTE PTR [ebp+0x14],al
  004b10ec: e8 7f a5 fd ff                                 call   0x48b670
  004b10f1: 3c 03                                          cmp    al,0x3
  004b10f3: 74 20                                          je     0x4b1115
  004b10f5: 8b 45 14                                       mov    eax,DWORD PTR [ebp+0x14]
  004b10f8: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004b10fb: 50                                             push   eax
  004b10fc: 83 ec 0c                                       sub    esp,0xc
  004b10ff: 8b cc                                          mov    ecx,esp
  004b1101: 89 39                                          mov    DWORD PTR [ecx],edi
  004b1103: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004b1106: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  004b1109: 8b ce                                          mov    ecx,esi
  004b110b: e8 40 e2 ff ff                                 call   0x4af350
  004b1110: e9 b9 00 00 00                                 jmp    0x4b11ce
  004b1115: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b1118: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004b111b: 50                                             push   eax
  004b111c: 83 ec 0c                                       sub    esp,0xc
  004b111f: 8b cc                                          mov    ecx,esp
  004b1121: 89 39                                          mov    DWORD PTR [ecx],edi
  004b1123: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004b1126: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  004b1129: 8b ce                                          mov    ecx,esi
  004b112b: e8 30 e4 ff ff                                 call   0x4af560
  004b1130: e9 99 00 00 00                                 jmp    0x4b11ce
  004b1135: 8b 45 14                                       mov    eax,DWORD PTR [ebp+0x14]
  004b1138: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004b113b: 50                                             push   eax
  004b113c: 83 ec 0c                                       sub    esp,0xc
  004b113f: 8b cc                                          mov    ecx,esp
  004b1141: 89 39                                          mov    DWORD PTR [ecx],edi
  004b1143: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004b1146: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  004b1149: 8b ce                                          mov    ecx,esi
  004b114b: e8 60 0c 00 00                                 call   0x4b1db0
  004b1150: 85 c0                                          test   eax,eax
  004b1152: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004b1155: 74 5e                                          je     0x4b11b5
  004b1157: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  004b115a: 8b 4d 14                                       mov    ecx,DWORD PTR [ebp+0x14]
  004b115d: 50                                             push   eax
  004b115e: 53                                             push   ebx
  004b115f: 57                                             push   edi
  004b1160: 51                                             push   ecx
  004b1161: 68 7c fb 50 00                                 push   0x50fb7c
  004b1166: 68 00 04 00 00                                 push   0x400
  004b116b: e8 d0 0b fc ff                                 call   0x471d40
  004b1170: 8b 7d 10                                       mov    edi,DWORD PTR [ebp+0x10]
  004b1173: 83 c4 18                                       add    esp,0x18
  004b1176: 8b cf                                          mov    ecx,edi
  004b1178: e8 83 a5 fd ff                                 call   0x48b700
  004b117d: 8b 17                                          mov    edx,DWORD PTR [edi]
  004b117f: 50                                             push   eax
  004b1180: 8d 45 08                                       lea    eax,[ebp+0x8]
  004b1183: 50                                             push   eax
  004b1184: 8b cf                                          mov    ecx,edi
  004b1186: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  004b1189: 8b 10                                          mov    edx,DWORD PTR [eax]
  004b118b: 83 ec 0c                                       sub    esp,0xc
  004b118e: 8b cc                                          mov    ecx,esp
  004b1190: 89 11                                          mov    DWORD PTR [ecx],edx
  004b1192: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004b1195: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  004b1198: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b119b: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  004b119e: 8b ce                                          mov    ecx,esi
  004b11a0: e8 eb fe ff ff                                 call   0x4b1090
  004b11a5: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b11a7: 8b ce                                          mov    ecx,esi
  004b11a9: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004b11ac: 5f                                             pop    edi
  004b11ad: 5e                                             pop    esi
  004b11ae: 5b                                             pop    ebx
  004b11af: 8b e5                                          mov    esp,ebp
  004b11b1: 5d                                             pop    ebp
  004b11b2: c2 10 00                                       ret    0x10
  004b11b5: 8b 4e 28                                       mov    ecx,DWORD PTR [esi+0x28]
  004b11b8: 8b 55 14                                       mov    edx,DWORD PTR [ebp+0x14]
  004b11bb: 51                                             push   ecx
  004b11bc: 53                                             push   ebx
  004b11bd: 57                                             push   edi
  004b11be: 52                                             push   edx
  004b11bf: 68 48 fb 50 00                                 push   0x50fb48
  004b11c4: 6a 04                                          push   0x4
  004b11c6: e8 75 0b fc ff                                 call   0x471d40
  004b11cb: 83 c4 18                                       add    esp,0x18
  004b11ce: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004b11d1: 8b 7d f8                                       mov    edi,DWORD PTR [ebp-0x8]
  004b11d4: 8b 0c 38                                       mov    ecx,DWORD PTR [eax+edi*1]
  004b11d7: 8b 5d f4                                       mov    ebx,DWORD PTR [ebp-0xc]
  004b11da: 8b 0c 19                                       mov    ecx,DWORD PTR [ecx+ebx*1]
  004b11dd: e8 1e fb f5 ff                                 call   0x410d00
  004b11e2: 84 c0                                          test   al,al
  004b11e4: 0f 84 99 00 00 00                              je     0x4b1283
  004b11ea: 8b 56 24                                       mov    edx,DWORD PTR [esi+0x24]
  004b11ed: 8b 04 3a                                       mov    eax,DWORD PTR [edx+edi*1]
  004b11f0: 8b 0c 18                                       mov    ecx,DWORD PTR [eax+ebx*1]
  004b11f3: 85 c9                                          test   ecx,ecx
  004b11f5: 74 06                                          je     0x4b11fd
  004b11f7: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b11f9: 6a 01                                          push   0x1
  004b11fb: ff 12                                          call   DWORD PTR [edx]
  004b11fd: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004b1200: 8b 0c 38                                       mov    ecx,DWORD PTR [eax+edi*1]
  004b1203: c7 04 19 00 00 00 00                           mov    DWORD PTR [ecx+ebx*1],0x0
  004b120a: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b120c: 8b ce                                          mov    ecx,esi
  004b120e: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004b1211: 5f                                             pop    edi
  004b1212: 5e                                             pop    esi
  004b1213: 5b                                             pop    ebx
  004b1214: 8b e5                                          mov    esp,ebp
  004b1216: 5d                                             pop    ebp
  004b1217: c2 10 00                                       ret    0x10
  004b121a: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  004b121d: 50                                             push   eax
  004b121e: 53                                             push   ebx
  004b121f: 57                                             push   edi
  004b1220: 68 00 fb 50 00                                 push   0x50fb00
  004b1225: 68 00 04 00 00                                 push   0x400
  004b122a: e8 11 0b fc ff                                 call   0x471d40
  004b122f: 8b 4d 14                                       mov    ecx,DWORD PTR [ebp+0x14]
  004b1232: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004b1235: 83 c4 18                                       add    esp,0x18
  004b1238: 51                                             push   ecx
  004b1239: 83 ec 0c                                       sub    esp,0xc
  004b123c: 8b d4                                          mov    edx,esp
  004b123e: 89 3a                                          mov    DWORD PTR [edx],edi
  004b1240: 89 5a 04                                       mov    DWORD PTR [edx+0x4],ebx
  004b1243: 8b ce                                          mov    ecx,esi
  004b1245: 89 42 08                                       mov    DWORD PTR [edx+0x8],eax
  004b1248: e8 63 0b 00 00                                 call   0x4b1db0
  004b124d: 85 c0                                          test   eax,eax
  004b124f: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004b1252: 74 16                                          je     0x4b126a
  004b1254: 8b c8                                          mov    ecx,eax
  004b1256: e8 a5 a4 fd ff                                 call   0x48b700
  004b125b: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  004b125e: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b1260: 50                                             push   eax
  004b1261: 8d 45 e8                                       lea    eax,[ebp-0x18]
  004b1264: 50                                             push   eax
  004b1265: e9 1c ff ff ff                                 jmp    0x4b1186
  004b126a: 8b 4e 28                                       mov    ecx,DWORD PTR [esi+0x28]
  004b126d: 8b 55 14                                       mov    edx,DWORD PTR [ebp+0x14]
  004b1270: 51                                             push   ecx
  004b1271: 53                                             push   ebx
  004b1272: 57                                             push   edi
  004b1273: 52                                             push   edx
  004b1274: 68 48 fb 50 00                                 push   0x50fb48
  004b1279: 6a 04                                          push   0x4
  004b127b: e8 c0 0a fc ff                                 call   0x471d40
  004b1280: 83 c4 18                                       add    esp,0x18
  004b1283: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b1285: 8b ce                                          mov    ecx,esi
  004b1287: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004b128a: 5f                                             pop    edi
  004b128b: 5e                                             pop    esi
  004b128c: 5b                                             pop    ebx
  004b128d: 8b e5                                          mov    esp,ebp
  004b128f: 5d                                             pop    ebp
  004b1290: c2 10 00                                       ret    0x10

; [004B12A0] WorldMap::?move_world_unit@WorldMap ; instruction=200 ; plage_limite=004B1530 ; issues=0
  004b12a0: 55                                             push   ebp
  004b12a1: 8b ec                                          mov    ebp,esp
  004b12a3: 6a ff                                          push   0xffffffff
  004b12a5: 68 c0 c7 4d 00                                 push   0x4dc7c0
  004b12aa: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004b12b0: 50                                             push   eax
  004b12b1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004b12b8: 83 ec 24                                       sub    esp,0x24
  004b12bb: 53                                             push   ebx
  004b12bc: 56                                             push   esi
  004b12bd: 8b f1                                          mov    esi,ecx
  004b12bf: 57                                             push   edi
  004b12c0: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  004b12c3: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  004b12ca: e8 8f 07 02 00                                 call   0x4d1a5e
  004b12cf: 8b 5d 14                                       mov    ebx,DWORD PTR [ebp+0x14]
  004b12d2: 33 c0                                          xor    eax,eax
  004b12d4: 66 8b 46 2c                                    mov    ax,WORD PTR [esi+0x2c]
  004b12d8: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b12df: 3b d8                                          cmp    ebx,eax
  004b12e1: 0f 8d 01 02 00 00                              jge    0x4b14e8
  004b12e7: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  004b12ea: 33 c9                                          xor    ecx,ecx
  004b12ec: 66 8b 4e 2e                                    mov    cx,WORD PTR [esi+0x2e]
  004b12f0: 3b c1                                          cmp    eax,ecx
  004b12f2: 0f 8d f0 01 00 00                              jge    0x4b14e8
  004b12f8: 85 db                                          test   ebx,ebx
  004b12fa: 0f 8c e8 01 00 00                              jl     0x4b14e8
  004b1300: 85 c0                                          test   eax,eax
  004b1302: 0f 8c e0 01 00 00                              jl     0x4b14e8
  004b1308: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b130a: 8b ce                                          mov    ecx,esi
  004b130c: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004b130f: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004b1312: 8b 56 24                                       mov    edx,DWORD PTR [esi+0x24]
  004b1315: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  004b1318: 8b c8                                          mov    ecx,eax
  004b131a: c1 f9 02                                       sar    ecx,0x2
  004b131d: 8b 0c 8a                                       mov    ecx,DWORD PTR [edx+ecx*4]
  004b1320: c1 ff 02                                       sar    edi,0x2
  004b1323: 8b 0c b9                                       mov    ecx,DWORD PTR [ecx+edi*4]
  004b1326: 85 c9                                          test   ecx,ecx
  004b1328: 0f 84 b3 01 00 00                              je     0x4b14e1
  004b132e: 8b 55 20                                       mov    edx,DWORD PTR [ebp+0x20]
  004b1331: 52                                             push   edx
  004b1332: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  004b1335: 52                                             push   edx
  004b1336: 50                                             push   eax
  004b1337: e8 d4 f6 f5 ff                                 call   0x410a10
  004b133c: 8b f8                                          mov    edi,eax
  004b133e: 85 ff                                          test   edi,edi
  004b1340: 0f 84 9b 01 00 00                              je     0x4b14e1
  004b1346: 33 c9                                          xor    ecx,ecx
  004b1348: 66 8b 4e 2c                                    mov    cx,WORD PTR [esi+0x2c]
  004b134c: 3b d9                                          cmp    ebx,ecx
  004b134e: 7d 7b                                          jge    0x4b13cb
  004b1350: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  004b1353: 33 d2                                          xor    edx,edx
  004b1355: 66 8b 56 2e                                    mov    dx,WORD PTR [esi+0x2e]
  004b1359: 3b c2                                          cmp    eax,edx
  004b135b: 7d 6e                                          jge    0x4b13cb
  004b135d: d1 e9                                          shr    ecx,1
  004b135f: 0f af c8                                       imul   ecx,eax
  004b1362: 8b c3                                          mov    eax,ebx
  004b1364: 99                                             cdq
  004b1365: 2b c2                                          sub    eax,edx
  004b1367: d1 f8                                          sar    eax,1
  004b1369: 03 c8                                          add    ecx,eax
  004b136b: 8b c3                                          mov    eax,ebx
  004b136d: 25 01 00 00 80                                 and    eax,0x80000001
  004b1372: 79 05                                          jns    0x4b1379
  004b1374: 48                                             dec    eax
  004b1375: 83 c8 fe                                       or     eax,0xfffffffe
  004b1378: 40                                             inc    eax
  004b1379: 8b 56 30                                       mov    edx,DWORD PTR [esi+0x30]
  004b137c: 8a 04 0a                                       mov    al,BYTE PTR [edx+ecx*1]
  004b137f: 75 05                                          jne    0x4b1386
  004b1381: c0 e8 04                                       shr    al,0x4
  004b1384: eb 02                                          jmp    0x4b1388
  004b1386: 24 0f                                          and    al,0xf
  004b1388: 88 45 ec                                       mov    BYTE PTR [ebp-0x14],al
  004b138b: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b138e: 25 ff 00 00 00                                 and    eax,0xff
  004b1393: 83 f8 09                                       cmp    eax,0x9
  004b1396: 77 43                                          ja     0x4b13db
  004b1398: 33 c9                                          xor    ecx,ecx
  004b139a: 8a 88 1c 15 4b 00                              mov    cl,BYTE PTR [eax+0x4b151c]
  004b13a0: ff 24 8d 0c 15 4b 00                           jmp    DWORD PTR [ecx*4+0x4b150c]
  004b13cb: 8b 45 28                                       mov    eax,DWORD PTR [ebp+0x28]
  004b13ce: 85 c0                                          test   eax,eax
  004b13d0: 75 09                                          jne    0x4b13db
  004b13d2: c7 45 f0 00 00 00 00                           mov    DWORD PTR [ebp-0x10],0x0
  004b13d9: eb 48                                          jmp    0x4b1423
  004b13db: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004b13de: 3b d8                                          cmp    ebx,eax
  004b13e0: 75 08                                          jne    0x4b13ea
  004b13e2: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b13e5: 3b 4d 0c                                       cmp    ecx,DWORD PTR [ebp+0xc]
  004b13e8: 74 39                                          je     0x4b1423
  004b13ea: 8b 55 20                                       mov    edx,DWORD PTR [ebp+0x20]
  004b13ed: 52                                             push   edx
  004b13ee: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  004b13f1: 83 ec 0c                                       sub    esp,0xc
  004b13f4: 8b cc                                          mov    ecx,esp
  004b13f6: 89 01                                          mov    DWORD PTR [ecx],eax
  004b13f8: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004b13fb: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b13fe: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  004b1401: 8b ce                                          mov    ecx,esi
  004b1403: e8 88 fc ff ff                                 call   0x4b1090
  004b1408: 8b 55 18                                       mov    edx,DWORD PTR [ebp+0x18]
  004b140b: 8b 45 1c                                       mov    eax,DWORD PTR [ebp+0x1c]
  004b140e: 57                                             push   edi
  004b140f: 83 ec 0c                                       sub    esp,0xc
  004b1412: 8b cc                                          mov    ecx,esp
  004b1414: 89 19                                          mov    DWORD PTR [ecx],ebx
  004b1416: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b1419: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  004b141c: 8b ce                                          mov    ecx,esi
  004b141e: e8 ed dc ff ff                                 call   0x4af110
  004b1423: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b1425: 8b ce                                          mov    ecx,esi
  004b1427: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004b142a: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  004b142d: 85 c0                                          test   eax,eax
  004b142f: 74 0d                                          je     0x4b143e
  004b1431: 8b 45 1c                                       mov    eax,DWORD PTR [ebp+0x1c]
  004b1434: 8b f3                                          mov    esi,ebx
  004b1436: 8b 5d 18                                       mov    ebx,DWORD PTR [ebp+0x18]
  004b1439: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004b143c: eb 0c                                          jmp    0x4b144a
  004b143e: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  004b1441: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  004b1444: 8b 5d 0c                                       mov    ebx,DWORD PTR [ebp+0xc]
  004b1447: 89 4d 10                                       mov    DWORD PTR [ebp+0x10],ecx
  004b144a: 8a 45 2c                                       mov    al,BYTE PTR [ebp+0x2c]
  004b144d: 84 c0                                          test   al,al
  004b144f: 74 6b                                          je     0x4b14bc
  004b1451: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  004b1454: e8 97 49 fd ff                                 call   0x485df0
  004b1459: 6a 01                                          push   0x1
  004b145b: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  004b145e: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  004b1462: e8 e9 4c fd ff                                 call   0x486150
  004b1467: 56                                             push   esi
  004b1468: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  004b146b: e8 e0 4c fd ff                                 call   0x486150
  004b1470: 53                                             push   ebx
  004b1471: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  004b1474: e8 d7 4c fd ff                                 call   0x486150
  004b1479: 8b 17                                          mov    edx,DWORD PTR [edi]
  004b147b: 8d 45 d0                                       lea    eax,[ebp-0x30]
  004b147e: 50                                             push   eax
  004b147f: 8b cf                                          mov    ecx,edi
  004b1481: ff 92 ac 01 00 00                              call   DWORD PTR [edx+0x1ac]
  004b1487: 8b 17                                          mov    edx,DWORD PTR [edi]
  004b1489: 8b cf                                          mov    ecx,edi
  004b148b: ff 92 d0 01 00 00                              call   DWORD PTR [edx+0x1d0]
  004b1491: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004b1494: 50                                             push   eax
  004b1495: 8d 45 d0                                       lea    eax,[ebp-0x30]
  004b1498: 50                                             push   eax
  004b1499: 6a 16                                          push   0x16
  004b149b: 83 ec 0c                                       sub    esp,0xc
  004b149e: 8b cc                                          mov    ecx,esp
  004b14a0: 89 31                                          mov    DWORD PTR [ecx],esi
  004b14a2: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004b14a5: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  004b14a8: e8 43 e6 f5 ff                                 call   0x40faf0
  004b14ad: 83 c4 18                                       add    esp,0x18
  004b14b0: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  004b14b3: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004b14b7: e8 c4 49 fd ff                                 call   0x485e80
  004b14bc: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  004b14bf: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004b14c6: e8 75 05 02 00                                 call   0x4d1a40
  004b14cb: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  004b14ce: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b14d1: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004b14d8: 5f                                             pop    edi
  004b14d9: 5e                                             pop    esi
  004b14da: 5b                                             pop    ebx
  004b14db: 8b e5                                          mov    esp,ebp
  004b14dd: 5d                                             pop    ebp
  004b14de: c2 28 00                                       ret    0x28
  004b14e1: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b14e3: 8b ce                                          mov    ecx,esi
  004b14e5: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004b14e8: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  004b14eb: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004b14f2: e8 49 05 02 00                                 call   0x4d1a40
  004b14f7: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b14fa: 5f                                             pop    edi
  004b14fb: 5e                                             pop    esi
  004b14fc: 33 c0                                          xor    eax,eax
  004b14fe: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004b1505: 5b                                             pop    ebx
  004b1506: 8b e5                                          mov    esp,ebp
  004b1508: 5d                                             pop    ebp
  004b1509: c2 28 00                                       ret    0x28

; [004B1530] WorldMap::?ScanHostiles@WorldMap ; instruction=598 ; plage_limite=004B1C40 ; issues=0
  004b1530: 55                                             push   ebp
  004b1531: 8b ec                                          mov    ebp,esp
  004b1533: 6a ff                                          push   0xffffffff
  004b1535: 68 d8 c7 4d 00                                 push   0x4dc7d8
  004b153a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004b1540: 50                                             push   eax
  004b1541: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004b1548: 81 ec 98 00 00 00                              sub    esp,0x98
  004b154e: 0f be 55 14                                    movsx  edx,BYTE PTR [ebp+0x14]
  004b1552: 53                                             push   ebx
  004b1553: 56                                             push   esi
  004b1554: 8b f1                                          mov    esi,ecx
  004b1556: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  004b1559: 8b c1                                          mov    eax,ecx
  004b155b: 2b c2                                          sub    eax,edx
  004b155d: 57                                             push   edi
  004b155e: 89 65 f0                                       mov    DWORD PTR [ebp-0x10],esp
  004b1561: 89 b5 74 ff ff ff                              mov    DWORD PTR [ebp-0x8c],esi
  004b1567: 79 0c                                          jns    0x4b1575
  004b1569: 33 ff                                          xor    edi,edi
  004b156b: 33 db                                          xor    ebx,ebx
  004b156d: 89 5d 88                                       mov    DWORD PTR [ebp-0x78],ebx
  004b1570: 89 7d a0                                       mov    DWORD PTR [ebp-0x60],edi
  004b1573: eb 23                                          jmp    0x4b1598
  004b1575: 8b d8                                          mov    ebx,eax
  004b1577: c1 fb 02                                       sar    ebx,0x2
  004b157a: 8b f8                                          mov    edi,eax
  004b157c: 81 e7 03 00 00 80                              and    edi,0x80000003
  004b1582: 89 5d 88                                       mov    DWORD PTR [ebp-0x78],ebx
  004b1585: 79 05                                          jns    0x4b158c
  004b1587: 4f                                             dec    edi
  004b1588: 83 cf fc                                       or     edi,0xfffffffc
  004b158b: 47                                             inc    edi
  004b158c: b8 04 00 00 00                                 mov    eax,0x4
  004b1591: 2b c7                                          sub    eax,edi
  004b1593: 89 45 a0                                       mov    DWORD PTR [ebp-0x60],eax
  004b1596: 33 ff                                          xor    edi,edi
  004b1598: 33 c0                                          xor    eax,eax
  004b159a: 66 8b 46 2c                                    mov    ax,WORD PTR [esi+0x2c]
  004b159e: 03 ca                                          add    ecx,edx
  004b15a0: 3b c8                                          cmp    ecx,eax
  004b15a2: 7c 09                                          jl     0x4b15ad
  004b15a4: 48                                             dec    eax
  004b15a5: c1 f8 02                                       sar    eax,0x2
  004b15a8: 89 45 8c                                       mov    DWORD PTR [ebp-0x74],eax
  004b15ab: eb 06                                          jmp    0x4b15b3
  004b15ad: c1 f9 02                                       sar    ecx,0x2
  004b15b0: 89 4d 8c                                       mov    DWORD PTR [ebp-0x74],ecx
  004b15b3: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004b15b6: 8b c1                                          mov    eax,ecx
  004b15b8: 2b c2                                          sub    eax,edx
  004b15ba: 79 05                                          jns    0x4b15c1
  004b15bc: 89 7d 14                                       mov    DWORD PTR [ebp+0x14],edi
  004b15bf: eb 06                                          jmp    0x4b15c7
  004b15c1: c1 f8 02                                       sar    eax,0x2
  004b15c4: 89 45 14                                       mov    DWORD PTR [ebp+0x14],eax
  004b15c7: 33 c0                                          xor    eax,eax
  004b15c9: 66 8b 46 2e                                    mov    ax,WORD PTR [esi+0x2e]
  004b15cd: 03 ca                                          add    ecx,edx
  004b15cf: 3b c8                                          cmp    ecx,eax
  004b15d1: 7c 1a                                          jl     0x4b15ed
  004b15d3: 48                                             dec    eax
  004b15d4: 8b c8                                          mov    ecx,eax
  004b15d6: c1 f9 02                                       sar    ecx,0x2
  004b15d9: 25 03 00 00 80                                 and    eax,0x80000003
  004b15de: 89 4d 94                                       mov    DWORD PTR [ebp-0x6c],ecx
  004b15e1: 79 05                                          jns    0x4b15e8
  004b15e3: 48                                             dec    eax
  004b15e4: 83 c8 fc                                       or     eax,0xfffffffc
  004b15e7: 40                                             inc    eax
  004b15e8: 89 45 9c                                       mov    DWORD PTR [ebp-0x64],eax
  004b15eb: eb 18                                          jmp    0x4b1605
  004b15ed: 8b c1                                          mov    eax,ecx
  004b15ef: c1 f8 02                                       sar    eax,0x2
  004b15f2: 81 e1 03 00 00 80                              and    ecx,0x80000003
  004b15f8: 89 45 94                                       mov    DWORD PTR [ebp-0x6c],eax
  004b15fb: 79 05                                          jns    0x4b1602
  004b15fd: 49                                             dec    ecx
  004b15fe: 83 c9 fc                                       or     ecx,0xfffffffc
  004b1601: 41                                             inc    ecx
  004b1602: 89 4d 9c                                       mov    DWORD PTR [ebp-0x64],ecx
  004b1605: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b1608: e8 f3 a0 fd ff                                 call   0x48b700
  004b160d: 89 85 70 ff ff ff                              mov    DWORD PTR [ebp-0x90],eax
  004b1613: 8d 45 b4                                       lea    eax,[ebp-0x4c]
  004b1616: 50                                             push   eax
  004b1617: c7 45 ac 8c e5 4d 00                           mov    DWORD PTR [ebp-0x54],0x4de58c
  004b161e: c7 45 b0 ff ff ff ff                           mov    DWORD PTR [ebp-0x50],0xffffffff
  004b1625: ff 15 dc e0 4d 00                              call   DWORD PTR ds:0x4de0dc
  004b162b: 89 7d d0                                       mov    DWORD PTR [ebp-0x30],edi
  004b162e: 89 7d d4                                       mov    DWORD PTR [ebp-0x2c],edi
  004b1631: 89 7d d8                                       mov    DWORD PTR [ebp-0x28],edi
  004b1634: 89 7d dc                                       mov    DWORD PTR [ebp-0x24],edi
  004b1637: c7 45 ac 6c e6 4d 00                           mov    DWORD PTR [ebp-0x54],0x4de66c
  004b163e: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004b1641: c6 45 e0 08                                    mov    BYTE PTR [ebp-0x20],0x8
  004b1645: 89 7d e4                                       mov    DWORD PTR [ebp-0x1c],edi
  004b1648: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b164b: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b164d: 57                                             push   edi
  004b164e: 68 38 4e 00 00                                 push   0x4e38
  004b1653: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  004b1656: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  004b1659: f7 d8                                          neg    eax
  004b165b: 1b c0                                          sbb    eax,eax
  004b165d: f7 d8                                          neg    eax
  004b165f: 89 45 80                                       mov    DWORD PTR [ebp-0x80],eax
  004b1662: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b1664: 8b ce                                          mov    ecx,esi
  004b1666: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004b1669: 8b d3                                          mov    edx,ebx
  004b166b: 8b 5d 18                                       mov    ebx,DWORD PTR [ebp+0x18]
  004b166e: 89 55 90                                       mov    DWORD PTR [ebp-0x70],edx
  004b1671: 8b 4d 8c                                       mov    ecx,DWORD PTR [ebp-0x74]
  004b1674: 8b c2                                          mov    eax,edx
  004b1676: 25 ff ff 00 00                                 and    eax,0xffff
  004b167b: 3b c1                                          cmp    eax,ecx
  004b167d: 0f 83 26 03 00 00                              jae    0x4b19a9
  004b1683: 33 c9                                          xor    ecx,ecx
  004b1685: 3b 45 88                                       cmp    eax,DWORD PTR [ebp-0x78]
  004b1688: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  004b168b: 0f 95 c1                                       setne  cl
  004b168e: 49                                             dec    ecx
  004b168f: 23 c8                                          and    ecx,eax
  004b1691: 8b 45 14                                       mov    eax,DWORD PTR [ebp+0x14]
  004b1694: 89 4d 84                                       mov    DWORD PTR [ebp-0x7c],ecx
  004b1697: 89 45 a8                                       mov    DWORD PTR [ebp-0x58],eax
  004b169a: 8b 4d 94                                       mov    ecx,DWORD PTR [ebp-0x6c]
  004b169d: 25 ff ff 00 00                                 and    eax,0xffff
  004b16a2: 3b c1                                          cmp    eax,ecx
  004b16a4: 0f 83 f6 02 00 00                              jae    0x4b19a0
  004b16aa: 8b 5d 14                                       mov    ebx,DWORD PTR [ebp+0x14]
  004b16ad: 33 c9                                          xor    ecx,ecx
  004b16af: 3b c3                                          cmp    eax,ebx
  004b16b1: 8b 5d 9c                                       mov    ebx,DWORD PTR [ebp-0x64]
  004b16b4: 0f 95 c1                                       setne  cl
  004b16b7: 49                                             dec    ecx
  004b16b8: 23 cb                                          and    ecx,ebx
  004b16ba: 8b 5e 24                                       mov    ebx,DWORD PTR [esi+0x24]
  004b16bd: 89 8d 6c ff ff ff                              mov    DWORD PTR [ebp-0x94],ecx
  004b16c3: 8b ca                                          mov    ecx,edx
  004b16c5: 81 e1 ff ff 00 00                              and    ecx,0xffff
  004b16cb: 8b 0c 8b                                       mov    ecx,DWORD PTR [ebx+ecx*4]
  004b16ce: 39 3c 81                                       cmp    DWORD PTR [ecx+eax*4],edi
  004b16d1: 0f 84 ba 02 00 00                              je     0x4b1991
  004b16d7: 8b 4d 84                                       mov    ecx,DWORD PTR [ebp-0x7c]
  004b16da: 89 4d 98                                       mov    DWORD PTR [ebp-0x68],ecx
  004b16dd: 8b d9                                          mov    ebx,ecx
  004b16df: 81 e3 ff ff 00 00                              and    ebx,0xffff
  004b16e5: b8 04 00 00 00                                 mov    eax,0x4
  004b16ea: 3b d8                                          cmp    ebx,eax
  004b16ec: 0f 8d 9f 02 00 00                              jge    0x4b1991
  004b16f2: 8b 85 6c ff ff ff                              mov    eax,DWORD PTR [ebp-0x94]
  004b16f8: 89 45 a4                                       mov    DWORD PTR [ebp-0x5c],eax
  004b16fb: 8b d8                                          mov    ebx,eax
  004b16fd: 81 e3 ff ff 00 00                              and    ebx,0xffff
  004b1703: bf 04 00 00 00                                 mov    edi,0x4
  004b1708: 3b df                                          cmp    ebx,edi
  004b170a: 0f 8d 76 02 00 00                              jge    0x4b1986
  004b1710: 50                                             push   eax
  004b1711: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004b1714: 51                                             push   ecx
  004b1715: 8b 4d a8                                       mov    ecx,DWORD PTR [ebp-0x58]
  004b1718: 81 e2 ff ff 00 00                              and    edx,0xffff
  004b171e: 8b 14 90                                       mov    edx,DWORD PTR [eax+edx*4]
  004b1721: 81 e1 ff ff 00 00                              and    ecx,0xffff
  004b1727: 8b 0c 8a                                       mov    ecx,DWORD PTR [edx+ecx*4]
  004b172a: e8 d1 f1 f5 ff                                 call   0x410900
  004b172f: 8b f0                                          mov    esi,eax
  004b1731: 85 f6                                          test   esi,esi
  004b1733: 89 b5 7c ff ff ff                              mov    DWORD PTR [ebp-0x84],esi
  004b1739: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  004b173d: 0f 84 05 02 00 00                              je     0x4b1948
  004b1743: 8b ce                                          mov    ecx,esi
  004b1745: e8 26 9f fd ff                                 call   0x48b670
  004b174a: 3c 03                                          cmp    al,0x3
  004b174c: 0f 84 f6 01 00 00                              je     0x4b1948
  004b1752: 8b ce                                          mov    ecx,esi
  004b1754: e8 17 9f fd ff                                 call   0x48b670
  004b1759: 3c 04                                          cmp    al,0x4
  004b175b: 0f 84 e7 01 00 00                              je     0x4b1948
  004b1761: 8b ce                                          mov    ecx,esi
  004b1763: e8 98 9f fd ff                                 call   0x48b700
  004b1768: 3b 85 70 ff ff ff                              cmp    eax,DWORD PTR [ebp-0x90]
  004b176e: 0f 84 d4 01 00 00                              je     0x4b1948
  004b1774: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b1777: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004b1779: ff 90 14 01 00 00                              call   DWORD PTR [eax+0x114]
  004b177f: 3b c6                                          cmp    eax,esi
  004b1781: 0f 84 c1 01 00 00                              je     0x4b1948
  004b1787: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b1789: 8b ce                                          mov    ecx,esi
  004b178b: ff 92 a0 00 00 00                              call   DWORD PTR [edx+0xa0]
  004b1791: 8b ce                                          mov    ecx,esi
  004b1793: 89 45 10                                       mov    DWORD PTR [ebp+0x10],eax
  004b1796: e8 65 9f fd ff                                 call   0x48b700
  004b179b: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b179e: 89 85 68 ff ff ff                              mov    DWORD PTR [ebp-0x98],eax
  004b17a4: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004b17a6: ff 90 a0 00 00 00                              call   DWORD PTR [eax+0xa0]
  004b17ac: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b17af: 33 db                                          xor    ebx,ebx
  004b17b1: 8b f8                                          mov    edi,eax
  004b17b3: e8 b8 9e fd ff                                 call   0x48b670
  004b17b8: 3c 02                                          cmp    al,0x2
  004b17ba: 75 40                                          jne    0x4b17fc
  004b17bc: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b17bf: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b17c1: 8d 85 78 ff ff ff                              lea    eax,[ebp-0x88]
  004b17c7: 50                                             push   eax
  004b17c8: 53                                             push   ebx
  004b17c9: 53                                             push   ebx
  004b17ca: 53                                             push   ebx
  004b17cb: 53                                             push   ebx
  004b17cc: 6a 14                                          push   0x14
  004b17ce: ff 52 24                                       call   DWORD PTR [edx+0x24]
  004b17d1: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b17d3: 53                                             push   ebx
  004b17d4: 68 37 4e 00 00                                 push   0x4e37
  004b17d9: 8b ce                                          mov    ecx,esi
  004b17db: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  004b17de: 50                                             push   eax
  004b17df: 8b 85 78 ff ff ff                              mov    eax,DWORD PTR [ebp-0x88]
  004b17e5: 8b 88 c0 00 00 00                              mov    ecx,DWORD PTR [eax+0xc0]
  004b17eb: 51                                             push   ecx
  004b17ec: e8 6f 79 fa ff                                 call   0x459160
  004b17f1: 83 c4 08                                       add    esp,0x8
  004b17f4: 85 c0                                          test   eax,eax
  004b17f6: 0f 8c 4c 01 00 00                              jl     0x4b1948
  004b17fc: 66 3b 7d 10                                    cmp    di,WORD PTR [ebp+0x10]
  004b1800: 75 09                                          jne    0x4b180b
  004b1802: 66 85 ff                                       test   di,di
  004b1805: 0f 85 3d 01 00 00                              jne    0x4b1948
  004b180b: e8 00 94 f7 ff                                 call   0x42ac10
  004b1810: 66 3b f8                                       cmp    di,ax
  004b1813: 73 38                                          jae    0x4b184d
  004b1815: e8 f6 93 f7 ff                                 call   0x42ac10
  004b181a: 66 39 45 10                                    cmp    WORD PTR [ebp+0x10],ax
  004b181e: 73 2d                                          jae    0x4b184d
  004b1820: 8b 95 68 ff ff ff                              mov    edx,DWORD PTR [ebp-0x98]
  004b1826: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004b1829: 52                                             push   edx
  004b182a: 8b 15 9c 43 51 00                              mov    edx,DWORD PTR ds:0x51439c
  004b1830: 81 e7 ff ff 00 00                              and    edi,0xffff
  004b1836: 50                                             push   eax
  004b1837: 8b c7                                          mov    eax,edi
  004b1839: 8d 0c c5 00 00 00 00                           lea    ecx,[eax*8+0x0]
  004b1840: 2b c8                                          sub    ecx,eax
  004b1842: 8d 0c ca                                       lea    ecx,[edx+ecx*8]
  004b1845: e8 16 93 f7 ff                                 call   0x42ab60
  004b184a: 0f be d8                                       movsx  ebx,al
  004b184d: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b1850: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004b1852: ff 90 98 00 00 00                              call   DWORD PTR [eax+0x98]
  004b1858: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b185a: 0f be c8                                       movsx  ecx,al
  004b185d: 6a 00                                          push   0x0
  004b185f: 03 d9                                          add    ebx,ecx
  004b1861: 68 52 4e 00 00                                 push   0x4e52
  004b1866: 8b ce                                          mov    ecx,esi
  004b1868: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  004b186b: 85 c0                                          test   eax,eax
  004b186d: 75 12                                          jne    0x4b1881
  004b186f: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b1871: 6a 00                                          push   0x0
  004b1873: 68 53 4e 00 00                                 push   0x4e53
  004b1878: 8b ce                                          mov    ecx,esi
  004b187a: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  004b187d: 85 c0                                          test   eax,eax
  004b187f: 74 28                                          je     0x4b18a9
  004b1881: 8b c3                                          mov    eax,ebx
  004b1883: 99                                             cdq
  004b1884: 33 c2                                          xor    eax,edx
  004b1886: 2b c2                                          sub    eax,edx
  004b1888: 8b c8                                          mov    ecx,eax
  004b188a: f7 d9                                          neg    ecx
  004b188c: c1 e1 02                                       shl    ecx,0x2
  004b188f: 2b c8                                          sub    ecx,eax
  004b1891: 8d 0c 89                                       lea    ecx,[ecx+ecx*4]
  004b1894: d1 e1                                          shl    ecx,1
  004b1896: b8 1f 85 eb 51                                 mov    eax,0x51eb851f
  004b189b: f7 e9                                          imul   ecx
  004b189d: c1 fa 05                                       sar    edx,0x5
  004b18a0: 8b ca                                          mov    ecx,edx
  004b18a2: c1 e9 1f                                       shr    ecx,0x1f
  004b18a5: 03 d1                                          add    edx,ecx
  004b18a7: 03 da                                          add    ebx,edx
  004b18a9: 6a 64                                          push   0x64
  004b18ab: 6a 01                                          push   0x1
  004b18ad: b9 34 5e 51 00                                 mov    ecx,0x515e34
  004b18b2: e8 e9 77 fa ff                                 call   0x4590a0
  004b18b7: 3b c3                                          cmp    eax,ebx
  004b18b9: 7c 0b                                          jl     0x4b18c6
  004b18bb: 8b 45 80                                       mov    eax,DWORD PTR [ebp-0x80]
  004b18be: 85 c0                                          test   eax,eax
  004b18c0: 0f 84 82 00 00 00                              je     0x4b1948
  004b18c6: 8b 16                                          mov    edx,DWORD PTR [esi]
  004b18c8: 8b ce                                          mov    ecx,esi
  004b18ca: ff 92 c8 01 00 00                              call   DWORD PTR [edx+0x1c8]
  004b18d0: 8b 45 d4                                       mov    eax,DWORD PTR [ebp-0x2c]
  004b18d3: 8b 55 e4                                       mov    edx,DWORD PTR [ebp-0x1c]
  004b18d6: 33 ff                                          xor    edi,edi
  004b18d8: 42                                             inc    edx
  004b18d9: 3b c7                                          cmp    eax,edi
  004b18db: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b18de: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004b18e1: c6 45 e0 08                                    mov    BYTE PTR [ebp-0x20],0x8
  004b18e5: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  004b18e8: 89 55 e4                                       mov    DWORD PTR [ebp-0x1c],edx
  004b18eb: 6a 0c                                          push   0xc
  004b18ed: 75 28                                          jne    0x4b1917
  004b18ef: e8 fc 06 f9 ff                                 call   0x441ff0
  004b18f4: 83 c4 04                                       add    esp,0x4
  004b18f7: 3b c7                                          cmp    eax,edi
  004b18f9: 74 07                                          je     0x4b1902
  004b18fb: 89 38                                          mov    DWORD PTR [eax],edi
  004b18fd: 89 78 04                                       mov    DWORD PTR [eax+0x4],edi
  004b1900: eb 02                                          jmp    0x4b1904
  004b1902: 33 c0                                          xor    eax,eax
  004b1904: 89 45 d4                                       mov    DWORD PTR [ebp-0x2c],eax
  004b1907: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b190a: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  004b190d: 89 38                                          mov    DWORD PTR [eax],edi
  004b190f: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1912: 89 78 04                                       mov    DWORD PTR [eax+0x4],edi
  004b1915: eb 2b                                          jmp    0x4b1942
  004b1917: e8 d4 06 f9 ff                                 call   0x441ff0
  004b191c: 83 c4 04                                       add    esp,0x4
  004b191f: 3b c7                                          cmp    eax,edi
  004b1921: 74 07                                          je     0x4b192a
  004b1923: 89 38                                          mov    DWORD PTR [eax],edi
  004b1925: 89 78 04                                       mov    DWORD PTR [eax+0x4],edi
  004b1928: eb 02                                          jmp    0x4b192c
  004b192a: 33 c0                                          xor    eax,eax
  004b192c: 8b 4d cc                                       mov    ecx,DWORD PTR [ebp-0x34]
  004b192f: 89 01                                          mov    DWORD PTR [ecx],eax
  004b1931: 8b 55 d8                                       mov    edx,DWORD PTR [ebp-0x28]
  004b1934: 89 45 d4                                       mov    DWORD PTR [ebp-0x2c],eax
  004b1937: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b193a: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  004b193d: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1940: 89 38                                          mov    DWORD PTR [eax],edi
  004b1942: 8b 4d cc                                       mov    ecx,DWORD PTR [ebp-0x34]
  004b1945: 89 71 08                                       mov    DWORD PTR [ecx+0x8],esi
  004b1948: 8b 45 a4                                       mov    eax,DWORD PTR [ebp-0x5c]
  004b194b: 8b b5 74 ff ff ff                              mov    esi,DWORD PTR [ebp-0x8c]
  004b1951: 8b 55 90                                       mov    edx,DWORD PTR [ebp-0x70]
  004b1954: 8b 4d 98                                       mov    ecx,DWORD PTR [ebp-0x68]
  004b1957: 40                                             inc    eax
  004b1958: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b195f: 89 45 a4                                       mov    DWORD PTR [ebp-0x5c],eax
  004b1962: e9 94 fd ff ff                                 jmp    0x4b16fb
  004b1986: 41                                             inc    ecx
  004b1987: 89 4d 98                                       mov    DWORD PTR [ebp-0x68],ecx
  004b198a: 33 ff                                          xor    edi,edi
  004b198c: e9 4c fd ff ff                                 jmp    0x4b16dd
  004b1991: 8b 45 a8                                       mov    eax,DWORD PTR [ebp-0x58]
  004b1994: 8b 5d 18                                       mov    ebx,DWORD PTR [ebp+0x18]
  004b1997: 40                                             inc    eax
  004b1998: 89 45 a8                                       mov    DWORD PTR [ebp-0x58],eax
  004b199b: e9 fa fc ff ff                                 jmp    0x4b169a
  004b19a0: 42                                             inc    edx
  004b19a1: 89 55 90                                       mov    DWORD PTR [ebp-0x70],edx
  004b19a4: e9 c8 fc ff ff                                 jmp    0x4b1671
  004b19a9: 8b 06                                          mov    eax,DWORD PTR [esi]
  004b19ab: 8b ce                                          mov    ecx,esi
  004b19ad: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004b19b0: 8b 45 d0                                       mov    eax,DWORD PTR [ebp-0x30]
  004b19b3: 33 c9                                          xor    ecx,ecx
  004b19b5: 89 7d 14                                       mov    DWORD PTR [ebp+0x14],edi
  004b19b8: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b19bb: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  004b19be: c6 45 e0 08                                    mov    BYTE PTR [ebp-0x20],0x8
  004b19c2: 83 ce ff                                       or     esi,0xffffffff
  004b19c5: 3b cf                                          cmp    ecx,edi
  004b19c7: 74 07                                          je     0x4b19d0
  004b19c9: 8b 00                                          mov    eax,DWORD PTR [eax]
  004b19cb: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b19ce: eb 08                                          jmp    0x4b19d8
  004b19d0: b9 01 00 00 00                                 mov    ecx,0x1
  004b19d5: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  004b19d8: 3b c7                                          cmp    eax,edi
  004b19da: 0f 84 fe 00 00 00                              je     0x4b1ade
  004b19e0: 8b 48 08                                       mov    ecx,DWORD PTR [eax+0x8]
  004b19e3: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b19e5: 8d 45 08                                       lea    eax,[ebp+0x8]
  004b19e8: 50                                             push   eax
  004b19e9: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  004b19ec: 8b d0                                          mov    edx,eax
  004b19ee: 8b 02                                          mov    eax,DWORD PTR [edx]
  004b19f0: 8b 4a 04                                       mov    ecx,DWORD PTR [edx+0x4]
  004b19f3: 0f af c0                                       imul   eax,eax
  004b19f6: 8b 52 08                                       mov    edx,DWORD PTR [edx+0x8]
  004b19f9: 0f af c9                                       imul   ecx,ecx
  004b19fc: 03 c1                                          add    eax,ecx
  004b19fe: 3b c6                                          cmp    eax,esi
  004b1a00: 89 95 64 ff ff ff                              mov    DWORD PTR [ebp-0x9c],edx
  004b1a06: 73 0b                                          jae    0x4b1a13
  004b1a08: 8b f0                                          mov    esi,eax
  004b1a0a: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1a0d: 8b 48 08                                       mov    ecx,DWORD PTR [eax+0x8]
  004b1a10: 89 4d 14                                       mov    DWORD PTR [ebp+0x14],ecx
  004b1a13: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  004b1a16: 8b 4a 08                                       mov    ecx,DWORD PTR [edx+0x8]
  004b1a19: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004b1a1b: ff 90 c4 01 00 00                              call   DWORD PTR [eax+0x1c4]
  004b1a21: 84 c0                                          test   al,al
  004b1a23: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1a26: 74 0b                                          je     0x4b1a33
  004b1a28: 8b 4d 14                                       mov    ecx,DWORD PTR [ebp+0x14]
  004b1a2b: 3b 48 08                                       cmp    ecx,DWORD PTR [eax+0x8]
  004b1a2e: 75 03                                          jne    0x4b1a33
  004b1a30: 89 7d 14                                       mov    DWORD PTR [ebp+0x14],edi
  004b1a33: 8b 55 e4                                       mov    edx,DWORD PTR [ebp-0x1c]
  004b1a36: 8b 4d d0                                       mov    ecx,DWORD PTR [ebp-0x30]
  004b1a39: 4a                                             dec    edx
  004b1a3a: 89 55 e4                                       mov    DWORD PTR [ebp-0x1c],edx
  004b1a3d: 8b 55 d4                                       mov    edx,DWORD PTR [ebp-0x2c]
  004b1a40: 3b c2                                          cmp    eax,edx
  004b1a42: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  004b1a45: 74 38                                          je     0x4b1a7f
  004b1a47: 3b c1                                          cmp    eax,ecx
  004b1a49: 74 54                                          je     0x4b1a9f
  004b1a4b: 8b 10                                          mov    edx,DWORD PTR [eax]
  004b1a4d: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  004b1a50: 89 42 04                                       mov    DWORD PTR [edx+0x4],eax
  004b1a53: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1a56: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b1a59: 8b 10                                          mov    edx,DWORD PTR [eax]
  004b1a5b: 89 11                                          mov    DWORD PTR [ecx],edx
  004b1a5d: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b1a60: 83 f8 01                                       cmp    eax,0x1
  004b1a63: 75 0b                                          jne    0x4b1a70
  004b1a65: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1a68: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b1a6b: 89 4d cc                                       mov    DWORD PTR [ebp-0x34],ecx
  004b1a6e: eb 57                                          jmp    0x4b1ac7
  004b1a70: 83 f8 02                                       cmp    eax,0x2
  004b1a73: 75 52                                          jne    0x4b1ac7
  004b1a75: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  004b1a78: 8b 02                                          mov    eax,DWORD PTR [edx]
  004b1a7a: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b1a7d: eb 48                                          jmp    0x4b1ac7
  004b1a7f: 3b c1                                          cmp    eax,ecx
  004b1a81: 74 1c                                          je     0x4b1a9f
  004b1a83: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b1a86: 89 39                                          mov    DWORD PTR [ecx],edi
  004b1a88: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1a8b: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004b1a8e: 89 55 d4                                       mov    DWORD PTR [ebp-0x2c],edx
  004b1a91: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  004b1a94: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b1a97: 83 7d ec 02                                    cmp    DWORD PTR [ebp-0x14],0x2
  004b1a9b: 75 2a                                          jne    0x4b1ac7
  004b1a9d: eb 25                                          jmp    0x4b1ac4
  004b1a9f: 3b c2                                          cmp    eax,edx
  004b1aa1: 74 18                                          je     0x4b1abb
  004b1aa3: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004b1aa5: 89 79 04                                       mov    DWORD PTR [ecx+0x4],edi
  004b1aa8: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  004b1aab: 8b 02                                          mov    eax,DWORD PTR [edx]
  004b1aad: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b1ab0: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  004b1ab3: 83 7d ec 01                                    cmp    DWORD PTR [ebp-0x14],0x1
  004b1ab7: 75 0e                                          jne    0x4b1ac7
  004b1ab9: eb 09                                          jmp    0x4b1ac4
  004b1abb: 89 7d cc                                       mov    DWORD PTR [ebp-0x34],edi
  004b1abe: 89 7d d0                                       mov    DWORD PTR [ebp-0x30],edi
  004b1ac1: 89 7d d4                                       mov    DWORD PTR [ebp-0x2c],edi
  004b1ac4: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004b1ac7: 8b 45 d8                                       mov    eax,DWORD PTR [ebp-0x28]
  004b1aca: 50                                             push   eax
  004b1acb: e8 90 05 f9 ff                                 call   0x442060
  004b1ad0: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1ad3: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  004b1ad6: 83 c4 04                                       add    esp,0x4
  004b1ad9: e9 e7 fe ff ff                                 jmp    0x4b19c5
  004b1ade: 3b cf                                          cmp    ecx,edi
  004b1ae0: 74 04                                          je     0x4b1ae6
  004b1ae2: c6 45 e0 07                                    mov    BYTE PTR [ebp-0x20],0x7
  004b1ae6: 39 7d 14                                       cmp    DWORD PTR [ebp+0x14],edi
  004b1ae9: 8b 13                                          mov    edx,DWORD PTR [ebx]
  004b1aeb: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004b1aee: 74 1a                                          je     0x4b1b0a
  004b1af0: 6a 01                                          push   0x1
  004b1af2: 8b cb                                          mov    ecx,ebx
  004b1af4: ff 92 80 00 00 00                              call   DWORD PTR [edx+0x80]
  004b1afa: 8b 4d 14                                       mov    ecx,DWORD PTR [ebp+0x14]
  004b1afd: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004b1aff: 51                                             push   ecx
  004b1b00: 8b cb                                          mov    ecx,ebx
  004b1b02: ff 90 ac 00 00 00                              call   DWORD PTR [eax+0xac]
  004b1b08: eb 1d                                          jmp    0x4b1b27
  004b1b0a: 6a 03                                          push   0x3
  004b1b0c: 8b cb                                          mov    ecx,ebx
  004b1b0e: ff 92 80 00 00 00                              call   DWORD PTR [edx+0x80]
  004b1b14: 8b 33                                          mov    esi,DWORD PTR [ebx]
  004b1b16: 8b cb                                          mov    ecx,ebx
  004b1b18: ff 96 14 01 00 00                              call   DWORD PTR [esi+0x114]
  004b1b1e: 50                                             push   eax
  004b1b1f: 8b cb                                          mov    ecx,ebx
  004b1b21: ff 96 ac 00 00 00                              call   DWORD PTR [esi+0xac]
  004b1b27: 8b 55 d0                                       mov    edx,DWORD PTR [ebp-0x30]
  004b1b2a: 8b c2                                          mov    eax,edx
  004b1b2c: 33 c9                                          xor    ecx,ecx
  004b1b2e: c7 45 ac 6c e6 4d 00                           mov    DWORD PTR [ebp-0x54],0x4de66c
  004b1b35: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b1b38: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  004b1b3b: c6 45 e0 08                                    mov    BYTE PTR [ebp-0x20],0x8
  004b1b3f: be 02 00 00 00                                 mov    esi,0x2
  004b1b44: 3b cf                                          cmp    ecx,edi
  004b1b46: 74 07                                          je     0x4b1b4f
  004b1b48: 8b 00                                          mov    eax,DWORD PTR [eax]
  004b1b4a: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b1b4d: eb 08                                          jmp    0x4b1b57
  004b1b4f: b9 01 00 00 00                                 mov    ecx,0x1
  004b1b54: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  004b1b57: 3b c7                                          cmp    eax,edi
  004b1b59: 0f 84 a5 00 00 00                              je     0x4b1c04
  004b1b5f: ff 4d e4                                       dec    DWORD PTR [ebp-0x1c]
  004b1b62: 8b 4d d4                                       mov    ecx,DWORD PTR [ebp-0x2c]
  004b1b65: 3b c1                                          cmp    eax,ecx
  004b1b67: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  004b1b6a: 74 37                                          je     0x4b1ba3
  004b1b6c: 3b c2                                          cmp    eax,edx
  004b1b6e: 74 52                                          je     0x4b1bc2
  004b1b70: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004b1b72: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004b1b75: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b1b78: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1b7b: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b1b7e: 8b 10                                          mov    edx,DWORD PTR [eax]
  004b1b80: 89 11                                          mov    DWORD PTR [ecx],edx
  004b1b82: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b1b85: 83 f8 01                                       cmp    eax,0x1
  004b1b88: 75 0b                                          jne    0x4b1b95
  004b1b8a: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1b8d: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b1b90: 89 4d cc                                       mov    DWORD PTR [ebp-0x34],ecx
  004b1b93: eb 55                                          jmp    0x4b1bea
  004b1b95: 3b c6                                          cmp    eax,esi
  004b1b97: 75 51                                          jne    0x4b1bea
  004b1b99: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  004b1b9c: 8b 02                                          mov    eax,DWORD PTR [edx]
  004b1b9e: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b1ba1: eb 47                                          jmp    0x4b1bea
  004b1ba3: 3b c2                                          cmp    eax,edx
  004b1ba5: 74 1b                                          je     0x4b1bc2
  004b1ba7: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  004b1baa: 89 39                                          mov    DWORD PTR [ecx],edi
  004b1bac: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1baf: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  004b1bb2: 89 55 d4                                       mov    DWORD PTR [ebp-0x2c],edx
  004b1bb5: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  004b1bb8: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b1bbb: 39 75 ec                                       cmp    DWORD PTR [ebp-0x14],esi
  004b1bbe: 75 2a                                          jne    0x4b1bea
  004b1bc0: eb 25                                          jmp    0x4b1be7
  004b1bc2: 3b c1                                          cmp    eax,ecx
  004b1bc4: 74 18                                          je     0x4b1bde
  004b1bc6: 8b 08                                          mov    ecx,DWORD PTR [eax]
  004b1bc8: 89 79 04                                       mov    DWORD PTR [ecx+0x4],edi
  004b1bcb: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  004b1bce: 8b 02                                          mov    eax,DWORD PTR [edx]
  004b1bd0: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004b1bd3: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  004b1bd6: 83 7d ec 01                                    cmp    DWORD PTR [ebp-0x14],0x1
  004b1bda: 75 0e                                          jne    0x4b1bea
  004b1bdc: eb 09                                          jmp    0x4b1be7
  004b1bde: 89 7d cc                                       mov    DWORD PTR [ebp-0x34],edi
  004b1be1: 89 7d d0                                       mov    DWORD PTR [ebp-0x30],edi
  004b1be4: 89 7d d4                                       mov    DWORD PTR [ebp-0x2c],edi
  004b1be7: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004b1bea: 8b 45 d8                                       mov    eax,DWORD PTR [ebp-0x28]
  004b1bed: 50                                             push   eax
  004b1bee: e8 6d 04 f9 ff                                 call   0x442060
  004b1bf3: 8b 55 d0                                       mov    edx,DWORD PTR [ebp-0x30]
  004b1bf6: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  004b1bf9: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  004b1bfc: 83 c4 04                                       add    esp,0x4
  004b1bff: e9 40 ff ff ff                                 jmp    0x4b1b44
  004b1c04: 3b cf                                          cmp    ecx,edi
  004b1c06: 74 04                                          je     0x4b1c0c
  004b1c08: c6 45 e0 07                                    mov    BYTE PTR [ebp-0x20],0x7
  004b1c0c: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  004b1c0f: 51                                             push   ecx
  004b1c10: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004b1c13: c7 45 ac 8c e5 4d 00                           mov    DWORD PTR [ebp-0x54],0x4de58c
  004b1c1a: ff 15 e0 e0 4d 00                              call   DWORD PTR ds:0x4de0e0
  004b1c20: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b1c23: 8b 45 14                                       mov    eax,DWORD PTR [ebp+0x14]
  004b1c26: 5f                                             pop    edi
  004b1c27: 5e                                             pop    esi
  004b1c28: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004b1c2f: 5b                                             pop    ebx
  004b1c30: 8b e5                                          mov    esp,ebp
  004b1c32: 5d                                             pop    ebp
  004b1c33: c2 14 00                                       ret    0x14
