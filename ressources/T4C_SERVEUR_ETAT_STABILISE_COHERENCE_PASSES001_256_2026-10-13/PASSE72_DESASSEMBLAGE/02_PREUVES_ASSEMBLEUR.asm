; Passe 72 — PAQUETS_ET_SERIALISATION
; PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions atteignables statiquement depuis les entrées définies, vérifiées octet par octet.
; NOP/INT3 exclues du comptage, zones data non traversées; branches indirectes non résolues.

; [00485DF0] TFCPacket::??0TFCPacket ; instruction=49 ; plage_limite=00485E80 ; issues=0
  00485df0: 55                                             push   ebp
  00485df1: 8b ec                                          mov    ebp,esp
  00485df3: 6a ff                                          push   0xffffffff
  00485df5: 68 0b a3 4d 00                                 push   0x4da30b
  00485dfa: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00485e00: 50                                             push   eax
  00485e01: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00485e08: 83 ec 10                                       sub    esp,0x10
  00485e0b: 8a 45 f3                                       mov    al,BYTE PTR [ebp-0xd]
  00485e0e: 53                                             push   ebx
  00485e0f: 56                                             push   esi
  00485e10: 57                                             push   edi
  00485e11: 8b f9                                          mov    edi,ecx
  00485e13: 8d 77 04                                       lea    esi,[edi+0x4]
  00485e16: 33 db                                          xor    ebx,ebx
  00485e18: 89 7d e8                                       mov    DWORD PTR [ebp-0x18],edi
  00485e1b: 88 06                                          mov    BYTE PTR [esi],al
  00485e1d: 89 5e 04                                       mov    DWORD PTR [esi+0x4],ebx
  00485e20: 89 5e 08                                       mov    DWORD PTR [esi+0x8],ebx
  00485e23: 89 5e 0c                                       mov    DWORD PTR [esi+0xc],ebx
  00485e26: 6a 40                                          push   0x40
  00485e28: 8b ce                                          mov    ecx,esi
  00485e2a: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00485e2d: c7 07 20 f5 4d 00                              mov    DWORD PTR [edi],0x4df520
  00485e33: e8 b8 0c 00 00                                 call   0x486af0
  00485e38: c7 45 ec 04 00 00 00                           mov    DWORD PTR [ebp-0x14],0x4
  00485e3f: 8d 4d f3                                       lea    ecx,[ebp-0xd]
  00485e42: 51                                             push   ecx
  00485e43: 51                                             push   ecx
  00485e44: 54                                             push   esp
  00485e45: 8b ce                                          mov    ecx,esi
  00485e47: 88 5d f3                                       mov    BYTE PTR [ebp-0xd],bl
  00485e4a: e8 e1 0d 00 00                                 call   0x486c30
  00485e4f: 8d 55 e4                                       lea    edx,[ebp-0x1c]
  00485e52: 52                                             push   edx
  00485e53: 8b ce                                          mov    ecx,esi
  00485e55: e8 46 0e 00 00                                 call   0x486ca0
  00485e5a: ff 4d ec                                       dec    DWORD PTR [ebp-0x14]
  00485e5d: 75 e0                                          jne    0x485e3f
  00485e5f: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00485e62: 89 5f 14                                       mov    DWORD PTR [edi+0x14],ebx
  00485e65: 8b c7                                          mov    eax,edi
  00485e67: 5f                                             pop    edi
  00485e68: 5e                                             pop    esi
  00485e69: 5b                                             pop    ebx
  00485e6a: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00485e71: 8b e5                                          mov    esp,ebp
  00485e73: 5d                                             pop    ebp
  00485e74: c3                                             ret

; [00485E80] TFCPacket::??1TFCPacket ; instruction=20 ; plage_limite=00485EC0 ; issues=0
  00485e80: 55                                             push   ebp
  00485e81: 8b ec                                          mov    ebp,esp
  00485e83: 51                                             push   ecx
  00485e84: 56                                             push   esi
  00485e85: 8b f1                                          mov    esi,ecx
  00485e87: c7 06 20 f5 4d 00                              mov    DWORD PTR [esi],0x4df520
  00485e8d: 8b 46 08                                       mov    eax,DWORD PTR [esi+0x8]
  00485e90: 85 c0                                          test   eax,eax
  00485e92: 74 0c                                          je     0x485ea0
  00485e94: 50                                             push   eax
  00485e95: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  00485e98: e8 c3 c1 fb ff                                 call   0x442060
  00485e9d: 83 c4 04                                       add    esp,0x4
  00485ea0: c7 46 08 00 00 00 00                           mov    DWORD PTR [esi+0x8],0x0
  00485ea7: c7 46 0c 00 00 00 00                           mov    DWORD PTR [esi+0xc],0x0
  00485eae: c7 46 10 00 00 00 00                           mov    DWORD PTR [esi+0x10],0x0
  00485eb5: 5e                                             pop    esi
  00485eb6: 8b e5                                          mov    esp,ebp
  00485eb8: 5d                                             pop    ebp
  00485eb9: c3                                             ret

; [00485EC0] TFCPacket::?Destroy@TFCPacket ; instruction=31 ; plage_limite=00485F10 ; issues=0
  00485ec0: 55                                             push   ebp
  00485ec1: 8b ec                                          mov    ebp,esp
  00485ec3: 83 ec 08                                       sub    esp,0x8
  00485ec6: 56                                             push   esi
  00485ec7: 57                                             push   edi
  00485ec8: 8b f1                                          mov    esi,ecx
  00485eca: 51                                             push   ecx
  00485ecb: 8b 4e 0c                                       mov    ecx,DWORD PTR [esi+0xc]
  00485ece: 8b c4                                          mov    eax,esp
  00485ed0: 51                                             push   ecx
  00485ed1: 8b d4                                          mov    edx,esp
  00485ed3: 6a 04                                          push   0x4
  00485ed5: 89 08                                          mov    DWORD PTR [eax],ecx
  00485ed7: 52                                             push   edx
  00485ed8: 8d 45 fc                                       lea    eax,[ebp-0x4]
  00485edb: 8d 7e 04                                       lea    edi,[esi+0x4]
  00485ede: 50                                             push   eax
  00485edf: 8b cf                                          mov    ecx,edi
  00485ee1: e8 3a 0d 00 00                                 call   0x486c20
  00485ee6: 8b c8                                          mov    ecx,eax
  00485ee8: e8 93 0d 00 00                                 call   0x486c80
  00485eed: 8d 4d f8                                       lea    ecx,[ebp-0x8]
  00485ef0: 51                                             push   ecx
  00485ef1: 8b cf                                          mov    ecx,edi
  00485ef3: e8 48 0d 00 00                                 call   0x486c40
  00485ef8: 5f                                             pop    edi
  00485ef9: c7 46 14 00 00 00 00                           mov    DWORD PTR [esi+0x14],0x0
  00485f00: 5e                                             pop    esi
  00485f01: 8b e5                                          mov    esp,ebp
  00485f03: 5d                                             pop    ebp
  00485f04: c3                                             ret

; [00485F10] TFCPacket::?Seek@TFCPacket ; instruction=17 ; plage_limite=00485F40 ; issues=0
  00485f10: 55                                             push   ebp
  00485f11: 8b ec                                          mov    ebp,esp
  00485f13: 0f be 45 0c                                    movsx  eax,BYTE PTR [ebp+0xc]
  00485f17: 83 e8 00                                       sub    eax,0x0
  00485f1a: 74 12                                          je     0x485f2e
  00485f1c: 48                                             dec    eax
  00485f1d: 75 15                                          jne    0x485f34
  00485f1f: 8b 51 14                                       mov    edx,DWORD PTR [ecx+0x14]
  00485f22: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00485f25: 03 d0                                          add    edx,eax
  00485f27: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  00485f2a: 5d                                             pop    ebp
  00485f2b: c2 08 00                                       ret    0x8
  00485f2e: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  00485f31: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  00485f34: 5d                                             pop    ebp
  00485f35: c2 08 00                                       ret    0x8

; [00485F40] TFCPacket::?EncryptPacket@TFCPacket ; instruction=98 ; plage_limite=00486050 ; issues=0
  00485f40: 55                                             push   ebp
  00485f41: 8b ec                                          mov    ebp,esp
  00485f43: 6a ff                                          push   0xffffffff
  00485f45: 68 30 a3 4d 00                                 push   0x4da330
  00485f4a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00485f50: 50                                             push   eax
  00485f51: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00485f58: 83 ec 24                                       sub    esp,0x24
  00485f5b: 53                                             push   ebx
  00485f5c: 56                                             push   esi
  00485f5d: 57                                             push   edi
  00485f5e: 33 db                                          xor    ebx,ebx
  00485f60: 53                                             push   ebx
  00485f61: 8b f1                                          mov    esi,ecx
  00485f63: ff 15 78 e3 4d 00                              call   DWORD PTR ds:0x4de378
  00485f69: 83 c4 04                                       add    esp,0x4
  00485f6c: 50                                             push   eax
  00485f6d: 68 00 02 00 00                                 push   0x200
  00485f72: 53                                             push   ebx
  00485f73: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  00485f76: e8 65 23 fb ff                                 call   0x4382e0
  00485f7b: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  00485f7e: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00485f81: e8 0a 24 fb ff                                 call   0x438390
  00485f86: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  00485f89: 25 ff ff 00 00                                 and    eax,0xffff
  00485f8e: 50                                             push   eax
  00485f8f: 68 ff 00 00 00                                 push   0xff
  00485f94: 53                                             push   ebx
  00485f95: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  00485f98: e8 43 23 fb ff                                 call   0x4382e0
  00485f9d: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00485fa1: 33 c0                                          xor    eax,eax
  00485fa3: 8a 54 05 f0                                    mov    dl,BYTE PTR [ebp+eax*1-0x10]
  00485fa7: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  00485faa: 88 14 01                                       mov    BYTE PTR [ecx+eax*1],dl
  00485fad: 40                                             inc    eax
  00485fae: 83 f8 02                                       cmp    eax,0x2
  00485fb1: 72 f0                                          jb     0x485fa3
  00485fb3: 8b 56 08                                       mov    edx,DWORD PTR [esi+0x8]
  00485fb6: 33 ff                                          xor    edi,edi
  00485fb8: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  00485fbb: 33 c9                                          xor    ecx,ecx
  00485fbd: 3b d3                                          cmp    edx,ebx
  00485fbf: 75 04                                          jne    0x485fc5
  00485fc1: 33 c0                                          xor    eax,eax
  00485fc3: eb 05                                          jmp    0x485fca
  00485fc5: 8b 46 0c                                       mov    eax,DWORD PTR [esi+0xc]
  00485fc8: 2b c2                                          sub    eax,edx
  00485fca: 83 c0 fc                                       add    eax,0xfffffffc
  00485fcd: 3b c8                                          cmp    ecx,eax
  00485fcf: 73 10                                          jae    0x485fe1
  00485fd1: 33 c0                                          xor    eax,eax
  00485fd3: 8b 46 08                                       mov    eax,DWORD PTR [esi+0x8]
  00485fd6: 66 0f b6 44 08 04                              movzx  ax,BYTE PTR [eax+ecx*1+0x4]
  00485fdc: 03 f8                                          add    edi,eax
  00485fde: 41                                             inc    ecx
  00485fdf: eb dc                                          jmp    0x485fbd
  00485fe1: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  00485fe4: 33 c0                                          xor    eax,eax
  00485fe6: 8a 54 05 f0                                    mov    dl,BYTE PTR [ebp+eax*1-0x10]
  00485fea: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  00485fed: 88 54 01 02                                    mov    BYTE PTR [ecx+eax*1+0x2],dl
  00485ff1: 40                                             inc    eax
  00485ff2: 83 f8 02                                       cmp    eax,0x2
  00485ff5: 72 ef                                          jb     0x485fe6
  00485ff7: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  00485ffa: 85 c9                                          test   ecx,ecx
  00485ffc: 75 04                                          jne    0x486002
  00485ffe: 33 c0                                          xor    eax,eax
  00486000: eb 05                                          jmp    0x486007
  00486002: 8b 46 0c                                       mov    eax,DWORD PTR [esi+0xc]
  00486005: 2b c1                                          sub    eax,ecx
  00486007: 83 c0 fc                                       add    eax,0xfffffffc
  0048600a: 3b d8                                          cmp    ebx,eax
  0048600c: 73 16                                          jae    0x486024
  0048600e: 8b 46 08                                       mov    eax,DWORD PTR [esi+0x8]
  00486011: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  00486014: 8d 7c 18 04                                    lea    edi,[eax+ebx*1+0x4]
  00486018: e8 73 23 fb ff                                 call   0x438390
  0048601d: 32 07                                          xor    al,BYTE PTR [edi]
  0048601f: 88 07                                          mov    BYTE PTR [edi],al
  00486021: 43                                             inc    ebx
  00486022: eb d3                                          jmp    0x485ff7
  00486024: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  00486027: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0048602b: e8 60 22 fb ff                                 call   0x438290
  00486030: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  00486033: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0048603a: e8 51 22 fb ff                                 call   0x438290
  0048603f: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00486042: 5f                                             pop    edi
  00486043: 5e                                             pop    esi
  00486044: 5b                                             pop    ebx
  00486045: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0048604c: 8b e5                                          mov    esp,ebp
  0048604e: 5d                                             pop    ebp
  0048604f: c3                                             ret

; [00486050] TFCPacket::?DecryptPacket@TFCPacket ; instruction=91 ; plage_limite=00486150 ; issues=0
  00486050: 55                                             push   ebp
  00486051: 8b ec                                          mov    ebp,esp
  00486053: 6a ff                                          push   0xffffffff
  00486055: 68 48 a3 4d 00                                 push   0x4da348
  0048605a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00486060: 50                                             push   eax
  00486061: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00486068: 83 ec 18                                       sub    esp,0x18
  0048606b: 53                                             push   ebx
  0048606c: 56                                             push   esi
  0048606d: 8b f1                                          mov    esi,ecx
  0048606f: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  00486072: 33 db                                          xor    ebx,ebx
  00486074: 57                                             push   edi
  00486075: 33 c0                                          xor    eax,eax
  00486077: 8a 14 01                                       mov    dl,BYTE PTR [ecx+eax*1]
  0048607a: 88 54 05 ec                                    mov    BYTE PTR [ebp+eax*1-0x14],dl
  0048607e: 40                                             inc    eax
  0048607f: 83 f8 02                                       cmp    eax,0x2
  00486082: 72 f3                                          jb     0x486077
  00486084: 33 c0                                          xor    eax,eax
  00486086: 8a 54 01 02                                    mov    dl,BYTE PTR [ecx+eax*1+0x2]
  0048608a: 88 54 05 f2                                    mov    BYTE PTR [ebp+eax*1-0xe],dl
  0048608e: 40                                             inc    eax
  0048608f: 83 f8 02                                       cmp    eax,0x2
  00486092: 72 f2                                          jb     0x486086
  00486094: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00486097: 25 ff ff 00 00                                 and    eax,0xffff
  0048609c: 50                                             push   eax
  0048609d: 68 ff 00 00 00                                 push   0xff
  004860a2: 53                                             push   ebx
  004860a3: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  004860a6: e8 35 22 fb ff                                 call   0x4382e0
  004860ab: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  004860ae: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  004860b1: 85 c9                                          test   ecx,ecx
  004860b3: 75 04                                          jne    0x4860b9
  004860b5: 33 c0                                          xor    eax,eax
  004860b7: eb 05                                          jmp    0x4860be
  004860b9: 8b 46 0c                                       mov    eax,DWORD PTR [esi+0xc]
  004860bc: 2b c1                                          sub    eax,ecx
  004860be: 83 c0 fc                                       add    eax,0xfffffffc
  004860c1: 3b d8                                          cmp    ebx,eax
  004860c3: 73 16                                          jae    0x4860db
  004860c5: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  004860c8: 8d 7c 19 04                                    lea    edi,[ecx+ebx*1+0x4]
  004860cc: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  004860cf: e8 bc 22 fb ff                                 call   0x438390
  004860d4: 32 07                                          xor    al,BYTE PTR [edi]
  004860d6: 88 07                                          mov    BYTE PTR [edi],al
  004860d8: 43                                             inc    ebx
  004860d9: eb d3                                          jmp    0x4860ae
  004860db: 8b 56 08                                       mov    edx,DWORD PTR [esi+0x8]
  004860de: 33 ff                                          xor    edi,edi
  004860e0: 33 c9                                          xor    ecx,ecx
  004860e2: 85 d2                                          test   edx,edx
  004860e4: 75 04                                          jne    0x4860ea
  004860e6: 33 c0                                          xor    eax,eax
  004860e8: eb 05                                          jmp    0x4860ef
  004860ea: 8b 46 0c                                       mov    eax,DWORD PTR [esi+0xc]
  004860ed: 2b c2                                          sub    eax,edx
  004860ef: 83 c0 fc                                       add    eax,0xfffffffc
  004860f2: 3b c8                                          cmp    ecx,eax
  004860f4: 73 10                                          jae    0x486106
  004860f6: 33 c0                                          xor    eax,eax
  004860f8: 8b 46 08                                       mov    eax,DWORD PTR [esi+0x8]
  004860fb: 66 0f b6 44 08 04                              movzx  ax,BYTE PTR [eax+ecx*1+0x4]
  00486101: 03 f8                                          add    edi,eax
  00486103: 41                                             inc    ecx
  00486104: eb dc                                          jmp    0x4860e2
  00486106: 66 3b 7d f2                                    cmp    di,WORD PTR [ebp-0xe]
  0048610a: 5f                                             pop    edi
  0048610b: 5e                                             pop    esi
  0048610c: 5b                                             pop    ebx
  0048610d: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00486114: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00486117: 75 18                                          jne    0x486131
  00486119: e8 72 21 fb ff                                 call   0x438290
  0048611e: b8 01 00 00 00                                 mov    eax,0x1
  00486123: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00486126: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0048612d: 8b e5                                          mov    esp,ebp
  0048612f: 5d                                             pop    ebp
  00486130: c3                                             ret
  00486131: e8 5a 21 fb ff                                 call   0x438290
  00486136: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00486139: 33 c0                                          xor    eax,eax
  0048613b: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00486142: 8b e5                                          mov    esp,ebp
  00486144: 5d                                             pop    ebp
  00486145: c3                                             ret

; [00486150] ??6TFCPacket::??6TFCPacket ; instruction=40 ; plage_limite=004861B0 ; issues=0
  00486150: 55                                             push   ebp
  00486151: 8b ec                                          mov    ebp,esp
  00486153: 51                                             push   ecx
  00486154: 53                                             push   ebx
  00486155: 66 8b 5d 08                                    mov    bx,WORD PTR [ebp+0x8]
  00486159: 56                                             push   esi
  0048615a: 57                                             push   edi
  0048615b: 8b f9                                          mov    edi,ecx
  0048615d: 8d 4d 0b                                       lea    ecx,[ebp+0xb]
  00486160: 51                                             push   ecx
  00486161: 33 c0                                          xor    eax,eax
  00486163: 51                                             push   ecx
  00486164: 8a c7                                          mov    al,bh
  00486166: 8d 77 04                                       lea    esi,[edi+0x4]
  00486169: 54                                             push   esp
  0048616a: 8b ce                                          mov    ecx,esi
  0048616c: 88 45 0b                                       mov    BYTE PTR [ebp+0xb],al
  0048616f: e8 bc 0a 00 00                                 call   0x486c30
  00486174: 8d 55 fc                                       lea    edx,[ebp-0x4]
  00486177: 52                                             push   edx
  00486178: 8b ce                                          mov    ecx,esi
  0048617a: e8 21 0b 00 00                                 call   0x486ca0
  0048617f: 8d 45 0b                                       lea    eax,[ebp+0xb]
  00486182: 50                                             push   eax
  00486183: 51                                             push   ecx
  00486184: 54                                             push   esp
  00486185: 8b ce                                          mov    ecx,esi
  00486187: 88 5d 0b                                       mov    BYTE PTR [ebp+0xb],bl
  0048618a: e8 a1 0a 00 00                                 call   0x486c30
  0048618f: 8d 4d fc                                       lea    ecx,[ebp-0x4]
  00486192: 51                                             push   ecx
  00486193: 8b ce                                          mov    ecx,esi
  00486195: e8 06 0b 00 00                                 call   0x486ca0
  0048619a: 8b c7                                          mov    eax,edi
  0048619c: 5f                                             pop    edi
  0048619d: 5e                                             pop    esi
  0048619e: 5b                                             pop    ebx
  0048619f: 8b e5                                          mov    esp,ebp
  004861a1: 5d                                             pop    ebp
  004861a2: c2 04 00                                       ret    0x4

; [004861B0] ??6TFCPacket::??6TFCPacket ; instruction=25 ; plage_limite=004861F0 ; issues=0
  004861b0: 55                                             push   ebp
  004861b1: 8b ec                                          mov    ebp,esp
  004861b3: 51                                             push   ecx
  004861b4: 8a 45 08                                       mov    al,BYTE PTR [ebp+0x8]
  004861b7: 56                                             push   esi
  004861b8: 57                                             push   edi
  004861b9: 8b f1                                          mov    esi,ecx
  004861bb: 8d 4d 0b                                       lea    ecx,[ebp+0xb]
  004861be: 51                                             push   ecx
  004861bf: 51                                             push   ecx
  004861c0: 8d 7e 04                                       lea    edi,[esi+0x4]
  004861c3: 54                                             push   esp
  004861c4: 8b cf                                          mov    ecx,edi
  004861c6: 88 45 0b                                       mov    BYTE PTR [ebp+0xb],al
  004861c9: e8 62 0a 00 00                                 call   0x486c30
  004861ce: 8d 55 fc                                       lea    edx,[ebp-0x4]
  004861d1: 52                                             push   edx
  004861d2: 8b cf                                          mov    ecx,edi
  004861d4: e8 c7 0a 00 00                                 call   0x486ca0
  004861d9: 5f                                             pop    edi
  004861da: 8b c6                                          mov    eax,esi
  004861dc: 5e                                             pop    esi
  004861dd: 8b e5                                          mov    esp,ebp
  004861df: 5d                                             pop    ebp
  004861e0: c2 04 00                                       ret    0x4

; [004861F0] ??6TFCPacket::??6TFCPacket ; instruction=66 ; plage_limite=00486290 ; issues=0
  004861f0: 55                                             push   ebp
  004861f1: 8b ec                                          mov    ebp,esp
  004861f3: 83 ec 08                                       sub    esp,0x8
  004861f6: 53                                             push   ebx
  004861f7: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  004861fa: 56                                             push   esi
  004861fb: 57                                             push   edi
  004861fc: 8b f9                                          mov    edi,ecx
  004861fe: 8d 4d ff                                       lea    ecx,[ebp-0x1]
  00486201: 51                                             push   ecx
  00486202: 33 c0                                          xor    eax,eax
  00486204: 51                                             push   ecx
  00486205: c1 eb 10                                       shr    ebx,0x10
  00486208: 8a c7                                          mov    al,bh
  0048620a: 8d 77 04                                       lea    esi,[edi+0x4]
  0048620d: 54                                             push   esp
  0048620e: 8b ce                                          mov    ecx,esi
  00486210: 88 45 ff                                       mov    BYTE PTR [ebp-0x1],al
  00486213: e8 18 0a 00 00                                 call   0x486c30
  00486218: 8d 55 f8                                       lea    edx,[ebp-0x8]
  0048621b: 52                                             push   edx
  0048621c: 8b ce                                          mov    ecx,esi
  0048621e: e8 7d 0a 00 00                                 call   0x486ca0
  00486223: 8d 45 ff                                       lea    eax,[ebp-0x1]
  00486226: 50                                             push   eax
  00486227: 51                                             push   ecx
  00486228: 54                                             push   esp
  00486229: 8b ce                                          mov    ecx,esi
  0048622b: 88 5d ff                                       mov    BYTE PTR [ebp-0x1],bl
  0048622e: e8 fd 09 00 00                                 call   0x486c30
  00486233: 8d 4d f8                                       lea    ecx,[ebp-0x8]
  00486236: 51                                             push   ecx
  00486237: 8b ce                                          mov    ecx,esi
  00486239: e8 62 0a 00 00                                 call   0x486ca0
  0048623e: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  00486241: 8d 45 0b                                       lea    eax,[ebp+0xb]
  00486244: 50                                             push   eax
  00486245: 33 d2                                          xor    edx,edx
  00486247: 51                                             push   ecx
  00486248: 8a d7                                          mov    dl,bh
  0048624a: 54                                             push   esp
  0048624b: 8b ce                                          mov    ecx,esi
  0048624d: 88 55 0b                                       mov    BYTE PTR [ebp+0xb],dl
  00486250: e8 db 09 00 00                                 call   0x486c30
  00486255: 8d 4d f8                                       lea    ecx,[ebp-0x8]
  00486258: 51                                             push   ecx
  00486259: 8b ce                                          mov    ecx,esi
  0048625b: e8 40 0a 00 00                                 call   0x486ca0
  00486260: 8d 55 0b                                       lea    edx,[ebp+0xb]
  00486263: 52                                             push   edx
  00486264: 51                                             push   ecx
  00486265: 54                                             push   esp
  00486266: 8b ce                                          mov    ecx,esi
  00486268: 88 5d 0b                                       mov    BYTE PTR [ebp+0xb],bl
  0048626b: e8 c0 09 00 00                                 call   0x486c30
  00486270: 8d 45 f8                                       lea    eax,[ebp-0x8]
  00486273: 50                                             push   eax
  00486274: 8b ce                                          mov    ecx,esi
  00486276: e8 25 0a 00 00                                 call   0x486ca0
  0048627b: 8b c7                                          mov    eax,edi
  0048627d: 5f                                             pop    edi
  0048627e: 5e                                             pop    esi
  0048627f: 5b                                             pop    ebx
  00486280: 8b e5                                          mov    esp,ebp
  00486282: 5d                                             pop    ebp
  00486283: c2 04 00                                       ret    0x4

; [004863F0] TFCPacket::?Get@TFCPacket ; instruction=74 ; plage_limite=004864B0 ; issues=0
  004863f0: 55                                             push   ebp
  004863f1: 8b ec                                          mov    ebp,esp
  004863f3: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004863f6: 56                                             push   esi
  004863f7: c7 00 00 00 00 00                              mov    DWORD PTR [eax],0x0
  004863fd: 8b 71 08                                       mov    esi,DWORD PTR [ecx+0x8]
  00486400: 85 f6                                          test   esi,esi
  00486402: 57                                             push   edi
  00486403: 75 04                                          jne    0x486409
  00486405: 33 d2                                          xor    edx,edx
  00486407: eb 05                                          jmp    0x48640e
  00486409: 8b 51 0c                                       mov    edx,DWORD PTR [ecx+0xc]
  0048640c: 2b d6                                          sub    edx,esi
  0048640e: 8b 71 14                                       mov    esi,DWORD PTR [ecx+0x14]
  00486411: 8d 7e 08                                       lea    edi,[esi+0x8]
  00486414: 3b fa                                          cmp    edi,edx
  00486416: 77 6a                                          ja     0x486482
  00486418: 53                                             push   ebx
  00486419: 33 db                                          xor    ebx,ebx
  0048641b: 8d 56 01                                       lea    edx,[esi+0x1]
  0048641e: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  00486421: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  00486424: 8a 5c 32 04                                    mov    bl,BYTE PTR [edx+esi*1+0x4]
  00486428: c1 e3 18                                       shl    ebx,0x18
  0048642b: 89 18                                          mov    DWORD PTR [eax],ebx
  0048642d: 8b 71 14                                       mov    esi,DWORD PTR [ecx+0x14]
  00486430: 33 db                                          xor    ebx,ebx
  00486432: 8d 56 01                                       lea    edx,[esi+0x1]
  00486435: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  00486438: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  0048643b: 8a 5c 32 04                                    mov    bl,BYTE PTR [edx+esi*1+0x4]
  0048643f: 8b 38                                          mov    edi,DWORD PTR [eax]
  00486441: c1 e3 10                                       shl    ebx,0x10
  00486444: 03 fb                                          add    edi,ebx
  00486446: 89 38                                          mov    DWORD PTR [eax],edi
  00486448: 8b 71 14                                       mov    esi,DWORD PTR [ecx+0x14]
  0048644b: 8d 56 01                                       lea    edx,[esi+0x1]
  0048644e: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  00486451: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  00486454: 33 db                                          xor    ebx,ebx
  00486456: 8a 5c 32 04                                    mov    bl,BYTE PTR [edx+esi*1+0x4]
  0048645a: 8b 10                                          mov    edx,DWORD PTR [eax]
  0048645c: c1 e3 08                                       shl    ebx,0x8
  0048645f: 03 d3                                          add    edx,ebx
  00486461: 89 10                                          mov    DWORD PTR [eax],edx
  00486463: 8b 51 14                                       mov    edx,DWORD PTR [ecx+0x14]
  00486466: 8d 72 01                                       lea    esi,[edx+0x1]
  00486469: 89 71 14                                       mov    DWORD PTR [ecx+0x14],esi
  0048646c: 8b 49 08                                       mov    ecx,DWORD PTR [ecx+0x8]
  0048646f: 33 db                                          xor    ebx,ebx
  00486471: 8a 5c 11 04                                    mov    bl,BYTE PTR [ecx+edx*1+0x4]
  00486475: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00486477: 03 cb                                          add    ecx,ebx
  00486479: 5b                                             pop    ebx
  0048647a: 5f                                             pop    edi
  0048647b: 89 08                                          mov    DWORD PTR [eax],ecx
  0048647d: 5e                                             pop    esi
  0048647e: 5d                                             pop    ebp
  0048647f: c2 04 00                                       ret    0x4
  00486482: 6a 04                                          push   0x4
  00486484: e8 67 bb fb ff                                 call   0x441ff0
  00486489: 83 c4 04                                       add    esp,0x4
  0048648c: 85 c0                                          test   eax,eax
  0048648e: 74 0b                                          je     0x48649b
  00486490: 6a 01                                          push   0x1
  00486492: 8b c8                                          mov    ecx,eax
  00486494: e8 47 f9 ff ff                                 call   0x485de0
  00486499: eb 02                                          jmp    0x48649d
  0048649b: 33 c0                                          xor    eax,eax
  0048649d: 68 d0 b4 4e 00                                 push   0x4eb4d0
  004864a2: 8d 55 08                                       lea    edx,[ebp+0x8]
  004864a5: 52                                             push   edx
  004864a6: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  004864a9: e8 a8 b8 04 00                                 call   0x4d1d56

; [004864B0] TFCPacket::?Get@TFCPacket ; instruction=50 ; plage_limite=00486540 ; issues=0
  004864b0: 55                                             push   ebp
  004864b1: 8b ec                                          mov    ebp,esp
  004864b3: 56                                             push   esi
  004864b4: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  004864b7: 66 c7 06 00 00                                 mov    WORD PTR [esi],0x0
  004864bc: 8b 41 08                                       mov    eax,DWORD PTR [ecx+0x8]
  004864bf: 85 c0                                          test   eax,eax
  004864c1: 75 04                                          jne    0x4864c7
  004864c3: 33 d2                                          xor    edx,edx
  004864c5: eb 05                                          jmp    0x4864cc
  004864c7: 8b 51 0c                                       mov    edx,DWORD PTR [ecx+0xc]
  004864ca: 2b d0                                          sub    edx,eax
  004864cc: 8b 41 14                                       mov    eax,DWORD PTR [ecx+0x14]
  004864cf: 57                                             push   edi
  004864d0: 8d 78 06                                       lea    edi,[eax+0x6]
  004864d3: 3b fa                                          cmp    edi,edx
  004864d5: 5f                                             pop    edi
  004864d6: 77 2e                                          ja     0x486506
  004864d8: 8d 50 01                                       lea    edx,[eax+0x1]
  004864db: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  004864de: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  004864e1: 53                                             push   ebx
  004864e2: 33 db                                          xor    ebx,ebx
  004864e4: 8a 7c 02 04                                    mov    bh,BYTE PTR [edx+eax*1+0x4]
  004864e8: 66 89 1e                                       mov    WORD PTR [esi],bx
  004864eb: 8b 41 14                                       mov    eax,DWORD PTR [ecx+0x14]
  004864ee: 8d 50 01                                       lea    edx,[eax+0x1]
  004864f1: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  004864f4: 8b 49 08                                       mov    ecx,DWORD PTR [ecx+0x8]
  004864f7: 66 0f b6 54 01 04                              movzx  dx,BYTE PTR [ecx+eax*1+0x4]
  004864fd: 66 01 16                                       add    WORD PTR [esi],dx
  00486500: 5b                                             pop    ebx
  00486501: 5e                                             pop    esi
  00486502: 5d                                             pop    ebp
  00486503: c2 04 00                                       ret    0x4
  00486506: 6a 04                                          push   0x4
  00486508: e8 e3 ba fb ff                                 call   0x441ff0
  0048650d: 83 c4 04                                       add    esp,0x4
  00486510: 85 c0                                          test   eax,eax
  00486512: 74 0b                                          je     0x48651f
  00486514: 6a 01                                          push   0x1
  00486516: 8b c8                                          mov    ecx,eax
  00486518: e8 c3 f8 ff ff                                 call   0x485de0
  0048651d: eb 02                                          jmp    0x486521
  0048651f: 33 c0                                          xor    eax,eax
  00486521: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  00486524: 68 d0 b4 4e 00                                 push   0x4eb4d0
  00486529: 8d 45 08                                       lea    eax,[ebp+0x8]
  0048652c: 50                                             push   eax
  0048652d: e8 24 b8 04 00                                 call   0x4d1d56

; [00486540] TFCPacket::?Get@TFCPacket ; instruction=41 ; plage_limite=004865B0 ; issues=0
  00486540: 55                                             push   ebp
  00486541: 8b ec                                          mov    ebp,esp
  00486543: 56                                             push   esi
  00486544: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  00486547: c6 06 00                                       mov    BYTE PTR [esi],0x0
  0048654a: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  0048654d: 85 d2                                          test   edx,edx
  0048654f: 75 04                                          jne    0x486555
  00486551: 33 c0                                          xor    eax,eax
  00486553: eb 05                                          jmp    0x48655a
  00486555: 8b 41 0c                                       mov    eax,DWORD PTR [ecx+0xc]
  00486558: 2b c2                                          sub    eax,edx
  0048655a: 8b 51 14                                       mov    edx,DWORD PTR [ecx+0x14]
  0048655d: 57                                             push   edi
  0048655e: 8d 7a 05                                       lea    edi,[edx+0x5]
  00486561: 3b f8                                          cmp    edi,eax
  00486563: 5f                                             pop    edi
  00486564: 77 14                                          ja     0x48657a
  00486566: 8d 42 01                                       lea    eax,[edx+0x1]
  00486569: 89 41 14                                       mov    DWORD PTR [ecx+0x14],eax
  0048656c: 8b 49 08                                       mov    ecx,DWORD PTR [ecx+0x8]
  0048656f: 8a 54 11 04                                    mov    dl,BYTE PTR [ecx+edx*1+0x4]
  00486573: 88 16                                          mov    BYTE PTR [esi],dl
  00486575: 5e                                             pop    esi
  00486576: 5d                                             pop    ebp
  00486577: c2 04 00                                       ret    0x4
  0048657a: 6a 04                                          push   0x4
  0048657c: e8 6f ba fb ff                                 call   0x441ff0
  00486581: 83 c4 04                                       add    esp,0x4
  00486584: 85 c0                                          test   eax,eax
  00486586: 74 0b                                          je     0x486593
  00486588: 6a 01                                          push   0x1
  0048658a: 8b c8                                          mov    ecx,eax
  0048658c: e8 4f f8 ff ff                                 call   0x485de0
  00486591: eb 02                                          jmp    0x486595
  00486593: 33 c0                                          xor    eax,eax
  00486595: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  00486598: 68 d0 b4 4e 00                                 push   0x4eb4d0
  0048659d: 8d 45 08                                       lea    eax,[ebp+0x8]
  004865a0: 50                                             push   eax
  004865a1: e8 b0 b7 04 00                                 call   0x4d1d56

; [004865B0] TFCPacket::?Get@TFCPacket ; instruction=74 ; plage_limite=00486670 ; issues=0
  004865b0: 55                                             push   ebp
  004865b1: 8b ec                                          mov    ebp,esp
  004865b3: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004865b6: 56                                             push   esi
  004865b7: c7 00 00 00 00 00                              mov    DWORD PTR [eax],0x0
  004865bd: 8b 71 08                                       mov    esi,DWORD PTR [ecx+0x8]
  004865c0: 85 f6                                          test   esi,esi
  004865c2: 57                                             push   edi
  004865c3: 75 04                                          jne    0x4865c9
  004865c5: 33 d2                                          xor    edx,edx
  004865c7: eb 05                                          jmp    0x4865ce
  004865c9: 8b 51 0c                                       mov    edx,DWORD PTR [ecx+0xc]
  004865cc: 2b d6                                          sub    edx,esi
  004865ce: 8b 71 14                                       mov    esi,DWORD PTR [ecx+0x14]
  004865d1: 8d 7e 08                                       lea    edi,[esi+0x8]
  004865d4: 3b fa                                          cmp    edi,edx
  004865d6: 77 6a                                          ja     0x486642
  004865d8: 53                                             push   ebx
  004865d9: 33 db                                          xor    ebx,ebx
  004865db: 8d 56 01                                       lea    edx,[esi+0x1]
  004865de: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  004865e1: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  004865e4: 8a 5c 32 04                                    mov    bl,BYTE PTR [edx+esi*1+0x4]
  004865e8: c1 e3 18                                       shl    ebx,0x18
  004865eb: 89 18                                          mov    DWORD PTR [eax],ebx
  004865ed: 8b 71 14                                       mov    esi,DWORD PTR [ecx+0x14]
  004865f0: 33 db                                          xor    ebx,ebx
  004865f2: 8d 56 01                                       lea    edx,[esi+0x1]
  004865f5: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  004865f8: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  004865fb: 8a 5c 32 04                                    mov    bl,BYTE PTR [edx+esi*1+0x4]
  004865ff: 8b 38                                          mov    edi,DWORD PTR [eax]
  00486601: c1 e3 10                                       shl    ebx,0x10
  00486604: 03 fb                                          add    edi,ebx
  00486606: 89 38                                          mov    DWORD PTR [eax],edi
  00486608: 8b 71 14                                       mov    esi,DWORD PTR [ecx+0x14]
  0048660b: 8d 56 01                                       lea    edx,[esi+0x1]
  0048660e: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  00486611: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  00486614: 33 db                                          xor    ebx,ebx
  00486616: 8a 5c 32 04                                    mov    bl,BYTE PTR [edx+esi*1+0x4]
  0048661a: 8b 10                                          mov    edx,DWORD PTR [eax]
  0048661c: c1 e3 08                                       shl    ebx,0x8
  0048661f: 03 d3                                          add    edx,ebx
  00486621: 89 10                                          mov    DWORD PTR [eax],edx
  00486623: 8b 51 14                                       mov    edx,DWORD PTR [ecx+0x14]
  00486626: 8d 72 01                                       lea    esi,[edx+0x1]
  00486629: 89 71 14                                       mov    DWORD PTR [ecx+0x14],esi
  0048662c: 8b 49 08                                       mov    ecx,DWORD PTR [ecx+0x8]
  0048662f: 33 db                                          xor    ebx,ebx
  00486631: 8a 5c 11 04                                    mov    bl,BYTE PTR [ecx+edx*1+0x4]
  00486635: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00486637: 03 cb                                          add    ecx,ebx
  00486639: 5b                                             pop    ebx
  0048663a: 5f                                             pop    edi
  0048663b: 89 08                                          mov    DWORD PTR [eax],ecx
  0048663d: 5e                                             pop    esi
  0048663e: 5d                                             pop    ebp
  0048663f: c2 04 00                                       ret    0x4
  00486642: 6a 04                                          push   0x4
  00486644: e8 a7 b9 fb ff                                 call   0x441ff0
  00486649: 83 c4 04                                       add    esp,0x4
  0048664c: 85 c0                                          test   eax,eax
  0048664e: 74 0b                                          je     0x48665b
  00486650: 6a 01                                          push   0x1
  00486652: 8b c8                                          mov    ecx,eax
  00486654: e8 87 f7 ff ff                                 call   0x485de0
  00486659: eb 02                                          jmp    0x48665d
  0048665b: 33 c0                                          xor    eax,eax
  0048665d: 68 d0 b4 4e 00                                 push   0x4eb4d0
  00486662: 8d 55 08                                       lea    edx,[ebp+0x8]
  00486665: 52                                             push   edx
  00486666: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  00486669: e8 e8 b6 04 00                                 call   0x4d1d56

; [00486670] TFCPacket::?Get@TFCPacket ; instruction=50 ; plage_limite=00486700 ; issues=0
  00486670: 55                                             push   ebp
  00486671: 8b ec                                          mov    ebp,esp
  00486673: 56                                             push   esi
  00486674: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  00486677: 66 c7 06 00 00                                 mov    WORD PTR [esi],0x0
  0048667c: 8b 41 08                                       mov    eax,DWORD PTR [ecx+0x8]
  0048667f: 85 c0                                          test   eax,eax
  00486681: 75 04                                          jne    0x486687
  00486683: 33 d2                                          xor    edx,edx
  00486685: eb 05                                          jmp    0x48668c
  00486687: 8b 51 0c                                       mov    edx,DWORD PTR [ecx+0xc]
  0048668a: 2b d0                                          sub    edx,eax
  0048668c: 8b 41 14                                       mov    eax,DWORD PTR [ecx+0x14]
  0048668f: 57                                             push   edi
  00486690: 8d 78 06                                       lea    edi,[eax+0x6]
  00486693: 3b fa                                          cmp    edi,edx
  00486695: 5f                                             pop    edi
  00486696: 77 2e                                          ja     0x4866c6
  00486698: 8d 50 01                                       lea    edx,[eax+0x1]
  0048669b: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  0048669e: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  004866a1: 53                                             push   ebx
  004866a2: 33 db                                          xor    ebx,ebx
  004866a4: 8a 7c 02 04                                    mov    bh,BYTE PTR [edx+eax*1+0x4]
  004866a8: 66 89 1e                                       mov    WORD PTR [esi],bx
  004866ab: 8b 41 14                                       mov    eax,DWORD PTR [ecx+0x14]
  004866ae: 8d 50 01                                       lea    edx,[eax+0x1]
  004866b1: 89 51 14                                       mov    DWORD PTR [ecx+0x14],edx
  004866b4: 8b 49 08                                       mov    ecx,DWORD PTR [ecx+0x8]
  004866b7: 66 0f b6 54 01 04                              movzx  dx,BYTE PTR [ecx+eax*1+0x4]
  004866bd: 66 01 16                                       add    WORD PTR [esi],dx
  004866c0: 5b                                             pop    ebx
  004866c1: 5e                                             pop    esi
  004866c2: 5d                                             pop    ebp
  004866c3: c2 04 00                                       ret    0x4
  004866c6: 6a 04                                          push   0x4
  004866c8: e8 23 b9 fb ff                                 call   0x441ff0
  004866cd: 83 c4 04                                       add    esp,0x4
  004866d0: 85 c0                                          test   eax,eax
  004866d2: 74 0b                                          je     0x4866df
  004866d4: 6a 01                                          push   0x1
  004866d6: 8b c8                                          mov    ecx,eax
  004866d8: e8 03 f7 ff ff                                 call   0x485de0
  004866dd: eb 02                                          jmp    0x4866e1
  004866df: 33 c0                                          xor    eax,eax
  004866e1: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  004866e4: 68 d0 b4 4e 00                                 push   0x4eb4d0
  004866e9: 8d 45 08                                       lea    eax,[ebp+0x8]
  004866ec: 50                                             push   eax
  004866ed: e8 64 b6 04 00                                 call   0x4d1d56

; [00486700] TFCPacket::?Get@TFCPacket ; instruction=41 ; plage_limite=00486770 ; issues=0
  00486700: 55                                             push   ebp
  00486701: 8b ec                                          mov    ebp,esp
  00486703: 56                                             push   esi
  00486704: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  00486707: c6 06 00                                       mov    BYTE PTR [esi],0x0
  0048670a: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  0048670d: 85 d2                                          test   edx,edx
  0048670f: 75 04                                          jne    0x486715
  00486711: 33 c0                                          xor    eax,eax
  00486713: eb 05                                          jmp    0x48671a
  00486715: 8b 41 0c                                       mov    eax,DWORD PTR [ecx+0xc]
  00486718: 2b c2                                          sub    eax,edx
  0048671a: 8b 51 14                                       mov    edx,DWORD PTR [ecx+0x14]
  0048671d: 57                                             push   edi
  0048671e: 8d 7a 05                                       lea    edi,[edx+0x5]
  00486721: 3b f8                                          cmp    edi,eax
  00486723: 5f                                             pop    edi
  00486724: 77 14                                          ja     0x48673a
  00486726: 8d 42 01                                       lea    eax,[edx+0x1]
  00486729: 89 41 14                                       mov    DWORD PTR [ecx+0x14],eax
  0048672c: 8b 49 08                                       mov    ecx,DWORD PTR [ecx+0x8]
  0048672f: 8a 54 11 04                                    mov    dl,BYTE PTR [ecx+edx*1+0x4]
  00486733: 88 16                                          mov    BYTE PTR [esi],dl
  00486735: 5e                                             pop    esi
  00486736: 5d                                             pop    ebp
  00486737: c2 04 00                                       ret    0x4
  0048673a: 6a 04                                          push   0x4
  0048673c: e8 af b8 fb ff                                 call   0x441ff0
  00486741: 83 c4 04                                       add    esp,0x4
  00486744: 85 c0                                          test   eax,eax
  00486746: 74 0b                                          je     0x486753
  00486748: 6a 01                                          push   0x1
  0048674a: 8b c8                                          mov    ecx,eax
  0048674c: e8 8f f6 ff ff                                 call   0x485de0
  00486751: eb 02                                          jmp    0x486755
  00486753: 33 c0                                          xor    eax,eax
  00486755: 89 45 08                                       mov    DWORD PTR [ebp+0x8],eax
  00486758: 68 d0 b4 4e 00                                 push   0x4eb4d0
  0048675d: 8d 45 08                                       lea    eax,[ebp+0x8]
  00486760: 50                                             push   eax
  00486761: e8 f0 b5 04 00                                 call   0x4d1d56

; [00486770] TFCPacket::?Get@TFCPacket ; instruction=139 ; plage_limite=004868E0 ; issues=0
  00486770: 55                                             push   ebp
  00486771: 8b ec                                          mov    ebp,esp
  00486773: 81 ec 08 04 00 00                              sub    esp,0x408
  00486779: 53                                             push   ebx
  0048677a: 56                                             push   esi
  0048677b: 57                                             push   edi
  0048677c: 8d 45 fc                                       lea    eax,[ebp-0x4]
  0048677f: 33 ff                                          xor    edi,edi
  00486781: 8b f1                                          mov    esi,ecx
  00486783: 50                                             push   eax
  00486784: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  00486787: e8 24 fd ff ff                                 call   0x4864b0
  0048678c: 66 39 7d fc                                    cmp    WORD PTR [ebp-0x4],di
  00486790: 76 1d                                          jbe    0x4867af
  00486792: 8d 8c 3d f8 fb ff ff                           lea    ecx,[ebp+edi*1-0x408]
  00486799: 51                                             push   ecx
  0048679a: 8b ce                                          mov    ecx,esi
  0048679c: e8 9f fd ff ff                                 call   0x486540
  004867a1: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  004867a4: 47                                             inc    edi
  004867a5: 81 e2 ff ff 00 00                              and    edx,0xffff
  004867ab: 3b fa                                          cmp    edi,edx
  004867ad: 7c e3                                          jl     0x486792
  004867af: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  004867b2: 83 c9 ff                                       or     ecx,0xffffffff
  004867b5: 33 c0                                          xor    eax,eax
  004867b7: c6 84 3d f8 fb ff ff 00                        mov    BYTE PTR [ebp+edi*1-0x408],0x0
  004867bf: 8d bd f8 fb ff ff                              lea    edi,[ebp-0x408]
  004867c5: f2 ae                                          repnz scas al,BYTE PTR es:[edi]
  004867c7: 8b 43 04                                       mov    eax,DWORD PTR [ebx+0x4]
  004867ca: f7 d1                                          not    ecx
  004867cc: 49                                             dec    ecx
  004867cd: 85 c0                                          test   eax,eax
  004867cf: 8b f1                                          mov    esi,ecx
  004867d1: 89 75 f8                                       mov    DWORD PTR [ebp-0x8],esi
  004867d4: 74 61                                          je     0x486837
  004867d6: 8d 8d f8 fb ff ff                              lea    ecx,[ebp-0x408]
  004867dc: 3b c1                                          cmp    eax,ecx
  004867de: 77 57                                          ja     0x486837
  004867e0: 8b 4b 08                                       mov    ecx,DWORD PTR [ebx+0x8]
  004867e3: 8d 14 01                                       lea    edx,[ecx+eax*1]
  004867e6: 8d bd f8 fb ff ff                              lea    edi,[ebp-0x408]
  004867ec: 3b fa                                          cmp    edi,edx
  004867ee: 77 47                                          ja     0x486837
  004867f0: 8d bd f8 fb ff ff                              lea    edi,[ebp-0x408]
  004867f6: 2b f8                                          sub    edi,eax
  004867f8: 3b cf                                          cmp    ecx,edi
  004867fa: 73 08                                          jae    0x486804
  004867fc: 8b cb                                          mov    ecx,ebx
  004867fe: ff 15 e8 e4 4d 00                              call   DWORD PTR ds:0x4de4e8
  00486804: 8b 43 08                                       mov    eax,DWORD PTR [ebx+0x8]
  00486807: 2b c7                                          sub    eax,edi
  00486809: 3b f0                                          cmp    esi,eax
  0048680b: 73 02                                          jae    0x48680f
  0048680d: 8b c6                                          mov    eax,esi
  0048680f: 8b 0d ec e4 4d 00                              mov    ecx,DWORD PTR ds:0x4de4ec
  00486815: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00486817: 52                                             push   edx
  00486818: 03 c7                                          add    eax,edi
  0048681a: 50                                             push   eax
  0048681b: 8b cb                                          mov    ecx,ebx
  0048681d: ff 15 d4 e4 4d 00                              call   DWORD PTR ds:0x4de4d4
  00486823: 57                                             push   edi
  00486824: 6a 00                                          push   0x0
  00486826: 8b cb                                          mov    ecx,ebx
  00486828: ff 15 d4 e4 4d 00                              call   DWORD PTR ds:0x4de4d4
  0048682e: 5f                                             pop    edi
  0048682f: 5e                                             pop    esi
  00486830: 5b                                             pop    ebx
  00486831: 8b e5                                          mov    esp,ebp
  00486833: 5d                                             pop    ebp
  00486834: c2 04 00                                       ret    0x4
  00486837: 8b cb                                          mov    ecx,ebx
  00486839: ff 15 44 e5 4d 00                              call   DWORD PTR ds:0x4de544
  0048683f: 3b c6                                          cmp    eax,esi
  00486841: 73 08                                          jae    0x48684b
  00486843: 8b cb                                          mov    ecx,ebx
  00486845: ff 15 30 e5 4d 00                              call   DWORD PTR ds:0x4de530
  0048684b: 8b 43 04                                       mov    eax,DWORD PTR [ebx+0x4]
  0048684e: 85 c0                                          test   eax,eax
  00486850: c7 43 08 00 00 00 00                           mov    DWORD PTR [ebx+0x8],0x0
  00486857: 74 22                                          je     0x48687b
  00486859: 8a 40 ff                                       mov    al,BYTE PTR [eax-0x1]
  0048685c: 84 c0                                          test   al,al
  0048685e: 74 1b                                          je     0x48687b
  00486860: 3c ff                                          cmp    al,0xff
  00486862: 74 17                                          je     0x48687b
  00486864: 85 f6                                          test   esi,esi
  00486866: 75 40                                          jne    0x4868a8
  00486868: 6a 01                                          push   0x1
  0048686a: 8b cb                                          mov    ecx,ebx
  0048686c: ff 15 14 e5 4d 00                              call   DWORD PTR ds:0x4de514
  00486872: 5f                                             pop    edi
  00486873: 5e                                             pop    esi
  00486874: 5b                                             pop    ebx
  00486875: 8b e5                                          mov    esp,ebp
  00486877: 5d                                             pop    ebp
  00486878: c2 04 00                                       ret    0x4
  0048687b: 85 f6                                          test   esi,esi
  0048687d: 75 13                                          jne    0x486892
  0048687f: 6a 01                                          push   0x1
  00486881: 8b cb                                          mov    ecx,ebx
  00486883: ff 15 14 e5 4d 00                              call   DWORD PTR ds:0x4de514
  00486889: 5f                                             pop    edi
  0048688a: 5e                                             pop    esi
  0048688b: 5b                                             pop    ebx
  0048688c: 8b e5                                          mov    esp,ebp
  0048688e: 5d                                             pop    ebp
  0048688f: c2 04 00                                       ret    0x4
  00486892: 8b 43 0c                                       mov    eax,DWORD PTR [ebx+0xc]
  00486895: 83 f8 1f                                       cmp    eax,0x1f
  00486898: 77 04                                          ja     0x48689e
  0048689a: 3b c6                                          cmp    eax,esi
  0048689c: 73 13                                          jae    0x4868b1
  0048689e: 6a 01                                          push   0x1
  004868a0: 8b cb                                          mov    ecx,ebx
  004868a2: ff 15 14 e5 4d 00                              call   DWORD PTR ds:0x4de514
  004868a8: 56                                             push   esi
  004868a9: 8b cb                                          mov    ecx,ebx
  004868ab: ff 15 40 e5 4d 00                              call   DWORD PTR ds:0x4de540
  004868b1: 8b 7b 04                                       mov    edi,DWORD PTR [ebx+0x4]
  004868b4: 8b ce                                          mov    ecx,esi
  004868b6: 8b c1                                          mov    eax,ecx
  004868b8: c1 e9 02                                       shr    ecx,0x2
  004868bb: 8d b5 f8 fb ff ff                              lea    esi,[ebp-0x408]
  004868c1: f3 a5                                          rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004868c3: 8b c8                                          mov    ecx,eax
  004868c5: 8b 45 f8                                       mov    eax,DWORD PTR [ebp-0x8]
  004868c8: 83 e1 03                                       and    ecx,0x3
  004868cb: f3 a4                                          rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004868cd: 8b 4b 04                                       mov    ecx,DWORD PTR [ebx+0x4]
  004868d0: 5f                                             pop    edi
  004868d1: 89 43 08                                       mov    DWORD PTR [ebx+0x8],eax
  004868d4: 5e                                             pop    esi
  004868d5: c6 04 01 00                                    mov    BYTE PTR [ecx+eax*1],0x0
  004868d9: 5b                                             pop    ebx
  004868da: 8b e5                                          mov    esp,ebp
  004868dc: 5d                                             pop    ebp
  004868dd: c2 04 00                                       ret    0x4

; [004868E0] TFCPacket::?GetDebugPacketString@TFCPacket ; instruction=64 ; plage_limite=004869B0 ; issues=0
  004868e0: 55                                             push   ebp
  004868e1: 8b ec                                          mov    ebp,esp
  004868e3: 6a ff                                          push   0xffffffff
  004868e5: 68 87 a3 4d 00                                 push   0x4da387
  004868ea: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004868f0: 50                                             push   eax
  004868f1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004868f8: 83 ec 0c                                       sub    esp,0xc
  004868fb: 56                                             push   esi
  004868fc: 8b f1                                          mov    esi,ecx
  004868fe: 57                                             push   edi
  004868ff: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00486902: c7 45 e8 00 00 00 00                           mov    DWORD PTR [ebp-0x18],0x0
  00486909: e8 50 b1 04 00                                 call   0x4d1a5e
  0048690e: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00486911: c7 45 fc 01 00 00 00                           mov    DWORD PTR [ebp-0x4],0x1
  00486918: e8 41 b1 04 00                                 call   0x4d1a5e
  0048691d: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  00486921: 33 ff                                          xor    edi,edi
  00486923: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  00486926: 85 c9                                          test   ecx,ecx
  00486928: 75 04                                          jne    0x48692e
  0048692a: 33 c0                                          xor    eax,eax
  0048692c: eb 05                                          jmp    0x486933
  0048692e: 8b 46 0c                                       mov    eax,DWORD PTR [esi+0xc]
  00486931: 2b c1                                          sub    eax,ecx
  00486933: 83 c0 fc                                       add    eax,0xfffffffc
  00486936: 3b f8                                          cmp    edi,eax
  00486938: 73 2a                                          jae    0x486964
  0048693a: 8b 46 08                                       mov    eax,DWORD PTR [esi+0x8]
  0048693d: 33 c9                                          xor    ecx,ecx
  0048693f: 8a 4c 38 04                                    mov    cl,BYTE PTR [eax+edi*1+0x4]
  00486943: 8d 55 ec                                       lea    edx,[ebp-0x14]
  00486946: 51                                             push   ecx
  00486947: 68 e0 ca 50 00                                 push   0x50cae0
  0048694c: 52                                             push   edx
  0048694d: e8 42 b1 04 00                                 call   0x4d1a94
  00486952: 83 c4 0c                                       add    esp,0xc
  00486955: 8d 45 ec                                       lea    eax,[ebp-0x14]
  00486958: 50                                             push   eax
  00486959: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0048695c: e8 57 b1 04 00                                 call   0x4d1ab8
  00486961: 47                                             inc    edi
  00486962: eb bf                                          jmp    0x486923
  00486964: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  00486967: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0048696a: 51                                             push   ecx
  0048696b: 8b ce                                          mov    ecx,esi
  0048696d: e8 da b0 04 00                                 call   0x4d1a4c
  00486972: c7 45 e8 01 00 00 00                           mov    DWORD PTR [ebp-0x18],0x1
  00486979: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0048697c: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00486980: e8 bb b0 04 00                                 call   0x4d1a40
  00486985: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00486988: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0048698c: e8 af b0 04 00                                 call   0x4d1a40
  00486991: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00486994: 5f                                             pop    edi
  00486995: 8b c6                                          mov    eax,esi
  00486997: 5e                                             pop    esi
  00486998: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0048699f: 8b e5                                          mov    esp,ebp
  004869a1: 5d                                             pop    ebp
  004869a2: c2 04 00                                       ret    0x4

; [004869B0] TFCPacket::?SetBuffer@TFCPacket ; instruction=55 ; plage_limite=00486A30 ; issues=0
  004869b0: 55                                             push   ebp
  004869b1: 8b ec                                          mov    ebp,esp
  004869b3: 51                                             push   ecx
  004869b4: 53                                             push   ebx
  004869b5: 8b 5d 0c                                       mov    ebx,DWORD PTR [ebp+0xc]
  004869b8: 83 fb 06                                       cmp    ebx,0x6
  004869bb: 56                                             push   esi
  004869bc: 57                                             push   edi
  004869bd: 89 4d fc                                       mov    DWORD PTR [ebp-0x4],ecx
  004869c0: 73 0b                                          jae    0x4869cd
  004869c2: 33 c0                                          xor    eax,eax
  004869c4: 5f                                             pop    edi
  004869c5: 5e                                             pop    esi
  004869c6: 5b                                             pop    ebx
  004869c7: 8b e5                                          mov    esp,ebp
  004869c9: 5d                                             pop    ebp
  004869ca: c2 08 00                                       ret    0x8
  004869cd: 8b 51 0c                                       mov    edx,DWORD PTR [ecx+0xc]
  004869d0: 51                                             push   ecx
  004869d1: 8b c4                                          mov    eax,esp
  004869d3: 51                                             push   ecx
  004869d4: 8d 71 04                                       lea    esi,[ecx+0x4]
  004869d7: 54                                             push   esp
  004869d8: 8b ce                                          mov    ecx,esi
  004869da: 89 10                                          mov    DWORD PTR [eax],edx
  004869dc: e8 3f 02 00 00                                 call   0x486c20
  004869e1: 8d 45 0c                                       lea    eax,[ebp+0xc]
  004869e4: 50                                             push   eax
  004869e5: 8b ce                                          mov    ecx,esi
  004869e7: e8 54 02 00 00                                 call   0x486c40
  004869ec: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  004869ef: 03 df                                          add    ebx,edi
  004869f1: 3b fb                                          cmp    edi,ebx
  004869f3: 74 1a                                          je     0x486a0f
  004869f5: 57                                             push   edi
  004869f6: 51                                             push   ecx
  004869f7: 54                                             push   esp
  004869f8: 8b ce                                          mov    ecx,esi
  004869fa: e8 31 02 00 00                                 call   0x486c30
  004869ff: 8d 4d 0c                                       lea    ecx,[ebp+0xc]
  00486a02: 51                                             push   ecx
  00486a03: 8b ce                                          mov    ecx,esi
  00486a05: e8 96 02 00 00                                 call   0x486ca0
  00486a0a: 47                                             inc    edi
  00486a0b: 3b fb                                          cmp    edi,ebx
  00486a0d: 75 e6                                          jne    0x4869f5
  00486a0f: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  00486a12: 5f                                             pop    edi
  00486a13: 5e                                             pop    esi
  00486a14: c7 42 14 00 00 00 00                           mov    DWORD PTR [edx+0x14],0x0
  00486a1b: b8 01 00 00 00                                 mov    eax,0x1
  00486a20: 5b                                             pop    ebx
  00486a21: 8b e5                                          mov    esp,ebp
  00486a23: 5d                                             pop    ebp
  00486a24: c2 08 00                                       ret    0x8

; [00486A30] TFCPacket::?GetBuffer@TFCPacket ; instruction=19 ; plage_limite=00486A60 ; issues=0
  00486a30: 55                                             push   ebp
  00486a31: 8b ec                                          mov    ebp,esp
  00486a33: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  00486a36: 8b 41 08                                       mov    eax,DWORD PTR [ecx+0x8]
  00486a39: 89 02                                          mov    DWORD PTR [edx],eax
  00486a3b: 8b 51 08                                       mov    edx,DWORD PTR [ecx+0x8]
  00486a3e: 85 d2                                          test   edx,edx
  00486a40: 75 0b                                          jne    0x486a4d
  00486a42: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00486a45: 33 c0                                          xor    eax,eax
  00486a47: 89 01                                          mov    DWORD PTR [ecx],eax
  00486a49: 5d                                             pop    ebp
  00486a4a: c2 08 00                                       ret    0x8
  00486a4d: 8b 41 0c                                       mov    eax,DWORD PTR [ecx+0xc]
  00486a50: 2b c2                                          sub    eax,edx
  00486a52: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  00486a55: 89 02                                          mov    DWORD PTR [edx],eax
  00486a57: 5d                                             pop    ebp
  00486a58: c2 08 00                                       ret    0x8

; [00486A60] TFCPacket::?GetPacketID@TFCPacket ; instruction=36 ; plage_limite=00488060 ; issues=0
  00486a60: 55                                             push   ebp
  00486a61: 8b ec                                          mov    ebp,esp
  00486a63: 51                                             push   ecx
  00486a64: 56                                             push   esi
  00486a65: 8b f1                                          mov    esi,ecx
  00486a67: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  00486a6a: 33 d2                                          xor    edx,edx
  00486a6c: 3b ca                                          cmp    ecx,edx
  00486a6e: 75 04                                          jne    0x486a74
  00486a70: 33 c0                                          xor    eax,eax
  00486a72: eb 05                                          jmp    0x486a79
  00486a74: 8b 46 0c                                       mov    eax,DWORD PTR [esi+0xc]
  00486a77: 2b c1                                          sub    eax,ecx
  00486a79: 83 c0 fc                                       add    eax,0xfffffffc
  00486a7c: 83 f8 02                                       cmp    eax,0x2
  00486a7f: 72 22                                          jb     0x486aa3
  00486a81: 57                                             push   edi
  00486a82: 8b 7e 14                                       mov    edi,DWORD PTR [esi+0x14]
  00486a85: 8d 45 fc                                       lea    eax,[ebp-0x4]
  00486a88: 50                                             push   eax
  00486a89: 8b ce                                          mov    ecx,esi
  00486a8b: 89 56 14                                       mov    DWORD PTR [esi+0x14],edx
  00486a8e: 89 55 fc                                       mov    DWORD PTR [ebp-0x4],edx
  00486a91: e8 1a fa ff ff                                 call   0x4864b0
  00486a96: 66 8b 45 fc                                    mov    ax,WORD PTR [ebp-0x4]
  00486a9a: 89 7e 14                                       mov    DWORD PTR [esi+0x14],edi
  00486a9d: 5f                                             pop    edi
  00486a9e: 5e                                             pop    esi
  00486a9f: 8b e5                                          mov    esp,ebp
  00486aa1: 5d                                             pop    ebp
  00486aa2: c3                                             ret
  00486aa3: 66 33 c0                                       xor    ax,ax
  00486aa6: 5e                                             pop    esi
  00486aa7: 8b e5                                          mov    esp,ebp
  00486aa9: 5d                                             pop    ebp
  00486aaa: c3                                             ret
