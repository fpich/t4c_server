; Passe 75 — SESSIONS_ET_RESSOURCES
; PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions atteignables statiquement depuis les entrées définies, vérifiées octet par octet.
; NOP/INT3 exclues du comptage, zones data non traversées; branches indirectes non résolues.

; [00451A20] CPlayerManager::?Create@CPlayerManager ; instruction=36 ; plage_limite=00451AC0 ; issues=0
  00451a20: 68 90 01 00 00                                 push   0x190
  00451a25: e8 d6 ca 07 00                                 call   0x4ce500
  00451a2a: 83 c4 04                                       add    esp,0x4
  00451a2d: a3 a0 4a 51 00                                 mov    ds:0x514aa0,eax
  00451a32: 33 c0                                          xor    eax,eax
  00451a34: 8b 0d a0 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa0
  00451a3a: c7 04 08 00 00 00 00                           mov    DWORD PTR [eax+ecx*1],0x0
  00451a41: 83 c0 04                                       add    eax,0x4
  00451a44: 3d 90 01 00 00                                 cmp    eax,0x190
  00451a49: 7c e9                                          jl     0x451a34
  00451a4b: 56                                             push   esi
  00451a4c: 8b 35 58 e3 4d 00                              mov    esi,DWORD PTR ds:0x4de358
  00451a52: 6a 00                                          push   0x0
  00451a54: 6a 00                                          push   0x0
  00451a56: 68 70 28 45 00                                 push   0x452870
  00451a5b: c7 05 a4 4a 51 00 00 00 00 00                  mov    DWORD PTR ds:0x514aa4,0x0
  00451a65: c7 05 a8 4a 51 00 64 00 00 00                  mov    DWORD PTR ds:0x514aa8,0x64
  00451a6f: c7 05 30 4a 51 00 01 00 00 00                  mov    DWORD PTR ds:0x514a30,0x1
  00451a79: ff d6                                          call   esi
  00451a7b: 83 c4 0c                                       add    esp,0xc
  00451a7e: 6a 01                                          push   0x1
  00451a80: 6a 00                                          push   0x0
  00451a82: 6a 00                                          push   0x0
  00451a84: 6a ff                                          push   0xffffffff
  00451a86: a3 ac 4a 51 00                                 mov    ds:0x514aac,eax
  00451a8b: c7 05 c0 4a 51 00 00 00 00 00                  mov    DWORD PTR ds:0x514ac0,0x0
  00451a95: ff 15 08 e1 4d 00                              call   DWORD PTR ds:0x4de108
  00451a9b: 6a 00                                          push   0x0
  00451a9d: 6a 00                                          push   0x0
  00451a9f: 68 80 20 45 00                                 push   0x452080
  00451aa4: a3 b0 4a 51 00                                 mov    ds:0x514ab0,eax
  00451aa9: ff d6                                          call   esi
  00451aab: 83 c4 0c                                       add    esp,0xc
  00451aae: a3 b8 4a 51 00                                 mov    ds:0x514ab8,eax
  00451ab3: 5e                                             pop    esi
  00451ab4: c3                                             ret

; [00451AC0] CPlayerManager::?Destroy@CPlayerManager ; instruction=40 ; plage_limite=00451B50 ; issues=0
  00451ac0: a1 ac 4a 51 00                                 mov    eax,ds:0x514aac
  00451ac5: 68 88 13 00 00                                 push   0x1388
  00451aca: 50                                             push   eax
  00451acb: c7 05 c0 4a 51 00 01 00 00 00                  mov    DWORD PTR ds:0x514ac0,0x1
  00451ad5: c7 05 30 4a 51 00 00 00 00 00                  mov    DWORD PTR ds:0x514a30,0x0
  00451adf: ff 15 1c e1 4d 00                              call   DWORD PTR ds:0x4de11c
  00451ae5: 3d 02 01 00 00                                 cmp    eax,0x102
  00451aea: 75 0f                                          jne    0x451afb
  00451aec: 8b 0d ac 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aac
  00451af2: 6a 01                                          push   0x1
  00451af4: 51                                             push   ecx
  00451af5: ff 15 18 e1 4d 00                              call   DWORD PTR ds:0x4de118
  00451afb: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  00451b00: 56                                             push   esi
  00451b01: 33 f6                                          xor    esi,esi
  00451b03: 85 c0                                          test   eax,eax
  00451b05: 7e 1d                                          jle    0x451b24
  00451b07: 8b 15 a0 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa0
  00451b0d: 8b 0c b2                                       mov    ecx,DWORD PTR [edx+esi*4]
  00451b10: 85 c9                                          test   ecx,ecx
  00451b12: 74 06                                          je     0x451b1a
  00451b14: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00451b16: 6a 01                                          push   0x1
  00451b18: ff 10                                          call   DWORD PTR [eax]
  00451b1a: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  00451b1f: 46                                             inc    esi
  00451b20: 3b f0                                          cmp    esi,eax
  00451b22: 7c e3                                          jl     0x451b07
  00451b24: 8b 0d b0 4a 51 00                              mov    ecx,DWORD PTR ds:0x514ab0
  00451b2a: 51                                             push   ecx
  00451b2b: ff 15 40 e1 4d 00                              call   DWORD PTR ds:0x4de140
  00451b31: 8b 15 b0 4a 51 00                              mov    edx,DWORD PTR ds:0x514ab0
  00451b37: 52                                             push   edx
  00451b38: ff 15 38 e1 4d 00                              call   DWORD PTR ds:0x4de138
  00451b3e: a1 a0 4a 51 00                                 mov    eax,ds:0x514aa0
  00451b43: 50                                             push   eax
  00451b44: e8 47 c9 07 00                                 call   0x4ce490
  00451b49: 83 c4 04                                       add    esp,0x4
  00451b4c: 5e                                             pop    esi
  00451b4d: c3                                             ret

; [00451B50] CPlayerManager::?GrowBufferSpace@CPlayerManager ; instruction=82 ; plage_limite=00451C80 ; issues=0
  00451b50: a1 58 4a 51 00                                 mov    eax,ds:0x514a58
  00451b55: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451b5a: ff 50 04                                       call   DWORD PTR [eax+0x4]
  00451b5d: 8b 15 80 4a 51 00                              mov    edx,DWORD PTR ds:0x514a80
  00451b63: b9 80 4a 51 00                                 mov    ecx,0x514a80
  00451b68: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451b6b: 85 c0                                          test   eax,eax
  00451b6d: 74 2e                                          je     0x451b9d
  00451b6f: a1 38 4a 51 00                                 mov    eax,ds:0x514a38
  00451b74: b9 38 4a 51 00                                 mov    ecx,0x514a38
  00451b79: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  00451b7c: 85 c0                                          test   eax,eax
  00451b7e: 75 2d                                          jne    0x451bad
  00451b80: 8b 15 58 4a 51 00                              mov    edx,DWORD PTR ds:0x514a58
  00451b86: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451b8b: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00451b8e: a1 80 4a 51 00                                 mov    eax,ds:0x514a80
  00451b93: b9 80 4a 51 00                                 mov    ecx,0x514a80
  00451b98: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00451b9b: eb b3                                          jmp    0x451b50
  00451b9d: 8b 15 58 4a 51 00                              mov    edx,DWORD PTR ds:0x514a58
  00451ba3: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451ba8: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00451bab: eb a3                                          jmp    0x451b50
  00451bad: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  00451bb2: 8d 0c 85 28 00 00 00                           lea    ecx,[eax*4+0x28]
  00451bb9: 56                                             push   esi
  00451bba: 51                                             push   ecx
  00451bbb: e8 40 c9 07 00                                 call   0x4ce500
  00451bc0: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  00451bc6: 8b f0                                          mov    esi,eax
  00451bc8: 83 c4 04                                       add    esp,0x4
  00451bcb: 33 c0                                          xor    eax,eax
  00451bcd: 85 c9                                          test   ecx,ecx
  00451bcf: 7e 17                                          jle    0x451be8
  00451bd1: 8b 15 a0 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa0
  00451bd7: 8b 0c 82                                       mov    ecx,DWORD PTR [edx+eax*4]
  00451bda: 89 0c 86                                       mov    DWORD PTR [esi+eax*4],ecx
  00451bdd: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  00451be3: 40                                             inc    eax
  00451be4: 3b c1                                          cmp    eax,ecx
  00451be6: 7c e9                                          jl     0x451bd1
  00451be8: 83 c1 0a                                       add    ecx,0xa
  00451beb: 3b c1                                          cmp    eax,ecx
  00451bed: 89 0d a8 4a 51 00                              mov    DWORD PTR ds:0x514aa8,ecx
  00451bf3: 7d 17                                          jge    0x451c0c
  00451bf5: 8d 0c 86                                       lea    ecx,[esi+eax*4]
  00451bf8: c7 01 00 00 00 00                              mov    DWORD PTR [ecx],0x0
  00451bfe: 8b 15 a8 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa8
  00451c04: 40                                             inc    eax
  00451c05: 83 c1 04                                       add    ecx,0x4
  00451c08: 3b c2                                          cmp    eax,edx
  00451c0a: 7c ec                                          jl     0x451bf8
  00451c0c: 8b 15 a0 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa0
  00451c12: 52                                             push   edx
  00451c13: e8 48 04 ff ff                                 call   0x442060
  00451c18: 83 c4 04                                       add    esp,0x4
  00451c1b: 89 35 a0 4a 51 00                              mov    DWORD PTR ds:0x514aa0,esi
  00451c21: e8 da 25 fe ff                                 call   0x434200
  00451c26: 8b 10                                          mov    edx,DWORD PTR [eax]
  00451c28: 68 3c 4a 51 00                                 push   0x514a3c
  00451c2d: 8b c8                                          mov    ecx,eax
  00451c2f: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451c32: 8b 35 fc e0 4d 00                              mov    esi,DWORD PTR ds:0x4de0fc
  00451c38: 68 40 4a 51 00                                 push   0x514a40
  00451c3d: ff d6                                          call   esi
  00451c3f: e8 bc 25 fe ff                                 call   0x434200
  00451c44: 8b 10                                          mov    edx,DWORD PTR [eax]
  00451c46: 68 84 4a 51 00                                 push   0x514a84
  00451c4b: 8b c8                                          mov    ecx,eax
  00451c4d: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451c50: 68 88 4a 51 00                                 push   0x514a88
  00451c55: ff d6                                          call   esi
  00451c57: e8 a4 25 fe ff                                 call   0x434200
  00451c5c: 8b 10                                          mov    edx,DWORD PTR [eax]
  00451c5e: 68 5c 4a 51 00                                 push   0x514a5c
  00451c63: 8b c8                                          mov    ecx,eax
  00451c65: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451c68: 68 60 4a 51 00                                 push   0x514a60
  00451c6d: ff d6                                          call   esi
  00451c6f: 5e                                             pop    esi
  00451c70: c3                                             ret

; [00451C80] CPlayerManager::?CreatePlayer@CPlayerManager ; instruction=184 ; plage_limite=00451EE0 ; issues=0
  00451c80: 55                                             push   ebp
  00451c81: 8b ec                                          mov    ebp,esp
  00451c83: 6a ff                                          push   0xffffffff
  00451c85: 68 73 6b 4d 00                                 push   0x4d6b73
  00451c8a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00451c90: 50                                             push   eax
  00451c91: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00451c98: 83 ec 08                                       sub    esp,0x8
  00451c9b: a1 c0 4a 51 00                                 mov    eax,ds:0x514ac0
  00451ca0: 85 c0                                          test   eax,eax
  00451ca2: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  00451ca9: 74 1f                                          je     0x451cca
  00451cab: 8d 4d 18                                       lea    ecx,[ebp+0x18]
  00451cae: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00451cb5: e8 86 fd 07 00                                 call   0x4d1a40
  00451cba: 33 c0                                          xor    eax,eax
  00451cbc: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00451cbf: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00451cc6: 8b e5                                          mov    esp,ebp
  00451cc8: 5d                                             pop    ebp
  00451cc9: c3                                             ret
  00451cca: 53                                             push   ebx
  00451ccb: 56                                             push   esi
  00451ccc: 57                                             push   edi
  00451ccd: 68 20 01 00 00                                 push   0x120
  00451cd2: e8 19 03 ff ff                                 call   0x441ff0
  00451cd7: 83 c4 04                                       add    esp,0x4
  00451cda: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  00451cdd: 85 c0                                          test   eax,eax
  00451cdf: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00451ce3: 74 0b                                          je     0x451cf0
  00451ce5: 8b c8                                          mov    ecx,eax
  00451ce7: e8 94 28 00 00                                 call   0x454580
  00451cec: 8b f8                                          mov    edi,eax
  00451cee: eb 02                                          jmp    0x451cf2
  00451cf0: 33 ff                                          xor    edi,edi
  00451cf2: 8b cf                                          mov    ecx,edi
  00451cf4: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  00451cf8: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  00451cfb: e8 80 5c 00 00                                 call   0x457980
  00451d00: e8 8b 05 02 00                                 call   0x472290
  00451d05: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  00451d08: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  00451d0b: 05 58 02 00 00                                 add    eax,0x258
  00451d10: 89 47 70                                       mov    DWORD PTR [edi+0x70],eax
  00451d13: 8d 47 24                                       lea    eax,[edi+0x24]
  00451d16: 89 08                                          mov    DWORD PTR [eax],ecx
  00451d18: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  00451d1b: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  00451d1e: 8b 55 14                                       mov    edx,DWORD PTR [ebp+0x14]
  00451d21: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  00451d24: 89 50 0c                                       mov    DWORD PTR [eax+0xc],edx
  00451d27: a1 58 4a 51 00                                 mov    eax,ds:0x514a58
  00451d2c: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451d31: ff 50 04                                       call   DWORD PTR [eax+0x4]
  00451d34: 8b 15 80 4a 51 00                              mov    edx,DWORD PTR ds:0x514a80
  00451d3a: b9 80 4a 51 00                                 mov    ecx,0x514a80
  00451d3f: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451d42: 85 c0                                          test   eax,eax
  00451d44: 74 2e                                          je     0x451d74
  00451d46: a1 38 4a 51 00                                 mov    eax,ds:0x514a38
  00451d4b: b9 38 4a 51 00                                 mov    ecx,0x514a38
  00451d50: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  00451d53: 85 c0                                          test   eax,eax
  00451d55: 75 2d                                          jne    0x451d84
  00451d57: 8b 15 58 4a 51 00                              mov    edx,DWORD PTR ds:0x514a58
  00451d5d: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451d62: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00451d65: a1 80 4a 51 00                                 mov    eax,ds:0x514a80
  00451d6a: b9 80 4a 51 00                                 mov    ecx,0x514a80
  00451d6f: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00451d72: eb b3                                          jmp    0x451d27
  00451d74: 8b 15 58 4a 51 00                              mov    edx,DWORD PTR ds:0x514a58
  00451d7a: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451d7f: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00451d82: eb a3                                          jmp    0x451d27
  00451d84: 8b 1d a8 4a 51 00                              mov    ebx,DWORD PTR ds:0x514aa8
  00451d8a: 33 c9                                          xor    ecx,ecx
  00451d8c: 85 db                                          test   ebx,ebx
  00451d8e: c7 45 f0 00 00 00 00                           mov    DWORD PTR [ebp-0x10],0x0
  00451d95: 7e 43                                          jle    0x451dda
  00451d97: 8b 15 a0 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa0
  00451d9d: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00451da0: 85 c0                                          test   eax,eax
  00451da2: 0f 85 b7 00 00 00                              jne    0x451e5f
  00451da8: 8b 02                                          mov    eax,DWORD PTR [edx]
  00451daa: 85 c0                                          test   eax,eax
  00451dac: 74 19                                          je     0x451dc7
  00451dae: 8b 75 0c                                       mov    esi,DWORD PTR [ebp+0xc]
  00451db1: 39 70 28                                       cmp    DWORD PTR [eax+0x28],esi
  00451db4: 75 11                                          jne    0x451dc7
  00451db6: 66 8b 75 0a                                    mov    si,WORD PTR [ebp+0xa]
  00451dba: 66 39 70 26                                    cmp    WORD PTR [eax+0x26],si
  00451dbe: 75 07                                          jne    0x451dc7
  00451dc0: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  00451dc7: 41                                             inc    ecx
  00451dc8: 83 c2 04                                       add    edx,0x4
  00451dcb: 3b cb                                          cmp    ecx,ebx
  00451dcd: 7c ce                                          jl     0x451d9d
  00451dcf: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00451dd2: 85 c0                                          test   eax,eax
  00451dd4: 0f 85 85 00 00 00                              jne    0x451e5f
  00451dda: 33 f6                                          xor    esi,esi
  00451ddc: 33 c0                                          xor    eax,eax
  00451dde: 85 db                                          test   ebx,ebx
  00451de0: 7e 2a                                          jle    0x451e0c
  00451de2: 85 c0                                          test   eax,eax
  00451de4: 75 36                                          jne    0x451e1c
  00451de6: 8b 0d a0 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa0
  00451dec: 83 3c b1 00                                    cmp    DWORD PTR [ecx+esi*4],0x0
  00451df0: 75 11                                          jne    0x451e03
  00451df2: 89 3c b1                                       mov    DWORD PTR [ecx+esi*4],edi
  00451df5: 89 77 7c                                       mov    DWORD PTR [edi+0x7c],esi
  00451df8: 8b 1d a8 4a 51 00                              mov    ebx,DWORD PTR ds:0x514aa8
  00451dfe: b8 01 00 00 00                                 mov    eax,0x1
  00451e03: 46                                             inc    esi
  00451e04: 3b f3                                          cmp    esi,ebx
  00451e06: 7c da                                          jl     0x451de2
  00451e08: 85 c0                                          test   eax,eax
  00451e0a: 75 10                                          jne    0x451e1c
  00451e0c: e8 3f fd ff ff                                 call   0x451b50
  00451e11: a1 a0 4a 51 00                                 mov    eax,ds:0x514aa0
  00451e16: 89 3c b0                                       mov    DWORD PTR [eax+esi*4],edi
  00451e19: 89 77 7c                                       mov    DWORD PTR [edi+0x7c],esi
  00451e1c: 68 e0 5e 50 00                                 push   0x505ee0
  00451e21: 68 00 08 00 00                                 push   0x800
  00451e26: e8 15 ff 01 00                                 call   0x471d40
  00451e2b: 8b 15 a4 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa4
  00451e31: 83 c4 08                                       add    esp,0x8
  00451e34: 42                                             inc    edx
  00451e35: 6a 00                                          push   0x0
  00451e37: 6a 65                                          push   0x65
  00451e39: 89 15 a4 4a 51 00                              mov    DWORD PTR ds:0x514aa4,edx
  00451e3f: e8 3a c7 07 00                                 call   0x4ce57e
  00451e44: 8b c8                                          mov    ecx,eax
  00451e46: e8 2d c7 07 00                                 call   0x4ce578
  00451e4b: 8b 0d a4 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa4
  00451e51: 89 08                                          mov    DWORD PTR [eax],ecx
  00451e53: 8b 17                                          mov    edx,DWORD PTR [edi]
  00451e55: 8b cf                                          mov    ecx,edi
  00451e57: ff 52 04                                       call   DWORD PTR [edx+0x4]
  00451e5a: 8b 7d ec                                       mov    edi,DWORD PTR [ebp-0x14]
  00451e5d: eb 0e                                          jmp    0x451e6d
  00451e5f: 85 ff                                          test   edi,edi
  00451e61: 74 08                                          je     0x451e6b
  00451e63: 8b 07                                          mov    eax,DWORD PTR [edi]
  00451e65: 6a 01                                          push   0x1
  00451e67: 8b cf                                          mov    ecx,edi
  00451e69: ff 10                                          call   DWORD PTR [eax]
  00451e6b: 33 ff                                          xor    edi,edi
  00451e6d: e8 8e 23 fe ff                                 call   0x434200
  00451e72: 8b 10                                          mov    edx,DWORD PTR [eax]
  00451e74: 68 3c 4a 51 00                                 push   0x514a3c
  00451e79: 8b c8                                          mov    ecx,eax
  00451e7b: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451e7e: 8b 35 fc e0 4d 00                              mov    esi,DWORD PTR ds:0x4de0fc
  00451e84: 68 40 4a 51 00                                 push   0x514a40
  00451e89: ff d6                                          call   esi
  00451e8b: e8 70 23 fe ff                                 call   0x434200
  00451e90: 8b 10                                          mov    edx,DWORD PTR [eax]
  00451e92: 68 84 4a 51 00                                 push   0x514a84
  00451e97: 8b c8                                          mov    ecx,eax
  00451e99: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451e9c: 68 88 4a 51 00                                 push   0x514a88
  00451ea1: ff d6                                          call   esi
  00451ea3: e8 58 23 fe ff                                 call   0x434200
  00451ea8: 8b 10                                          mov    edx,DWORD PTR [eax]
  00451eaa: 68 5c 4a 51 00                                 push   0x514a5c
  00451eaf: 8b c8                                          mov    ecx,eax
  00451eb1: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451eb4: 68 60 4a 51 00                                 push   0x514a60
  00451eb9: ff d6                                          call   esi
  00451ebb: 8d 4d 18                                       lea    ecx,[ebp+0x18]
  00451ebe: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00451ec5: e8 76 fb 07 00                                 call   0x4d1a40
  00451eca: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00451ecd: 8b c7                                          mov    eax,edi
  00451ecf: 5f                                             pop    edi
  00451ed0: 5e                                             pop    esi
  00451ed1: 5b                                             pop    ebx
  00451ed2: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00451ed9: 8b e5                                          mov    esp,ebp
  00451edb: 5d                                             pop    ebp
  00451edc: c3                                             ret

; [00451EE0] CPlayerManager::?DeletePlayer@CPlayerManager ; instruction=121 ; plage_limite=00452080 ; issues=0
  00451ee0: 55                                             push   ebp
  00451ee1: 8b ec                                          mov    ebp,esp
  00451ee3: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00451ee9: 6a ff                                          push   0xffffffff
  00451eeb: 68 88 6b 4d 00                                 push   0x4d6b88
  00451ef0: 50                                             push   eax
  00451ef1: a1 c0 4a 51 00                                 mov    eax,ds:0x514ac0
  00451ef6: 85 c0                                          test   eax,eax
  00451ef8: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00451eff: 56                                             push   esi
  00451f00: 57                                             push   edi
  00451f01: 0f 85 66 01 00 00                              jne    0x45206d
  00451f07: a1 58 4a 51 00                                 mov    eax,ds:0x514a58
  00451f0c: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451f11: ff 50 04                                       call   DWORD PTR [eax+0x4]
  00451f14: 8b 15 80 4a 51 00                              mov    edx,DWORD PTR ds:0x514a80
  00451f1a: b9 80 4a 51 00                                 mov    ecx,0x514a80
  00451f1f: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00451f22: 85 c0                                          test   eax,eax
  00451f24: 74 2e                                          je     0x451f54
  00451f26: a1 38 4a 51 00                                 mov    eax,ds:0x514a38
  00451f2b: b9 38 4a 51 00                                 mov    ecx,0x514a38
  00451f30: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  00451f33: 85 c0                                          test   eax,eax
  00451f35: 75 2d                                          jne    0x451f64
  00451f37: 8b 15 58 4a 51 00                              mov    edx,DWORD PTR ds:0x514a58
  00451f3d: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451f42: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00451f45: a1 80 4a 51 00                                 mov    eax,ds:0x514a80
  00451f4a: b9 80 4a 51 00                                 mov    ecx,0x514a80
  00451f4f: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00451f52: eb b3                                          jmp    0x451f07
  00451f54: 8b 15 58 4a 51 00                              mov    edx,DWORD PTR ds:0x514a58
  00451f5a: b9 58 4a 51 00                                 mov    ecx,0x514a58
  00451f5f: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00451f62: eb a3                                          jmp    0x451f07
  00451f64: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  00451f6a: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  00451f6d: 33 f6                                          xor    esi,esi
  00451f6f: 33 c0                                          xor    eax,eax
  00451f71: 85 c9                                          test   ecx,ecx
  00451f73: 7e 28                                          jle    0x451f9d
  00451f75: 8b 0d a0 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa0
  00451f7b: 85 f6                                          test   esi,esi
  00451f7d: 75 1e                                          jne    0x451f9d
  00451f7f: 39 3c 81                                       cmp    DWORD PTR [ecx+eax*4],edi
  00451f82: 75 0e                                          jne    0x451f92
  00451f84: 89 34 81                                       mov    DWORD PTR [ecx+eax*4],esi
  00451f87: 8b 0d a0 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa0
  00451f8d: be 01 00 00 00                                 mov    esi,0x1
  00451f92: 8b 15 a8 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa8
  00451f98: 40                                             inc    eax
  00451f99: 3b c2                                          cmp    eax,edx
  00451f9b: 7c de                                          jl     0x451f7b
  00451f9d: 57                                             push   edi
  00451f9e: e8 ad 20 00 00                                 call   0x454050
  00451fa3: 8b c8                                          mov    ecx,eax
  00451fa5: e8 86 42 fd ff                                 call   0x426230
  00451faa: 85 f6                                          test   esi,esi
  00451fac: 0f 84 bb 00 00 00                              je     0x45206d
  00451fb2: 8b 15 a4 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa4
  00451fb8: 4a                                             dec    edx
  00451fb9: 6a 00                                          push   0x0
  00451fbb: 6a 65                                          push   0x65
  00451fbd: 89 15 a4 4a 51 00                              mov    DWORD PTR ds:0x514aa4,edx
  00451fc3: e8 b6 c5 07 00                                 call   0x4ce57e
  00451fc8: 8b c8                                          mov    ecx,eax
  00451fca: e8 a9 c5 07 00                                 call   0x4ce578
  00451fcf: 8b 0d a4 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa4
  00451fd5: 8d 55 08                                       lea    edx,[ebp+0x8]
  00451fd8: 89 08                                          mov    DWORD PTR [eax],ecx
  00451fda: 52                                             push   edx
  00451fdb: 8b cf                                          mov    ecx,edi
  00451fdd: e8 7e 6c 00 00                                 call   0x458c60
  00451fe2: 8b 4f 20                                       mov    ecx,DWORD PTR [edi+0x20]
  00451fe5: 8b 00                                          mov    eax,DWORD PTR [eax]
  00451fe7: 51                                             push   ecx
  00451fe8: 50                                             push   eax
  00451fe9: 68 fc 5e 50 00                                 push   0x505efc
  00451fee: 6a 04                                          push   0x4
  00451ff0: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  00451ff7: e8 44 fd 01 00                                 call   0x471d40
  00451ffc: 83 c4 10                                       add    esp,0x10
  00451fff: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  00452002: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00452009: e8 32 fa 07 00                                 call   0x4d1a40
  0045200e: e8 ed 21 fe ff                                 call   0x434200
  00452013: 8b 10                                          mov    edx,DWORD PTR [eax]
  00452015: 68 3c 4a 51 00                                 push   0x514a3c
  0045201a: 8b c8                                          mov    ecx,eax
  0045201c: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  0045201f: 8b 35 fc e0 4d 00                              mov    esi,DWORD PTR ds:0x4de0fc
  00452025: 68 40 4a 51 00                                 push   0x514a40
  0045202a: ff d6                                          call   esi
  0045202c: e8 cf 21 fe ff                                 call   0x434200
  00452031: 8b 10                                          mov    edx,DWORD PTR [eax]
  00452033: 68 84 4a 51 00                                 push   0x514a84
  00452038: 8b c8                                          mov    ecx,eax
  0045203a: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  0045203d: 68 88 4a 51 00                                 push   0x514a88
  00452042: ff d6                                          call   esi
  00452044: e8 b7 21 fe ff                                 call   0x434200
  00452049: 8b 10                                          mov    edx,DWORD PTR [eax]
  0045204b: 68 5c 4a 51 00                                 push   0x514a5c
  00452050: 8b c8                                          mov    ecx,eax
  00452052: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00452055: 68 60 4a 51 00                                 push   0x514a60
  0045205a: ff d6                                          call   esi
  0045205c: a1 b0 4a 51 00                                 mov    eax,ds:0x514ab0
  00452061: 6a 00                                          push   0x0
  00452063: 57                                             push   edi
  00452064: 6a 00                                          push   0x0
  00452066: 50                                             push   eax
  00452067: ff 15 0c e1 4d 00                              call   DWORD PTR ds:0x4de10c
  0045206d: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00452070: 5f                                             pop    edi
  00452071: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00452078: 5e                                             pop    esi
  00452079: 8b e5                                          mov    esp,ebp
  0045207b: 5d                                             pop    ebp
  0045207c: c3                                             ret

; [00452080] CPlayerManager::?AsyncDeletePlayer@CPlayerManager ; instruction=390 ; plage_limite=00452530 ; issues=0
  00452080: 55                                             push   ebp
  00452081: 8b ec                                          mov    ebp,esp
  00452083: 6a ff                                          push   0xffffffff
  00452085: 68 d0 6b 4d 00                                 push   0x4d6bd0
  0045208a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00452090: 50                                             push   eax
  00452091: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00452098: 81 ec ac 00 00 00                              sub    esp,0xac
  0045209e: 53                                             push   ebx
  0045209f: 56                                             push   esi
  004520a0: 8b 35 14 e1 4d 00                              mov    esi,DWORD PTR ds:0x4de114
  004520a6: 57                                             push   edi
  004520a7: ff d6                                          call   esi
  004520a9: 50                                             push   eax
  004520aa: 68 00 60 50 00                                 push   0x506000
  004520af: 6a 04                                          push   0x4
  004520b1: e8 8a fc 01 00                                 call   0x471d40
  004520b6: 83 c4 0c                                       add    esp,0xc
  004520b9: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  004520bc: e8 5f 16 fe ff                                 call   0x433720
  004520c1: 33 db                                          xor    ebx,ebx
  004520c3: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  004520c6: ff d6                                          call   esi
  004520c8: 50                                             push   eax
  004520c9: 68 e0 93 04 00                                 push   0x493e0
  004520ce: 51                                             push   ecx
  004520cf: 8b cc                                          mov    ecx,esp
  004520d1: 89 65 d4                                       mov    DWORD PTR [ebp-0x2c],esp
  004520d4: 68 e8 5f 50 00                                 push   0x505fe8
  004520d9: e8 86 f9 07 00                                 call   0x4d1a64
  004520de: a1 b8 4a 51 00                                 mov    eax,ds:0x514ab8
  004520e3: 50                                             push   eax
  004520e4: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  004520e7: e8 f4 16 fe ff                                 call   0x4337e0
  004520ec: 39 1d 30 4a 51 00                              cmp    DWORD PTR ds:0x514a30,ebx
  004520f2: 0f 84 0d 04 00 00                              je     0x452505
  004520f8: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  004520fb: 89 5d e4                                       mov    DWORD PTR [ebp-0x1c],ebx
  004520fe: 89 5d ec                                       mov    DWORD PTR [ebp-0x14],ebx
  00452101: 89 5d d8                                       mov    DWORD PTR [ebp-0x28],ebx
  00452104: e8 77 18 fe ff                                 call   0x433980
  00452109: 68 60 ea 00 00                                 push   0xea60
  0045210e: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  00452111: 51                                             push   ecx
  00452112: 8b 0d b0 4a 51 00                              mov    ecx,DWORD PTR ds:0x514ab0
  00452118: 8d 55 ec                                       lea    edx,[ebp-0x14]
  0045211b: 52                                             push   edx
  0045211c: 8d 45 e4                                       lea    eax,[ebp-0x1c]
  0045211f: 50                                             push   eax
  00452120: 51                                             push   ecx
  00452121: ff 15 10 e1 4d 00                              call   DWORD PTR ds:0x4de110
  00452127: 85 c0                                          test   eax,eax
  00452129: 0f 84 ca 03 00 00                              je     0x4524f9
  0045212f: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  00452132: e8 69 18 fe ff                                 call   0x4339a0
  00452137: 8b 75 ec                                       mov    esi,DWORD PTR [ebp-0x14]
  0045213a: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0045213d: 8b fe                                          mov    edi,esi
  0045213f: 83 c6 20                                       add    esi,0x20
  00452142: e8 09 cb fc ff                                 call   0x41ec50
  00452147: 8b cf                                          mov    ecx,edi
  00452149: e8 e2 4d 00 00                                 call   0x456f30
  0045214e: 68 58 01 00 00                                 push   0x158
  00452153: 68 b4 5f 50 00                                 push   0x505fb4
  00452158: 8b cf                                          mov    ecx,edi
  0045215a: e8 81 4e 00 00                                 call   0x456fe0
  0045215f: 8b cf                                          mov    ecx,edi
  00452161: e8 5a 64 00 00                                 call   0x4585c0
  00452166: 8b cf                                          mov    ecx,edi
  00452168: e8 33 58 00 00                                 call   0x4579a0
  0045216d: 85 c0                                          test   eax,eax
  0045216f: 74 46                                          je     0x4521b7
  00452171: 6a 05                                          push   0x5
  00452173: e8 98 fb 01 00                                 call   0x471d10
  00452178: 83 c4 04                                       add    esp,0x4
  0045217b: 85 c0                                          test   eax,eax
  0045217d: 74 38                                          je     0x4521b7
  0045217f: 8d 55 cc                                       lea    edx,[ebp-0x34]
  00452182: 52                                             push   edx
  00452183: 8b cf                                          mov    ecx,edi
  00452185: e8 d6 6a 00 00                                 call   0x458c60
  0045218a: 8b 00                                          mov    eax,DWORD PTR [eax]
  0045218c: 50                                             push   eax
  0045218d: 68 8c 5f 50 00                                 push   0x505f8c
  00452192: 6a 40                                          push   0x40
  00452194: 6a 05                                          push   0x5
  00452196: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0045219a: e8 71 fb 01 00                                 call   0x471d10
  0045219f: 83 c4 04                                       add    esp,0x4
  004521a2: 50                                             push   eax
  004521a3: e8 48 c9 07 00                                 call   0x4ceaf0
  004521a8: 83 c4 10                                       add    esp,0x10
  004521ab: 8d 4d cc                                       lea    ecx,[ebp-0x34]
  004521ae: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004521b2: e8 89 f8 07 00                                 call   0x4d1a40
  004521b7: 39 5f 4c                                       cmp    DWORD PTR [edi+0x4c],ebx
  004521ba: 0f 84 03 01 00 00                              je     0x4522c3
  004521c0: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  004521c3: e8 96 f8 07 00                                 call   0x4d1a5e
  004521c8: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  004521cb: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  004521cf: e8 8a f8 07 00                                 call   0x4d1a5e
  004521d4: 8d 45 c8                                       lea    eax,[ebp-0x38]
  004521d7: 50                                             push   eax
  004521d8: 8b cf                                          mov    ecx,edi
  004521da: c6 45 fc 03                                    mov    BYTE PTR [ebp-0x4],0x3
  004521de: e8 7d 6a 00 00                                 call   0x458c60
  004521e3: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  004521e5: 8b 10                                          mov    edx,DWORD PTR [eax]
  004521e7: 51                                             push   ecx
  004521e8: 52                                             push   edx
  004521e9: 8d 45 e8                                       lea    eax,[ebp-0x18]
  004521ec: 68 68 5f 50 00                                 push   0x505f68
  004521f1: 50                                             push   eax
  004521f2: c6 45 fc 04                                    mov    BYTE PTR [ebp-0x4],0x4
  004521f6: e8 99 f8 07 00                                 call   0x4d1a94
  004521fb: 83 c4 10                                       add    esp,0x10
  004521fe: 8d 4d c8                                       lea    ecx,[ebp-0x38]
  00452201: c6 45 fc 03                                    mov    BYTE PTR [ebp-0x4],0x3
  00452205: e8 36 f8 07 00                                 call   0x4d1a40
  0045220a: 39 5f 44                                       cmp    DWORD PTR [edi+0x44],ebx
  0045220d: 74 75                                          je     0x452284
  0045220f: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  00452212: 51                                             push   ecx
  00452213: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  00452215: e8 36 b8 fc ff                                 call   0x41da50
  0045221a: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0045221d: 8b 1e                                          mov    ebx,DWORD PTR [esi]
  0045221f: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00452221: 8d 85 6c ff ff ff                              lea    eax,[ebp-0x94]
  00452227: 50                                             push   eax
  00452228: 8b cb                                          mov    ecx,ebx
  0045222a: c6 45 fc 05                                    mov    BYTE PTR [ebp-0x4],0x5
  0045222e: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00452231: 8b 48 08                                       mov    ecx,DWORD PTR [eax+0x8]
  00452234: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00452236: 51                                             push   ecx
  00452237: 8d 85 48 ff ff ff                              lea    eax,[ebp-0xb8]
  0045223d: 50                                             push   eax
  0045223e: 8b cb                                          mov    ecx,ebx
  00452240: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00452243: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  00452246: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00452248: 51                                             push   ecx
  00452249: 8d 45 84                                       lea    eax,[ebp-0x7c]
  0045224c: 50                                             push   eax
  0045224d: 8b cb                                          mov    ecx,ebx
  0045224f: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00452252: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00452254: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  00452257: 8b 02                                          mov    eax,DWORD PTR [edx]
  00452259: 51                                             push   ecx
  0045225a: 50                                             push   eax
  0045225b: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0045225e: 68 24 5f 50 00                                 push   0x505f24
  00452263: 51                                             push   ecx
  00452264: e8 2b f8 07 00                                 call   0x4d1a94
  00452269: 83 c4 18                                       add    esp,0x18
  0045226c: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0045226f: c6 45 fc 03                                    mov    BYTE PTR [ebp-0x4],0x3
  00452273: e8 c8 f7 07 00                                 call   0x4d1a40
  00452278: 8d 55 dc                                       lea    edx,[ebp-0x24]
  0045227b: 52                                             push   edx
  0045227c: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  0045227f: e8 34 f8 07 00                                 call   0x4d1ab8
  00452284: 6a 05                                          push   0x5
  00452286: e8 85 fa 01 00                                 call   0x471d10
  0045228b: 83 c4 04                                       add    esp,0x4
  0045228e: 85 c0                                          test   eax,eax
  00452290: 74 19                                          je     0x4522ab
  00452292: 8b 45 e8                                       mov    eax,DWORD PTR [ebp-0x18]
  00452295: 50                                             push   eax
  00452296: 6a 40                                          push   0x40
  00452298: 6a 05                                          push   0x5
  0045229a: e8 71 fa 01 00                                 call   0x471d10
  0045229f: 83 c4 04                                       add    esp,0x4
  004522a2: 50                                             push   eax
  004522a3: e8 48 c8 07 00                                 call   0x4ceaf0
  004522a8: 83 c4 0c                                       add    esp,0xc
  004522ab: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  004522ae: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  004522b2: e8 89 f7 07 00                                 call   0x4d1a40
  004522b7: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  004522ba: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004522be: e8 7d f7 07 00                                 call   0x4d1a40
  004522c3: 8b cf                                          mov    ecx,edi
  004522c5: e8 76 3a 00 00                                 call   0x455d40
  004522ca: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  004522cc: 8b 51 30                                       mov    edx,DWORD PTR [ecx+0x30]
  004522cf: 83 c1 30                                       add    ecx,0x30
  004522d2: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004522d5: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  004522d7: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004522d9: 8d 95 54 ff ff ff                              lea    edx,[ebp-0xac]
  004522df: 52                                             push   edx
  004522e0: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  004522e3: 66 8b 40 08                                    mov    ax,WORD PTR [eax+0x8]
  004522e7: 50                                             push   eax
  004522e8: e8 d3 fb 01 00                                 call   0x471ec0
  004522ed: 8b d8                                          mov    ebx,eax
  004522ef: 83 c4 04                                       add    esp,0x4
  004522f2: 85 db                                          test   ebx,ebx
  004522f4: 74 36                                          je     0x45232c
  004522f6: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  004522f8: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  004522fb: e8 00 94 03 00                                 call   0x48b700
  00452300: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  00452303: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00452305: 50                                             push   eax
  00452306: 8d 85 78 ff ff ff                              lea    eax,[ebp-0x88]
  0045230c: 50                                             push   eax
  0045230d: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  00452310: 8b 10                                          mov    edx,DWORD PTR [eax]
  00452312: 83 ec 0c                                       sub    esp,0xc
  00452315: 8b cc                                          mov    ecx,esp
  00452317: 89 11                                          mov    DWORD PTR [ecx],edx
  00452319: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  0045231c: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  0045231f: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00452322: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  00452325: 8b cb                                          mov    ecx,ebx
  00452327: e8 64 ed 05 00                                 call   0x4b1090
  0045232c: 8b 47 44                                       mov    eax,DWORD PTR [edi+0x44]
  0045232f: 85 c0                                          test   eax,eax
  00452331: 74 40                                          je     0x452373
  00452333: 8b 1e                                          mov    ebx,DWORD PTR [esi]
  00452335: 6a 00                                          push   0x0
  00452337: 8b cb                                          mov    ecx,ebx
  00452339: e8 c2 93 03 00                                 call   0x48b700
  0045233e: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00452340: 50                                             push   eax
  00452341: 6a 14                                          push   0x14
  00452343: 8d 85 60 ff ff ff                              lea    eax,[ebp-0xa0]
  00452349: 50                                             push   eax
  0045234a: 8b cb                                          mov    ecx,ebx
  0045234c: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  0045234f: 8b 10                                          mov    edx,DWORD PTR [eax]
  00452351: 83 ec 0c                                       sub    esp,0xc
  00452354: 8b cc                                          mov    ecx,esp
  00452356: 89 11                                          mov    DWORD PTR [ecx],edx
  00452358: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  0045235b: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  0045235e: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00452361: 89 41 08                                       mov    DWORD PTR [ecx+0x8],eax
  00452364: e8 97 d8 fb ff                                 call   0x40fc00
  00452369: 8b 47 44                                       mov    eax,DWORD PTR [edi+0x44]
  0045236c: 83 c4 18                                       add    esp,0x18
  0045236f: 85 c0                                          test   eax,eax
  00452371: 75 0e                                          jne    0x452381
  00452373: 8b 47 50                                       mov    eax,DWORD PTR [edi+0x50]
  00452376: 85 c0                                          test   eax,eax
  00452378: 75 07                                          jne    0x452381
  0045237a: 8b 47 48                                       mov    eax,DWORD PTR [edi+0x48]
  0045237d: 85 c0                                          test   eax,eax
  0045237f: 74 09                                          je     0x45238a
  00452381: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  00452383: 6a 00                                          push   0x0
  00452385: e8 c6 19 fc ff                                 call   0x413d50
  0045238a: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  0045238c: 6a 00                                          push   0x0
  0045238e: e8 fd 0b fc ff                                 call   0x412f90
  00452393: 8b 47 44                                       mov    eax,DWORD PTR [edi+0x44]
  00452396: 85 c0                                          test   eax,eax
  00452398: 74 31                                          je     0x4523cb
  0045239a: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  0045239c: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0045239e: ff 92 3c 01 00 00                              call   DWORD PTR [edx+0x13c]
  004523a4: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  004523a6: 50                                             push   eax
  004523a7: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004523a9: ff 50 2c                                       call   DWORD PTR [eax+0x2c]
  004523ac: 50                                             push   eax
  004523ad: 51                                             push   ecx
  004523ae: 8b cc                                          mov    ecx,esp
  004523b0: 89 65 f0                                       mov    DWORD PTR [ebp-0x10],esp
  004523b3: 51                                             push   ecx
  004523b4: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  004523b6: e8 95 b6 fc ff                                 call   0x41da50
  004523bb: 8b cf                                          mov    ecx,edi
  004523bd: e8 4e 47 00 00                                 call   0x456b10
  004523c2: 6a 00                                          push   0x0
  004523c4: 8b cf                                          mov    ecx,edi
  004523c6: e8 35 27 00 00                                 call   0x454b00
  004523cb: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  004523cd: 8b 51 30                                       mov    edx,DWORD PTR [ecx+0x30]
  004523d0: 83 c1 30                                       add    ecx,0x30
  004523d3: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004523d6: 6a 08                                          push   0x8
  004523d8: e8 13 fc fe ff                                 call   0x441ff0
  004523dd: 8b d8                                          mov    ebx,eax
  004523df: 8b 06                                          mov    eax,DWORD PTR [esi]
  004523e1: 83 c4 04                                       add    esp,0x4
  004523e4: 89 03                                          mov    DWORD PTR [ebx],eax
  004523e6: c7 43 04 01 00 00 00                           mov    DWORD PTR [ebx+0x4],0x1
  004523ed: 50                                             push   eax
  004523ee: 8b 45 04                                       mov    eax,DWORD PTR [ebp+0x4]
  004523f1: 89 45 d4                                       mov    DWORD PTR [ebp-0x2c],eax
  004523f4: 58                                             pop    eax
  004523f5: e8 06 1e fe ff                                 call   0x434200
  004523fa: 8b 10                                          mov    edx,DWORD PTR [eax]
  004523fc: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  004523ff: 51                                             push   ecx
  00452400: 8b 4d d4                                       mov    ecx,DWORD PTR [ebp-0x2c]
  00452403: 68 a0 43 51 00                                 push   0x5143a0
  00452408: 51                                             push   ecx
  00452409: 8b c8                                          mov    ecx,eax
  0045240b: ff 12                                          call   DWORD PTR [edx]
  0045240d: 68 a8 43 51 00                                 push   0x5143a8
  00452412: ff 15 f8 e0 4d 00                              call   DWORD PTR ds:0x4de0f8
  00452418: e8 e3 1d fe ff                                 call   0x434200
  0045241d: 8b 10                                          mov    edx,DWORD PTR [eax]
  0045241f: 68 a4 43 51 00                                 push   0x5143a4
  00452424: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  00452427: 51                                             push   ecx
  00452428: 8b c8                                          mov    ecx,eax
  0045242a: ff 52 04                                       call   DWORD PTR [edx+0x4]
  0045242d: a1 c8 43 51 00                                 mov    eax,ds:0x5143c8
  00452432: 8b 15 d8 43 51 00                              mov    edx,DWORD PTR ds:0x5143d8
  00452438: 33 f6                                          xor    esi,esi
  0045243a: 42                                             inc    edx
  0045243b: 3b c6                                          cmp    eax,esi
  0045243d: a3 c0 43 51 00                                 mov    ds:0x5143c0,eax
  00452442: 89 35 e0 43 51 00                              mov    DWORD PTR ds:0x5143e0,esi
  00452448: c6 05 d4 43 51 00 08                           mov    BYTE PTR ds:0x5143d4,0x8
  0045244f: a3 cc 43 51 00                                 mov    ds:0x5143cc,eax
  00452454: 89 15 d8 43 51 00                              mov    DWORD PTR ds:0x5143d8,edx
  0045245a: 6a 0c                                          push   0xc
  0045245c: 75 31                                          jne    0x45248f
  0045245e: e8 8d fb fe ff                                 call   0x441ff0
  00452463: 83 c4 04                                       add    esp,0x4
  00452466: 3b c6                                          cmp    eax,esi
  00452468: 74 07                                          je     0x452471
  0045246a: 89 30                                          mov    DWORD PTR [eax],esi
  0045246c: 89 70 04                                       mov    DWORD PTR [eax+0x4],esi
  0045246f: eb 02                                          jmp    0x452473
  00452471: 33 c0                                          xor    eax,eax
  00452473: a3 c0 43 51 00                                 mov    ds:0x5143c0,eax
  00452478: a3 c8 43 51 00                                 mov    ds:0x5143c8,eax
  0045247d: a3 c4 43 51 00                                 mov    ds:0x5143c4,eax
  00452482: 89 30                                          mov    DWORD PTR [eax],esi
  00452484: 8b 15 c0 43 51 00                              mov    edx,DWORD PTR ds:0x5143c0
  0045248a: 89 72 04                                       mov    DWORD PTR [edx+0x4],esi
  0045248d: eb 37                                          jmp    0x4524c6
  0045248f: e8 5c fb fe ff                                 call   0x441ff0
  00452494: 83 c4 04                                       add    esp,0x4
  00452497: 3b c6                                          cmp    eax,esi
  00452499: 74 07                                          je     0x4524a2
  0045249b: 89 30                                          mov    DWORD PTR [eax],esi
  0045249d: 89 70 04                                       mov    DWORD PTR [eax+0x4],esi
  004524a0: eb 02                                          jmp    0x4524a4
  004524a2: 33 c0                                          xor    eax,eax
  004524a4: 8b 0d c0 43 51 00                              mov    ecx,DWORD PTR ds:0x5143c0
  004524aa: 89 01                                          mov    DWORD PTR [ecx],eax
  004524ac: 8b 15 cc 43 51 00                              mov    edx,DWORD PTR ds:0x5143cc
  004524b2: a3 c8 43 51 00                                 mov    ds:0x5143c8,eax
  004524b7: a3 c0 43 51 00                                 mov    ds:0x5143c0,eax
  004524bc: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  004524bf: a1 c0 43 51 00                                 mov    eax,ds:0x5143c0
  004524c4: 89 30                                          mov    DWORD PTR [eax],esi
  004524c6: 8b 0d c0 43 51 00                              mov    ecx,DWORD PTR ds:0x5143c0
  004524cc: 89 59 08                                       mov    DWORD PTR [ecx+0x8],ebx
  004524cf: e8 2c 1d fe ff                                 call   0x434200
  004524d4: 8b 10                                          mov    edx,DWORD PTR [eax]
  004524d6: 68 a4 43 51 00                                 push   0x5143a4
  004524db: 8b c8                                          mov    ecx,eax
  004524dd: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  004524e0: 68 a8 43 51 00                                 push   0x5143a8
  004524e5: ff 15 fc e0 4d 00                              call   DWORD PTR ds:0x4de0fc
  004524eb: 3b fe                                          cmp    edi,esi
  004524ed: 74 08                                          je     0x4524f7
  004524ef: 8b 07                                          mov    eax,DWORD PTR [edi]
  004524f1: 6a 01                                          push   0x1
  004524f3: 8b cf                                          mov    ecx,edi
  004524f5: ff 10                                          call   DWORD PTR [eax]
  004524f7: 33 db                                          xor    ebx,ebx
  004524f9: 39 1d 30 4a 51 00                              cmp    DWORD PTR ds:0x514a30,ebx
  004524ff: 0f 85 f3 fb ff ff                              jne    0x4520f8
  00452505: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  00452508: e8 93 13 fe ff                                 call   0x4338a0
  0045250d: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  00452510: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00452517: e8 34 12 fe ff                                 call   0x433750
  0045251c: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0045251f: 5f                                             pop    edi
  00452520: 5e                                             pop    esi
  00452521: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00452528: 5b                                             pop    ebx
  00452529: 8b e5                                          mov    esp,ebp
  0045252b: 5d                                             pop    ebp
  0045252c: c3                                             ret

; [00452530] CPlayerManager::?GetPlayerResource@CPlayerManager ; instruction=97 ; plage_limite=00452640 ; issues=0
  00452530: 55                                             push   ebp
  00452531: 8b ec                                          mov    ebp,esp
  00452533: 6a ff                                          push   0xffffffff
  00452535: 68 e8 6b 4d 00                                 push   0x4d6be8
  0045253a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00452540: 50                                             push   eax
  00452541: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00452548: 83 ec 0c                                       sub    esp,0xc
  0045254b: a1 c0 4a 51 00                                 mov    eax,ds:0x514ac0
  00452550: 57                                             push   edi
  00452551: 33 ff                                          xor    edi,edi
  00452553: 3b c7                                          cmp    eax,edi
  00452555: 74 11                                          je     0x452568
  00452557: 33 c0                                          xor    eax,eax
  00452559: 5f                                             pop    edi
  0045255a: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0045255d: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00452564: 8b e5                                          mov    esp,ebp
  00452566: 5d                                             pop    ebp
  00452567: c3                                             ret
  00452568: 53                                             push   ebx
  00452569: 56                                             push   esi
  0045256a: 8b 75 14                                       mov    esi,DWORD PTR [ebp+0x14]
  0045256d: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  00452570: 32 db                                          xor    bl,bl
  00452572: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  00452575: 83 7d f0 64                                    cmp    DWORD PTR [ebp-0x10],0x64
  00452579: 0f 8d a1 00 00 00                              jge    0x452620
  0045257f: a1 38 4a 51 00                                 mov    eax,ds:0x514a38
  00452584: b9 38 4a 51 00                                 mov    ecx,0x514a38
  00452589: 89 4d e8                                       mov    DWORD PTR [ebp-0x18],ecx
  0045258c: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0045258f: 8b 15 a8 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa8
  00452595: 33 c0                                          xor    eax,eax
  00452597: 3b d0                                          cmp    edx,eax
  00452599: 89 45 fc                                       mov    DWORD PTR [ebp-0x4],eax
  0045259c: 7e 37                                          jle    0x4525d5
  0045259e: 8b 0d a0 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa0
  004525a4: 85 ff                                          test   edi,edi
  004525a6: 75 35                                          jne    0x4525dd
  004525a8: 8b 31                                          mov    esi,DWORD PTR [ecx]
  004525aa: 85 f6                                          test   esi,esi
  004525ac: 74 1f                                          je     0x4525cd
  004525ae: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  004525b1: 39 7e 28                                       cmp    DWORD PTR [esi+0x28],edi
  004525b4: 75 14                                          jne    0x4525ca
  004525b6: 66 8b 7d 0a                                    mov    di,WORD PTR [ebp+0xa]
  004525ba: 66 39 7e 26                                    cmp    WORD PTR [esi+0x26],di
  004525be: 75 0a                                          jne    0x4525ca
  004525c0: bf 01 00 00 00                                 mov    edi,0x1
  004525c5: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004525c8: eb 03                                          jmp    0x4525cd
  004525ca: 8b 7d ec                                       mov    edi,DWORD PTR [ebp-0x14]
  004525cd: 40                                             inc    eax
  004525ce: 83 c1 04                                       add    ecx,0x4
  004525d1: 3b c2                                          cmp    eax,edx
  004525d3: 7c cf                                          jl     0x4525a4
  004525d5: 85 ff                                          test   edi,edi
  004525d7: 75 04                                          jne    0x4525dd
  004525d9: 33 f6                                          xor    esi,esi
  004525db: eb 0b                                          jmp    0x4525e8
  004525dd: 8b 16                                          mov    edx,DWORD PTR [esi]
  004525df: 8b ce                                          mov    ecx,esi
  004525e1: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  004525e4: 85 c0                                          test   eax,eax
  004525e6: 74 02                                          je     0x4525ea
  004525e8: b3 01                                          mov    bl,0x1
  004525ea: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  004525ed: a1 38 4a 51 00                                 mov    eax,ds:0x514a38
  004525f2: 41                                             inc    ecx
  004525f3: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  004525f6: b9 38 4a 51 00                                 mov    ecx,0x514a38
  004525fb: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00452602: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00452605: 84 db                                          test   bl,bl
  00452607: 0f 84 68 ff ff ff                              je     0x452575
  0045260d: 8b c6                                          mov    eax,esi
  0045260f: 5e                                             pop    esi
  00452610: 5b                                             pop    ebx
  00452611: 5f                                             pop    edi
  00452612: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00452615: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0045261c: 8b e5                                          mov    esp,ebp
  0045261e: 5d                                             pop    ebp
  0045261f: c3                                             ret
  00452620: 84 db                                          test   bl,bl
  00452622: 75 02                                          jne    0x452626
  00452624: 33 f6                                          xor    esi,esi
  00452626: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00452629: 8b c6                                          mov    eax,esi
  0045262b: 5e                                             pop    esi
  0045262c: 5b                                             pop    ebx
  0045262d: 5f                                             pop    edi
  0045262e: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00452635: 8b e5                                          mov    esp,ebp
  00452637: 5d                                             pop    ebp
  00452638: c3                                             ret

; [00452640] CPlayerManager::?FreePlayerResource@CPlayerManager ; instruction=10 ; plage_limite=00452660 ; issues=0
  00452640: 55                                             push   ebp
  00452641: 8b ec                                          mov    ebp,esp
  00452643: a1 c0 4a 51 00                                 mov    eax,ds:0x514ac0
  00452648: 85 c0                                          test   eax,eax
  0045264a: 75 08                                          jne    0x452654
  0045264c: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0045264f: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00452651: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00452654: 5d                                             pop    ebp
  00452655: c3                                             ret

; [00452870] CPlayerManager::?PlayerMaintenance@CPlayerManager ; instruction=723 ; plage_limite=004531E0 ; issues=0
  00452870: 55                                             push   ebp
  00452871: 8b ec                                          mov    ebp,esp
  00452873: 6a ff                                          push   0xffffffff
  00452875: 68 49 6c 4d 00                                 push   0x4d6c49
  0045287a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00452880: 50                                             push   eax
  00452881: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00452888: 81 ec f4 00 00 00                              sub    esp,0xf4
  0045288e: 53                                             push   ebx
  0045288f: 56                                             push   esi
  00452890: 8b 35 14 e1 4d 00                              mov    esi,DWORD PTR ds:0x4de114
  00452896: 57                                             push   edi
  00452897: ff d6                                          call   esi
  00452899: 50                                             push   eax
  0045289a: 68 50 61 50 00                                 push   0x506150
  0045289f: 6a 04                                          push   0x4
  004528a1: e8 9a f4 01 00                                 call   0x471d40
  004528a6: a1 b4 42 51 00                                 mov    eax,ds:0x5142b4
  004528ab: 25 ff ff 00 00                                 and    eax,0xffff
  004528b0: 8d 04 40                                       lea    eax,[eax+eax*2]
  004528b3: 8d 04 80                                       lea    eax,[eax+eax*4]
  004528b6: c1 e0 02                                       shl    eax,0x2
  004528b9: 83 c4 0c                                       add    esp,0xc
  004528bc: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  004528c2: 89 45 88                                       mov    DWORD PTR [ebp-0x78],eax
  004528c5: e8 56 0e fe ff                                 call   0x433720
  004528ca: 33 ff                                          xor    edi,edi
  004528cc: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  004528cf: ff d6                                          call   esi
  004528d1: 50                                             push   eax
  004528d2: 68 c0 d4 01 00                                 push   0x1d4c0
  004528d7: 51                                             push   ecx
  004528d8: 8b cc                                          mov    ecx,esp
  004528da: 89 65 8c                                       mov    DWORD PTR [ebp-0x74],esp
  004528dd: 68 34 61 50 00                                 push   0x506134
  004528e2: e8 7d f1 07 00                                 call   0x4d1a64
  004528e7: a1 ac 4a 51 00                                 mov    eax,ds:0x514aac
  004528ec: 50                                             push   eax
  004528ed: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  004528f3: e8 e8 0e fe ff                                 call   0x4337e0
  004528f8: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  004528fb: 51                                             push   ecx
  004528fc: c7 45 ac 8c e5 4d 00                           mov    DWORD PTR [ebp-0x54],0x4de58c
  00452903: c7 45 b0 ff ff ff ff                           mov    DWORD PTR [ebp-0x50],0xffffffff
  0045290a: ff 15 dc e0 4d 00                              call   DWORD PTR ds:0x4de0dc
  00452910: 89 7d d0                                       mov    DWORD PTR [ebp-0x30],edi
  00452913: 89 7d d4                                       mov    DWORD PTR [ebp-0x2c],edi
  00452916: 89 7d d8                                       mov    DWORD PTR [ebp-0x28],edi
  00452919: 89 7d dc                                       mov    DWORD PTR [ebp-0x24],edi
  0045291c: c7 45 ac 08 f4 4d 00                           mov    DWORD PTR [ebp-0x54],0x4df408
  00452923: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  00452926: c6 45 e0 08                                    mov    BYTE PTR [ebp-0x20],0x8
  0045292a: 89 7d e4                                       mov    DWORD PTR [ebp-0x1c],edi
  0045292d: 66 39 3d b6 42 51 00                           cmp    WORD PTR ds:0x5142b6,di
  00452934: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00452938: 74 0d                                          je     0x452947
  0045293a: 8d 55 9c                                       lea    edx,[ebp-0x64]
  0045293d: 52                                             push   edx
  0045293e: ff 15 78 e3 4d 00                              call   DWORD PTR ds:0x4de378
  00452944: 83 c4 04                                       add    esp,0x4
  00452947: 39 3d 30 4a 51 00                              cmp    DWORD PTR ds:0x514a30,edi
  0045294d: 0f 84 55 07 00 00                              je     0x4530a8
  00452953: 33 ff                                          xor    edi,edi
  00452955: 83 cb ff                                       or     ebx,0xffffffff
  00452958: eb 05                                          jmp    0x45295f
  0045295a: 83 cb ff                                       or     ebx,0xffffffff
  0045295d: 33 ff                                          xor    edi,edi
  0045295f: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  00452965: e8 46 10 fe ff                                 call   0x4339b0
  0045296a: 50                                             push   eax
  0045296b: 8b 45 04                                       mov    eax,DWORD PTR [ebp+0x4]
  0045296e: 89 45 80                                       mov    DWORD PTR [ebp-0x80],eax
  00452971: 58                                             pop    eax
  00452972: e8 89 18 fe ff                                 call   0x434200
  00452977: 8b 10                                          mov    edx,DWORD PTR [eax]
  00452979: 8d 4d 94                                       lea    ecx,[ebp-0x6c]
  0045297c: 51                                             push   ecx
  0045297d: 8b 4d 80                                       mov    ecx,DWORD PTR [ebp-0x80]
  00452980: 68 58 4a 51 00                                 push   0x514a58
  00452985: 51                                             push   ecx
  00452986: 8b c8                                          mov    ecx,eax
  00452988: ff 12                                          call   DWORD PTR [edx]
  0045298a: 68 60 4a 51 00                                 push   0x514a60
  0045298f: ff 15 f8 e0 4d 00                              call   DWORD PTR ds:0x4de0f8
  00452995: e8 66 18 fe ff                                 call   0x434200
  0045299a: 8b 10                                          mov    edx,DWORD PTR [eax]
  0045299c: 68 5c 4a 51 00                                 push   0x514a5c
  004529a1: 8d 4d 94                                       lea    ecx,[ebp-0x6c]
  004529a4: 51                                             push   ecx
  004529a5: 8b c8                                          mov    ecx,eax
  004529a7: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004529aa: e8 d1 ee ff ff                                 call   0x451880
  004529af: 8b f0                                          mov    esi,eax
  004529b1: 3b f7                                          cmp    esi,edi
  004529b3: 89 75 a8                                       mov    DWORD PTR [ebp-0x58],esi
  004529b6: 0f 84 0f 01 00 00                              je     0x452acb
  004529bc: 8b ce                                          mov    ecx,esi
  004529be: e8 ed df fd ff                                 call   0x4309b0
  004529c3: 8b d8                                          mov    ebx,eax
  004529c5: 8b 4b 04                                       mov    ecx,DWORD PTR [ebx+0x4]
  004529c8: 3b cf                                          cmp    ecx,edi
  004529ca: 0f 84 ef 00 00 00                              je     0x452abf
  004529d0: 8b 43 08                                       mov    eax,DWORD PTR [ebx+0x8]
  004529d3: 2b c1                                          sub    eax,ecx
  004529d5: c1 f8 04                                       sar    eax,0x4
  004529d8: 0f 84 e1 00 00 00                              je     0x452abf
  004529de: 50                                             push   eax
  004529df: 68 14 61 50 00                                 push   0x506114
  004529e4: 68 00 04 00 00                                 push   0x400
  004529e9: e8 52 f3 01 00                                 call   0x471d40
  004529ee: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  004529f4: 33 c0                                          xor    eax,eax
  004529f6: 83 c4 0c                                       add    esp,0xc
  004529f9: 3b cf                                          cmp    ecx,edi
  004529fb: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004529fe: 0f 8e bb 00 00 00                              jle    0x452abf
  00452a04: eb 02                                          jmp    0x452a08
  00452a06: 33 ff                                          xor    edi,edi
  00452a08: 8b 15 a0 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa0
  00452a0e: 8b 34 82                                       mov    esi,DWORD PTR [edx+eax*4]
  00452a11: 3b f7                                          cmp    esi,edi
  00452a13: 0f 84 8c 00 00 00                              je     0x452aa5
  00452a19: 8b 43 04                                       mov    eax,DWORD PTR [ebx+0x4]
  00452a1c: 3b 43 08                                       cmp    eax,DWORD PTR [ebx+0x8]
  00452a1f: 0f 84 80 00 00 00                              je     0x452aa5
  00452a25: 8d 78 02                                       lea    edi,[eax+0x2]
  00452a28: 8b 47 02                                       mov    eax,DWORD PTR [edi+0x2]
  00452a2b: 3b 46 28                                       cmp    eax,DWORD PTR [esi+0x28]
  00452a2e: 75 68                                          jne    0x452a98
  00452a30: 66 8b 0f                                       mov    cx,WORD PTR [edi]
  00452a33: 66 3b 4e 26                                    cmp    cx,WORD PTR [esi+0x26]
  00452a37: 75 5f                                          jne    0x452a98
  00452a39: 68 f0 60 50 00                                 push   0x5060f0
  00452a3e: 68 00 04 00 00                                 push   0x400
  00452a43: e8 f8 f2 01 00                                 call   0x471d40
  00452a48: 6a 05                                          push   0x5
  00452a4a: e8 c1 f2 01 00                                 call   0x471d10
  00452a4f: 83 c4 0c                                       add    esp,0xc
  00452a52: 85 c0                                          test   eax,eax
  00452a54: 74 38                                          je     0x452a8e
  00452a56: 8d 55 84                                       lea    edx,[ebp-0x7c]
  00452a59: 52                                             push   edx
  00452a5a: 8b ce                                          mov    ecx,esi
  00452a5c: e8 ff 61 00 00                                 call   0x458c60
  00452a61: 8b 00                                          mov    eax,DWORD PTR [eax]
  00452a63: 50                                             push   eax
  00452a64: 68 98 60 50 00                                 push   0x506098
  00452a69: 6a 40                                          push   0x40
  00452a6b: 6a 05                                          push   0x5
  00452a6d: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  00452a71: e8 9a f2 01 00                                 call   0x471d10
  00452a76: 83 c4 04                                       add    esp,0x4
  00452a79: 50                                             push   eax
  00452a7a: e8 71 c0 07 00                                 call   0x4ceaf0
  00452a7f: 83 c4 10                                       add    esp,0x10
  00452a82: 8d 4d 84                                       lea    ecx,[ebp-0x7c]
  00452a85: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00452a89: e8 b2 ef 07 00                                 call   0x4d1a40
  00452a8e: c7 86 18 01 00 00 01 00 00 00                  mov    DWORD PTR [esi+0x118],0x1
  00452a98: 8b 43 08                                       mov    eax,DWORD PTR [ebx+0x8]
  00452a9b: 83 c7 10                                       add    edi,0x10
  00452a9e: 8d 4f fe                                       lea    ecx,[edi-0x2]
  00452aa1: 3b c8                                          cmp    ecx,eax
  00452aa3: 75 83                                          jne    0x452a28
  00452aa5: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00452aa8: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  00452aae: 40                                             inc    eax
  00452aaf: 3b c1                                          cmp    eax,ecx
  00452ab1: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  00452ab4: 0f 8c 4c ff ff ff                              jl     0x452a06
  00452aba: 8b 75 a8                                       mov    esi,DWORD PTR [ebp-0x58]
  00452abd: 33 ff                                          xor    edi,edi
  00452abf: 6a 01                                          push   0x1
  00452ac1: 8b ce                                          mov    ecx,esi
  00452ac3: e8 08 df fd ff                                 call   0x4309d0
  00452ac8: 83 cb ff                                       or     ebx,0xffffffff
  00452acb: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  00452ad0: 3b c7                                          cmp    eax,edi
  00452ad2: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  00452ad5: 0f 8e a4 03 00 00                              jle    0x452e7f
  00452adb: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  00452ae1: e8 ca 0e fe ff                                 call   0x4339b0
  00452ae6: 8b 15 a0 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa0
  00452aec: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00452aef: 8b 34 82                                       mov    esi,DWORD PTR [edx+eax*4]
  00452af2: 3b f7                                          cmp    esi,edi
  00452af4: 0f 84 71 03 00 00                              je     0x452e6b
  00452afa: 8b 16                                          mov    edx,DWORD PTR [esi]
  00452afc: 8b ce                                          mov    ecx,esi
  00452afe: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00452b01: 85 c0                                          test   eax,eax
  00452b03: 0f 84 62 03 00 00                              je     0x452e6b
  00452b09: 39 be 18 01 00 00                              cmp    DWORD PTR [esi+0x118],edi
  00452b0f: 75 0f                                          jne    0x452b20
  00452b11: 8b ce                                          mov    ecx,esi
  00452b13: e8 88 4e 00 00                                 call   0x4579a0
  00452b18: 85 c0                                          test   eax,eax
  00452b1a: 0f 84 cb 00 00 00                              je     0x452beb
  00452b20: 8b ce                                          mov    ecx,esi
  00452b22: e8 e9 45 00 00                                 call   0x457110
  00452b27: 84 c0                                          test   al,al
  00452b29: 0f 85 bc 00 00 00                              jne    0x452beb
  00452b2f: 39 be 18 01 00 00                              cmp    DWORD PTR [esi+0x118],edi
  00452b35: 74 30                                          je     0x452b67
  00452b37: 8d 45 8c                                       lea    eax,[ebp-0x74]
  00452b3a: 50                                             push   eax
  00452b3b: 8b ce                                          mov    ecx,esi
  00452b3d: e8 1e 61 00 00                                 call   0x458c60
  00452b42: 8b 00                                          mov    eax,DWORD PTR [eax]
  00452b44: 50                                             push   eax
  00452b45: 68 64 60 50 00                                 push   0x506064
  00452b4a: 68 00 08 00 00                                 push   0x800
  00452b4f: c6 45 fc 03                                    mov    BYTE PTR [ebp-0x4],0x3
  00452b53: e8 e8 f1 01 00                                 call   0x471d40
  00452b58: 83 c4 0c                                       add    esp,0xc
  00452b5b: 8d 4d 8c                                       lea    ecx,[ebp-0x74]
  00452b5e: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00452b62: e8 d9 ee 07 00                                 call   0x4d1a40
  00452b67: 8b 45 d4                                       mov    eax,DWORD PTR [ebp-0x2c]
  00452b6a: 8b 55 e4                                       mov    edx,DWORD PTR [ebp-0x1c]
  00452b6d: 42                                             inc    edx
  00452b6e: 3b c7                                          cmp    eax,edi
  00452b70: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00452b73: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  00452b76: c6 45 e0 08                                    mov    BYTE PTR [ebp-0x20],0x8
  00452b7a: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  00452b7d: 89 55 e4                                       mov    DWORD PTR [ebp-0x1c],edx
  00452b80: 6a 0c                                          push   0xc
  00452b82: 75 31                                          jne    0x452bb5
  00452b84: e8 67 f4 fe ff                                 call   0x441ff0
  00452b89: 83 c4 04                                       add    esp,0x4
  00452b8c: 3b c7                                          cmp    eax,edi
  00452b8e: 74 07                                          je     0x452b97
  00452b90: 89 38                                          mov    DWORD PTR [eax],edi
  00452b92: 89 78 04                                       mov    DWORD PTR [eax+0x4],edi
  00452b95: eb 02                                          jmp    0x452b99
  00452b97: 33 c0                                          xor    eax,eax
  00452b99: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00452b9c: 89 45 d4                                       mov    DWORD PTR [ebp-0x2c],eax
  00452b9f: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  00452ba2: 89 38                                          mov    DWORD PTR [eax],edi
  00452ba4: 8b 4d cc                                       mov    ecx,DWORD PTR [ebp-0x34]
  00452ba7: 89 79 04                                       mov    DWORD PTR [ecx+0x4],edi
  00452baa: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00452bad: 89 70 08                                       mov    DWORD PTR [eax+0x8],esi
  00452bb0: e9 af 02 00 00                                 jmp    0x452e64
  00452bb5: e8 36 f4 fe ff                                 call   0x441ff0
  00452bba: 83 c4 04                                       add    esp,0x4
  00452bbd: 3b c7                                          cmp    eax,edi
  00452bbf: 74 07                                          je     0x452bc8
  00452bc1: 89 38                                          mov    DWORD PTR [eax],edi
  00452bc3: 89 78 04                                       mov    DWORD PTR [eax+0x4],edi
  00452bc6: eb 02                                          jmp    0x452bca
  00452bc8: 33 c0                                          xor    eax,eax
  00452bca: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  00452bcd: 89 02                                          mov    DWORD PTR [edx],eax
  00452bcf: 8b 4d d8                                       mov    ecx,DWORD PTR [ebp-0x28]
  00452bd2: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00452bd5: 89 45 d4                                       mov    DWORD PTR [ebp-0x2c],eax
  00452bd8: 89 48 04                                       mov    DWORD PTR [eax+0x4],ecx
  00452bdb: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  00452bde: 89 3a                                          mov    DWORD PTR [edx],edi
  00452be0: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00452be3: 89 70 08                                       mov    DWORD PTR [eax+0x8],esi
  00452be6: e9 79 02 00 00                                 jmp    0x452e64
  00452beb: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00452bee: 8b 50 30                                       mov    edx,DWORD PTR [eax+0x30]
  00452bf1: 8d 48 30                                       lea    ecx,[eax+0x30]
  00452bf4: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00452bf7: 85 c0                                          test   eax,eax
  00452bf9: 74 59                                          je     0x452c54
  00452bfb: 8b ce                                          mov    ecx,esi
  00452bfd: e8 ee 4c 00 00                                 call   0x4578f0
  00452c02: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  00452c08: e8 73 0d fe ff                                 call   0x433980
  00452c0d: 8b ce                                          mov    ecx,esi
  00452c0f: e8 dc 55 00 00                                 call   0x4581f0
  00452c14: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  00452c1a: e8 81 0d fe ff                                 call   0x4339a0
  00452c1f: 39 7e 44                                       cmp    DWORD PTR [esi+0x44],edi
  00452c22: 74 1d                                          je     0x452c41
  00452c24: e8 67 f6 01 00                                 call   0x472290
  00452c29: 39 46 34                                       cmp    DWORD PTR [esi+0x34],eax
  00452c2c: 77 13                                          ja     0x452c41
  00452c2e: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00452c31: e8 ea b3 fc ff                                 call   0x41e020
  00452c36: e8 55 f6 01 00                                 call   0x472290
  00452c3b: 83 c0 28                                       add    eax,0x28
  00452c3e: 89 46 34                                       mov    DWORD PTR [esi+0x34],eax
  00452c41: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00452c44: e8 e7 a6 03 00                                 call   0x48d330
  00452c49: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00452c4c: 8d 48 30                                       lea    ecx,[eax+0x30]
  00452c4f: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00452c51: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00452c54: 8a 46 41                                       mov    al,BYTE PTR [esi+0x41]
  00452c57: 84 c0                                          test   al,al
  00452c59: 0f 84 05 02 00 00                              je     0x452e64
  00452c5f: 8b ce                                          mov    ecx,esi
  00452c61: e8 5a 4c 00 00                                 call   0x4578c0
  00452c66: dd 5d a4                                       fstp   QWORD PTR [ebp-0x5c]
  00452c69: 8b ce                                          mov    ecx,esi
  00452c6b: e8 c0 44 00 00                                 call   0x457130
  00452c70: 89 85 68 ff ff ff                              mov    DWORD PTR [ebp-0x98],eax
  00452c76: 89 bd 6c ff ff ff                              mov    DWORD PTR [ebp-0x94],edi
  00452c7c: df ad 68 ff ff ff                              fild   QWORD PTR [ebp-0x98]
  00452c82: dc 5d a4                                       fcomp  QWORD PTR [ebp-0x5c]
  00452c85: df e0                                          fnstsw ax
  00452c87: f6 c4 41                                       test   ah,0x41
  00452c8a: 0f 84 ab 00 00 00                              je     0x452d3b
  00452c90: 39 5e 38                                       cmp    DWORD PTR [esi+0x38],ebx
  00452c93: 0f 85 a2 00 00 00                              jne    0x452d3b
  00452c99: 68 58 13 51 00                                 push   0x511358
  00452c9e: e8 bd ad fe ff                                 call   0x43da60
  00452ca3: 50                                             push   eax
  00452ca4: 68 8c 2d 00 00                                 push   0x2d8c
  00452ca9: e8 42 ad fe ff                                 call   0x43d9f0
  00452cae: 83 c4 0c                                       add    esp,0xc
  00452cb1: 50                                             push   eax
  00452cb2: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  00452cb5: e8 aa ed 07 00                                 call   0x4d1a64
  00452cba: 8d 8d 38 ff ff ff                              lea    ecx,[ebp-0xc8]
  00452cc0: c6 45 fc 04                                    mov    BYTE PTR [ebp-0x4],0x4
  00452cc4: e8 27 31 03 00                                 call   0x485df0
  00452cc9: 6a 3f                                          push   0x3f
  00452ccb: 8d 8d 38 ff ff ff                              lea    ecx,[ebp-0xc8]
  00452cd1: c6 45 fc 05                                    mov    BYTE PTR [ebp-0x4],0x5
  00452cd5: e8 76 34 03 00                                 call   0x486150
  00452cda: 6a 1e                                          push   0x1e
  00452cdc: 8d 8d 38 ff ff ff                              lea    ecx,[ebp-0xc8]
  00452ce2: e8 69 34 03 00                                 call   0x486150
  00452ce7: 6a 03                                          push   0x3
  00452ce9: 8d 8d 38 ff ff ff                              lea    ecx,[ebp-0xc8]
  00452cef: e8 5c 34 03 00                                 call   0x486150
  00452cf4: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  00452cf7: 51                                             push   ecx
  00452cf8: 8d 8d 38 ff ff ff                              lea    ecx,[ebp-0xc8]
  00452cfe: e8 4d 36 03 00                                 call   0x486350
  00452d03: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00452d06: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00452d08: 8d 85 38 ff ff ff                              lea    eax,[ebp-0xc8]
  00452d0e: 50                                             push   eax
  00452d0f: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00452d15: e8 76 f5 01 00                                 call   0x472290
  00452d1a: 83 c0 64                                       add    eax,0x64
  00452d1d: 8d 8d 38 ff ff ff                              lea    ecx,[ebp-0xc8]
  00452d23: 89 46 38                                       mov    DWORD PTR [esi+0x38],eax
  00452d26: c6 45 fc 04                                    mov    BYTE PTR [ebp-0x4],0x4
  00452d2a: e8 51 31 03 00                                 call   0x485e80
  00452d2f: 8d 4d 90                                       lea    ecx,[ebp-0x70]
  00452d32: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00452d36: e8 05 ed 07 00                                 call   0x4d1a40
  00452d3b: 8b ce                                          mov    ecx,esi
  00452d3d: e8 ee 43 00 00                                 call   0x457130
  00452d42: 89 85 70 ff ff ff                              mov    DWORD PTR [ebp-0x90],eax
  00452d48: 89 bd 74 ff ff ff                              mov    DWORD PTR [ebp-0x8c],edi
  00452d4e: df ad 70 ff ff ff                              fild   QWORD PTR [ebp-0x90]
  00452d54: 8b ce                                          mov    ecx,esi
  00452d56: dd 5d a4                                       fstp   QWORD PTR [ebp-0x5c]
  00452d59: e8 62 4b 00 00                                 call   0x4578c0
  00452d5e: dc 6d a4                                       fsubr  QWORD PTR [ebp-0x5c]
  00452d61: 0f be 4e 40                                    movsx  ecx,BYTE PTR [esi+0x40]
  00452d65: 89 4d a8                                       mov    DWORD PTR [ebp-0x58],ecx
  00452d68: dc 0d 00 f4 4d 00                              fmul   QWORD PTR ds:0x4df400
  00452d6e: db 45 a8                                       fild   DWORD PTR [ebp-0x58]
  00452d71: de d9                                          fcompp
  00452d73: df e0                                          fnstsw ax
  00452d75: f6 c4 41                                       test   ah,0x41
  00452d78: 0f 85 e6 00 00 00                              jne    0x452e64
  00452d7e: 39 5e 38                                       cmp    DWORD PTR [esi+0x38],ebx
  00452d81: 0f 85 dd 00 00 00                              jne    0x452e64
  00452d87: 8b ce                                          mov    ecx,esi
  00452d89: e8 a2 43 00 00                                 call   0x457130
  00452d8e: 89 85 78 ff ff ff                              mov    DWORD PTR [ebp-0x88],eax
  00452d94: 89 bd 7c ff ff ff                              mov    DWORD PTR [ebp-0x84],edi
  00452d9a: df ad 78 ff ff ff                              fild   QWORD PTR [ebp-0x88]
  00452da0: 8b ce                                          mov    ecx,esi
  00452da2: dd 5d a4                                       fstp   QWORD PTR [ebp-0x5c]
  00452da5: e8 16 4b 00 00                                 call   0x4578c0
  00452daa: dc 6d a4                                       fsubr  QWORD PTR [ebp-0x5c]
  00452dad: dc 0d 00 f4 4d 00                              fmul   QWORD PTR ds:0x4df400
  00452db3: e8 c2 ef 07 00                                 call   0x4d1d7a
  00452db8: 8d 4d 98                                       lea    ecx,[ebp-0x68]
  00452dbb: 88 46 40                                       mov    BYTE PTR [esi+0x40],al
  00452dbe: e8 9b ec 07 00                                 call   0x4d1a5e
  00452dc3: 0f be 56 40                                    movsx  edx,BYTE PTR [esi+0x40]
  00452dc7: 42                                             inc    edx
  00452dc8: 52                                             push   edx
  00452dc9: 68 58 13 51 00                                 push   0x511358
  00452dce: c6 45 fc 06                                    mov    BYTE PTR [ebp-0x4],0x6
  00452dd2: e8 89 ac fe ff                                 call   0x43da60
  00452dd7: 50                                             push   eax
  00452dd8: 68 8d 2d 00 00                                 push   0x2d8d
  00452ddd: e8 0e ac fe ff                                 call   0x43d9f0
  00452de2: 83 c4 0c                                       add    esp,0xc
  00452de5: 50                                             push   eax
  00452de6: 8d 45 98                                       lea    eax,[ebp-0x68]
  00452de9: 50                                             push   eax
  00452dea: e8 a5 ec 07 00                                 call   0x4d1a94
  00452def: 83 c4 0c                                       add    esp,0xc
  00452df2: 8d 8d 50 ff ff ff                              lea    ecx,[ebp-0xb0]
  00452df8: e8 f3 2f 03 00                                 call   0x485df0
  00452dfd: 6a 3f                                          push   0x3f
  00452dff: 8d 8d 50 ff ff ff                              lea    ecx,[ebp-0xb0]
  00452e05: c6 45 fc 07                                    mov    BYTE PTR [ebp-0x4],0x7
  00452e09: e8 42 33 03 00                                 call   0x486150
  00452e0e: 6a 1e                                          push   0x1e
  00452e10: 8d 8d 50 ff ff ff                              lea    ecx,[ebp-0xb0]
  00452e16: e8 35 33 03 00                                 call   0x486150
  00452e1b: 6a 03                                          push   0x3
  00452e1d: 8d 8d 50 ff ff ff                              lea    ecx,[ebp-0xb0]
  00452e23: e8 28 33 03 00                                 call   0x486150
  00452e28: 8d 4d 98                                       lea    ecx,[ebp-0x68]
  00452e2b: 51                                             push   ecx
  00452e2c: 8d 8d 50 ff ff ff                              lea    ecx,[ebp-0xb0]
  00452e32: e8 19 35 03 00                                 call   0x486350
  00452e37: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00452e3a: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00452e3c: 8d 85 50 ff ff ff                              lea    eax,[ebp-0xb0]
  00452e42: 50                                             push   eax
  00452e43: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00452e49: 8d 8d 50 ff ff ff                              lea    ecx,[ebp-0xb0]
  00452e4f: c6 45 fc 06                                    mov    BYTE PTR [ebp-0x4],0x6
  00452e53: e8 28 30 03 00                                 call   0x485e80
  00452e58: 8d 4d 98                                       lea    ecx,[ebp-0x68]
  00452e5b: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00452e5f: e8 dc eb 07 00                                 call   0x4d1a40
  00452e64: 8b 16                                          mov    edx,DWORD PTR [esi]
  00452e66: 8b ce                                          mov    ecx,esi
  00452e68: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00452e6b: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  00452e6e: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  00452e73: 41                                             inc    ecx
  00452e74: 3b c8                                          cmp    ecx,eax
  00452e76: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  00452e79: 0f 8c 5c fc ff ff                              jl     0x452adb
  00452e7f: 33 ff                                          xor    edi,edi
  00452e81: 33 db                                          xor    ebx,ebx
  00452e83: 3b c7                                          cmp    eax,edi
  00452e85: 0f 8e 8d 00 00 00                              jle    0x452f18
  00452e8b: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  00452e91: e8 1a 0b fe ff                                 call   0x4339b0
  00452e96: a1 a0 4a 51 00                                 mov    eax,ds:0x514aa0
  00452e9b: 8b 34 98                                       mov    esi,DWORD PTR [eax+ebx*4]
  00452e9e: 3b f7                                          cmp    esi,edi
  00452ea0: 74 68                                          je     0x452f0a
  00452ea2: 8b 16                                          mov    edx,DWORD PTR [esi]
  00452ea4: 8b ce                                          mov    ecx,esi
  00452ea6: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00452ea9: 85 c0                                          test   eax,eax
  00452eab: 74 5d                                          je     0x452f0a
  00452ead: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00452eb0: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00452eb2: ff 90 a8 00 00 00                              call   DWORD PTR [eax+0xa8]
  00452eb8: 85 c0                                          test   eax,eax
  00452eba: 74 47                                          je     0x452f03
  00452ebc: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00452ebf: 8b 50 30                                       mov    edx,DWORD PTR [eax+0x30]
  00452ec2: 8d 48 30                                       lea    ecx,[eax+0x30]
  00452ec5: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00452ec8: 85 c0                                          test   eax,eax
  00452eca: 74 37                                          je     0x452f03
  00452ecc: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00452ecf: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00452ed1: ff 90 a8 00 00 00                              call   DWORD PTR [eax+0xa8]
  00452ed7: 8b 50 30                                       mov    edx,DWORD PTR [eax+0x30]
  00452eda: 8d 78 30                                       lea    edi,[eax+0x30]
  00452edd: 8b cf                                          mov    ecx,edi
  00452edf: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00452ee2: 85 c0                                          test   eax,eax
  00452ee4: 74 0f                                          je     0x452ef5
  00452ee6: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00452ee9: e8 22 d0 fc ff                                 call   0x41ff10
  00452eee: 8b 07                                          mov    eax,DWORD PTR [edi]
  00452ef0: 8b cf                                          mov    ecx,edi
  00452ef2: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00452ef5: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00452ef8: 8b 50 30                                       mov    edx,DWORD PTR [eax+0x30]
  00452efb: 8d 48 30                                       lea    ecx,[eax+0x30]
  00452efe: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00452f01: 33 ff                                          xor    edi,edi
  00452f03: 8b 06                                          mov    eax,DWORD PTR [esi]
  00452f05: 8b ce                                          mov    ecx,esi
  00452f07: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00452f0a: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  00452f0f: 43                                             inc    ebx
  00452f10: 3b d8                                          cmp    ebx,eax
  00452f12: 0f 8c 73 ff ff ff                              jl     0x452e8b
  00452f18: 8b 45 d0                                       mov    eax,DWORD PTR [ebp-0x30]
  00452f1b: 33 c9                                          xor    ecx,ecx
  00452f1d: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00452f20: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  00452f23: c6 45 e0 08                                    mov    BYTE PTR [ebp-0x20],0x8
  00452f27: bb 02 00 00 00                                 mov    ebx,0x2
  00452f2c: be 01 00 00 00                                 mov    esi,0x1
  00452f31: 3b cf                                          cmp    ecx,edi
  00452f33: 74 07                                          je     0x452f3c
  00452f35: 8b 00                                          mov    eax,DWORD PTR [eax]
  00452f37: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00452f3a: eb 05                                          jmp    0x452f41
  00452f3c: 8b ce                                          mov    ecx,esi
  00452f3e: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  00452f41: 3b c7                                          cmp    eax,edi
  00452f43: 0f 84 c6 00 00 00                              je     0x45300f
  00452f49: 8b 48 08                                       mov    ecx,DWORD PTR [eax+0x8]
  00452f4c: 8b 51 20                                       mov    edx,DWORD PTR [ecx+0x20]
  00452f4f: 52                                             push   edx
  00452f50: e8 6b 11 00 00                                 call   0x4540c0
  00452f55: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00452f58: 8b 48 08                                       mov    ecx,DWORD PTR [eax+0x8]
  00452f5b: 57                                             push   edi
  00452f5c: 51                                             push   ecx
  00452f5d: e8 7e ef ff ff                                 call   0x451ee0
  00452f62: 8b 4d e4                                       mov    ecx,DWORD PTR [ebp-0x1c]
  00452f65: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00452f68: 8b 55 d0                                       mov    edx,DWORD PTR [ebp-0x30]
  00452f6b: 83 c4 0c                                       add    esp,0xc
  00452f6e: 49                                             dec    ecx
  00452f6f: 89 4d e4                                       mov    DWORD PTR [ebp-0x1c],ecx
  00452f72: 8b 4d d4                                       mov    ecx,DWORD PTR [ebp-0x2c]
  00452f75: 3b c1                                          cmp    eax,ecx
  00452f77: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  00452f7a: 74 36                                          je     0x452fb2
  00452f7c: 3b c2                                          cmp    eax,edx
  00452f7e: 74 51                                          je     0x452fd1
  00452f80: 8b 10                                          mov    edx,DWORD PTR [eax]
  00452f82: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  00452f85: 89 42 04                                       mov    DWORD PTR [edx+0x4],eax
  00452f88: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00452f8b: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  00452f8e: 8b 10                                          mov    edx,DWORD PTR [eax]
  00452f90: 89 11                                          mov    DWORD PTR [ecx],edx
  00452f92: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00452f95: 3b c6                                          cmp    eax,esi
  00452f97: 75 0b                                          jne    0x452fa4
  00452f99: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00452f9c: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  00452f9f: 89 4d cc                                       mov    DWORD PTR [ebp-0x34],ecx
  00452fa2: eb 54                                          jmp    0x452ff8
  00452fa4: 3b c3                                          cmp    eax,ebx
  00452fa6: 75 50                                          jne    0x452ff8
  00452fa8: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  00452fab: 8b 02                                          mov    eax,DWORD PTR [edx]
  00452fad: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00452fb0: eb 46                                          jmp    0x452ff8
  00452fb2: 3b c2                                          cmp    eax,edx
  00452fb4: 74 1b                                          je     0x452fd1
  00452fb6: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  00452fb9: 89 39                                          mov    DWORD PTR [ecx],edi
  00452fbb: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00452fbe: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00452fc1: 89 55 d4                                       mov    DWORD PTR [ebp-0x2c],edx
  00452fc4: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  00452fc7: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00452fca: 39 5d ec                                       cmp    DWORD PTR [ebp-0x14],ebx
  00452fcd: 75 29                                          jne    0x452ff8
  00452fcf: eb 24                                          jmp    0x452ff5
  00452fd1: 3b c1                                          cmp    eax,ecx
  00452fd3: 74 17                                          je     0x452fec
  00452fd5: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00452fd7: 89 79 04                                       mov    DWORD PTR [ecx+0x4],edi
  00452fda: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  00452fdd: 8b 02                                          mov    eax,DWORD PTR [edx]
  00452fdf: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00452fe2: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  00452fe5: 39 75 ec                                       cmp    DWORD PTR [ebp-0x14],esi
  00452fe8: 75 0e                                          jne    0x452ff8
  00452fea: eb 09                                          jmp    0x452ff5
  00452fec: 89 7d cc                                       mov    DWORD PTR [ebp-0x34],edi
  00452fef: 89 7d d0                                       mov    DWORD PTR [ebp-0x30],edi
  00452ff2: 89 7d d4                                       mov    DWORD PTR [ebp-0x2c],edi
  00452ff5: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  00452ff8: 8b 45 d8                                       mov    eax,DWORD PTR [ebp-0x28]
  00452ffb: 50                                             push   eax
  00452ffc: e8 5f f0 fe ff                                 call   0x442060
  00453001: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00453004: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  00453007: 83 c4 04                                       add    esp,0x4
  0045300a: e9 22 ff ff ff                                 jmp    0x452f31
  0045300f: 3b cf                                          cmp    ecx,edi
  00453011: 74 04                                          je     0x453017
  00453013: c6 45 e0 07                                    mov    BYTE PTR [ebp-0x20],0x7
  00453017: 66 39 3d b6 42 51 00                           cmp    WORD PTR ds:0x5142b6,di
  0045301e: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  00453021: 74 55                                          je     0x453078
  00453023: 8d 4d a0                                       lea    ecx,[ebp-0x60]
  00453026: 51                                             push   ecx
  00453027: ff 15 78 e3 4d 00                              call   DWORD PTR ds:0x4de378
  0045302d: 8b 55 a0                                       mov    edx,DWORD PTR [ebp-0x60]
  00453030: 8b 4d 9c                                       mov    ecx,DWORD PTR [ebp-0x64]
  00453033: 8b 45 88                                       mov    eax,DWORD PTR [ebp-0x78]
  00453036: 2b d1                                          sub    edx,ecx
  00453038: 83 c4 04                                       add    esp,0x4
  0045303b: 3b d0                                          cmp    edx,eax
  0045303d: 76 39                                          jbe    0x453078
  0045303f: 68 3c 60 50 00                                 push   0x50603c
  00453044: 68 00 04 00 00                                 push   0x400
  00453049: e8 f2 ec 01 00                                 call   0x471d40
  0045304e: 8b 45 a0                                       mov    eax,DWORD PTR [ebp-0x60]
  00453051: 83 c4 08                                       add    esp,0x8
  00453054: 89 45 9c                                       mov    DWORD PTR [ebp-0x64],eax
  00453057: e8 34 5a 00 00                                 call   0x458a90
  0045305c: 25 ff 00 00 00                                 and    eax,0xff
  00453061: 89 45 a8                                       mov    DWORD PTR [ebp-0x58],eax
  00453064: 75 12                                          jne    0x453078
  00453066: 68 1c 60 50 00                                 push   0x50601c
  0045306b: 68 00 04 00 00                                 push   0x400
  00453070: e8 cb ec 01 00                                 call   0x471d40
  00453075: 83 c4 08                                       add    esp,0x8
  00453078: e8 83 11 fe ff                                 call   0x434200
  0045307d: 8b 10                                          mov    edx,DWORD PTR [eax]
  0045307f: 68 5c 4a 51 00                                 push   0x514a5c
  00453084: 8b c8                                          mov    ecx,eax
  00453086: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00453089: 68 60 4a 51 00                                 push   0x514a60
  0045308e: ff 15 fc e0 4d 00                              call   DWORD PTR ds:0x4de0fc
  00453094: 6a 19                                          push   0x19
  00453096: ff 15 20 e1 4d 00                              call   DWORD PTR ds:0x4de120
  0045309c: 39 3d 30 4a 51 00                              cmp    DWORD PTR ds:0x514a30,edi
  004530a2: 0f 85 b2 f8 ff ff                              jne    0x45295a
  004530a8: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  004530ae: e8 ed 07 fe ff                                 call   0x4338a0
  004530b3: 8b 55 d0                                       mov    edx,DWORD PTR [ebp-0x30]
  004530b6: 33 f6                                          xor    esi,esi
  004530b8: 8b c2                                          mov    eax,edx
  004530ba: 33 c9                                          xor    ecx,ecx
  004530bc: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  004530c0: c7 45 ac 08 f4 4d 00                           mov    DWORD PTR [ebp-0x54],0x4df408
  004530c7: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004530ca: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  004530cd: c6 45 e0 08                                    mov    BYTE PTR [ebp-0x20],0x8
  004530d1: bf 01 00 00 00                                 mov    edi,0x1
  004530d6: bb 02 00 00 00                                 mov    ebx,0x2
  004530db: 3b ce                                          cmp    ecx,esi
  004530dd: 74 07                                          je     0x4530e6
  004530df: 8b 00                                          mov    eax,DWORD PTR [eax]
  004530e1: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  004530e4: eb 05                                          jmp    0x4530eb
  004530e6: 8b cf                                          mov    ecx,edi
  004530e8: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  004530eb: 3b c6                                          cmp    eax,esi
  004530ed: 0f 84 a3 00 00 00                              je     0x453196
  004530f3: ff 4d e4                                       dec    DWORD PTR [ebp-0x1c]
  004530f6: 8b 4d d4                                       mov    ecx,DWORD PTR [ebp-0x2c]
  004530f9: 3b c1                                          cmp    eax,ecx
  004530fb: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  004530fe: 74 36                                          je     0x453136
  00453100: 3b c2                                          cmp    eax,edx
  00453102: 74 51                                          je     0x453155
  00453104: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00453106: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00453109: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  0045310c: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  0045310f: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  00453112: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453114: 89 11                                          mov    DWORD PTR [ecx],edx
  00453116: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00453119: 3b c7                                          cmp    eax,edi
  0045311b: 75 0b                                          jne    0x453128
  0045311d: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00453120: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  00453123: 89 4d cc                                       mov    DWORD PTR [ebp-0x34],ecx
  00453126: eb 54                                          jmp    0x45317c
  00453128: 3b c3                                          cmp    eax,ebx
  0045312a: 75 50                                          jne    0x45317c
  0045312c: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  0045312f: 8b 02                                          mov    eax,DWORD PTR [edx]
  00453131: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00453134: eb 46                                          jmp    0x45317c
  00453136: 3b c2                                          cmp    eax,edx
  00453138: 74 1b                                          je     0x453155
  0045313a: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  0045313d: 89 31                                          mov    DWORD PTR [ecx],esi
  0045313f: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  00453142: 8b 50 04                                       mov    edx,DWORD PTR [eax+0x4]
  00453145: 89 55 d4                                       mov    DWORD PTR [ebp-0x2c],edx
  00453148: 8b 40 04                                       mov    eax,DWORD PTR [eax+0x4]
  0045314b: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  0045314e: 39 5d ec                                       cmp    DWORD PTR [ebp-0x14],ebx
  00453151: 75 29                                          jne    0x45317c
  00453153: eb 24                                          jmp    0x453179
  00453155: 3b c1                                          cmp    eax,ecx
  00453157: 74 17                                          je     0x453170
  00453159: 8b 08                                          mov    ecx,DWORD PTR [eax]
  0045315b: 89 71 04                                       mov    DWORD PTR [ecx+0x4],esi
  0045315e: 8b 55 cc                                       mov    edx,DWORD PTR [ebp-0x34]
  00453161: 8b 02                                          mov    eax,DWORD PTR [edx]
  00453163: 89 45 cc                                       mov    DWORD PTR [ebp-0x34],eax
  00453166: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  00453169: 39 7d ec                                       cmp    DWORD PTR [ebp-0x14],edi
  0045316c: 75 0e                                          jne    0x45317c
  0045316e: eb 09                                          jmp    0x453179
  00453170: 89 75 cc                                       mov    DWORD PTR [ebp-0x34],esi
  00453173: 89 75 d0                                       mov    DWORD PTR [ebp-0x30],esi
  00453176: 89 75 d4                                       mov    DWORD PTR [ebp-0x2c],esi
  00453179: 89 75 ec                                       mov    DWORD PTR [ebp-0x14],esi
  0045317c: 8b 45 d8                                       mov    eax,DWORD PTR [ebp-0x28]
  0045317f: 50                                             push   eax
  00453180: e8 db ee fe ff                                 call   0x442060
  00453185: 8b 55 d0                                       mov    edx,DWORD PTR [ebp-0x30]
  00453188: 8b 45 cc                                       mov    eax,DWORD PTR [ebp-0x34]
  0045318b: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  0045318e: 83 c4 04                                       add    esp,0x4
  00453191: e9 45 ff ff ff                                 jmp    0x4530db
  00453196: 3b ce                                          cmp    ecx,esi
  00453198: 74 04                                          je     0x45319e
  0045319a: c6 45 e0 07                                    mov    BYTE PTR [ebp-0x20],0x7
  0045319e: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  004531a1: 51                                             push   ecx
  004531a2: 89 75 ec                                       mov    DWORD PTR [ebp-0x14],esi
  004531a5: c7 45 ac 8c e5 4d 00                           mov    DWORD PTR [ebp-0x54],0x4de58c
  004531ac: ff 15 e0 e0 4d 00                              call   DWORD PTR ds:0x4de0e0
  004531b2: 8d 8d 00 ff ff ff                              lea    ecx,[ebp-0x100]
  004531b8: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004531bf: e8 8c 05 fe ff                                 call   0x433750
  004531c4: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004531c7: 5f                                             pop    edi
  004531c8: 5e                                             pop    esi
  004531c9: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004531d0: 5b                                             pop    ebx
  004531d1: 8b e5                                          mov    esp,ebp
  004531d3: 5d                                             pop    ebp
  004531d4: c3                                             ret

; [00453CA0] CPlayerManager::?VerifyPlayerUnique@CPlayerManager ; instruction=151 ; plage_limite=00453E80 ; issues=0
  00453ca0: 55                                             push   ebp
  00453ca1: 8b ec                                          mov    ebp,esp
  00453ca3: 6a ff                                          push   0xffffffff
  00453ca5: 68 68 6d 4d 00                                 push   0x4d6d68
  00453caa: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00453cb0: 50                                             push   eax
  00453cb1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00453cb8: 83 ec 18                                       sub    esp,0x18
  00453cbb: a1 c0 4a 51 00                                 mov    eax,ds:0x514ac0
  00453cc0: 85 c0                                          test   eax,eax
  00453cc2: 53                                             push   ebx
  00453cc3: 56                                             push   esi
  00453cc4: 57                                             push   edi
  00453cc5: 74 13                                          je     0x453cda
  00453cc7: 33 c0                                          xor    eax,eax
  00453cc9: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00453ccc: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00453cd3: 5f                                             pop    edi
  00453cd4: 5e                                             pop    esi
  00453cd5: 5b                                             pop    ebx
  00453cd6: 8b e5                                          mov    esp,ebp
  00453cd8: 5d                                             pop    ebp
  00453cd9: c3                                             ret
  00453cda: c7 45 ec 01 00 00 00                           mov    DWORD PTR [ebp-0x14],0x1
  00453ce1: 50                                             push   eax
  00453ce2: 8b 45 04                                       mov    eax,DWORD PTR [ebp+0x4]
  00453ce5: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  00453ce8: 58                                             pop    eax
  00453ce9: e8 12 05 fe ff                                 call   0x434200
  00453cee: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453cf0: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00453cf3: 51                                             push   ecx
  00453cf4: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  00453cf7: 68 38 4a 51 00                                 push   0x514a38
  00453cfc: 51                                             push   ecx
  00453cfd: 8b c8                                          mov    ecx,eax
  00453cff: ff 12                                          call   DWORD PTR [edx]
  00453d01: 68 40 4a 51 00                                 push   0x514a40
  00453d06: ff 15 f8 e0 4d 00                              call   DWORD PTR ds:0x4de0f8
  00453d0c: e8 ef 04 fe ff                                 call   0x434200
  00453d11: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453d13: 68 3c 4a 51 00                                 push   0x514a3c
  00453d18: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00453d1b: 51                                             push   ecx
  00453d1c: 8b c8                                          mov    ecx,eax
  00453d1e: ff 52 04                                       call   DWORD PTR [edx+0x4]
  00453d21: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  00453d27: 33 c0                                          xor    eax,eax
  00453d29: 85 c9                                          test   ecx,ecx
  00453d2b: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  00453d2e: 0f 8e 1b 01 00 00                              jle    0x453e4f
  00453d34: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  00453d37: 8b 15 a0 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa0
  00453d3d: 8b 34 82                                       mov    esi,DWORD PTR [edx+eax*4]
  00453d40: 85 f6                                          test   esi,esi
  00453d42: 0f 84 f2 00 00 00                              je     0x453e3a
  00453d48: a0 7c 42 51 00                                 mov    al,ds:0x51427c
  00453d4d: 84 c0                                          test   al,al
  00453d4f: 74 48                                          je     0x453d99
  00453d51: 8d 45 e8                                       lea    eax,[ebp-0x18]
  00453d54: 50                                             push   eax
  00453d55: 8b cf                                          mov    ecx,edi
  00453d57: e8 b4 30 00 00                                 call   0x456e10
  00453d5c: 8b 18                                          mov    ebx,DWORD PTR [eax]
  00453d5e: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  00453d61: 51                                             push   ecx
  00453d62: 8b ce                                          mov    ecx,esi
  00453d64: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  00453d6b: e8 a0 30 00 00                                 call   0x456e10
  00453d70: 8b 00                                          mov    eax,DWORD PTR [eax]
  00453d72: 53                                             push   ebx
  00453d73: 50                                             push   eax
  00453d74: ff 15 e4 e2 4d 00                              call   DWORD PTR ds:0x4de2e4
  00453d7a: 83 c4 08                                       add    esp,0x8
  00453d7d: 8b d8                                          mov    ebx,eax
  00453d7f: f7 db                                          neg    ebx
  00453d81: 1a db                                          sbb    bl,bl
  00453d83: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  00453d86: fe c3                                          inc    bl
  00453d88: e8 b3 dc 07 00                                 call   0x4d1a40
  00453d8d: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00453d94: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  00453d97: eb 46                                          jmp    0x453ddf
  00453d99: 8d 55 e0                                       lea    edx,[ebp-0x20]
  00453d9c: 52                                             push   edx
  00453d9d: 8b cf                                          mov    ecx,edi
  00453d9f: e8 bc 4e 00 00                                 call   0x458c60
  00453da4: 8b 18                                          mov    ebx,DWORD PTR [eax]
  00453da6: 8d 45 e4                                       lea    eax,[ebp-0x1c]
  00453da9: 50                                             push   eax
  00453daa: 8b ce                                          mov    ecx,esi
  00453dac: c7 45 fc 01 00 00 00                           mov    DWORD PTR [ebp-0x4],0x1
  00453db3: e8 a8 4e 00 00                                 call   0x458c60
  00453db8: 8b 00                                          mov    eax,DWORD PTR [eax]
  00453dba: 53                                             push   ebx
  00453dbb: 50                                             push   eax
  00453dbc: ff 15 e4 e2 4d 00                              call   DWORD PTR ds:0x4de2e4
  00453dc2: 83 c4 08                                       add    esp,0x8
  00453dc5: 8b d8                                          mov    ebx,eax
  00453dc7: f7 db                                          neg    ebx
  00453dc9: 1a db                                          sbb    bl,bl
  00453dcb: 8d 4d e4                                       lea    ecx,[ebp-0x1c]
  00453dce: fe c3                                          inc    bl
  00453dd0: e8 6b dc 07 00                                 call   0x4d1a40
  00453dd5: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00453ddc: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  00453ddf: e8 5c dc 07 00                                 call   0x4d1a40
  00453de4: 3b f7                                          cmp    esi,edi
  00453de6: 74 52                                          je     0x453e3a
  00453de8: 84 db                                          test   bl,bl
  00453dea: 74 4e                                          je     0x453e3a
  00453dec: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00453def: 51                                             push   ecx
  00453df0: 8b ce                                          mov    ecx,esi
  00453df2: e8 69 4e 00 00                                 call   0x458c60
  00453df7: 8b 00                                          mov    eax,DWORD PTR [eax]
  00453df9: 50                                             push   eax
  00453dfa: 68 b8 61 50 00                                 push   0x5061b8
  00453dff: 68 00 08 00 00                                 push   0x800
  00453e04: c7 45 fc 02 00 00 00                           mov    DWORD PTR [ebp-0x4],0x2
  00453e0b: e8 30 df 01 00                                 call   0x471d40
  00453e10: 83 c4 0c                                       add    esp,0xc
  00453e13: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00453e16: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00453e1d: e8 1e dc 07 00                                 call   0x4d1a40
  00453e22: b8 01 00 00 00                                 mov    eax,0x1
  00453e27: 89 86 18 01 00 00                              mov    DWORD PTR [esi+0x118],eax
  00453e2d: 89 87 18 01 00 00                              mov    DWORD PTR [edi+0x118],eax
  00453e33: c7 45 ec 00 00 00 00                           mov    DWORD PTR [ebp-0x14],0x0
  00453e3a: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00453e3d: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  00453e43: 40                                             inc    eax
  00453e44: 3b c1                                          cmp    eax,ecx
  00453e46: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  00453e49: 0f 8c e8 fe ff ff                              jl     0x453d37
  00453e4f: e8 ac 03 fe ff                                 call   0x434200
  00453e54: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453e56: 68 3c 4a 51 00                                 push   0x514a3c
  00453e5b: 8b c8                                          mov    ecx,eax
  00453e5d: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00453e60: 68 40 4a 51 00                                 push   0x514a40
  00453e65: ff 15 fc e0 4d 00                              call   DWORD PTR ds:0x4de0fc
  00453e6b: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00453e6e: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00453e71: 5f                                             pop    edi
  00453e72: 5e                                             pop    esi
  00453e73: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00453e7a: 5b                                             pop    ebx
  00453e7b: 8b e5                                          mov    esp,ebp
  00453e7d: 5d                                             pop    ebp
  00453e7e: c3                                             ret

; [00453E80] CPlayerManager::?GetCharacter@CPlayerManager ; instruction=105 ; plage_limite=00453FB0 ; issues=0
  00453e80: 55                                             push   ebp
  00453e81: 8b ec                                          mov    ebp,esp
  00453e83: 6a ff                                          push   0xffffffff
  00453e85: 68 88 6d 4d 00                                 push   0x4d6d88
  00453e8a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00453e90: 50                                             push   eax
  00453e91: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00453e98: 83 ec 08                                       sub    esp,0x8
  00453e9b: 53                                             push   ebx
  00453e9c: 56                                             push   esi
  00453e9d: 57                                             push   edi
  00453e9e: a1 c0 4a 51 00                                 mov    eax,ds:0x514ac0
  00453ea3: 33 ff                                          xor    edi,edi
  00453ea5: 3b c7                                          cmp    eax,edi
  00453ea7: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  00453eaa: 74 22                                          je     0x453ece
  00453eac: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  00453eaf: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00453eb6: e8 85 db 07 00                                 call   0x4d1a40
  00453ebb: 33 c0                                          xor    eax,eax
  00453ebd: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00453ec0: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00453ec7: 5f                                             pop    edi
  00453ec8: 5e                                             pop    esi
  00453ec9: 5b                                             pop    ebx
  00453eca: 8b e5                                          mov    esp,ebp
  00453ecc: 5d                                             pop    ebp
  00453ecd: c3                                             ret
  00453ece: 50                                             push   eax
  00453ecf: 8b 45 04                                       mov    eax,DWORD PTR [ebp+0x4]
  00453ed2: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  00453ed5: 58                                             pop    eax
  00453ed6: e8 25 03 fe ff                                 call   0x434200
  00453edb: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453edd: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00453ee0: 51                                             push   ecx
  00453ee1: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  00453ee4: 68 38 4a 51 00                                 push   0x514a38
  00453ee9: 51                                             push   ecx
  00453eea: 8b c8                                          mov    ecx,eax
  00453eec: ff 12                                          call   DWORD PTR [edx]
  00453eee: 68 40 4a 51 00                                 push   0x514a40
  00453ef3: ff 15 f8 e0 4d 00                              call   DWORD PTR ds:0x4de0f8
  00453ef9: e8 02 03 fe ff                                 call   0x434200
  00453efe: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453f00: 68 3c 4a 51 00                                 push   0x514a3c
  00453f05: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00453f08: 51                                             push   ecx
  00453f09: 8b c8                                          mov    ecx,eax
  00453f0b: ff 52 04                                       call   DWORD PTR [edx+0x4]
  00453f0e: 39 3d a8 4a 51 00                              cmp    DWORD PTR ds:0x514aa8,edi
  00453f14: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  00453f17: 7e 58                                          jle    0x453f71
  00453f19: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00453f1c: 85 c0                                          test   eax,eax
  00453f1e: 75 51                                          jne    0x453f71
  00453f20: 8b 15 a0 4a 51 00                              mov    edx,DWORD PTR ds:0x514aa0
  00453f26: 8b 34 ba                                       mov    esi,DWORD PTR [edx+edi*4]
  00453f29: 85 f6                                          test   esi,esi
  00453f2b: 74 3a                                          je     0x453f67
  00453f2d: 8b 46 44                                       mov    eax,DWORD PTR [esi+0x44]
  00453f30: 85 c0                                          test   eax,eax
  00453f32: 74 33                                          je     0x453f67
  00453f34: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00453f37: 8d 45 ec                                       lea    eax,[ebp-0x14]
  00453f3a: 50                                             push   eax
  00453f3b: e8 10 9b fc ff                                 call   0x41da50
  00453f40: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  00453f43: 8b 00                                          mov    eax,DWORD PTR [eax]
  00453f45: 51                                             push   ecx
  00453f46: 50                                             push   eax
  00453f47: ff 15 e4 e2 4d 00                              call   DWORD PTR ds:0x4de2e4
  00453f4d: 83 c4 08                                       add    esp,0x8
  00453f50: 8b d8                                          mov    ebx,eax
  00453f52: f7 db                                          neg    ebx
  00453f54: 1a db                                          sbb    bl,bl
  00453f56: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00453f59: fe c3                                          inc    bl
  00453f5b: e8 e0 da 07 00                                 call   0x4d1a40
  00453f60: 84 db                                          test   bl,bl
  00453f62: 74 03                                          je     0x453f67
  00453f64: 89 75 f0                                       mov    DWORD PTR [ebp-0x10],esi
  00453f67: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  00453f6c: 47                                             inc    edi
  00453f6d: 3b f8                                          cmp    edi,eax
  00453f6f: 7c a8                                          jl     0x453f19
  00453f71: e8 8a 02 fe ff                                 call   0x434200
  00453f76: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453f78: 68 3c 4a 51 00                                 push   0x514a3c
  00453f7d: 8b c8                                          mov    ecx,eax
  00453f7f: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00453f82: 68 40 4a 51 00                                 push   0x514a40
  00453f87: ff 15 fc e0 4d 00                              call   DWORD PTR ds:0x4de0fc
  00453f8d: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  00453f90: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00453f97: e8 a4 da 07 00                                 call   0x4d1a40
  00453f9c: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00453f9f: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00453fa2: 5f                                             pop    edi
  00453fa3: 5e                                             pop    esi
  00453fa4: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00453fab: 5b                                             pop    ebx
  00453fac: 8b e5                                          mov    esp,ebp
  00453fae: 5d                                             pop    ebp
  00453faf: c3                                             ret

; [00453FB0] CPlayerManager::?SaveAll@CPlayerManager ; instruction=49 ; plage_limite=00454050 ; issues=0
  00453fb0: 55                                             push   ebp
  00453fb1: 8b ec                                          mov    ebp,esp
  00453fb3: 83 ec 08                                       sub    esp,0x8
  00453fb6: 50                                             push   eax
  00453fb7: 8b 45 04                                       mov    eax,DWORD PTR [ebp+0x4]
  00453fba: 89 45 f8                                       mov    DWORD PTR [ebp-0x8],eax
  00453fbd: 58                                             pop    eax
  00453fbe: e8 3d 02 fe ff                                 call   0x434200
  00453fc3: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453fc5: 8d 4d fc                                       lea    ecx,[ebp-0x4]
  00453fc8: 51                                             push   ecx
  00453fc9: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  00453fcc: 68 38 4a 51 00                                 push   0x514a38
  00453fd1: 51                                             push   ecx
  00453fd2: 8b c8                                          mov    ecx,eax
  00453fd4: ff 12                                          call   DWORD PTR [edx]
  00453fd6: 68 40 4a 51 00                                 push   0x514a40
  00453fdb: ff 15 f8 e0 4d 00                              call   DWORD PTR ds:0x4de0f8
  00453fe1: e8 1a 02 fe ff                                 call   0x434200
  00453fe6: 8b 10                                          mov    edx,DWORD PTR [eax]
  00453fe8: 68 3c 4a 51 00                                 push   0x514a3c
  00453fed: 8d 4d fc                                       lea    ecx,[ebp-0x4]
  00453ff0: 51                                             push   ecx
  00453ff1: 8b c8                                          mov    ecx,eax
  00453ff3: ff 52 04                                       call   DWORD PTR [edx+0x4]
  00453ff6: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  00453ffb: 33 c9                                          xor    ecx,ecx
  00453ffd: 85 c0                                          test   eax,eax
  00453fff: 7e 21                                          jle    0x454022
  00454001: ba 01 00 00 00                                 mov    edx,0x1
  00454006: a1 a0 4a 51 00                                 mov    eax,ds:0x514aa0
  0045400b: 8b 04 88                                       mov    eax,DWORD PTR [eax+ecx*4]
  0045400e: 85 c0                                          test   eax,eax
  00454010: 74 06                                          je     0x454018
  00454012: 89 90 18 01 00 00                              mov    DWORD PTR [eax+0x118],edx
  00454018: a1 a8 4a 51 00                                 mov    eax,ds:0x514aa8
  0045401d: 41                                             inc    ecx
  0045401e: 3b c8                                          cmp    ecx,eax
  00454020: 7c e4                                          jl     0x454006
  00454022: e8 d9 01 fe ff                                 call   0x434200
  00454027: 8b 10                                          mov    edx,DWORD PTR [eax]
  00454029: 68 3c 4a 51 00                                 push   0x514a3c
  0045402e: 8b c8                                          mov    ecx,eax
  00454030: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00454033: 68 40 4a 51 00                                 push   0x514a40
  00454038: ff 15 fc e0 4d 00                              call   DWORD PTR ds:0x4de0fc
  0045403e: 8b e5                                          mov    esp,ebp
  00454040: 5d                                             pop    ebp
  00454041: c3                                             ret

; [00454050] CPlayerManager::?GetChatter@CPlayerManager ; instruction=33 ; plage_limite=004540C0 ; issues=0
  00454050: 55                                             push   ebp
  00454051: 8b ec                                          mov    ebp,esp
  00454053: 6a ff                                          push   0xffffffff
  00454055: 68 ab 6d 4d 00                                 push   0x4d6dab
  0045405a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00454060: 50                                             push   eax
  00454061: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00454068: 51                                             push   ecx
  00454069: a1 b4 4a 51 00                                 mov    eax,ds:0x514ab4
  0045406e: 85 c0                                          test   eax,eax
  00454070: 75 39                                          jne    0x4540ab
  00454072: 6a 4c                                          push   0x4c
  00454074: e8 77 df fe ff                                 call   0x441ff0
  00454079: 83 c4 04                                       add    esp,0x4
  0045407c: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0045407f: 85 c0                                          test   eax,eax
  00454081: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  00454088: 74 1a                                          je     0x4540a4
  0045408a: 8b c8                                          mov    ecx,eax
  0045408c: e8 0f 14 fd ff                                 call   0x4254a0
  00454091: a3 b4 4a 51 00                                 mov    ds:0x514ab4,eax
  00454096: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00454099: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004540a0: 8b e5                                          mov    esp,ebp
  004540a2: 5d                                             pop    ebp
  004540a3: c3                                             ret
  004540a4: 33 c0                                          xor    eax,eax
  004540a6: a3 b4 4a 51 00                                 mov    ds:0x514ab4,eax
  004540ab: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004540ae: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004540b5: 8b e5                                          mov    esp,ebp
  004540b7: 5d                                             pop    ebp
  004540b8: c3                                             ret

; [004540C0] CPlayerManager::?RemoveTargetReferences@CPlayerManager ; instruction=123 ; plage_limite=00454260 ; issues=0
  004540c0: 55                                             push   ebp
  004540c1: 8b ec                                          mov    ebp,esp
  004540c3: 6a ff                                          push   0xffffffff
  004540c5: 68 c8 6d 4d 00                                 push   0x4d6dc8
  004540ca: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004540d0: 50                                             push   eax
  004540d1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004540d8: 83 ec 1c                                       sub    esp,0x1c
  004540db: a1 58 4a 51 00                                 mov    eax,ds:0x514a58
  004540e0: 56                                             push   esi
  004540e1: 57                                             push   edi
  004540e2: b9 58 4a 51 00                                 mov    ecx,0x514a58
  004540e7: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004540ea: 8b 15 38 4a 51 00                              mov    edx,DWORD PTR ds:0x514a38
  004540f0: b9 38 4a 51 00                                 mov    ecx,0x514a38
  004540f5: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  004540f8: 85 c0                                          test   eax,eax
  004540fa: 75 36                                          jne    0x454132
  004540fc: 8b 35 20 e1 4d 00                              mov    esi,DWORD PTR ds:0x4de120
  00454102: a1 58 4a 51 00                                 mov    eax,ds:0x514a58
  00454107: b9 58 4a 51 00                                 mov    ecx,0x514a58
  0045410c: ff 50 08                                       call   DWORD PTR [eax+0x8]
  0045410f: 6a 00                                          push   0x0
  00454111: ff d6                                          call   esi
  00454113: 8b 15 58 4a 51 00                              mov    edx,DWORD PTR ds:0x514a58
  00454119: b9 58 4a 51 00                                 mov    ecx,0x514a58
  0045411e: ff 52 04                                       call   DWORD PTR [edx+0x4]
  00454121: a1 38 4a 51 00                                 mov    eax,ds:0x514a38
  00454126: b9 38 4a 51 00                                 mov    ecx,0x514a38
  0045412b: ff 50 0c                                       call   DWORD PTR [eax+0xc]
  0045412e: 85 c0                                          test   eax,eax
  00454130: 74 d0                                          je     0x454102
  00454132: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  00454138: 33 ff                                          xor    edi,edi
  0045413a: 33 c0                                          xor    eax,eax
  0045413c: 3b cf                                          cmp    ecx,edi
  0045413e: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  00454141: 0f 8e ce 00 00 00                              jle    0x454215
  00454147: 53                                             push   ebx
  00454148: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  0045414b: 8b 0d a0 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa0
  00454151: 8b 34 81                                       mov    esi,DWORD PTR [ecx+eax*4]
  00454154: 3b f7                                          cmp    esi,edi
  00454156: 0f 84 a6 00 00 00                              je     0x454202
  0045415c: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0045415f: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00454161: ff 92 a8 00 00 00                              call   DWORD PTR [edx+0xa8]
  00454167: 3b c3                                          cmp    eax,ebx
  00454169: 75 5e                                          jne    0x4541c9
  0045416b: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0045416e: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00454170: 57                                             push   edi
  00454171: ff 90 ac 00 00 00                              call   DWORD PTR [eax+0xac]
  00454177: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0045417a: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0045417c: 57                                             push   edi
  0045417d: 68 42 4e 00 00                                 push   0x4e42
  00454182: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00454185: 85 c0                                          test   eax,eax
  00454187: 74 40                                          je     0x4541c9
  00454189: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0045418c: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0045418e: 68 42 4e 00 00                                 push   0x4e42
  00454193: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00454196: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  00454199: e8 52 1c 03 00                                 call   0x485df0
  0045419e: 6a 5e                                          push   0x5e
  004541a0: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  004541a3: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  004541a6: e8 a5 1f 03 00                                 call   0x486150
  004541ab: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  004541ae: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004541b0: 8d 45 d8                                       lea    eax,[ebp-0x28]
  004541b3: 50                                             push   eax
  004541b4: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  004541ba: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  004541bd: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004541c4: e8 b7 1c 03 00                                 call   0x485e80
  004541c9: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  004541cc: 39 98 28 01 00 00                              cmp    DWORD PTR [eax+0x128],ebx
  004541d2: 75 1f                                          jne    0x4541f3
  004541d4: 89 b8 28 01 00 00                              mov    DWORD PTR [eax+0x128],edi
  004541da: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  004541dd: 8b 39                                          mov    edi,DWORD PTR [ecx]
  004541df: 6a 01                                          push   0x1
  004541e1: ff 97 04 01 00 00                              call   DWORD PTR [edi+0x104]
  004541e7: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  004541ea: 50                                             push   eax
  004541eb: ff 97 08 01 00 00                              call   DWORD PTR [edi+0x108]
  004541f1: 33 ff                                          xor    edi,edi
  004541f3: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  004541f6: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004541f8: 53                                             push   ebx
  004541f9: ff 92 dc 01 00 00                              call   DWORD PTR [edx+0x1dc]
  004541ff: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00454202: 8b 0d a8 4a 51 00                              mov    ecx,DWORD PTR ds:0x514aa8
  00454208: 40                                             inc    eax
  00454209: 3b c1                                          cmp    eax,ecx
  0045420b: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  0045420e: 0f 8c 37 ff ff ff                              jl     0x45414b
  00454214: 5b                                             pop    ebx
  00454215: e8 e6 ff fd ff                                 call   0x434200
  0045421a: 8b 10                                          mov    edx,DWORD PTR [eax]
  0045421c: 68 3c 4a 51 00                                 push   0x514a3c
  00454221: 8b c8                                          mov    ecx,eax
  00454223: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00454226: 8b 35 fc e0 4d 00                              mov    esi,DWORD PTR ds:0x4de0fc
  0045422c: 68 40 4a 51 00                                 push   0x514a40
  00454231: ff d6                                          call   esi
  00454233: e8 c8 ff fd ff                                 call   0x434200
  00454238: 8b 10                                          mov    edx,DWORD PTR [eax]
  0045423a: 68 5c 4a 51 00                                 push   0x514a5c
  0045423f: 8b c8                                          mov    ecx,eax
  00454241: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  00454244: 68 60 4a 51 00                                 push   0x514a60
  00454249: ff d6                                          call   esi
  0045424b: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0045424e: 5f                                             pop    edi
  0045424f: 5e                                             pop    esi
  00454250: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00454257: 8b e5                                          mov    esp,ebp
  00454259: 5d                                             pop    ebp
  0045425a: c3                                             ret

; [004577D0] Players::?BeginSession@Players ; instruction=71 ; plage_limite=004578C0 ; issues=0
  004577d0: 55                                             push   ebp
  004577d1: 8b ec                                          mov    ebp,esp
  004577d3: 6a ff                                          push   0xffffffff
  004577d5: 68 23 73 4d 00                                 push   0x4d7323
  004577da: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004577e0: 50                                             push   eax
  004577e1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004577e8: 51                                             push   ecx
  004577e9: 57                                             push   edi
  004577ea: 8b f9                                          mov    edi,ecx
  004577ec: 8d 87 98 00 00 00                              lea    eax,[edi+0x98]
  004577f2: 50                                             push   eax
  004577f3: c7 47 3c e0 2e 00 00                           mov    DWORD PTR [edi+0x3c],0x2ee0
  004577fa: ff 15 78 e3 4d 00                              call   DWORD PTR ds:0x4de378
  00457800: a1 48 42 51 00                                 mov    eax,ds:0x514248
  00457805: 83 c4 04                                       add    esp,0x4
  00457808: 85 c0                                          test   eax,eax
  0045780a: 0f 84 9f 00 00 00                              je     0x4578af
  00457810: c6 47 41 01                                    mov    BYTE PTR [edi+0x41],0x1
  00457814: a0 24 42 51 00                                 mov    al,ds:0x514224
  00457819: 84 c0                                          test   al,al
  0045781b: 0f 85 8e 00 00 00                              jne    0x4578af
  00457821: 56                                             push   esi
  00457822: 6a 18                                          push   0x18
  00457824: e8 c7 a7 fe ff                                 call   0x441ff0
  00457829: 8b f0                                          mov    esi,eax
  0045782b: 83 c4 04                                       add    esp,0x4
  0045782e: 89 75 f0                                       mov    DWORD PTR [ebp-0x10],esi
  00457831: 85 f6                                          test   esi,esi
  00457833: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0045783a: 74 09                                          je     0x457845
  0045783c: 8b ce                                          mov    ecx,esi
  0045783e: e8 1b a2 07 00                                 call   0x4d1a5e
  00457843: eb 02                                          jmp    0x457847
  00457845: 33 f6                                          xor    esi,esi
  00457847: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0045784a: 51                                             push   ecx
  0045784b: 8b cf                                          mov    ecx,edi
  0045784d: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00457854: e8 07 14 00 00                                 call   0x458c60
  00457859: 50                                             push   eax
  0045785a: 8b ce                                          mov    ecx,esi
  0045785c: c7 45 fc 01 00 00 00                           mov    DWORD PTR [ebp-0x4],0x1
  00457863: e8 de a1 07 00                                 call   0x4d1a46
  00457868: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0045786b: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00457872: e8 c9 a1 07 00                                 call   0x4d1a40
  00457877: 8b 97 80 00 00 00                              mov    edx,DWORD PTR [edi+0x80]
  0045787d: 89 56 04                                       mov    DWORD PTR [esi+0x4],edx
  00457880: 83 c7 24                                       add    edi,0x24
  00457883: 8b 0f                                          mov    ecx,DWORD PTR [edi]
  00457885: 8d 46 08                                       lea    eax,[esi+0x8]
  00457888: 89 08                                          mov    DWORD PTR [eax],ecx
  0045788a: 8b 57 04                                       mov    edx,DWORD PTR [edi+0x4]
  0045788d: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  00457890: 8b 4f 08                                       mov    ecx,DWORD PTR [edi+0x8]
  00457893: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  00457896: 8b 57 0c                                       mov    edx,DWORD PTR [edi+0xc]
  00457899: 56                                             push   esi
  0045789a: 68 40 71 45 00                                 push   0x457140
  0045789f: 89 50 0c                                       mov    DWORD PTR [eax+0xc],edx
  004578a2: e8 09 ea fa ff                                 call   0x4062b0
  004578a7: 8b c8                                          mov    ecx,eax
  004578a9: e8 82 e8 fa ff                                 call   0x406130
  004578ae: 5e                                             pop    esi
  004578af: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004578b2: 5f                                             pop    edi
  004578b3: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004578ba: 8b e5                                          mov    esp,ebp
  004578bc: 5d                                             pop    ebp
  004578bd: c3                                             ret

; [004578C0] Players::?GetOnlineTime@Players ; instruction=18 ; plage_limite=004578F0 ; issues=0
  004578c0: 55                                             push   ebp
  004578c1: 8b ec                                          mov    ebp,esp
  004578c3: 51                                             push   ecx
  004578c4: 56                                             push   esi
  004578c5: 8d 45 fc                                       lea    eax,[ebp-0x4]
  004578c8: 50                                             push   eax
  004578c9: 8b f1                                          mov    esi,ecx
  004578cb: ff 15 78 e3 4d 00                              call   DWORD PTR ds:0x4de378
  004578d1: 8b 8e 98 00 00 00                              mov    ecx,DWORD PTR [esi+0x98]
  004578d7: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  004578da: 51                                             push   ecx
  004578db: 52                                             push   edx
  004578dc: ff 15 f8 e2 4d 00                              call   DWORD PTR ds:0x4de2f8
  004578e2: 83 c4 0c                                       add    esp,0xc
  004578e5: 5e                                             pop    esi
  004578e6: 8b e5                                          mov    esp,ebp
  004578e8: 5d                                             pop    ebp
  004578e9: c3                                             ret

; [004578F0] Players::?QueryNextSave@Players ; instruction=26 ; plage_limite=00457940 ; issues=0
  004578f0: 56                                             push   esi
  004578f1: 8b f1                                          mov    esi,ecx
  004578f3: 8b 86 94 00 00 00                              mov    eax,DWORD PTR [esi+0x94]
  004578f9: 85 c0                                          test   eax,eax
  004578fb: 74 41                                          je     0x45793e
  004578fd: e8 8e a9 01 00                                 call   0x472290
  00457902: 39 86 94 00 00 00                              cmp    DWORD PTR [esi+0x94],eax
  00457908: 77 34                                          ja     0x45793e
  0045790a: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  0045790d: 57                                             push   edi
  0045790e: 6a 01                                          push   0x1
  00457910: e8 3b c4 fb ff                                 call   0x413d50
  00457915: a1 f4 61 50 00                                 mov    eax,ds:0x5061f4
  0045791a: 8d 48 3c                                       lea    ecx,[eax+0x3c]
  0045791d: 51                                             push   ecx
  0045791e: 83 c0 c4                                       add    eax,0xffffffc4
  00457921: 50                                             push   eax
  00457922: b9 34 5e 51 00                                 mov    ecx,0x515e34
  00457927: e8 74 17 00 00                                 call   0x4590a0
  0045792c: 8d 3c 80                                       lea    edi,[eax+eax*4]
  0045792f: e8 5c a9 01 00                                 call   0x472290
  00457934: 8d 14 b8                                       lea    edx,[eax+edi*4]
  00457937: 89 96 94 00 00 00                              mov    DWORD PTR [esi+0x94],edx
  0045793d: 5f                                             pop    edi
  0045793e: 5e                                             pop    esi
  0045793f: c3                                             ret

; [004583F0] Players::?Logon@Players ; instruction=156 ; plage_limite=004585C0 ; issues=0
  004583f0: 55                                             push   ebp
  004583f1: 8b ec                                          mov    ebp,esp
  004583f3: 6a ff                                          push   0xffffffff
  004583f5: 68 6b 74 4d 00                                 push   0x4d746b
  004583fa: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00458400: 50                                             push   eax
  00458401: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00458408: 81 ec 10 04 00 00                              sub    esp,0x410
  0045840e: 53                                             push   ebx
  0045840f: 56                                             push   esi
  00458410: 57                                             push   edi
  00458411: 8d 45 e4                                       lea    eax,[ebp-0x1c]
  00458414: 50                                             push   eax
  00458415: 89 4d ec                                       mov    DWORD PTR [ebp-0x14],ecx
  00458418: e8 f3 e9 ff ff                                 call   0x456e10
  0045841d: 8b 08                                          mov    ecx,DWORD PTR [eax]
  0045841f: 8b 79 f8                                       mov    edi,DWORD PTR [ecx-0x8]
  00458422: 33 db                                          xor    ebx,ebx
  00458424: 33 c9                                          xor    ecx,ecx
  00458426: 33 f6                                          xor    esi,esi
  00458428: 3b fb                                          cmp    edi,ebx
  0045842a: 7e 1f                                          jle    0x45844b
  0045842c: 8b 10                                          mov    edx,DWORD PTR [eax]
  0045842e: 8a 14 16                                       mov    dl,BYTE PTR [esi+edx*1]
  00458431: 80 fa 27                                       cmp    dl,0x27
  00458434: 88 94 0d e4 fb ff ff                           mov    BYTE PTR [ebp+ecx*1-0x41c],dl
  0045843b: 75 08                                          jne    0x458445
  0045843d: 41                                             inc    ecx
  0045843e: 88 94 0d e4 fb ff ff                           mov    BYTE PTR [ebp+ecx*1-0x41c],dl
  00458445: 41                                             inc    ecx
  00458446: 46                                             inc    esi
  00458447: 3b f7                                          cmp    esi,edi
  00458449: 7c e1                                          jl     0x45842c
  0045844b: 88 9c 0d e4 fb ff ff                           mov    BYTE PTR [ebp+ecx*1-0x41c],bl
  00458452: 8d 4d e4                                       lea    ecx,[ebp-0x1c]
  00458455: e8 e6 95 07 00                                 call   0x4d1a40
  0045845a: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0045845d: e8 fc 95 07 00                                 call   0x4d1a5e
  00458462: 6a 44                                          push   0x44
  00458464: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00458467: e8 84 9b fe ff                                 call   0x441ff0
  0045846c: 8b f0                                          mov    esi,eax
  0045846e: 83 c4 04                                       add    esp,0x4
  00458471: 3b f3                                          cmp    esi,ebx
  00458473: 74 35                                          je     0x4584aa
  00458475: 8d 46 08                                       lea    eax,[esi+0x8]
  00458478: 50                                             push   eax
  00458479: c7 06 8c e5 4d 00                              mov    DWORD PTR [esi],0x4de58c
  0045847f: c7 46 04 ff ff ff ff                           mov    DWORD PTR [esi+0x4],0xffffffff
  00458486: ff 15 dc e0 4d 00                              call   DWORD PTR ds:0x4de0dc
  0045848c: 89 5e 24                                       mov    DWORD PTR [esi+0x24],ebx
  0045848f: 89 5e 28                                       mov    DWORD PTR [esi+0x28],ebx
  00458492: 89 5e 2c                                       mov    DWORD PTR [esi+0x2c],ebx
  00458495: 89 5e 30                                       mov    DWORD PTR [esi+0x30],ebx
  00458498: c7 06 88 e8 4d 00                              mov    DWORD PTR [esi],0x4de888
  0045849e: 89 5e 40                                       mov    DWORD PTR [esi+0x40],ebx
  004584a1: c6 46 34 08                                    mov    BYTE PTR [esi+0x34],0x8
  004584a5: 89 5e 38                                       mov    DWORD PTR [esi+0x38],ebx
  004584a8: eb 02                                          jmp    0x4584ac
  004584aa: 33 f6                                          xor    esi,esi
  004584ac: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  004584af: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  004584b2: 51                                             push   ecx
  004584b3: 8b 4a 20                                       mov    ecx,DWORD PTR [edx+0x20]
  004584b6: e8 95 55 fc ff                                 call   0x41da50
  004584bb: 8b 00                                          mov    eax,DWORD PTR [eax]
  004584bd: 8d 8d e4 fb ff ff                              lea    ecx,[ebp-0x41c]
  004584c3: 51                                             push   ecx
  004584c4: 50                                             push   eax
  004584c5: 8d 55 f0                                       lea    edx,[ebp-0x10]
  004584c8: 68 a4 69 50 00                                 push   0x5069a4
  004584cd: 52                                             push   edx
  004584ce: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  004584d2: e8 bd 95 07 00                                 call   0x4d1a94
  004584d7: 83 c4 10                                       add    esp,0x10
  004584da: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  004584dd: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  004584e0: e8 5b 95 07 00                                 call   0x4d1a40
  004584e5: 6a 08                                          push   0x8
  004584e7: e8 04 9b fe ff                                 call   0x441ff0
  004584ec: 8b f8                                          mov    edi,eax
  004584ee: 83 c4 04                                       add    esp,0x4
  004584f1: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  004584f4: 3b fb                                          cmp    edi,ebx
  004584f6: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  004584fa: 74 0a                                          je     0x458506
  004584fc: 8d 4f 04                                       lea    ecx,[edi+0x4]
  004584ff: e8 5a 95 07 00                                 call   0x4d1a5e
  00458504: eb 02                                          jmp    0x458508
  00458506: 33 ff                                          xor    edi,edi
  00458508: 8d 45 f0                                       lea    eax,[ebp-0x10]
  0045850b: 50                                             push   eax
  0045850c: 8d 4f 04                                       lea    ecx,[edi+0x4]
  0045850f: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00458512: e8 2f 95 07 00                                 call   0x4d1a46
  00458517: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  0045851a: 8b 56 38                                       mov    edx,DWORD PTR [esi+0x38]
  0045851d: 42                                             inc    edx
  0045851e: 3b c3                                          cmp    eax,ebx
  00458520: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00458523: 89 5e 40                                       mov    DWORD PTR [esi+0x40],ebx
  00458526: c6 46 34 08                                    mov    BYTE PTR [esi+0x34],0x8
  0045852a: 89 46 2c                                       mov    DWORD PTR [esi+0x2c],eax
  0045852d: 89 56 38                                       mov    DWORD PTR [esi+0x38],edx
  00458530: 6a 0c                                          push   0xc
  00458532: 75 28                                          jne    0x45855c
  00458534: e8 b7 9a fe ff                                 call   0x441ff0
  00458539: 83 c4 04                                       add    esp,0x4
  0045853c: 3b c3                                          cmp    eax,ebx
  0045853e: 74 07                                          je     0x458547
  00458540: 89 18                                          mov    DWORD PTR [eax],ebx
  00458542: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00458545: eb 02                                          jmp    0x458549
  00458547: 33 c0                                          xor    eax,eax
  00458549: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  0045854c: 89 46 28                                       mov    DWORD PTR [esi+0x28],eax
  0045854f: 89 46 24                                       mov    DWORD PTR [esi+0x24],eax
  00458552: 89 18                                          mov    DWORD PTR [eax],ebx
  00458554: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00458557: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  0045855a: eb 2b                                          jmp    0x458587
  0045855c: e8 8f 9a fe ff                                 call   0x441ff0
  00458561: 83 c4 04                                       add    esp,0x4
  00458564: 3b c3                                          cmp    eax,ebx
  00458566: 74 07                                          je     0x45856f
  00458568: 89 18                                          mov    DWORD PTR [eax],ebx
  0045856a: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  0045856d: eb 02                                          jmp    0x458571
  0045856f: 33 c0                                          xor    eax,eax
  00458571: 8b 56 20                                       mov    edx,DWORD PTR [esi+0x20]
  00458574: 89 02                                          mov    DWORD PTR [edx],eax
  00458576: 8b 4e 2c                                       mov    ecx,DWORD PTR [esi+0x2c]
  00458579: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  0045857c: 89 46 28                                       mov    DWORD PTR [esi+0x28],eax
  0045857f: 89 48 04                                       mov    DWORD PTR [eax+0x4],ecx
  00458582: 8b 56 20                                       mov    edx,DWORD PTR [esi+0x20]
  00458585: 89 1a                                          mov    DWORD PTR [edx],ebx
  00458587: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  0045858a: 68 34 62 50 00                                 push   0x506234
  0045858f: 53                                             push   ebx
  00458590: 53                                             push   ebx
  00458591: 56                                             push   esi
  00458592: b9 d0 4a 51 00                                 mov    ecx,0x514ad0
  00458597: 89 78 08                                       mov    DWORD PTR [eax+0x8],edi
  0045859a: e8 51 6c ff ff                                 call   0x44f1f0
  0045859f: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  004585a2: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004585a9: e8 92 94 07 00                                 call   0x4d1a40
  004585ae: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004585b1: 5f                                             pop    edi
  004585b2: 5e                                             pop    esi
  004585b3: 5b                                             pop    ebx
  004585b4: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004585bb: 8b e5                                          mov    esp,ebp
  004585bd: 5d                                             pop    ebp
  004585be: c3                                             ret

; [004585C0] Players::?Logoff@Players ; instruction=155 ; plage_limite=00458790 ; issues=0
  004585c0: 55                                             push   ebp
  004585c1: 8b ec                                          mov    ebp,esp
  004585c3: 6a ff                                          push   0xffffffff
  004585c5: 68 93 74 4d 00                                 push   0x4d7493
  004585ca: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004585d0: 50                                             push   eax
  004585d1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004585d8: 81 ec 0c 04 00 00                              sub    esp,0x40c
  004585de: 53                                             push   ebx
  004585df: 56                                             push   esi
  004585e0: 8b f1                                          mov    esi,ecx
  004585e2: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  004585e5: 57                                             push   edi
  004585e6: e8 d5 76 fc ff                                 call   0x41fcc0
  004585eb: 85 c0                                          test   eax,eax
  004585ed: 74 10                                          je     0x4585ff
  004585ef: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  004585f2: 51                                             push   ecx
  004585f3: e8 c8 76 fc ff                                 call   0x41fcc0
  004585f8: 8b c8                                          mov    ecx,eax
  004585fa: e8 e1 20 fe ff                                 call   0x43a6e0
  004585ff: 8d 45 ec                                       lea    eax,[ebp-0x14]
  00458602: 50                                             push   eax
  00458603: 8b ce                                          mov    ecx,esi
  00458605: e8 06 e8 ff ff                                 call   0x456e10
  0045860a: 8b f8                                          mov    edi,eax
  0045860c: 8b 0f                                          mov    ecx,DWORD PTR [edi]
  0045860e: 8b 41 f8                                       mov    eax,DWORD PTR [ecx-0x8]
  00458611: 33 db                                          xor    ebx,ebx
  00458613: 33 c9                                          xor    ecx,ecx
  00458615: 33 f6                                          xor    esi,esi
  00458617: 3b c3                                          cmp    eax,ebx
  00458619: 7e 1f                                          jle    0x45863a
  0045861b: 8b 17                                          mov    edx,DWORD PTR [edi]
  0045861d: 8a 14 32                                       mov    dl,BYTE PTR [edx+esi*1]
  00458620: 80 fa 27                                       cmp    dl,0x27
  00458623: 88 94 0d e8 fb ff ff                           mov    BYTE PTR [ebp+ecx*1-0x418],dl
  0045862a: 75 08                                          jne    0x458634
  0045862c: 41                                             inc    ecx
  0045862d: 88 94 0d e8 fb ff ff                           mov    BYTE PTR [ebp+ecx*1-0x418],dl
  00458634: 41                                             inc    ecx
  00458635: 46                                             inc    esi
  00458636: 3b f0                                          cmp    esi,eax
  00458638: 7c e1                                          jl     0x45861b
  0045863a: 88 9c 0d e8 fb ff ff                           mov    BYTE PTR [ebp+ecx*1-0x418],bl
  00458641: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00458644: e8 f7 93 07 00                                 call   0x4d1a40
  00458649: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0045864c: e8 0d 94 07 00                                 call   0x4d1a5e
  00458651: 6a 44                                          push   0x44
  00458653: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00458656: e8 95 99 fe ff                                 call   0x441ff0
  0045865b: 8b f0                                          mov    esi,eax
  0045865d: 83 c4 04                                       add    esp,0x4
  00458660: 3b f3                                          cmp    esi,ebx
  00458662: 74 35                                          je     0x458699
  00458664: 8d 46 08                                       lea    eax,[esi+0x8]
  00458667: 50                                             push   eax
  00458668: c7 06 8c e5 4d 00                              mov    DWORD PTR [esi],0x4de58c
  0045866e: c7 46 04 ff ff ff ff                           mov    DWORD PTR [esi+0x4],0xffffffff
  00458675: ff 15 dc e0 4d 00                              call   DWORD PTR ds:0x4de0dc
  0045867b: 89 5e 24                                       mov    DWORD PTR [esi+0x24],ebx
  0045867e: 89 5e 28                                       mov    DWORD PTR [esi+0x28],ebx
  00458681: 89 5e 2c                                       mov    DWORD PTR [esi+0x2c],ebx
  00458684: 89 5e 30                                       mov    DWORD PTR [esi+0x30],ebx
  00458687: c7 06 88 e8 4d 00                              mov    DWORD PTR [esi],0x4de888
  0045868d: 89 5e 40                                       mov    DWORD PTR [esi+0x40],ebx
  00458690: c6 46 34 08                                    mov    BYTE PTR [esi+0x34],0x8
  00458694: 89 5e 38                                       mov    DWORD PTR [esi+0x38],ebx
  00458697: eb 02                                          jmp    0x45869b
  00458699: 33 f6                                          xor    esi,esi
  0045869b: 8d 8d e8 fb ff ff                              lea    ecx,[ebp-0x418]
  004586a1: 51                                             push   ecx
  004586a2: 8d 55 f0                                       lea    edx,[ebp-0x10]
  004586a5: 68 e4 69 50 00                                 push   0x5069e4
  004586aa: 52                                             push   edx
  004586ab: e8 e4 93 07 00                                 call   0x4d1a94
  004586b0: 6a 08                                          push   0x8
  004586b2: e8 39 99 fe ff                                 call   0x441ff0
  004586b7: 8b f8                                          mov    edi,eax
  004586b9: 83 c4 10                                       add    esp,0x10
  004586bc: 89 7d e8                                       mov    DWORD PTR [ebp-0x18],edi
  004586bf: 3b fb                                          cmp    edi,ebx
  004586c1: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  004586c5: 74 0a                                          je     0x4586d1
  004586c7: 8d 4f 04                                       lea    ecx,[edi+0x4]
  004586ca: e8 8f 93 07 00                                 call   0x4d1a5e
  004586cf: eb 02                                          jmp    0x4586d3
  004586d1: 33 ff                                          xor    edi,edi
  004586d3: 8d 45 f0                                       lea    eax,[ebp-0x10]
  004586d6: 50                                             push   eax
  004586d7: 8d 4f 04                                       lea    ecx,[edi+0x4]
  004586da: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  004586dd: e8 64 93 07 00                                 call   0x4d1a46
  004586e2: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  004586e5: 8b 56 38                                       mov    edx,DWORD PTR [esi+0x38]
  004586e8: 42                                             inc    edx
  004586e9: 3b c3                                          cmp    eax,ebx
  004586eb: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  004586ee: 89 5e 40                                       mov    DWORD PTR [esi+0x40],ebx
  004586f1: c6 46 34 08                                    mov    BYTE PTR [esi+0x34],0x8
  004586f5: 89 46 2c                                       mov    DWORD PTR [esi+0x2c],eax
  004586f8: 89 56 38                                       mov    DWORD PTR [esi+0x38],edx
  004586fb: 6a 0c                                          push   0xc
  004586fd: 75 28                                          jne    0x458727
  004586ff: e8 ec 98 fe ff                                 call   0x441ff0
  00458704: 83 c4 04                                       add    esp,0x4
  00458707: 3b c3                                          cmp    eax,ebx
  00458709: 74 07                                          je     0x458712
  0045870b: 89 18                                          mov    DWORD PTR [eax],ebx
  0045870d: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00458710: eb 02                                          jmp    0x458714
  00458712: 33 c0                                          xor    eax,eax
  00458714: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00458717: 89 46 28                                       mov    DWORD PTR [esi+0x28],eax
  0045871a: 89 46 24                                       mov    DWORD PTR [esi+0x24],eax
  0045871d: 89 18                                          mov    DWORD PTR [eax],ebx
  0045871f: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00458722: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  00458725: eb 2b                                          jmp    0x458752
  00458727: e8 c4 98 fe ff                                 call   0x441ff0
  0045872c: 83 c4 04                                       add    esp,0x4
  0045872f: 3b c3                                          cmp    eax,ebx
  00458731: 74 07                                          je     0x45873a
  00458733: 89 18                                          mov    DWORD PTR [eax],ebx
  00458735: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00458738: eb 02                                          jmp    0x45873c
  0045873a: 33 c0                                          xor    eax,eax
  0045873c: 8b 56 20                                       mov    edx,DWORD PTR [esi+0x20]
  0045873f: 89 02                                          mov    DWORD PTR [edx],eax
  00458741: 8b 4e 2c                                       mov    ecx,DWORD PTR [esi+0x2c]
  00458744: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00458747: 89 46 28                                       mov    DWORD PTR [esi+0x28],eax
  0045874a: 89 48 04                                       mov    DWORD PTR [eax+0x4],ecx
  0045874d: 8b 56 20                                       mov    edx,DWORD PTR [esi+0x20]
  00458750: 89 1a                                          mov    DWORD PTR [edx],ebx
  00458752: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00458755: 68 34 62 50 00                                 push   0x506234
  0045875a: 53                                             push   ebx
  0045875b: 53                                             push   ebx
  0045875c: 56                                             push   esi
  0045875d: b9 d0 4a 51 00                                 mov    ecx,0x514ad0
  00458762: 89 78 08                                       mov    DWORD PTR [eax+0x8],edi
  00458765: e8 86 6a ff ff                                 call   0x44f1f0
  0045876a: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0045876d: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00458774: e8 c7 92 07 00                                 call   0x4d1a40
  00458779: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0045877c: 5f                                             pop    edi
  0045877d: 5e                                             pop    esi
  0045877e: 5b                                             pop    ebx
  0045877f: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00458786: 8b e5                                          mov    esp,ebp
  00458788: 5d                                             pop    ebp
  00458789: c3                                             ret

; [00458820] Players::?AccountLogged@Players ; instruction=47 ; plage_limite=004588B0 ; issues=0
  00458820: 55                                             push   ebp
  00458821: 8b ec                                          mov    ebp,esp
  00458823: 81 ec 00 08 00 00                              sub    esp,0x800
  00458829: 53                                             push   ebx
  0045882a: 56                                             push   esi
  0045882b: 32 db                                          xor    bl,bl
  0045882d: 57                                             push   edi
  0045882e: b9 d0 4a 51 00                                 mov    ecx,0x514ad0
  00458833: 88 9d 00 f8 ff ff                              mov    BYTE PTR [ebp-0x800],bl
  00458839: e8 42 61 ff ff                                 call   0x44e980
  0045883e: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00458841: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00458844: 8b 30                                          mov    esi,DWORD PTR [eax]
  00458846: 8b 3d 20 42 51 00                              mov    edi,DWORD PTR ds:0x514220
  0045884c: 6a 01                                          push   0x1
  0045884e: 51                                             push   ecx
  0045884f: 68 58 13 51 00                                 push   0x511358
  00458854: e8 07 52 fe ff                                 call   0x43da60
  00458859: 50                                             push   eax
  0045885a: 68 1e 0b 00 00                                 push   0xb1e
  0045885f: e8 8c 51 fe ff                                 call   0x43d9f0
  00458864: 83 c4 0c                                       add    esp,0xc
  00458867: 50                                             push   eax
  00458868: 56                                             push   esi
  00458869: 57                                             push   edi
  0045886a: 8d 95 00 f8 ff ff                              lea    edx,[ebp-0x800]
  00458870: 68 14 6a 50 00                                 push   0x506a14
  00458875: 52                                             push   edx
  00458876: e8 c5 b0 fa ff                                 call   0x403940
  0045887b: 83 c4 18                                       add    esp,0x18
  0045887e: 50                                             push   eax
  0045887f: b9 d0 4a 51 00                                 mov    ecx,0x514ad0
  00458884: e8 f7 64 ff ff                                 call   0x44ed80
  00458889: 85 c0                                          test   eax,eax
  0045888b: 75 02                                          jne    0x45888f
  0045888d: b3 01                                          mov    bl,0x1
  0045888f: b9 d0 4a 51 00                                 mov    ecx,0x514ad0
  00458894: e8 d7 64 ff ff                                 call   0x44ed70
  00458899: b9 d0 4a 51 00                                 mov    ecx,0x514ad0
  0045889e: e8 2d 61 ff ff                                 call   0x44e9d0
  004588a3: 5f                                             pop    edi
  004588a4: 5e                                             pop    esi
  004588a5: 8a c3                                          mov    al,bl
  004588a7: 5b                                             pop    ebx
  004588a8: 8b e5                                          mov    esp,ebp
  004588aa: 5d                                             pop    ebp
  004588ab: c3                                             ret

; [00458A90] Players::?AccountHeartBeat@Players ; instruction=136 ; plage_limite=00458C30 ; issues=0
  00458a90: 55                                             push   ebp
  00458a91: 8b ec                                          mov    ebp,esp
  00458a93: 6a ff                                          push   0xffffffff
  00458a95: 68 d3 74 4d 00                                 push   0x4d74d3
  00458a9a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00458aa0: 50                                             push   eax
  00458aa1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00458aa8: 83 ec 0c                                       sub    esp,0xc
  00458aab: 80 3d 24 42 51 00 01                           cmp    BYTE PTR ds:0x514224,0x1
  00458ab2: 0f 85 5f 01 00 00                              jne    0x458c17
  00458ab8: 53                                             push   ebx
  00458ab9: 56                                             push   esi
  00458aba: 57                                             push   edi
  00458abb: e8 f0 fb 01 00                                 call   0x4786b0
  00458ac0: 6a 44                                          push   0x44
  00458ac2: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  00458ac5: e8 26 95 fe ff                                 call   0x441ff0
  00458aca: 8b f0                                          mov    esi,eax
  00458acc: 33 db                                          xor    ebx,ebx
  00458ace: 83 c4 04                                       add    esp,0x4
  00458ad1: 3b f3                                          cmp    esi,ebx
  00458ad3: 74 35                                          je     0x458b0a
  00458ad5: 8d 46 08                                       lea    eax,[esi+0x8]
  00458ad8: 50                                             push   eax
  00458ad9: c7 06 8c e5 4d 00                              mov    DWORD PTR [esi],0x4de58c
  00458adf: c7 46 04 ff ff ff ff                           mov    DWORD PTR [esi+0x4],0xffffffff
  00458ae6: ff 15 dc e0 4d 00                              call   DWORD PTR ds:0x4de0dc
  00458aec: 89 5e 24                                       mov    DWORD PTR [esi+0x24],ebx
  00458aef: 89 5e 28                                       mov    DWORD PTR [esi+0x28],ebx
  00458af2: 89 5e 2c                                       mov    DWORD PTR [esi+0x2c],ebx
  00458af5: 89 5e 30                                       mov    DWORD PTR [esi+0x30],ebx
  00458af8: c7 06 88 e8 4d 00                              mov    DWORD PTR [esi],0x4de888
  00458afe: 89 5e 40                                       mov    DWORD PTR [esi+0x40],ebx
  00458b01: c6 46 34 08                                    mov    BYTE PTR [esi+0x34],0x8
  00458b05: 89 5e 38                                       mov    DWORD PTR [esi+0x38],ebx
  00458b08: eb 02                                          jmp    0x458b0c
  00458b0a: 33 f6                                          xor    esi,esi
  00458b0c: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00458b0f: e8 4a 8f 07 00                                 call   0x4d1a5e
  00458b14: a1 28 42 51 00                                 mov    eax,ds:0x514228
  00458b19: 8b 0d 44 42 51 00                              mov    ecx,DWORD PTR ds:0x514244
  00458b1f: 68 dc 6a 50 00                                 push   0x506adc
  00458b24: 50                                             push   eax
  00458b25: 68 dc 6a 50 00                                 push   0x506adc
  00458b2a: 50                                             push   eax
  00458b2b: 51                                             push   ecx
  00458b2c: 8d 55 f0                                       lea    edx,[ebp-0x10]
  00458b2f: 68 b8 6a 50 00                                 push   0x506ab8
  00458b34: 52                                             push   edx
  00458b35: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00458b38: e8 57 8f 07 00                                 call   0x4d1a94
  00458b3d: 6a 08                                          push   0x8
  00458b3f: e8 ac 94 fe ff                                 call   0x441ff0
  00458b44: 8b f8                                          mov    edi,eax
  00458b46: 83 c4 20                                       add    esp,0x20
  00458b49: 89 7d e8                                       mov    DWORD PTR [ebp-0x18],edi
  00458b4c: 3b fb                                          cmp    edi,ebx
  00458b4e: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00458b52: 74 0a                                          je     0x458b5e
  00458b54: 8d 4f 04                                       lea    ecx,[edi+0x4]
  00458b57: e8 02 8f 07 00                                 call   0x4d1a5e
  00458b5c: eb 02                                          jmp    0x458b60
  00458b5e: 33 ff                                          xor    edi,edi
  00458b60: 8d 45 f0                                       lea    eax,[ebp-0x10]
  00458b63: 50                                             push   eax
  00458b64: 8d 4f 04                                       lea    ecx,[edi+0x4]
  00458b67: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00458b6a: e8 d7 8e 07 00                                 call   0x4d1a46
  00458b6f: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  00458b72: 8b 56 38                                       mov    edx,DWORD PTR [esi+0x38]
  00458b75: 42                                             inc    edx
  00458b76: 3b c3                                          cmp    eax,ebx
  00458b78: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00458b7b: 89 5e 40                                       mov    DWORD PTR [esi+0x40],ebx
  00458b7e: c6 46 34 08                                    mov    BYTE PTR [esi+0x34],0x8
  00458b82: 89 46 2c                                       mov    DWORD PTR [esi+0x2c],eax
  00458b85: 89 56 38                                       mov    DWORD PTR [esi+0x38],edx
  00458b88: 6a 0c                                          push   0xc
  00458b8a: 75 28                                          jne    0x458bb4
  00458b8c: e8 5f 94 fe ff                                 call   0x441ff0
  00458b91: 83 c4 04                                       add    esp,0x4
  00458b94: 3b c3                                          cmp    eax,ebx
  00458b96: 74 07                                          je     0x458b9f
  00458b98: 89 18                                          mov    DWORD PTR [eax],ebx
  00458b9a: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00458b9d: eb 02                                          jmp    0x458ba1
  00458b9f: 33 c0                                          xor    eax,eax
  00458ba1: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00458ba4: 89 46 28                                       mov    DWORD PTR [esi+0x28],eax
  00458ba7: 89 46 24                                       mov    DWORD PTR [esi+0x24],eax
  00458baa: 89 18                                          mov    DWORD PTR [eax],ebx
  00458bac: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00458baf: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  00458bb2: eb 2b                                          jmp    0x458bdf
  00458bb4: e8 37 94 fe ff                                 call   0x441ff0
  00458bb9: 83 c4 04                                       add    esp,0x4
  00458bbc: 3b c3                                          cmp    eax,ebx
  00458bbe: 74 07                                          je     0x458bc7
  00458bc0: 89 18                                          mov    DWORD PTR [eax],ebx
  00458bc2: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00458bc5: eb 02                                          jmp    0x458bc9
  00458bc7: 33 c0                                          xor    eax,eax
  00458bc9: 8b 56 20                                       mov    edx,DWORD PTR [esi+0x20]
  00458bcc: 89 02                                          mov    DWORD PTR [edx],eax
  00458bce: 8b 4e 2c                                       mov    ecx,DWORD PTR [esi+0x2c]
  00458bd1: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00458bd4: 89 46 28                                       mov    DWORD PTR [esi+0x28],eax
  00458bd7: 89 48 04                                       mov    DWORD PTR [eax+0x4],ecx
  00458bda: 8b 56 20                                       mov    edx,DWORD PTR [esi+0x20]
  00458bdd: 89 1a                                          mov    DWORD PTR [edx],ebx
  00458bdf: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00458be2: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  00458be5: 68 14 66 50 00                                 push   0x506614
  00458bea: 53                                             push   ebx
  00458beb: 53                                             push   ebx
  00458bec: 56                                             push   esi
  00458bed: 89 78 08                                       mov    DWORD PTR [eax+0x8],edi
  00458bf0: e8 fb 65 ff ff                                 call   0x44f1f0
  00458bf5: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00458bf8: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00458bff: e8 3c 8e 07 00                                 call   0x4d1a40
  00458c04: 5f                                             pop    edi
  00458c05: 5e                                             pop    esi
  00458c06: b0 01                                          mov    al,0x1
  00458c08: 5b                                             pop    ebx
  00458c09: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00458c0c: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00458c13: 8b e5                                          mov    esp,ebp
  00458c15: 5d                                             pop    ebp
  00458c16: c3                                             ret
  00458c17: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00458c1a: 32 c0                                          xor    al,al
  00458c1c: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00458c23: 8b e5                                          mov    esp,ebp
  00458c25: 5d                                             pop    ebp
  00458c26: c3                                             ret
