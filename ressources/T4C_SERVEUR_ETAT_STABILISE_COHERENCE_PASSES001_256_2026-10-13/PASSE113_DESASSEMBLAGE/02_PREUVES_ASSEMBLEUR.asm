; PASSE 113, Continuation directe dans la première grande lacune
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2137 distinct instructions; 1 graph entry points

  004cbb15: 89 15 c8 ee 55 00                               mov    DWORD PTR ds:0x55eec8,edx
  004cbb1b: 8b fa                                           mov    edi,edx
  004cbb1d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbb1f: 8b c8                                           mov    ecx,eax
  004cbb21: 83 e1 03                                        and    ecx,0x3
  004cbb24: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbb26: a1 78 ec 55 00                                  mov    eax,ds:0x55ec78
  004cbb2b: 85 c0                                           test   eax,eax
  004cbb2d: 66 c7 05 cc ee 55 00 23 00                      mov    WORD PTR ds:0x55eecc,0x23
  004cbb36: 74 09                                           je     0x4cbb41
  004cbb38: 50                                              push   eax
  004cbb39: e8 22 65 f7 ff                                  call   0x442060
  004cbb3e: 83 c4 04                                        add    esp,0x4
  004cbb41: 83 c9 ff                                        or     ecx,0xffffffff
  004cbb44: 33 c0                                           xor    eax,eax
  004cbb46: bf 28 08 51 00                                  mov    edi,0x510828
  004cbb4b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbb4d: f7 d1                                           not    ecx
  004cbb4f: 51                                              push   ecx
  004cbb50: e8 ab 29 00 00                                  call   0x4ce500
  004cbb55: 83 c9 ff                                        or     ecx,0xffffffff
  004cbb58: 8b d0                                           mov    edx,eax
  004cbb5a: 33 c0                                           xor    eax,eax
  004cbb5c: 83 c4 04                                        add    esp,0x4
  004cbb5f: bf 28 08 51 00                                  mov    edi,0x510828
  004cbb64: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbb66: f7 d1                                           not    ecx
  004cbb68: 2b f9                                           sub    edi,ecx
  004cbb6a: 8b c1                                           mov    eax,ecx
  004cbb6c: c1 e9 02                                        shr    ecx,0x2
  004cbb6f: 8b f7                                           mov    esi,edi
  004cbb71: 89 15 78 ec 55 00                               mov    DWORD PTR ds:0x55ec78,edx
  004cbb77: 8b fa                                           mov    edi,edx
  004cbb79: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbb7b: 8b c8                                           mov    ecx,eax
  004cbb7d: 83 e1 03                                        and    ecx,0x3
  004cbb80: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbb82: a1 28 ea 55 00                                  mov    eax,ds:0x55ea28
  004cbb87: 85 c0                                           test   eax,eax
  004cbb89: 66 c7 05 7c ec 55 00 24 00                      mov    WORD PTR ds:0x55ec7c,0x24
  004cbb92: 74 09                                           je     0x4cbb9d
  004cbb94: 50                                              push   eax
  004cbb95: e8 c6 64 f7 ff                                  call   0x442060
  004cbb9a: 83 c4 04                                        add    esp,0x4
  004cbb9d: 83 c9 ff                                        or     ecx,0xffffffff
  004cbba0: 33 c0                                           xor    eax,eax
  004cbba2: bf 14 08 51 00                                  mov    edi,0x510814
  004cbba7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbba9: f7 d1                                           not    ecx
  004cbbab: 51                                              push   ecx
  004cbbac: e8 4f 29 00 00                                  call   0x4ce500
  004cbbb1: 83 c9 ff                                        or     ecx,0xffffffff
  004cbbb4: 8b d0                                           mov    edx,eax
  004cbbb6: 33 c0                                           xor    eax,eax
  004cbbb8: 83 c4 04                                        add    esp,0x4
  004cbbbb: bf 14 08 51 00                                  mov    edi,0x510814
  004cbbc0: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbbc2: f7 d1                                           not    ecx
  004cbbc4: 2b f9                                           sub    edi,ecx
  004cbbc6: 8b c1                                           mov    eax,ecx
  004cbbc8: c1 e9 02                                        shr    ecx,0x2
  004cbbcb: 8b f7                                           mov    esi,edi
  004cbbcd: 89 15 28 ea 55 00                               mov    DWORD PTR ds:0x55ea28,edx
  004cbbd3: 8b fa                                           mov    edi,edx
  004cbbd5: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbbd7: 8b c8                                           mov    ecx,eax
  004cbbd9: 83 e1 03                                        and    ecx,0x3
  004cbbdc: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbbde: a1 d8 e7 55 00                                  mov    eax,ds:0x55e7d8
  004cbbe3: 85 c0                                           test   eax,eax
  004cbbe5: 66 c7 05 2c ea 55 00 25 00                      mov    WORD PTR ds:0x55ea2c,0x25
  004cbbee: 74 09                                           je     0x4cbbf9
  004cbbf0: 50                                              push   eax
  004cbbf1: e8 6a 64 f7 ff                                  call   0x442060
  004cbbf6: 83 c4 04                                        add    esp,0x4
  004cbbf9: 83 c9 ff                                        or     ecx,0xffffffff
  004cbbfc: 33 c0                                           xor    eax,eax
  004cbbfe: bf 04 08 51 00                                  mov    edi,0x510804
  004cbc03: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbc05: f7 d1                                           not    ecx
  004cbc07: 51                                              push   ecx
  004cbc08: e8 f3 28 00 00                                  call   0x4ce500
  004cbc0d: 83 c9 ff                                        or     ecx,0xffffffff
  004cbc10: 8b d0                                           mov    edx,eax
  004cbc12: 33 c0                                           xor    eax,eax
  004cbc14: 83 c4 04                                        add    esp,0x4
  004cbc17: bf 04 08 51 00                                  mov    edi,0x510804
  004cbc1c: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbc1e: f7 d1                                           not    ecx
  004cbc20: 2b f9                                           sub    edi,ecx
  004cbc22: 8b c1                                           mov    eax,ecx
  004cbc24: c1 e9 02                                        shr    ecx,0x2
  004cbc27: 8b f7                                           mov    esi,edi
  004cbc29: 89 15 d8 e7 55 00                               mov    DWORD PTR ds:0x55e7d8,edx
  004cbc2f: 8b fa                                           mov    edi,edx
  004cbc31: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbc33: 8b c8                                           mov    ecx,eax
  004cbc35: 83 e1 03                                        and    ecx,0x3
  004cbc38: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbc3a: a1 88 e5 55 00                                  mov    eax,ds:0x55e588
  004cbc3f: 85 c0                                           test   eax,eax
  004cbc41: 66 c7 05 dc e7 55 00 26 00                      mov    WORD PTR ds:0x55e7dc,0x26
  004cbc4a: 74 09                                           je     0x4cbc55
  004cbc4c: 50                                              push   eax
  004cbc4d: e8 0e 64 f7 ff                                  call   0x442060
  004cbc52: 83 c4 04                                        add    esp,0x4
  004cbc55: 83 c9 ff                                        or     ecx,0xffffffff
  004cbc58: 33 c0                                           xor    eax,eax
  004cbc5a: bf f4 07 51 00                                  mov    edi,0x5107f4
  004cbc5f: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbc61: f7 d1                                           not    ecx
  004cbc63: 51                                              push   ecx
  004cbc64: e8 97 28 00 00                                  call   0x4ce500
  004cbc69: 83 c9 ff                                        or     ecx,0xffffffff
  004cbc6c: 8b d0                                           mov    edx,eax
  004cbc6e: 33 c0                                           xor    eax,eax
  004cbc70: 83 c4 04                                        add    esp,0x4
  004cbc73: bf f4 07 51 00                                  mov    edi,0x5107f4
  004cbc78: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbc7a: f7 d1                                           not    ecx
  004cbc7c: 2b f9                                           sub    edi,ecx
  004cbc7e: 8b c1                                           mov    eax,ecx
  004cbc80: c1 e9 02                                        shr    ecx,0x2
  004cbc83: 8b f7                                           mov    esi,edi
  004cbc85: 89 15 88 e5 55 00                               mov    DWORD PTR ds:0x55e588,edx
  004cbc8b: 8b fa                                           mov    edi,edx
  004cbc8d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbc8f: 8b c8                                           mov    ecx,eax
  004cbc91: 83 e1 03                                        and    ecx,0x3
  004cbc94: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbc96: a1 38 e3 55 00                                  mov    eax,ds:0x55e338
  004cbc9b: 85 c0                                           test   eax,eax
  004cbc9d: 66 c7 05 8c e5 55 00 27 00                      mov    WORD PTR ds:0x55e58c,0x27
  004cbca6: 74 09                                           je     0x4cbcb1
  004cbca8: 50                                              push   eax
  004cbca9: e8 b2 63 f7 ff                                  call   0x442060
  004cbcae: 83 c4 04                                        add    esp,0x4
  004cbcb1: 83 c9 ff                                        or     ecx,0xffffffff
  004cbcb4: 33 c0                                           xor    eax,eax
  004cbcb6: bf e4 07 51 00                                  mov    edi,0x5107e4
  004cbcbb: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbcbd: f7 d1                                           not    ecx
  004cbcbf: 51                                              push   ecx
  004cbcc0: e8 3b 28 00 00                                  call   0x4ce500
  004cbcc5: 83 c9 ff                                        or     ecx,0xffffffff
  004cbcc8: 8b d0                                           mov    edx,eax
  004cbcca: 33 c0                                           xor    eax,eax
  004cbccc: 83 c4 04                                        add    esp,0x4
  004cbccf: bf e4 07 51 00                                  mov    edi,0x5107e4
  004cbcd4: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbcd6: f7 d1                                           not    ecx
  004cbcd8: 2b f9                                           sub    edi,ecx
  004cbcda: 8b c1                                           mov    eax,ecx
  004cbcdc: c1 e9 02                                        shr    ecx,0x2
  004cbcdf: 8b f7                                           mov    esi,edi
  004cbce1: 89 15 38 e3 55 00                               mov    DWORD PTR ds:0x55e338,edx
  004cbce7: 8b fa                                           mov    edi,edx
  004cbce9: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbceb: 8b c8                                           mov    ecx,eax
  004cbced: 83 e1 03                                        and    ecx,0x3
  004cbcf0: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbcf2: a1 e8 e0 55 00                                  mov    eax,ds:0x55e0e8
  004cbcf7: 85 c0                                           test   eax,eax
  004cbcf9: 66 c7 05 3c e3 55 00 28 00                      mov    WORD PTR ds:0x55e33c,0x28
  004cbd02: 74 09                                           je     0x4cbd0d
  004cbd04: 50                                              push   eax
  004cbd05: e8 56 63 f7 ff                                  call   0x442060
  004cbd0a: 83 c4 04                                        add    esp,0x4
  004cbd0d: 83 c9 ff                                        or     ecx,0xffffffff
  004cbd10: 33 c0                                           xor    eax,eax
  004cbd12: bf d0 07 51 00                                  mov    edi,0x5107d0
  004cbd17: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbd19: f7 d1                                           not    ecx
  004cbd1b: 51                                              push   ecx
  004cbd1c: e8 df 27 00 00                                  call   0x4ce500
  004cbd21: 83 c9 ff                                        or     ecx,0xffffffff
  004cbd24: 8b d0                                           mov    edx,eax
  004cbd26: 33 c0                                           xor    eax,eax
  004cbd28: 83 c4 04                                        add    esp,0x4
  004cbd2b: bf d0 07 51 00                                  mov    edi,0x5107d0
  004cbd30: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbd32: f7 d1                                           not    ecx
  004cbd34: 2b f9                                           sub    edi,ecx
  004cbd36: 8b c1                                           mov    eax,ecx
  004cbd38: c1 e9 02                                        shr    ecx,0x2
  004cbd3b: 8b f7                                           mov    esi,edi
  004cbd3d: 89 15 e8 e0 55 00                               mov    DWORD PTR ds:0x55e0e8,edx
  004cbd43: 8b fa                                           mov    edi,edx
  004cbd45: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbd47: 8b c8                                           mov    ecx,eax
  004cbd49: 83 e1 03                                        and    ecx,0x3
  004cbd4c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbd4e: a1 98 de 55 00                                  mov    eax,ds:0x55de98
  004cbd53: 85 c0                                           test   eax,eax
  004cbd55: 66 c7 05 ec e0 55 00 34 00                      mov    WORD PTR ds:0x55e0ec,0x34
  004cbd5e: 74 09                                           je     0x4cbd69
  004cbd60: 50                                              push   eax
  004cbd61: e8 fa 62 f7 ff                                  call   0x442060
  004cbd66: 83 c4 04                                        add    esp,0x4
  004cbd69: 83 c9 ff                                        or     ecx,0xffffffff
  004cbd6c: 33 c0                                           xor    eax,eax
  004cbd6e: bf bc 07 51 00                                  mov    edi,0x5107bc
  004cbd73: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbd75: f7 d1                                           not    ecx
  004cbd77: 51                                              push   ecx
  004cbd78: e8 83 27 00 00                                  call   0x4ce500
  004cbd7d: 83 c9 ff                                        or     ecx,0xffffffff
  004cbd80: 8b d0                                           mov    edx,eax
  004cbd82: 33 c0                                           xor    eax,eax
  004cbd84: 83 c4 04                                        add    esp,0x4
  004cbd87: bf bc 07 51 00                                  mov    edi,0x5107bc
  004cbd8c: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbd8e: f7 d1                                           not    ecx
  004cbd90: 2b f9                                           sub    edi,ecx
  004cbd92: 8b c1                                           mov    eax,ecx
  004cbd94: c1 e9 02                                        shr    ecx,0x2
  004cbd97: 8b f7                                           mov    esi,edi
  004cbd99: 89 15 98 de 55 00                               mov    DWORD PTR ds:0x55de98,edx
  004cbd9f: 8b fa                                           mov    edi,edx
  004cbda1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbda3: 8b c8                                           mov    ecx,eax
  004cbda5: 83 e1 03                                        and    ecx,0x3
  004cbda8: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbdaa: a1 48 dc 55 00                                  mov    eax,ds:0x55dc48
  004cbdaf: 85 c0                                           test   eax,eax
  004cbdb1: 66 c7 05 9c de 55 00 35 00                      mov    WORD PTR ds:0x55de9c,0x35
  004cbdba: 74 09                                           je     0x4cbdc5
  004cbdbc: 50                                              push   eax
  004cbdbd: e8 9e 62 f7 ff                                  call   0x442060
  004cbdc2: 83 c4 04                                        add    esp,0x4
  004cbdc5: 83 c9 ff                                        or     ecx,0xffffffff
  004cbdc8: 33 c0                                           xor    eax,eax
  004cbdca: bf b0 07 51 00                                  mov    edi,0x5107b0
  004cbdcf: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbdd1: f7 d1                                           not    ecx
  004cbdd3: 51                                              push   ecx
  004cbdd4: e8 27 27 00 00                                  call   0x4ce500
  004cbdd9: 83 c9 ff                                        or     ecx,0xffffffff
  004cbddc: 8b d0                                           mov    edx,eax
  004cbdde: 33 c0                                           xor    eax,eax
  004cbde0: 83 c4 04                                        add    esp,0x4
  004cbde3: bf b0 07 51 00                                  mov    edi,0x5107b0
  004cbde8: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbdea: f7 d1                                           not    ecx
  004cbdec: 2b f9                                           sub    edi,ecx
  004cbdee: 8b c1                                           mov    eax,ecx
  004cbdf0: c1 e9 02                                        shr    ecx,0x2
  004cbdf3: 8b f7                                           mov    esi,edi
  004cbdf5: 89 15 48 dc 55 00                               mov    DWORD PTR ds:0x55dc48,edx
  004cbdfb: 8b fa                                           mov    edi,edx
  004cbdfd: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbdff: 8b c8                                           mov    ecx,eax
  004cbe01: 83 e1 03                                        and    ecx,0x3
  004cbe04: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbe06: a1 f8 d9 55 00                                  mov    eax,ds:0x55d9f8
  004cbe0b: 85 c0                                           test   eax,eax
  004cbe0d: 66 c7 05 4c dc 55 00 6e 00                      mov    WORD PTR ds:0x55dc4c,0x6e
  004cbe16: 74 09                                           je     0x4cbe21
  004cbe18: 50                                              push   eax
  004cbe19: e8 42 62 f7 ff                                  call   0x442060
  004cbe1e: 83 c4 04                                        add    esp,0x4
  004cbe21: 83 c9 ff                                        or     ecx,0xffffffff
  004cbe24: 33 c0                                           xor    eax,eax
  004cbe26: bf a4 07 51 00                                  mov    edi,0x5107a4
  004cbe2b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbe2d: f7 d1                                           not    ecx
  004cbe2f: 51                                              push   ecx
  004cbe30: e8 cb 26 00 00                                  call   0x4ce500
  004cbe35: 83 c9 ff                                        or     ecx,0xffffffff
  004cbe38: 8b d0                                           mov    edx,eax
  004cbe3a: 33 c0                                           xor    eax,eax
  004cbe3c: 83 c4 04                                        add    esp,0x4
  004cbe3f: bf a4 07 51 00                                  mov    edi,0x5107a4
  004cbe44: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbe46: f7 d1                                           not    ecx
  004cbe48: 2b f9                                           sub    edi,ecx
  004cbe4a: 8b c1                                           mov    eax,ecx
  004cbe4c: c1 e9 02                                        shr    ecx,0x2
  004cbe4f: 8b f7                                           mov    esi,edi
  004cbe51: 89 15 f8 d9 55 00                               mov    DWORD PTR ds:0x55d9f8,edx
  004cbe57: 8b fa                                           mov    edi,edx
  004cbe59: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbe5b: 8b c8                                           mov    ecx,eax
  004cbe5d: 83 e1 03                                        and    ecx,0x3
  004cbe60: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbe62: a1 a8 d7 55 00                                  mov    eax,ds:0x55d7a8
  004cbe67: 85 c0                                           test   eax,eax
  004cbe69: 66 c7 05 fc d9 55 00 6f 00                      mov    WORD PTR ds:0x55d9fc,0x6f
  004cbe72: 74 09                                           je     0x4cbe7d
  004cbe74: 50                                              push   eax
  004cbe75: e8 e6 61 f7 ff                                  call   0x442060
  004cbe7a: 83 c4 04                                        add    esp,0x4
  004cbe7d: 83 c9 ff                                        or     ecx,0xffffffff
  004cbe80: 33 c0                                           xor    eax,eax
  004cbe82: bf 98 07 51 00                                  mov    edi,0x510798
  004cbe87: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbe89: f7 d1                                           not    ecx
  004cbe8b: 51                                              push   ecx
  004cbe8c: e8 6f 26 00 00                                  call   0x4ce500
  004cbe91: 83 c9 ff                                        or     ecx,0xffffffff
  004cbe94: 8b d0                                           mov    edx,eax
  004cbe96: 33 c0                                           xor    eax,eax
  004cbe98: 83 c4 04                                        add    esp,0x4
  004cbe9b: bf 98 07 51 00                                  mov    edi,0x510798
  004cbea0: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbea2: f7 d1                                           not    ecx
  004cbea4: 2b f9                                           sub    edi,ecx
  004cbea6: 8b c1                                           mov    eax,ecx
  004cbea8: c1 e9 02                                        shr    ecx,0x2
  004cbeab: 8b f7                                           mov    esi,edi
  004cbead: 89 15 a8 d7 55 00                               mov    DWORD PTR ds:0x55d7a8,edx
  004cbeb3: 8b fa                                           mov    edi,edx
  004cbeb5: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbeb7: 8b c8                                           mov    ecx,eax
  004cbeb9: 83 e1 03                                        and    ecx,0x3
  004cbebc: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbebe: a1 58 d5 55 00                                  mov    eax,ds:0x55d558
  004cbec3: 85 c0                                           test   eax,eax
  004cbec5: 66 c7 05 ac d7 55 00 70 00                      mov    WORD PTR ds:0x55d7ac,0x70
  004cbece: 74 09                                           je     0x4cbed9
  004cbed0: 50                                              push   eax
  004cbed1: e8 8a 61 f7 ff                                  call   0x442060
  004cbed6: 83 c4 04                                        add    esp,0x4
  004cbed9: 83 c9 ff                                        or     ecx,0xffffffff
  004cbedc: 33 c0                                           xor    eax,eax
  004cbede: bf 84 07 51 00                                  mov    edi,0x510784
  004cbee3: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbee5: f7 d1                                           not    ecx
  004cbee7: 51                                              push   ecx
  004cbee8: e8 13 26 00 00                                  call   0x4ce500
  004cbeed: 83 c9 ff                                        or     ecx,0xffffffff
  004cbef0: 8b d0                                           mov    edx,eax
  004cbef2: 33 c0                                           xor    eax,eax
  004cbef4: 83 c4 04                                        add    esp,0x4
  004cbef7: bf 84 07 51 00                                  mov    edi,0x510784
  004cbefc: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbefe: f7 d1                                           not    ecx
  004cbf00: 2b f9                                           sub    edi,ecx
  004cbf02: 8b c1                                           mov    eax,ecx
  004cbf04: c1 e9 02                                        shr    ecx,0x2
  004cbf07: 8b f7                                           mov    esi,edi
  004cbf09: 89 15 58 d5 55 00                               mov    DWORD PTR ds:0x55d558,edx
  004cbf0f: 8b fa                                           mov    edi,edx
  004cbf11: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbf13: 8b c8                                           mov    ecx,eax
  004cbf15: 83 e1 03                                        and    ecx,0x3
  004cbf18: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbf1a: a1 08 d3 55 00                                  mov    eax,ds:0x55d308
  004cbf1f: 85 c0                                           test   eax,eax
  004cbf21: 66 c7 05 5c d5 55 00 71 00                      mov    WORD PTR ds:0x55d55c,0x71
  004cbf2a: 74 09                                           je     0x4cbf35
  004cbf2c: 50                                              push   eax
  004cbf2d: e8 2e 61 f7 ff                                  call   0x442060
  004cbf32: 83 c4 04                                        add    esp,0x4
  004cbf35: 83 c9 ff                                        or     ecx,0xffffffff
  004cbf38: 33 c0                                           xor    eax,eax
  004cbf3a: bf 70 07 51 00                                  mov    edi,0x510770
  004cbf3f: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbf41: f7 d1                                           not    ecx
  004cbf43: 51                                              push   ecx
  004cbf44: e8 b7 25 00 00                                  call   0x4ce500
  004cbf49: 83 c9 ff                                        or     ecx,0xffffffff
  004cbf4c: 8b d0                                           mov    edx,eax
  004cbf4e: 33 c0                                           xor    eax,eax
  004cbf50: 83 c4 04                                        add    esp,0x4
  004cbf53: bf 70 07 51 00                                  mov    edi,0x510770
  004cbf58: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbf5a: f7 d1                                           not    ecx
  004cbf5c: 2b f9                                           sub    edi,ecx
  004cbf5e: 8b c1                                           mov    eax,ecx
  004cbf60: c1 e9 02                                        shr    ecx,0x2
  004cbf63: 8b f7                                           mov    esi,edi
  004cbf65: 89 15 08 d3 55 00                               mov    DWORD PTR ds:0x55d308,edx
  004cbf6b: 8b fa                                           mov    edi,edx
  004cbf6d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbf6f: 8b c8                                           mov    ecx,eax
  004cbf71: 83 e1 03                                        and    ecx,0x3
  004cbf74: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbf76: a1 b8 d0 55 00                                  mov    eax,ds:0x55d0b8
  004cbf7b: 85 c0                                           test   eax,eax
  004cbf7d: 66 c7 05 0c d3 55 00 72 00                      mov    WORD PTR ds:0x55d30c,0x72
  004cbf86: 74 09                                           je     0x4cbf91
  004cbf88: 50                                              push   eax
  004cbf89: e8 d2 60 f7 ff                                  call   0x442060
  004cbf8e: 83 c4 04                                        add    esp,0x4
  004cbf91: 83 c9 ff                                        or     ecx,0xffffffff
  004cbf94: 33 c0                                           xor    eax,eax
  004cbf96: bf 64 07 51 00                                  mov    edi,0x510764
  004cbf9b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbf9d: f7 d1                                           not    ecx
  004cbf9f: 51                                              push   ecx
  004cbfa0: e8 5b 25 00 00                                  call   0x4ce500
  004cbfa5: 83 c9 ff                                        or     ecx,0xffffffff
  004cbfa8: 8b d0                                           mov    edx,eax
  004cbfaa: 33 c0                                           xor    eax,eax
  004cbfac: 83 c4 04                                        add    esp,0x4
  004cbfaf: bf 64 07 51 00                                  mov    edi,0x510764
  004cbfb4: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbfb6: f7 d1                                           not    ecx
  004cbfb8: 2b f9                                           sub    edi,ecx
  004cbfba: 8b c1                                           mov    eax,ecx
  004cbfbc: c1 e9 02                                        shr    ecx,0x2
  004cbfbf: 8b f7                                           mov    esi,edi
  004cbfc1: 89 15 b8 d0 55 00                               mov    DWORD PTR ds:0x55d0b8,edx
  004cbfc7: 8b fa                                           mov    edi,edx
  004cbfc9: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cbfcb: 8b c8                                           mov    ecx,eax
  004cbfcd: 83 e1 03                                        and    ecx,0x3
  004cbfd0: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cbfd2: a1 68 ce 55 00                                  mov    eax,ds:0x55ce68
  004cbfd7: 85 c0                                           test   eax,eax
  004cbfd9: 66 c7 05 bc d0 55 00 3c 00                      mov    WORD PTR ds:0x55d0bc,0x3c
  004cbfe2: 74 09                                           je     0x4cbfed
  004cbfe4: 50                                              push   eax
  004cbfe5: e8 76 60 f7 ff                                  call   0x442060
  004cbfea: 83 c4 04                                        add    esp,0x4
  004cbfed: 83 c9 ff                                        or     ecx,0xffffffff
  004cbff0: 33 c0                                           xor    eax,eax
  004cbff2: bf 64 07 51 00                                  mov    edi,0x510764
  004cbff7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cbff9: f7 d1                                           not    ecx
  004cbffb: 51                                              push   ecx
  004cbffc: e8 ff 24 00 00                                  call   0x4ce500
  004cc001: 83 c9 ff                                        or     ecx,0xffffffff
  004cc004: 8b d0                                           mov    edx,eax
  004cc006: 33 c0                                           xor    eax,eax
  004cc008: 83 c4 04                                        add    esp,0x4
  004cc00b: bf 64 07 51 00                                  mov    edi,0x510764
  004cc010: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc012: f7 d1                                           not    ecx
  004cc014: 2b f9                                           sub    edi,ecx
  004cc016: 8b c1                                           mov    eax,ecx
  004cc018: c1 e9 02                                        shr    ecx,0x2
  004cc01b: 8b f7                                           mov    esi,edi
  004cc01d: 89 15 68 ce 55 00                               mov    DWORD PTR ds:0x55ce68,edx
  004cc023: 8b fa                                           mov    edi,edx
  004cc025: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc027: 8b c8                                           mov    ecx,eax
  004cc029: 83 e1 03                                        and    ecx,0x3
  004cc02c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc02e: a1 18 cc 55 00                                  mov    eax,ds:0x55cc18
  004cc033: 85 c0                                           test   eax,eax
  004cc035: 66 c7 05 6c ce 55 00 3e 00                      mov    WORD PTR ds:0x55ce6c,0x3e
  004cc03e: 74 09                                           je     0x4cc049
  004cc040: 50                                              push   eax
  004cc041: e8 1a 60 f7 ff                                  call   0x442060
  004cc046: 83 c4 04                                        add    esp,0x4
  004cc049: 83 c9 ff                                        or     ecx,0xffffffff
  004cc04c: 33 c0                                           xor    eax,eax
  004cc04e: bf 58 07 51 00                                  mov    edi,0x510758
  004cc053: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc055: f7 d1                                           not    ecx
  004cc057: 51                                              push   ecx
  004cc058: e8 a3 24 00 00                                  call   0x4ce500
  004cc05d: 83 c9 ff                                        or     ecx,0xffffffff
  004cc060: 8b d0                                           mov    edx,eax
  004cc062: 33 c0                                           xor    eax,eax
  004cc064: 83 c4 04                                        add    esp,0x4
  004cc067: bf 58 07 51 00                                  mov    edi,0x510758
  004cc06c: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc06e: f7 d1                                           not    ecx
  004cc070: 2b f9                                           sub    edi,ecx
  004cc072: 8b c1                                           mov    eax,ecx
  004cc074: c1 e9 02                                        shr    ecx,0x2
  004cc077: 8b f7                                           mov    esi,edi
  004cc079: 89 15 18 cc 55 00                               mov    DWORD PTR ds:0x55cc18,edx
  004cc07f: 8b fa                                           mov    edi,edx
  004cc081: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc083: 8b c8                                           mov    ecx,eax
  004cc085: 83 e1 03                                        and    ecx,0x3
  004cc088: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc08a: a1 c8 c9 55 00                                  mov    eax,ds:0x55c9c8
  004cc08f: 85 c0                                           test   eax,eax
  004cc091: 66 c7 05 1c cc 55 00 58 00                      mov    WORD PTR ds:0x55cc1c,0x58
  004cc09a: 74 09                                           je     0x4cc0a5
  004cc09c: 50                                              push   eax
  004cc09d: e8 be 5f f7 ff                                  call   0x442060
  004cc0a2: 83 c4 04                                        add    esp,0x4
  004cc0a5: 83 c9 ff                                        or     ecx,0xffffffff
  004cc0a8: 33 c0                                           xor    eax,eax
  004cc0aa: bf 4c 07 51 00                                  mov    edi,0x51074c
  004cc0af: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc0b1: f7 d1                                           not    ecx
  004cc0b3: 51                                              push   ecx
  004cc0b4: e8 47 24 00 00                                  call   0x4ce500
  004cc0b9: 83 c9 ff                                        or     ecx,0xffffffff
  004cc0bc: 8b d0                                           mov    edx,eax
  004cc0be: 33 c0                                           xor    eax,eax
  004cc0c0: 83 c4 04                                        add    esp,0x4
  004cc0c3: bf 4c 07 51 00                                  mov    edi,0x51074c
  004cc0c8: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc0ca: f7 d1                                           not    ecx
  004cc0cc: 2b f9                                           sub    edi,ecx
  004cc0ce: 8b c1                                           mov    eax,ecx
  004cc0d0: c1 e9 02                                        shr    ecx,0x2
  004cc0d3: 8b f7                                           mov    esi,edi
  004cc0d5: 89 15 c8 c9 55 00                               mov    DWORD PTR ds:0x55c9c8,edx
  004cc0db: 8b fa                                           mov    edi,edx
  004cc0dd: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc0df: 8b c8                                           mov    ecx,eax
  004cc0e1: 83 e1 03                                        and    ecx,0x3
  004cc0e4: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc0e6: a1 78 c7 55 00                                  mov    eax,ds:0x55c778
  004cc0eb: 85 c0                                           test   eax,eax
  004cc0ed: 66 c7 05 cc c9 55 00 59 00                      mov    WORD PTR ds:0x55c9cc,0x59
  004cc0f6: 74 09                                           je     0x4cc101
  004cc0f8: 50                                              push   eax
  004cc0f9: e8 62 5f f7 ff                                  call   0x442060
  004cc0fe: 83 c4 04                                        add    esp,0x4
  004cc101: 83 c9 ff                                        or     ecx,0xffffffff
  004cc104: 33 c0                                           xor    eax,eax
  004cc106: bf 3c 07 51 00                                  mov    edi,0x51073c
  004cc10b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc10d: f7 d1                                           not    ecx
  004cc10f: 51                                              push   ecx
  004cc110: e8 eb 23 00 00                                  call   0x4ce500
  004cc115: 83 c9 ff                                        or     ecx,0xffffffff
  004cc118: 8b d0                                           mov    edx,eax
  004cc11a: 33 c0                                           xor    eax,eax
  004cc11c: 83 c4 04                                        add    esp,0x4
  004cc11f: bf 3c 07 51 00                                  mov    edi,0x51073c
  004cc124: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc126: f7 d1                                           not    ecx
  004cc128: 2b f9                                           sub    edi,ecx
  004cc12a: 8b c1                                           mov    eax,ecx
  004cc12c: c1 e9 02                                        shr    ecx,0x2
  004cc12f: 8b f7                                           mov    esi,edi
  004cc131: 89 15 78 c7 55 00                               mov    DWORD PTR ds:0x55c778,edx
  004cc137: 8b fa                                           mov    edi,edx
  004cc139: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc13b: 8b c8                                           mov    ecx,eax
  004cc13d: 83 e1 03                                        and    ecx,0x3
  004cc140: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc142: a1 28 c5 55 00                                  mov    eax,ds:0x55c528
  004cc147: 85 c0                                           test   eax,eax
  004cc149: 66 c7 05 7c c7 55 00 5c 00                      mov    WORD PTR ds:0x55c77c,0x5c
  004cc152: 74 09                                           je     0x4cc15d
  004cc154: 50                                              push   eax
  004cc155: e8 06 5f f7 ff                                  call   0x442060
  004cc15a: 83 c4 04                                        add    esp,0x4
  004cc15d: 83 c9 ff                                        or     ecx,0xffffffff
  004cc160: 33 c0                                           xor    eax,eax
  004cc162: bf 3c 07 51 00                                  mov    edi,0x51073c
  004cc167: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc169: f7 d1                                           not    ecx
  004cc16b: 51                                              push   ecx
  004cc16c: e8 8f 23 00 00                                  call   0x4ce500
  004cc171: 83 c9 ff                                        or     ecx,0xffffffff
  004cc174: 8b d0                                           mov    edx,eax
  004cc176: 33 c0                                           xor    eax,eax
  004cc178: 83 c4 04                                        add    esp,0x4
  004cc17b: bf 3c 07 51 00                                  mov    edi,0x51073c
  004cc180: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc182: f7 d1                                           not    ecx
  004cc184: 2b f9                                           sub    edi,ecx
  004cc186: 8b c1                                           mov    eax,ecx
  004cc188: c1 e9 02                                        shr    ecx,0x2
  004cc18b: 8b f7                                           mov    esi,edi
  004cc18d: 89 15 28 c5 55 00                               mov    DWORD PTR ds:0x55c528,edx
  004cc193: 8b fa                                           mov    edi,edx
  004cc195: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc197: 8b c8                                           mov    ecx,eax
  004cc199: 83 e1 03                                        and    ecx,0x3
  004cc19c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc19e: a1 d8 c2 55 00                                  mov    eax,ds:0x55c2d8
  004cc1a3: 85 c0                                           test   eax,eax
  004cc1a5: 66 c7 05 2c c5 55 00 5d 00                      mov    WORD PTR ds:0x55c52c,0x5d
  004cc1ae: 74 09                                           je     0x4cc1b9
  004cc1b0: 50                                              push   eax
  004cc1b1: e8 aa 5e f7 ff                                  call   0x442060
  004cc1b6: 83 c4 04                                        add    esp,0x4
  004cc1b9: 83 c9 ff                                        or     ecx,0xffffffff
  004cc1bc: 33 c0                                           xor    eax,eax
  004cc1be: bf 24 07 51 00                                  mov    edi,0x510724
  004cc1c3: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc1c5: f7 d1                                           not    ecx
  004cc1c7: 51                                              push   ecx
  004cc1c8: e8 33 23 00 00                                  call   0x4ce500
  004cc1cd: 83 c9 ff                                        or     ecx,0xffffffff
  004cc1d0: 8b d0                                           mov    edx,eax
  004cc1d2: 33 c0                                           xor    eax,eax
  004cc1d4: 83 c4 04                                        add    esp,0x4
  004cc1d7: bf 24 07 51 00                                  mov    edi,0x510724
  004cc1dc: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc1de: f7 d1                                           not    ecx
  004cc1e0: 2b f9                                           sub    edi,ecx
  004cc1e2: 8b c1                                           mov    eax,ecx
  004cc1e4: c1 e9 02                                        shr    ecx,0x2
  004cc1e7: 8b f7                                           mov    esi,edi
  004cc1e9: 89 15 d8 c2 55 00                               mov    DWORD PTR ds:0x55c2d8,edx
  004cc1ef: 8b fa                                           mov    edi,edx
  004cc1f1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc1f3: 8b c8                                           mov    ecx,eax
  004cc1f5: 83 e1 03                                        and    ecx,0x3
  004cc1f8: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc1fa: a1 88 c0 55 00                                  mov    eax,ds:0x55c088
  004cc1ff: 85 c0                                           test   eax,eax
  004cc201: 66 c7 05 dc c2 55 00 5e 00                      mov    WORD PTR ds:0x55c2dc,0x5e
  004cc20a: 74 09                                           je     0x4cc215
  004cc20c: 50                                              push   eax
  004cc20d: e8 4e 5e f7 ff                                  call   0x442060
  004cc212: 83 c4 04                                        add    esp,0x4
  004cc215: 83 c9 ff                                        or     ecx,0xffffffff
  004cc218: 33 c0                                           xor    eax,eax
  004cc21a: bf 0c 07 51 00                                  mov    edi,0x51070c
  004cc21f: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc221: f7 d1                                           not    ecx
  004cc223: 51                                              push   ecx
  004cc224: e8 d7 22 00 00                                  call   0x4ce500
  004cc229: 83 c9 ff                                        or     ecx,0xffffffff
  004cc22c: 8b d0                                           mov    edx,eax
  004cc22e: 33 c0                                           xor    eax,eax
  004cc230: 83 c4 04                                        add    esp,0x4
  004cc233: bf 0c 07 51 00                                  mov    edi,0x51070c
  004cc238: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc23a: f7 d1                                           not    ecx
  004cc23c: 2b f9                                           sub    edi,ecx
  004cc23e: 8b c1                                           mov    eax,ecx
  004cc240: c1 e9 02                                        shr    ecx,0x2
  004cc243: 8b f7                                           mov    esi,edi
  004cc245: 89 15 88 c0 55 00                               mov    DWORD PTR ds:0x55c088,edx
  004cc24b: 8b fa                                           mov    edi,edx
  004cc24d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc24f: 8b c8                                           mov    ecx,eax
  004cc251: 83 e1 03                                        and    ecx,0x3
  004cc254: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc256: a1 38 be 55 00                                  mov    eax,ds:0x55be38
  004cc25b: 85 c0                                           test   eax,eax
  004cc25d: 66 c7 05 8c c0 55 00 5f 00                      mov    WORD PTR ds:0x55c08c,0x5f
  004cc266: 74 09                                           je     0x4cc271
  004cc268: 50                                              push   eax
  004cc269: e8 f2 5d f7 ff                                  call   0x442060
  004cc26e: 83 c4 04                                        add    esp,0x4
  004cc271: 83 c9 ff                                        or     ecx,0xffffffff
  004cc274: 33 c0                                           xor    eax,eax
  004cc276: bf 00 07 51 00                                  mov    edi,0x510700
  004cc27b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc27d: f7 d1                                           not    ecx
  004cc27f: 51                                              push   ecx
  004cc280: e8 7b 22 00 00                                  call   0x4ce500
  004cc285: 83 c9 ff                                        or     ecx,0xffffffff
  004cc288: 8b d0                                           mov    edx,eax
  004cc28a: 33 c0                                           xor    eax,eax
  004cc28c: 83 c4 04                                        add    esp,0x4
  004cc28f: bf 00 07 51 00                                  mov    edi,0x510700
  004cc294: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc296: f7 d1                                           not    ecx
  004cc298: 2b f9                                           sub    edi,ecx
  004cc29a: 8b c1                                           mov    eax,ecx
  004cc29c: c1 e9 02                                        shr    ecx,0x2
  004cc29f: 8b f7                                           mov    esi,edi
  004cc2a1: 89 15 38 be 55 00                               mov    DWORD PTR ds:0x55be38,edx
  004cc2a7: 8b fa                                           mov    edi,edx
  004cc2a9: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc2ab: 8b c8                                           mov    ecx,eax
  004cc2ad: 83 e1 03                                        and    ecx,0x3
  004cc2b0: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc2b2: a1 e8 bb 55 00                                  mov    eax,ds:0x55bbe8
  004cc2b7: 85 c0                                           test   eax,eax
  004cc2b9: 66 c7 05 3c be 55 00 73 00                      mov    WORD PTR ds:0x55be3c,0x73
  004cc2c2: 74 09                                           je     0x4cc2cd
  004cc2c4: 50                                              push   eax
  004cc2c5: e8 96 5d f7 ff                                  call   0x442060
  004cc2ca: 83 c4 04                                        add    esp,0x4
  004cc2cd: 83 c9 ff                                        or     ecx,0xffffffff
  004cc2d0: 33 c0                                           xor    eax,eax
  004cc2d2: bf 00 07 51 00                                  mov    edi,0x510700
  004cc2d7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc2d9: f7 d1                                           not    ecx
  004cc2db: 51                                              push   ecx
  004cc2dc: e8 1f 22 00 00                                  call   0x4ce500
  004cc2e1: 83 c9 ff                                        or     ecx,0xffffffff
  004cc2e4: 8b d0                                           mov    edx,eax
  004cc2e6: 33 c0                                           xor    eax,eax
  004cc2e8: 83 c4 04                                        add    esp,0x4
  004cc2eb: bf 00 07 51 00                                  mov    edi,0x510700
  004cc2f0: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc2f2: f7 d1                                           not    ecx
  004cc2f4: 2b f9                                           sub    edi,ecx
  004cc2f6: 8b c1                                           mov    eax,ecx
  004cc2f8: c1 e9 02                                        shr    ecx,0x2
  004cc2fb: 8b f7                                           mov    esi,edi
  004cc2fd: 89 15 e8 bb 55 00                               mov    DWORD PTR ds:0x55bbe8,edx
  004cc303: 8b fa                                           mov    edi,edx
  004cc305: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc307: 8b c8                                           mov    ecx,eax
  004cc309: 83 e1 03                                        and    ecx,0x3
  004cc30c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc30e: a1 98 b9 55 00                                  mov    eax,ds:0x55b998
  004cc313: 85 c0                                           test   eax,eax
  004cc315: 66 c7 05 ec bb 55 00 74 00                      mov    WORD PTR ds:0x55bbec,0x74
  004cc31e: 74 09                                           je     0x4cc329
  004cc320: 50                                              push   eax
  004cc321: e8 3a 5d f7 ff                                  call   0x442060
  004cc326: 83 c4 04                                        add    esp,0x4
  004cc329: 83 c9 ff                                        or     ecx,0xffffffff
  004cc32c: 33 c0                                           xor    eax,eax
  004cc32e: bf f4 06 51 00                                  mov    edi,0x5106f4
  004cc333: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc335: f7 d1                                           not    ecx
  004cc337: 51                                              push   ecx
  004cc338: e8 c3 21 00 00                                  call   0x4ce500
  004cc33d: 83 c9 ff                                        or     ecx,0xffffffff
  004cc340: 8b d0                                           mov    edx,eax
  004cc342: 33 c0                                           xor    eax,eax
  004cc344: 83 c4 04                                        add    esp,0x4
  004cc347: bf f4 06 51 00                                  mov    edi,0x5106f4
  004cc34c: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc34e: f7 d1                                           not    ecx
  004cc350: 2b f9                                           sub    edi,ecx
  004cc352: 8b c1                                           mov    eax,ecx
  004cc354: c1 e9 02                                        shr    ecx,0x2
  004cc357: 8b f7                                           mov    esi,edi
  004cc359: 89 15 98 b9 55 00                               mov    DWORD PTR ds:0x55b998,edx
  004cc35f: 8b fa                                           mov    edi,edx
  004cc361: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc363: 8b c8                                           mov    ecx,eax
  004cc365: 83 e1 03                                        and    ecx,0x3
  004cc368: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc36a: a1 48 b7 55 00                                  mov    eax,ds:0x55b748
  004cc36f: 85 c0                                           test   eax,eax
  004cc371: 66 c7 05 9c b9 55 00 75 00                      mov    WORD PTR ds:0x55b99c,0x75
  004cc37a: 74 09                                           je     0x4cc385
  004cc37c: 50                                              push   eax
  004cc37d: e8 de 5c f7 ff                                  call   0x442060
  004cc382: 83 c4 04                                        add    esp,0x4
  004cc385: 83 c9 ff                                        or     ecx,0xffffffff
  004cc388: 33 c0                                           xor    eax,eax
  004cc38a: bf e8 06 51 00                                  mov    edi,0x5106e8
  004cc38f: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc391: f7 d1                                           not    ecx
  004cc393: 51                                              push   ecx
  004cc394: e8 67 21 00 00                                  call   0x4ce500
  004cc399: 83 c9 ff                                        or     ecx,0xffffffff
  004cc39c: 8b d0                                           mov    edx,eax
  004cc39e: 33 c0                                           xor    eax,eax
  004cc3a0: 83 c4 04                                        add    esp,0x4
  004cc3a3: bf e8 06 51 00                                  mov    edi,0x5106e8
  004cc3a8: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc3aa: f7 d1                                           not    ecx
  004cc3ac: 2b f9                                           sub    edi,ecx
  004cc3ae: 8b c1                                           mov    eax,ecx
  004cc3b0: c1 e9 02                                        shr    ecx,0x2
  004cc3b3: 8b f7                                           mov    esi,edi
  004cc3b5: 89 15 48 b7 55 00                               mov    DWORD PTR ds:0x55b748,edx
  004cc3bb: 8b fa                                           mov    edi,edx
  004cc3bd: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc3bf: 8b c8                                           mov    ecx,eax
  004cc3c1: 83 e1 03                                        and    ecx,0x3
  004cc3c4: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc3c6: a1 f8 b4 55 00                                  mov    eax,ds:0x55b4f8
  004cc3cb: 85 c0                                           test   eax,eax
  004cc3cd: 66 c7 05 4c b7 55 00 40 00                      mov    WORD PTR ds:0x55b74c,0x40
  004cc3d6: 74 09                                           je     0x4cc3e1
  004cc3d8: 50                                              push   eax
  004cc3d9: e8 82 5c f7 ff                                  call   0x442060
  004cc3de: 83 c4 04                                        add    esp,0x4
  004cc3e1: 83 c9 ff                                        or     ecx,0xffffffff
  004cc3e4: 33 c0                                           xor    eax,eax
  004cc3e6: bf dc 06 51 00                                  mov    edi,0x5106dc
  004cc3eb: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc3ed: f7 d1                                           not    ecx
  004cc3ef: 51                                              push   ecx
  004cc3f0: e8 0b 21 00 00                                  call   0x4ce500
  004cc3f5: 83 c9 ff                                        or     ecx,0xffffffff
  004cc3f8: 8b d0                                           mov    edx,eax
  004cc3fa: 33 c0                                           xor    eax,eax
  004cc3fc: 83 c4 04                                        add    esp,0x4
  004cc3ff: bf dc 06 51 00                                  mov    edi,0x5106dc
  004cc404: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc406: f7 d1                                           not    ecx
  004cc408: 2b f9                                           sub    edi,ecx
  004cc40a: 8b c1                                           mov    eax,ecx
  004cc40c: c1 e9 02                                        shr    ecx,0x2
  004cc40f: 8b f7                                           mov    esi,edi
  004cc411: 89 15 f8 b4 55 00                               mov    DWORD PTR ds:0x55b4f8,edx
  004cc417: 8b fa                                           mov    edi,edx
  004cc419: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc41b: 8b c8                                           mov    ecx,eax
  004cc41d: 83 e1 03                                        and    ecx,0x3
  004cc420: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc422: a1 a8 b2 55 00                                  mov    eax,ds:0x55b2a8
  004cc427: 85 c0                                           test   eax,eax
  004cc429: 66 c7 05 fc b4 55 00 41 00                      mov    WORD PTR ds:0x55b4fc,0x41
  004cc432: 74 09                                           je     0x4cc43d
  004cc434: 50                                              push   eax
  004cc435: e8 26 5c f7 ff                                  call   0x442060
  004cc43a: 83 c4 04                                        add    esp,0x4
  004cc43d: 83 c9 ff                                        or     ecx,0xffffffff
  004cc440: 33 c0                                           xor    eax,eax
  004cc442: bf cc 06 51 00                                  mov    edi,0x5106cc
  004cc447: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc449: f7 d1                                           not    ecx
  004cc44b: 51                                              push   ecx
  004cc44c: e8 af 20 00 00                                  call   0x4ce500
  004cc451: 83 c9 ff                                        or     ecx,0xffffffff
  004cc454: 8b d0                                           mov    edx,eax
  004cc456: 33 c0                                           xor    eax,eax
  004cc458: 83 c4 04                                        add    esp,0x4
  004cc45b: bf cc 06 51 00                                  mov    edi,0x5106cc
  004cc460: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc462: f7 d1                                           not    ecx
  004cc464: 2b f9                                           sub    edi,ecx
  004cc466: 8b c1                                           mov    eax,ecx
  004cc468: c1 e9 02                                        shr    ecx,0x2
  004cc46b: 8b f7                                           mov    esi,edi
  004cc46d: 89 15 a8 b2 55 00                               mov    DWORD PTR ds:0x55b2a8,edx
  004cc473: 8b fa                                           mov    edi,edx
  004cc475: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc477: 8b c8                                           mov    ecx,eax
  004cc479: 83 e1 03                                        and    ecx,0x3
  004cc47c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc47e: a1 58 b0 55 00                                  mov    eax,ds:0x55b058
  004cc483: 85 c0                                           test   eax,eax
  004cc485: 66 c7 05 ac b2 55 00 42 00                      mov    WORD PTR ds:0x55b2ac,0x42
  004cc48e: 74 09                                           je     0x4cc499
  004cc490: 50                                              push   eax
  004cc491: e8 ca 5b f7 ff                                  call   0x442060
  004cc496: 83 c4 04                                        add    esp,0x4
  004cc499: 83 c9 ff                                        or     ecx,0xffffffff
  004cc49c: 33 c0                                           xor    eax,eax
  004cc49e: bf bc 06 51 00                                  mov    edi,0x5106bc
  004cc4a3: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc4a5: f7 d1                                           not    ecx
  004cc4a7: 51                                              push   ecx
  004cc4a8: e8 53 20 00 00                                  call   0x4ce500
  004cc4ad: 83 c9 ff                                        or     ecx,0xffffffff
  004cc4b0: 8b d0                                           mov    edx,eax
  004cc4b2: 33 c0                                           xor    eax,eax
  004cc4b4: 83 c4 04                                        add    esp,0x4
  004cc4b7: bf bc 06 51 00                                  mov    edi,0x5106bc
  004cc4bc: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc4be: f7 d1                                           not    ecx
  004cc4c0: 2b f9                                           sub    edi,ecx
  004cc4c2: 8b c1                                           mov    eax,ecx
  004cc4c4: c1 e9 02                                        shr    ecx,0x2
  004cc4c7: 8b f7                                           mov    esi,edi
  004cc4c9: 89 15 58 b0 55 00                               mov    DWORD PTR ds:0x55b058,edx
  004cc4cf: 8b fa                                           mov    edi,edx
  004cc4d1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc4d3: 8b c8                                           mov    ecx,eax
  004cc4d5: 83 e1 03                                        and    ecx,0x3
  004cc4d8: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc4da: a1 08 ae 55 00                                  mov    eax,ds:0x55ae08
  004cc4df: 85 c0                                           test   eax,eax
  004cc4e1: 66 c7 05 5c b0 55 00 43 00                      mov    WORD PTR ds:0x55b05c,0x43
  004cc4ea: 74 09                                           je     0x4cc4f5
  004cc4ec: 50                                              push   eax
  004cc4ed: e8 6e 5b f7 ff                                  call   0x442060
  004cc4f2: 83 c4 04                                        add    esp,0x4
  004cc4f5: 83 c9 ff                                        or     ecx,0xffffffff
  004cc4f8: 33 c0                                           xor    eax,eax
  004cc4fa: bf bc 06 51 00                                  mov    edi,0x5106bc
  004cc4ff: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc501: f7 d1                                           not    ecx
  004cc503: 51                                              push   ecx
  004cc504: e8 f7 1f 00 00                                  call   0x4ce500
  004cc509: 83 c9 ff                                        or     ecx,0xffffffff
  004cc50c: 8b d0                                           mov    edx,eax
  004cc50e: 33 c0                                           xor    eax,eax
  004cc510: 83 c4 04                                        add    esp,0x4
  004cc513: bf bc 06 51 00                                  mov    edi,0x5106bc
  004cc518: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc51a: f7 d1                                           not    ecx
  004cc51c: 2b f9                                           sub    edi,ecx
  004cc51e: 8b c1                                           mov    eax,ecx
  004cc520: c1 e9 02                                        shr    ecx,0x2
  004cc523: 8b f7                                           mov    esi,edi
  004cc525: 89 15 08 ae 55 00                               mov    DWORD PTR ds:0x55ae08,edx
  004cc52b: 8b fa                                           mov    edi,edx
  004cc52d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc52f: 8b c8                                           mov    ecx,eax
  004cc531: 83 e1 03                                        and    ecx,0x3
  004cc534: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc536: a1 b8 ab 55 00                                  mov    eax,ds:0x55abb8
  004cc53b: 85 c0                                           test   eax,eax
  004cc53d: 66 c7 05 0c ae 55 00 44 00                      mov    WORD PTR ds:0x55ae0c,0x44
  004cc546: 74 09                                           je     0x4cc551
  004cc548: 50                                              push   eax
  004cc549: e8 12 5b f7 ff                                  call   0x442060
  004cc54e: 83 c4 04                                        add    esp,0x4
  004cc551: 83 c9 ff                                        or     ecx,0xffffffff
  004cc554: 33 c0                                           xor    eax,eax
  004cc556: bf ac 06 51 00                                  mov    edi,0x5106ac
  004cc55b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc55d: f7 d1                                           not    ecx
  004cc55f: 51                                              push   ecx
  004cc560: e8 9b 1f 00 00                                  call   0x4ce500
  004cc565: 83 c9 ff                                        or     ecx,0xffffffff
  004cc568: 8b d0                                           mov    edx,eax
  004cc56a: 33 c0                                           xor    eax,eax
  004cc56c: 83 c4 04                                        add    esp,0x4
  004cc56f: bf ac 06 51 00                                  mov    edi,0x5106ac
  004cc574: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc576: f7 d1                                           not    ecx
  004cc578: 2b f9                                           sub    edi,ecx
  004cc57a: 8b c1                                           mov    eax,ecx
  004cc57c: c1 e9 02                                        shr    ecx,0x2
  004cc57f: 8b f7                                           mov    esi,edi
  004cc581: 89 15 b8 ab 55 00                               mov    DWORD PTR ds:0x55abb8,edx
  004cc587: 8b fa                                           mov    edi,edx
  004cc589: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc58b: 8b c8                                           mov    ecx,eax
  004cc58d: 83 e1 03                                        and    ecx,0x3
  004cc590: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc592: a1 68 a9 55 00                                  mov    eax,ds:0x55a968
  004cc597: 85 c0                                           test   eax,eax
  004cc599: 66 c7 05 bc ab 55 00 45 00                      mov    WORD PTR ds:0x55abbc,0x45
  004cc5a2: 74 09                                           je     0x4cc5ad
  004cc5a4: 50                                              push   eax
  004cc5a5: e8 b6 5a f7 ff                                  call   0x442060
  004cc5aa: 83 c4 04                                        add    esp,0x4
  004cc5ad: 83 c9 ff                                        or     ecx,0xffffffff
  004cc5b0: 33 c0                                           xor    eax,eax
  004cc5b2: bf 9c 06 51 00                                  mov    edi,0x51069c
  004cc5b7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc5b9: f7 d1                                           not    ecx
  004cc5bb: 51                                              push   ecx
  004cc5bc: e8 3f 1f 00 00                                  call   0x4ce500
  004cc5c1: 83 c9 ff                                        or     ecx,0xffffffff
  004cc5c4: 8b d0                                           mov    edx,eax
  004cc5c6: 33 c0                                           xor    eax,eax
  004cc5c8: 83 c4 04                                        add    esp,0x4
  004cc5cb: bf 9c 06 51 00                                  mov    edi,0x51069c
  004cc5d0: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc5d2: f7 d1                                           not    ecx
  004cc5d4: 2b f9                                           sub    edi,ecx
  004cc5d6: 8b c1                                           mov    eax,ecx
  004cc5d8: c1 e9 02                                        shr    ecx,0x2
  004cc5db: 8b f7                                           mov    esi,edi
  004cc5dd: 89 15 68 a9 55 00                               mov    DWORD PTR ds:0x55a968,edx
  004cc5e3: 8b fa                                           mov    edi,edx
  004cc5e5: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc5e7: 8b c8                                           mov    ecx,eax
  004cc5e9: 83 e1 03                                        and    ecx,0x3
  004cc5ec: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc5ee: a1 18 a7 55 00                                  mov    eax,ds:0x55a718
  004cc5f3: 85 c0                                           test   eax,eax
  004cc5f5: 66 c7 05 6c a9 55 00 46 00                      mov    WORD PTR ds:0x55a96c,0x46
  004cc5fe: 74 09                                           je     0x4cc609
  004cc600: 50                                              push   eax
  004cc601: e8 5a 5a f7 ff                                  call   0x442060
  004cc606: 83 c4 04                                        add    esp,0x4
  004cc609: 83 c9 ff                                        or     ecx,0xffffffff
  004cc60c: 33 c0                                           xor    eax,eax
  004cc60e: bf 8c 06 51 00                                  mov    edi,0x51068c
  004cc613: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc615: f7 d1                                           not    ecx
  004cc617: 51                                              push   ecx
  004cc618: e8 e3 1e 00 00                                  call   0x4ce500
  004cc61d: 83 c9 ff                                        or     ecx,0xffffffff
  004cc620: 8b d0                                           mov    edx,eax
  004cc622: 33 c0                                           xor    eax,eax
  004cc624: 83 c4 04                                        add    esp,0x4
  004cc627: bf 8c 06 51 00                                  mov    edi,0x51068c
  004cc62c: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc62e: f7 d1                                           not    ecx
  004cc630: 2b f9                                           sub    edi,ecx
  004cc632: 8b c1                                           mov    eax,ecx
  004cc634: c1 e9 02                                        shr    ecx,0x2
  004cc637: 8b f7                                           mov    esi,edi
  004cc639: 89 15 18 a7 55 00                               mov    DWORD PTR ds:0x55a718,edx
  004cc63f: 8b fa                                           mov    edi,edx
  004cc641: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc643: 8b c8                                           mov    ecx,eax
  004cc645: 83 e1 03                                        and    ecx,0x3
  004cc648: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc64a: a1 c8 a4 55 00                                  mov    eax,ds:0x55a4c8
  004cc64f: 85 c0                                           test   eax,eax
  004cc651: 66 c7 05 1c a7 55 00 1b 00                      mov    WORD PTR ds:0x55a71c,0x1b
  004cc65a: 74 09                                           je     0x4cc665
  004cc65c: 50                                              push   eax
  004cc65d: e8 fe 59 f7 ff                                  call   0x442060
  004cc662: 83 c4 04                                        add    esp,0x4
  004cc665: 83 c9 ff                                        or     ecx,0xffffffff
  004cc668: 33 c0                                           xor    eax,eax
  004cc66a: bf 70 06 51 00                                  mov    edi,0x510670
  004cc66f: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc671: f7 d1                                           not    ecx
  004cc673: 51                                              push   ecx
  004cc674: e8 87 1e 00 00                                  call   0x4ce500
  004cc679: 83 c9 ff                                        or     ecx,0xffffffff
  004cc67c: 8b d0                                           mov    edx,eax
  004cc67e: 33 c0                                           xor    eax,eax
  004cc680: 83 c4 04                                        add    esp,0x4
  004cc683: bf 70 06 51 00                                  mov    edi,0x510670
  004cc688: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc68a: f7 d1                                           not    ecx
  004cc68c: 2b f9                                           sub    edi,ecx
  004cc68e: 8b c1                                           mov    eax,ecx
  004cc690: c1 e9 02                                        shr    ecx,0x2
  004cc693: 8b f7                                           mov    esi,edi
  004cc695: 89 15 c8 a4 55 00                               mov    DWORD PTR ds:0x55a4c8,edx
  004cc69b: 8b fa                                           mov    edi,edx
  004cc69d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc69f: 8b c8                                           mov    ecx,eax
  004cc6a1: 83 e1 03                                        and    ecx,0x3
  004cc6a4: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc6a6: a1 78 a2 55 00                                  mov    eax,ds:0x55a278
  004cc6ab: 85 c0                                           test   eax,eax
  004cc6ad: bb 40 42 0f 00                                  mov    ebx,0xf4240
  004cc6b2: 66 c7 05 cc a4 55 00 47 00                      mov    WORD PTR ds:0x55a4cc,0x47
  004cc6bb: 89 1d e0 a4 55 00                               mov    DWORD PTR ds:0x55a4e0,ebx
  004cc6c1: 74 09                                           je     0x4cc6cc
  004cc6c3: 50                                              push   eax
  004cc6c4: e8 97 59 f7 ff                                  call   0x442060
  004cc6c9: 83 c4 04                                        add    esp,0x4
  004cc6cc: 83 c9 ff                                        or     ecx,0xffffffff
  004cc6cf: 33 c0                                           xor    eax,eax
  004cc6d1: bf 70 06 51 00                                  mov    edi,0x510670
  004cc6d6: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc6d8: f7 d1                                           not    ecx
  004cc6da: 51                                              push   ecx
  004cc6db: e8 20 1e 00 00                                  call   0x4ce500
  004cc6e0: 83 c9 ff                                        or     ecx,0xffffffff
  004cc6e3: 8b d0                                           mov    edx,eax
  004cc6e5: 33 c0                                           xor    eax,eax
  004cc6e7: 83 c4 04                                        add    esp,0x4
  004cc6ea: bf 70 06 51 00                                  mov    edi,0x510670
  004cc6ef: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc6f1: f7 d1                                           not    ecx
  004cc6f3: 2b f9                                           sub    edi,ecx
  004cc6f5: 8b c1                                           mov    eax,ecx
  004cc6f7: c1 e9 02                                        shr    ecx,0x2
  004cc6fa: 8b f7                                           mov    esi,edi
  004cc6fc: 89 15 78 a2 55 00                               mov    DWORD PTR ds:0x55a278,edx
  004cc702: 8b fa                                           mov    edi,edx
  004cc704: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc706: 8b c8                                           mov    ecx,eax
  004cc708: 83 e1 03                                        and    ecx,0x3
  004cc70b: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc70d: a1 28 a0 55 00                                  mov    eax,ds:0x55a028
  004cc712: 85 c0                                           test   eax,eax
  004cc714: 89 1d 90 a2 55 00                               mov    DWORD PTR ds:0x55a290,ebx
  004cc71a: 66 c7 05 7c a2 55 00 48 00                      mov    WORD PTR ds:0x55a27c,0x48
  004cc723: 5b                                              pop    ebx
  004cc724: 74 09                                           je     0x4cc72f
  004cc726: 50                                              push   eax
  004cc727: e8 34 59 f7 ff                                  call   0x442060
  004cc72c: 83 c4 04                                        add    esp,0x4
  004cc72f: 83 c9 ff                                        or     ecx,0xffffffff
  004cc732: 33 c0                                           xor    eax,eax
  004cc734: bf 5c 06 51 00                                  mov    edi,0x51065c
  004cc739: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc73b: f7 d1                                           not    ecx
  004cc73d: 51                                              push   ecx
  004cc73e: e8 bd 1d 00 00                                  call   0x4ce500
  004cc743: 83 c9 ff                                        or     ecx,0xffffffff
  004cc746: 8b d0                                           mov    edx,eax
  004cc748: 33 c0                                           xor    eax,eax
  004cc74a: 83 c4 04                                        add    esp,0x4
  004cc74d: bf 5c 06 51 00                                  mov    edi,0x51065c
  004cc752: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc754: f7 d1                                           not    ecx
  004cc756: 2b f9                                           sub    edi,ecx
  004cc758: 8b c1                                           mov    eax,ecx
  004cc75a: c1 e9 02                                        shr    ecx,0x2
  004cc75d: 8b f7                                           mov    esi,edi
  004cc75f: 89 15 28 a0 55 00                               mov    DWORD PTR ds:0x55a028,edx
  004cc765: 8b fa                                           mov    edi,edx
  004cc767: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc769: 8b c8                                           mov    ecx,eax
  004cc76b: 83 e1 03                                        and    ecx,0x3
  004cc76e: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc770: a1 e8 96 55 00                                  mov    eax,ds:0x5596e8
  004cc775: 85 c0                                           test   eax,eax
  004cc777: 66 c7 05 2c a0 55 00 51 00                      mov    WORD PTR ds:0x55a02c,0x51
  004cc780: 74 09                                           je     0x4cc78b
  004cc782: 50                                              push   eax
  004cc783: e8 d8 58 f7 ff                                  call   0x442060
  004cc788: 83 c4 04                                        add    esp,0x4
  004cc78b: 83 c9 ff                                        or     ecx,0xffffffff
  004cc78e: 33 c0                                           xor    eax,eax
  004cc790: bf 50 06 51 00                                  mov    edi,0x510650
  004cc795: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc797: f7 d1                                           not    ecx
  004cc799: 51                                              push   ecx
  004cc79a: e8 61 1d 00 00                                  call   0x4ce500
  004cc79f: 83 c9 ff                                        or     ecx,0xffffffff
  004cc7a2: 8b d0                                           mov    edx,eax
  004cc7a4: 33 c0                                           xor    eax,eax
  004cc7a6: 83 c4 04                                        add    esp,0x4
  004cc7a9: bf 50 06 51 00                                  mov    edi,0x510650
  004cc7ae: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc7b0: f7 d1                                           not    ecx
  004cc7b2: 2b f9                                           sub    edi,ecx
  004cc7b4: 8b c1                                           mov    eax,ecx
  004cc7b6: c1 e9 02                                        shr    ecx,0x2
  004cc7b9: 8b f7                                           mov    esi,edi
  004cc7bb: 89 15 e8 96 55 00                               mov    DWORD PTR ds:0x5596e8,edx
  004cc7c1: 8b fa                                           mov    edi,edx
  004cc7c3: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc7c5: 8b c8                                           mov    ecx,eax
  004cc7c7: 83 e1 03                                        and    ecx,0x3
  004cc7ca: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc7cc: a1 98 94 55 00                                  mov    eax,ds:0x559498
  004cc7d1: 85 c0                                           test   eax,eax
  004cc7d3: 66 c7 05 ec 96 55 00 49 00                      mov    WORD PTR ds:0x5596ec,0x49
  004cc7dc: 74 09                                           je     0x4cc7e7
  004cc7de: 50                                              push   eax
  004cc7df: e8 7c 58 f7 ff                                  call   0x442060
  004cc7e4: 83 c4 04                                        add    esp,0x4
  004cc7e7: 83 c9 ff                                        or     ecx,0xffffffff
  004cc7ea: 33 c0                                           xor    eax,eax
  004cc7ec: bf 40 06 51 00                                  mov    edi,0x510640
  004cc7f1: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc7f3: f7 d1                                           not    ecx
  004cc7f5: 51                                              push   ecx
  004cc7f6: e8 05 1d 00 00                                  call   0x4ce500
  004cc7fb: 83 c9 ff                                        or     ecx,0xffffffff
  004cc7fe: 8b d0                                           mov    edx,eax
  004cc800: 33 c0                                           xor    eax,eax
  004cc802: 83 c4 04                                        add    esp,0x4
  004cc805: bf 40 06 51 00                                  mov    edi,0x510640
  004cc80a: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc80c: f7 d1                                           not    ecx
  004cc80e: 2b f9                                           sub    edi,ecx
  004cc810: 8b c1                                           mov    eax,ecx
  004cc812: c1 e9 02                                        shr    ecx,0x2
  004cc815: 8b f7                                           mov    esi,edi
  004cc817: 89 15 98 94 55 00                               mov    DWORD PTR ds:0x559498,edx
  004cc81d: 8b fa                                           mov    edi,edx
  004cc81f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc821: 8b c8                                           mov    ecx,eax
  004cc823: 83 e1 03                                        and    ecx,0x3
  004cc826: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc828: a1 48 92 55 00                                  mov    eax,ds:0x559248
  004cc82d: 85 c0                                           test   eax,eax
  004cc82f: 66 c7 05 9c 94 55 00 4a 00                      mov    WORD PTR ds:0x55949c,0x4a
  004cc838: 74 09                                           je     0x4cc843
  004cc83a: 50                                              push   eax
  004cc83b: e8 20 58 f7 ff                                  call   0x442060
  004cc840: 83 c4 04                                        add    esp,0x4
  004cc843: 83 c9 ff                                        or     ecx,0xffffffff
  004cc846: 33 c0                                           xor    eax,eax
  004cc848: bf 40 06 51 00                                  mov    edi,0x510640
  004cc84d: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc84f: f7 d1                                           not    ecx
  004cc851: 51                                              push   ecx
  004cc852: e8 a9 1c 00 00                                  call   0x4ce500
  004cc857: 83 c9 ff                                        or     ecx,0xffffffff
  004cc85a: 8b d0                                           mov    edx,eax
  004cc85c: 33 c0                                           xor    eax,eax
  004cc85e: 83 c4 04                                        add    esp,0x4
  004cc861: bf 40 06 51 00                                  mov    edi,0x510640
  004cc866: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc868: f7 d1                                           not    ecx
  004cc86a: 2b f9                                           sub    edi,ecx
  004cc86c: 8b c1                                           mov    eax,ecx
  004cc86e: c1 e9 02                                        shr    ecx,0x2
  004cc871: 8b f7                                           mov    esi,edi
  004cc873: 89 15 48 92 55 00                               mov    DWORD PTR ds:0x559248,edx
  004cc879: 8b fa                                           mov    edi,edx
  004cc87b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc87d: 8b c8                                           mov    ecx,eax
  004cc87f: 83 e1 03                                        and    ecx,0x3
  004cc882: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc884: a1 f8 8f 55 00                                  mov    eax,ds:0x558ff8
  004cc889: 85 c0                                           test   eax,eax
  004cc88b: 66 c7 05 4c 92 55 00 4b 00                      mov    WORD PTR ds:0x55924c,0x4b
  004cc894: 74 09                                           je     0x4cc89f
  004cc896: 50                                              push   eax
  004cc897: e8 c4 57 f7 ff                                  call   0x442060
  004cc89c: 83 c4 04                                        add    esp,0x4
  004cc89f: 83 c9 ff                                        or     ecx,0xffffffff
  004cc8a2: 33 c0                                           xor    eax,eax
  004cc8a4: bf 50 06 51 00                                  mov    edi,0x510650
  004cc8a9: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc8ab: f7 d1                                           not    ecx
  004cc8ad: 51                                              push   ecx
  004cc8ae: e8 4d 1c 00 00                                  call   0x4ce500
  004cc8b3: 83 c9 ff                                        or     ecx,0xffffffff
  004cc8b6: 8b d0                                           mov    edx,eax
  004cc8b8: 33 c0                                           xor    eax,eax
  004cc8ba: 83 c4 04                                        add    esp,0x4
  004cc8bd: bf 50 06 51 00                                  mov    edi,0x510650
  004cc8c2: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc8c4: f7 d1                                           not    ecx
  004cc8c6: 2b f9                                           sub    edi,ecx
  004cc8c8: 8b c1                                           mov    eax,ecx
  004cc8ca: c1 e9 02                                        shr    ecx,0x2
  004cc8cd: 8b f7                                           mov    esi,edi
  004cc8cf: 89 15 f8 8f 55 00                               mov    DWORD PTR ds:0x558ff8,edx
  004cc8d5: 8b fa                                           mov    edi,edx
  004cc8d7: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc8d9: 8b c8                                           mov    ecx,eax
  004cc8db: 83 e1 03                                        and    ecx,0x3
  004cc8de: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc8e0: a1 a8 8d 55 00                                  mov    eax,ds:0x558da8
  004cc8e5: 85 c0                                           test   eax,eax
  004cc8e7: 66 c7 05 fc 8f 55 00 4c 00                      mov    WORD PTR ds:0x558ffc,0x4c
  004cc8f0: 74 09                                           je     0x4cc8fb
  004cc8f2: 50                                              push   eax
  004cc8f3: e8 68 57 f7 ff                                  call   0x442060
  004cc8f8: 83 c4 04                                        add    esp,0x4
  004cc8fb: 83 c9 ff                                        or     ecx,0xffffffff
  004cc8fe: 33 c0                                           xor    eax,eax
  004cc900: bf 30 06 51 00                                  mov    edi,0x510630
  004cc905: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc907: f7 d1                                           not    ecx
  004cc909: 51                                              push   ecx
  004cc90a: e8 f1 1b 00 00                                  call   0x4ce500
  004cc90f: 83 c9 ff                                        or     ecx,0xffffffff
  004cc912: 8b d0                                           mov    edx,eax
  004cc914: 33 c0                                           xor    eax,eax
  004cc916: 83 c4 04                                        add    esp,0x4
  004cc919: bf 30 06 51 00                                  mov    edi,0x510630
  004cc91e: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc920: f7 d1                                           not    ecx
  004cc922: 2b f9                                           sub    edi,ecx
  004cc924: 8b c1                                           mov    eax,ecx
  004cc926: c1 e9 02                                        shr    ecx,0x2
  004cc929: 8b f7                                           mov    esi,edi
  004cc92b: 89 15 a8 8d 55 00                               mov    DWORD PTR ds:0x558da8,edx
  004cc931: 8b fa                                           mov    edi,edx
  004cc933: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc935: 8b c8                                           mov    ecx,eax
  004cc937: 83 e1 03                                        and    ecx,0x3
  004cc93a: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc93c: a1 58 8b 55 00                                  mov    eax,ds:0x558b58
  004cc941: 85 c0                                           test   eax,eax
  004cc943: 66 c7 05 ac 8d 55 00 4d 00                      mov    WORD PTR ds:0x558dac,0x4d
  004cc94c: 74 09                                           je     0x4cc957
  004cc94e: 50                                              push   eax
  004cc94f: e8 0c 57 f7 ff                                  call   0x442060
  004cc954: 83 c4 04                                        add    esp,0x4
  004cc957: 83 c9 ff                                        or     ecx,0xffffffff
  004cc95a: 33 c0                                           xor    eax,eax
  004cc95c: bf 24 06 51 00                                  mov    edi,0x510624
  004cc961: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc963: f7 d1                                           not    ecx
  004cc965: 51                                              push   ecx
  004cc966: e8 95 1b 00 00                                  call   0x4ce500
  004cc96b: 83 c9 ff                                        or     ecx,0xffffffff
  004cc96e: 8b d0                                           mov    edx,eax
  004cc970: 33 c0                                           xor    eax,eax
  004cc972: 83 c4 04                                        add    esp,0x4
  004cc975: bf 24 06 51 00                                  mov    edi,0x510624
  004cc97a: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc97c: f7 d1                                           not    ecx
  004cc97e: 2b f9                                           sub    edi,ecx
  004cc980: 8b c1                                           mov    eax,ecx
  004cc982: c1 e9 02                                        shr    ecx,0x2
  004cc985: 8b f7                                           mov    esi,edi
  004cc987: 89 15 58 8b 55 00                               mov    DWORD PTR ds:0x558b58,edx
  004cc98d: 8b fa                                           mov    edi,edx
  004cc98f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc991: 8b c8                                           mov    ecx,eax
  004cc993: 83 e1 03                                        and    ecx,0x3
  004cc996: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc998: a1 08 89 55 00                                  mov    eax,ds:0x558908
  004cc99d: 85 c0                                           test   eax,eax
  004cc99f: 66 c7 05 5c 8b 55 00 4e 00                      mov    WORD PTR ds:0x558b5c,0x4e
  004cc9a8: 74 09                                           je     0x4cc9b3
  004cc9aa: 50                                              push   eax
  004cc9ab: e8 b0 56 f7 ff                                  call   0x442060
  004cc9b0: 83 c4 04                                        add    esp,0x4
  004cc9b3: 83 c9 ff                                        or     ecx,0xffffffff
  004cc9b6: 33 c0                                           xor    eax,eax
  004cc9b8: bf 18 06 51 00                                  mov    edi,0x510618
  004cc9bd: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc9bf: f7 d1                                           not    ecx
  004cc9c1: 51                                              push   ecx
  004cc9c2: e8 39 1b 00 00                                  call   0x4ce500
  004cc9c7: 83 c9 ff                                        or     ecx,0xffffffff
  004cc9ca: 8b d0                                           mov    edx,eax
  004cc9cc: 33 c0                                           xor    eax,eax
  004cc9ce: 83 c4 04                                        add    esp,0x4
  004cc9d1: bf 18 06 51 00                                  mov    edi,0x510618
  004cc9d6: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cc9d8: f7 d1                                           not    ecx
  004cc9da: 2b f9                                           sub    edi,ecx
  004cc9dc: 8b c1                                           mov    eax,ecx
  004cc9de: c1 e9 02                                        shr    ecx,0x2
  004cc9e1: 8b f7                                           mov    esi,edi
  004cc9e3: 89 15 08 89 55 00                               mov    DWORD PTR ds:0x558908,edx
  004cc9e9: 8b fa                                           mov    edi,edx
  004cc9eb: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cc9ed: 8b c8                                           mov    ecx,eax
  004cc9ef: 83 e1 03                                        and    ecx,0x3
  004cc9f2: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cc9f4: a1 b8 86 55 00                                  mov    eax,ds:0x5586b8
  004cc9f9: 85 c0                                           test   eax,eax
  004cc9fb: 66 c7 05 0c 89 55 00 4f 00                      mov    WORD PTR ds:0x55890c,0x4f
  004cca04: 74 09                                           je     0x4cca0f
  004cca06: 50                                              push   eax
  004cca07: e8 54 56 f7 ff                                  call   0x442060
  004cca0c: 83 c4 04                                        add    esp,0x4
  004cca0f: 83 c9 ff                                        or     ecx,0xffffffff
  004cca12: 33 c0                                           xor    eax,eax
  004cca14: bf 08 06 51 00                                  mov    edi,0x510608
  004cca19: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cca1b: f7 d1                                           not    ecx
  004cca1d: 51                                              push   ecx
  004cca1e: e8 dd 1a 00 00                                  call   0x4ce500
  004cca23: 83 c9 ff                                        or     ecx,0xffffffff
  004cca26: 8b d0                                           mov    edx,eax
  004cca28: 33 c0                                           xor    eax,eax
  004cca2a: 83 c4 04                                        add    esp,0x4
  004cca2d: bf 08 06 51 00                                  mov    edi,0x510608
  004cca32: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cca34: f7 d1                                           not    ecx
  004cca36: 2b f9                                           sub    edi,ecx
  004cca38: 8b c1                                           mov    eax,ecx
  004cca3a: c1 e9 02                                        shr    ecx,0x2
  004cca3d: 8b f7                                           mov    esi,edi
  004cca3f: 89 15 b8 86 55 00                               mov    DWORD PTR ds:0x5586b8,edx
  004cca45: 8b fa                                           mov    edi,edx
  004cca47: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cca49: 8b c8                                           mov    ecx,eax
  004cca4b: 83 e1 03                                        and    ecx,0x3
  004cca4e: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cca50: a1 68 84 55 00                                  mov    eax,ds:0x558468
  004cca55: 85 c0                                           test   eax,eax
  004cca57: 66 c7 05 bc 86 55 00 52 00                      mov    WORD PTR ds:0x5586bc,0x52
  004cca60: 74 09                                           je     0x4cca6b
  004cca62: 50                                              push   eax
  004cca63: e8 f8 55 f7 ff                                  call   0x442060
  004cca68: 83 c4 04                                        add    esp,0x4
  004cca6b: 83 c9 ff                                        or     ecx,0xffffffff
  004cca6e: 33 c0                                           xor    eax,eax
  004cca70: bf f4 05 51 00                                  mov    edi,0x5105f4
  004cca75: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cca77: f7 d1                                           not    ecx
  004cca79: 51                                              push   ecx
  004cca7a: e8 81 1a 00 00                                  call   0x4ce500
  004cca7f: 83 c9 ff                                        or     ecx,0xffffffff
  004cca82: 8b d0                                           mov    edx,eax
  004cca84: 33 c0                                           xor    eax,eax
  004cca86: 83 c4 04                                        add    esp,0x4
  004cca89: bf f4 05 51 00                                  mov    edi,0x5105f4
  004cca8e: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cca90: f7 d1                                           not    ecx
  004cca92: 2b f9                                           sub    edi,ecx
  004cca94: 8b c1                                           mov    eax,ecx
  004cca96: c1 e9 02                                        shr    ecx,0x2
  004cca99: 8b f7                                           mov    esi,edi
  004cca9b: 89 15 68 84 55 00                               mov    DWORD PTR ds:0x558468,edx
  004ccaa1: 8b fa                                           mov    edi,edx
  004ccaa3: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccaa5: 8b c8                                           mov    ecx,eax
  004ccaa7: 83 e1 03                                        and    ecx,0x3
  004ccaaa: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccaac: a1 18 82 55 00                                  mov    eax,ds:0x558218
  004ccab1: 85 c0                                           test   eax,eax
  004ccab3: 66 c7 05 6c 84 55 00 61 00                      mov    WORD PTR ds:0x55846c,0x61
  004ccabc: 74 09                                           je     0x4ccac7
  004ccabe: 50                                              push   eax
  004ccabf: e8 9c 55 f7 ff                                  call   0x442060
  004ccac4: 83 c4 04                                        add    esp,0x4
  004ccac7: 83 c9 ff                                        or     ecx,0xffffffff
  004ccaca: 33 c0                                           xor    eax,eax
  004ccacc: bf e0 05 51 00                                  mov    edi,0x5105e0
  004ccad1: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccad3: f7 d1                                           not    ecx
  004ccad5: 51                                              push   ecx
  004ccad6: e8 25 1a 00 00                                  call   0x4ce500
  004ccadb: 83 c9 ff                                        or     ecx,0xffffffff
  004ccade: 8b d0                                           mov    edx,eax
  004ccae0: 33 c0                                           xor    eax,eax
  004ccae2: 83 c4 04                                        add    esp,0x4
  004ccae5: bf e0 05 51 00                                  mov    edi,0x5105e0
  004ccaea: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccaec: f7 d1                                           not    ecx
  004ccaee: 2b f9                                           sub    edi,ecx
  004ccaf0: 8b c1                                           mov    eax,ecx
  004ccaf2: c1 e9 02                                        shr    ecx,0x2
  004ccaf5: 8b f7                                           mov    esi,edi
  004ccaf7: 89 15 18 82 55 00                               mov    DWORD PTR ds:0x558218,edx
  004ccafd: 8b fa                                           mov    edi,edx
  004ccaff: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccb01: 8b c8                                           mov    ecx,eax
  004ccb03: 83 e1 03                                        and    ecx,0x3
  004ccb06: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccb08: a1 c8 7f 55 00                                  mov    eax,ds:0x557fc8
  004ccb0d: 85 c0                                           test   eax,eax
  004ccb0f: 66 c7 05 1c 82 55 00 62 00                      mov    WORD PTR ds:0x55821c,0x62
  004ccb18: 74 09                                           je     0x4ccb23
  004ccb1a: 50                                              push   eax
  004ccb1b: e8 40 55 f7 ff                                  call   0x442060
  004ccb20: 83 c4 04                                        add    esp,0x4
  004ccb23: 83 c9 ff                                        or     ecx,0xffffffff
  004ccb26: 33 c0                                           xor    eax,eax
  004ccb28: bf cc 05 51 00                                  mov    edi,0x5105cc
  004ccb2d: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccb2f: f7 d1                                           not    ecx
  004ccb31: 51                                              push   ecx
  004ccb32: e8 c9 19 00 00                                  call   0x4ce500
  004ccb37: 83 c9 ff                                        or     ecx,0xffffffff
  004ccb3a: 8b d0                                           mov    edx,eax
  004ccb3c: 33 c0                                           xor    eax,eax
  004ccb3e: 83 c4 04                                        add    esp,0x4
  004ccb41: bf cc 05 51 00                                  mov    edi,0x5105cc
  004ccb46: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccb48: f7 d1                                           not    ecx
  004ccb4a: 2b f9                                           sub    edi,ecx
  004ccb4c: 8b c1                                           mov    eax,ecx
  004ccb4e: c1 e9 02                                        shr    ecx,0x2
  004ccb51: 8b f7                                           mov    esi,edi
  004ccb53: 89 15 c8 7f 55 00                               mov    DWORD PTR ds:0x557fc8,edx
  004ccb59: 8b fa                                           mov    edi,edx
  004ccb5b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccb5d: 8b c8                                           mov    ecx,eax
  004ccb5f: 83 e1 03                                        and    ecx,0x3
  004ccb62: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccb64: a1 78 7d 55 00                                  mov    eax,ds:0x557d78
  004ccb69: 85 c0                                           test   eax,eax
  004ccb6b: 66 c7 05 cc 7f 55 00 63 00                      mov    WORD PTR ds:0x557fcc,0x63
  004ccb74: 74 09                                           je     0x4ccb7f
  004ccb76: 50                                              push   eax
  004ccb77: e8 e4 54 f7 ff                                  call   0x442060
  004ccb7c: 83 c4 04                                        add    esp,0x4
  004ccb7f: 83 c9 ff                                        or     ecx,0xffffffff
  004ccb82: 33 c0                                           xor    eax,eax
  004ccb84: bf b8 05 51 00                                  mov    edi,0x5105b8
  004ccb89: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccb8b: f7 d1                                           not    ecx
  004ccb8d: 51                                              push   ecx
  004ccb8e: e8 6d 19 00 00                                  call   0x4ce500
  004ccb93: 83 c9 ff                                        or     ecx,0xffffffff
  004ccb96: 8b d0                                           mov    edx,eax
  004ccb98: 33 c0                                           xor    eax,eax
  004ccb9a: 83 c4 04                                        add    esp,0x4
  004ccb9d: bf b8 05 51 00                                  mov    edi,0x5105b8
  004ccba2: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccba4: f7 d1                                           not    ecx
  004ccba6: 2b f9                                           sub    edi,ecx
  004ccba8: 8b c1                                           mov    eax,ecx
  004ccbaa: c1 e9 02                                        shr    ecx,0x2
  004ccbad: 8b f7                                           mov    esi,edi
  004ccbaf: 89 15 78 7d 55 00                               mov    DWORD PTR ds:0x557d78,edx
  004ccbb5: 8b fa                                           mov    edi,edx
  004ccbb7: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccbb9: 8b c8                                           mov    ecx,eax
  004ccbbb: 83 e1 03                                        and    ecx,0x3
  004ccbbe: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccbc0: a1 d8 9d 55 00                                  mov    eax,ds:0x559dd8
  004ccbc5: 85 c0                                           test   eax,eax
  004ccbc7: 66 c7 05 7c 7d 55 00 65 00                      mov    WORD PTR ds:0x557d7c,0x65
  004ccbd0: 74 09                                           je     0x4ccbdb
  004ccbd2: 50                                              push   eax
  004ccbd3: e8 88 54 f7 ff                                  call   0x442060
  004ccbd8: 83 c4 04                                        add    esp,0x4
  004ccbdb: 83 c9 ff                                        or     ecx,0xffffffff
  004ccbde: 33 c0                                           xor    eax,eax
  004ccbe0: bf 9c 05 51 00                                  mov    edi,0x51059c
  004ccbe5: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccbe7: f7 d1                                           not    ecx
  004ccbe9: 51                                              push   ecx
  004ccbea: e8 11 19 00 00                                  call   0x4ce500
  004ccbef: 83 c9 ff                                        or     ecx,0xffffffff
  004ccbf2: 8b d0                                           mov    edx,eax
  004ccbf4: 33 c0                                           xor    eax,eax
  004ccbf6: 83 c4 04                                        add    esp,0x4
  004ccbf9: bf 9c 05 51 00                                  mov    edi,0x51059c
  004ccbfe: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccc00: f7 d1                                           not    ecx
  004ccc02: 2b f9                                           sub    edi,ecx
  004ccc04: 8b c1                                           mov    eax,ecx
  004ccc06: c1 e9 02                                        shr    ecx,0x2
  004ccc09: 8b f7                                           mov    esi,edi
  004ccc0b: 89 15 d8 9d 55 00                               mov    DWORD PTR ds:0x559dd8,edx
  004ccc11: 8b fa                                           mov    edi,edx
  004ccc13: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccc15: 8b c8                                           mov    ecx,eax
  004ccc17: 83 e1 03                                        and    ecx,0x3
  004ccc1a: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccc1c: 68 4c 05 51 00                                  push   0x51054c
  004ccc21: b9 18 9f 55 00                                  mov    ecx,0x559f18
  004ccc26: 66 c7 05 dc 9d 55 00 7e 00                      mov    WORD PTR ds:0x559ddc,0x7e
  004ccc2f: e8 24 4e 00 00                                  call   0x4d1a58
  004ccc34: a1 88 9b 55 00                                  mov    eax,ds:0x559b88
  004ccc39: 85 c0                                           test   eax,eax
  004ccc3b: 74 09                                           je     0x4ccc46
  004ccc3d: 50                                              push   eax
  004ccc3e: e8 1d 54 f7 ff                                  call   0x442060
  004ccc43: 83 c4 04                                        add    esp,0x4
  004ccc46: 83 c9 ff                                        or     ecx,0xffffffff
  004ccc49: 33 c0                                           xor    eax,eax
  004ccc4b: bf 38 05 51 00                                  mov    edi,0x510538
  004ccc50: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccc52: f7 d1                                           not    ecx
  004ccc54: 51                                              push   ecx
  004ccc55: e8 a6 18 00 00                                  call   0x4ce500
  004ccc5a: 83 c9 ff                                        or     ecx,0xffffffff
  004ccc5d: 8b d0                                           mov    edx,eax
  004ccc5f: 33 c0                                           xor    eax,eax
  004ccc61: 83 c4 04                                        add    esp,0x4
  004ccc64: bf 38 05 51 00                                  mov    edi,0x510538
  004ccc69: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccc6b: f7 d1                                           not    ecx
  004ccc6d: 2b f9                                           sub    edi,ecx
  004ccc6f: 8b c1                                           mov    eax,ecx
  004ccc71: c1 e9 02                                        shr    ecx,0x2
  004ccc74: 8b f7                                           mov    esi,edi
  004ccc76: 89 15 88 9b 55 00                               mov    DWORD PTR ds:0x559b88,edx
  004ccc7c: 8b fa                                           mov    edi,edx
  004ccc7e: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccc80: 8b c8                                           mov    ecx,eax
  004ccc82: 83 e1 03                                        and    ecx,0x3
  004ccc85: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccc87: a1 88 76 55 00                                  mov    eax,ds:0x557688
  004ccc8c: 85 c0                                           test   eax,eax
  004ccc8e: 66 c7 05 8c 9b 55 00 54 00                      mov    WORD PTR ds:0x559b8c,0x54
  004ccc97: 74 09                                           je     0x4ccca2
  004ccc99: 50                                              push   eax
  004ccc9a: e8 c1 53 f7 ff                                  call   0x442060
  004ccc9f: 83 c4 04                                        add    esp,0x4
  004ccca2: 83 c9 ff                                        or     ecx,0xffffffff
  004ccca5: 33 c0                                           xor    eax,eax
  004ccca7: bf 24 05 51 00                                  mov    edi,0x510524
  004cccac: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cccae: f7 d1                                           not    ecx
  004cccb0: 51                                              push   ecx
  004cccb1: e8 4a 18 00 00                                  call   0x4ce500
  004cccb6: 83 c9 ff                                        or     ecx,0xffffffff
  004cccb9: 8b d0                                           mov    edx,eax
  004cccbb: 33 c0                                           xor    eax,eax
  004cccbd: 83 c4 04                                        add    esp,0x4
  004cccc0: bf 24 05 51 00                                  mov    edi,0x510524
  004cccc5: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cccc7: f7 d1                                           not    ecx
  004cccc9: 2b f9                                           sub    edi,ecx
  004ccccb: 8b c1                                           mov    eax,ecx
  004ccccd: c1 e9 02                                        shr    ecx,0x2
  004cccd0: 8b f7                                           mov    esi,edi
  004cccd2: 89 15 88 76 55 00                               mov    DWORD PTR ds:0x557688,edx
  004cccd8: 8b fa                                           mov    edi,edx
  004cccda: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cccdc: 8b c8                                           mov    ecx,eax
  004cccde: 83 e1 03                                        and    ecx,0x3
  004ccce1: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccce3: 68 e0 03 51 00                                  push   0x5103e0
  004ccce8: b9 c8 77 55 00                                  mov    ecx,0x5577c8
  004ccced: 66 c7 05 8c 76 55 00 2d 00                      mov    WORD PTR ds:0x55768c,0x2d
  004cccf6: e8 5d 4d 00 00                                  call   0x4d1a58
  004cccfb: a1 18 3b 56 00                                  mov    eax,ds:0x563b18
  004ccd00: 85 c0                                           test   eax,eax
  004ccd02: 74 09                                           je     0x4ccd0d
  004ccd04: 50                                              push   eax
  004ccd05: e8 56 53 f7 ff                                  call   0x442060
  004ccd0a: 83 c4 04                                        add    esp,0x4
  004ccd0d: 83 c9 ff                                        or     ecx,0xffffffff
  004ccd10: 33 c0                                           xor    eax,eax
  004ccd12: bf d4 03 51 00                                  mov    edi,0x5103d4
  004ccd17: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccd19: f7 d1                                           not    ecx
  004ccd1b: 51                                              push   ecx
  004ccd1c: e8 df 17 00 00                                  call   0x4ce500
  004ccd21: 83 c9 ff                                        or     ecx,0xffffffff
  004ccd24: 8b d0                                           mov    edx,eax
  004ccd26: 33 c0                                           xor    eax,eax
  004ccd28: 83 c4 04                                        add    esp,0x4
  004ccd2b: bf d4 03 51 00                                  mov    edi,0x5103d4
  004ccd30: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccd32: f7 d1                                           not    ecx
  004ccd34: 2b f9                                           sub    edi,ecx
  004ccd36: 8b c1                                           mov    eax,ecx
  004ccd38: c1 e9 02                                        shr    ecx,0x2
  004ccd3b: 8b f7                                           mov    esi,edi
  004ccd3d: 89 15 18 3b 56 00                               mov    DWORD PTR ds:0x563b18,edx
  004ccd43: 8b fa                                           mov    edi,edx
  004ccd45: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccd47: 8b c8                                           mov    ecx,eax
  004ccd49: 83 e1 03                                        and    ecx,0x3
  004ccd4c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccd4e: a1 c8 38 56 00                                  mov    eax,ds:0x5638c8
  004ccd53: 85 c0                                           test   eax,eax
  004ccd55: 66 c7 05 1c 3b 56 00 29 00                      mov    WORD PTR ds:0x563b1c,0x29
  004ccd5e: c6 05 20 3b 56 00 02                            mov    BYTE PTR ds:0x563b20,0x2
  004ccd65: 74 09                                           je     0x4ccd70
  004ccd67: 50                                              push   eax
  004ccd68: e8 f3 52 f7 ff                                  call   0x442060
  004ccd6d: 83 c4 04                                        add    esp,0x4
  004ccd70: 83 c9 ff                                        or     ecx,0xffffffff
  004ccd73: 33 c0                                           xor    eax,eax
  004ccd75: bf d4 03 51 00                                  mov    edi,0x5103d4
  004ccd7a: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccd7c: f7 d1                                           not    ecx
  004ccd7e: 51                                              push   ecx
  004ccd7f: e8 7c 17 00 00                                  call   0x4ce500
  004ccd84: 83 c9 ff                                        or     ecx,0xffffffff
  004ccd87: 8b d0                                           mov    edx,eax
  004ccd89: 33 c0                                           xor    eax,eax
  004ccd8b: 83 c4 04                                        add    esp,0x4
  004ccd8e: bf d4 03 51 00                                  mov    edi,0x5103d4
  004ccd93: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccd95: f7 d1                                           not    ecx
  004ccd97: 2b f9                                           sub    edi,ecx
  004ccd99: 8b c1                                           mov    eax,ecx
  004ccd9b: c1 e9 02                                        shr    ecx,0x2
  004ccd9e: 8b f7                                           mov    esi,edi
  004ccda0: 89 15 c8 38 56 00                               mov    DWORD PTR ds:0x5638c8,edx
  004ccda6: 8b fa                                           mov    edi,edx
  004ccda8: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccdaa: 8b c8                                           mov    ecx,eax
  004ccdac: 83 e1 03                                        and    ecx,0x3
  004ccdaf: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccdb1: a1 78 36 56 00                                  mov    eax,ds:0x563678
  004ccdb6: 85 c0                                           test   eax,eax
  004ccdb8: 66 c7 05 cc 38 56 00 2a 00                      mov    WORD PTR ds:0x5638cc,0x2a
  004ccdc1: c6 05 d0 38 56 00 02                            mov    BYTE PTR ds:0x5638d0,0x2
  004ccdc8: 74 09                                           je     0x4ccdd3
  004ccdca: 50                                              push   eax
  004ccdcb: e8 90 52 f7 ff                                  call   0x442060
  004ccdd0: 83 c4 04                                        add    esp,0x4
  004ccdd3: 83 c9 ff                                        or     ecx,0xffffffff
  004ccdd6: 33 c0                                           xor    eax,eax
  004ccdd8: bf c4 03 51 00                                  mov    edi,0x5103c4
  004ccddd: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccddf: f7 d1                                           not    ecx
  004ccde1: 51                                              push   ecx
  004ccde2: e8 19 17 00 00                                  call   0x4ce500
  004ccde7: 83 c9 ff                                        or     ecx,0xffffffff
  004ccdea: 8b d0                                           mov    edx,eax
  004ccdec: 33 c0                                           xor    eax,eax
  004ccdee: 83 c4 04                                        add    esp,0x4
  004ccdf1: bf c4 03 51 00                                  mov    edi,0x5103c4
  004ccdf6: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccdf8: f7 d1                                           not    ecx
  004ccdfa: 2b f9                                           sub    edi,ecx
  004ccdfc: 8b c1                                           mov    eax,ecx
  004ccdfe: c1 e9 02                                        shr    ecx,0x2
  004cce01: 8b f7                                           mov    esi,edi
  004cce03: 89 15 78 36 56 00                               mov    DWORD PTR ds:0x563678,edx
  004cce09: 8b fa                                           mov    edi,edx
  004cce0b: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cce0d: 8b c8                                           mov    ecx,eax
  004cce0f: 83 e1 03                                        and    ecx,0x3
  004cce12: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cce14: a1 28 34 56 00                                  mov    eax,ds:0x563428
  004cce19: 85 c0                                           test   eax,eax
  004cce1b: 66 c7 05 7c 36 56 00 2b 00                      mov    WORD PTR ds:0x56367c,0x2b
  004cce24: c6 05 80 36 56 00 02                            mov    BYTE PTR ds:0x563680,0x2
  004cce2b: 74 09                                           je     0x4cce36
  004cce2d: 50                                              push   eax
  004cce2e: e8 2d 52 f7 ff                                  call   0x442060
  004cce33: 83 c4 04                                        add    esp,0x4
  004cce36: 83 c9 ff                                        or     ecx,0xffffffff
  004cce39: 33 c0                                           xor    eax,eax
  004cce3b: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cce40: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cce42: f7 d1                                           not    ecx
  004cce44: 51                                              push   ecx
  004cce45: e8 b6 16 00 00                                  call   0x4ce500
  004cce4a: 83 c9 ff                                        or     ecx,0xffffffff
  004cce4d: 8b d0                                           mov    edx,eax
  004cce4f: 33 c0                                           xor    eax,eax
  004cce51: 83 c4 04                                        add    esp,0x4
  004cce54: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cce59: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cce5b: f7 d1                                           not    ecx
  004cce5d: 2b f9                                           sub    edi,ecx
  004cce5f: 8b c1                                           mov    eax,ecx
  004cce61: c1 e9 02                                        shr    ecx,0x2
  004cce64: 8b f7                                           mov    esi,edi
  004cce66: 89 15 28 34 56 00                               mov    DWORD PTR ds:0x563428,edx
  004cce6c: 8b fa                                           mov    edi,edx
  004cce6e: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cce70: 8b c8                                           mov    ecx,eax
  004cce72: 83 e1 03                                        and    ecx,0x3
  004cce75: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cce77: a1 d8 31 56 00                                  mov    eax,ds:0x5631d8
  004cce7c: 85 c0                                           test   eax,eax
  004cce7e: 66 c7 05 2c 34 56 00 2c 00                      mov    WORD PTR ds:0x56342c,0x2c
  004cce87: c6 05 30 34 56 00 02                            mov    BYTE PTR ds:0x563430,0x2
  004cce8e: 74 09                                           je     0x4cce99
  004cce90: 50                                              push   eax
  004cce91: e8 ca 51 f7 ff                                  call   0x442060
  004cce96: 83 c4 04                                        add    esp,0x4
  004cce99: 83 c9 ff                                        or     ecx,0xffffffff
  004cce9c: 33 c0                                           xor    eax,eax
  004cce9e: bf b4 03 51 00                                  mov    edi,0x5103b4
  004ccea3: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccea5: f7 d1                                           not    ecx
  004ccea7: 51                                              push   ecx
  004ccea8: e8 53 16 00 00                                  call   0x4ce500
  004ccead: 83 c9 ff                                        or     ecx,0xffffffff
  004cceb0: 8b d0                                           mov    edx,eax
  004cceb2: 33 c0                                           xor    eax,eax
  004cceb4: 83 c4 04                                        add    esp,0x4
  004cceb7: bf b4 03 51 00                                  mov    edi,0x5103b4
  004ccebc: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccebe: f7 d1                                           not    ecx
  004ccec0: 2b f9                                           sub    edi,ecx
  004ccec2: 8b c1                                           mov    eax,ecx
  004ccec4: c1 e9 02                                        shr    ecx,0x2
  004ccec7: 8b f7                                           mov    esi,edi
  004ccec9: 89 15 d8 31 56 00                               mov    DWORD PTR ds:0x5631d8,edx
  004ccecf: 8b fa                                           mov    edi,edx
  004cced1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cced3: 8b c8                                           mov    ecx,eax
  004cced5: 83 e1 03                                        and    ecx,0x3
  004cced8: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cceda: a1 88 2f 56 00                                  mov    eax,ds:0x562f88
  004ccedf: 85 c0                                           test   eax,eax
  004ccee1: 66 c7 05 dc 31 56 00 30 00                      mov    WORD PTR ds:0x5631dc,0x30
  004cceea: 74 09                                           je     0x4ccef5
  004cceec: 50                                              push   eax
  004cceed: e8 6e 51 f7 ff                                  call   0x442060
  004ccef2: 83 c4 04                                        add    esp,0x4
  004ccef5: 83 c9 ff                                        or     ecx,0xffffffff
  004ccef8: 33 c0                                           xor    eax,eax
  004ccefa: bf a4 03 51 00                                  mov    edi,0x5103a4
  004cceff: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccf01: f7 d1                                           not    ecx
  004ccf03: 51                                              push   ecx
  004ccf04: e8 f7 15 00 00                                  call   0x4ce500
  004ccf09: 83 c9 ff                                        or     ecx,0xffffffff
  004ccf0c: 8b d0                                           mov    edx,eax
  004ccf0e: 33 c0                                           xor    eax,eax
  004ccf10: 83 c4 04                                        add    esp,0x4
  004ccf13: bf a4 03 51 00                                  mov    edi,0x5103a4
  004ccf18: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccf1a: f7 d1                                           not    ecx
  004ccf1c: 2b f9                                           sub    edi,ecx
  004ccf1e: 8b c1                                           mov    eax,ecx
  004ccf20: c1 e9 02                                        shr    ecx,0x2
  004ccf23: 8b f7                                           mov    esi,edi
  004ccf25: 89 15 88 2f 56 00                               mov    DWORD PTR ds:0x562f88,edx
  004ccf2b: 8b fa                                           mov    edi,edx
  004ccf2d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccf2f: 8b c8                                           mov    ecx,eax
  004ccf31: 83 e1 03                                        and    ecx,0x3
  004ccf34: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccf36: a1 38 2d 56 00                                  mov    eax,ds:0x562d38
  004ccf3b: 85 c0                                           test   eax,eax
  004ccf3d: 66 c7 05 8c 2f 56 00 31 00                      mov    WORD PTR ds:0x562f8c,0x31
  004ccf46: 74 09                                           je     0x4ccf51
  004ccf48: 50                                              push   eax
  004ccf49: e8 12 51 f7 ff                                  call   0x442060
  004ccf4e: 83 c4 04                                        add    esp,0x4
  004ccf51: 83 c9 ff                                        or     ecx,0xffffffff
  004ccf54: 33 c0                                           xor    eax,eax
  004ccf56: bf 94 03 51 00                                  mov    edi,0x510394
  004ccf5b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccf5d: f7 d1                                           not    ecx
  004ccf5f: 51                                              push   ecx
  004ccf60: e8 9b 15 00 00                                  call   0x4ce500
  004ccf65: 83 c9 ff                                        or     ecx,0xffffffff
  004ccf68: 8b d0                                           mov    edx,eax
  004ccf6a: 33 c0                                           xor    eax,eax
  004ccf6c: 83 c4 04                                        add    esp,0x4
  004ccf6f: bf 94 03 51 00                                  mov    edi,0x510394
  004ccf74: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccf76: f7 d1                                           not    ecx
  004ccf78: 2b f9                                           sub    edi,ecx
  004ccf7a: 8b c1                                           mov    eax,ecx
  004ccf7c: c1 e9 02                                        shr    ecx,0x2
  004ccf7f: 8b f7                                           mov    esi,edi
  004ccf81: 89 15 38 2d 56 00                               mov    DWORD PTR ds:0x562d38,edx
  004ccf87: 8b fa                                           mov    edi,edx
  004ccf89: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccf8b: 8b c8                                           mov    ecx,eax
  004ccf8d: 83 e1 03                                        and    ecx,0x3
  004ccf90: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccf92: a1 e8 2a 56 00                                  mov    eax,ds:0x562ae8
  004ccf97: 85 c0                                           test   eax,eax
  004ccf99: 66 c7 05 3c 2d 56 00 21 00                      mov    WORD PTR ds:0x562d3c,0x21
  004ccfa2: 74 09                                           je     0x4ccfad
  004ccfa4: 50                                              push   eax
  004ccfa5: e8 b6 50 f7 ff                                  call   0x442060
  004ccfaa: 83 c4 04                                        add    esp,0x4
  004ccfad: 83 c9 ff                                        or     ecx,0xffffffff
  004ccfb0: 33 c0                                           xor    eax,eax
  004ccfb2: bf 84 03 51 00                                  mov    edi,0x510384
  004ccfb7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccfb9: f7 d1                                           not    ecx
  004ccfbb: 51                                              push   ecx
  004ccfbc: e8 3f 15 00 00                                  call   0x4ce500
  004ccfc1: 83 c9 ff                                        or     ecx,0xffffffff
  004ccfc4: 8b d0                                           mov    edx,eax
  004ccfc6: 33 c0                                           xor    eax,eax
  004ccfc8: 83 c4 04                                        add    esp,0x4
  004ccfcb: bf 84 03 51 00                                  mov    edi,0x510384
  004ccfd0: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004ccfd2: f7 d1                                           not    ecx
  004ccfd4: 2b f9                                           sub    edi,ecx
  004ccfd6: 8b c1                                           mov    eax,ecx
  004ccfd8: c1 e9 02                                        shr    ecx,0x2
  004ccfdb: 8b f7                                           mov    esi,edi
  004ccfdd: 89 15 e8 2a 56 00                               mov    DWORD PTR ds:0x562ae8,edx
  004ccfe3: 8b fa                                           mov    edi,edx
  004ccfe5: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004ccfe7: 8b c8                                           mov    ecx,eax
  004ccfe9: 83 e1 03                                        and    ecx,0x3
  004ccfec: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004ccfee: a1 98 28 56 00                                  mov    eax,ds:0x562898
  004ccff3: 85 c0                                           test   eax,eax
  004ccff5: 66 c7 05 ec 2a 56 00 37 00                      mov    WORD PTR ds:0x562aec,0x37
  004ccffe: 74 09                                           je     0x4cd009
  004cd000: 50                                              push   eax
  004cd001: e8 5a 50 f7 ff                                  call   0x442060
  004cd006: 83 c4 04                                        add    esp,0x4
  004cd009: 83 c9 ff                                        or     ecx,0xffffffff
  004cd00c: 33 c0                                           xor    eax,eax
  004cd00e: bf 70 03 51 00                                  mov    edi,0x510370
  004cd013: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd015: f7 d1                                           not    ecx
  004cd017: 51                                              push   ecx
  004cd018: e8 e3 14 00 00                                  call   0x4ce500
  004cd01d: 83 c9 ff                                        or     ecx,0xffffffff
  004cd020: 8b d0                                           mov    edx,eax
  004cd022: 33 c0                                           xor    eax,eax
  004cd024: 83 c4 04                                        add    esp,0x4
  004cd027: bf 70 03 51 00                                  mov    edi,0x510370
  004cd02c: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd02e: f7 d1                                           not    ecx
  004cd030: 2b f9                                           sub    edi,ecx
  004cd032: 8b c1                                           mov    eax,ecx
  004cd034: c1 e9 02                                        shr    ecx,0x2
  004cd037: 8b f7                                           mov    esi,edi
  004cd039: 89 15 98 28 56 00                               mov    DWORD PTR ds:0x562898,edx
  004cd03f: 8b fa                                           mov    edi,edx
  004cd041: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd043: 8b c8                                           mov    ecx,eax
  004cd045: 83 e1 03                                        and    ecx,0x3
  004cd048: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd04a: a1 48 26 56 00                                  mov    eax,ds:0x562648
  004cd04f: 85 c0                                           test   eax,eax
  004cd051: 66 c7 05 9c 28 56 00 39 00                      mov    WORD PTR ds:0x56289c,0x39
  004cd05a: 74 09                                           je     0x4cd065
  004cd05c: 50                                              push   eax
  004cd05d: e8 fe 4f f7 ff                                  call   0x442060
  004cd062: 83 c4 04                                        add    esp,0x4
  004cd065: 83 c9 ff                                        or     ecx,0xffffffff
  004cd068: 33 c0                                           xor    eax,eax
  004cd06a: bf 60 03 51 00                                  mov    edi,0x510360
  004cd06f: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd071: f7 d1                                           not    ecx
  004cd073: 51                                              push   ecx
  004cd074: e8 87 14 00 00                                  call   0x4ce500
  004cd079: 83 c9 ff                                        or     ecx,0xffffffff
  004cd07c: 8b d0                                           mov    edx,eax
  004cd07e: 33 c0                                           xor    eax,eax
  004cd080: 83 c4 04                                        add    esp,0x4
  004cd083: bf 60 03 51 00                                  mov    edi,0x510360
  004cd088: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd08a: f7 d1                                           not    ecx
  004cd08c: 2b f9                                           sub    edi,ecx
  004cd08e: 8b c1                                           mov    eax,ecx
  004cd090: c1 e9 02                                        shr    ecx,0x2
  004cd093: 8b f7                                           mov    esi,edi
  004cd095: 89 15 48 26 56 00                               mov    DWORD PTR ds:0x562648,edx
  004cd09b: 8b fa                                           mov    edi,edx
  004cd09d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd09f: 8b c8                                           mov    ecx,eax
  004cd0a1: 83 e1 03                                        and    ecx,0x3
  004cd0a4: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd0a6: a1 f8 23 56 00                                  mov    eax,ds:0x5623f8
  004cd0ab: 85 c0                                           test   eax,eax
  004cd0ad: 66 c7 05 4c 26 56 00 3b 00                      mov    WORD PTR ds:0x56264c,0x3b
  004cd0b6: 74 09                                           je     0x4cd0c1
  004cd0b8: 50                                              push   eax
  004cd0b9: e8 a2 4f f7 ff                                  call   0x442060
  004cd0be: 83 c4 04                                        add    esp,0x4
  004cd0c1: 83 c9 ff                                        or     ecx,0xffffffff
  004cd0c4: 33 c0                                           xor    eax,eax
  004cd0c6: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cd0cb: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd0cd: f7 d1                                           not    ecx
  004cd0cf: 51                                              push   ecx
  004cd0d0: e8 2b 14 00 00                                  call   0x4ce500
  004cd0d5: 83 c9 ff                                        or     ecx,0xffffffff
  004cd0d8: 8b d0                                           mov    edx,eax
  004cd0da: 33 c0                                           xor    eax,eax
  004cd0dc: 83 c4 04                                        add    esp,0x4
  004cd0df: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cd0e4: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd0e6: f7 d1                                           not    ecx
  004cd0e8: 2b f9                                           sub    edi,ecx
  004cd0ea: 8b c1                                           mov    eax,ecx
  004cd0ec: c1 e9 02                                        shr    ecx,0x2
  004cd0ef: 8b f7                                           mov    esi,edi
  004cd0f1: 89 15 f8 23 56 00                               mov    DWORD PTR ds:0x5623f8,edx
  004cd0f7: 8b fa                                           mov    edi,edx
  004cd0f9: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd0fb: 8b c8                                           mov    ecx,eax
  004cd0fd: 83 e1 03                                        and    ecx,0x3
  004cd100: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd102: a1 a8 21 56 00                                  mov    eax,ds:0x5621a8
  004cd107: 85 c0                                           test   eax,eax
  004cd109: 66 c7 05 fc 23 56 00 50 00                      mov    WORD PTR ds:0x5623fc,0x50
  004cd112: 74 09                                           je     0x4cd11d
  004cd114: 50                                              push   eax
  004cd115: e8 46 4f f7 ff                                  call   0x442060
  004cd11a: 83 c4 04                                        add    esp,0x4
  004cd11d: 83 c9 ff                                        or     ecx,0xffffffff
  004cd120: 33 c0                                           xor    eax,eax
  004cd122: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cd127: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd129: f7 d1                                           not    ecx
  004cd12b: 51                                              push   ecx
  004cd12c: e8 cf 13 00 00                                  call   0x4ce500
  004cd131: 83 c9 ff                                        or     ecx,0xffffffff
  004cd134: 8b d0                                           mov    edx,eax
  004cd136: 33 c0                                           xor    eax,eax
  004cd138: 83 c4 04                                        add    esp,0x4
  004cd13b: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cd140: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd142: f7 d1                                           not    ecx
  004cd144: 2b f9                                           sub    edi,ecx
  004cd146: 8b c1                                           mov    eax,ecx
  004cd148: c1 e9 02                                        shr    ecx,0x2
  004cd14b: 8b f7                                           mov    esi,edi
  004cd14d: 89 15 a8 21 56 00                               mov    DWORD PTR ds:0x5621a8,edx
  004cd153: 8b fa                                           mov    edi,edx
  004cd155: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd157: 8b c8                                           mov    ecx,eax
  004cd159: 83 e1 03                                        and    ecx,0x3
  004cd15c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd15e: a1 58 1f 56 00                                  mov    eax,ds:0x561f58
  004cd163: 85 c0                                           test   eax,eax
  004cd165: 66 c7 05 ac 21 56 00 53 00                      mov    WORD PTR ds:0x5621ac,0x53
  004cd16e: 74 09                                           je     0x4cd179
  004cd170: 50                                              push   eax
  004cd171: e8 ea 4e f7 ff                                  call   0x442060
  004cd176: 83 c4 04                                        add    esp,0x4
  004cd179: 83 c9 ff                                        or     ecx,0xffffffff
  004cd17c: 33 c0                                           xor    eax,eax
  004cd17e: bf 4c 03 51 00                                  mov    edi,0x51034c
  004cd183: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd185: f7 d1                                           not    ecx
  004cd187: 51                                              push   ecx
  004cd188: e8 73 13 00 00                                  call   0x4ce500
  004cd18d: 83 c9 ff                                        or     ecx,0xffffffff
  004cd190: 8b d0                                           mov    edx,eax
  004cd192: 33 c0                                           xor    eax,eax
  004cd194: 83 c4 04                                        add    esp,0x4
  004cd197: bf 4c 03 51 00                                  mov    edi,0x51034c
  004cd19c: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd19e: f7 d1                                           not    ecx
  004cd1a0: 2b f9                                           sub    edi,ecx
  004cd1a2: 8b c1                                           mov    eax,ecx
  004cd1a4: c1 e9 02                                        shr    ecx,0x2
  004cd1a7: 8b f7                                           mov    esi,edi
  004cd1a9: 89 15 58 1f 56 00                               mov    DWORD PTR ds:0x561f58,edx
  004cd1af: 8b fa                                           mov    edi,edx
  004cd1b1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd1b3: 8b c8                                           mov    ecx,eax
  004cd1b5: 83 e1 03                                        and    ecx,0x3
  004cd1b8: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd1ba: a1 08 1d 56 00                                  mov    eax,ds:0x561d08
  004cd1bf: 85 c0                                           test   eax,eax
  004cd1c1: 66 c7 05 5c 1f 56 00 55 00                      mov    WORD PTR ds:0x561f5c,0x55
  004cd1ca: 74 09                                           je     0x4cd1d5
  004cd1cc: 50                                              push   eax
  004cd1cd: e8 8e 4e f7 ff                                  call   0x442060
  004cd1d2: 83 c4 04                                        add    esp,0x4
  004cd1d5: 83 c9 ff                                        or     ecx,0xffffffff
  004cd1d8: 33 c0                                           xor    eax,eax
  004cd1da: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cd1df: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd1e1: f7 d1                                           not    ecx
  004cd1e3: 51                                              push   ecx
  004cd1e4: e8 17 13 00 00                                  call   0x4ce500
  004cd1e9: 83 c9 ff                                        or     ecx,0xffffffff
  004cd1ec: 8b d0                                           mov    edx,eax
  004cd1ee: 33 c0                                           xor    eax,eax
  004cd1f0: 83 c4 04                                        add    esp,0x4
  004cd1f3: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cd1f8: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd1fa: f7 d1                                           not    ecx
  004cd1fc: 2b f9                                           sub    edi,ecx
  004cd1fe: 8b c1                                           mov    eax,ecx
  004cd200: c1 e9 02                                        shr    ecx,0x2
  004cd203: 8b f7                                           mov    esi,edi
  004cd205: 89 15 08 1d 56 00                               mov    DWORD PTR ds:0x561d08,edx
  004cd20b: 8b fa                                           mov    edi,edx
  004cd20d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd20f: 8b c8                                           mov    ecx,eax
  004cd211: 83 e1 03                                        and    ecx,0x3
  004cd214: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd216: a1 b8 1a 56 00                                  mov    eax,ds:0x561ab8
  004cd21b: 85 c0                                           test   eax,eax
  004cd21d: 66 c7 05 0c 1d 56 00 66 00                      mov    WORD PTR ds:0x561d0c,0x66
  004cd226: c6 05 10 1d 56 00 02                            mov    BYTE PTR ds:0x561d10,0x2
  004cd22d: 74 09                                           je     0x4cd238
  004cd22f: 50                                              push   eax
  004cd230: e8 2b 4e f7 ff                                  call   0x442060
  004cd235: 83 c4 04                                        add    esp,0x4
  004cd238: 83 c9 ff                                        or     ecx,0xffffffff
  004cd23b: 33 c0                                           xor    eax,eax
  004cd23d: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cd242: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd244: f7 d1                                           not    ecx
  004cd246: 51                                              push   ecx
  004cd247: e8 b4 12 00 00                                  call   0x4ce500
  004cd24c: 83 c9 ff                                        or     ecx,0xffffffff
  004cd24f: 8b d0                                           mov    edx,eax
  004cd251: 33 c0                                           xor    eax,eax
  004cd253: 83 c4 04                                        add    esp,0x4
  004cd256: bf c4 03 51 00                                  mov    edi,0x5103c4
  004cd25b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd25d: f7 d1                                           not    ecx
  004cd25f: 2b f9                                           sub    edi,ecx
  004cd261: 8b c1                                           mov    eax,ecx
  004cd263: c1 e9 02                                        shr    ecx,0x2
  004cd266: 8b f7                                           mov    esi,edi
  004cd268: 89 15 b8 1a 56 00                               mov    DWORD PTR ds:0x561ab8,edx
  004cd26e: 8b fa                                           mov    edi,edx
  004cd270: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd272: 8b c8                                           mov    ecx,eax
  004cd274: 83 e1 03                                        and    ecx,0x3
  004cd277: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd279: a1 68 18 56 00                                  mov    eax,ds:0x561868
  004cd27e: 85 c0                                           test   eax,eax
  004cd280: 66 c7 05 bc 1a 56 00 67 00                      mov    WORD PTR ds:0x561abc,0x67
  004cd289: c6 05 c0 1a 56 00 02                            mov    BYTE PTR ds:0x561ac0,0x2
  004cd290: 74 09                                           je     0x4cd29b
  004cd292: 50                                              push   eax
  004cd293: e8 c8 4d f7 ff                                  call   0x442060
  004cd298: 83 c4 04                                        add    esp,0x4
  004cd29b: 83 c9 ff                                        or     ecx,0xffffffff
  004cd29e: 33 c0                                           xor    eax,eax
  004cd2a0: bf 3c 03 51 00                                  mov    edi,0x51033c
  004cd2a5: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd2a7: f7 d1                                           not    ecx
  004cd2a9: 51                                              push   ecx
  004cd2aa: e8 51 12 00 00                                  call   0x4ce500
  004cd2af: 83 c9 ff                                        or     ecx,0xffffffff
  004cd2b2: 8b d0                                           mov    edx,eax
  004cd2b4: 33 c0                                           xor    eax,eax
  004cd2b6: 83 c4 04                                        add    esp,0x4
  004cd2b9: bf 3c 03 51 00                                  mov    edi,0x51033c
  004cd2be: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd2c0: f7 d1                                           not    ecx
  004cd2c2: 2b f9                                           sub    edi,ecx
  004cd2c4: 8b c1                                           mov    eax,ecx
  004cd2c6: c1 e9 02                                        shr    ecx,0x2
  004cd2c9: 8b f7                                           mov    esi,edi
  004cd2cb: 89 15 68 18 56 00                               mov    DWORD PTR ds:0x561868,edx
  004cd2d1: 8b fa                                           mov    edi,edx
  004cd2d3: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd2d5: 8b c8                                           mov    ecx,eax
  004cd2d7: 83 e1 03                                        and    ecx,0x3
  004cd2da: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd2dc: a1 18 16 56 00                                  mov    eax,ds:0x561618
  004cd2e1: 85 c0                                           test   eax,eax
  004cd2e3: 66 c7 05 6c 18 56 00 6b 00                      mov    WORD PTR ds:0x56186c,0x6b
  004cd2ec: c6 05 70 18 56 00 02                            mov    BYTE PTR ds:0x561870,0x2
  004cd2f3: 74 09                                           je     0x4cd2fe
  004cd2f5: 50                                              push   eax
  004cd2f6: e8 65 4d f7 ff                                  call   0x442060
  004cd2fb: 83 c4 04                                        add    esp,0x4
  004cd2fe: 83 c9 ff                                        or     ecx,0xffffffff
  004cd301: 33 c0                                           xor    eax,eax
  004cd303: bf 3c 03 51 00                                  mov    edi,0x51033c
  004cd308: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd30a: f7 d1                                           not    ecx
  004cd30c: 51                                              push   ecx
  004cd30d: e8 ee 11 00 00                                  call   0x4ce500
  004cd312: 83 c9 ff                                        or     ecx,0xffffffff
  004cd315: 8b d0                                           mov    edx,eax
  004cd317: 33 c0                                           xor    eax,eax
  004cd319: 83 c4 04                                        add    esp,0x4
  004cd31c: bf 3c 03 51 00                                  mov    edi,0x51033c
  004cd321: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd323: f7 d1                                           not    ecx
  004cd325: 2b f9                                           sub    edi,ecx
  004cd327: 8b c1                                           mov    eax,ecx
  004cd329: c1 e9 02                                        shr    ecx,0x2
  004cd32c: 8b f7                                           mov    esi,edi
  004cd32e: 89 15 18 16 56 00                               mov    DWORD PTR ds:0x561618,edx
  004cd334: 8b fa                                           mov    edi,edx
  004cd336: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd338: 8b c8                                           mov    ecx,eax
  004cd33a: 83 e1 03                                        and    ecx,0x3
  004cd33d: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd33f: a1 c8 13 56 00                                  mov    eax,ds:0x5613c8
  004cd344: 85 c0                                           test   eax,eax
  004cd346: 66 c7 05 1c 16 56 00 6c 00                      mov    WORD PTR ds:0x56161c,0x6c
  004cd34f: c6 05 20 16 56 00 02                            mov    BYTE PTR ds:0x561620,0x2
  004cd356: 74 09                                           je     0x4cd361
  004cd358: 50                                              push   eax
  004cd359: e8 02 4d f7 ff                                  call   0x442060
  004cd35e: 83 c4 04                                        add    esp,0x4
  004cd361: 83 c9 ff                                        or     ecx,0xffffffff
  004cd364: 33 c0                                           xor    eax,eax
  004cd366: bf 3c 03 51 00                                  mov    edi,0x51033c
  004cd36b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd36d: f7 d1                                           not    ecx
  004cd36f: 51                                              push   ecx
  004cd370: e8 8b 11 00 00                                  call   0x4ce500
  004cd375: 83 c9 ff                                        or     ecx,0xffffffff
  004cd378: 8b d0                                           mov    edx,eax
  004cd37a: 33 c0                                           xor    eax,eax
  004cd37c: 83 c4 04                                        add    esp,0x4
  004cd37f: bf 3c 03 51 00                                  mov    edi,0x51033c
  004cd384: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd386: f7 d1                                           not    ecx
  004cd388: 2b f9                                           sub    edi,ecx
  004cd38a: 8b c1                                           mov    eax,ecx
  004cd38c: c1 e9 02                                        shr    ecx,0x2
  004cd38f: 8b f7                                           mov    esi,edi
  004cd391: 89 15 c8 13 56 00                               mov    DWORD PTR ds:0x5613c8,edx
  004cd397: 8b fa                                           mov    edi,edx
  004cd399: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd39b: 8b c8                                           mov    ecx,eax
  004cd39d: 83 e1 03                                        and    ecx,0x3
  004cd3a0: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd3a2: a1 e8 71 55 00                                  mov    eax,ds:0x5571e8
  004cd3a7: 85 c0                                           test   eax,eax
  004cd3a9: 66 c7 05 cc 13 56 00 6d 00                      mov    WORD PTR ds:0x5613cc,0x6d
  004cd3b2: c6 05 d0 13 56 00 02                            mov    BYTE PTR ds:0x5613d0,0x2
  004cd3b9: 66 c7 05 ec 71 55 00 a1 00                      mov    WORD PTR ds:0x5571ec,0xa1
  004cd3c2: 74 09                                           je     0x4cd3cd
  004cd3c4: 50                                              push   eax
  004cd3c5: e8 96 4c f7 ff                                  call   0x442060
  004cd3ca: 83 c4 04                                        add    esp,0x4
  004cd3cd: 83 c9 ff                                        or     ecx,0xffffffff
  004cd3d0: 33 c0                                           xor    eax,eax
  004cd3d2: bf 30 03 51 00                                  mov    edi,0x510330
  004cd3d7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd3d9: f7 d1                                           not    ecx
  004cd3db: 51                                              push   ecx
  004cd3dc: e8 1f 11 00 00                                  call   0x4ce500
  004cd3e1: 83 c9 ff                                        or     ecx,0xffffffff
  004cd3e4: 8b d0                                           mov    edx,eax
  004cd3e6: 83 c4 04                                        add    esp,0x4
  004cd3e9: 33 c0                                           xor    eax,eax
  004cd3eb: bf 30 03 51 00                                  mov    edi,0x510330
  004cd3f0: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cd3f2: f7 d1                                           not    ecx
  004cd3f4: 2b f9                                           sub    edi,ecx
  004cd3f6: 8b c1                                           mov    eax,ecx
  004cd3f8: 8b f7                                           mov    esi,edi
  004cd3fa: c1 e9 02                                        shr    ecx,0x2
  004cd3fd: 89 15 e8 71 55 00                               mov    DWORD PTR ds:0x5571e8,edx
  004cd403: 8b fa                                           mov    edi,edx
  004cd405: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004cd407: 8b c8                                           mov    ecx,eax
  004cd409: 83 e1 03                                        and    ecx,0x3
  004cd40c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004cd40e: 5f                                              pop    edi
  004cd40f: 5e                                              pop    esi
  004cd410: c3                                              ret
