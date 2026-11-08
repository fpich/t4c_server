; PASSE 108, Cibles de JMP/Jcc directs signalées hors fenêtre par les passes précédentes
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2748 distinct instructions; 73 graph entry points

  00402710: 56                                              push   esi
  00402711: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00402713: 85 f6                                           test   esi,esi
  00402715: 74 10                                           je     0x402727
  00402717: 8b ce                                           mov    ecx,esi
  00402719: e8 12 00 00 00                                  call   0x402730
  0040271e: 56                                              push   esi
  0040271f: e8 3c f9 03 00                                  call   0x442060
  00402724: 83 c4 04                                        add    esp,0x4
  00402727: 5e                                              pop    esi
  00402728: c3                                              ret
  00407750: 53                                              push   ebx
  00407751: 56                                              push   esi
  00407752: 8b f1                                           mov    esi,ecx
  00407754: 8b 46 30                                        mov    eax,DWORD PTR [esi+0x30]
  00407757: 33 db                                           xor    ebx,ebx
  00407759: 3b c3                                           cmp    eax,ebx
  0040775b: 74 1c                                           je     0x407779
  0040775d: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00407760: 8a 01                                           mov    al,BYTE PTR [ecx]
  00407762: 3a c3                                           cmp    al,bl
  00407764: 74 0a                                           je     0x407770
  00407766: 3c ff                                           cmp    al,0xff
  00407768: 74 06                                           je     0x407770
  0040776a: fe c8                                           dec    al
  0040776c: 88 01                                           mov    BYTE PTR [ecx],al
  0040776e: eb 09                                           jmp    0x407779
  00407770: 51                                              push   ecx
  00407771: e8 ea a8 03 00                                  call   0x442060
  00407776: 83 c4 04                                        add    esp,0x4
  00407779: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  0040777c: 89 5e 34                                        mov    DWORD PTR [esi+0x34],ebx
  0040777f: 89 5e 38                                        mov    DWORD PTR [esi+0x38],ebx
  00407782: 8b 46 18                                        mov    eax,DWORD PTR [esi+0x18]
  00407785: 3b c3                                           cmp    eax,ebx
  00407787: 74 1c                                           je     0x4077a5
  00407789: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0040778c: 8a 01                                           mov    al,BYTE PTR [ecx]
  0040778e: 3a c3                                           cmp    al,bl
  00407790: 74 0a                                           je     0x40779c
  00407792: 3c ff                                           cmp    al,0xff
  00407794: 74 06                                           je     0x40779c
  00407796: fe c8                                           dec    al
  00407798: 88 01                                           mov    BYTE PTR [ecx],al
  0040779a: eb 09                                           jmp    0x4077a5
  0040779c: 51                                              push   ecx
  0040779d: e8 be a8 03 00                                  call   0x442060
  004077a2: 83 c4 04                                        add    esp,0x4
  004077a5: 89 5e 18                                        mov    DWORD PTR [esi+0x18],ebx
  004077a8: 89 5e 1c                                        mov    DWORD PTR [esi+0x1c],ebx
  004077ab: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  004077ae: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004077b1: 3b c3                                           cmp    eax,ebx
  004077b3: 74 26                                           je     0x4077db
  004077b5: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004077b8: 8a 01                                           mov    al,BYTE PTR [ecx]
  004077ba: 3a c3                                           cmp    al,bl
  004077bc: 74 14                                           je     0x4077d2
  004077be: 3c ff                                           cmp    al,0xff
  004077c0: 74 10                                           je     0x4077d2
  004077c2: fe c8                                           dec    al
  004077c4: 88 01                                           mov    BYTE PTR [ecx],al
  004077c6: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004077c9: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004077cc: 89 5e 10                                        mov    DWORD PTR [esi+0x10],ebx
  004077cf: 5e                                              pop    esi
  004077d0: 5b                                              pop    ebx
  004077d1: c3                                              ret
  004077d2: 51                                              push   ecx
  004077d3: e8 88 a8 03 00                                  call   0x442060
  004077d8: 83 c4 04                                        add    esp,0x4
  004077db: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004077de: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004077e1: 89 5e 10                                        mov    DWORD PTR [esi+0x10],ebx
  004077e4: 5e                                              pop    esi
  004077e5: 5b                                              pop    ebx
  004077e6: c3                                              ret
  004077f0: 53                                              push   ebx
  004077f1: 56                                              push   esi
  004077f2: 8b f1                                           mov    esi,ecx
  004077f4: 8b 46 18                                        mov    eax,DWORD PTR [esi+0x18]
  004077f7: 33 db                                           xor    ebx,ebx
  004077f9: 3b c3                                           cmp    eax,ebx
  004077fb: 74 1c                                           je     0x407819
  004077fd: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00407800: 8a 01                                           mov    al,BYTE PTR [ecx]
  00407802: 3a c3                                           cmp    al,bl
  00407804: 74 0a                                           je     0x407810
  00407806: 3c ff                                           cmp    al,0xff
  00407808: 74 06                                           je     0x407810
  0040780a: fe c8                                           dec    al
  0040780c: 88 01                                           mov    BYTE PTR [ecx],al
  0040780e: eb 09                                           jmp    0x407819
  00407810: 51                                              push   ecx
  00407811: e8 4a a8 03 00                                  call   0x442060
  00407816: 83 c4 04                                        add    esp,0x4
  00407819: 89 5e 18                                        mov    DWORD PTR [esi+0x18],ebx
  0040781c: 89 5e 1c                                        mov    DWORD PTR [esi+0x1c],ebx
  0040781f: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  00407822: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00407825: 3b c3                                           cmp    eax,ebx
  00407827: 74 26                                           je     0x40784f
  00407829: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0040782c: 8a 01                                           mov    al,BYTE PTR [ecx]
  0040782e: 3a c3                                           cmp    al,bl
  00407830: 74 14                                           je     0x407846
  00407832: 3c ff                                           cmp    al,0xff
  00407834: 74 10                                           je     0x407846
  00407836: fe c8                                           dec    al
  00407838: 88 01                                           mov    BYTE PTR [ecx],al
  0040783a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0040783d: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00407840: 89 5e 10                                        mov    DWORD PTR [esi+0x10],ebx
  00407843: 5e                                              pop    esi
  00407844: 5b                                              pop    ebx
  00407845: c3                                              ret
  00407846: 51                                              push   ecx
  00407847: e8 14 a8 03 00                                  call   0x442060
  0040784c: 83 c4 04                                        add    esp,0x4
  0040784f: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00407852: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00407855: 89 5e 10                                        mov    DWORD PTR [esi+0x10],ebx
  00407858: 5e                                              pop    esi
  00407859: 5b                                              pop    ebx
  0040785a: c3                                              ret
  00410100: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00410102: 85 c0                                           test   eax,eax
  00410104: 74 07                                           je     0x41010d
  00410106: 50                                              push   eax
  00410107: e8 84 e3 0b 00                                  call   0x4ce490
  0041010c: 59                                              pop    ecx
  0041010d: c3                                              ret
  00422300: 55                                              push   ebp
  00422301: 8b ec                                           mov    ebp,esp
  00422303: 6a ff                                           push   0xffffffff
  00422305: 68 48 44 4d 00                                  push   0x4d4448
  0042230a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00422310: 50                                              push   eax
  00422311: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00422318: 83 ec 18                                        sub    esp,0x18
  0042231b: 56                                              push   esi
  0042231c: 8b f1                                           mov    esi,ecx
  0042231e: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00422321: 8a 88 27 01 00 00                               mov    cl,BYTE PTR [eax+0x127]
  00422327: 84 c9                                           test   cl,cl
  00422329: 75 62                                           jne    0x42238d
  0042232b: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0042232e: 6a 01                                           push   0x1
  00422330: e8 6b a1 02 00                                  call   0x44c4a0
  00422335: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00422338: e8 b3 a0 02 00                                  call   0x44c3f0
  0042233d: 85 c0                                           test   eax,eax
  0042233f: 75 13                                           jne    0x422354
  00422341: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00422343: 89 81 c4 01 00 00                               mov    DWORD PTR [ecx+0x1c4],eax
  00422349: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0042234c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042234e: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  00422354: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00422357: e8 94 3a 06 00                                  call   0x485df0
  0042235c: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  0042235e: 6a 00                                           push   0x0
  00422360: 8d 45 dc                                        lea    eax,[ebp-0x24]
  00422363: 50                                              push   eax
  00422364: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0042236b: e8 00 75 ff ff                                  call   0x419870
  00422370: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00422372: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00422374: 8d 45 dc                                        lea    eax,[ebp-0x24]
  00422377: 50                                              push   eax
  00422378: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  0042237e: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00422381: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00422388: e8 f3 3a 06 00                                  call   0x485e80
  0042238d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00422390: 5e                                              pop    esi
  00422391: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00422398: 8b e5                                           mov    esp,ebp
  0042239a: 5d                                              pop    ebp
  0042239b: c3                                              ret
  004280f0: 55                                              push   ebp
  004280f1: 8b ec                                           mov    ebp,esp
  004280f3: 51                                              push   ecx
  004280f4: 56                                              push   esi
  004280f5: 8b f1                                           mov    esi,ecx
  004280f7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004280fa: 85 c0                                           test   eax,eax
  004280fc: 74 0c                                           je     0x42810a
  004280fe: 50                                              push   eax
  004280ff: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00428102: e8 59 9f 01 00                                  call   0x442060
  00428107: 83 c4 04                                        add    esp,0x4
  0042810a: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  00428111: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00428118: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  0042811f: 5e                                              pop    esi
  00428120: 8b e5                                           mov    esp,ebp
  00428122: 5d                                              pop    ebp
  00428123: c3                                              ret
  004337c0: 56                                              push   esi
  004337c1: 8b f1                                           mov    esi,ecx
  004337c3: 8d 46 1c                                        lea    eax,[esi+0x1c]
  004337c6: 50                                              push   eax
  004337c7: c7 46 14 8c e5 4d 00                            mov    DWORD PTR [esi+0x14],0x4de58c
  004337ce: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  004337d4: 8d 4e 08                                        lea    ecx,[esi+0x8]
  004337d7: e8 64 e2 09 00                                  call   0x4d1a40
  004337dc: 5e                                              pop    esi
  004337dd: c3                                              ret
  00437cc0: 56                                              push   esi
  00437cc1: 8b f1                                           mov    esi,ecx
  00437cc3: 8d 46 08                                        lea    eax,[esi+0x8]
  00437cc6: 50                                              push   eax
  00437cc7: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00437ccd: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00437cd4: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00437cda: 33 c0                                           xor    eax,eax
  00437cdc: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00437cdf: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00437ce2: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00437ce5: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  00437ce8: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  00437ceb: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  00437cee: c7 06 d4 ee 4d 00                               mov    DWORD PTR [esi],0x4deed4
  00437cf4: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00437cf8: 8b c6                                           mov    eax,esi
  00437cfa: 5e                                              pop    esi
  00437cfb: c3                                              ret
  00437e50: 56                                              push   esi
  00437e51: 8b f1                                           mov    esi,ecx
  00437e53: 8d 46 08                                        lea    eax,[esi+0x8]
  00437e56: 50                                              push   eax
  00437e57: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00437e5d: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00437e64: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00437e6a: 33 c0                                           xor    eax,eax
  00437e6c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00437e6f: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00437e72: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00437e75: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  00437e78: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  00437e7b: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  00437e7e: c7 06 e4 ee 4d 00                               mov    DWORD PTR [esi],0x4deee4
  00437e84: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00437e88: 8b c6                                           mov    eax,esi
  00437e8a: 5e                                              pop    esi
  00437e8b: c3                                              ret
  0043c970: 53                                              push   ebx
  0043c971: 56                                              push   esi
  0043c972: 57                                              push   edi
  0043c973: 8b f9                                           mov    edi,ecx
  0043c975: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  0043c978: 85 db                                           test   ebx,ebx
  0043c97a: 75 04                                           jne    0x43c980
  0043c97c: 33 f6                                           xor    esi,esi
  0043c97e: eb 02                                           jmp    0x43c982
  0043c980: 8b 33                                           mov    esi,DWORD PTR [ebx]
  0043c982: 3b f3                                           cmp    esi,ebx
  0043c984: 74 27                                           je     0x43c9ad
  0043c986: 8b c6                                           mov    eax,esi
  0043c988: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043c98b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0043c98d: 8b 36                                           mov    esi,DWORD PTR [esi]
  0043c98f: 89 11                                           mov    DWORD PTR [ecx],edx
  0043c991: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0043c993: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043c996: 50                                              push   eax
  0043c997: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0043c99a: e8 c1 56 00 00                                  call   0x442060
  0043c99f: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0043c9a2: 83 c4 04                                        add    esp,0x4
  0043c9a5: 49                                              dec    ecx
  0043c9a6: 3b f3                                           cmp    esi,ebx
  0043c9a8: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  0043c9ab: 75 d9                                           jne    0x43c986
  0043c9ad: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0043c9b0: 50                                              push   eax
  0043c9b1: e8 aa 56 00 00                                  call   0x442060
  0043c9b6: 83 c4 04                                        add    esp,0x4
  0043c9b9: 33 c0                                           xor    eax,eax
  0043c9bb: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  0043c9be: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  0043c9c1: 5f                                              pop    edi
  0043c9c2: 5e                                              pop    esi
  0043c9c3: 5b                                              pop    ebx
  0043c9c4: c3                                              ret
  0043e220: 55                                              push   ebp
  0043e221: 8b ec                                           mov    ebp,esp
  0043e223: 6a ff                                           push   0xffffffff
  0043e225: 68 c6 5b 4d 00                                  push   0x4d5bc6
  0043e22a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043e230: 50                                              push   eax
  0043e231: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043e238: 83 ec 08                                        sub    esp,0x8
  0043e23b: 53                                              push   ebx
  0043e23c: 56                                              push   esi
  0043e23d: 8b f1                                           mov    esi,ecx
  0043e23f: 57                                              push   edi
  0043e240: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0043e243: e8 16 38 09 00                                  call   0x4d1a5e
  0043e248: 8d 7e 04                                        lea    edi,[esi+0x4]
  0043e24b: 33 db                                           xor    ebx,ebx
  0043e24d: 8d 4f 04                                        lea    ecx,[edi+0x4]
  0043e250: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0043e253: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0043e256: e8 03 38 09 00                                  call   0x4d1a5e
  0043e25b: 8d 4f 08                                        lea    ecx,[edi+0x8]
  0043e25e: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0043e262: e8 f7 37 09 00                                  call   0x4d1a5e
  0043e267: 8d 4f 0c                                        lea    ecx,[edi+0xc]
  0043e26a: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0043e26e: e8 eb 37 09 00                                  call   0x4d1a5e
  0043e273: 8d 4f 10                                        lea    ecx,[edi+0x10]
  0043e276: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0043e27a: e8 df 37 09 00                                  call   0x4d1a5e
  0043e27f: 8d 4f 14                                        lea    ecx,[edi+0x14]
  0043e282: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0043e286: e8 d3 37 09 00                                  call   0x4d1a5e
  0043e28b: 8d 4f 18                                        lea    ecx,[edi+0x18]
  0043e28e: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0043e292: e8 c7 37 09 00                                  call   0x4d1a5e
  0043e297: 8d 4f 1c                                        lea    ecx,[edi+0x1c]
  0043e29a: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0043e29e: e8 bb 37 09 00                                  call   0x4d1a5e
  0043e2a3: 8d 4f 20                                        lea    ecx,[edi+0x20]
  0043e2a6: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0043e2aa: e8 af 37 09 00                                  call   0x4d1a5e
  0043e2af: 8d 4f 28                                        lea    ecx,[edi+0x28]
  0043e2b2: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0043e2b6: e8 a3 37 09 00                                  call   0x4d1a5e
  0043e2bb: 8d 4f 2c                                        lea    ecx,[edi+0x2c]
  0043e2be: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  0043e2c2: e8 97 37 09 00                                  call   0x4d1a5e
  0043e2c7: 8d 4f 34                                        lea    ecx,[edi+0x34]
  0043e2ca: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  0043e2ce: e8 8b 37 09 00                                  call   0x4d1a5e
  0043e2d3: 8d 4f 3c                                        lea    ecx,[edi+0x3c]
  0043e2d6: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  0043e2da: e8 7f 37 09 00                                  call   0x4d1a5e
  0043e2df: 8d 4f 44                                        lea    ecx,[edi+0x44]
  0043e2e2: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0043e2e6: e8 73 37 09 00                                  call   0x4d1a5e
  0043e2eb: 8d 4f 48                                        lea    ecx,[edi+0x48]
  0043e2ee: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  0043e2f2: e8 67 37 09 00                                  call   0x4d1a5e
  0043e2f7: 8d 4f 4c                                        lea    ecx,[edi+0x4c]
  0043e2fa: c6 45 fc 0e                                     mov    BYTE PTR [ebp-0x4],0xe
  0043e2fe: e8 5b 37 09 00                                  call   0x4d1a5e
  0043e303: 8d 4f 50                                        lea    ecx,[edi+0x50]
  0043e306: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  0043e30a: e8 4f 37 09 00                                  call   0x4d1a5e
  0043e30f: 8d 4f 54                                        lea    ecx,[edi+0x54]
  0043e312: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0043e316: e8 43 37 09 00                                  call   0x4d1a5e
  0043e31b: c6 45 fc 11                                     mov    BYTE PTR [ebp-0x4],0x11
  0043e31f: 88 5f 58                                        mov    BYTE PTR [edi+0x58],bl
  0043e322: 8d 4f 5c                                        lea    ecx,[edi+0x5c]
  0043e325: e8 34 37 09 00                                  call   0x4d1a5e
  0043e32a: 8d 7e 68                                        lea    edi,[esi+0x68]
  0043e32d: 8b cf                                           mov    ecx,edi
  0043e32f: c6 45 fc 12                                     mov    BYTE PTR [ebp-0x4],0x12
  0043e333: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0043e336: e8 23 37 09 00                                  call   0x4d1a5e
  0043e33b: 8d 4f 04                                        lea    ecx,[edi+0x4]
  0043e33e: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  0043e342: e8 17 37 09 00                                  call   0x4d1a5e
  0043e347: 8d 4e 7c                                        lea    ecx,[esi+0x7c]
  0043e34a: c6 45 fc 14                                     mov    BYTE PTR [ebp-0x4],0x14
  0043e34e: e8 0b 37 09 00                                  call   0x4d1a5e
  0043e353: 8d be 80 00 00 00                               lea    edi,[esi+0x80]
  0043e359: 8b cf                                           mov    ecx,edi
  0043e35b: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  0043e35f: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0043e362: e8 f7 36 09 00                                  call   0x4d1a5e
  0043e367: 8d 4f 04                                        lea    ecx,[edi+0x4]
  0043e36a: c6 45 fc 16                                     mov    BYTE PTR [ebp-0x4],0x16
  0043e36e: e8 eb 36 09 00                                  call   0x4d1a5e
  0043e373: 8d be 8c 00 00 00                               lea    edi,[esi+0x8c]
  0043e379: 8b cf                                           mov    ecx,edi
  0043e37b: c6 45 fc 17                                     mov    BYTE PTR [ebp-0x4],0x17
  0043e37f: 66 c7 86 8a 00 00 00 ff ff                      mov    WORD PTR [esi+0x8a],0xffff
  0043e388: 88 9e 88 00 00 00                               mov    BYTE PTR [esi+0x88],bl
  0043e38e: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0043e391: e8 c8 36 09 00                                  call   0x4d1a5e
  0043e396: 8d 4f 04                                        lea    ecx,[edi+0x4]
  0043e399: c6 45 fc 18                                     mov    BYTE PTR [ebp-0x4],0x18
  0043e39d: e8 bc 36 09 00                                  call   0x4d1a5e
  0043e3a2: 8d 8e a0 00 00 00                               lea    ecx,[esi+0xa0]
  0043e3a8: c6 45 fc 19                                     mov    BYTE PTR [ebp-0x4],0x19
  0043e3ac: c7 86 9c 00 00 00 c4 38 50 00                   mov    DWORD PTR [esi+0x9c],0x5038c4
  0043e3b6: e8 a3 36 09 00                                  call   0x4d1a5e
  0043e3bb: 8d 8e a4 00 00 00                               lea    ecx,[esi+0xa4]
  0043e3c1: c6 45 fc 1a                                     mov    BYTE PTR [ebp-0x4],0x1a
  0043e3c5: e8 94 36 09 00                                  call   0x4d1a5e
  0043e3ca: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043e3cd: 83 c8 ff                                        or     eax,0xffffffff
  0043e3d0: 89 86 bc 00 00 00                               mov    DWORD PTR [esi+0xbc],eax
  0043e3d6: 89 86 c0 00 00 00                               mov    DWORD PTR [esi+0xc0],eax
  0043e3dc: 89 86 a8 00 00 00                               mov    DWORD PTR [esi+0xa8],eax
  0043e3e2: 89 9e c4 00 00 00                               mov    DWORD PTR [esi+0xc4],ebx
  0043e3e8: 89 9e c8 00 00 00                               mov    DWORD PTR [esi+0xc8],ebx
  0043e3ee: 88 9e 98 00 00 00                               mov    BYTE PTR [esi+0x98],bl
  0043e3f4: 5f                                              pop    edi
  0043e3f5: c6 86 cc 00 00 00 01                            mov    BYTE PTR [esi+0xcc],0x1
  0043e3fc: 8b c6                                           mov    eax,esi
  0043e3fe: 5e                                              pop    esi
  0043e3ff: 5b                                              pop    ebx
  0043e400: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043e407: 8b e5                                           mov    esp,ebp
  0043e409: 5d                                              pop    ebp
  0043e40a: c3                                              ret
  0043e620: 55                                              push   ebp
  0043e621: 8b ec                                           mov    ebp,esp
  0043e623: 6a ff                                           push   0xffffffff
  0043e625: 68 26 5e 4d 00                                  push   0x4d5e26
  0043e62a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043e630: 50                                              push   eax
  0043e631: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043e638: 83 ec 08                                        sub    esp,0x8
  0043e63b: 56                                              push   esi
  0043e63c: 57                                              push   edi
  0043e63d: 8b f9                                           mov    edi,ecx
  0043e63f: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0043e642: 8b 87 a8 00 00 00                               mov    eax,DWORD PTR [edi+0xa8]
  0043e648: 83 f8 ff                                        cmp    eax,0xffffffff
  0043e64b: c7 45 fc 06 00 00 00                            mov    DWORD PTR [ebp-0x4],0x6
  0043e652: 74 07                                           je     0x43e65b
  0043e654: 50                                              push   eax
  0043e655: ff 15 38 e1 4d 00                               call   DWORD PTR ds:0x4de138
  0043e65b: 8d 8f a4 00 00 00                               lea    ecx,[edi+0xa4]
  0043e661: e8 da 33 09 00                                  call   0x4d1a40
  0043e666: 8d 8f a0 00 00 00                               lea    ecx,[edi+0xa0]
  0043e66c: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0043e670: e8 cb 33 09 00                                  call   0x4d1a40
  0043e675: 8d b7 8c 00 00 00                               lea    esi,[edi+0x8c]
  0043e67b: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0043e67e: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0043e681: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0043e685: e8 b6 33 09 00                                  call   0x4d1a40
  0043e68a: 8b ce                                           mov    ecx,esi
  0043e68c: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0043e690: e8 ab 33 09 00                                  call   0x4d1a40
  0043e695: 8d b7 80 00 00 00                               lea    esi,[edi+0x80]
  0043e69b: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0043e69e: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0043e6a1: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0043e6a5: e8 96 33 09 00                                  call   0x4d1a40
  0043e6aa: 8b ce                                           mov    ecx,esi
  0043e6ac: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0043e6b0: e8 8b 33 09 00                                  call   0x4d1a40
  0043e6b5: 8d 4f 7c                                        lea    ecx,[edi+0x7c]
  0043e6b8: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0043e6bc: e8 7f 33 09 00                                  call   0x4d1a40
  0043e6c1: 8d 77 68                                        lea    esi,[edi+0x68]
  0043e6c4: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0043e6c7: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0043e6ca: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  0043e6ce: e8 6d 33 09 00                                  call   0x4d1a40
  0043e6d3: 8b ce                                           mov    ecx,esi
  0043e6d5: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0043e6d9: e8 62 33 09 00                                  call   0x4d1a40
  0043e6de: 8d 77 04                                        lea    esi,[edi+0x4]
  0043e6e1: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0043e6e4: 8d 4e 5c                                        lea    ecx,[esi+0x5c]
  0043e6e7: c6 45 fc 1a                                     mov    BYTE PTR [ebp-0x4],0x1a
  0043e6eb: e8 50 33 09 00                                  call   0x4d1a40
  0043e6f0: 8d 4e 54                                        lea    ecx,[esi+0x54]
  0043e6f3: c6 45 fc 19                                     mov    BYTE PTR [ebp-0x4],0x19
  0043e6f7: e8 44 33 09 00                                  call   0x4d1a40
  0043e6fc: 8d 4e 50                                        lea    ecx,[esi+0x50]
  0043e6ff: c6 45 fc 18                                     mov    BYTE PTR [ebp-0x4],0x18
  0043e703: e8 38 33 09 00                                  call   0x4d1a40
  0043e708: 8d 4e 4c                                        lea    ecx,[esi+0x4c]
  0043e70b: c6 45 fc 17                                     mov    BYTE PTR [ebp-0x4],0x17
  0043e70f: e8 2c 33 09 00                                  call   0x4d1a40
  0043e714: 8d 4e 48                                        lea    ecx,[esi+0x48]
  0043e717: c6 45 fc 16                                     mov    BYTE PTR [ebp-0x4],0x16
  0043e71b: e8 20 33 09 00                                  call   0x4d1a40
  0043e720: 8d 4e 44                                        lea    ecx,[esi+0x44]
  0043e723: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  0043e727: e8 14 33 09 00                                  call   0x4d1a40
  0043e72c: 8d 4e 3c                                        lea    ecx,[esi+0x3c]
  0043e72f: c6 45 fc 14                                     mov    BYTE PTR [ebp-0x4],0x14
  0043e733: e8 08 33 09 00                                  call   0x4d1a40
  0043e738: 8d 4e 34                                        lea    ecx,[esi+0x34]
  0043e73b: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  0043e73f: e8 fc 32 09 00                                  call   0x4d1a40
  0043e744: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  0043e747: c6 45 fc 12                                     mov    BYTE PTR [ebp-0x4],0x12
  0043e74b: e8 f0 32 09 00                                  call   0x4d1a40
  0043e750: 8d 4e 28                                        lea    ecx,[esi+0x28]
  0043e753: c6 45 fc 11                                     mov    BYTE PTR [ebp-0x4],0x11
  0043e757: e8 e4 32 09 00                                  call   0x4d1a40
  0043e75c: 8d 4e 20                                        lea    ecx,[esi+0x20]
  0043e75f: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0043e763: e8 d8 32 09 00                                  call   0x4d1a40
  0043e768: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  0043e76b: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  0043e76f: e8 cc 32 09 00                                  call   0x4d1a40
  0043e774: 8d 4e 18                                        lea    ecx,[esi+0x18]
  0043e777: c6 45 fc 0e                                     mov    BYTE PTR [ebp-0x4],0xe
  0043e77b: e8 c0 32 09 00                                  call   0x4d1a40
  0043e780: 8d 4e 14                                        lea    ecx,[esi+0x14]
  0043e783: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  0043e787: e8 b4 32 09 00                                  call   0x4d1a40
  0043e78c: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0043e78f: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0043e793: e8 a8 32 09 00                                  call   0x4d1a40
  0043e798: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  0043e79b: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  0043e79f: e8 9c 32 09 00                                  call   0x4d1a40
  0043e7a4: 8d 4e 08                                        lea    ecx,[esi+0x8]
  0043e7a7: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  0043e7ab: e8 90 32 09 00                                  call   0x4d1a40
  0043e7b0: 8d 4e 04                                        lea    ecx,[esi+0x4]
  0043e7b3: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0043e7b7: e8 84 32 09 00                                  call   0x4d1a40
  0043e7bc: 8b cf                                           mov    ecx,edi
  0043e7be: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043e7c5: e8 76 32 09 00                                  call   0x4d1a40
  0043e7ca: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043e7cd: 5f                                              pop    edi
  0043e7ce: 5e                                              pop    esi
  0043e7cf: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043e7d6: 8b e5                                           mov    esp,ebp
  0043e7d8: 5d                                              pop    ebp
  0043e7d9: c3                                              ret
  00440e31: 6a 00                                           push   0x0
  00440e33: e8 d8 00 00 00                                  call   0x440f10
  00440e38: 83 c4 04                                        add    esp,0x4
  00440e3b: 8d 8d 34 fe ff ff                               lea    ecx,[ebp-0x1cc]
  00440e41: c6 45 fc 2a                                     mov    BYTE PTR [ebp-0x4],0x2a
  00440e45: e8 7a 0c 09 00                                  call   0x4d1ac4
  00440e4a: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  00440e4d: c6 45 fc 29                                     mov    BYTE PTR [ebp-0x4],0x29
  00440e51: e8 ea 0b 09 00                                  call   0x4d1a40
  00440e56: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  00440e59: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  00440e5d: e8 de 0b 09 00                                  call   0x4d1a40
  00440e62: 8d 8d 6c ff ff ff                               lea    ecx,[ebp-0x94]
  00440e68: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00440e6c: e8 cf 0b 09 00                                  call   0x4d1a40
  00440e71: 8d 8d 50 fe ff ff                               lea    ecx,[ebp-0x1b0]
  00440e77: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00440e7b: e8 20 83 01 00                                  call   0x4591a0
  00440e80: 8d 8d d0 fc ff ff                               lea    ecx,[ebp-0x330]
  00440e86: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00440e8a: e8 71 f2 fc ff                                  call   0x410100
  00440e8f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00440e92: 5f                                              pop    edi
  00440e93: 5e                                              pop    esi
  00440e94: b8 01 00 00 00                                  mov    eax,0x1
  00440e99: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00440ea0: 5b                                              pop    ebx
  00440ea1: 8b e5                                           mov    esp,ebp
  00440ea3: 5d                                              pop    ebp
  00440ea4: c3                                              ret
  00441460: 53                                              push   ebx
  00441461: 56                                              push   esi
  00441462: 57                                              push   edi
  00441463: 8b f9                                           mov    edi,ecx
  00441465: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00441468: 85 db                                           test   ebx,ebx
  0044146a: 75 04                                           jne    0x441470
  0044146c: 33 f6                                           xor    esi,esi
  0044146e: eb 02                                           jmp    0x441472
  00441470: 8b 33                                           mov    esi,DWORD PTR [ebx]
  00441472: 3b f3                                           cmp    esi,ebx
  00441474: 74 27                                           je     0x44149d
  00441476: 8b c6                                           mov    eax,esi
  00441478: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0044147b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0044147d: 8b 36                                           mov    esi,DWORD PTR [esi]
  0044147f: 89 11                                           mov    DWORD PTR [ecx],edx
  00441481: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00441483: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00441486: 50                                              push   eax
  00441487: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0044148a: e8 d1 0b 00 00                                  call   0x442060
  0044148f: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00441492: 83 c4 04                                        add    esp,0x4
  00441495: 49                                              dec    ecx
  00441496: 3b f3                                           cmp    esi,ebx
  00441498: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  0044149b: 75 d9                                           jne    0x441476
  0044149d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004414a0: 50                                              push   eax
  004414a1: e8 ba 0b 00 00                                  call   0x442060
  004414a6: 83 c4 04                                        add    esp,0x4
  004414a9: 33 c0                                           xor    eax,eax
  004414ab: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004414ae: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004414b1: 5f                                              pop    edi
  004414b2: 5e                                              pop    esi
  004414b3: 5b                                              pop    ebx
  004414b4: c3                                              ret
  004416b0: 56                                              push   esi
  004416b1: 8b f1                                           mov    esi,ecx
  004416b3: 8b 86 10 10 00 00                               mov    eax,DWORD PTR [esi+0x1010]
  004416b9: 83 f8 ff                                        cmp    eax,0xffffffff
  004416bc: 74 07                                           je     0x4416c5
  004416be: 50                                              push   eax
  004416bf: ff 15 38 e1 4d 00                               call   DWORD PTR ds:0x4de138
  004416c5: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004416c8: 85 c0                                           test   eax,eax
  004416ca: 74 1c                                           je     0x4416e8
  004416cc: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004416cf: 8a 01                                           mov    al,BYTE PTR [ecx]
  004416d1: 84 c0                                           test   al,al
  004416d3: 74 0a                                           je     0x4416df
  004416d5: 3c ff                                           cmp    al,0xff
  004416d7: 74 06                                           je     0x4416df
  004416d9: fe c8                                           dec    al
  004416db: 88 01                                           mov    BYTE PTR [ecx],al
  004416dd: eb 09                                           jmp    0x4416e8
  004416df: 51                                              push   ecx
  004416e0: e8 7b 09 00 00                                  call   0x442060
  004416e5: 83 c4 04                                        add    esp,0x4
  004416e8: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004416ef: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004416f6: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004416fd: 5e                                              pop    esi
  004416fe: c3                                              ret
  00441e10: 55                                              push   ebp
  00441e11: 8b ec                                           mov    ebp,esp
  00441e13: 6a ff                                           push   0xffffffff
  00441e15: 68 50 61 4d 00                                  push   0x4d6150
  00441e1a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00441e20: 50                                              push   eax
  00441e21: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00441e28: 83 ec 28                                        sub    esp,0x28
  00441e2b: 53                                              push   ebx
  00441e2c: 56                                              push   esi
  00441e2d: 57                                              push   edi
  00441e2e: 33 ff                                           xor    edi,edi
  00441e30: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00441e33: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00441e36: e8 c5 72 03 00                                  call   0x479100
  00441e3b: e8 80 fc 00 00                                  call   0x451ac0
  00441e40: 57                                              push   edi
  00441e41: 57                                              push   edi
  00441e42: 57                                              push   edi
  00441e43: 57                                              push   edi
  00441e44: 57                                              push   edi
  00441e45: 6a 12                                           push   0x12
  00441e47: e8 24 86 04 00                                  call   0x48a470
  00441e4c: 83 c4 18                                        add    esp,0x18
  00441e4f: 8d 45 cc                                        lea    eax,[ebp-0x34]
  00441e52: 50                                              push   eax
  00441e53: ff 15 c0 e0 4d 00                               call   DWORD PTR ds:0x4de0c0
  00441e59: e8 52 58 ff ff                                  call   0x4376b0
  00441e5e: e8 6d 81 04 00                                  call   0x489fd0
  00441e63: ff 15 c0 e4 4d 00                               call   DWORD PTR ds:0x4de4c0
  00441e69: 8b 0d 38 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e38
  00441e6f: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  00441e72: 8b 1d c4 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0c4
  00441e78: 8d 41 04                                        lea    eax,[ecx+0x4]
  00441e7b: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  00441e7e: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  00441e81: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  00441e85: a1 38 5e 51 00                                  mov    eax,ds:0x515e38
  00441e8a: 8b 48 44                                        mov    ecx,DWORD PTR [eax+0x44]
  00441e8d: 83 c0 04                                        add    eax,0x4
  00441e90: 3b cf                                           cmp    ecx,edi
  00441e92: 74 0a                                           je     0x441e9e
  00441e94: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00441e97: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00441e99: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  00441e9c: eb 07                                           jmp    0x441ea5
  00441e9e: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  00441ea5: 39 78 20                                        cmp    DWORD PTR [eax+0x20],edi
  00441ea8: 75 5e                                           jne    0x441f08
  00441eaa: 39 78 40                                        cmp    DWORD PTR [eax+0x40],edi
  00441ead: 74 04                                           je     0x441eb3
  00441eaf: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  00441eb3: 89 78 40                                        mov    DWORD PTR [eax+0x40],edi
  00441eb6: e8 05 79 04 00                                  call   0x4897c0
  00441ebb: e8 30 2b 01 00                                  call   0x4549f0
  00441ec0: e8 eb 14 fd ff                                  call   0x4133b0
  00441ec5: 8b 0d 38 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e38
  00441ecb: 3b cf                                           cmp    ecx,edi
  00441ecd: 74 06                                           je     0x441ed5
  00441ecf: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00441ed1: 6a 01                                           push   0x1
  00441ed3: ff 12                                           call   DWORD PTR [edx]
  00441ed5: 8b 0d 9c 43 51 00                               mov    ecx,DWORD PTR ds:0x51439c
  00441edb: 3b cf                                           cmp    ecx,edi
  00441edd: 74 06                                           je     0x441ee5
  00441edf: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00441ee1: 6a 03                                           push   0x3
  00441ee3: ff 10                                           call   DWORD PTR [eax]
  00441ee5: e8 36 ed 04 00                                  call   0x490c20
  00441eea: e8 81 eb 01 00                                  call   0x460a70
  00441eef: e8 1c f0 01 00                                  call   0x460f10
  00441ef4: e8 07 bd 00 00                                  call   0x44dc00
  00441ef9: e8 f2 e8 01 00                                  call   0x4607f0
  00441efe: e8 dd 17 ff ff                                  call   0x4336e0
  00441f03: e9 e1 00 00 00                                  jmp    0x441fe9
  00441f08: a1 38 5e 51 00                                  mov    eax,ds:0x515e38
  00441f0d: 8b 48 24                                        mov    ecx,DWORD PTR [eax+0x24]
  00441f10: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00441f13: 8b 02                                           mov    eax,DWORD PTR [edx]
  00441f15: 50                                              push   eax
  00441f16: ff d3                                           call   ebx
  00441f18: 8b 0d 38 5e 51 00                               mov    ecx,DWORD PTR ds:0x515e38
  00441f1e: 8b 41 3c                                        mov    eax,DWORD PTR [ecx+0x3c]
  00441f21: 8b 51 24                                        mov    edx,DWORD PTR [ecx+0x24]
  00441f24: 8d 71 04                                        lea    esi,[ecx+0x4]
  00441f27: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  00441f2a: 48                                              dec    eax
  00441f2b: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  00441f2e: 8b c2                                           mov    eax,edx
  00441f30: 3b c1                                           cmp    eax,ecx
  00441f32: 89 56 2c                                        mov    DWORD PTR [esi+0x2c],edx
  00441f35: 74 3d                                           je     0x441f74
  00441f37: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00441f3a: 74 34                                           je     0x441f70
  00441f3c: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00441f3e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00441f41: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00441f44: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00441f47: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00441f4a: 8b 10                                           mov    edx,DWORD PTR [eax]
  00441f4c: 89 11                                           mov    DWORD PTR [ecx],edx
  00441f4e: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  00441f51: 83 f8 01                                        cmp    eax,0x1
  00441f54: 75 0b                                           jne    0x441f61
  00441f56: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00441f59: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00441f5c: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  00441f5f: eb 63                                           jmp    0x441fc4
  00441f61: 83 f8 02                                        cmp    eax,0x2
  00441f64: 75 5e                                           jne    0x441fc4
  00441f66: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00441f69: 8b 02                                           mov    eax,DWORD PTR [edx]
  00441f6b: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00441f6e: eb 54                                           jmp    0x441fc4
  00441f70: 3b c1                                           cmp    eax,ecx
  00441f72: 75 23                                           jne    0x441f97
  00441f74: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00441f77: 74 23                                           je     0x441f9c
  00441f79: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00441f7c: 89 39                                           mov    DWORD PTR [ecx],edi
  00441f7e: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00441f81: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00441f84: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00441f87: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  00441f8b: 8b ca                                           mov    ecx,edx
  00441f8d: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00441f90: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00441f93: 75 2f                                           jne    0x441fc4
  00441f95: eb 2a                                           jmp    0x441fc1
  00441f97: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  00441f9a: 75 1c                                           jne    0x441fb8
  00441f9c: 3b c1                                           cmp    eax,ecx
  00441f9e: 74 18                                           je     0x441fb8
  00441fa0: 8b 00                                           mov    eax,DWORD PTR [eax]
  00441fa2: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00441fa5: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00441fa8: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00441faa: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00441fad: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00441fb0: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  00441fb4: 75 0e                                           jne    0x441fc4
  00441fb6: eb 09                                           jmp    0x441fc1
  00441fb8: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  00441fbb: 89 7e 24                                        mov    DWORD PTR [esi+0x24],edi
  00441fbe: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  00441fc1: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00441fc4: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00441fc7: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00441fca: 50                                              push   eax
  00441fcb: e8 90 00 00 00                                  call   0x442060
  00441fd0: 8b 4e 2c                                        mov    ecx,DWORD PTR [esi+0x2c]
  00441fd3: 51                                              push   ecx
  00441fd4: e8 87 00 00 00                                  call   0x442060
  00441fd9: 83 c4 08                                        add    esp,0x8
  00441fdc: e9 a4 fe ff ff                                  jmp    0x441e85
  00441fe9: 57                                              push   edi
  00441fea: ff 15 40 e3 4d 00                               call   DWORD PTR ds:0x4de340
  00441ff0: 55                                              push   ebp
  00441ff1: 8b ec                                           mov    ebp,esp
  00441ff3: 83 ec 2c                                        sub    esp,0x2c
  00441ff6: 56                                              push   esi
  00441ff7: e8 b4 00 00 00                                  call   0x4420b0
  00441ffc: 8b f0                                           mov    esi,eax
  00441ffe: 8a 46 20                                        mov    al,BYTE PTR [esi+0x20]
  00442001: 84 c0                                           test   al,al
  00442003: 75 12                                           jne    0x442017
  00442005: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00442008: 50                                              push   eax
  00442009: ff 15 94 e2 4d 00                               call   DWORD PTR ds:0x4de294
  0044200f: 83 c4 04                                        add    esp,0x4
  00442012: 5e                                              pop    esi
  00442013: 8b e5                                           mov    esp,ebp
  00442015: 5d                                              pop    ebp
  00442016: c3                                              ret
  00442017: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0044201a: 6a 0a                                           push   0xa
  0044201c: 51                                              push   ecx
  0044201d: e8 ae 0b 02 00                                  call   0x462bd0
  00442022: 83 c4 08                                        add    esp,0x8
  00442025: 8d 56 08                                        lea    edx,[esi+0x8]
  00442028: 52                                              push   edx
  00442029: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  0044202c: e8 4f 76 fc ff                                  call   0x409680
  00442031: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00442034: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  00442037: 50                                              push   eax
  00442038: 51                                              push   ecx
  00442039: 8b ce                                           mov    ecx,esi
  0044203b: e8 a0 02 00 00                                  call   0x4422e0
  00442040: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00442043: 8b f0                                           mov    esi,eax
  00442045: e8 56 76 fc ff                                  call   0x4096a0
  0044204a: 8b c6                                           mov    eax,esi
  0044204c: 5e                                              pop    esi
  0044204d: 8b e5                                           mov    esp,ebp
  0044204f: 5d                                              pop    ebp
  00442050: c3                                              ret
  004449d2: b9 01 00 00 00                                  mov    ecx,0x1
  004449d7: 89 4d c4                                        mov    DWORD PTR [ebp-0x3c],ecx
  004449da: 3b c7                                           cmp    eax,edi
  004449dc: 0f 84 9e 01 00 00                               je     0x444b80
  004449e2: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004449e5: 39 79 04                                        cmp    DWORD PTR [ecx+0x4],edi
  004449e8: 0f 84 db 00 00 00                               je     0x444ac9
  004449ee: 8b c1                                           mov    eax,ecx
  004449f0: 8b 18                                           mov    ebx,DWORD PTR [eax]
  004449f2: 8b c3                                           mov    eax,ebx
  004449f4: 8b 30                                           mov    esi,DWORD PTR [eax]
  004449f6: 8b cb                                           mov    ecx,ebx
  004449f8: 8b fb                                           mov    edi,ebx
  004449fa: 89 4d ec                                        mov    DWORD PTR [ebp-0x14],ecx
  004449fd: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  00444a00: e8 5b 90 ff ff                                  call   0x43da60
  00444a05: 8d 95 c8 fe ff ff                               lea    edx,[ebp-0x138]
  00444a0b: 8b cb                                           mov    ecx,ebx
  00444a0d: 50                                              push   eax
  00444a0e: 52                                              push   edx
  00444a0f: ff 56 48                                        call   DWORD PTR [esi+0x48]
  00444a12: 8b 00                                           mov    eax,DWORD PTR [eax]
  00444a14: 8b 4d a4                                        mov    ecx,DWORD PTR [ebp-0x5c]
  00444a17: 8b 71 08                                        mov    esi,DWORD PTR [ecx+0x8]
  00444a1a: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00444a1c: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  00444a1f: 8d 85 84 fd ff ff                               lea    eax,[ebp-0x27c]
  00444a25: 50                                              push   eax
  00444a26: 8b cb                                           mov    ecx,ebx
  00444a28: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  00444a2c: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00444a2f: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00444a32: 8b 17                                           mov    edx,DWORD PTR [edi]
  00444a34: 51                                              push   ecx
  00444a35: 8d 85 90 fd ff ff                               lea    eax,[ebp-0x270]
  00444a3b: 50                                              push   eax
  00444a3c: 8b cf                                           mov    ecx,edi
  00444a3e: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00444a41: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00444a44: 51                                              push   ecx
  00444a45: 8b cb                                           mov    ecx,ebx
  00444a47: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00444a49: 8d 85 6c fd ff ff                               lea    eax,[ebp-0x294]
  00444a4f: 50                                              push   eax
  00444a50: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  00444a53: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00444a55: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  00444a58: 51                                              push   ecx
  00444a59: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00444a5b: 52                                              push   edx
  00444a5c: e8 0f 6c 04 00                                  call   0x48b670
  00444a61: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00444a63: 0f be c0                                        movsx  eax,al
  00444a66: 50                                              push   eax
  00444a67: 51                                              push   ecx
  00444a68: e8 93 6c 04 00                                  call   0x48b700
  00444a6d: 50                                              push   eax
  00444a6e: 68 2c 4e 50 00                                  push   0x504e2c
  00444a73: 68 00 04 00 00                                  push   0x400
  00444a78: e8 c3 d2 02 00                                  call   0x471d40
  00444a7d: 83 c4 24                                        add    esp,0x24
  00444a80: 8d 8d c8 fe ff ff                               lea    ecx,[ebp-0x138]
  00444a86: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00444a8a: e8 b1 cf 08 00                                  call   0x4d1a40
  00444a8f: 8b 55 a4                                        mov    edx,DWORD PTR [ebp-0x5c]
  00444a92: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00444a95: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00444a97: 8b 51 30                                        mov    edx,DWORD PTR [ecx+0x30]
  00444a9a: 83 c1 30                                        add    ecx,0x30
  00444a9d: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00444aa0: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00444aa3: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00444aa6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00444aa8: 8b 51 30                                        mov    edx,DWORD PTR [ecx+0x30]
  00444aab: 83 c1 30                                        add    ecx,0x30
  00444aae: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00444ab1: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00444ab4: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00444ab7: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00444ab9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00444abb: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  00444ac1: 8b 55 a8                                        mov    edx,DWORD PTR [ebp-0x58]
  00444ac4: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00444ac7: 33 ff                                           xor    edi,edi
  00444ac9: 8b 5d bc                                        mov    ebx,DWORD PTR [ebp-0x44]
  00444acc: 8b 4d ac                                        mov    ecx,DWORD PTR [ebp-0x54]
  00444acf: 4b                                              dec    ebx
  00444ad0: 3b c1                                           cmp    eax,ecx
  00444ad2: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  00444ad5: 89 5d bc                                        mov    DWORD PTR [ebp-0x44],ebx
  00444ad8: 74 38                                           je     0x444b12
  00444ada: 3b c2                                           cmp    eax,edx
  00444adc: 74 54                                           je     0x444b32
  00444ade: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00444ae0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00444ae3: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00444ae6: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00444ae9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00444aec: 8b 10                                           mov    edx,DWORD PTR [eax]
  00444aee: 89 11                                           mov    DWORD PTR [ecx],edx
  00444af0: 8b 45 c4                                        mov    eax,DWORD PTR [ebp-0x3c]
  00444af3: 83 f8 01                                        cmp    eax,0x1
  00444af6: 75 0b                                           jne    0x444b03
  00444af8: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00444afb: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00444afe: 89 4d a4                                        mov    DWORD PTR [ebp-0x5c],ecx
  00444b01: eb 57                                           jmp    0x444b5a
  00444b03: 83 f8 02                                        cmp    eax,0x2
  00444b06: 75 52                                           jne    0x444b5a
  00444b08: 8b 55 a4                                        mov    edx,DWORD PTR [ebp-0x5c]
  00444b0b: 8b 02                                           mov    eax,DWORD PTR [edx]
  00444b0d: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00444b10: eb 48                                           jmp    0x444b5a
  00444b12: 3b c2                                           cmp    eax,edx
  00444b14: 74 1c                                           je     0x444b32
  00444b16: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00444b19: 89 39                                           mov    DWORD PTR [ecx],edi
  00444b1b: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00444b1e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00444b21: 89 55 ac                                        mov    DWORD PTR [ebp-0x54],edx
  00444b24: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00444b27: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00444b2a: 83 7d c4 02                                     cmp    DWORD PTR [ebp-0x3c],0x2
  00444b2e: 75 2a                                           jne    0x444b5a
  00444b30: eb 25                                           jmp    0x444b57
  00444b32: 3b c1                                           cmp    eax,ecx
  00444b34: 74 18                                           je     0x444b4e
  00444b36: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00444b38: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00444b3b: 8b 55 a4                                        mov    edx,DWORD PTR [ebp-0x5c]
  00444b3e: 8b 02                                           mov    eax,DWORD PTR [edx]
  00444b40: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00444b43: 89 45 a8                                        mov    DWORD PTR [ebp-0x58],eax
  00444b46: 83 7d c4 01                                     cmp    DWORD PTR [ebp-0x3c],0x1
  00444b4a: 75 0e                                           jne    0x444b5a
  00444b4c: eb 09                                           jmp    0x444b57
  00444b4e: 89 7d a4                                        mov    DWORD PTR [ebp-0x5c],edi
  00444b51: 89 7d a8                                        mov    DWORD PTR [ebp-0x58],edi
  00444b54: 89 7d ac                                        mov    DWORD PTR [ebp-0x54],edi
  00444b57: 89 7d c4                                        mov    DWORD PTR [ebp-0x3c],edi
  00444b5a: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  00444b5d: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00444b60: 51                                              push   ecx
  00444b61: e8 fa d4 ff ff                                  call   0x442060
  00444b66: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  00444b69: 52                                              push   edx
  00444b6a: e8 f1 d4 ff ff                                  call   0x442060
  00444b6f: 8b 55 a8                                        mov    edx,DWORD PTR [ebp-0x58]
  00444b72: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00444b75: 8b 4d c4                                        mov    ecx,DWORD PTR [ebp-0x3c]
  00444b78: 83 c4 08                                        add    esp,0x8
  00444b7b: e9 a7 e4 ff ff                                  jmp    0x443027
  00444b80: 3b cf                                           cmp    ecx,edi
  00444b82: 74 04                                           je     0x444b88
  00444b84: c6 45 b8 07                                     mov    BYTE PTR [ebp-0x48],0x7
  00444b88: 89 7d c4                                        mov    DWORD PTR [ebp-0x3c],edi
  00444b8b: 50                                              push   eax
  00444b8c: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00444b8f: 89 85 f0 fe ff ff                               mov    DWORD PTR [ebp-0x110],eax
  00444b95: 58                                              pop    eax
  00444b96: e8 65 f6 fe ff                                  call   0x434200
  00444b9b: 8b 10                                           mov    edx,DWORD PTR [eax]
  00444b9d: 8d 8d 38 ff ff ff                               lea    ecx,[ebp-0xc8]
  00444ba3: 51                                              push   ecx
  00444ba4: 8b 8d f0 fe ff ff                               mov    ecx,DWORD PTR [ebp-0x110]
  00444baa: 68 a0 43 51 00                                  push   0x5143a0
  00444baf: 51                                              push   ecx
  00444bb0: 8b c8                                           mov    ecx,eax
  00444bb2: ff 12                                           call   DWORD PTR [edx]
  00444bb4: 68 a8 43 51 00                                  push   0x5143a8
  00444bb9: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00444bbf: e8 3c f6 fe ff                                  call   0x434200
  00444bc4: 8b 10                                           mov    edx,DWORD PTR [eax]
  00444bc6: 68 a4 43 51 00                                  push   0x5143a4
  00444bcb: 8d 8d 38 ff ff ff                               lea    ecx,[ebp-0xc8]
  00444bd1: 51                                              push   ecx
  00444bd2: 8b c8                                           mov    ecx,eax
  00444bd4: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00444bd7: a1 c4 43 51 00                                  mov    eax,ds:0x5143c4
  00444bdc: 33 c9                                           xor    ecx,ecx
  00444bde: a3 c0 43 51 00                                  mov    ds:0x5143c0,eax
  00444be3: 89 0d e0 43 51 00                               mov    DWORD PTR ds:0x5143e0,ecx
  00444be9: c6 05 d4 43 51 00 08                            mov    BYTE PTR ds:0x5143d4,0x8
  00444bf0: bb 02 00 00 00                                  mov    ebx,0x2
  00444bf5: 3b cf                                           cmp    ecx,edi
  00444bf7: 74 09                                           je     0x444c02
  00444bf9: 8b 00                                           mov    eax,DWORD PTR [eax]
  00444bfb: a3 c0 43 51 00                                  mov    ds:0x5143c0,eax
  00444c00: eb 0b                                           jmp    0x444c0d
  00444c02: b9 01 00 00 00                                  mov    ecx,0x1
  00444c07: 89 0d e0 43 51 00                               mov    DWORD PTR ds:0x5143e0,ecx
  00444c0d: 3b c7                                           cmp    eax,edi
  00444c0f: 0f 84 86 01 00 00                               je     0x444d9b
  00444c15: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  00444c18: 52                                              push   edx
  00444c19: e8 12 4b 04 00                                  call   0x489730
  00444c1e: a1 c0 43 51 00                                  mov    eax,ds:0x5143c0
  00444c23: 8b 70 08                                        mov    esi,DWORD PTR [eax+0x8]
  00444c26: 8b 45 ac                                        mov    eax,DWORD PTR [ebp-0x54]
  00444c29: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  00444c2c: 83 c4 04                                        add    esp,0x4
  00444c2f: 42                                              inc    edx
  00444c30: 3b c7                                           cmp    eax,edi
  00444c32: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00444c35: 89 7d c4                                        mov    DWORD PTR [ebp-0x3c],edi
  00444c38: c6 45 b8 08                                     mov    BYTE PTR [ebp-0x48],0x8
  00444c3c: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  00444c3f: 89 55 bc                                        mov    DWORD PTR [ebp-0x44],edx
  00444c42: 6a 0c                                           push   0xc
  00444c44: 75 28                                           jne    0x444c6e
  00444c46: e8 a5 d3 ff ff                                  call   0x441ff0
  00444c4b: 83 c4 04                                        add    esp,0x4
  00444c4e: 3b c7                                           cmp    eax,edi
  00444c50: 74 07                                           je     0x444c59
  00444c52: 89 38                                           mov    DWORD PTR [eax],edi
  00444c54: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00444c57: eb 02                                           jmp    0x444c5b
  00444c59: 33 c0                                           xor    eax,eax
  00444c5b: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00444c5e: 89 45 ac                                        mov    DWORD PTR [ebp-0x54],eax
  00444c61: 89 45 a8                                        mov    DWORD PTR [ebp-0x58],eax
  00444c64: 89 38                                           mov    DWORD PTR [eax],edi
  00444c66: 8b 4d a4                                        mov    ecx,DWORD PTR [ebp-0x5c]
  00444c69: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00444c6c: eb 2b                                           jmp    0x444c99
  00444c6e: e8 7d d3 ff ff                                  call   0x441ff0
  00444c73: 83 c4 04                                        add    esp,0x4
  00444c76: 3b c7                                           cmp    eax,edi
  00444c78: 74 07                                           je     0x444c81
  00444c7a: 89 38                                           mov    DWORD PTR [eax],edi
  00444c7c: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00444c7f: eb 02                                           jmp    0x444c83
  00444c81: 33 c0                                           xor    eax,eax
  00444c83: 8b 55 a4                                        mov    edx,DWORD PTR [ebp-0x5c]
  00444c86: 89 02                                           mov    DWORD PTR [edx],eax
  00444c88: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  00444c8b: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00444c8e: 89 45 ac                                        mov    DWORD PTR [ebp-0x54],eax
  00444c91: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00444c94: 8b 55 a4                                        mov    edx,DWORD PTR [ebp-0x5c]
  00444c97: 89 3a                                           mov    DWORD PTR [edx],edi
  00444c99: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00444c9c: 89 70 08                                        mov    DWORD PTR [eax+0x8],esi
  00444c9f: 8b 35 d8 43 51 00                               mov    esi,DWORD PTR ds:0x5143d8
  00444ca5: a1 c0 43 51 00                                  mov    eax,ds:0x5143c0
  00444caa: 8b 0d c8 43 51 00                               mov    ecx,DWORD PTR ds:0x5143c8
  00444cb0: 8b 15 c4 43 51 00                               mov    edx,DWORD PTR ds:0x5143c4
  00444cb6: 4e                                              dec    esi
  00444cb7: 3b c1                                           cmp    eax,ecx
  00444cb9: a3 cc 43 51 00                                  mov    ds:0x5143cc,eax
  00444cbe: 89 35 d8 43 51 00                               mov    DWORD PTR ds:0x5143d8,esi
  00444cc4: 74 48                                           je     0x444d0e
  00444cc6: 3b c2                                           cmp    eax,edx
  00444cc8: 74 44                                           je     0x444d0e
  00444cca: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00444ccc: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00444ccf: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00444cd2: a1 c0 43 51 00                                  mov    eax,ds:0x5143c0
  00444cd7: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00444cda: 8b 10                                           mov    edx,DWORD PTR [eax]
  00444cdc: 89 11                                           mov    DWORD PTR [ecx],edx
  00444cde: a1 e0 43 51 00                                  mov    eax,ds:0x5143e0
  00444ce3: 83 f8 01                                        cmp    eax,0x1
  00444ce6: 75 13                                           jne    0x444cfb
  00444ce8: a1 c0 43 51 00                                  mov    eax,ds:0x5143c0
  00444ced: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00444cf0: 89 0d c0 43 51 00                               mov    DWORD PTR ds:0x5143c0,ecx
  00444cf6: e9 82 00 00 00                                  jmp    0x444d7d
  00444cfb: 3b c3                                           cmp    eax,ebx
  00444cfd: 75 7e                                           jne    0x444d7d
  00444cff: 8b 15 c0 43 51 00                               mov    edx,DWORD PTR ds:0x5143c0
  00444d05: 8b 02                                           mov    eax,DWORD PTR [edx]
  00444d07: a3 c0 43 51 00                                  mov    ds:0x5143c0,eax
  00444d0c: eb 6f                                           jmp    0x444d7d
  00444d0e: 3b c1                                           cmp    eax,ecx
  00444d10: 75 29                                           jne    0x444d3b
  00444d12: 3b c2                                           cmp    eax,edx
  00444d14: 74 29                                           je     0x444d3f
  00444d16: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00444d19: 89 39                                           mov    DWORD PTR [ecx],edi
  00444d1b: a1 c0 43 51 00                                  mov    eax,ds:0x5143c0
  00444d20: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00444d23: 89 15 c8 43 51 00                               mov    DWORD PTR ds:0x5143c8,edx
  00444d29: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00444d2c: a3 c0 43 51 00                                  mov    ds:0x5143c0,eax
  00444d31: 39 1d e0 43 51 00                               cmp    DWORD PTR ds:0x5143e0,ebx
  00444d37: 75 44                                           jne    0x444d7d
  00444d39: eb 3c                                           jmp    0x444d77
  00444d3b: 3b c2                                           cmp    eax,edx
  00444d3d: 75 26                                           jne    0x444d65
  00444d3f: 3b c1                                           cmp    eax,ecx
  00444d41: 74 22                                           je     0x444d65
  00444d43: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00444d45: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  00444d48: 8b 15 c0 43 51 00                               mov    edx,DWORD PTR ds:0x5143c0
  00444d4e: 8b 02                                           mov    eax,DWORD PTR [edx]
  00444d50: a3 c0 43 51 00                                  mov    ds:0x5143c0,eax
  00444d55: a3 c4 43 51 00                                  mov    ds:0x5143c4,eax
  00444d5a: 83 3d e0 43 51 00 01                            cmp    DWORD PTR ds:0x5143e0,0x1
  00444d61: 75 1a                                           jne    0x444d7d
  00444d63: eb 12                                           jmp    0x444d77
  00444d65: 89 3d c0 43 51 00                               mov    DWORD PTR ds:0x5143c0,edi
  00444d6b: 89 3d c4 43 51 00                               mov    DWORD PTR ds:0x5143c4,edi
  00444d71: 89 3d c8 43 51 00                               mov    DWORD PTR ds:0x5143c8,edi
  00444d77: 89 3d e0 43 51 00                               mov    DWORD PTR ds:0x5143e0,edi
  00444d7d: a1 cc 43 51 00                                  mov    eax,ds:0x5143cc
  00444d82: 50                                              push   eax
  00444d83: e8 d8 d2 ff ff                                  call   0x442060
  00444d88: a1 c0 43 51 00                                  mov    eax,ds:0x5143c0
  00444d8d: 8b 0d e0 43 51 00                               mov    ecx,DWORD PTR ds:0x5143e0
  00444d93: 83 c4 04                                        add    esp,0x4
  00444d96: e9 5a fe ff ff                                  jmp    0x444bf5
  00444d9b: 3b cf                                           cmp    ecx,edi
  00444d9d: 74 07                                           je     0x444da6
  00444d9f: c6 05 d4 43 51 00 07                            mov    BYTE PTR ds:0x5143d4,0x7
  00444da6: c7 05 e0 43 51 00 00 00 00 00                   mov    DWORD PTR ds:0x5143e0,0x0
  00444db0: e8 4b f4 fe ff                                  call   0x434200
  00444db5: 8b 10                                           mov    edx,DWORD PTR [eax]
  00444db7: 68 a4 43 51 00                                  push   0x5143a4
  00444dbc: 8b c8                                           mov    ecx,eax
  00444dbe: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00444dc1: 68 a8 43 51 00                                  push   0x5143a8
  00444dc6: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00444dcc: 8d 8d 50 fe ff ff                               lea    ecx,[ebp-0x1b0]
  00444dd2: e8 d9 eb fe ff                                  call   0x4339b0
  00444dd7: e8 64 92 00 00                                  call   0x44e040
  00444ddc: e8 cf 49 04 00                                  call   0x4897b0
  00444de1: 6a 14                                           push   0x14
  00444de3: ff 15 20 e1 4d 00                               call   DWORD PTR ds:0x4de120
  00444de9: 8b 1d f8 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0f8
  00444def: 8b b5 c4 fe ff ff                               mov    esi,DWORD PTR [ebp-0x13c]
  00444df5: 33 ff                                           xor    edi,edi
  00444df7: e9 9c da ff ff                                  jmp    0x442898
  004454f0: 56                                              push   esi
  004454f1: 8b f1                                           mov    esi,ecx
  004454f3: 8d 46 08                                        lea    eax,[esi+0x8]
  004454f6: 50                                              push   eax
  004454f7: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004454fd: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00445504: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044550a: 33 c0                                           xor    eax,eax
  0044550c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0044550f: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00445512: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00445515: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  00445518: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  0044551b: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  0044551e: c7 06 38 f1 4d 00                               mov    DWORD PTR [esi],0x4df138
  00445524: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00445528: 8b c6                                           mov    eax,esi
  0044552a: 5e                                              pop    esi
  0044552b: c3                                              ret
  00445680: 56                                              push   esi
  00445681: 8b f1                                           mov    esi,ecx
  00445683: 8d 46 08                                        lea    eax,[esi+0x8]
  00445686: 50                                              push   eax
  00445687: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0044568d: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00445694: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044569a: 33 c0                                           xor    eax,eax
  0044569c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0044569f: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004456a2: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004456a5: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004456a8: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  004456ab: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  004456ae: c7 06 48 f1 4d 00                               mov    DWORD PTR [esi],0x4df148
  004456b4: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004456b8: 8b c6                                           mov    eax,esi
  004456ba: 5e                                              pop    esi
  004456bb: c3                                              ret
  004639f0: 56                                              push   esi
  004639f1: 8b f1                                           mov    esi,ecx
  004639f3: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004639f6: 85 c0                                           test   eax,eax
  004639f8: 74 1c                                           je     0x463a16
  004639fa: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004639fd: 8a 01                                           mov    al,BYTE PTR [ecx]
  004639ff: 84 c0                                           test   al,al
  00463a01: 74 0a                                           je     0x463a0d
  00463a03: 3c ff                                           cmp    al,0xff
  00463a05: 74 06                                           je     0x463a0d
  00463a07: fe c8                                           dec    al
  00463a09: 88 01                                           mov    BYTE PTR [ecx],al
  00463a0b: eb 09                                           jmp    0x463a16
  00463a0d: 51                                              push   ecx
  00463a0e: e8 4d e6 fd ff                                  call   0x442060
  00463a13: 83 c4 04                                        add    esp,0x4
  00463a16: c7 46 10 00 00 00 00                            mov    DWORD PTR [esi+0x10],0x0
  00463a1d: c7 46 14 00 00 00 00                            mov    DWORD PTR [esi+0x14],0x0
  00463a24: c7 46 18 00 00 00 00                            mov    DWORD PTR [esi+0x18],0x0
  00463a2b: 5e                                              pop    esi
  00463a2c: c3                                              ret
  00471290: 56                                              push   esi
  00471291: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00471293: 85 f6                                           test   esi,esi
  00471295: 74 10                                           je     0x4712a7
  00471297: 8b ce                                           mov    ecx,esi
  00471299: e8 22 00 00 00                                  call   0x4712c0
  0047129e: 56                                              push   esi
  0047129f: e8 bc 0d fd ff                                  call   0x442060
  004712a4: 83 c4 04                                        add    esp,0x4
  004712a7: 5e                                              pop    esi
  004712a8: c3                                              ret
  00473130: 56                                              push   esi
  00473131: 8b f1                                           mov    esi,ecx
  00473133: 8d 46 08                                        lea    eax,[esi+0x8]
  00473136: 50                                              push   eax
  00473137: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0047313d: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00473144: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0047314a: 33 c0                                           xor    eax,eax
  0047314c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0047314f: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00473152: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00473155: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  00473158: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  0047315b: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  0047315e: c7 06 64 f5 4d 00                               mov    DWORD PTR [esi],0x4df564
  00473164: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00473168: 8b c6                                           mov    eax,esi
  0047316a: 5e                                              pop    esi
  0047316b: c3                                              ret
  00476ed0: 53                                              push   ebx
  00476ed1: 56                                              push   esi
  00476ed2: 57                                              push   edi
  00476ed3: 8b f9                                           mov    edi,ecx
  00476ed5: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00476ed8: 85 db                                           test   ebx,ebx
  00476eda: 75 04                                           jne    0x476ee0
  00476edc: 33 f6                                           xor    esi,esi
  00476ede: eb 02                                           jmp    0x476ee2
  00476ee0: 8b 33                                           mov    esi,DWORD PTR [ebx]
  00476ee2: 3b f3                                           cmp    esi,ebx
  00476ee4: 74 27                                           je     0x476f0d
  00476ee6: 8b c6                                           mov    eax,esi
  00476ee8: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00476eeb: 8b 10                                           mov    edx,DWORD PTR [eax]
  00476eed: 8b 36                                           mov    esi,DWORD PTR [esi]
  00476eef: 89 11                                           mov    DWORD PTR [ecx],edx
  00476ef1: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00476ef3: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00476ef6: 50                                              push   eax
  00476ef7: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00476efa: e8 61 b1 fc ff                                  call   0x442060
  00476eff: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00476f02: 83 c4 04                                        add    esp,0x4
  00476f05: 49                                              dec    ecx
  00476f06: 3b f3                                           cmp    esi,ebx
  00476f08: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  00476f0b: 75 d9                                           jne    0x476ee6
  00476f0d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00476f10: 50                                              push   eax
  00476f11: e8 4a b1 fc ff                                  call   0x442060
  00476f16: 83 c4 04                                        add    esp,0x4
  00476f19: 33 c0                                           xor    eax,eax
  00476f1b: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00476f1e: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  00476f21: 5f                                              pop    edi
  00476f22: 5e                                              pop    esi
  00476f23: 5b                                              pop    ebx
  00476f24: c3                                              ret
  0047b2b0: 56                                              push   esi
  0047b2b1: 8b f1                                           mov    esi,ecx
  0047b2b3: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  0047b2b5: 68 13 04 00 00                                  push   0x413
  0047b2ba: 68 18 ae 50 00                                  push   0x50ae18
  0047b2bf: e8 1c bd fd ff                                  call   0x456fe0
  0047b2c4: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0047b2c7: 85 f6                                           test   esi,esi
  0047b2c9: 74 10                                           je     0x47b2db
  0047b2cb: 8b ce                                           mov    ecx,esi
  0047b2cd: e8 0e 00 00 00                                  call   0x47b2e0
  0047b2d2: 56                                              push   esi
  0047b2d3: e8 88 6d fc ff                                  call   0x442060
  0047b2d8: 83 c4 04                                        add    esp,0x4
  0047b2db: 5e                                              pop    esi
  0047b2dc: c3                                              ret
  0047d2c5: 6a 01                                           push   0x1
  0047d2c7: 8d 8d 7c ff ff ff                               lea    ecx,[ebp-0x84]
  0047d2cd: e8 de 8e 00 00                                  call   0x4861b0
  0047d2d2: 68 58 13 51 00                                  push   0x511358
  0047d2d7: e8 84 07 fc ff                                  call   0x43da60
  0047d2dc: 50                                              push   eax
  0047d2dd: 68 cd 01 00 00                                  push   0x1cd
  0047d2e2: e8 09 07 fc ff                                  call   0x43d9f0
  0047d2e7: 83 c4 0c                                        add    esp,0xc
  0047d2ea: 50                                              push   eax
  0047d2eb: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0047d2ee: e8 65 47 05 00                                  call   0x4d1a58
  0047d2f3: eb 07                                           jmp    0x47d2fc
  0047d2fc: 8b 55 d0                                        mov    edx,DWORD PTR [ebp-0x30]
  0047d2ff: 83 c2 10                                        add    edx,0x10
  0047d302: 52                                              push   edx
  0047d303: e8 28 b6 fd ff                                  call   0x458930
  0047d308: 83 c4 04                                        add    esp,0x4
  0047d30b: 8d 4d 94                                        lea    ecx,[ebp-0x6c]
  0047d30e: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0047d312: e8 29 47 05 00                                  call   0x4d1a40
  0047d317: 8b 45 a8                                        mov    eax,DWORD PTR [ebp-0x58]
  0047d31a: 85 c0                                           test   eax,eax
  0047d31c: 74 5d                                           je     0x47d37b
  0047d31e: 8d 45 e8                                        lea    eax,[ebp-0x18]
  0047d321: 50                                              push   eax
  0047d322: 8d 8d 7c ff ff ff                               lea    ecx,[ebp-0x84]
  0047d328: e8 23 90 00 00                                  call   0x486350
  0047d32d: 6a 01                                           push   0x1
  0047d32f: 6a 00                                           push   0x0
  0047d331: 6a 00                                           push   0x0
  0047d333: 83 c9 ff                                        or     ecx,0xffffffff
  0047d336: 83 ec 0c                                        sub    esp,0xc
  0047d339: 83 c8 ff                                        or     eax,0xffffffff
  0047d33c: 8b f4                                           mov    esi,esp
  0047d33e: 89 06                                           mov    DWORD PTR [esi],eax
  0047d340: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0047d343: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0047d346: 83 ca ff                                        or     edx,0xffffffff
  0047d349: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0047d34c: 83 c1 14                                        add    ecx,0x14
  0047d34f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0047d351: 6a ff                                           push   0xffffffff
  0047d353: 83 ec 10                                        sub    esp,0x10
  0047d356: 8b d4                                           mov    edx,esp
  0047d358: 89 02                                           mov    DWORD PTR [edx],eax
  0047d35a: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0047d35d: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0047d360: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0047d363: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  0047d366: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0047d369: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  0047d36c: 8d 95 7c ff ff ff                               lea    edx,[ebp-0x84]
  0047d372: 52                                              push   edx
  0047d373: e8 08 40 fd ff                                  call   0x451380
  0047d378: 83 c4 30                                        add    esp,0x30
  0047d37b: 8b 75 d0                                        mov    esi,DWORD PTR [ebp-0x30]
  0047d37e: 85 f6                                           test   esi,esi
  0047d380: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0047d383: 74 21                                           je     0x47d3a6
  0047d385: 8d 4e 10                                        lea    ecx,[esi+0x10]
  0047d388: c6 45 fc 16                                     mov    BYTE PTR [ebp-0x4],0x16
  0047d38c: e8 af 46 05 00                                  call   0x4d1a40
  0047d391: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  0047d394: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0047d398: e8 a3 46 05 00                                  call   0x4d1a40
  0047d39d: 56                                              push   esi
  0047d39e: e8 bd 4c fc ff                                  call   0x442060
  0047d3a3: 83 c4 04                                        add    esp,0x4
  0047d3a6: 8d 8d 7c ff ff ff                               lea    ecx,[ebp-0x84]
  0047d3ac: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0047d3b0: e8 cb 8a 00 00                                  call   0x485e80
  0047d3b5: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0047d3b8: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0047d3bf: e8 7c 46 05 00                                  call   0x4d1a40
  0047d3c4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0047d3c7: 5f                                              pop    edi
  0047d3c8: 5e                                              pop    esi
  0047d3c9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0047d3d0: 5b                                              pop    ebx
  0047d3d1: 8b e5                                           mov    esp,ebp
  0047d3d3: 5d                                              pop    ebp
  0047d3d4: c3                                              ret
  00485110: 53                                              push   ebx
  00485111: 56                                              push   esi
  00485112: 57                                              push   edi
  00485113: 8b f9                                           mov    edi,ecx
  00485115: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00485118: 85 db                                           test   ebx,ebx
  0048511a: 75 04                                           jne    0x485120
  0048511c: 33 f6                                           xor    esi,esi
  0048511e: eb 02                                           jmp    0x485122
  00485120: 8b 33                                           mov    esi,DWORD PTR [ebx]
  00485122: 3b f3                                           cmp    esi,ebx
  00485124: 74 27                                           je     0x48514d
  00485126: 8b c6                                           mov    eax,esi
  00485128: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048512b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0048512d: 8b 36                                           mov    esi,DWORD PTR [esi]
  0048512f: 89 11                                           mov    DWORD PTR [ecx],edx
  00485131: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00485133: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00485136: 50                                              push   eax
  00485137: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0048513a: e8 21 cf fb ff                                  call   0x442060
  0048513f: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  00485142: 83 c4 04                                        add    esp,0x4
  00485145: 49                                              dec    ecx
  00485146: 3b f3                                           cmp    esi,ebx
  00485148: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  0048514b: 75 d9                                           jne    0x485126
  0048514d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00485150: 50                                              push   eax
  00485151: e8 0a cf fb ff                                  call   0x442060
  00485156: 83 c4 04                                        add    esp,0x4
  00485159: 33 c0                                           xor    eax,eax
  0048515b: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  0048515e: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  00485161: 5f                                              pop    edi
  00485162: 5e                                              pop    esi
  00485163: 5b                                              pop    ebx
  00485164: c3                                              ret
  00485790: 56                                              push   esi
  00485791: 8b f1                                           mov    esi,ecx
  00485793: 8d 46 08                                        lea    eax,[esi+0x8]
  00485796: 50                                              push   eax
  00485797: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0048579d: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  004857a4: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004857aa: 33 c0                                           xor    eax,eax
  004857ac: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004857af: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004857b2: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004857b5: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004857b8: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  004857bb: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  004857be: c7 06 18 f6 4d 00                               mov    DWORD PTR [esi],0x4df618
  004857c4: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004857c8: 8b c6                                           mov    eax,esi
  004857ca: 5e                                              pop    esi
  004857cb: c3                                              ret
  00486ab0: 55                                              push   ebp
  00486ab1: 8b ec                                           mov    ebp,esp
  00486ab3: 51                                              push   ecx
  00486ab4: 56                                              push   esi
  00486ab5: 8b f1                                           mov    esi,ecx
  00486ab7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00486aba: 85 c0                                           test   eax,eax
  00486abc: 74 0c                                           je     0x486aca
  00486abe: 50                                              push   eax
  00486abf: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00486ac2: e8 99 b5 fb ff                                  call   0x442060
  00486ac7: 83 c4 04                                        add    esp,0x4
  00486aca: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  00486ad1: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00486ad8: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  00486adf: 5e                                              pop    esi
  00486ae0: 8b e5                                           mov    esp,ebp
  00486ae2: 5d                                              pop    ebp
  00486ae3: c3                                              ret
  00487700: 83 c1 04                                        add    ecx,0x4
  00487703: e9 38 a3 04 00                                  jmp    0x4d1a40
  00490160: 56                                              push   esi
  00490161: 8b f1                                           mov    esi,ecx
  00490163: 8d 46 08                                        lea    eax,[esi+0x8]
  00490166: 50                                              push   eax
  00490167: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  0049016d: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00490174: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0049017a: 33 c0                                           xor    eax,eax
  0049017c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  0049017f: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00490182: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  00490185: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  00490188: 89 46 40                                        mov    DWORD PTR [esi+0x40],eax
  0049018b: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  0049018e: c7 06 4c f8 4d 00                               mov    DWORD PTR [esi],0x4df84c
  00490194: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  00490198: 8b c6                                           mov    eax,esi
  0049019a: 5e                                              pop    esi
  0049019b: c3                                              ret
  004924a0: 55                                              push   ebp
  004924a1: 8b ec                                           mov    ebp,esp
  004924a3: 51                                              push   ecx
  004924a4: 56                                              push   esi
  004924a5: 8b f1                                           mov    esi,ecx
  004924a7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004924aa: 85 c0                                           test   eax,eax
  004924ac: 74 0c                                           je     0x4924ba
  004924ae: 50                                              push   eax
  004924af: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004924b2: e8 a9 fb fa ff                                  call   0x442060
  004924b7: 83 c4 04                                        add    esp,0x4
  004924ba: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  004924c1: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004924c8: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  004924cf: 5e                                              pop    esi
  004924d0: 8b e5                                           mov    esp,ebp
  004924d2: 5d                                              pop    ebp
  004924d3: c3                                              ret
  00499dd0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00499dd2: 50                                              push   eax
  00499dd3: e8 88 82 fa ff                                  call   0x442060
  00499dd8: 59                                              pop    ecx
  00499dd9: c3                                              ret
  0049fb70: 53                                              push   ebx
  0049fb71: 8b d9                                           mov    ebx,ecx
  0049fb73: 56                                              push   esi
  0049fb74: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049fb77: 33 c0                                           xor    eax,eax
  0049fb79: 3b f0                                           cmp    esi,eax
  0049fb7b: 74 28                                           je     0x49fba5
  0049fb7d: 57                                              push   edi
  0049fb7e: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0049fb81: 3b f7                                           cmp    esi,edi
  0049fb83: 74 11                                           je     0x49fb96
  0049fb85: 8b ce                                           mov    ecx,esi
  0049fb87: e8 e4 e8 ff ff                                  call   0x49e470
  0049fb8c: 81 c6 10 01 00 00                               add    esi,0x110
  0049fb92: 3b f7                                           cmp    esi,edi
  0049fb94: 75 ef                                           jne    0x49fb85
  0049fb96: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049fb99: 50                                              push   eax
  0049fb9a: e8 c1 24 fa ff                                  call   0x442060
  0049fb9f: 83 c4 04                                        add    esp,0x4
  0049fba2: 33 c0                                           xor    eax,eax
  0049fba4: 5f                                              pop    edi
  0049fba5: 5e                                              pop    esi
  0049fba6: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049fba9: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049fbac: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  0049fbaf: 5b                                              pop    ebx
  0049fbb0: c3                                              ret
  004a7700: 53                                              push   ebx
  004a7701: 8b d9                                           mov    ebx,ecx
  004a7703: 56                                              push   esi
  004a7704: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004a7707: 85 f6                                           test   esi,esi
  004a7709: 74 24                                           je     0x4a772f
  004a770b: 57                                              push   edi
  004a770c: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004a770f: 3b f7                                           cmp    esi,edi
  004a7711: 74 0f                                           je     0x4a7722
  004a7713: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a7715: 6a 00                                           push   0x0
  004a7717: 8b ce                                           mov    ecx,esi
  004a7719: ff 10                                           call   DWORD PTR [eax]
  004a771b: 83 c6 2c                                        add    esi,0x2c
  004a771e: 3b f7                                           cmp    esi,edi
  004a7720: 75 f1                                           jne    0x4a7713
  004a7722: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a7725: 51                                              push   ecx
  004a7726: e8 35 a9 f9 ff                                  call   0x442060
  004a772b: 83 c4 04                                        add    esp,0x4
  004a772e: 5f                                              pop    edi
  004a772f: 33 c0                                           xor    eax,eax
  004a7731: 5e                                              pop    esi
  004a7732: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004a7735: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004a7738: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  004a773b: 5b                                              pop    ebx
  004a773c: c3                                              ret
  004b4b30: 55                                              push   ebp
  004b4b31: 8b ec                                           mov    ebp,esp
  004b4b33: 6a ff                                           push   0xffffffff
  004b4b35: 68 c3 c9 4d 00                                  push   0x4dc9c3
  004b4b3a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b4b40: 50                                              push   eax
  004b4b41: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b4b48: 51                                              push   ecx
  004b4b49: 53                                              push   ebx
  004b4b4a: 56                                              push   esi
  004b4b4b: 8b f1                                           mov    esi,ecx
  004b4b4d: 57                                              push   edi
  004b4b4e: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004b4b51: c7 06 20 fb 4d 00                               mov    DWORD PTR [esi],0x4dfb20
  004b4b57: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  004b4b5a: 85 c0                                           test   eax,eax
  004b4b5c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004b4b63: 75 04                                           jne    0x4b4b69
  004b4b65: 33 ff                                           xor    edi,edi
  004b4b67: eb 02                                           jmp    0x4b4b6b
  004b4b69: 8b 38                                           mov    edi,DWORD PTR [eax]
  004b4b6b: 3b 7e 2c                                        cmp    edi,DWORD PTR [esi+0x2c]
  004b4b6e: 74 1e                                           je     0x4b4b8e
  004b4b70: 8b 5f 08                                        mov    ebx,DWORD PTR [edi+0x8]
  004b4b73: 85 db                                           test   ebx,ebx
  004b4b75: 74 10                                           je     0x4b4b87
  004b4b77: 8b cb                                           mov    ecx,ebx
  004b4b79: e8 52 23 00 00                                  call   0x4b6ed0
  004b4b7e: 53                                              push   ebx
  004b4b7f: e8 dc d4 f8 ff                                  call   0x442060
  004b4b84: 83 c4 04                                        add    esp,0x4
  004b4b87: 8b 3f                                           mov    edi,DWORD PTR [edi]
  004b4b89: 3b 7e 2c                                        cmp    edi,DWORD PTR [esi+0x2c]
  004b4b8c: 75 e2                                           jne    0x4b4b70
  004b4b8e: 8b 5e 2c                                        mov    ebx,DWORD PTR [esi+0x2c]
  004b4b91: 85 db                                           test   ebx,ebx
  004b4b93: 75 04                                           jne    0x4b4b99
  004b4b95: 33 ff                                           xor    edi,edi
  004b4b97: eb 02                                           jmp    0x4b4b9b
  004b4b99: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004b4b9b: 3b fb                                           cmp    edi,ebx
  004b4b9d: 74 27                                           je     0x4b4bc6
  004b4b9f: 8b c7                                           mov    eax,edi
  004b4ba1: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004b4ba4: 8b 10                                           mov    edx,DWORD PTR [eax]
  004b4ba6: 8b 3f                                           mov    edi,DWORD PTR [edi]
  004b4ba8: 89 11                                           mov    DWORD PTR [ecx],edx
  004b4baa: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b4bac: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004b4baf: 50                                              push   eax
  004b4bb0: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004b4bb3: e8 a8 d4 f8 ff                                  call   0x442060
  004b4bb8: 8b 4e 30                                        mov    ecx,DWORD PTR [esi+0x30]
  004b4bbb: 83 c4 04                                        add    esp,0x4
  004b4bbe: 49                                              dec    ecx
  004b4bbf: 3b fb                                           cmp    edi,ebx
  004b4bc1: 89 4e 30                                        mov    DWORD PTR [esi+0x30],ecx
  004b4bc4: 75 d9                                           jne    0x4b4b9f
  004b4bc6: 8b 46 2c                                        mov    eax,DWORD PTR [esi+0x2c]
  004b4bc9: 50                                              push   eax
  004b4bca: e8 91 d4 f8 ff                                  call   0x442060
  004b4bcf: 33 c0                                           xor    eax,eax
  004b4bd1: 83 c4 04                                        add    esp,0x4
  004b4bd4: 8b ce                                           mov    ecx,esi
  004b4bd6: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004b4bd9: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004b4bdc: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004b4be3: e8 e8 22 00 00                                  call   0x4b6ed0
  004b4be8: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b4beb: 5f                                              pop    edi
  004b4bec: 5e                                              pop    esi
  004b4bed: 5b                                              pop    ebx
  004b4bee: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b4bf5: 8b e5                                           mov    esp,ebp
  004b4bf7: 5d                                              pop    ebp
  004b4bf8: c3                                              ret
  004b6670: 56                                              push   esi
  004b6671: 8b f1                                           mov    esi,ecx
  004b6673: 8b 46 38                                        mov    eax,DWORD PTR [esi+0x38]
  004b6676: 85 c0                                           test   eax,eax
  004b6678: 74 1c                                           je     0x4b6696
  004b667a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b667d: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b667f: 84 c0                                           test   al,al
  004b6681: 74 0a                                           je     0x4b668d
  004b6683: 3c ff                                           cmp    al,0xff
  004b6685: 74 06                                           je     0x4b668d
  004b6687: fe c8                                           dec    al
  004b6689: 88 01                                           mov    BYTE PTR [ecx],al
  004b668b: eb 09                                           jmp    0x4b6696
  004b668d: 51                                              push   ecx
  004b668e: e8 cd b9 f8 ff                                  call   0x442060
  004b6693: 83 c4 04                                        add    esp,0x4
  004b6696: 8b ce                                           mov    ecx,esi
  004b6698: c7 46 38 00 00 00 00                            mov    DWORD PTR [esi+0x38],0x0
  004b669f: c7 46 3c 00 00 00 00                            mov    DWORD PTR [esi+0x3c],0x0
  004b66a6: c7 46 40 00 00 00 00                            mov    DWORD PTR [esi+0x40],0x0
  004b66ad: e8 9e eb ff ff                                  call   0x4b5250
  004b66b2: 5e                                              pop    esi
  004b66b3: c3                                              ret
  004b6c60: 53                                              push   ebx
  004b6c61: 56                                              push   esi
  004b6c62: 57                                              push   edi
  004b6c63: 8b f9                                           mov    edi,ecx
  004b6c65: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  004b6c68: 85 db                                           test   ebx,ebx
  004b6c6a: 75 04                                           jne    0x4b6c70
  004b6c6c: 33 f6                                           xor    esi,esi
  004b6c6e: eb 02                                           jmp    0x4b6c72
  004b6c70: 8b 33                                           mov    esi,DWORD PTR [ebx]
  004b6c72: 3b f3                                           cmp    esi,ebx
  004b6c74: 74 27                                           je     0x4b6c9d
  004b6c76: 8b c6                                           mov    eax,esi
  004b6c78: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004b6c7b: 8b 10                                           mov    edx,DWORD PTR [eax]
  004b6c7d: 8b 36                                           mov    esi,DWORD PTR [esi]
  004b6c7f: 89 11                                           mov    DWORD PTR [ecx],edx
  004b6c81: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004b6c83: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004b6c86: 50                                              push   eax
  004b6c87: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004b6c8a: e8 d1 b3 f8 ff                                  call   0x442060
  004b6c8f: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004b6c92: 83 c4 04                                        add    esp,0x4
  004b6c95: 49                                              dec    ecx
  004b6c96: 3b f3                                           cmp    esi,ebx
  004b6c98: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004b6c9b: 75 d9                                           jne    0x4b6c76
  004b6c9d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004b6ca0: 50                                              push   eax
  004b6ca1: e8 ba b3 f8 ff                                  call   0x442060
  004b6ca6: 83 c4 04                                        add    esp,0x4
  004b6ca9: 33 c0                                           xor    eax,eax
  004b6cab: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004b6cae: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004b6cb1: 5f                                              pop    edi
  004b6cb2: 5e                                              pop    esi
  004b6cb3: 5b                                              pop    ebx
  004b6cb4: c3                                              ret
  004b8810: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b8815: 85 c0                                           test   eax,eax
  004b8817: 57                                              push   edi
  004b8818: 75 04                                           jne    0x4b881e
  004b881a: 33 ff                                           xor    edi,edi
  004b881c: eb 02                                           jmp    0x4b8820
  004b881e: 8b 38                                           mov    edi,DWORD PTR [eax]
  004b8820: 3b f8                                           cmp    edi,eax
  004b8822: 74 24                                           je     0x4b8848
  004b8824: 56                                              push   esi
  004b8825: 8b 77 08                                        mov    esi,DWORD PTR [edi+0x8]
  004b8828: 85 f6                                           test   esi,esi
  004b882a: 74 15                                           je     0x4b8841
  004b882c: 8b ce                                           mov    ecx,esi
  004b882e: e8 9d e6 ff ff                                  call   0x4b6ed0
  004b8833: 56                                              push   esi
  004b8834: e8 27 98 f8 ff                                  call   0x442060
  004b8839: a1 ac 64 55 00                                  mov    eax,ds:0x5564ac
  004b883e: 83 c4 04                                        add    esp,0x4
  004b8841: 8b 3f                                           mov    edi,DWORD PTR [edi]
  004b8843: 3b f8                                           cmp    edi,eax
  004b8845: 75 de                                           jne    0x4b8825
  004b8847: 5e                                              pop    esi
  004b8848: 5f                                              pop    edi
  004b8849: c3                                              ret
  004ba9e0: 55                                              push   ebp
  004ba9e1: 8b ec                                           mov    ebp,esp
  004ba9e3: 83 ec 08                                        sub    esp,0x8
  004ba9e6: 53                                              push   ebx
  004ba9e7: 56                                              push   esi
  004ba9e8: 8b f1                                           mov    esi,ecx
  004ba9ea: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ba9ed: 85 c9                                           test   ecx,ecx
  004ba9ef: 57                                              push   edi
  004ba9f0: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004ba9f3: 8b 07                                           mov    eax,DWORD PTR [edi]
  004ba9f5: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004ba9f8: 74 55                                           je     0x4baa4f
  004ba9fa: 8b c8                                           mov    ecx,eax
  004ba9fc: 3b c1                                           cmp    eax,ecx
  004ba9fe: 75 4f                                           jne    0x4baa4f
  004baa00: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  004baa03: 8a 43 21                                        mov    al,BYTE PTR [ebx+0x21]
  004baa06: 84 c0                                           test   al,al
  004baa08: 8b fb                                           mov    edi,ebx
  004baa0a: 75 29                                           jne    0x4baa35
  004baa0c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004baa0f: 50                                              push   eax
  004baa10: 8b ce                                           mov    ecx,esi
  004baa12: e8 89 12 00 00                                  call   0x4bbca0
  004baa17: 8b 3f                                           mov    edi,DWORD PTR [edi]
  004baa19: 6a 00                                           push   0x0
  004baa1b: 8d 4b 0c                                        lea    ecx,[ebx+0xc]
  004baa1e: e8 0d 18 00 00                                  call   0x4bc230
  004baa23: 53                                              push   ebx
  004baa24: e8 37 76 f8 ff                                  call   0x442060
  004baa29: 8a 47 21                                        mov    al,BYTE PTR [edi+0x21]
  004baa2c: 83 c4 04                                        add    esp,0x4
  004baa2f: 84 c0                                           test   al,al
  004baa31: 8b df                                           mov    ebx,edi
  004baa33: 74 d7                                           je     0x4baa0c
  004baa35: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004baa38: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004baa3b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004baa3e: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004baa45: 89 00                                           mov    DWORD PTR [eax],eax
  004baa47: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004baa4a: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  004baa4d: eb 21                                           jmp    0x4baa70
  004baa4f: 3b c7                                           cmp    eax,edi
  004baa51: 74 1d                                           je     0x4baa70
  004baa53: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004baa56: 8b d8                                           mov    ebx,eax
  004baa58: e8 c3 15 00 00                                  call   0x4bc020
  004baa5d: 53                                              push   ebx
  004baa5e: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  004baa61: 51                                              push   ecx
  004baa62: 8b ce                                           mov    ecx,esi
  004baa64: e8 77 0b 00 00                                  call   0x4bb5e0
  004baa69: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004baa6c: 3b c7                                           cmp    eax,edi
  004baa6e: 75 e3                                           jne    0x4baa53
  004baa70: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004baa73: 52                                              push   edx
  004baa74: e8 e7 75 f8 ff                                  call   0x442060
  004baa79: 83 c4 04                                        add    esp,0x4
  004baa7c: 33 c0                                           xor    eax,eax
  004baa7e: 5f                                              pop    edi
  004baa7f: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004baa82: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004baa85: 5e                                              pop    esi
  004baa86: 5b                                              pop    ebx
  004baa87: 8b e5                                           mov    esp,ebp
  004baa89: 5d                                              pop    ebp
  004baa8a: c3                                              ret
  004bc3d0: c7 01 e8 fc 4d 00                               mov    DWORD PTR [ecx],0x4dfce8
  004bc3d6: e9 55 87 ff ff                                  jmp    0x4b4b30
  004bcf90: 56                                              push   esi
  004bcf91: 8b f1                                           mov    esi,ecx
  004bcf93: 8d 46 40                                        lea    eax,[esi+0x40]
  004bcf96: 50                                              push   eax
  004bcf97: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bcf9e: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bcfa5: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bcfab: 33 c0                                           xor    eax,eax
  004bcfad: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bcfb0: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bcfb3: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bcfb6: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bcfb9: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bcfbc: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bcfbf: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bcfc6: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bcfca: 89 06                                           mov    DWORD PTR [esi],eax
  004bcfcc: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004bcfcf: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bcfd2: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bcfd5: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bcfd8: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bcfdb: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bcfde: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004bcfe1: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bcfe4: c7 46 04 05 00 00 00                            mov    DWORD PTR [esi+0x4],0x5
  004bcfeb: c7 46 08 19 00 00 00                            mov    DWORD PTR [esi+0x8],0x19
  004bcff2: c7 46 0c 28 00 00 00                            mov    DWORD PTR [esi+0xc],0x28
  004bcff9: c7 46 10 4b 00 00 00                            mov    DWORD PTR [esi+0x10],0x4b
  004bd000: c7 46 18 1e 00 00 00                            mov    DWORD PTR [esi+0x18],0x1e
  004bd007: 8b c6                                           mov    eax,esi
  004bd009: 5e                                              pop    esi
  004bd00a: c3                                              ret
  004bd110: 56                                              push   esi
  004bd111: 8b f1                                           mov    esi,ecx
  004bd113: 8d 46 40                                        lea    eax,[esi+0x40]
  004bd116: 50                                              push   eax
  004bd117: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bd11e: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bd125: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bd12b: 33 c0                                           xor    eax,eax
  004bd12d: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bd130: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bd133: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bd136: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bd139: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bd13c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bd13f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bd146: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bd14a: b9 23 00 00 00                                  mov    ecx,0x23
  004bd14f: 89 06                                           mov    DWORD PTR [esi],eax
  004bd151: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004bd154: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004bd157: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bd15a: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bd15d: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bd160: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bd163: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004bd166: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bd169: c7 46 04 33 00 00 00                            mov    DWORD PTR [esi+0x4],0x33
  004bd170: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004bd173: c7 46 10 46 00 00 00                            mov    DWORD PTR [esi+0x10],0x46
  004bd17a: 89 4e 18                                        mov    DWORD PTR [esi+0x18],ecx
  004bd17d: c7 46 28 c8 00 00 00                            mov    DWORD PTR [esi+0x28],0xc8
  004bd184: 8b c6                                           mov    eax,esi
  004bd186: 5e                                              pop    esi
  004bd187: c3                                              ret
  004bd300: 53                                              push   ebx
  004bd301: 56                                              push   esi
  004bd302: 8b f1                                           mov    esi,ecx
  004bd304: 57                                              push   edi
  004bd305: 8d 46 40                                        lea    eax,[esi+0x40]
  004bd308: 50                                              push   eax
  004bd309: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bd310: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bd317: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bd31d: 33 ff                                           xor    edi,edi
  004bd31f: 89 7e 5c                                        mov    DWORD PTR [esi+0x5c],edi
  004bd322: 89 7e 60                                        mov    DWORD PTR [esi+0x60],edi
  004bd325: 89 7e 64                                        mov    DWORD PTR [esi+0x64],edi
  004bd328: 89 7e 68                                        mov    DWORD PTR [esi+0x68],edi
  004bd32b: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bd332: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  004bd335: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bd339: 89 7e 70                                        mov    DWORD PTR [esi+0x70],edi
  004bd33c: b8 2d 00 00 00                                  mov    eax,0x2d
  004bd341: 6a 08                                           push   0x8
  004bd343: 89 3e                                           mov    DWORD PTR [esi],edi
  004bd345: c7 46 04 01 00 00 00                            mov    DWORD PTR [esi+0x4],0x1
  004bd34c: c7 46 08 15 00 00 00                            mov    DWORD PTR [esi+0x8],0x15
  004bd353: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004bd356: 89 7e 10                                        mov    DWORD PTR [esi+0x10],edi
  004bd359: 89 7e 14                                        mov    DWORD PTR [esi+0x14],edi
  004bd35c: 89 7e 18                                        mov    DWORD PTR [esi+0x18],edi
  004bd35f: 89 7e 1c                                        mov    DWORD PTR [esi+0x1c],edi
  004bd362: c7 46 20 1e 00 00 00                            mov    DWORD PTR [esi+0x20],0x1e
  004bd369: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bd36c: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  004bd36f: 89 7e 2c                                        mov    DWORD PTR [esi+0x2c],edi
  004bd372: c7 46 34 d2 00 00 00                            mov    DWORD PTR [esi+0x34],0xd2
  004bd379: 89 7e 30                                        mov    DWORD PTR [esi+0x30],edi
  004bd37c: e8 6f 4c f8 ff                                  call   0x441ff0
  004bd381: 8b d8                                           mov    ebx,eax
  004bd383: c7 03 1a 00 00 00                               mov    DWORD PTR [ebx],0x1a
  004bd389: c7 43 04 2a 00 00 00                            mov    DWORD PTR [ebx+0x4],0x2a
  004bd390: 8b 46 60                                        mov    eax,DWORD PTR [esi+0x60]
  004bd393: 8b 56 70                                        mov    edx,DWORD PTR [esi+0x70]
  004bd396: 83 c4 04                                        add    esp,0x4
  004bd399: 42                                              inc    edx
  004bd39a: 3b c7                                           cmp    eax,edi
  004bd39c: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  004bd39f: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  004bd3a2: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bd3a6: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bd3a9: 89 56 70                                        mov    DWORD PTR [esi+0x70],edx
  004bd3ac: 6a 0c                                           push   0xc
  004bd3ae: 75 32                                           jne    0x4bd3e2
  004bd3b0: e8 3b 4c f8 ff                                  call   0x441ff0
  004bd3b5: 83 c4 04                                        add    esp,0x4
  004bd3b8: 3b c7                                           cmp    eax,edi
  004bd3ba: 74 07                                           je     0x4bd3c3
  004bd3bc: 89 38                                           mov    DWORD PTR [eax],edi
  004bd3be: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004bd3c1: eb 02                                           jmp    0x4bd3c5
  004bd3c3: 33 c0                                           xor    eax,eax
  004bd3c5: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  004bd3c8: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bd3cb: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bd3ce: 89 38                                           mov    DWORD PTR [eax],edi
  004bd3d0: 8b 4e 58                                        mov    ecx,DWORD PTR [esi+0x58]
  004bd3d3: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  004bd3d6: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  004bd3d9: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  004bd3dc: 5f                                              pop    edi
  004bd3dd: 8b c6                                           mov    eax,esi
  004bd3df: 5e                                              pop    esi
  004bd3e0: 5b                                              pop    ebx
  004bd3e1: c3                                              ret
  004bd3e2: e8 09 4c f8 ff                                  call   0x441ff0
  004bd3e7: 83 c4 04                                        add    esp,0x4
  004bd3ea: 3b c7                                           cmp    eax,edi
  004bd3ec: 74 07                                           je     0x4bd3f5
  004bd3ee: 89 38                                           mov    DWORD PTR [eax],edi
  004bd3f0: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004bd3f3: eb 02                                           jmp    0x4bd3f7
  004bd3f5: 33 c0                                           xor    eax,eax
  004bd3f7: 8b 56 58                                        mov    edx,DWORD PTR [esi+0x58]
  004bd3fa: 89 02                                           mov    DWORD PTR [edx],eax
  004bd3fc: 8b 4e 64                                        mov    ecx,DWORD PTR [esi+0x64]
  004bd3ff: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  004bd402: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bd405: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004bd408: 8b 56 58                                        mov    edx,DWORD PTR [esi+0x58]
  004bd40b: 89 3a                                           mov    DWORD PTR [edx],edi
  004bd40d: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  004bd410: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  004bd413: 5f                                              pop    edi
  004bd414: 8b c6                                           mov    eax,esi
  004bd416: 5e                                              pop    esi
  004bd417: 5b                                              pop    ebx
  004bd418: c3                                              ret
  004bd530: 56                                              push   esi
  004bd531: 8b f1                                           mov    esi,ecx
  004bd533: 8d 46 40                                        lea    eax,[esi+0x40]
  004bd536: 50                                              push   eax
  004bd537: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bd53e: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bd545: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bd54b: 33 c0                                           xor    eax,eax
  004bd54d: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bd550: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bd553: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bd556: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bd559: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bd55c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bd55f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bd566: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bd56a: 89 06                                           mov    DWORD PTR [esi],eax
  004bd56c: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004bd56f: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004bd572: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004bd575: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bd578: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bd57b: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bd57e: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bd581: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bd584: c7 46 04 1a 00 00 00                            mov    DWORD PTR [esi+0x4],0x1a
  004bd58b: c7 46 08 1c 00 00 00                            mov    DWORD PTR [esi+0x8],0x1c
  004bd592: c7 46 0c 35 00 00 00                            mov    DWORD PTR [esi+0xc],0x35
  004bd599: c7 46 24 36 00 00 00                            mov    DWORD PTR [esi+0x24],0x36
  004bd5a0: c7 46 34 18 01 00 00                            mov    DWORD PTR [esi+0x34],0x118
  004bd5a7: 8b c6                                           mov    eax,esi
  004bd5a9: 5e                                              pop    esi
  004bd5aa: c3                                              ret
  004bd6f0: 56                                              push   esi
  004bd6f1: 8b f1                                           mov    esi,ecx
  004bd6f3: 8d 46 40                                        lea    eax,[esi+0x40]
  004bd6f6: 50                                              push   eax
  004bd6f7: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bd6fe: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bd705: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bd70b: 33 c0                                           xor    eax,eax
  004bd70d: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bd710: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bd713: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bd716: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bd719: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bd71c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bd71f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bd726: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bd72a: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004bd72d: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004bd730: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004bd733: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004bd736: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bd739: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bd73c: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bd73f: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bd742: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004bd745: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bd748: c7 06 01 00 00 00                               mov    DWORD PTR [esi],0x1
  004bd74e: c7 46 08 1e 00 00 00                            mov    DWORD PTR [esi+0x8],0x1e
  004bd755: c7 46 14 50 00 00 00                            mov    DWORD PTR [esi+0x14],0x50
  004bd75c: c7 46 2c 19 00 00 00                            mov    DWORD PTR [esi+0x2c],0x19
  004bd763: 8b c6                                           mov    eax,esi
  004bd765: 5e                                              pop    esi
  004bd766: c3                                              ret
  004bdc70: 56                                              push   esi
  004bdc71: 8b f1                                           mov    esi,ecx
  004bdc73: 8d 46 44                                        lea    eax,[esi+0x44]
  004bdc76: 50                                              push   eax
  004bdc77: c7 46 3c 8c e5 4d 00                            mov    DWORD PTR [esi+0x3c],0x4de58c
  004bdc7e: c7 46 40 ff ff ff ff                            mov    DWORD PTR [esi+0x40],0xffffffff
  004bdc85: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bdc8b: 33 c0                                           xor    eax,eax
  004bdc8d: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bdc90: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bdc93: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bdc96: 89 46 6c                                        mov    DWORD PTR [esi+0x6c],eax
  004bdc99: 89 46 7c                                        mov    DWORD PTR [esi+0x7c],eax
  004bdc9c: 89 46 74                                        mov    DWORD PTR [esi+0x74],eax
  004bdc9f: c7 46 3c 6c e8 4d 00                            mov    DWORD PTR [esi+0x3c],0x4de86c
  004bdca6: c6 46 70 08                                     mov    BYTE PTR [esi+0x70],0x8
  004bdcaa: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004bdcad: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004bdcb0: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bdcb3: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bdcb6: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bdcb9: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bdcbc: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bdcbf: 89 46 38                                        mov    DWORD PTR [esi+0x38],eax
  004bdcc2: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004bdcc5: c7 06 58 fd 4d 00                               mov    DWORD PTR [esi],0x4dfd58
  004bdccb: c7 46 08 01 00 00 00                            mov    DWORD PTR [esi+0x8],0x1
  004bdcd2: c7 46 0c 28 00 00 00                            mov    DWORD PTR [esi+0xc],0x28
  004bdcd9: c7 46 14 3e 00 00 00                            mov    DWORD PTR [esi+0x14],0x3e
  004bdce0: c7 46 18 46 00 00 00                            mov    DWORD PTR [esi+0x18],0x46
  004bdce7: c7 46 2c 90 01 00 00                            mov    DWORD PTR [esi+0x2c],0x190
  004bdcee: 8b c6                                           mov    eax,esi
  004bdcf0: 5e                                              pop    esi
  004bdcf1: c3                                              ret
  004bdfc0: 56                                              push   esi
  004bdfc1: 8b f1                                           mov    esi,ecx
  004bdfc3: 8d 46 40                                        lea    eax,[esi+0x40]
  004bdfc6: 50                                              push   eax
  004bdfc7: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bdfce: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bdfd5: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bdfdb: 33 c0                                           xor    eax,eax
  004bdfdd: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bdfe0: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bdfe3: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bdfe6: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bdfe9: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bdfec: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bdfef: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bdff6: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bdffa: 89 06                                           mov    DWORD PTR [esi],eax
  004bdffc: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004bdfff: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004be002: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004be005: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004be008: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004be00b: c7 46 04 01 00 00 00                            mov    DWORD PTR [esi+0x4],0x1
  004be012: c7 46 08 0d 00 00 00                            mov    DWORD PTR [esi+0x8],0xd
  004be019: c7 46 0c 22 00 00 00                            mov    DWORD PTR [esi+0xc],0x22
  004be020: c7 46 18 14 00 00 00                            mov    DWORD PTR [esi+0x18],0x14
  004be027: 8b c6                                           mov    eax,esi
  004be029: 5e                                              pop    esi
  004be02a: c3                                              ret
  004be610: 56                                              push   esi
  004be611: 8b f1                                           mov    esi,ecx
  004be613: 8d 46 40                                        lea    eax,[esi+0x40]
  004be616: 50                                              push   eax
  004be617: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004be61e: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004be625: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004be62b: 33 c0                                           xor    eax,eax
  004be62d: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004be630: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004be633: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004be636: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004be639: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004be63c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004be63f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004be646: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004be64a: b9 1e 00 00 00                                  mov    ecx,0x1e
  004be64f: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004be652: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004be655: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004be658: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004be65b: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004be65e: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004be661: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004be664: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004be667: c7 06 01 00 00 00                               mov    DWORD PTR [esi],0x1
  004be66d: c7 46 04 1a 00 00 00                            mov    DWORD PTR [esi+0x4],0x1a
  004be674: c7 46 08 10 00 00 00                            mov    DWORD PTR [esi+0x8],0x10
  004be67b: 89 4e 18                                        mov    DWORD PTR [esi+0x18],ecx
  004be67e: 89 4e 1c                                        mov    DWORD PTR [esi+0x1c],ecx
  004be681: c7 46 2c 19 00 00 00                            mov    DWORD PTR [esi+0x2c],0x19
  004be688: 8b c6                                           mov    eax,esi
  004be68a: 5e                                              pop    esi
  004be68b: c3                                              ret
  004be8a0: 56                                              push   esi
  004be8a1: 8b f1                                           mov    esi,ecx
  004be8a3: 8d 46 40                                        lea    eax,[esi+0x40]
  004be8a6: 50                                              push   eax
  004be8a7: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004be8ae: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004be8b5: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004be8bb: 33 c0                                           xor    eax,eax
  004be8bd: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004be8c0: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004be8c3: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004be8c6: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004be8c9: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004be8cc: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004be8cf: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004be8d6: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004be8da: 89 06                                           mov    DWORD PTR [esi],eax
  004be8dc: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004be8df: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004be8e2: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004be8e5: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004be8e8: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004be8eb: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004be8ee: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004be8f1: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004be8f4: c7 46 04 1a 00 00 00                            mov    DWORD PTR [esi+0x4],0x1a
  004be8fb: c7 46 08 0a 00 00 00                            mov    DWORD PTR [esi+0x8],0xa
  004be902: c7 46 0c 1e 00 00 00                            mov    DWORD PTR [esi+0xc],0x1e
  004be909: c7 46 18 14 00 00 00                            mov    DWORD PTR [esi+0x18],0x14
  004be910: c7 46 2c 19 00 00 00                            mov    DWORD PTR [esi+0x2c],0x19
  004be917: 8b c6                                           mov    eax,esi
  004be919: 5e                                              pop    esi
  004be91a: c3                                              ret
  004be9d0: 56                                              push   esi
  004be9d1: 8b f1                                           mov    esi,ecx
  004be9d3: 8d 46 40                                        lea    eax,[esi+0x40]
  004be9d6: 50                                              push   eax
  004be9d7: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004be9de: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004be9e5: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004be9eb: 33 c0                                           xor    eax,eax
  004be9ed: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004be9f0: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004be9f3: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004be9f6: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004be9f9: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004be9fc: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004be9ff: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bea06: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bea0a: 89 06                                           mov    DWORD PTR [esi],eax
  004bea0c: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004bea0f: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004bea12: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004bea15: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bea18: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bea1b: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bea1e: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bea21: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bea24: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004bea27: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bea2a: c7 46 04 01 00 00 00                            mov    DWORD PTR [esi+0x4],0x1
  004bea31: c7 46 08 05 00 00 00                            mov    DWORD PTR [esi+0x8],0x5
  004bea38: c7 46 0c 1e 00 00 00                            mov    DWORD PTR [esi+0xc],0x1e
  004bea3f: 8b c6                                           mov    eax,esi
  004bea41: 5e                                              pop    esi
  004bea42: c3                                              ret
  004bf010: 56                                              push   esi
  004bf011: 8b f1                                           mov    esi,ecx
  004bf013: 8d 46 40                                        lea    eax,[esi+0x40]
  004bf016: 50                                              push   eax
  004bf017: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bf01e: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bf025: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bf02b: 33 c0                                           xor    eax,eax
  004bf02d: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bf030: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bf033: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bf036: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bf039: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bf03c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bf03f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bf046: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bf04a: 89 06                                           mov    DWORD PTR [esi],eax
  004bf04c: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004bf04f: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004bf052: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004bf055: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bf058: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bf05b: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bf05e: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bf061: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bf064: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bf067: c7 46 04 01 00 00 00                            mov    DWORD PTR [esi+0x4],0x1
  004bf06e: c7 46 08 0c 00 00 00                            mov    DWORD PTR [esi+0x8],0xc
  004bf075: c7 46 0c 28 00 00 00                            mov    DWORD PTR [esi+0xc],0x28
  004bf07c: c7 46 34 78 00 00 00                            mov    DWORD PTR [esi+0x34],0x78
  004bf083: 8b c6                                           mov    eax,esi
  004bf085: 5e                                              pop    esi
  004bf086: c3                                              ret
  004bf2e0: 56                                              push   esi
  004bf2e1: 8b f1                                           mov    esi,ecx
  004bf2e3: 8d 46 40                                        lea    eax,[esi+0x40]
  004bf2e6: 50                                              push   eax
  004bf2e7: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bf2ee: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bf2f5: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bf2fb: 33 c0                                           xor    eax,eax
  004bf2fd: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bf300: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bf303: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bf306: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bf309: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bf30c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bf30f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bf316: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bf31a: 89 06                                           mov    DWORD PTR [esi],eax
  004bf31c: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004bf31f: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004bf322: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004bf325: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bf328: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bf32b: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bf32e: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004bf331: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004bf334: c7 46 04 0a 00 00 00                            mov    DWORD PTR [esi+0x4],0xa
  004bf33b: c7 46 08 0f 00 00 00                            mov    DWORD PTR [esi+0x8],0xf
  004bf342: c7 46 0c 1e 00 00 00                            mov    DWORD PTR [esi+0xc],0x1e
  004bf349: c7 46 10 32 00 00 00                            mov    DWORD PTR [esi+0x10],0x32
  004bf350: c7 46 28 19 00 00 00                            mov    DWORD PTR [esi+0x28],0x19
  004bf357: 8b c6                                           mov    eax,esi
  004bf359: 5e                                              pop    esi
  004bf35a: c3                                              ret
  004bf400: 56                                              push   esi
  004bf401: 8b f1                                           mov    esi,ecx
  004bf403: 8d 46 40                                        lea    eax,[esi+0x40]
  004bf406: 50                                              push   eax
  004bf407: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bf40e: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bf415: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bf41b: 33 c0                                           xor    eax,eax
  004bf41d: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bf420: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bf423: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bf426: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004bf429: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004bf42c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004bf42f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bf436: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bf43a: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004bf43d: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004bf440: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004bf443: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004bf446: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bf449: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bf44c: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bf44f: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bf452: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004bf455: c7 06 02 00 00 00                               mov    DWORD PTR [esi],0x2
  004bf45b: c7 46 04 1a 00 00 00                            mov    DWORD PTR [esi+0x4],0x1a
  004bf462: c7 46 08 0c 00 00 00                            mov    DWORD PTR [esi+0x8],0xc
  004bf469: c7 46 1c 28 00 00 00                            mov    DWORD PTR [esi+0x1c],0x28
  004bf470: c7 46 30 19 00 00 00                            mov    DWORD PTR [esi+0x30],0x19
  004bf477: 8b c6                                           mov    eax,esi
  004bf479: 5e                                              pop    esi
  004bf47a: c3                                              ret
  004bf580: 53                                              push   ebx
  004bf581: 56                                              push   esi
  004bf582: 8b f1                                           mov    esi,ecx
  004bf584: 57                                              push   edi
  004bf585: 8d 46 40                                        lea    eax,[esi+0x40]
  004bf588: 50                                              push   eax
  004bf589: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004bf590: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004bf597: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004bf59d: 33 ff                                           xor    edi,edi
  004bf59f: 89 7e 5c                                        mov    DWORD PTR [esi+0x5c],edi
  004bf5a2: 89 7e 60                                        mov    DWORD PTR [esi+0x60],edi
  004bf5a5: 89 7e 64                                        mov    DWORD PTR [esi+0x64],edi
  004bf5a8: 89 7e 68                                        mov    DWORD PTR [esi+0x68],edi
  004bf5ab: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004bf5b2: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  004bf5b5: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bf5b9: 89 7e 70                                        mov    DWORD PTR [esi+0x70],edi
  004bf5bc: 6a 08                                           push   0x8
  004bf5be: 89 3e                                           mov    DWORD PTR [esi],edi
  004bf5c0: c7 46 04 01 00 00 00                            mov    DWORD PTR [esi+0x4],0x1
  004bf5c7: c7 46 08 11 00 00 00                            mov    DWORD PTR [esi+0x8],0x11
  004bf5ce: c7 46 0c 32 00 00 00                            mov    DWORD PTR [esi+0xc],0x32
  004bf5d5: 89 7e 10                                        mov    DWORD PTR [esi+0x10],edi
  004bf5d8: 89 7e 14                                        mov    DWORD PTR [esi+0x14],edi
  004bf5db: 89 7e 18                                        mov    DWORD PTR [esi+0x18],edi
  004bf5de: 89 7e 1c                                        mov    DWORD PTR [esi+0x1c],edi
  004bf5e1: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  004bf5e4: 89 7e 24                                        mov    DWORD PTR [esi+0x24],edi
  004bf5e7: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  004bf5ea: 89 7e 2c                                        mov    DWORD PTR [esi+0x2c],edi
  004bf5ed: 89 7e 34                                        mov    DWORD PTR [esi+0x34],edi
  004bf5f0: 89 7e 30                                        mov    DWORD PTR [esi+0x30],edi
  004bf5f3: e8 f8 29 f8 ff                                  call   0x441ff0
  004bf5f8: 8b d8                                           mov    ebx,eax
  004bf5fa: c7 03 1c 00 00 00                               mov    DWORD PTR [ebx],0x1c
  004bf600: c7 43 04 19 00 00 00                            mov    DWORD PTR [ebx+0x4],0x19
  004bf607: 8b 46 60                                        mov    eax,DWORD PTR [esi+0x60]
  004bf60a: 8b 56 70                                        mov    edx,DWORD PTR [esi+0x70]
  004bf60d: 83 c4 04                                        add    esp,0x4
  004bf610: 42                                              inc    edx
  004bf611: 3b c7                                           cmp    eax,edi
  004bf613: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  004bf616: 89 7e 78                                        mov    DWORD PTR [esi+0x78],edi
  004bf619: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004bf61d: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004bf620: 89 56 70                                        mov    DWORD PTR [esi+0x70],edx
  004bf623: 6a 0c                                           push   0xc
  004bf625: 75 32                                           jne    0x4bf659
  004bf627: e8 c4 29 f8 ff                                  call   0x441ff0
  004bf62c: 83 c4 04                                        add    esp,0x4
  004bf62f: 3b c7                                           cmp    eax,edi
  004bf631: 74 07                                           je     0x4bf63a
  004bf633: 89 38                                           mov    DWORD PTR [eax],edi
  004bf635: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004bf638: eb 02                                           jmp    0x4bf63c
  004bf63a: 33 c0                                           xor    eax,eax
  004bf63c: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  004bf63f: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bf642: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004bf645: 89 38                                           mov    DWORD PTR [eax],edi
  004bf647: 8b 4e 58                                        mov    ecx,DWORD PTR [esi+0x58]
  004bf64a: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  004bf64d: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  004bf650: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  004bf653: 5f                                              pop    edi
  004bf654: 8b c6                                           mov    eax,esi
  004bf656: 5e                                              pop    esi
  004bf657: 5b                                              pop    ebx
  004bf658: c3                                              ret
  004bf659: e8 92 29 f8 ff                                  call   0x441ff0
  004bf65e: 83 c4 04                                        add    esp,0x4
  004bf661: 3b c7                                           cmp    eax,edi
  004bf663: 74 07                                           je     0x4bf66c
  004bf665: 89 38                                           mov    DWORD PTR [eax],edi
  004bf667: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004bf66a: eb 02                                           jmp    0x4bf66e
  004bf66c: 33 c0                                           xor    eax,eax
  004bf66e: 8b 56 58                                        mov    edx,DWORD PTR [esi+0x58]
  004bf671: 89 02                                           mov    DWORD PTR [edx],eax
  004bf673: 8b 4e 64                                        mov    ecx,DWORD PTR [esi+0x64]
  004bf676: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  004bf679: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004bf67c: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004bf67f: 8b 56 58                                        mov    edx,DWORD PTR [esi+0x58]
  004bf682: 89 3a                                           mov    DWORD PTR [edx],edi
  004bf684: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  004bf687: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  004bf68a: 5f                                              pop    edi
  004bf68b: 8b c6                                           mov    eax,esi
  004bf68d: 5e                                              pop    esi
  004bf68e: 5b                                              pop    ebx
  004bf68f: c3                                              ret
  004c0226: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c0228: 68 58 13 51 00                                  push   0x511358
  004c022d: 8b ce                                           mov    ecx,esi
  004c022f: c7 45 08 01 00 00 00                            mov    DWORD PTR [ebp+0x8],0x1
  004c0236: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004c023c: 50                                              push   eax
  004c023d: 6a 11                                           push   0x11
  004c023f: e8 ac d7 f7 ff                                  call   0x43d9f0
  004c0244: 83 c4 08                                        add    esp,0x8
  004c0247: 8b cc                                           mov    ecx,esp
  004c0249: 89 65 20                                        mov    DWORD PTR [ebp+0x20],esp
  004c024c: e9 4e fb ff ff                                  jmp    0x4bfd9f
  004c0251: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c0253: 68 58 13 51 00                                  push   0x511358
  004c0258: 8b ce                                           mov    ecx,esi
  004c025a: c7 45 08 01 00 00 00                            mov    DWORD PTR [ebp+0x8],0x1
  004c0261: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  004c0267: 50                                              push   eax
  004c0268: 6a 1d                                           push   0x1d
  004c026a: e8 81 d7 f7 ff                                  call   0x43d9f0
  004c026f: 83 c4 08                                        add    esp,0x8
  004c0272: 8b cc                                           mov    ecx,esp
  004c0274: 89 65 20                                        mov    DWORD PTR [ebp+0x20],esp
  004c0277: 50                                              push   eax
  004c0278: e8 e7 17 01 00                                  call   0x4d1a64
  004c027d: 8b ce                                           mov    ecx,esi
  004c027f: e8 0c 2c f6 ff                                  call   0x422e90
  004c0284: c7 45 18 01 00 00 00                            mov    DWORD PTR [ebp+0x18],0x1
  004c028b: e9 d7 f7 ff ff                                  jmp    0x4bfa67
  004c0290: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  004c0293: 85 c0                                           test   eax,eax
  004c0295: 74 04                                           je     0x4c029b
  004c0297: c6 43 34 07                                     mov    BYTE PTR [ebx+0x34],0x7
  004c029b: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  004c02a2: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004c02a4: 8b cb                                           mov    ecx,ebx
  004c02a6: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004c02a9: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004c02ac: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004c02ae: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004c02b1: 8b 45 18                                        mov    eax,DWORD PTR [ebp+0x18]
  004c02b4: 85 c0                                           test   eax,eax
  004c02b6: 74 2f                                           je     0x4c02e7
  004c02b8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004c02bb: 85 c0                                           test   eax,eax
  004c02bd: 0f 85 27 02 00 00                               jne    0x4c04ea
  004c02c3: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c02c5: 68 58 13 51 00                                  push   0x511358
  004c02ca: 8b ce                                           mov    ecx,esi
  004c02cc: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004c02d2: 50                                              push   eax
  004c02d3: 6a 1b                                           push   0x1b
  004c02d5: e8 16 d7 f7 ff                                  call   0x43d9f0
  004c02da: 83 c4 08                                        add    esp,0x8
  004c02dd: 8b cc                                           mov    ecx,esp
  004c02df: 89 65 20                                        mov    DWORD PTR [ebp+0x20],esp
  004c02e2: e9 f6 01 00 00                                  jmp    0x4c04dd
  004c02e7: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c02e9: 68 58 13 51 00                                  push   0x511358
  004c02ee: 8b ce                                           mov    ecx,esi
  004c02f0: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  004c02f6: 50                                              push   eax
  004c02f7: 6a 1c                                           push   0x1c
  004c02f9: e8 f2 d6 f7 ff                                  call   0x43d9f0
  004c02fe: 83 c4 08                                        add    esp,0x8
  004c0301: 8b cc                                           mov    ecx,esp
  004c0303: 89 65 20                                        mov    DWORD PTR [ebp+0x20],esp
  004c0306: e9 d2 01 00 00                                  jmp    0x4c04dd
  004c030b: 8b 5d 20                                        mov    ebx,DWORD PTR [ebp+0x20]
  004c030e: 33 c9                                           xor    ecx,ecx
  004c0310: 66 8b 0b                                        mov    cx,WORD PTR [ebx]
  004c0313: 66 81 c1 10 27                                  add    cx,0x2710
  004c0318: 51                                              push   ecx
  004c0319: 8b ce                                           mov    ecx,esi
  004c031b: e8 40 db fc ff                                  call   0x48de60
  004c0320: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004c0323: f7 d8                                           neg    eax
  004c0325: 3b c1                                           cmp    eax,ecx
  004c0327: 7e 0a                                           jle    0x4c0333
  004c0329: 33 c0                                           xor    eax,eax
  004c032b: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004c032e: 89 45 1c                                        mov    DWORD PTR [ebp+0x1c],eax
  004c0331: eb 05                                           jmp    0x4c0338
  004c0333: 2b c8                                           sub    ecx,eax
  004c0335: 89 4d 1c                                        mov    DWORD PTR [ebp+0x1c],ecx
  004c0338: 33 d2                                           xor    edx,edx
  004c033a: 66 8b 13                                        mov    dx,WORD PTR [ebx]
  004c033d: 66 81 c2 10 27                                  add    dx,0x2710
  004c0342: 8b ce                                           mov    ecx,esi
  004c0344: 52                                              push   edx
  004c0345: e8 16 db fc ff                                  call   0x48de60
  004c034a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004c034d: f7 d8                                           neg    eax
  004c034f: 3b c1                                           cmp    eax,ecx
  004c0351: 7e 0a                                           jle    0x4c035d
  004c0353: 33 c0                                           xor    eax,eax
  004c0355: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004c0358: 89 45 20                                        mov    DWORD PTR [ebp+0x20],eax
  004c035b: eb 05                                           jmp    0x4c0362
  004c035d: 2b c8                                           sub    ecx,eax
  004c035f: 89 4d 20                                        mov    DWORD PTR [ebp+0x20],ecx
  004c0362: 33 c0                                           xor    eax,eax
  004c0364: 66 8b 03                                        mov    ax,WORD PTR [ebx]
  004c0367: 66 05 10 27                                     add    ax,0x2710
  004c036b: 8b ce                                           mov    ecx,esi
  004c036d: 50                                              push   eax
  004c036e: e8 ed da fc ff                                  call   0x48de60
  004c0373: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004c0376: f7 d8                                           neg    eax
  004c0378: 3b c1                                           cmp    eax,ecx
  004c037a: 7e 0b                                           jle    0x4c0387
  004c037c: c7 43 04 00 00 00 00                            mov    DWORD PTR [ebx+0x4],0x0
  004c0383: 33 db                                           xor    ebx,ebx
  004c0385: eb 04                                           jmp    0x4c038b
  004c0387: 2b c8                                           sub    ecx,eax
  004c0389: 8b d9                                           mov    ebx,ecx
  004c038b: 8b ce                                           mov    ecx,esi
  004c038d: e8 1e de fc ff                                  call   0x48e1b0
  004c0392: 33 c9                                           xor    ecx,ecx
  004c0394: 66 8b c8                                        mov    cx,ax
  004c0397: b8 56 55 55 55                                  mov    eax,0x55555556
  004c039c: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004c03a2: f7 e9                                           imul   ecx
  004c03a4: 8b ca                                           mov    ecx,edx
  004c03a6: c1 e9 1f                                        shr    ecx,0x1f
  004c03a9: 03 d1                                           add    edx,ecx
  004c03ab: 0f af d3                                        imul   edx,ebx
  004c03ae: b8 1f 85 eb 51                                  mov    eax,0x51eb851f
  004c03b3: f7 ea                                           imul   edx
  004c03b5: c1 fa 05                                        sar    edx,0x5
  004c03b8: 8b c2                                           mov    eax,edx
  004c03ba: c1 e8 1f                                        shr    eax,0x1f
  004c03bd: 03 d0                                           add    edx,eax
  004c03bf: 8b ce                                           mov    ecx,esi
  004c03c1: 8b da                                           mov    ebx,edx
  004c03c3: e8 a8 dd fc ff                                  call   0x48e170
  004c03c8: 33 c9                                           xor    ecx,ecx
  004c03ca: 66 8b c8                                        mov    cx,ax
  004c03cd: b8 99 99 99 99                                  mov    eax,0x99999999
  004c03d2: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004c03d8: f7 e9                                           imul   ecx
  004c03da: d1 fa                                           sar    edx,1
  004c03dc: 8b ca                                           mov    ecx,edx
  004c03de: c1 e9 1f                                        shr    ecx,0x1f
  004c03e1: 03 d1                                           add    edx,ecx
  004c03e3: 0f af 55 20                                     imul   edx,DWORD PTR [ebp+0x20]
  004c03e7: b8 1f 85 eb 51                                  mov    eax,0x51eb851f
  004c03ec: f7 ea                                           imul   edx
  004c03ee: c1 fa 05                                        sar    edx,0x5
  004c03f1: 8b c2                                           mov    eax,edx
  004c03f3: c1 e8 1f                                        shr    eax,0x1f
  004c03f6: 03 d0                                           add    edx,eax
  004c03f8: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  004c03fb: 8b ca                                           mov    ecx,edx
  004c03fd: 99                                              cdq
  004c03fe: 2b c2                                           sub    eax,edx
  004c0400: 2b cb                                           sub    ecx,ebx
  004c0402: d1 f8                                           sar    eax,1
  004c0404: 2b c8                                           sub    ecx,eax
  004c0406: 89 4d 20                                        mov    DWORD PTR [ebp+0x20],ecx
  004c0409: 8b cf                                           mov    ecx,edi
  004c040b: e8 60 dd fc ff                                  call   0x48e170
  004c0410: 33 c9                                           xor    ecx,ecx
  004c0412: 66 8b c8                                        mov    cx,ax
  004c0415: b8 67 66 66 66                                  mov    eax,0x66666667
  004c041a: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004c0420: f7 e9                                           imul   ecx
  004c0422: 8b 4d 20                                        mov    ecx,DWORD PTR [ebp+0x20]
  004c0425: c1 fa 02                                        sar    edx,0x2
  004c0428: 8b da                                           mov    ebx,edx
  004c042a: 03 d1                                           add    edx,ecx
  004c042c: c1 eb 1f                                        shr    ebx,0x1f
  004c042f: 8b cf                                           mov    ecx,edi
  004c0431: 03 da                                           add    ebx,edx
  004c0433: e8 78 dd fc ff                                  call   0x48e1b0
  004c0438: 33 c9                                           xor    ecx,ecx
  004c043a: 66 8b c8                                        mov    cx,ax
  004c043d: b8 56 55 55 55                                  mov    eax,0x55555556
  004c0442: 6a 64                                           push   0x64
  004c0444: 6a 00                                           push   0x0
  004c0446: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004c044c: f7 e9                                           imul   ecx
  004c044e: 8b c2                                           mov    eax,edx
  004c0450: 03 d3                                           add    edx,ebx
  004c0452: c1 e8 1f                                        shr    eax,0x1f
  004c0455: 8d 44 10 64                                     lea    eax,[eax+edx*1+0x64]
  004c0459: 99                                              cdq
  004c045a: 2b c2                                           sub    eax,edx
  004c045c: 8b d8                                           mov    ebx,eax
  004c045e: b9 34 5e 51 00                                  mov    ecx,0x515e34
  004c0463: d1 fb                                           sar    ebx,1
  004c0465: e8 36 8c f9 ff                                  call   0x4590a0
  004c046a: 3b c3                                           cmp    eax,ebx
  004c046c: 7f 2f                                           jg     0x4c049d
  004c046e: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c0470: 68 58 13 51 00                                  push   0x511358
  004c0475: 8b ce                                           mov    ecx,esi
  004c0477: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004c047d: 50                                              push   eax
  004c047e: 68 04 1e 00 00                                  push   0x1e04
  004c0483: e8 68 d5 f7 ff                                  call   0x43d9f0
  004c0488: 83 c4 08                                        add    esp,0x8
  004c048b: 8b cc                                           mov    ecx,esp
  004c048d: 89 65 20                                        mov    DWORD PTR [ebp+0x20],esp
  004c0490: 50                                              push   eax
  004c0491: e8 ce 15 01 00                                  call   0x4d1a64
  004c0496: 8b cf                                           mov    ecx,edi
  004c0498: e8 f3 29 f6 ff                                  call   0x422e90
  004c049d: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c049f: 68 58 13 51 00                                  push   0x511358
  004c04a4: 8b ce                                           mov    ecx,esi
  004c04a6: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  004c04ac: 50                                              push   eax
  004c04ad: 6a 1a                                           push   0x1a
  004c04af: e8 3c d5 f7 ff                                  call   0x43d9f0
  004c04b4: 83 c4 08                                        add    esp,0x8
  004c04b7: 8b cc                                           mov    ecx,esp
  004c04b9: 89 65 20                                        mov    DWORD PTR [ebp+0x20],esp
  004c04bc: eb 1f                                           jmp    0x4c04dd
  004c04be: 8b 16                                           mov    edx,DWORD PTR [esi]
  004c04c0: 68 58 13 51 00                                  push   0x511358
  004c04c5: 8b ce                                           mov    ecx,esi
  004c04c7: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004c04cd: 50                                              push   eax
  004c04ce: 6a 18                                           push   0x18
  004c04d0: e8 1b d5 f7 ff                                  call   0x43d9f0
  004c04d5: 83 c4 08                                        add    esp,0x8
  004c04d8: 8b cc                                           mov    ecx,esp
  004c04da: 89 65 20                                        mov    DWORD PTR [ebp+0x20],esp
  004c04dd: 50                                              push   eax
  004c04de: e8 81 15 01 00                                  call   0x4d1a64
  004c04e3: 8b ce                                           mov    ecx,esi
  004c04e5: e8 a6 29 f6 ff                                  call   0x422e90
  004c04ea: 8b 06                                           mov    eax,DWORD PTR [esi]
  004c04ec: 68 42 4e 00 00                                  push   0x4e42
  004c04f1: 8b ce                                           mov    ecx,esi
  004c04f3: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004c04f6: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  004c04f9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004c04fb: ff 52 08                                        call   DWORD PTR [edx+0x8]
  004c04fe: eb 38                                           jmp    0x4c0538
  004c0538: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c053b: 5f                                              pop    edi
  004c053c: 5e                                              pop    esi
  004c053d: b8 03 00 00 00                                  mov    eax,0x3
  004c0542: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c0549: 5b                                              pop    ebx
  004c054a: 8b e5                                           mov    esp,ebp
  004c054c: 5d                                              pop    ebp
  004c054d: c3                                              ret
  004c0550: 56                                              push   esi
  004c0551: 8b f1                                           mov    esi,ecx
  004c0553: 8d 46 40                                        lea    eax,[esi+0x40]
  004c0556: 50                                              push   eax
  004c0557: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004c055e: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004c0565: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004c056b: 33 c0                                           xor    eax,eax
  004c056d: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004c0570: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004c0573: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004c0576: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004c0579: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004c057c: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004c057f: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004c0586: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004c058a: 89 06                                           mov    DWORD PTR [esi],eax
  004c058c: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004c058f: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004c0592: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004c0595: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004c0598: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004c059b: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004c059e: c7 46 04 01 00 00 00                            mov    DWORD PTR [esi+0x4],0x1
  004c05a5: c7 46 08 14 00 00 00                            mov    DWORD PTR [esi+0x8],0x14
  004c05ac: c7 46 18 19 00 00 00                            mov    DWORD PTR [esi+0x18],0x19
  004c05b3: 8b c6                                           mov    eax,esi
  004c05b5: 5e                                              pop    esi
  004c05b6: c3                                              ret
  004c5310: 53                                              push   ebx
  004c5311: 56                                              push   esi
  004c5312: 57                                              push   edi
  004c5313: 8b f9                                           mov    edi,ecx
  004c5315: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  004c5318: 85 db                                           test   ebx,ebx
  004c531a: 75 04                                           jne    0x4c5320
  004c531c: 33 f6                                           xor    esi,esi
  004c531e: eb 02                                           jmp    0x4c5322
  004c5320: 8b 33                                           mov    esi,DWORD PTR [ebx]
  004c5322: 3b f3                                           cmp    esi,ebx
  004c5324: 74 27                                           je     0x4c534d
  004c5326: 8b c6                                           mov    eax,esi
  004c5328: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004c532b: 8b 10                                           mov    edx,DWORD PTR [eax]
  004c532d: 8b 36                                           mov    esi,DWORD PTR [esi]
  004c532f: 89 11                                           mov    DWORD PTR [ecx],edx
  004c5331: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004c5333: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004c5336: 50                                              push   eax
  004c5337: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004c533a: e8 21 cd f7 ff                                  call   0x442060
  004c533f: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004c5342: 83 c4 04                                        add    esp,0x4
  004c5345: 49                                              dec    ecx
  004c5346: 3b f3                                           cmp    esi,ebx
  004c5348: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004c534b: 75 d9                                           jne    0x4c5326
  004c534d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004c5350: 50                                              push   eax
  004c5351: e8 0a cd f7 ff                                  call   0x442060
  004c5356: 83 c4 04                                        add    esp,0x4
  004c5359: 33 c0                                           xor    eax,eax
  004c535b: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004c535e: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004c5361: 5f                                              pop    edi
  004c5362: 5e                                              pop    esi
  004c5363: 5b                                              pop    ebx
  004c5364: c3                                              ret
  004c7f20: 56                                              push   esi
  004c7f21: 8b f1                                           mov    esi,ecx
  004c7f23: e8 68 46 f8 ff                                  call   0x44c590
  004c7f28: c7 06 b4 fe 4d 00                               mov    DWORD PTR [esi],0x4dfeb4
  004c7f2e: c7 46 08 a4 fe 4d 00                            mov    DWORD PTR [esi+0x8],0x4dfea4
  004c7f35: 8b c6                                           mov    eax,esi
  004c7f37: 5e                                              pop    esi
  004c7f38: c3                                              ret
  004c8fa0: 56                                              push   esi
  004c8fa1: 8b f1                                           mov    esi,ecx
  004c8fa3: e8 e8 35 f8 ff                                  call   0x44c590
  004c8fa8: c7 06 54 00 4e 00                               mov    DWORD PTR [esi],0x4e0054
  004c8fae: c7 46 08 44 00 4e 00                            mov    DWORD PTR [esi+0x8],0x4e0044
  004c8fb5: 8b c6                                           mov    eax,esi
  004c8fb7: 5e                                              pop    esi
  004c8fb8: c3                                              ret
  004c9a00: 56                                              push   esi
  004c9a01: 8b f1                                           mov    esi,ecx
  004c9a03: e8 88 2b f8 ff                                  call   0x44c590
  004c9a08: c7 06 8c 01 4e 00                               mov    DWORD PTR [esi],0x4e018c
  004c9a0e: c7 46 08 7c 01 4e 00                            mov    DWORD PTR [esi+0x8],0x4e017c
  004c9a15: 8b c6                                           mov    eax,esi
  004c9a17: 5e                                              pop    esi
  004c9a18: c3                                              ret
  004cf650: 55                                              push   ebp
  004cf651: 8b ec                                           mov    ebp,esp
  004cf653: 51                                              push   ecx
  004cf654: 8b c1                                           mov    eax,ecx
  004cf656: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  004cf659: 88 08                                           mov    BYTE PTR [eax],cl
  004cf65b: 33 c9                                           xor    ecx,ecx
  004cf65d: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004cf660: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  004cf663: 89 48 0c                                        mov    DWORD PTR [eax+0xc],ecx
  004cf666: 89 48 10                                        mov    DWORD PTR [eax+0x10],ecx
  004cf669: 8b e5                                           mov    esp,ebp
  004cf66b: 5d                                              pop    ebp
  004cf66c: c3                                              ret
  004cfe60: 56                                              push   esi
  004cfe61: 68 f8 3f 56 00                                  push   0x563ff8
  004cfe66: 8b f1                                           mov    esi,ecx
  004cfe68: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004cfe6e: e8 8d 1a 00 00                                  call   0x4d1900
  004cfe73: 8b c6                                           mov    eax,esi
  004cfe75: 5e                                              pop    esi
  004cfe76: c3                                              ret
  004cfe80: 68 f8 3f 56 00                                  push   0x563ff8
  004cfe85: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  004cfe8b: c3                                              ret
  004d1ac4: ff 25 30 e2 4d 00                               jmp    DWORD PTR ds:0x4de230
  004d1b18: ff 25 f8 e1 4d 00                               jmp    DWORD PTR ds:0x4de1f8
  004d1b1e: ff 25 f4 e1 4d 00                               jmp    DWORD PTR ds:0x4de1f4
