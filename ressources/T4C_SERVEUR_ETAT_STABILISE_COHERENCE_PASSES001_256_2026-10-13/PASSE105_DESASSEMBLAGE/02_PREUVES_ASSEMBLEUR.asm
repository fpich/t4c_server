; PASSE 105, Destinations nouvelles des appels directs relevés dans les passes précédentes
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 7991 distinct instructions; 332 graph entry points

  00405070: c3                                              ret
  00406480: 68 20 14 51 00                                  push   0x511420
  00406485: c7 05 18 14 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x511418,0x4de58c
  0040648f: c7 05 1c 14 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x51141c,0xffffffff
  00406499: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0040649f: c3                                              ret
  004064e0: b9 08 14 51 00                                  mov    ecx,0x511408
  004064e5: e9 b6 11 00 00                                  jmp    0x4076a0
  004065d0: b9 f8 13 51 00                                  mov    ecx,0x5113f8
  004065d5: e9 16 11 00 00                                  jmp    0x4076f0
  004066c0: 55                                              push   ebp
  004066c1: 8b ec                                           mov    ebp,esp
  004066c3: 51                                              push   ecx
  004066c4: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  004066c7: a2 e8 13 51 00                                  mov    ds:0x5113e8,al
  004066cc: 33 c0                                           xor    eax,eax
  004066ce: a3 ec 13 51 00                                  mov    ds:0x5113ec,eax
  004066d3: a3 f0 13 51 00                                  mov    ds:0x5113f0,eax
  004066d8: a3 f4 13 51 00                                  mov    ds:0x5113f4,eax
  004066dd: 8b e5                                           mov    esp,ebp
  004066df: 5d                                              pop    ebp
  004066e0: c3                                              ret
  00406750: 55                                              push   ebp
  00406751: 8b ec                                           mov    ebp,esp
  00406753: 51                                              push   ecx
  00406754: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00406757: a2 d8 13 51 00                                  mov    ds:0x5113d8,al
  0040675c: 33 c0                                           xor    eax,eax
  0040675e: a3 dc 13 51 00                                  mov    ds:0x5113dc,eax
  00406763: a3 e0 13 51 00                                  mov    ds:0x5113e0,eax
  00406768: a3 e4 13 51 00                                  mov    ds:0x5113e4,eax
  0040676d: 8b e5                                           mov    esp,ebp
  0040676f: 5d                                              pop    ebp
  00406770: c3                                              ret
  00406800: 55                                              push   ebp
  00406801: 8b ec                                           mov    ebp,esp
  00406803: 51                                              push   ecx
  00406804: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00406807: a2 c0 13 51 00                                  mov    ds:0x5113c0,al
  0040680c: 33 c0                                           xor    eax,eax
  0040680e: a3 c4 13 51 00                                  mov    ds:0x5113c4,eax
  00406813: a3 c8 13 51 00                                  mov    ds:0x5113c8,eax
  00406818: a3 cc 13 51 00                                  mov    ds:0x5113cc,eax
  0040681d: 8b e5                                           mov    esp,ebp
  0040681f: 5d                                              pop    ebp
  00406820: c3                                              ret
  004076a0: 55                                              push   ebp
  004076a1: 8b ec                                           mov    ebp,esp
  004076a3: 51                                              push   ecx
  004076a4: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  004076a7: 56                                              push   esi
  004076a8: 8b f1                                           mov    esi,ecx
  004076aa: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  004076ad: 6a 4c                                           push   0x4c
  004076af: 88 06                                           mov    BYTE PTR [esi],al
  004076b1: 88 4e 01                                        mov    BYTE PTR [esi+0x1],cl
  004076b4: e8 37 a9 03 00                                  call   0x441ff0
  004076b9: 83 c4 04                                        add    esp,0x4
  004076bc: 33 c9                                           xor    ecx,ecx
  004076be: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004076c1: 88 48 49                                        mov    BYTE PTR [eax+0x49],cl
  004076c4: b2 01                                           mov    dl,0x1
  004076c6: 88 50 48                                        mov    BYTE PTR [eax+0x48],dl
  004076c9: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004076cc: 88 50 49                                        mov    BYTE PTR [eax+0x49],dl
  004076cf: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004076d2: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004076d5: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004076d8: 89 00                                           mov    DWORD PTR [eax],eax
  004076da: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004076dd: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  004076e0: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004076e3: 8b c6                                           mov    eax,esi
  004076e5: 5e                                              pop    esi
  004076e6: 8b e5                                           mov    esp,ebp
  004076e8: 5d                                              pop    ebp
  004076e9: c3                                              ret
  004076f0: 55                                              push   ebp
  004076f1: 8b ec                                           mov    ebp,esp
  004076f3: 51                                              push   ecx
  004076f4: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  004076f7: 56                                              push   esi
  004076f8: 8b f1                                           mov    esi,ecx
  004076fa: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  004076fd: 6a 40                                           push   0x40
  004076ff: 88 06                                           mov    BYTE PTR [esi],al
  00407701: 88 4e 01                                        mov    BYTE PTR [esi+0x1],cl
  00407704: e8 e7 a8 03 00                                  call   0x441ff0
  00407709: 83 c4 04                                        add    esp,0x4
  0040770c: 33 c9                                           xor    ecx,ecx
  0040770e: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00407711: 88 48 3d                                        mov    BYTE PTR [eax+0x3d],cl
  00407714: b2 01                                           mov    dl,0x1
  00407716: 88 50 3c                                        mov    BYTE PTR [eax+0x3c],dl
  00407719: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0040771c: 88 50 3d                                        mov    BYTE PTR [eax+0x3d],dl
  0040771f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00407722: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00407725: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00407728: 89 00                                           mov    DWORD PTR [eax],eax
  0040772a: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040772d: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00407730: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00407733: 8b c6                                           mov    eax,esi
  00407735: 5e                                              pop    esi
  00407736: 8b e5                                           mov    esp,ebp
  00407738: 5d                                              pop    ebp
  00407739: c3                                              ret
  004107a0: 55                                              push   ebp
  004107a1: 8b ec                                           mov    ebp,esp
  004107a3: 6a ff                                           push   0xffffffff
  004107a5: 68 06 38 4d 00                                  push   0x4d3806
  004107aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004107b0: 50                                              push   eax
  004107b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004107b8: 83 ec 18                                        sub    esp,0x18
  004107bb: 53                                              push   ebx
  004107bc: 56                                              push   esi
  004107bd: 57                                              push   edi
  004107be: 8b f9                                           mov    edi,ecx
  004107c0: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004107c3: 89 7d e4                                        mov    DWORD PTR [ebp-0x1c],edi
  004107c6: c7 07 38 e6 4d 00                               mov    DWORD PTR [edi],0x4de638
  004107cc: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004107d3: 33 c9                                           xor    ecx,ecx
  004107d5: 83 f9 04                                        cmp    ecx,0x4
  004107d8: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  004107db: 0f 8d a0 00 00 00                               jge    0x410881
  004107e1: 33 db                                           xor    ebx,ebx
  004107e3: 83 fb 04                                        cmp    ebx,0x4
  004107e6: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004107e9: 0f 8d 8c 00 00 00                               jge    0x41087b
  004107ef: 8d 04 8b                                        lea    eax,[ebx+ecx*4]
  004107f2: 8d 54 80 05                                     lea    edx,[eax+eax*4+0x5]
  004107f6: 83 3c 97 00                                     cmp    DWORD PTR [edi+edx*4],0x0
  004107fa: 74 79                                           je     0x410875
  004107fc: 8d 04 80                                        lea    eax,[eax+eax*4]
  004107ff: 8b 4c 87 10                                     mov    ecx,DWORD PTR [edi+eax*4+0x10]
  00410803: 8d 54 87 04                                     lea    edx,[edi+eax*4+0x4]
  00410807: 8b 42 10                                        mov    eax,DWORD PTR [edx+0x10]
  0041080a: 03 c1                                           add    eax,ecx
  0041080c: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0041080f: 89 45 dc                                        mov    DWORD PTR [ebp-0x24],eax
  00410812: 8b c1                                           mov    eax,ecx
  00410814: c1 e8 0a                                        shr    eax,0xa
  00410817: 8b f0                                           mov    esi,eax
  00410819: c1 e6 0a                                        shl    esi,0xa
  0041081c: 2b ce                                           sub    ecx,esi
  0041081e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00410821: 3b f0                                           cmp    esi,eax
  00410823: 77 02                                           ja     0x410827
  00410825: 2b c6                                           sub    eax,esi
  00410827: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  0041082a: 8b 04 86                                        mov    eax,DWORD PTR [esi+eax*4]
  0041082d: 8b 0c 88                                        mov    ecx,DWORD PTR [eax+ecx*4]
  00410830: 8b 42 10                                        mov    eax,DWORD PTR [edx+0x10]
  00410833: 85 c0                                           test   eax,eax
  00410835: 74 0b                                           je     0x410842
  00410837: 48                                              dec    eax
  00410838: 85 c0                                           test   eax,eax
  0041083a: 89 42 10                                        mov    DWORD PTR [edx+0x10],eax
  0041083d: 75 03                                           jne    0x410842
  0041083f: 89 42 0c                                        mov    DWORD PTR [edx+0xc],eax
  00410842: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00410844: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00410848: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0041084e: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00410851: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00410858: eb 95                                           jmp    0x4107ef
  00410875: 43                                              inc    ebx
  00410876: e9 68 ff ff ff                                  jmp    0x4107e3
  0041087b: 41                                              inc    ecx
  0041087c: e9 54 ff ff ff                                  jmp    0x4107d5
  00410881: 68 f0 0d 41 00                                  push   0x410df0
  00410886: 6a 10                                           push   0x10
  00410888: 6a 14                                           push   0x14
  0041088a: 83 c7 04                                        add    edi,0x4
  0041088d: 57                                              push   edi
  0041088e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00410895: e8 f6 12 0c 00                                  call   0x4d1b90
  0041089a: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041089d: 5f                                              pop    edi
  0041089e: 5e                                              pop    esi
  0041089f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004108a6: 5b                                              pop    ebx
  004108a7: 8b e5                                           mov    esp,ebp
  004108a9: 5d                                              pop    ebp
  004108aa: c3                                              ret
  00412130: b9 a8 1a 51 00                                  mov    ecx,0x511aa8
  00412135: e9 86 75 ff ff                                  jmp    0x4096c0
  00412170: b9 78 1a 51 00                                  mov    ecx,0x511a78
  00412175: e9 e6 00 00 00                                  jmp    0x412260
  00412260: 55                                              push   ebp
  00412261: 8b ec                                           mov    ebp,esp
  00412263: 51                                              push   ecx
  00412264: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00412267: 56                                              push   esi
  00412268: 8b f1                                           mov    esi,ecx
  0041226a: 88 46 20                                        mov    BYTE PTR [esi+0x20],al
  0041226d: 33 c0                                           xor    eax,eax
  0041226f: 8d 4e 08                                        lea    ecx,[esi+0x8]
  00412272: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00412275: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00412278: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0041227b: 51                                              push   ecx
  0041227c: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00412282: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00412289: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0041228f: c7 06 5c e6 4d 00                               mov    DWORD PTR [esi],0x4de65c
  00412295: 8b c6                                           mov    eax,esi
  00412297: 5e                                              pop    esi
  00412298: 8b e5                                           mov    esp,ebp
  0041229a: 5d                                              pop    ebp
  0041229b: c3                                              ret
  004122e0: b9 78 18 51 00                                  mov    ecx,0x511878
  004122e5: e9 76 c5 03 00                                  jmp    0x44e860
  00412320: b9 78 16 51 00                                  mov    ecx,0x511678
  00412325: e9 36 c5 03 00                                  jmp    0x44e860
  00412360: b9 78 14 51 00                                  mov    ecx,0x511478
  00412365: e9 f6 c4 03 00                                  jmp    0x44e860
  004123a0: 68 60 14 51 00                                  push   0x511460
  004123a5: c7 05 58 14 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x511458,0x4de58c
  004123af: c7 05 5c 14 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x51145c,0xffffffff
  004123b9: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004123bf: c3                                              ret
  00428130: 55                                              push   ebp
  00428131: 8b ec                                           mov    ebp,esp
  00428133: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00428136: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428139: 89 08                                           mov    DWORD PTR [eax],ecx
  0042813b: 5d                                              pop    ebp
  0042813c: c2 04 00                                        ret    0x4
  004289e0: 55                                              push   ebp
  004289e1: 8b ec                                           mov    ebp,esp
  004289e3: 8b c1                                           mov    eax,ecx
  004289e5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004289e8: 89 08                                           mov    DWORD PTR [eax],ecx
  004289ea: 5d                                              pop    ebp
  004289eb: c2 04 00                                        ret    0x4
  00428f70: 55                                              push   ebp
  00428f71: 8b ec                                           mov    ebp,esp
  00428f73: 8b c1                                           mov    eax,ecx
  00428f75: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00428f78: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428f7a: 89 10                                           mov    DWORD PTR [eax],edx
  00428f7c: 5d                                              pop    ebp
  00428f7d: c2 04 00                                        ret    0x4
  00429210: 55                                              push   ebp
  00429211: 8b ec                                           mov    ebp,esp
  00429213: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00429216: 50                                              push   eax
  00429217: e8 44 8e 01 00                                  call   0x442060
  0042921c: 83 c4 04                                        add    esp,0x4
  0042921f: 5d                                              pop    ebp
  00429220: c2 08 00                                        ret    0x8
  0042a0d0: 55                                              push   ebp
  0042a0d1: 8b ec                                           mov    ebp,esp
  0042a0d3: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042a0d5: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042a0d8: 8d 14 c8                                        lea    edx,[eax+ecx*8]
  0042a0db: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a0de: 89 10                                           mov    DWORD PTR [eax],edx
  0042a0e0: 5d                                              pop    ebp
  0042a0e1: c2 08 00                                        ret    0x8
  0042a370: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042a373: c3                                              ret
  0042a3c0: 55                                              push   ebp
  0042a3c1: 8b ec                                           mov    ebp,esp
  0042a3c3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042a3c6: 85 c0                                           test   eax,eax
  0042a3c8: 76 22                                           jbe    0x42a3ec
  0042a3ca: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0042a3cd: 8b d0                                           mov    edx,eax
  0042a3cf: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a3d2: 56                                              push   esi
  0042a3d3: 85 c0                                           test   eax,eax
  0042a3d5: 74 0a                                           je     0x42a3e1
  0042a3d7: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0042a3d9: 89 30                                           mov    DWORD PTR [eax],esi
  0042a3db: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0042a3de: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  0042a3e1: 83 c0 08                                        add    eax,0x8
  0042a3e4: 4a                                              dec    edx
  0042a3e5: 75 ec                                           jne    0x42a3d3
  0042a3e7: 5e                                              pop    esi
  0042a3e8: 5d                                              pop    ebp
  0042a3e9: c2 0c 00                                        ret    0xc
  0042a3ec: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a3ef: 5d                                              pop    ebp
  0042a3f0: c2 0c 00                                        ret    0xc
  0042a400: 55                                              push   ebp
  0042a401: 8b ec                                           mov    ebp,esp
  0042a403: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042a406: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0042a408: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  0042a40f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a412: 2b ca                                           sub    ecx,edx
  0042a414: 89 08                                           mov    DWORD PTR [eax],ecx
  0042a416: 5d                                              pop    ebp
  0042a417: c2 08 00                                        ret    0x8
  0042a8d0: 55                                              push   ebp
  0042a8d1: 8b ec                                           mov    ebp,esp
  0042a8d3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042a8d6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0042a8d9: 3b ca                                           cmp    ecx,edx
  0042a8db: 74 21                                           je     0x42a8fe
  0042a8dd: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0042a8e0: 56                                              push   esi
  0042a8e1: 85 c0                                           test   eax,eax
  0042a8e3: 74 0a                                           je     0x42a8ef
  0042a8e5: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0042a8e7: 89 30                                           mov    DWORD PTR [eax],esi
  0042a8e9: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0042a8ec: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  0042a8ef: 83 c1 08                                        add    ecx,0x8
  0042a8f2: 83 c0 08                                        add    eax,0x8
  0042a8f5: 3b ca                                           cmp    ecx,edx
  0042a8f7: 75 e8                                           jne    0x42a8e1
  0042a8f9: 5e                                              pop    esi
  0042a8fa: 5d                                              pop    ebp
  0042a8fb: c2 0c 00                                        ret    0xc
  0042a8fe: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0042a901: 5d                                              pop    ebp
  0042a902: c2 0c 00                                        ret    0xc
  0042a910: 55                                              push   ebp
  0042a911: 8b ec                                           mov    ebp,esp
  0042a913: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a916: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0042a919: 3b c2                                           cmp    eax,edx
  0042a91b: 74 16                                           je     0x42a933
  0042a91d: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0042a920: 56                                              push   esi
  0042a921: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0042a923: 89 30                                           mov    DWORD PTR [eax],esi
  0042a925: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0042a928: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  0042a92b: 83 c0 08                                        add    eax,0x8
  0042a92e: 3b c2                                           cmp    eax,edx
  0042a930: 75 ef                                           jne    0x42a921
  0042a932: 5e                                              pop    esi
  0042a933: 5d                                              pop    ebp
  0042a934: c3                                              ret
  0042a940: 55                                              push   ebp
  0042a941: 8b ec                                           mov    ebp,esp
  0042a943: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0042a946: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0042a949: 3b d0                                           cmp    edx,eax
  0042a94b: 74 21                                           je     0x42a96e
  0042a94d: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0042a950: 56                                              push   esi
  0042a951: 8b 70 f8                                        mov    esi,DWORD PTR [eax-0x8]
  0042a954: 83 e8 08                                        sub    eax,0x8
  0042a957: 83 e9 08                                        sub    ecx,0x8
  0042a95a: 3b c2                                           cmp    eax,edx
  0042a95c: 89 31                                           mov    DWORD PTR [ecx],esi
  0042a95e: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  0042a961: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  0042a964: 75 eb                                           jne    0x42a951
  0042a966: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a969: 89 08                                           mov    DWORD PTR [eax],ecx
  0042a96b: 5e                                              pop    esi
  0042a96c: 5d                                              pop    ebp
  0042a96d: c3                                              ret
  0042a96e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a971: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0042a974: 89 08                                           mov    DWORD PTR [eax],ecx
  0042a976: 5d                                              pop    ebp
  0042a977: c3                                              ret
  00433240: 55                                              push   ebp
  00433241: 8b ec                                           mov    ebp,esp
  00433243: 51                                              push   ecx
  00433244: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00433247: 6a 0c                                           push   0xc
  00433249: a2 a0 21 51 00                                  mov    ds:0x5121a0,al
  0043324e: e8 9d ed 00 00                                  call   0x441ff0
  00433253: 89 00                                           mov    DWORD PTR [eax],eax
  00433255: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00433258: 83 c4 04                                        add    esp,0x4
  0043325b: a3 a4 21 51 00                                  mov    ds:0x5121a4,eax
  00433260: c7 05 a8 21 51 00 00 00 00 00                   mov    DWORD PTR ds:0x5121a8,0x0
  0043326a: 8b e5                                           mov    esp,ebp
  0043326c: 5d                                              pop    ebp
  0043326d: c3                                              ret
  00433300: 68 88 21 51 00                                  push   0x512188
  00433305: c7 05 80 21 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x512180,0x4de58c
  0043330f: c7 05 84 21 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x512184,0xffffffff
  00433319: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0043331f: c3                                              ret
  00437490: b9 a0 22 51 00                                  mov    ecx,0x5122a0
  00437495: e9 26 08 00 00                                  jmp    0x437cc0
  004374e0: b9 58 22 51 00                                  mov    ecx,0x512258
  004374e5: e9 66 09 00 00                                  jmp    0x437e50
  0043b370: 55                                              push   ebp
  0043b371: 8b ec                                           mov    ebp,esp
  0043b373: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0043b376: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043b379: 89 08                                           mov    DWORD PTR [eax],ecx
  0043b37b: 5d                                              pop    ebp
  0043b37c: c2 04 00                                        ret    0x4
  0043b7d0: 55                                              push   ebp
  0043b7d1: 8b ec                                           mov    ebp,esp
  0043b7d3: 8b c1                                           mov    eax,ecx
  0043b7d5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043b7d8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0043b7da: 89 10                                           mov    DWORD PTR [eax],edx
  0043b7dc: 5d                                              pop    ebp
  0043b7dd: c2 04 00                                        ret    0x4
  0043bbd0: 55                                              push   ebp
  0043bbd1: 8b ec                                           mov    ebp,esp
  0043bbd3: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0043bbd5: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0043bbd8: 8d 14 88                                        lea    edx,[eax+ecx*4]
  0043bbdb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bbde: 89 10                                           mov    DWORD PTR [eax],edx
  0043bbe0: 5d                                              pop    ebp
  0043bbe1: c2 08 00                                        ret    0x8
  0043bbf0: 55                                              push   ebp
  0043bbf1: 8b ec                                           mov    ebp,esp
  0043bbf3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0043bbf6: 85 c0                                           test   eax,eax
  0043bbf8: 76 1c                                           jbe    0x43bc16
  0043bbfa: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0043bbfd: 8b c8                                           mov    ecx,eax
  0043bbff: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bc02: 56                                              push   esi
  0043bc03: 85 c0                                           test   eax,eax
  0043bc05: 74 04                                           je     0x43bc0b
  0043bc07: 8b 32                                           mov    esi,DWORD PTR [edx]
  0043bc09: 89 30                                           mov    DWORD PTR [eax],esi
  0043bc0b: 83 c0 04                                        add    eax,0x4
  0043bc0e: 49                                              dec    ecx
  0043bc0f: 75 f2                                           jne    0x43bc03
  0043bc11: 5e                                              pop    esi
  0043bc12: 5d                                              pop    ebp
  0043bc13: c2 0c 00                                        ret    0xc
  0043bc16: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bc19: 5d                                              pop    ebp
  0043bc1a: c2 0c 00                                        ret    0xc
  0043bc20: 55                                              push   ebp
  0043bc21: 8b ec                                           mov    ebp,esp
  0043bc23: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0043bc26: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0043bc28: 8d 14 85 00 00 00 00                            lea    edx,[eax*4+0x0]
  0043bc2f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bc32: 2b ca                                           sub    ecx,edx
  0043bc34: 89 08                                           mov    DWORD PTR [eax],ecx
  0043bc36: 5d                                              pop    ebp
  0043bc37: c2 08 00                                        ret    0x8
  0043bc60: 55                                              push   ebp
  0043bc61: 8b ec                                           mov    ebp,esp
  0043bc63: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043bc66: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0043bc69: 3b ca                                           cmp    ecx,edx
  0043bc6b: 74 1b                                           je     0x43bc88
  0043bc6d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0043bc70: 56                                              push   esi
  0043bc71: 85 c0                                           test   eax,eax
  0043bc73: 74 04                                           je     0x43bc79
  0043bc75: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0043bc77: 89 30                                           mov    DWORD PTR [eax],esi
  0043bc79: 83 c1 04                                        add    ecx,0x4
  0043bc7c: 83 c0 04                                        add    eax,0x4
  0043bc7f: 3b ca                                           cmp    ecx,edx
  0043bc81: 75 ee                                           jne    0x43bc71
  0043bc83: 5e                                              pop    esi
  0043bc84: 5d                                              pop    ebp
  0043bc85: c2 0c 00                                        ret    0xc
  0043bc88: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0043bc8b: 5d                                              pop    ebp
  0043bc8c: c2 0c 00                                        ret    0xc
  0043bc90: 55                                              push   ebp
  0043bc91: 8b ec                                           mov    ebp,esp
  0043bc93: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bc96: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0043bc99: 3b c1                                           cmp    eax,ecx
  0043bc9b: 74 10                                           je     0x43bcad
  0043bc9d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0043bca0: 56                                              push   esi
  0043bca1: 8b 32                                           mov    esi,DWORD PTR [edx]
  0043bca3: 89 30                                           mov    DWORD PTR [eax],esi
  0043bca5: 83 c0 04                                        add    eax,0x4
  0043bca8: 3b c1                                           cmp    eax,ecx
  0043bcaa: 75 f5                                           jne    0x43bca1
  0043bcac: 5e                                              pop    esi
  0043bcad: 5d                                              pop    ebp
  0043bcae: c3                                              ret
  0043bcb0: 55                                              push   ebp
  0043bcb1: 8b ec                                           mov    ebp,esp
  0043bcb3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0043bcb6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0043bcb9: 3b d0                                           cmp    edx,eax
  0043bcbb: 74 1b                                           je     0x43bcd8
  0043bcbd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0043bcc0: 56                                              push   esi
  0043bcc1: 8b 70 fc                                        mov    esi,DWORD PTR [eax-0x4]
  0043bcc4: 83 e8 04                                        sub    eax,0x4
  0043bcc7: 83 e9 04                                        sub    ecx,0x4
  0043bcca: 3b c2                                           cmp    eax,edx
  0043bccc: 89 31                                           mov    DWORD PTR [ecx],esi
  0043bcce: 75 f1                                           jne    0x43bcc1
  0043bcd0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bcd3: 89 08                                           mov    DWORD PTR [eax],ecx
  0043bcd5: 5e                                              pop    esi
  0043bcd6: 5d                                              pop    ebp
  0043bcd7: c3                                              ret
  0043bcd8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043bcdb: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0043bcde: 89 08                                           mov    DWORD PTR [eax],ecx
  0043bce0: 5d                                              pop    ebp
  0043bce1: c3                                              ret
  0043c690: b9 40 23 51 00                                  mov    ecx,0x512340
  0043c695: e9 06 00 00 00                                  jmp    0x43c6a0
  0043c6a0: 55                                              push   ebp
  0043c6a1: 8b ec                                           mov    ebp,esp
  0043c6a3: 6a ff                                           push   0xffffffff
  0043c6a5: 68 38 59 4d 00                                  push   0x4d5938
  0043c6aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043c6b0: 50                                              push   eax
  0043c6b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043c6b8: 83 ec 0c                                        sub    esp,0xc
  0043c6bb: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  0043c6be: 56                                              push   esi
  0043c6bf: 8b f1                                           mov    esi,ecx
  0043c6c1: 6a 0c                                           push   0xc
  0043c6c3: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  0043c6c6: 88 06                                           mov    BYTE PTR [esi],al
  0043c6c8: e8 23 59 00 00                                  call   0x441ff0
  0043c6cd: 89 00                                           mov    DWORD PTR [eax],eax
  0043c6cf: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0043c6d2: 33 c9                                           xor    ecx,ecx
  0043c6d4: 83 c4 04                                        add    esp,0x4
  0043c6d7: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0043c6da: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0043c6dd: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0043c6e0: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0043c6e3: 51                                              push   ecx
  0043c6e4: 50                                              push   eax
  0043c6e5: 8b ce                                           mov    ecx,esi
  0043c6e7: c7 45 ec 0c 35 50 00                            mov    DWORD PTR [ebp-0x14],0x50350c
  0043c6ee: e8 dd 02 00 00                                  call   0x43c9d0
  0043c6f3: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043c6f6: 8b c6                                           mov    eax,esi
  0043c6f8: 5e                                              pop    esi
  0043c6f9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043c700: 8b e5                                           mov    esp,ebp
  0043c702: 5d                                              pop    ebp
  0043c703: c3                                              ret
  0043cab0: e9 4b 01 00 00                                  jmp    0x43cc00
  0043e0f0: b9 f0 42 51 00                                  mov    ecx,0x5142f0
  0043e0f5: e9 64 39 09 00                                  jmp    0x4d1a5e
  0043e7f0: b9 20 42 51 00                                  mov    ecx,0x514220
  0043e7f5: e9 26 fa ff ff                                  jmp    0x43e220
  004426c0: b9 30 44 51 00                                  mov    ecx,0x514430
  004426c5: e9 e6 2d 00 00                                  jmp    0x4454b0
  00442700: b9 e8 43 51 00                                  mov    ecx,0x5143e8
  00442705: e9 a6 2d 00 00                                  jmp    0x4454b0
  00442740: b9 a0 43 51 00                                  mov    ecx,0x5143a0
  00442745: e9 a6 2d 00 00                                  jmp    0x4454f0
  00442780: b9 58 43 51 00                                  mov    ecx,0x514358
  00442785: e9 f6 2e 00 00                                  jmp    0x445680
  00445a60: b9 80 44 51 00                                  mov    ecx,0x514480
  00445a65: e9 66 fb fe ff                                  jmp    0x4355d0
  0044db40: b9 38 46 51 00                                  mov    ecx,0x514638
  0044db45: e9 66 79 ff ff                                  jmp    0x4454b0
  0044db90: 68 18 46 51 00                                  push   0x514618
  0044db95: c7 05 10 46 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x514610,0x4de58c
  0044db9f: c7 05 14 46 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x514614,0xffffffff
  0044dba9: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044dbaf: c3                                              ret
  0044e750: 68 90 46 51 00                                  push   0x514690
  0044e755: c7 05 88 46 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x514688,0x4de58c
  0044e75f: c7 05 8c 46 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x51468c,0xffffffff
  0044e769: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044e76f: c3                                              ret
  0044f780: 68 c0 46 51 00                                  push   0x5146c0
  0044f785: c7 05 b8 46 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x5146b8,0x4de58c
  0044f78f: c7 05 bc 46 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x5146bc,0xffffffff
  0044f799: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0044f79f: c3                                              ret
  0044fbe0: 55                                              push   ebp
  0044fbe1: 8b ec                                           mov    ebp,esp
  0044fbe3: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0044fbe6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044fbe9: 89 08                                           mov    DWORD PTR [eax],ecx
  0044fbeb: 5d                                              pop    ebp
  0044fbec: c2 04 00                                        ret    0x4
  0044fc50: 55                                              push   ebp
  0044fc51: 8b ec                                           mov    ebp,esp
  0044fc53: 8b c1                                           mov    eax,ecx
  0044fc55: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044fc58: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044fc5a: 89 10                                           mov    DWORD PTR [eax],edx
  0044fc5c: 5d                                              pop    ebp
  0044fc5d: c2 04 00                                        ret    0x4
  0044fc60: 55                                              push   ebp
  0044fc61: 8b ec                                           mov    ebp,esp
  0044fc63: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0044fc65: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0044fc68: 8d 14 88                                        lea    edx,[eax+ecx*4]
  0044fc6b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044fc6e: 89 10                                           mov    DWORD PTR [eax],edx
  0044fc70: 5d                                              pop    ebp
  0044fc71: c2 08 00                                        ret    0x8
  0044fc80: 55                                              push   ebp
  0044fc81: 8b ec                                           mov    ebp,esp
  0044fc83: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0044fc86: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044fc89: 89 08                                           mov    DWORD PTR [eax],ecx
  0044fc8b: 5d                                              pop    ebp
  0044fc8c: c2 04 00                                        ret    0x4
  0044fcf0: 55                                              push   ebp
  0044fcf1: 8b ec                                           mov    ebp,esp
  0044fcf3: 8b c1                                           mov    eax,ecx
  0044fcf5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044fcf8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0044fcfa: 89 10                                           mov    DWORD PTR [eax],edx
  0044fcfc: 5d                                              pop    ebp
  0044fcfd: c2 04 00                                        ret    0x4
  0044fd00: 55                                              push   ebp
  0044fd01: 8b ec                                           mov    ebp,esp
  0044fd03: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0044fd05: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0044fd08: 8d 14 88                                        lea    edx,[eax+ecx*4]
  0044fd0b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0044fd0e: 89 10                                           mov    DWORD PTR [eax],edx
  0044fd10: 5d                                              pop    ebp
  0044fd11: c2 08 00                                        ret    0x8
  00450440: 55                                              push   ebp
  00450441: 8b ec                                           mov    ebp,esp
  00450443: 6a ff                                           push   0xffffffff
  00450445: 68 51 6a 4d 00                                  push   0x4d6a51
  0045044a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00450450: 50                                              push   eax
  00450451: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00450458: 83 ec 08                                        sub    esp,0x8
  0045045b: 53                                              push   ebx
  0045045c: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  0045045f: 56                                              push   esi
  00450460: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00450463: 57                                              push   edi
  00450464: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00450467: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0045046a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0045046d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00450474: 85 ff                                           test   edi,edi
  00450476: 76 41                                           jbe    0x4504b9
  00450478: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0045047b: 85 f6                                           test   esi,esi
  0045047d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00450481: 74 08                                           je     0x45048b
  00450483: 53                                              push   ebx
  00450484: 8b ce                                           mov    ecx,esi
  00450486: e8 c1 15 08 00                                  call   0x4d1a4c
  0045048b: 4f                                              dec    edi
  0045048c: 83 c6 04                                        add    esi,0x4
  0045048f: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00450493: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00450496: eb dc                                           jmp    0x450474
  004504b9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004504bc: 5f                                              pop    edi
  004504bd: 8b c6                                           mov    eax,esi
  004504bf: 5e                                              pop    esi
  004504c0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004504c7: 5b                                              pop    ebx
  004504c8: 8b e5                                           mov    esp,ebp
  004504ca: 5d                                              pop    ebp
  004504cb: c2 0c 00                                        ret    0xc
  004504d0: 55                                              push   ebp
  004504d1: 8b ec                                           mov    ebp,esp
  004504d3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004504d6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004504d8: 8d 14 85 00 00 00 00                            lea    edx,[eax*4+0x0]
  004504df: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004504e2: 2b ca                                           sub    ecx,edx
  004504e4: 89 08                                           mov    DWORD PTR [eax],ecx
  004504e6: 5d                                              pop    ebp
  004504e7: c2 08 00                                        ret    0x8
  004504f0: 55                                              push   ebp
  004504f1: 8b ec                                           mov    ebp,esp
  004504f3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004504f6: 85 c0                                           test   eax,eax
  004504f8: 76 1c                                           jbe    0x450516
  004504fa: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004504fd: 8b c8                                           mov    ecx,eax
  004504ff: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00450502: 56                                              push   esi
  00450503: 85 c0                                           test   eax,eax
  00450505: 74 04                                           je     0x45050b
  00450507: 8b 32                                           mov    esi,DWORD PTR [edx]
  00450509: 89 30                                           mov    DWORD PTR [eax],esi
  0045050b: 83 c0 04                                        add    eax,0x4
  0045050e: 49                                              dec    ecx
  0045050f: 75 f2                                           jne    0x450503
  00450511: 5e                                              pop    esi
  00450512: 5d                                              pop    ebp
  00450513: c2 0c 00                                        ret    0xc
  00450516: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00450519: 5d                                              pop    ebp
  0045051a: c2 0c 00                                        ret    0xc
  00450520: 55                                              push   ebp
  00450521: 8b ec                                           mov    ebp,esp
  00450523: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00450526: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00450528: 8d 14 85 00 00 00 00                            lea    edx,[eax*4+0x0]
  0045052f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00450532: 2b ca                                           sub    ecx,edx
  00450534: 89 08                                           mov    DWORD PTR [eax],ecx
  00450536: 5d                                              pop    ebp
  00450537: c2 08 00                                        ret    0x8
  00450680: 55                                              push   ebp
  00450681: 8b ec                                           mov    ebp,esp
  00450683: 6a ff                                           push   0xffffffff
  00450685: 68 91 6a 4d 00                                  push   0x4d6a91
  0045068a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00450690: 50                                              push   eax
  00450691: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00450698: 83 ec 08                                        sub    esp,0x8
  0045069b: 53                                              push   ebx
  0045069c: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0045069f: 56                                              push   esi
  004506a0: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004506a3: 57                                              push   edi
  004506a4: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004506a7: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004506aa: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004506ad: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004506b4: 3b fb                                           cmp    edi,ebx
  004506b6: 74 43                                           je     0x4506fb
  004506b8: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  004506bb: 85 f6                                           test   esi,esi
  004506bd: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004506c1: 74 08                                           je     0x4506cb
  004506c3: 57                                              push   edi
  004506c4: 8b ce                                           mov    ecx,esi
  004506c6: e8 81 13 08 00                                  call   0x4d1a4c
  004506cb: 83 c6 04                                        add    esi,0x4
  004506ce: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004506d2: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004506d5: 83 c7 04                                        add    edi,0x4
  004506d8: eb da                                           jmp    0x4506b4
  004506fb: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004506fe: 5f                                              pop    edi
  004506ff: 8b c6                                           mov    eax,esi
  00450701: 5e                                              pop    esi
  00450702: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00450709: 5b                                              pop    ebx
  0045070a: 8b e5                                           mov    esp,ebp
  0045070c: 5d                                              pop    ebp
  0045070d: c2 0c 00                                        ret    0xc
  00450710: 55                                              push   ebp
  00450711: 8b ec                                           mov    ebp,esp
  00450713: 56                                              push   esi
  00450714: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00450717: 57                                              push   edi
  00450718: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0045071b: 3b f7                                           cmp    esi,edi
  0045071d: 74 14                                           je     0x450733
  0045071f: 53                                              push   ebx
  00450720: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00450723: 53                                              push   ebx
  00450724: 8b ce                                           mov    ecx,esi
  00450726: e8 1b 13 08 00                                  call   0x4d1a46
  0045072b: 83 c6 04                                        add    esi,0x4
  0045072e: 3b f7                                           cmp    esi,edi
  00450730: 75 f1                                           jne    0x450723
  00450732: 5b                                              pop    ebx
  00450733: 5f                                              pop    edi
  00450734: 5e                                              pop    esi
  00450735: 5d                                              pop    ebp
  00450736: c3                                              ret
  00450740: 55                                              push   ebp
  00450741: 8b ec                                           mov    ebp,esp
  00450743: 53                                              push   ebx
  00450744: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00450747: 56                                              push   esi
  00450748: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0045074b: 3b de                                           cmp    ebx,esi
  0045074d: 74 20                                           je     0x45076f
  0045074f: 57                                              push   edi
  00450750: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  00450753: 83 ee 04                                        sub    esi,0x4
  00450756: 83 ef 04                                        sub    edi,0x4
  00450759: 56                                              push   esi
  0045075a: 8b cf                                           mov    ecx,edi
  0045075c: e8 e5 12 08 00                                  call   0x4d1a46
  00450761: 3b f3                                           cmp    esi,ebx
  00450763: 75 ee                                           jne    0x450753
  00450765: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00450768: 89 38                                           mov    DWORD PTR [eax],edi
  0045076a: 5f                                              pop    edi
  0045076b: 5e                                              pop    esi
  0045076c: 5b                                              pop    ebx
  0045076d: 5d                                              pop    ebp
  0045076e: c3                                              ret
  0045076f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00450772: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00450775: 5e                                              pop    esi
  00450776: 89 08                                           mov    DWORD PTR [eax],ecx
  00450778: 5b                                              pop    ebx
  00450779: 5d                                              pop    ebp
  0045077a: c3                                              ret
  00450780: 55                                              push   ebp
  00450781: 8b ec                                           mov    ebp,esp
  00450783: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00450786: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00450789: 3b ca                                           cmp    ecx,edx
  0045078b: 74 1b                                           je     0x4507a8
  0045078d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00450790: 56                                              push   esi
  00450791: 85 c0                                           test   eax,eax
  00450793: 74 04                                           je     0x450799
  00450795: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00450797: 89 30                                           mov    DWORD PTR [eax],esi
  00450799: 83 c1 04                                        add    ecx,0x4
  0045079c: 83 c0 04                                        add    eax,0x4
  0045079f: 3b ca                                           cmp    ecx,edx
  004507a1: 75 ee                                           jne    0x450791
  004507a3: 5e                                              pop    esi
  004507a4: 5d                                              pop    ebp
  004507a5: c2 0c 00                                        ret    0xc
  004507a8: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004507ab: 5d                                              pop    ebp
  004507ac: c2 0c 00                                        ret    0xc
  004507b0: 55                                              push   ebp
  004507b1: 8b ec                                           mov    ebp,esp
  004507b3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004507b6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004507b9: 3b c1                                           cmp    eax,ecx
  004507bb: 74 10                                           je     0x4507cd
  004507bd: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004507c0: 56                                              push   esi
  004507c1: 8b 32                                           mov    esi,DWORD PTR [edx]
  004507c3: 89 30                                           mov    DWORD PTR [eax],esi
  004507c5: 83 c0 04                                        add    eax,0x4
  004507c8: 3b c1                                           cmp    eax,ecx
  004507ca: 75 f5                                           jne    0x4507c1
  004507cc: 5e                                              pop    esi
  004507cd: 5d                                              pop    ebp
  004507ce: c3                                              ret
  004507d0: 55                                              push   ebp
  004507d1: 8b ec                                           mov    ebp,esp
  004507d3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004507d6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004507d9: 3b d0                                           cmp    edx,eax
  004507db: 74 1b                                           je     0x4507f8
  004507dd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004507e0: 56                                              push   esi
  004507e1: 8b 70 fc                                        mov    esi,DWORD PTR [eax-0x4]
  004507e4: 83 e8 04                                        sub    eax,0x4
  004507e7: 83 e9 04                                        sub    ecx,0x4
  004507ea: 3b c2                                           cmp    eax,edx
  004507ec: 89 31                                           mov    DWORD PTR [ecx],esi
  004507ee: 75 f1                                           jne    0x4507e1
  004507f0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004507f3: 89 08                                           mov    DWORD PTR [eax],ecx
  004507f5: 5e                                              pop    esi
  004507f6: 5d                                              pop    ebp
  004507f7: c3                                              ret
  004507f8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004507fb: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004507fe: 89 08                                           mov    DWORD PTR [eax],ecx
  00450800: 5d                                              pop    ebp
  00450801: c3                                              ret
  00450a40: 68 e0 46 51 00                                  push   0x5146e0
  00450a45: c7 05 d8 46 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x5146d8,0x4de58c
  00450a4f: c7 05 dc 46 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x5146dc,0xffffffff
  00450a59: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00450a5f: c3                                              ret
  004518e0: 68 88 4a 51 00                                  push   0x514a88
  004518e5: c7 05 80 4a 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x514a80,0x4de58c
  004518ef: c7 05 84 4a 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x514a84,0xffffffff
  004518f9: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004518ff: c3                                              ret
  00451950: 68 60 4a 51 00                                  push   0x514a60
  00451955: c7 05 58 4a 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x514a58,0x4de58c
  0045195f: c7 05 5c 4a 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x514a5c,0xffffffff
  00451969: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0045196f: c3                                              ret
  004519c0: 68 40 4a 51 00                                  push   0x514a40
  004519c5: c7 05 38 4a 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x514a38,0x4de58c
  004519cf: c7 05 3c 4a 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x514a3c,0xffffffff
  004519d9: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004519df: c3                                              ret
  00454520: b9 d0 4a 51 00                                  mov    ecx,0x514ad0
  00454525: e9 36 a3 ff ff                                  jmp    0x44e860
  00459430: 68 18 4d 51 00                                  push   0x514d18
  00459435: c7 05 10 4d 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x514d10,0x4de58c
  0045943f: c7 05 14 4d 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x514d14,0xffffffff
  00459449: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0045944f: c3                                              ret
  00459490: 55                                              push   ebp
  00459491: 8b ec                                           mov    ebp,esp
  00459493: 51                                              push   ecx
  00459494: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00459497: a2 00 4d 51 00                                  mov    ds:0x514d00,al
  0045949c: 33 c0                                           xor    eax,eax
  0045949e: a3 04 4d 51 00                                  mov    ds:0x514d04,eax
  004594a3: a3 08 4d 51 00                                  mov    ds:0x514d08,eax
  004594a8: a3 0c 4d 51 00                                  mov    ds:0x514d0c,eax
  004594ad: 8b e5                                           mov    esp,ebp
  004594af: 5d                                              pop    ebp
  004594b0: c3                                              ret
  00459540: b9 e8 4c 51 00                                  mov    ecx,0x514ce8
  00459545: e9 36 00 00 00                                  jmp    0x459580
  00459580: 8b c1                                           mov    eax,ecx
  00459582: c7 00 18 f4 4d 00                               mov    DWORD PTR [eax],0x4df418
  00459588: c3                                              ret
  00459bc0: 55                                              push   ebp
  00459bc1: 8b ec                                           mov    ebp,esp
  00459bc3: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00459bc6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00459bc9: 89 08                                           mov    DWORD PTR [eax],ecx
  00459bcb: 5d                                              pop    ebp
  00459bcc: c2 04 00                                        ret    0x4
  00459c70: 55                                              push   ebp
  00459c71: 8b ec                                           mov    ebp,esp
  00459c73: 8b c1                                           mov    eax,ecx
  00459c75: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00459c78: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00459c7a: 89 10                                           mov    DWORD PTR [eax],edx
  00459c7c: 5d                                              pop    ebp
  00459c7d: c2 04 00                                        ret    0x4
  00459fd0: 55                                              push   ebp
  00459fd1: 8b ec                                           mov    ebp,esp
  00459fd3: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00459fd5: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00459fd8: 8d 14 88                                        lea    edx,[eax+ecx*4]
  00459fdb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00459fde: 89 10                                           mov    DWORD PTR [eax],edx
  00459fe0: 5d                                              pop    ebp
  00459fe1: c2 08 00                                        ret    0x8
  00459ff0: 55                                              push   ebp
  00459ff1: 8b ec                                           mov    ebp,esp
  00459ff3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00459ff6: 85 c0                                           test   eax,eax
  00459ff8: 76 1c                                           jbe    0x45a016
  00459ffa: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00459ffd: 8b c8                                           mov    ecx,eax
  00459fff: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045a002: 56                                              push   esi
  0045a003: 85 c0                                           test   eax,eax
  0045a005: 74 04                                           je     0x45a00b
  0045a007: 8b 32                                           mov    esi,DWORD PTR [edx]
  0045a009: 89 30                                           mov    DWORD PTR [eax],esi
  0045a00b: 83 c0 04                                        add    eax,0x4
  0045a00e: 49                                              dec    ecx
  0045a00f: 75 f2                                           jne    0x45a003
  0045a011: 5e                                              pop    esi
  0045a012: 5d                                              pop    ebp
  0045a013: c2 0c 00                                        ret    0xc
  0045a016: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045a019: 5d                                              pop    ebp
  0045a01a: c2 0c 00                                        ret    0xc
  0045a020: 55                                              push   ebp
  0045a021: 8b ec                                           mov    ebp,esp
  0045a023: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0045a026: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0045a028: 8d 14 85 00 00 00 00                            lea    edx,[eax*4+0x0]
  0045a02f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045a032: 2b ca                                           sub    ecx,edx
  0045a034: 89 08                                           mov    DWORD PTR [eax],ecx
  0045a036: 5d                                              pop    ebp
  0045a037: c2 08 00                                        ret    0x8
  0045a070: 55                                              push   ebp
  0045a071: 8b ec                                           mov    ebp,esp
  0045a073: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0045a076: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0045a079: 3b ca                                           cmp    ecx,edx
  0045a07b: 74 1b                                           je     0x45a098
  0045a07d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045a080: 56                                              push   esi
  0045a081: 85 c0                                           test   eax,eax
  0045a083: 74 04                                           je     0x45a089
  0045a085: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0045a087: 89 30                                           mov    DWORD PTR [eax],esi
  0045a089: 83 c1 04                                        add    ecx,0x4
  0045a08c: 83 c0 04                                        add    eax,0x4
  0045a08f: 3b ca                                           cmp    ecx,edx
  0045a091: 75 ee                                           jne    0x45a081
  0045a093: 5e                                              pop    esi
  0045a094: 5d                                              pop    ebp
  0045a095: c2 0c 00                                        ret    0xc
  0045a098: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045a09b: 5d                                              pop    ebp
  0045a09c: c2 0c 00                                        ret    0xc
  0045a0a0: 55                                              push   ebp
  0045a0a1: 8b ec                                           mov    ebp,esp
  0045a0a3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045a0a6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0045a0a9: 3b c1                                           cmp    eax,ecx
  0045a0ab: 74 10                                           je     0x45a0bd
  0045a0ad: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0045a0b0: 56                                              push   esi
  0045a0b1: 8b 32                                           mov    esi,DWORD PTR [edx]
  0045a0b3: 89 30                                           mov    DWORD PTR [eax],esi
  0045a0b5: 83 c0 04                                        add    eax,0x4
  0045a0b8: 3b c1                                           cmp    eax,ecx
  0045a0ba: 75 f5                                           jne    0x45a0b1
  0045a0bc: 5e                                              pop    esi
  0045a0bd: 5d                                              pop    ebp
  0045a0be: c3                                              ret
  0045a0c0: 55                                              push   ebp
  0045a0c1: 8b ec                                           mov    ebp,esp
  0045a0c3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0045a0c6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045a0c9: 3b d0                                           cmp    edx,eax
  0045a0cb: 74 1b                                           je     0x45a0e8
  0045a0cd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0045a0d0: 56                                              push   esi
  0045a0d1: 8b 70 fc                                        mov    esi,DWORD PTR [eax-0x4]
  0045a0d4: 83 e8 04                                        sub    eax,0x4
  0045a0d7: 83 e9 04                                        sub    ecx,0x4
  0045a0da: 3b c2                                           cmp    eax,edx
  0045a0dc: 89 31                                           mov    DWORD PTR [ecx],esi
  0045a0de: 75 f1                                           jne    0x45a0d1
  0045a0e0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045a0e3: 89 08                                           mov    DWORD PTR [eax],ecx
  0045a0e5: 5e                                              pop    esi
  0045a0e6: 5d                                              pop    ebp
  0045a0e7: c3                                              ret
  0045a0e8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045a0eb: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0045a0ee: 89 08                                           mov    DWORD PTR [eax],ecx
  0045a0f0: 5d                                              pop    ebp
  0045a0f1: c3                                              ret
  0045ff20: b9 40 4d 51 00                                  mov    ecx,0x514d40
  0045ff25: e9 ee 1b 07 00                                  jmp    0x4d1b18
  00460a30: b9 60 4d 51 00                                  mov    ecx,0x514d60
  00460a35: e9 56 02 00 00                                  jmp    0x460c90
  00463590: 68 c0 5d 51 00                                  push   0x515dc0
  00463595: c7 05 b8 5d 51 00 8c e5 4d 00                   mov    DWORD PTR ds:0x515db8,0x4de58c
  0046359f: c7 05 bc 5d 51 00 ff ff ff ff                   mov    DWORD PTR ds:0x515dbc,0xffffffff
  004635a9: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004635af: c3                                              ret
  00463600: b9 b4 5d 51 00                                  mov    ecx,0x515db4
  00463605: e9 26 04 00 00                                  jmp    0x463a30
  00463640: 55                                              push   ebp
  00463641: 8b ec                                           mov    ebp,esp
  00463643: 51                                              push   ecx
  00463644: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00463647: 6a 24                                           push   0x24
  00463649: a2 a8 5d 51 00                                  mov    ds:0x515da8,al
  0046364e: e8 9d e9 fd ff                                  call   0x441ff0
  00463653: 89 00                                           mov    DWORD PTR [eax],eax
  00463655: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00463658: 83 c4 04                                        add    esp,0x4
  0046365b: a3 ac 5d 51 00                                  mov    ds:0x515dac,eax
  00463660: c7 05 b0 5d 51 00 00 00 00 00                   mov    DWORD PTR ds:0x515db0,0x0
  0046366a: 8b e5                                           mov    esp,ebp
  0046366c: 5d                                              pop    ebp
  0046366d: c3                                              ret
  00471e10: b9 40 5e 51 00                                  mov    ecx,0x515e40
  00471e15: e9 96 36 fd ff                                  jmp    0x4454b0
  00472020: b9 f0 5d 51 00                                  mov    ecx,0x515df0
  00472025: e9 06 11 00 00                                  jmp    0x473130
  00476f50: 55                                              push   ebp
  00476f51: 8b ec                                           mov    ebp,esp
  00476f53: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00476f56: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476f59: 89 08                                           mov    DWORD PTR [eax],ecx
  00476f5b: 5d                                              pop    ebp
  00476f5c: c2 04 00                                        ret    0x4
  00476fc0: 55                                              push   ebp
  00476fc1: 8b ec                                           mov    ebp,esp
  00476fc3: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00476fc6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476fc9: 89 08                                           mov    DWORD PTR [eax],ecx
  00476fcb: 5d                                              pop    ebp
  00476fcc: c2 04 00                                        ret    0x4
  004773c0: 55                                              push   ebp
  004773c1: 8b ec                                           mov    ebp,esp
  004773c3: 8b c1                                           mov    eax,ecx
  004773c5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004773c8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004773ca: 89 10                                           mov    DWORD PTR [eax],edx
  004773cc: 5d                                              pop    ebp
  004773cd: c2 04 00                                        ret    0x4
  004773d0: 55                                              push   ebp
  004773d1: 8b ec                                           mov    ebp,esp
  004773d3: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004773d5: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004773d8: 8d 14 88                                        lea    edx,[eax+ecx*4]
  004773db: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004773de: 89 10                                           mov    DWORD PTR [eax],edx
  004773e0: 5d                                              pop    ebp
  004773e1: c2 08 00                                        ret    0x8
  00477760: 55                                              push   ebp
  00477761: 8b ec                                           mov    ebp,esp
  00477763: 8b c1                                           mov    eax,ecx
  00477765: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00477768: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0047776a: 89 10                                           mov    DWORD PTR [eax],edx
  0047776c: 5d                                              pop    ebp
  0047776d: c2 04 00                                        ret    0x4
  00477770: 55                                              push   ebp
  00477771: 8b ec                                           mov    ebp,esp
  00477773: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00477776: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00477778: c1 e2 04                                        shl    edx,0x4
  0047777b: 03 d0                                           add    edx,eax
  0047777d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477780: 89 10                                           mov    DWORD PTR [eax],edx
  00477782: 5d                                              pop    ebp
  00477783: c2 08 00                                        ret    0x8
  004777d0: 55                                              push   ebp
  004777d1: 8b ec                                           mov    ebp,esp
  004777d3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004777d6: 85 c0                                           test   eax,eax
  004777d8: 76 1c                                           jbe    0x4777f6
  004777da: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004777dd: 8b c8                                           mov    ecx,eax
  004777df: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004777e2: 56                                              push   esi
  004777e3: 85 c0                                           test   eax,eax
  004777e5: 74 04                                           je     0x4777eb
  004777e7: 8b 32                                           mov    esi,DWORD PTR [edx]
  004777e9: 89 30                                           mov    DWORD PTR [eax],esi
  004777eb: 83 c0 04                                        add    eax,0x4
  004777ee: 49                                              dec    ecx
  004777ef: 75 f2                                           jne    0x4777e3
  004777f1: 5e                                              pop    esi
  004777f2: 5d                                              pop    ebp
  004777f3: c2 0c 00                                        ret    0xc
  004777f6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004777f9: 5d                                              pop    ebp
  004777fa: c2 0c 00                                        ret    0xc
  00477800: 55                                              push   ebp
  00477801: 8b ec                                           mov    ebp,esp
  00477803: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00477806: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00477808: 8d 14 85 00 00 00 00                            lea    edx,[eax*4+0x0]
  0047780f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477812: 2b ca                                           sub    ecx,edx
  00477814: 89 08                                           mov    DWORD PTR [eax],ecx
  00477816: 5d                                              pop    ebp
  00477817: c2 08 00                                        ret    0x8
  00477820: 55                                              push   ebp
  00477821: 8b ec                                           mov    ebp,esp
  00477823: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00477826: 85 c0                                           test   eax,eax
  00477828: 76 36                                           jbe    0x477860
  0047782a: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0047782d: 53                                              push   ebx
  0047782e: 56                                              push   esi
  0047782f: 8b c8                                           mov    ecx,eax
  00477831: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477834: 57                                              push   edi
  00477835: 85 c0                                           test   eax,eax
  00477837: 74 1a                                           je     0x477853
  00477839: 8b f2                                           mov    esi,edx
  0047783b: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0047783d: 8b f8                                           mov    edi,eax
  0047783f: 89 1f                                           mov    DWORD PTR [edi],ebx
  00477841: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00477844: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00477847: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  0047784a: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  0047784d: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  00477850: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00477853: 83 c0 10                                        add    eax,0x10
  00477856: 49                                              dec    ecx
  00477857: 75 dc                                           jne    0x477835
  00477859: 5f                                              pop    edi
  0047785a: 5e                                              pop    esi
  0047785b: 5b                                              pop    ebx
  0047785c: 5d                                              pop    ebp
  0047785d: c2 0c 00                                        ret    0xc
  00477860: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477863: 5d                                              pop    ebp
  00477864: c2 0c 00                                        ret    0xc
  00477870: 55                                              push   ebp
  00477871: 8b ec                                           mov    ebp,esp
  00477873: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00477876: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00477878: c1 e0 04                                        shl    eax,0x4
  0047787b: 2b c8                                           sub    ecx,eax
  0047787d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477880: 89 08                                           mov    DWORD PTR [eax],ecx
  00477882: 5d                                              pop    ebp
  00477883: c2 08 00                                        ret    0x8
  00477b80: 55                                              push   ebp
  00477b81: 8b ec                                           mov    ebp,esp
  00477b83: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00477b86: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00477b89: 3b ca                                           cmp    ecx,edx
  00477b8b: 74 1b                                           je     0x477ba8
  00477b8d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00477b90: 56                                              push   esi
  00477b91: 85 c0                                           test   eax,eax
  00477b93: 74 04                                           je     0x477b99
  00477b95: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00477b97: 89 30                                           mov    DWORD PTR [eax],esi
  00477b99: 83 c1 04                                        add    ecx,0x4
  00477b9c: 83 c0 04                                        add    eax,0x4
  00477b9f: 3b ca                                           cmp    ecx,edx
  00477ba1: 75 ee                                           jne    0x477b91
  00477ba3: 5e                                              pop    esi
  00477ba4: 5d                                              pop    ebp
  00477ba5: c2 0c 00                                        ret    0xc
  00477ba8: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00477bab: 5d                                              pop    ebp
  00477bac: c2 0c 00                                        ret    0xc
  00477bb0: 55                                              push   ebp
  00477bb1: 8b ec                                           mov    ebp,esp
  00477bb3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477bb6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00477bb9: 3b c1                                           cmp    eax,ecx
  00477bbb: 74 10                                           je     0x477bcd
  00477bbd: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00477bc0: 56                                              push   esi
  00477bc1: 8b 32                                           mov    esi,DWORD PTR [edx]
  00477bc3: 89 30                                           mov    DWORD PTR [eax],esi
  00477bc5: 83 c0 04                                        add    eax,0x4
  00477bc8: 3b c1                                           cmp    eax,ecx
  00477bca: 75 f5                                           jne    0x477bc1
  00477bcc: 5e                                              pop    esi
  00477bcd: 5d                                              pop    ebp
  00477bce: c3                                              ret
  00477bd0: 55                                              push   ebp
  00477bd1: 8b ec                                           mov    ebp,esp
  00477bd3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00477bd6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00477bd9: 3b d0                                           cmp    edx,eax
  00477bdb: 74 1b                                           je     0x477bf8
  00477bdd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00477be0: 56                                              push   esi
  00477be1: 8b 70 fc                                        mov    esi,DWORD PTR [eax-0x4]
  00477be4: 83 e8 04                                        sub    eax,0x4
  00477be7: 83 e9 04                                        sub    ecx,0x4
  00477bea: 3b c2                                           cmp    eax,edx
  00477bec: 89 31                                           mov    DWORD PTR [ecx],esi
  00477bee: 75 f1                                           jne    0x477be1
  00477bf0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477bf3: 89 08                                           mov    DWORD PTR [eax],ecx
  00477bf5: 5e                                              pop    esi
  00477bf6: 5d                                              pop    ebp
  00477bf7: c3                                              ret
  00477bf8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477bfb: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00477bfe: 89 08                                           mov    DWORD PTR [eax],ecx
  00477c00: 5d                                              pop    ebp
  00477c01: c3                                              ret
  00477c10: 55                                              push   ebp
  00477c11: 8b ec                                           mov    ebp,esp
  00477c13: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00477c16: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00477c19: 3b ca                                           cmp    ecx,edx
  00477c1b: 74 35                                           je     0x477c52
  00477c1d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00477c20: 53                                              push   ebx
  00477c21: 56                                              push   esi
  00477c22: 57                                              push   edi
  00477c23: 85 c0                                           test   eax,eax
  00477c25: 74 1a                                           je     0x477c41
  00477c27: 8b f1                                           mov    esi,ecx
  00477c29: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00477c2b: 8b f8                                           mov    edi,eax
  00477c2d: 89 1f                                           mov    DWORD PTR [edi],ebx
  00477c2f: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00477c32: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00477c35: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00477c38: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00477c3b: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  00477c3e: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00477c41: 83 c1 10                                        add    ecx,0x10
  00477c44: 83 c0 10                                        add    eax,0x10
  00477c47: 3b ca                                           cmp    ecx,edx
  00477c49: 75 d8                                           jne    0x477c23
  00477c4b: 5f                                              pop    edi
  00477c4c: 5e                                              pop    esi
  00477c4d: 5b                                              pop    ebx
  00477c4e: 5d                                              pop    ebp
  00477c4f: c2 0c 00                                        ret    0xc
  00477c52: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00477c55: 5d                                              pop    ebp
  00477c56: c2 0c 00                                        ret    0xc
  00477c60: 55                                              push   ebp
  00477c61: 8b ec                                           mov    ebp,esp
  00477c63: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477c66: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00477c69: 3b c1                                           cmp    eax,ecx
  00477c6b: 74 2a                                           je     0x477c97
  00477c6d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00477c70: 53                                              push   ebx
  00477c71: 56                                              push   esi
  00477c72: 57                                              push   edi
  00477c73: 8b f2                                           mov    esi,edx
  00477c75: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00477c77: 8b f8                                           mov    edi,eax
  00477c79: 89 1f                                           mov    DWORD PTR [edi],ebx
  00477c7b: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00477c7e: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00477c81: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00477c84: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00477c87: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  00477c8a: 83 c0 10                                        add    eax,0x10
  00477c8d: 3b c1                                           cmp    eax,ecx
  00477c8f: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00477c92: 75 df                                           jne    0x477c73
  00477c94: 5f                                              pop    edi
  00477c95: 5e                                              pop    esi
  00477c96: 5b                                              pop    ebx
  00477c97: 5d                                              pop    ebp
  00477c98: c3                                              ret
  00477ca0: 55                                              push   ebp
  00477ca1: 8b ec                                           mov    ebp,esp
  00477ca3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00477ca6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00477ca9: 3b d0                                           cmp    edx,eax
  00477cab: 74 34                                           je     0x477ce1
  00477cad: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00477cb0: 53                                              push   ebx
  00477cb1: 56                                              push   esi
  00477cb2: 57                                              push   edi
  00477cb3: 83 e8 10                                        sub    eax,0x10
  00477cb6: 83 e9 10                                        sub    ecx,0x10
  00477cb9: 3b c2                                           cmp    eax,edx
  00477cbb: 8b f0                                           mov    esi,eax
  00477cbd: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00477cbf: 8b f9                                           mov    edi,ecx
  00477cc1: 89 1f                                           mov    DWORD PTR [edi],ebx
  00477cc3: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00477cc6: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00477cc9: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00477ccc: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00477ccf: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  00477cd2: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00477cd5: 75 dc                                           jne    0x477cb3
  00477cd7: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477cda: 5f                                              pop    edi
  00477cdb: 5e                                              pop    esi
  00477cdc: 89 08                                           mov    DWORD PTR [eax],ecx
  00477cde: 5b                                              pop    ebx
  00477cdf: 5d                                              pop    ebp
  00477ce0: c3                                              ret
  00477ce1: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00477ce4: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00477ce7: 89 08                                           mov    DWORD PTR [eax],ecx
  00477ce9: 5d                                              pop    ebp
  00477cea: c3                                              ret
  004782a0: b9 a0 62 51 00                                  mov    ecx,0x5162a0
  004782a5: e9 e6 d4 00 00                                  jmp    0x485790
  004782f0: b9 8c 62 51 00                                  mov    ecx,0x51628c
  004782f5: e9 64 97 05 00                                  jmp    0x4d1a5e
  00478330: b9 88 62 51 00                                  mov    ecx,0x516288
  00478335: e9 24 97 05 00                                  jmp    0x4d1a5e
  00478370: b9 58 62 51 00                                  mov    ecx,0x516258
  00478375: e9 a6 00 00 00                                  jmp    0x478420
  00478420: 55                                              push   ebp
  00478421: 8b ec                                           mov    ebp,esp
  00478423: 6a ff                                           push   0xffffffff
  00478425: 68 69 91 4d 00                                  push   0x4d9169
  0047842a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00478430: 50                                              push   eax
  00478431: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00478438: 51                                              push   ecx
  00478439: 56                                              push   esi
  0047843a: 8b f1                                           mov    esi,ecx
  0047843c: 8d 46 08                                        lea    eax,[esi+0x8]
  0047843f: 50                                              push   eax
  00478440: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  00478443: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00478449: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00478450: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  00478456: 8d 4e 20                                        lea    ecx,[esi+0x20]
  00478459: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00478460: e8 f9 95 05 00                                  call   0x4d1a5e
  00478465: 8d 4e 24                                        lea    ecx,[esi+0x24]
  00478468: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0047846c: e8 ed 95 05 00                                  call   0x4d1a5e
  00478471: 8d 4e 28                                        lea    ecx,[esi+0x28]
  00478474: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00478478: e8 e1 95 05 00                                  call   0x4d1a5e
  0047847d: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  00478480: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00478484: e8 d5 95 05 00                                  call   0x4d1a5e
  00478489: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0047848c: c7 06 e8 f5 4d 00                               mov    DWORD PTR [esi],0x4df5e8
  00478492: 8b c6                                           mov    eax,esi
  00478494: 5e                                              pop    esi
  00478495: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0047849c: 8b e5                                           mov    esp,ebp
  0047849e: 5d                                              pop    ebp
  0047849f: c3                                              ret
  004784e0: b9 28 62 51 00                                  mov    ecx,0x516228
  004784e5: e9 86 00 00 00                                  jmp    0x478570
  00478570: 55                                              push   ebp
  00478571: 8b ec                                           mov    ebp,esp
  00478573: 51                                              push   ecx
  00478574: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  00478577: 56                                              push   esi
  00478578: 8b f1                                           mov    esi,ecx
  0047857a: 88 46 20                                        mov    BYTE PTR [esi+0x20],al
  0047857d: 33 c0                                           xor    eax,eax
  0047857f: 8d 4e 08                                        lea    ecx,[esi+0x8]
  00478582: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00478585: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00478588: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0047858b: 51                                              push   ecx
  0047858c: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00478592: c7 46 04 ff ff ff ff                            mov    DWORD PTR [esi+0x4],0xffffffff
  00478599: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0047859f: c7 06 f8 f5 4d 00                               mov    DWORD PTR [esi],0x4df5f8
  004785a5: 8b c6                                           mov    eax,esi
  004785a7: 5e                                              pop    esi
  004785a8: 8b e5                                           mov    esp,ebp
  004785aa: 5d                                              pop    ebp
  004785ab: c3                                              ret
  00478620: b9 90 5e 51 00                                  mov    ecx,0x515e90
  00478625: e9 36 62 fd ff                                  jmp    0x44e860
  00485060: 55                                              push   ebp
  00485061: 8b ec                                           mov    ebp,esp
  00485063: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00485066: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00485069: 89 08                                           mov    DWORD PTR [eax],ecx
  0048506b: 5d                                              pop    ebp
  0048506c: c2 04 00                                        ret    0x4
  004851d0: 55                                              push   ebp
  004851d1: 8b ec                                           mov    ebp,esp
  004851d3: 8b c1                                           mov    eax,ecx
  004851d5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004851d8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004851da: 89 10                                           mov    DWORD PTR [eax],edx
  004851dc: 5d                                              pop    ebp
  004851dd: c2 04 00                                        ret    0x4
  00485670: 55                                              push   ebp
  00485671: 8b ec                                           mov    ebp,esp
  00485673: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00485675: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00485678: 8d 14 c8                                        lea    edx,[eax+ecx*8]
  0048567b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0048567e: 89 10                                           mov    DWORD PTR [eax],edx
  00485680: 5d                                              pop    ebp
  00485681: c2 08 00                                        ret    0x8
  00485690: 55                                              push   ebp
  00485691: 8b ec                                           mov    ebp,esp
  00485693: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00485696: 8b 10                                           mov    edx,DWORD PTR [eax]
  00485698: 56                                              push   esi
  00485699: 8b f1                                           mov    esi,ecx
  0048569b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0048569e: 57                                              push   edi
  0048569f: 8b 38                                           mov    edi,DWORD PTR [eax]
  004856a1: 89 11                                           mov    DWORD PTR [ecx],edx
  004856a3: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004856a5: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004856a8: 50                                              push   eax
  004856a9: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004856ac: e8 af c9 fb ff                                  call   0x442060
  004856b1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004856b4: 83 c4 04                                        add    esp,0x4
  004856b7: 48                                              dec    eax
  004856b8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004856bb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004856be: 89 38                                           mov    DWORD PTR [eax],edi
  004856c0: 5f                                              pop    edi
  004856c1: 5e                                              pop    esi
  004856c2: 5d                                              pop    ebp
  004856c3: c2 08 00                                        ret    0x8
  004856d0: 55                                              push   ebp
  004856d1: 8b ec                                           mov    ebp,esp
  004856d3: 6a ff                                           push   0xffffffff
  004856d5: 68 d1 a2 4d 00                                  push   0x4da2d1
  004856da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004856e0: 50                                              push   eax
  004856e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004856e8: 83 ec 08                                        sub    esp,0x8
  004856eb: 53                                              push   ebx
  004856ec: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004856ef: 56                                              push   esi
  004856f0: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004856f3: 57                                              push   edi
  004856f4: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004856f7: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004856fa: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004856fd: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00485704: 85 ff                                           test   edi,edi
  00485706: 76 49                                           jbe    0x485751
  00485708: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0048570b: 85 f6                                           test   esi,esi
  0048570d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00485711: 74 10                                           je     0x485723
  00485713: 53                                              push   ebx
  00485714: 8b ce                                           mov    ecx,esi
  00485716: e8 31 c3 04 00                                  call   0x4d1a4c
  0048571b: 66 8b 43 04                                     mov    ax,WORD PTR [ebx+0x4]
  0048571f: 66 89 46 04                                     mov    WORD PTR [esi+0x4],ax
  00485723: 4f                                              dec    edi
  00485724: 83 c6 08                                        add    esi,0x8
  00485727: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0048572b: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0048572e: eb d4                                           jmp    0x485704
  00485751: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00485754: 5f                                              pop    edi
  00485755: 8b c6                                           mov    eax,esi
  00485757: 5e                                              pop    esi
  00485758: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0048575f: 5b                                              pop    ebx
  00485760: 8b e5                                           mov    esp,ebp
  00485762: 5d                                              pop    ebp
  00485763: c2 0c 00                                        ret    0xc
  00485770: 55                                              push   ebp
  00485771: 8b ec                                           mov    ebp,esp
  00485773: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00485776: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00485778: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  0048577f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00485782: 2b ca                                           sub    ecx,edx
  00485784: 89 08                                           mov    DWORD PTR [eax],ecx
  00485786: 5d                                              pop    ebp
  00485787: c2 08 00                                        ret    0x8
  00485af0: 55                                              push   ebp
  00485af1: 8b ec                                           mov    ebp,esp
  00485af3: 6a ff                                           push   0xffffffff
  00485af5: 68 f1 a2 4d 00                                  push   0x4da2f1
  00485afa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00485b00: 50                                              push   eax
  00485b01: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00485b08: 83 ec 08                                        sub    esp,0x8
  00485b0b: 53                                              push   ebx
  00485b0c: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00485b0f: 56                                              push   esi
  00485b10: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00485b13: 57                                              push   edi
  00485b14: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00485b17: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00485b1a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00485b1d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00485b24: 3b fb                                           cmp    edi,ebx
  00485b26: 74 4b                                           je     0x485b73
  00485b28: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  00485b2b: 85 f6                                           test   esi,esi
  00485b2d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00485b31: 74 10                                           je     0x485b43
  00485b33: 57                                              push   edi
  00485b34: 8b ce                                           mov    ecx,esi
  00485b36: e8 11 bf 04 00                                  call   0x4d1a4c
  00485b3b: 66 8b 47 04                                     mov    ax,WORD PTR [edi+0x4]
  00485b3f: 66 89 46 04                                     mov    WORD PTR [esi+0x4],ax
  00485b43: 83 c6 08                                        add    esi,0x8
  00485b46: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  00485b4a: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  00485b4d: 83 c7 08                                        add    edi,0x8
  00485b50: eb d2                                           jmp    0x485b24
  00485b73: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00485b76: 5f                                              pop    edi
  00485b77: 8b c6                                           mov    eax,esi
  00485b79: 5e                                              pop    esi
  00485b7a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00485b81: 5b                                              pop    ebx
  00485b82: 8b e5                                           mov    esp,ebp
  00485b84: 5d                                              pop    ebp
  00485b85: c2 0c 00                                        ret    0xc
  00485b90: 55                                              push   ebp
  00485b91: 8b ec                                           mov    ebp,esp
  00485b93: 53                                              push   ebx
  00485b94: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00485b97: 56                                              push   esi
  00485b98: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00485b9b: 3b f3                                           cmp    esi,ebx
  00485b9d: 74 1c                                           je     0x485bbb
  00485b9f: 57                                              push   edi
  00485ba0: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00485ba3: 57                                              push   edi
  00485ba4: 8b ce                                           mov    ecx,esi
  00485ba6: e8 9b be 04 00                                  call   0x4d1a46
  00485bab: 66 8b 47 04                                     mov    ax,WORD PTR [edi+0x4]
  00485baf: 66 89 46 04                                     mov    WORD PTR [esi+0x4],ax
  00485bb3: 83 c6 08                                        add    esi,0x8
  00485bb6: 3b f3                                           cmp    esi,ebx
  00485bb8: 75 e9                                           jne    0x485ba3
  00485bba: 5f                                              pop    edi
  00485bbb: 5e                                              pop    esi
  00485bbc: 5b                                              pop    ebx
  00485bbd: 5d                                              pop    ebp
  00485bbe: c3                                              ret
  00485bc0: 55                                              push   ebp
  00485bc1: 8b ec                                           mov    ebp,esp
  00485bc3: 53                                              push   ebx
  00485bc4: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00485bc7: 56                                              push   esi
  00485bc8: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00485bcb: 3b de                                           cmp    ebx,esi
  00485bcd: 74 28                                           je     0x485bf7
  00485bcf: 57                                              push   edi
  00485bd0: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  00485bd3: 83 ee 08                                        sub    esi,0x8
  00485bd6: 83 ef 08                                        sub    edi,0x8
  00485bd9: 56                                              push   esi
  00485bda: 8b cf                                           mov    ecx,edi
  00485bdc: e8 65 be 04 00                                  call   0x4d1a46
  00485be1: 3b f3                                           cmp    esi,ebx
  00485be3: 66 8b 46 04                                     mov    ax,WORD PTR [esi+0x4]
  00485be7: 66 89 47 04                                     mov    WORD PTR [edi+0x4],ax
  00485beb: 75 e6                                           jne    0x485bd3
  00485bed: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00485bf0: 89 38                                           mov    DWORD PTR [eax],edi
  00485bf2: 5f                                              pop    edi
  00485bf3: 5e                                              pop    esi
  00485bf4: 5b                                              pop    ebx
  00485bf5: 5d                                              pop    ebp
  00485bf6: c3                                              ret
  00485bf7: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00485bfa: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00485bfd: 5e                                              pop    esi
  00485bfe: 89 08                                           mov    DWORD PTR [eax],ecx
  00485c00: 5b                                              pop    ebx
  00485c01: 5d                                              pop    ebp
  00485c02: c3                                              ret
  00488bc0: b9 58 63 51 00                                  mov    ecx,0x516358
  00488bc5: e9 36 00 00 00                                  jmp    0x488c00
  00489c30: b9 b0 63 51 00                                  mov    ecx,0x5163b0
  00489c35: e9 26 65 00 00                                  jmp    0x490160
  00490ad0: b9 00 64 55 00                                  mov    ecx,0x556400
  00490ad5: e9 a6 02 00 00                                  jmp    0x490d80
  00490ff0: b9 50 64 55 00                                  mov    ecx,0x556450
  00490ff5: e9 36 00 00 00                                  jmp    0x491030
  00491030: 56                                              push   esi
  00491031: 57                                              push   edi
  00491032: 68 90 e3 50 00                                  push   0x50e390
  00491037: 68 00 01 00 00                                  push   0x100
  0049103c: 6a 00                                           push   0x0
  0049103e: 6a 04                                           push   0x4
  00491040: 8b f1                                           mov    esi,ecx
  00491042: 6a 00                                           push   0x0
  00491044: 6a ff                                           push   0xffffffff
  00491046: c7 46 04 00 01 00 00                            mov    DWORD PTR [esi+0x4],0x100
  0049104d: c7 06 6c f8 4d 00                               mov    DWORD PTR [esi],0x4df86c
  00491053: ff 15 5c e1 4d 00                               call   DWORD PTR ds:0x4de15c
  00491059: 85 c0                                           test   eax,eax
  0049105b: 75 3b                                           jne    0x491098
  0049105d: 68 44 32 50 00                                  push   0x503244
  00491062: 68 84 e3 50 00                                  push   0x50e384
  00491067: ff 15 34 e3 4d 00                               call   DWORD PTR ds:0x4de334
  0049106d: 8b f8                                           mov    edi,eax
  0049106f: 83 c4 08                                        add    esp,0x8
  00491072: 85 ff                                           test   edi,edi
  00491074: 74 16                                           je     0x49108c
  00491076: 68 08 e3 50 00                                  push   0x50e308
  0049107b: 57                                              push   edi
  0049107c: ff 15 38 e3 4d 00                               call   DWORD PTR ds:0x4de338
  00491082: 57                                              push   edi
  00491083: ff 15 3c e3 4d 00                               call   DWORD PTR ds:0x4de33c
  00491089: 83 c4 0c                                        add    esp,0xc
  0049108c: 5f                                              pop    edi
  0049108d: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00491094: 8b c6                                           mov    eax,esi
  00491096: 5e                                              pop    esi
  00491097: c3                                              ret
  00491098: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049109b: 51                                              push   ecx
  0049109c: 6a 00                                           push   0x0
  0049109e: 6a 00                                           push   0x0
  004910a0: 6a 02                                           push   0x2
  004910a2: 50                                              push   eax
  004910a3: ff 15 58 e1 4d 00                               call   DWORD PTR ds:0x4de158
  004910a9: 85 c0                                           test   eax,eax
  004910ab: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004910ae: 75 34                                           jne    0x4910e4
  004910b0: 68 44 32 50 00                                  push   0x503244
  004910b5: 68 84 e3 50 00                                  push   0x50e384
  004910ba: ff 15 34 e3 4d 00                               call   DWORD PTR ds:0x4de334
  004910c0: 8b f8                                           mov    edi,eax
  004910c2: 83 c4 08                                        add    esp,0x8
  004910c5: 85 ff                                           test   edi,edi
  004910c7: 74 33                                           je     0x4910fc
  004910c9: 68 94 e2 50 00                                  push   0x50e294
  004910ce: 57                                              push   edi
  004910cf: ff 15 38 e3 4d 00                               call   DWORD PTR ds:0x4de338
  004910d5: 57                                              push   edi
  004910d6: ff 15 3c e3 4d 00                               call   DWORD PTR ds:0x4de33c
  004910dc: 83 c4 0c                                        add    esp,0xc
  004910df: 5f                                              pop    edi
  004910e0: 8b c6                                           mov    eax,esi
  004910e2: 5e                                              pop    esi
  004910e3: c3                                              ret
  004910e4: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004910e7: 33 c0                                           xor    eax,eax
  004910e9: 85 c9                                           test   ecx,ecx
  004910eb: 7e 0f                                           jle    0x4910fc
  004910ed: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004910f0: c6 04 02 00                                     mov    BYTE PTR [edx+eax*1],0x0
  004910f4: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004910f7: 40                                              inc    eax
  004910f8: 3b c1                                           cmp    eax,ecx
  004910fa: 7c f1                                           jl     0x4910ed
  004910fc: 5f                                              pop    edi
  004910fd: 8b c6                                           mov    eax,esi
  004910ff: 5e                                              pop    esi
  00491100: c3                                              ret
  004940b0: 55                                              push   ebp
  004940b1: 8b ec                                           mov    ebp,esp
  004940b3: 51                                              push   ecx
  004940b4: 53                                              push   ebx
  004940b5: 56                                              push   esi
  004940b6: 8b f1                                           mov    esi,ecx
  004940b8: 8b 46 4c                                        mov    eax,DWORD PTR [esi+0x4c]
  004940bb: 33 db                                           xor    ebx,ebx
  004940bd: 3b c3                                           cmp    eax,ebx
  004940bf: 57                                              push   edi
  004940c0: 74 1c                                           je     0x4940de
  004940c2: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004940c5: 8a 01                                           mov    al,BYTE PTR [ecx]
  004940c7: 84 c0                                           test   al,al
  004940c9: 74 0a                                           je     0x4940d5
  004940cb: 3c ff                                           cmp    al,0xff
  004940cd: 74 06                                           je     0x4940d5
  004940cf: fe c8                                           dec    al
  004940d1: 88 01                                           mov    BYTE PTR [ecx],al
  004940d3: eb 09                                           jmp    0x4940de
  004940d5: 51                                              push   ecx
  004940d6: e8 85 df fa ff                                  call   0x442060
  004940db: 83 c4 04                                        add    esp,0x4
  004940de: 89 5e 4c                                        mov    DWORD PTR [esi+0x4c],ebx
  004940e1: 89 5e 50                                        mov    DWORD PTR [esi+0x50],ebx
  004940e4: 89 5e 54                                        mov    DWORD PTR [esi+0x54],ebx
  004940e7: 8b 46 3c                                        mov    eax,DWORD PTR [esi+0x3c]
  004940ea: 3b c3                                           cmp    eax,ebx
  004940ec: 74 1c                                           je     0x49410a
  004940ee: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004940f1: 8a 01                                           mov    al,BYTE PTR [ecx]
  004940f3: 84 c0                                           test   al,al
  004940f5: 74 0a                                           je     0x494101
  004940f7: 3c ff                                           cmp    al,0xff
  004940f9: 74 06                                           je     0x494101
  004940fb: fe c8                                           dec    al
  004940fd: 88 01                                           mov    BYTE PTR [ecx],al
  004940ff: eb 09                                           jmp    0x49410a
  00494101: 51                                              push   ecx
  00494102: e8 59 df fa ff                                  call   0x442060
  00494107: 83 c4 04                                        add    esp,0x4
  0049410a: 89 5e 3c                                        mov    DWORD PTR [esi+0x3c],ebx
  0049410d: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  00494110: 89 5e 44                                        mov    DWORD PTR [esi+0x44],ebx
  00494113: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00494116: 3b c3                                           cmp    eax,ebx
  00494118: 74 0c                                           je     0x494126
  0049411a: 50                                              push   eax
  0049411b: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0049411e: e8 3d df fa ff                                  call   0x442060
  00494123: 83 c4 04                                        add    esp,0x4
  00494126: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  00494129: 89 5e 2c                                        mov    DWORD PTR [esi+0x2c],ebx
  0049412c: 89 5e 30                                        mov    DWORD PTR [esi+0x30],ebx
  0049412f: 8b 46 18                                        mov    eax,DWORD PTR [esi+0x18]
  00494132: 3b c3                                           cmp    eax,ebx
  00494134: 74 0c                                           je     0x494142
  00494136: 50                                              push   eax
  00494137: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0049413a: e8 21 df fa ff                                  call   0x442060
  0049413f: 83 c4 04                                        add    esp,0x4
  00494142: 89 5e 18                                        mov    DWORD PTR [esi+0x18],ebx
  00494145: 89 5e 1c                                        mov    DWORD PTR [esi+0x1c],ebx
  00494148: 89 5e 20                                        mov    DWORD PTR [esi+0x20],ebx
  0049414b: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  0049414e: 3b fb                                           cmp    edi,ebx
  00494150: 74 26                                           je     0x494178
  00494152: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  00494155: 3b fb                                           cmp    edi,ebx
  00494157: 74 11                                           je     0x49416a
  00494159: 6a 01                                           push   0x1
  0049415b: 8b cf                                           mov    ecx,edi
  0049415d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00494163: 83 c7 24                                        add    edi,0x24
  00494166: 3b fb                                           cmp    edi,ebx
  00494168: 75 ef                                           jne    0x494159
  0049416a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049416d: 50                                              push   eax
  0049416e: e8 ed de fa ff                                  call   0x442060
  00494173: 83 c4 04                                        add    esp,0x4
  00494176: 33 db                                           xor    ebx,ebx
  00494178: 5f                                              pop    edi
  00494179: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0049417c: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0049417f: 89 5e 10                                        mov    DWORD PTR [esi+0x10],ebx
  00494182: 5e                                              pop    esi
  00494183: 5b                                              pop    ebx
  00494184: 8b e5                                           mov    esp,ebp
  00494186: 5d                                              pop    ebp
  00494187: c3                                              ret
  00495510: 55                                              push   ebp
  00495511: 8b ec                                           mov    ebp,esp
  00495513: 8b c1                                           mov    eax,ecx
  00495515: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00495518: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049551a: 89 10                                           mov    DWORD PTR [eax],edx
  0049551c: 5d                                              pop    ebp
  0049551d: c2 04 00                                        ret    0x4
  00495f40: 55                                              push   ebp
  00495f41: 8b ec                                           mov    ebp,esp
  00495f43: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00495f46: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00495f48: c1 e2 04                                        shl    edx,0x4
  00495f4b: 03 d0                                           add    edx,eax
  00495f4d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00495f50: 89 10                                           mov    DWORD PTR [eax],edx
  00495f52: 5d                                              pop    ebp
  00495f53: c2 08 00                                        ret    0x8
  004974f0: 55                                              push   ebp
  004974f1: 8b ec                                           mov    ebp,esp
  004974f3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004974f6: 85 c0                                           test   eax,eax
  004974f8: 76 36                                           jbe    0x497530
  004974fa: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004974fd: 53                                              push   ebx
  004974fe: 56                                              push   esi
  004974ff: 8b c8                                           mov    ecx,eax
  00497501: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00497504: 57                                              push   edi
  00497505: 85 c0                                           test   eax,eax
  00497507: 74 1a                                           je     0x497523
  00497509: 8b f2                                           mov    esi,edx
  0049750b: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0049750d: 8b f8                                           mov    edi,eax
  0049750f: 89 1f                                           mov    DWORD PTR [edi],ebx
  00497511: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00497514: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00497517: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  0049751a: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  0049751d: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  00497520: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00497523: 83 c0 10                                        add    eax,0x10
  00497526: 49                                              dec    ecx
  00497527: 75 dc                                           jne    0x497505
  00497529: 5f                                              pop    edi
  0049752a: 5e                                              pop    esi
  0049752b: 5b                                              pop    ebx
  0049752c: 5d                                              pop    ebp
  0049752d: c2 0c 00                                        ret    0xc
  00497530: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00497533: 5d                                              pop    ebp
  00497534: c2 0c 00                                        ret    0xc
  00497540: 55                                              push   ebp
  00497541: 8b ec                                           mov    ebp,esp
  00497543: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00497546: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00497548: c1 e0 04                                        shl    eax,0x4
  0049754b: 2b c8                                           sub    ecx,eax
  0049754d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00497550: 89 08                                           mov    DWORD PTR [eax],ecx
  00497552: 5d                                              pop    ebp
  00497553: c2 08 00                                        ret    0x8
  00497800: 55                                              push   ebp
  00497801: 8b ec                                           mov    ebp,esp
  00497803: 6a ff                                           push   0xffffffff
  00497805: 68 bd ad 4d 00                                  push   0x4dadbd
  0049780a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00497810: 50                                              push   eax
  00497811: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00497818: 51                                              push   ecx
  00497819: 53                                              push   ebx
  0049781a: 56                                              push   esi
  0049781b: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0049781e: 8a 06                                           mov    al,BYTE PTR [esi]
  00497820: 57                                              push   edi
  00497821: 8b f9                                           mov    edi,ecx
  00497823: 88 07                                           mov    BYTE PTR [edi],al
  00497825: 8a 46 04                                        mov    al,BYTE PTR [esi+0x4]
  00497828: 8d 5f 04                                        lea    ebx,[edi+0x4]
  0049782b: 88 03                                           mov    BYTE PTR [ebx],al
  0049782d: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00497830: 33 c9                                           xor    ecx,ecx
  00497832: 3b c1                                           cmp    eax,ecx
  00497834: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  00497837: 75 04                                           jne    0x49783d
  00497839: 33 d2                                           xor    edx,edx
  0049783b: eb 16                                           jmp    0x497853
  0049783d: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00497840: 2b d0                                           sub    edx,eax
  00497842: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00497847: f7 ea                                           imul   edx
  00497849: c1 fa 03                                        sar    edx,0x3
  0049784c: 8b c2                                           mov    eax,edx
  0049784e: c1 e8 1f                                        shr    eax,0x1f
  00497851: 03 d0                                           add    edx,eax
  00497853: 3b d1                                           cmp    edx,ecx
  00497855: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00497858: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0049785b: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0049785e: 74 35                                           je     0x497895
  00497860: 8d 04 d2                                        lea    eax,[edx+edx*8]
  00497863: c1 e0 02                                        shl    eax,0x2
  00497866: 50                                              push   eax
  00497867: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0049786a: e8 81 a7 fa ff                                  call   0x441ff0
  0049786f: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00497872: 03 c8                                           add    ecx,eax
  00497874: 83 c4 04                                        add    esp,0x4
  00497877: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0049787a: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049787d: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00497880: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00497883: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00497886: 50                                              push   eax
  00497887: 51                                              push   ecx
  00497888: 52                                              push   edx
  00497889: 8b cb                                           mov    ecx,ebx
  0049788b: e8 90 10 00 00                                  call   0x498920
  00497890: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00497893: 33 c9                                           xor    ecx,ecx
  00497895: 8a 46 14                                        mov    al,BYTE PTR [esi+0x14]
  00497898: 8d 5f 14                                        lea    ebx,[edi+0x14]
  0049789b: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0049789e: 88 03                                           mov    BYTE PTR [ebx],al
  004978a0: 8b 56 18                                        mov    edx,DWORD PTR [esi+0x18]
  004978a3: 33 c9                                           xor    ecx,ecx
  004978a5: 3b d1                                           cmp    edx,ecx
  004978a7: 75 04                                           jne    0x4978ad
  004978a9: 33 c0                                           xor    eax,eax
  004978ab: eb 08                                           jmp    0x4978b5
  004978ad: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  004978b0: 2b c2                                           sub    eax,edx
  004978b2: c1 f8 04                                        sar    eax,0x4
  004978b5: 3b c1                                           cmp    eax,ecx
  004978b7: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004978ba: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004978bd: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  004978c0: 74 32                                           je     0x4978f4
  004978c2: c1 e0 04                                        shl    eax,0x4
  004978c5: 50                                              push   eax
  004978c6: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004978c9: e8 22 a7 fa ff                                  call   0x441ff0
  004978ce: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004978d1: 83 c4 04                                        add    esp,0x4
  004978d4: 03 d0                                           add    edx,eax
  004978d6: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004978d9: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004978dc: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004978df: 8b 4e 1c                                        mov    ecx,DWORD PTR [esi+0x1c]
  004978e2: 8b 56 18                                        mov    edx,DWORD PTR [esi+0x18]
  004978e5: 50                                              push   eax
  004978e6: 51                                              push   ecx
  004978e7: 52                                              push   edx
  004978e8: 8b cb                                           mov    ecx,ebx
  004978ea: e8 31 11 00 00                                  call   0x498a20
  004978ef: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004978f2: 33 c9                                           xor    ecx,ecx
  004978f4: 8a 46 24                                        mov    al,BYTE PTR [esi+0x24]
  004978f7: 8d 5f 24                                        lea    ebx,[edi+0x24]
  004978fa: 88 03                                           mov    BYTE PTR [ebx],al
  004978fc: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  004978ff: 3b c1                                           cmp    eax,ecx
  00497901: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00497905: 75 04                                           jne    0x49790b
  00497907: 33 d2                                           xor    edx,edx
  00497909: eb 15                                           jmp    0x497920
  0049790b: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  0049790e: 2b d0                                           sub    edx,eax
  00497910: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00497915: f7 ea                                           imul   edx
  00497917: d1 fa                                           sar    edx,1
  00497919: 8b c2                                           mov    eax,edx
  0049791b: c1 e8 1f                                        shr    eax,0x1f
  0049791e: 03 d0                                           add    edx,eax
  00497920: 3b d1                                           cmp    edx,ecx
  00497922: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00497925: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00497928: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0049792b: 74 33                                           je     0x497960
  0049792d: 8d 04 52                                        lea    eax,[edx+edx*2]
  00497930: c1 e0 02                                        shl    eax,0x2
  00497933: 50                                              push   eax
  00497934: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00497937: e8 b4 a6 fa ff                                  call   0x441ff0
  0049793c: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049793f: 03 c8                                           add    ecx,eax
  00497941: 83 c4 04                                        add    esp,0x4
  00497944: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00497947: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049794a: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0049794d: 8b 4e 2c                                        mov    ecx,DWORD PTR [esi+0x2c]
  00497950: 8b 56 28                                        mov    edx,DWORD PTR [esi+0x28]
  00497953: 50                                              push   eax
  00497954: 51                                              push   ecx
  00497955: 52                                              push   edx
  00497956: 8b cb                                           mov    ecx,ebx
  00497958: e8 13 11 00 00                                  call   0x498a70
  0049795d: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00497960: 8b 56 34                                        mov    edx,DWORD PTR [esi+0x34]
  00497963: 89 57 34                                        mov    DWORD PTR [edi+0x34],edx
  00497966: 8a 56 38                                        mov    dl,BYTE PTR [esi+0x38]
  00497969: 8d 46 38                                        lea    eax,[esi+0x38]
  0049796c: 8d 4f 38                                        lea    ecx,[edi+0x38]
  0049796f: 33 db                                           xor    ebx,ebx
  00497971: 88 11                                           mov    BYTE PTR [ecx],dl
  00497973: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  00497976: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  00497979: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  0049797c: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00497982: 8b 12                                           mov    edx,DWORD PTR [edx]
  00497984: 52                                              push   edx
  00497985: 53                                              push   ebx
  00497986: 50                                              push   eax
  00497987: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0049798b: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00497991: 8a 56 48                                        mov    dl,BYTE PTR [esi+0x48]
  00497994: 8d 46 48                                        lea    eax,[esi+0x48]
  00497997: 8d 4f 48                                        lea    ecx,[edi+0x48]
  0049799a: 88 11                                           mov    BYTE PTR [ecx],dl
  0049799c: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0049799f: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004979a2: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004979a5: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004979ab: 8b 12                                           mov    edx,DWORD PTR [edx]
  004979ad: 52                                              push   edx
  004979ae: 53                                              push   ebx
  004979af: 50                                              push   eax
  004979b0: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004979b4: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004979ba: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  004979bd: 89 47 58                                        mov    DWORD PTR [edi+0x58],eax
  004979c0: 8b 4e 5c                                        mov    ecx,DWORD PTR [esi+0x5c]
  004979c3: 89 4f 5c                                        mov    DWORD PTR [edi+0x5c],ecx
  004979c6: 8b 56 60                                        mov    edx,DWORD PTR [esi+0x60]
  004979c9: 89 57 60                                        mov    DWORD PTR [edi+0x60],edx
  004979cc: 8b 46 64                                        mov    eax,DWORD PTR [esi+0x64]
  004979cf: 89 47 64                                        mov    DWORD PTR [edi+0x64],eax
  004979d2: 8b 4e 68                                        mov    ecx,DWORD PTR [esi+0x68]
  004979d5: 89 4f 68                                        mov    DWORD PTR [edi+0x68],ecx
  004979d8: 8b 56 6c                                        mov    edx,DWORD PTR [esi+0x6c]
  004979db: 89 57 6c                                        mov    DWORD PTR [edi+0x6c],edx
  004979de: 8b 46 70                                        mov    eax,DWORD PTR [esi+0x70]
  004979e1: 89 47 70                                        mov    DWORD PTR [edi+0x70],eax
  004979e4: 8b 4e 74                                        mov    ecx,DWORD PTR [esi+0x74]
  004979e7: 89 4f 74                                        mov    DWORD PTR [edi+0x74],ecx
  004979ea: 8b 56 78                                        mov    edx,DWORD PTR [esi+0x78]
  004979ed: 89 57 78                                        mov    DWORD PTR [edi+0x78],edx
  004979f0: 8b 46 7c                                        mov    eax,DWORD PTR [esi+0x7c]
  004979f3: 89 47 7c                                        mov    DWORD PTR [edi+0x7c],eax
  004979f6: 8b 8e 80 00 00 00                               mov    ecx,DWORD PTR [esi+0x80]
  004979fc: 89 8f 80 00 00 00                               mov    DWORD PTR [edi+0x80],ecx
  00497a02: 8b 96 84 00 00 00                               mov    edx,DWORD PTR [esi+0x84]
  00497a08: 89 97 84 00 00 00                               mov    DWORD PTR [edi+0x84],edx
  00497a0e: 8b 86 88 00 00 00                               mov    eax,DWORD PTR [esi+0x88]
  00497a14: 89 87 88 00 00 00                               mov    DWORD PTR [edi+0x88],eax
  00497a1a: 8b 8e 8c 00 00 00                               mov    ecx,DWORD PTR [esi+0x8c]
  00497a20: 89 8f 8c 00 00 00                               mov    DWORD PTR [edi+0x8c],ecx
  00497a26: 8b 96 90 00 00 00                               mov    edx,DWORD PTR [esi+0x90]
  00497a2c: 89 97 90 00 00 00                               mov    DWORD PTR [edi+0x90],edx
  00497a32: 8b 86 94 00 00 00                               mov    eax,DWORD PTR [esi+0x94]
  00497a38: 89 87 94 00 00 00                               mov    DWORD PTR [edi+0x94],eax
  00497a3e: 8b 8e 98 00 00 00                               mov    ecx,DWORD PTR [esi+0x98]
  00497a44: 89 8f 98 00 00 00                               mov    DWORD PTR [edi+0x98],ecx
  00497a4a: 8b 96 9c 00 00 00                               mov    edx,DWORD PTR [esi+0x9c]
  00497a50: 89 97 9c 00 00 00                               mov    DWORD PTR [edi+0x9c],edx
  00497a56: 8b 86 a0 00 00 00                               mov    eax,DWORD PTR [esi+0xa0]
  00497a5c: 89 87 a0 00 00 00                               mov    DWORD PTR [edi+0xa0],eax
  00497a62: 8b 8e a4 00 00 00                               mov    ecx,DWORD PTR [esi+0xa4]
  00497a68: 89 8f a4 00 00 00                               mov    DWORD PTR [edi+0xa4],ecx
  00497a6e: 8b 96 a8 00 00 00                               mov    edx,DWORD PTR [esi+0xa8]
  00497a74: 89 97 a8 00 00 00                               mov    DWORD PTR [edi+0xa8],edx
  00497a7a: 8b 86 ac 00 00 00                               mov    eax,DWORD PTR [esi+0xac]
  00497a80: 89 87 ac 00 00 00                               mov    DWORD PTR [edi+0xac],eax
  00497a86: 8b 8e b0 00 00 00                               mov    ecx,DWORD PTR [esi+0xb0]
  00497a8c: 89 8f b0 00 00 00                               mov    DWORD PTR [edi+0xb0],ecx
  00497a92: 8b 96 b4 00 00 00                               mov    edx,DWORD PTR [esi+0xb4]
  00497a98: 89 97 b4 00 00 00                               mov    DWORD PTR [edi+0xb4],edx
  00497a9e: 8b 86 b8 00 00 00                               mov    eax,DWORD PTR [esi+0xb8]
  00497aa4: 89 87 b8 00 00 00                               mov    DWORD PTR [edi+0xb8],eax
  00497aaa: 8b 8e bc 00 00 00                               mov    ecx,DWORD PTR [esi+0xbc]
  00497ab0: 89 8f bc 00 00 00                               mov    DWORD PTR [edi+0xbc],ecx
  00497ab6: 8b 96 c0 00 00 00                               mov    edx,DWORD PTR [esi+0xc0]
  00497abc: 89 97 c0 00 00 00                               mov    DWORD PTR [edi+0xc0],edx
  00497ac2: 8b 86 c4 00 00 00                               mov    eax,DWORD PTR [esi+0xc4]
  00497ac8: 89 87 c4 00 00 00                               mov    DWORD PTR [edi+0xc4],eax
  00497ace: 8b 8e c8 00 00 00                               mov    ecx,DWORD PTR [esi+0xc8]
  00497ad4: 89 8f c8 00 00 00                               mov    DWORD PTR [edi+0xc8],ecx
  00497ada: 8b 96 cc 00 00 00                               mov    edx,DWORD PTR [esi+0xcc]
  00497ae0: 89 97 cc 00 00 00                               mov    DWORD PTR [edi+0xcc],edx
  00497ae6: 8b 86 d0 00 00 00                               mov    eax,DWORD PTR [esi+0xd0]
  00497aec: 89 87 d0 00 00 00                               mov    DWORD PTR [edi+0xd0],eax
  00497af2: 8b 8e d4 00 00 00                               mov    ecx,DWORD PTR [esi+0xd4]
  00497af8: 89 8f d4 00 00 00                               mov    DWORD PTR [edi+0xd4],ecx
  00497afe: 8b 96 d8 00 00 00                               mov    edx,DWORD PTR [esi+0xd8]
  00497b04: 89 97 d8 00 00 00                               mov    DWORD PTR [edi+0xd8],edx
  00497b0a: 8b 86 dc 00 00 00                               mov    eax,DWORD PTR [esi+0xdc]
  00497b10: 89 87 dc 00 00 00                               mov    DWORD PTR [edi+0xdc],eax
  00497b16: 8b 8e e0 00 00 00                               mov    ecx,DWORD PTR [esi+0xe0]
  00497b1c: 89 8f e0 00 00 00                               mov    DWORD PTR [edi+0xe0],ecx
  00497b22: 8b 96 e4 00 00 00                               mov    edx,DWORD PTR [esi+0xe4]
  00497b28: 89 97 e4 00 00 00                               mov    DWORD PTR [edi+0xe4],edx
  00497b2e: 8b 86 e8 00 00 00                               mov    eax,DWORD PTR [esi+0xe8]
  00497b34: 89 87 e8 00 00 00                               mov    DWORD PTR [edi+0xe8],eax
  00497b3a: 8b 8e ec 00 00 00                               mov    ecx,DWORD PTR [esi+0xec]
  00497b40: 89 8f ec 00 00 00                               mov    DWORD PTR [edi+0xec],ecx
  00497b46: 8b 96 f0 00 00 00                               mov    edx,DWORD PTR [esi+0xf0]
  00497b4c: 89 97 f0 00 00 00                               mov    DWORD PTR [edi+0xf0],edx
  00497b52: 8b 86 f4 00 00 00                               mov    eax,DWORD PTR [esi+0xf4]
  00497b58: 89 87 f4 00 00 00                               mov    DWORD PTR [edi+0xf4],eax
  00497b5e: 8b 8e f8 00 00 00                               mov    ecx,DWORD PTR [esi+0xf8]
  00497b64: 89 8f f8 00 00 00                               mov    DWORD PTR [edi+0xf8],ecx
  00497b6a: 8b 96 fc 00 00 00                               mov    edx,DWORD PTR [esi+0xfc]
  00497b70: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00497b73: 89 97 fc 00 00 00                               mov    DWORD PTR [edi+0xfc],edx
  00497b79: 8a 86 00 01 00 00                               mov    al,BYTE PTR [esi+0x100]
  00497b7f: 88 87 00 01 00 00                               mov    BYTE PTR [edi+0x100],al
  00497b85: 8b c7                                           mov    eax,edi
  00497b87: 5f                                              pop    edi
  00497b88: 5e                                              pop    esi
  00497b89: 5b                                              pop    ebx
  00497b8a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00497b91: 8b e5                                           mov    esp,ebp
  00497b93: 5d                                              pop    ebp
  00497b94: c2 04 00                                        ret    0x4
  00497ba0: 55                                              push   ebp
  00497ba1: 8b ec                                           mov    ebp,esp
  00497ba3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00497ba6: e8 e5 c5 ff ff                                  call   0x494190
  00497bab: 5d                                              pop    ebp
  00497bac: c2 04 00                                        ret    0x4
  00497bb0: c2 04 00                                        ret    0x4
  00497bc0: c2 04 00                                        ret    0x4
  00498050: 55                                              push   ebp
  00498051: 8b ec                                           mov    ebp,esp
  00498053: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00498056: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00498059: 3b ca                                           cmp    ecx,edx
  0049805b: 74 35                                           je     0x498092
  0049805d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00498060: 53                                              push   ebx
  00498061: 56                                              push   esi
  00498062: 57                                              push   edi
  00498063: 85 c0                                           test   eax,eax
  00498065: 74 1a                                           je     0x498081
  00498067: 8b f1                                           mov    esi,ecx
  00498069: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0049806b: 8b f8                                           mov    edi,eax
  0049806d: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049806f: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00498072: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00498075: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00498078: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  0049807b: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  0049807e: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00498081: 83 c1 10                                        add    ecx,0x10
  00498084: 83 c0 10                                        add    eax,0x10
  00498087: 3b ca                                           cmp    ecx,edx
  00498089: 75 d8                                           jne    0x498063
  0049808b: 5f                                              pop    edi
  0049808c: 5e                                              pop    esi
  0049808d: 5b                                              pop    ebx
  0049808e: 5d                                              pop    ebp
  0049808f: c2 0c 00                                        ret    0xc
  00498092: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00498095: 5d                                              pop    ebp
  00498096: c2 0c 00                                        ret    0xc
  004980a0: 55                                              push   ebp
  004980a1: 8b ec                                           mov    ebp,esp
  004980a3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004980a6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004980a9: 3b c1                                           cmp    eax,ecx
  004980ab: 74 2a                                           je     0x4980d7
  004980ad: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004980b0: 53                                              push   ebx
  004980b1: 56                                              push   esi
  004980b2: 57                                              push   edi
  004980b3: 8b f2                                           mov    esi,edx
  004980b5: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  004980b7: 8b f8                                           mov    edi,eax
  004980b9: 89 1f                                           mov    DWORD PTR [edi],ebx
  004980bb: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  004980be: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  004980c1: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004980c4: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  004980c7: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  004980ca: 83 c0 10                                        add    eax,0x10
  004980cd: 3b c1                                           cmp    eax,ecx
  004980cf: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  004980d2: 75 df                                           jne    0x4980b3
  004980d4: 5f                                              pop    edi
  004980d5: 5e                                              pop    esi
  004980d6: 5b                                              pop    ebx
  004980d7: 5d                                              pop    ebp
  004980d8: c3                                              ret
  004980e0: 55                                              push   ebp
  004980e1: 8b ec                                           mov    ebp,esp
  004980e3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004980e6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004980e9: 3b d0                                           cmp    edx,eax
  004980eb: 74 34                                           je     0x498121
  004980ed: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004980f0: 53                                              push   ebx
  004980f1: 56                                              push   esi
  004980f2: 57                                              push   edi
  004980f3: 83 e8 10                                        sub    eax,0x10
  004980f6: 83 e9 10                                        sub    ecx,0x10
  004980f9: 3b c2                                           cmp    eax,edx
  004980fb: 8b f0                                           mov    esi,eax
  004980fd: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  004980ff: 8b f9                                           mov    edi,ecx
  00498101: 89 1f                                           mov    DWORD PTR [edi],ebx
  00498103: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00498106: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00498109: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  0049810c: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  0049810f: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  00498112: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00498115: 75 dc                                           jne    0x4980f3
  00498117: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049811a: 5f                                              pop    edi
  0049811b: 5e                                              pop    esi
  0049811c: 89 08                                           mov    DWORD PTR [eax],ecx
  0049811e: 5b                                              pop    ebx
  0049811f: 5d                                              pop    ebp
  00498120: c3                                              ret
  00498121: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00498124: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00498127: 89 08                                           mov    DWORD PTR [eax],ecx
  00498129: 5d                                              pop    ebp
  0049812a: c3                                              ret
  00498920: 55                                              push   ebp
  00498921: 8b ec                                           mov    ebp,esp
  00498923: 6a ff                                           push   0xffffffff
  00498925: 68 51 ae 4d 00                                  push   0x4dae51
  0049892a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00498930: 50                                              push   eax
  00498931: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00498938: 83 ec 08                                        sub    esp,0x8
  0049893b: 53                                              push   ebx
  0049893c: 56                                              push   esi
  0049893d: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00498940: 57                                              push   edi
  00498941: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00498944: 33 db                                           xor    ebx,ebx
  00498946: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00498949: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049894c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0049894f: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  00498952: 0f 84 a4 00 00 00                               je     0x4989fc
  00498958: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0049895b: 3b f3                                           cmp    esi,ebx
  0049895d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00498961: 74 3d                                           je     0x4989a0
  00498963: 8a 07                                           mov    al,BYTE PTR [edi]
  00498965: 88 06                                           mov    BYTE PTR [esi],al
  00498967: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0049896a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0049896d: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00498970: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00498975: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00498977: 51                                              push   ecx
  00498978: 53                                              push   ebx
  00498979: 57                                              push   edi
  0049897a: 8b ce                                           mov    ecx,esi
  0049897c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00498982: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  00498985: 89 56 10                                        mov    DWORD PTR [esi+0x10],edx
  00498988: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  0049898b: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  0049898e: 8b 4f 18                                        mov    ecx,DWORD PTR [edi+0x18]
  00498991: 89 4e 18                                        mov    DWORD PTR [esi+0x18],ecx
  00498994: 8b 57 1c                                        mov    edx,DWORD PTR [edi+0x1c]
  00498997: 89 56 1c                                        mov    DWORD PTR [esi+0x1c],edx
  0049899a: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  0049899d: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004989a0: 83 c6 24                                        add    esi,0x24
  004989a3: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004989a6: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004989a9: 83 c7 24                                        add    edi,0x24
  004989ac: eb a1                                           jmp    0x49894f
  004989fc: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004989ff: 5f                                              pop    edi
  00498a00: 8b c6                                           mov    eax,esi
  00498a02: 5e                                              pop    esi
  00498a03: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00498a0a: 5b                                              pop    ebx
  00498a0b: 8b e5                                           mov    esp,ebp
  00498a0d: 5d                                              pop    ebp
  00498a0e: c2 0c 00                                        ret    0xc
  00498a20: 55                                              push   ebp
  00498a21: 8b ec                                           mov    ebp,esp
  00498a23: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00498a26: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00498a29: 3b ca                                           cmp    ecx,edx
  00498a2b: 74 35                                           je     0x498a62
  00498a2d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00498a30: 53                                              push   ebx
  00498a31: 56                                              push   esi
  00498a32: 57                                              push   edi
  00498a33: 85 c0                                           test   eax,eax
  00498a35: 74 1a                                           je     0x498a51
  00498a37: 8b f1                                           mov    esi,ecx
  00498a39: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00498a3b: 8b f8                                           mov    edi,eax
  00498a3d: 89 1f                                           mov    DWORD PTR [edi],ebx
  00498a3f: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00498a42: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00498a45: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00498a48: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00498a4b: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  00498a4e: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00498a51: 83 c1 10                                        add    ecx,0x10
  00498a54: 83 c0 10                                        add    eax,0x10
  00498a57: 3b ca                                           cmp    ecx,edx
  00498a59: 75 d8                                           jne    0x498a33
  00498a5b: 5f                                              pop    edi
  00498a5c: 5e                                              pop    esi
  00498a5d: 5b                                              pop    ebx
  00498a5e: 5d                                              pop    ebp
  00498a5f: c2 0c 00                                        ret    0xc
  00498a62: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00498a65: 5d                                              pop    ebp
  00498a66: c2 0c 00                                        ret    0xc
  00498a70: 55                                              push   ebp
  00498a71: 8b ec                                           mov    ebp,esp
  00498a73: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00498a76: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00498a79: 3b ca                                           cmp    ecx,edx
  00498a7b: 74 2f                                           je     0x498aac
  00498a7d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00498a80: 53                                              push   ebx
  00498a81: 56                                              push   esi
  00498a82: 57                                              push   edi
  00498a83: 85 c0                                           test   eax,eax
  00498a85: 74 14                                           je     0x498a9b
  00498a87: 8b f1                                           mov    esi,ecx
  00498a89: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00498a8b: 8b f8                                           mov    edi,eax
  00498a8d: 89 1f                                           mov    DWORD PTR [edi],ebx
  00498a8f: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00498a92: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00498a95: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  00498a98: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  00498a9b: 83 c1 0c                                        add    ecx,0xc
  00498a9e: 83 c0 0c                                        add    eax,0xc
  00498aa1: 3b ca                                           cmp    ecx,edx
  00498aa3: 75 de                                           jne    0x498a83
  00498aa5: 5f                                              pop    edi
  00498aa6: 5e                                              pop    esi
  00498aa7: 5b                                              pop    ebx
  00498aa8: 5d                                              pop    ebp
  00498aa9: c2 0c 00                                        ret    0xc
  00498aac: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00498aaf: 5d                                              pop    ebp
  00498ab0: c2 0c 00                                        ret    0xc
  00498b40: 55                                              push   ebp
  00498b41: 8b ec                                           mov    ebp,esp
  00498b43: 83 ec 08                                        sub    esp,0x8
  00498b46: 53                                              push   ebx
  00498b47: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00498b4a: 56                                              push   esi
  00498b4b: 8b f1                                           mov    esi,ecx
  00498b4d: 3b f3                                           cmp    esi,ebx
  00498b4f: 57                                              push   edi
  00498b50: 0f 84 01 02 00 00                               je     0x498d57
  00498b56: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00498b59: 85 ff                                           test   edi,edi
  00498b5b: 74 1e                                           je     0x498b7b
  00498b5d: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00498b60: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00498b63: 2b cf                                           sub    ecx,edi
  00498b65: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00498b6a: f7 e9                                           imul   ecx
  00498b6c: c1 fa 03                                        sar    edx,0x3
  00498b6f: 8b c2                                           mov    eax,edx
  00498b71: c1 e8 1f                                        shr    eax,0x1f
  00498b74: 03 d0                                           add    edx,eax
  00498b76: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  00498b79: 75 35                                           jne    0x498bb0
  00498b7b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00498b7e: 85 c0                                           test   eax,eax
  00498b80: 74 18                                           je     0x498b9a
  00498b82: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00498b85: 51                                              push   ecx
  00498b86: 50                                              push   eax
  00498b87: 8b ce                                           mov    ecx,esi
  00498b89: e8 e2 01 00 00                                  call   0x498d70
  00498b8e: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00498b91: 52                                              push   edx
  00498b92: e8 c9 94 fa ff                                  call   0x442060
  00498b97: 83 c4 04                                        add    esp,0x4
  00498b9a: 33 c0                                           xor    eax,eax
  00498b9c: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00498b9f: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00498ba2: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00498ba5: 5f                                              pop    edi
  00498ba6: 8b c6                                           mov    eax,esi
  00498ba8: 5e                                              pop    esi
  00498ba9: 5b                                              pop    ebx
  00498baa: 8b e5                                           mov    esp,ebp
  00498bac: 5d                                              pop    ebp
  00498bad: c2 04 00                                        ret    0x4
  00498bb0: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00498bb3: 85 c9                                           test   ecx,ecx
  00498bb5: 75 04                                           jne    0x498bbb
  00498bb7: 33 d2                                           xor    edx,edx
  00498bb9: eb 16                                           jmp    0x498bd1
  00498bbb: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00498bbe: 2b d1                                           sub    edx,ecx
  00498bc0: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00498bc5: f7 ea                                           imul   edx
  00498bc7: c1 fa 03                                        sar    edx,0x3
  00498bca: 8b c2                                           mov    eax,edx
  00498bcc: c1 e8 1f                                        shr    eax,0x1f
  00498bcf: 03 d0                                           add    edx,eax
  00498bd1: 39 55 f8                                        cmp    DWORD PTR [ebp-0x8],edx
  00498bd4: 0f 87 83 00 00 00                               ja     0x498c5d
  00498bda: 3b 7d fc                                        cmp    edi,DWORD PTR [ebp-0x4]
  00498bdd: 8b d9                                           mov    ebx,ecx
  00498bdf: 74 15                                           je     0x498bf6
  00498be1: 57                                              push   edi
  00498be2: 8b cb                                           mov    ecx,ebx
  00498be4: e8 b7 01 00 00                                  call   0x498da0
  00498be9: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00498bec: 83 c7 24                                        add    edi,0x24
  00498bef: 83 c3 24                                        add    ebx,0x24
  00498bf2: 3b f8                                           cmp    edi,eax
  00498bf4: 75 eb                                           jne    0x498be1
  00498bf6: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  00498bf9: 3b df                                           cmp    ebx,edi
  00498bfb: 74 10                                           je     0x498c0d
  00498bfd: 6a 00                                           push   0x0
  00498bff: 8b cb                                           mov    ecx,ebx
  00498c01: e8 da fe ff ff                                  call   0x498ae0
  00498c06: 83 c3 24                                        add    ebx,0x24
  00498c09: 3b df                                           cmp    ebx,edi
  00498c0b: 75 f0                                           jne    0x498bfd
  00498c0d: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00498c10: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00498c13: 85 c0                                           test   eax,eax
  00498c15: 75 19                                           jne    0x498c30
  00498c17: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00498c1a: 33 d2                                           xor    edx,edx
  00498c1c: 8d 14 d2                                        lea    edx,[edx+edx*8]
  00498c1f: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  00498c22: 5f                                              pop    edi
  00498c23: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00498c26: 8b c6                                           mov    eax,esi
  00498c28: 5e                                              pop    esi
  00498c29: 5b                                              pop    ebx
  00498c2a: 8b e5                                           mov    esp,ebp
  00498c2c: 5d                                              pop    ebp
  00498c2d: c2 04 00                                        ret    0x4
  00498c30: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00498c33: 2b c8                                           sub    ecx,eax
  00498c35: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00498c3a: f7 e9                                           imul   ecx
  00498c3c: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00498c3f: c1 fa 03                                        sar    edx,0x3
  00498c42: 8b ca                                           mov    ecx,edx
  00498c44: c1 e9 1f                                        shr    ecx,0x1f
  00498c47: 03 d1                                           add    edx,ecx
  00498c49: 8d 14 d2                                        lea    edx,[edx+edx*8]
  00498c4c: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  00498c4f: 5f                                              pop    edi
  00498c50: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00498c53: 8b c6                                           mov    eax,esi
  00498c55: 5e                                              pop    esi
  00498c56: 5b                                              pop    ebx
  00498c57: 8b e5                                           mov    esp,ebp
  00498c59: 5d                                              pop    ebp
  00498c5a: c2 04 00                                        ret    0x4
  00498c5d: 85 c9                                           test   ecx,ecx
  00498c5f: 75 04                                           jne    0x498c65
  00498c61: 33 d2                                           xor    edx,edx
  00498c63: eb 16                                           jmp    0x498c7b
  00498c65: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  00498c68: 2b d1                                           sub    edx,ecx
  00498c6a: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00498c6f: f7 ea                                           imul   edx
  00498c71: c1 fa 03                                        sar    edx,0x3
  00498c74: 8b c2                                           mov    eax,edx
  00498c76: c1 e8 1f                                        shr    eax,0x1f
  00498c79: 03 d0                                           add    edx,eax
  00498c7b: 39 55 f8                                        cmp    DWORD PTR [ebp-0x8],edx
  00498c7e: 77 51                                           ja     0x498cd1
  00498c80: 85 c9                                           test   ecx,ecx
  00498c82: 75 04                                           jne    0x498c88
  00498c84: 33 d2                                           xor    edx,edx
  00498c86: eb 16                                           jmp    0x498c9e
  00498c88: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00498c8b: 2b d1                                           sub    edx,ecx
  00498c8d: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00498c92: f7 ea                                           imul   edx
  00498c94: c1 fa 03                                        sar    edx,0x3
  00498c97: 8b c2                                           mov    eax,edx
  00498c99: c1 e8 1f                                        shr    eax,0x1f
  00498c9c: 03 d0                                           add    edx,eax
  00498c9e: 8d 14 d2                                        lea    edx,[edx+edx*8]
  00498ca1: 8d 1c 97                                        lea    ebx,[edi+edx*4]
  00498ca4: 3b fb                                           cmp    edi,ebx
  00498ca6: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00498ca9: 74 19                                           je     0x498cc4
  00498cab: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00498cae: 57                                              push   edi
  00498caf: e8 ec 00 00 00                                  call   0x498da0
  00498cb4: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  00498cb7: 83 c2 24                                        add    edx,0x24
  00498cba: 83 c7 24                                        add    edi,0x24
  00498cbd: 3b fb                                           cmp    edi,ebx
  00498cbf: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00498cc2: 75 e7                                           jne    0x498cab
  00498cc4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00498cc7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00498cca: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00498ccd: 51                                              push   ecx
  00498cce: 50                                              push   eax
  00498ccf: eb 7b                                           jmp    0x498d4c
  00498cd1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00498cd4: 8b f9                                           mov    edi,ecx
  00498cd6: 3b f8                                           cmp    edi,eax
  00498cd8: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00498cdb: 74 11                                           je     0x498cee
  00498cdd: 8b cf                                           mov    ecx,edi
  00498cdf: e8 ac b4 ff ff                                  call   0x494190
  00498ce4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00498ce7: 83 c7 24                                        add    edi,0x24
  00498cea: 3b f8                                           cmp    edi,eax
  00498cec: 75 ef                                           jne    0x498cdd
  00498cee: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00498cf1: 52                                              push   edx
  00498cf2: e8 69 93 fa ff                                  call   0x442060
  00498cf7: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00498cfa: 33 ff                                           xor    edi,edi
  00498cfc: 83 c4 04                                        add    esp,0x4
  00498cff: 3b c7                                           cmp    eax,edi
  00498d01: 75 04                                           jne    0x498d07
  00498d03: 33 d2                                           xor    edx,edx
  00498d05: eb 16                                           jmp    0x498d1d
  00498d07: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00498d0a: 2b c8                                           sub    ecx,eax
  00498d0c: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  00498d11: f7 e9                                           imul   ecx
  00498d13: c1 fa 03                                        sar    edx,0x3
  00498d16: 8b c2                                           mov    eax,edx
  00498d18: c1 e8 1f                                        shr    eax,0x1f
  00498d1b: 03 d0                                           add    edx,eax
  00498d1d: 3b d7                                           cmp    edx,edi
  00498d1f: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00498d22: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  00498d25: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00498d28: 74 2d                                           je     0x498d57
  00498d2a: 8d 3c d2                                        lea    edi,[edx+edx*8]
  00498d2d: c1 e7 02                                        shl    edi,0x2
  00498d30: 57                                              push   edi
  00498d31: e8 ba 92 fa ff                                  call   0x441ff0
  00498d36: 83 c4 04                                        add    esp,0x4
  00498d39: 03 f8                                           add    edi,eax
  00498d3b: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00498d3e: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00498d41: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00498d44: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00498d47: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  00498d4a: 50                                              push   eax
  00498d4b: 51                                              push   ecx
  00498d4c: 53                                              push   ebx
  00498d4d: 8b ce                                           mov    ecx,esi
  00498d4f: e8 cc fb ff ff                                  call   0x498920
  00498d54: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00498d57: 5f                                              pop    edi
  00498d58: 8b c6                                           mov    eax,esi
  00498d5a: 5e                                              pop    esi
  00498d5b: 5b                                              pop    ebx
  00498d5c: 8b e5                                           mov    esp,ebp
  00498d5e: 5d                                              pop    ebp
  00498d5f: c2 04 00                                        ret    0x4
  00498f10: 55                                              push   ebp
  00498f11: 8b ec                                           mov    ebp,esp
  00498f13: 51                                              push   ecx
  00498f14: 53                                              push   ebx
  00498f15: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00498f18: 56                                              push   esi
  00498f19: 8b f1                                           mov    esi,ecx
  00498f1b: 3b f3                                           cmp    esi,ebx
  00498f1d: 57                                              push   edi
  00498f1e: 0f 84 90 01 00 00                               je     0x4990b4
  00498f24: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00498f27: 33 d2                                           xor    edx,edx
  00498f29: 3b ca                                           cmp    ecx,edx
  00498f2b: 74 0d                                           je     0x498f3a
  00498f2d: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00498f30: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00498f33: 2b f9                                           sub    edi,ecx
  00498f35: c1 ff 04                                        sar    edi,0x4
  00498f38: 75 35                                           jne    0x498f6f
  00498f3a: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00498f3d: 3b c2                                           cmp    eax,edx
  00498f3f: 74 1a                                           je     0x498f5b
  00498f41: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00498f44: 51                                              push   ecx
  00498f45: 50                                              push   eax
  00498f46: 8b ce                                           mov    ecx,esi
  00498f48: e8 73 01 00 00                                  call   0x4990c0
  00498f4d: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00498f50: 52                                              push   edx
  00498f51: e8 0a 91 fa ff                                  call   0x442060
  00498f56: 83 c4 04                                        add    esp,0x4
  00498f59: 33 d2                                           xor    edx,edx
  00498f5b: 5f                                              pop    edi
  00498f5c: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00498f5f: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00498f62: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  00498f65: 8b c6                                           mov    eax,esi
  00498f67: 5e                                              pop    esi
  00498f68: 5b                                              pop    ebx
  00498f69: 8b e5                                           mov    esp,ebp
  00498f6b: 5d                                              pop    ebp
  00498f6c: c2 04 00                                        ret    0x4
  00498f6f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00498f72: 85 d2                                           test   edx,edx
  00498f74: 75 04                                           jne    0x498f7a
  00498f76: 33 c0                                           xor    eax,eax
  00498f78: eb 08                                           jmp    0x498f82
  00498f7a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00498f7d: 2b c2                                           sub    eax,edx
  00498f7f: c1 f8 04                                        sar    eax,0x4
  00498f82: 3b f8                                           cmp    edi,eax
  00498f84: 77 6e                                           ja     0x498ff4
  00498f86: 8b c1                                           mov    eax,ecx
  00498f88: 3b 45 fc                                        cmp    eax,DWORD PTR [ebp-0x4]
  00498f8b: 74 2a                                           je     0x498fb7
  00498f8d: 8b c8                                           mov    ecx,eax
  00498f8f: 8b 19                                           mov    ebx,DWORD PTR [ecx]
  00498f91: 8b fa                                           mov    edi,edx
  00498f93: 89 1f                                           mov    DWORD PTR [edi],ebx
  00498f95: 8b 59 04                                        mov    ebx,DWORD PTR [ecx+0x4]
  00498f98: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00498f9b: 8b 59 08                                        mov    ebx,DWORD PTR [ecx+0x8]
  00498f9e: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00498fa1: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  00498fa4: 89 4f 0c                                        mov    DWORD PTR [edi+0xc],ecx
  00498fa7: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00498faa: 83 c0 10                                        add    eax,0x10
  00498fad: 83 c2 10                                        add    edx,0x10
  00498fb0: 3b c1                                           cmp    eax,ecx
  00498fb2: 75 d9                                           jne    0x498f8d
  00498fb4: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00498fb7: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00498fba: 85 c9                                           test   ecx,ecx
  00498fbc: 75 18                                           jne    0x498fd6
  00498fbe: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00498fc1: 33 c0                                           xor    eax,eax
  00498fc3: c1 e0 04                                        shl    eax,0x4
  00498fc6: 03 c1                                           add    eax,ecx
  00498fc8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00498fcb: 5f                                              pop    edi
  00498fcc: 8b c6                                           mov    eax,esi
  00498fce: 5e                                              pop    esi
  00498fcf: 5b                                              pop    ebx
  00498fd0: 8b e5                                           mov    esp,ebp
  00498fd2: 5d                                              pop    ebp
  00498fd3: c2 04 00                                        ret    0x4
  00498fd6: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00498fd9: 2b c1                                           sub    eax,ecx
  00498fdb: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00498fde: c1 f8 04                                        sar    eax,0x4
  00498fe1: c1 e0 04                                        shl    eax,0x4
  00498fe4: 03 c1                                           add    eax,ecx
  00498fe6: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00498fe9: 5f                                              pop    edi
  00498fea: 8b c6                                           mov    eax,esi
  00498fec: 5e                                              pop    esi
  00498fed: 5b                                              pop    ebx
  00498fee: 8b e5                                           mov    esp,ebp
  00498ff0: 5d                                              pop    ebp
  00498ff1: c2 04 00                                        ret    0x4
  00498ff4: 85 d2                                           test   edx,edx
  00498ff6: 75 04                                           jne    0x498ffc
  00498ff8: 33 c0                                           xor    eax,eax
  00498ffa: eb 08                                           jmp    0x499004
  00498ffc: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  00498fff: 2b c2                                           sub    eax,edx
  00499001: c1 f8 04                                        sar    eax,0x4
  00499004: 3b f8                                           cmp    edi,eax
  00499006: 77 52                                           ja     0x49905a
  00499008: 85 d2                                           test   edx,edx
  0049900a: 75 04                                           jne    0x499010
  0049900c: 33 c0                                           xor    eax,eax
  0049900e: eb 08                                           jmp    0x499018
  00499010: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00499013: 2b c2                                           sub    eax,edx
  00499015: c1 f8 04                                        sar    eax,0x4
  00499018: c1 e0 04                                        shl    eax,0x4
  0049901b: 03 c1                                           add    eax,ecx
  0049901d: 3b c8                                           cmp    ecx,eax
  0049901f: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00499022: 74 2b                                           je     0x49904f
  00499024: 8b f9                                           mov    edi,ecx
  00499026: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  00499028: 89 1a                                           mov    DWORD PTR [edx],ebx
  0049902a: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  0049902d: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  00499030: 8b 5f 08                                        mov    ebx,DWORD PTR [edi+0x8]
  00499033: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  00499036: 8b 7f 0c                                        mov    edi,DWORD PTR [edi+0xc]
  00499039: 89 7a 0c                                        mov    DWORD PTR [edx+0xc],edi
  0049903c: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0049903f: 83 c2 10                                        add    edx,0x10
  00499042: 83 c1 10                                        add    ecx,0x10
  00499045: 3b c8                                           cmp    ecx,eax
  00499047: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0049904a: 75 d8                                           jne    0x499024
  0049904c: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0049904f: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00499052: 8b 5b 08                                        mov    ebx,DWORD PTR [ebx+0x8]
  00499055: 52                                              push   edx
  00499056: 53                                              push   ebx
  00499057: 50                                              push   eax
  00499058: eb 50                                           jmp    0x4990aa
  0049905a: 52                                              push   edx
  0049905b: 89 55 08                                        mov    DWORD PTR [ebp+0x8],edx
  0049905e: e8 fd 8f fa ff                                  call   0x442060
  00499063: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00499066: 33 d2                                           xor    edx,edx
  00499068: 83 c4 04                                        add    esp,0x4
  0049906b: 3b ca                                           cmp    ecx,edx
  0049906d: 75 04                                           jne    0x499073
  0049906f: 33 c0                                           xor    eax,eax
  00499071: eb 08                                           jmp    0x49907b
  00499073: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00499076: 2b c1                                           sub    eax,ecx
  00499078: c1 f8 04                                        sar    eax,0x4
  0049907b: 3b c2                                           cmp    eax,edx
  0049907d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00499080: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00499083: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  00499086: 74 2c                                           je     0x4990b4
  00499088: c1 e0 04                                        shl    eax,0x4
  0049908b: 8b f8                                           mov    edi,eax
  0049908d: 57                                              push   edi
  0049908e: e8 5d 8f fa ff                                  call   0x441ff0
  00499093: 83 c4 04                                        add    esp,0x4
  00499096: 03 f8                                           add    edi,eax
  00499098: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0049909b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049909e: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004990a1: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004990a4: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004990a7: 50                                              push   eax
  004990a8: 51                                              push   ecx
  004990a9: 53                                              push   ebx
  004990aa: 8b ce                                           mov    ecx,esi
  004990ac: e8 6f f9 ff ff                                  call   0x498a20
  004990b1: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004990b4: 5f                                              pop    edi
  004990b5: 8b c6                                           mov    eax,esi
  004990b7: 5e                                              pop    esi
  004990b8: 5b                                              pop    ebx
  004990b9: 8b e5                                           mov    esp,ebp
  004990bb: 5d                                              pop    ebp
  004990bc: c2 04 00                                        ret    0x4
  004990d0: 55                                              push   ebp
  004990d1: 8b ec                                           mov    ebp,esp
  004990d3: 83 ec 08                                        sub    esp,0x8
  004990d6: 53                                              push   ebx
  004990d7: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004990da: 56                                              push   esi
  004990db: 8b f1                                           mov    esi,ecx
  004990dd: 3b f3                                           cmp    esi,ebx
  004990df: 57                                              push   edi
  004990e0: 0f 84 e0 01 00 00                               je     0x4992c6
  004990e6: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004990e9: 33 ff                                           xor    edi,edi
  004990eb: 3b c7                                           cmp    eax,edi
  004990ed: 74 21                                           je     0x499110
  004990ef: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  004990f2: 8b cf                                           mov    ecx,edi
  004990f4: 2b c8                                           sub    ecx,eax
  004990f6: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  004990fb: f7 e9                                           imul   ecx
  004990fd: d1 fa                                           sar    edx,1
  004990ff: 8b c2                                           mov    eax,edx
  00499101: c1 e8 1f                                        shr    eax,0x1f
  00499104: 03 d0                                           add    edx,eax
  00499106: 89 7d f8                                        mov    DWORD PTR [ebp-0x8],edi
  00499109: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0049910c: 75 35                                           jne    0x499143
  0049910e: 33 ff                                           xor    edi,edi
  00499110: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00499113: 3b c7                                           cmp    eax,edi
  00499115: 74 18                                           je     0x49912f
  00499117: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049911a: 51                                              push   ecx
  0049911b: 50                                              push   eax
  0049911c: 8b ce                                           mov    ecx,esi
  0049911e: e8 cd d9 ff ff                                  call   0x496af0
  00499123: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00499126: 52                                              push   edx
  00499127: e8 34 8f fa ff                                  call   0x442060
  0049912c: 83 c4 04                                        add    esp,0x4
  0049912f: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00499132: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  00499135: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00499138: 5f                                              pop    edi
  00499139: 8b c6                                           mov    eax,esi
  0049913b: 5e                                              pop    esi
  0049913c: 5b                                              pop    ebx
  0049913d: 8b e5                                           mov    esp,ebp
  0049913f: 5d                                              pop    ebp
  00499140: c2 04 00                                        ret    0x4
  00499143: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00499146: 85 c9                                           test   ecx,ecx
  00499148: 75 04                                           jne    0x49914e
  0049914a: 33 d2                                           xor    edx,edx
  0049914c: eb 15                                           jmp    0x499163
  0049914e: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00499151: 2b d1                                           sub    edx,ecx
  00499153: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00499158: f7 ea                                           imul   edx
  0049915a: d1 fa                                           sar    edx,1
  0049915c: 8b c2                                           mov    eax,edx
  0049915e: c1 e8 1f                                        shr    eax,0x1f
  00499161: 03 d0                                           add    edx,eax
  00499163: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  00499166: 77 77                                           ja     0x4991df
  00499168: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049916b: 3b c7                                           cmp    eax,edi
  0049916d: 74 24                                           je     0x499193
  0049916f: 8b d0                                           mov    edx,eax
  00499171: 8b 1a                                           mov    ebx,DWORD PTR [edx]
  00499173: 8b f9                                           mov    edi,ecx
  00499175: 89 1f                                           mov    DWORD PTR [edi],ebx
  00499177: 8b 5a 04                                        mov    ebx,DWORD PTR [edx+0x4]
  0049917a: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  0049917d: 8b 52 08                                        mov    edx,DWORD PTR [edx+0x8]
  00499180: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  00499183: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  00499186: 83 c0 0c                                        add    eax,0xc
  00499189: 83 c1 0c                                        add    ecx,0xc
  0049918c: 3b c2                                           cmp    eax,edx
  0049918e: 75 df                                           jne    0x49916f
  00499190: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00499193: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00499196: 85 c0                                           test   eax,eax
  00499198: 75 19                                           jne    0x4991b3
  0049919a: 33 d2                                           xor    edx,edx
  0049919c: 8d 0c 52                                        lea    ecx,[edx+edx*2]
  0049919f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004991a2: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004991a5: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004991a8: 5f                                              pop    edi
  004991a9: 8b c6                                           mov    eax,esi
  004991ab: 5e                                              pop    esi
  004991ac: 5b                                              pop    ebx
  004991ad: 8b e5                                           mov    esp,ebp
  004991af: 5d                                              pop    ebp
  004991b0: c2 04 00                                        ret    0x4
  004991b3: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004991b6: 2b c8                                           sub    ecx,eax
  004991b8: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  004991bd: f7 e9                                           imul   ecx
  004991bf: d1 fa                                           sar    edx,1
  004991c1: 8b c2                                           mov    eax,edx
  004991c3: c1 e8 1f                                        shr    eax,0x1f
  004991c6: 03 d0                                           add    edx,eax
  004991c8: 8d 0c 52                                        lea    ecx,[edx+edx*2]
  004991cb: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004991ce: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004991d1: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004991d4: 5f                                              pop    edi
  004991d5: 8b c6                                           mov    eax,esi
  004991d7: 5e                                              pop    esi
  004991d8: 5b                                              pop    ebx
  004991d9: 8b e5                                           mov    esp,ebp
  004991db: 5d                                              pop    ebp
  004991dc: c2 04 00                                        ret    0x4
  004991df: 33 ff                                           xor    edi,edi
  004991e1: 3b cf                                           cmp    ecx,edi
  004991e3: 75 04                                           jne    0x4991e9
  004991e5: 33 d2                                           xor    edx,edx
  004991e7: eb 15                                           jmp    0x4991fe
  004991e9: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004991ec: 2b d1                                           sub    edx,ecx
  004991ee: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  004991f3: f7 ea                                           imul   edx
  004991f5: d1 fa                                           sar    edx,1
  004991f7: 8b c2                                           mov    eax,edx
  004991f9: c1 e8 1f                                        shr    eax,0x1f
  004991fc: 03 d0                                           add    edx,eax
  004991fe: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  00499201: 77 5d                                           ja     0x499260
  00499203: 3b cf                                           cmp    ecx,edi
  00499205: 75 04                                           jne    0x49920b
  00499207: 33 d2                                           xor    edx,edx
  00499209: eb 15                                           jmp    0x499220
  0049920b: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049920e: 2b d1                                           sub    edx,ecx
  00499210: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00499215: f7 ea                                           imul   edx
  00499217: d1 fa                                           sar    edx,1
  00499219: 8b c2                                           mov    eax,edx
  0049921b: c1 e8 1f                                        shr    eax,0x1f
  0049921e: 03 d0                                           add    edx,eax
  00499220: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00499223: 8d 14 52                                        lea    edx,[edx+edx*2]
  00499226: 8d 14 90                                        lea    edx,[eax+edx*4]
  00499229: 3b c2                                           cmp    eax,edx
  0049922b: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0049922e: 74 25                                           je     0x499255
  00499230: 8b f8                                           mov    edi,eax
  00499232: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  00499234: 89 19                                           mov    DWORD PTR [ecx],ebx
  00499236: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00499239: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0049923c: 8b 7f 08                                        mov    edi,DWORD PTR [edi+0x8]
  0049923f: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  00499242: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00499245: 83 c1 0c                                        add    ecx,0xc
  00499248: 83 c0 0c                                        add    eax,0xc
  0049924b: 3b c2                                           cmp    eax,edx
  0049924d: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00499250: 75 de                                           jne    0x499230
  00499252: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00499255: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00499258: 8b 5b 08                                        mov    ebx,DWORD PTR [ebx+0x8]
  0049925b: 50                                              push   eax
  0049925c: 53                                              push   ebx
  0049925d: 52                                              push   edx
  0049925e: eb 5c                                           jmp    0x4992bc
  00499260: 51                                              push   ecx
  00499261: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  00499264: e8 f7 8d fa ff                                  call   0x442060
  00499269: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049926c: 83 c4 04                                        add    esp,0x4
  0049926f: 3b c7                                           cmp    eax,edi
  00499271: 75 04                                           jne    0x499277
  00499273: 33 d2                                           xor    edx,edx
  00499275: eb 15                                           jmp    0x49928c
  00499277: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049927a: 2b c8                                           sub    ecx,eax
  0049927c: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  00499281: f7 e9                                           imul   ecx
  00499283: d1 fa                                           sar    edx,1
  00499285: 8b ca                                           mov    ecx,edx
  00499287: c1 e9 1f                                        shr    ecx,0x1f
  0049928a: 03 d1                                           add    edx,ecx
  0049928c: 3b d7                                           cmp    edx,edi
  0049928e: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  00499291: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  00499294: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00499297: 74 2d                                           je     0x4992c6
  00499299: 8d 3c 52                                        lea    edi,[edx+edx*2]
  0049929c: c1 e7 02                                        shl    edi,0x2
  0049929f: 57                                              push   edi
  004992a0: e8 4b 8d fa ff                                  call   0x441ff0
  004992a5: 83 c4 04                                        add    esp,0x4
  004992a8: 03 f8                                           add    edi,eax
  004992aa: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004992ad: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004992b0: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004992b3: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004992b6: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004992b9: 50                                              push   eax
  004992ba: 51                                              push   ecx
  004992bb: 53                                              push   ebx
  004992bc: 8b ce                                           mov    ecx,esi
  004992be: e8 ad f7 ff ff                                  call   0x498a70
  004992c3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004992c6: 5f                                              pop    edi
  004992c7: 8b c6                                           mov    eax,esi
  004992c9: 5e                                              pop    esi
  004992ca: 5b                                              pop    ebx
  004992cb: 8b e5                                           mov    esp,ebp
  004992cd: 5d                                              pop    ebp
  004992ce: c2 04 00                                        ret    0x4
  0049c170: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0049c173: 85 c0                                           test   eax,eax
  0049c175: 75 01                                           jne    0x49c178
  0049c177: c3                                              ret
  0049c178: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0049c17b: 2b c8                                           sub    ecx,eax
  0049c17d: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049c182: f7 e9                                           imul   ecx
  0049c184: d1 fa                                           sar    edx,1
  0049c186: 8b c2                                           mov    eax,edx
  0049c188: c1 e8 1f                                        shr    eax,0x1f
  0049c18b: 03 d0                                           add    edx,eax
  0049c18d: 8b c2                                           mov    eax,edx
  0049c18f: c3                                              ret
  0049c190: 55                                              push   ebp
  0049c191: 8b ec                                           mov    ebp,esp
  0049c193: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049c196: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0049c198: 6a 00                                           push   0x0
  0049c19a: ff 10                                           call   DWORD PTR [eax]
  0049c19c: 5d                                              pop    ebp
  0049c19d: c2 04 00                                        ret    0x4
  0049c1a0: c2 04 00                                        ret    0x4
  0049cab0: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0049cab3: 85 c0                                           test   eax,eax
  0049cab5: 75 01                                           jne    0x49cab8
  0049cab7: c3                                              ret
  0049cab8: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0049cabb: 2b c8                                           sub    ecx,eax
  0049cabd: b8 67 66 66 66                                  mov    eax,0x66666667
  0049cac2: f7 e9                                           imul   ecx
  0049cac4: c1 fa 04                                        sar    edx,0x4
  0049cac7: 8b c2                                           mov    eax,edx
  0049cac9: c1 e8 1f                                        shr    eax,0x1f
  0049cacc: 03 d0                                           add    edx,eax
  0049cace: 8b c2                                           mov    eax,edx
  0049cad0: c3                                              ret
  0049cae0: 55                                              push   ebp
  0049cae1: 8b ec                                           mov    ebp,esp
  0049cae3: 56                                              push   esi
  0049cae4: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0049cae7: 57                                              push   edi
  0049cae8: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0049caeb: 3b f7                                           cmp    esi,edi
  0049caed: 74 0f                                           je     0x49cafe
  0049caef: 8b 06                                           mov    eax,DWORD PTR [esi]
  0049caf1: 6a 00                                           push   0x0
  0049caf3: 8b ce                                           mov    ecx,esi
  0049caf5: ff 10                                           call   DWORD PTR [eax]
  0049caf7: 83 c6 28                                        add    esi,0x28
  0049cafa: 3b f7                                           cmp    esi,edi
  0049cafc: 75 f1                                           jne    0x49caef
  0049cafe: 5f                                              pop    edi
  0049caff: 5e                                              pop    esi
  0049cb00: 5d                                              pop    ebp
  0049cb01: c2 08 00                                        ret    0x8
  0049cb10: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0049cb13: 85 c0                                           test   eax,eax
  0049cb15: 75 01                                           jne    0x49cb18
  0049cb17: c3                                              ret
  0049cb18: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  0049cb1b: 2b c8                                           sub    ecx,eax
  0049cb1d: b8 67 66 66 66                                  mov    eax,0x66666667
  0049cb22: f7 e9                                           imul   ecx
  0049cb24: c1 fa 04                                        sar    edx,0x4
  0049cb27: 8b c2                                           mov    eax,edx
  0049cb29: c1 e8 1f                                        shr    eax,0x1f
  0049cb2c: 03 d0                                           add    edx,eax
  0049cb2e: 8b c2                                           mov    eax,edx
  0049cb30: c3                                              ret
  0049ccc0: 55                                              push   ebp
  0049ccc1: 8b ec                                           mov    ebp,esp
  0049ccc3: 6a ff                                           push   0xffffffff
  0049ccc5: 68 39 b1 4d 00                                  push   0x4db139
  0049ccca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049ccd0: 50                                              push   eax
  0049ccd1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049ccd8: 83 ec 08                                        sub    esp,0x8
  0049ccdb: 53                                              push   ebx
  0049ccdc: 56                                              push   esi
  0049ccdd: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0049cce0: 57                                              push   edi
  0049cce1: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0049cce4: 33 db                                           xor    ebx,ebx
  0049cce6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0049cce9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0049ccec: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0049ccef: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  0049ccf2: 0f 84 8d 00 00 00                               je     0x49cd85
  0049ccf8: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0049ccfb: 3b f3                                           cmp    esi,ebx
  0049ccfd: 74 53                                           je     0x49cd52
  0049ccff: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0049cd02: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0049cd05: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0049cd08: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0049cd0b: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  0049cd0e: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0049cd11: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  0049cd14: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  0049cd17: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  0049cd1a: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  0049cd1d: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  0049cd23: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  0049cd26: 8d 47 18                                        lea    eax,[edi+0x18]
  0049cd29: 8d 4e 18                                        lea    ecx,[esi+0x18]
  0049cd2c: 88 11                                           mov    BYTE PTR [ecx],dl
  0049cd2e: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0049cd31: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  0049cd34: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  0049cd37: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0049cd3d: 8b 12                                           mov    edx,DWORD PTR [edx]
  0049cd3f: 52                                              push   edx
  0049cd40: 53                                              push   ebx
  0049cd41: 50                                              push   eax
  0049cd42: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0049cd46: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0049cd4c: c7 06 08 f9 4d 00                               mov    DWORD PTR [esi],0x4df908
  0049cd52: 83 c6 28                                        add    esi,0x28
  0049cd55: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0049cd58: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0049cd5b: 83 c7 28                                        add    edi,0x28
  0049cd5e: eb 8f                                           jmp    0x49ccef
  0049cd85: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049cd88: 5f                                              pop    edi
  0049cd89: 8b c6                                           mov    eax,esi
  0049cd8b: 5e                                              pop    esi
  0049cd8c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049cd93: 5b                                              pop    ebx
  0049cd94: 8b e5                                           mov    esp,ebp
  0049cd96: 5d                                              pop    ebp
  0049cd97: c2 0c 00                                        ret    0xc
  0049cda0: 55                                              push   ebp
  0049cda1: 8b ec                                           mov    ebp,esp
  0049cda3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049cda6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0049cda9: 3b ca                                           cmp    ecx,edx
  0049cdab: 74 2f                                           je     0x49cddc
  0049cdad: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049cdb0: 53                                              push   ebx
  0049cdb1: 56                                              push   esi
  0049cdb2: 57                                              push   edi
  0049cdb3: 85 c0                                           test   eax,eax
  0049cdb5: 74 14                                           je     0x49cdcb
  0049cdb7: 8b f1                                           mov    esi,ecx
  0049cdb9: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0049cdbb: 8b f8                                           mov    edi,eax
  0049cdbd: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049cdbf: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  0049cdc2: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  0049cdc5: 8b 76 08                                        mov    esi,DWORD PTR [esi+0x8]
  0049cdc8: 89 77 08                                        mov    DWORD PTR [edi+0x8],esi
  0049cdcb: 83 c1 0c                                        add    ecx,0xc
  0049cdce: 83 c0 0c                                        add    eax,0xc
  0049cdd1: 3b ca                                           cmp    ecx,edx
  0049cdd3: 75 de                                           jne    0x49cdb3
  0049cdd5: 5f                                              pop    edi
  0049cdd6: 5e                                              pop    esi
  0049cdd7: 5b                                              pop    ebx
  0049cdd8: 5d                                              pop    ebp
  0049cdd9: c2 0c 00                                        ret    0xc
  0049cddc: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049cddf: 5d                                              pop    ebp
  0049cde0: c2 0c 00                                        ret    0xc
  0049cdf0: 55                                              push   ebp
  0049cdf1: 8b ec                                           mov    ebp,esp
  0049cdf3: 83 ec 08                                        sub    esp,0x8
  0049cdf6: 53                                              push   ebx
  0049cdf7: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0049cdfa: 56                                              push   esi
  0049cdfb: 8b f1                                           mov    esi,ecx
  0049cdfd: 3b f3                                           cmp    esi,ebx
  0049cdff: 57                                              push   edi
  0049ce00: 0f 84 e0 01 00 00                               je     0x49cfe6
  0049ce06: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049ce09: 33 ff                                           xor    edi,edi
  0049ce0b: 3b c7                                           cmp    eax,edi
  0049ce0d: 74 21                                           je     0x49ce30
  0049ce0f: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0049ce12: 8b cf                                           mov    ecx,edi
  0049ce14: 2b c8                                           sub    ecx,eax
  0049ce16: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049ce1b: f7 e9                                           imul   ecx
  0049ce1d: d1 fa                                           sar    edx,1
  0049ce1f: 8b c2                                           mov    eax,edx
  0049ce21: c1 e8 1f                                        shr    eax,0x1f
  0049ce24: 03 d0                                           add    edx,eax
  0049ce26: 89 7d f8                                        mov    DWORD PTR [ebp-0x8],edi
  0049ce29: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0049ce2c: 75 35                                           jne    0x49ce63
  0049ce2e: 33 ff                                           xor    edi,edi
  0049ce30: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0049ce33: 3b c7                                           cmp    eax,edi
  0049ce35: 74 18                                           je     0x49ce4f
  0049ce37: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0049ce3a: 51                                              push   ecx
  0049ce3b: 50                                              push   eax
  0049ce3c: 8b ce                                           mov    ecx,esi
  0049ce3e: e8 bd 01 00 00                                  call   0x49d000
  0049ce43: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049ce46: 52                                              push   edx
  0049ce47: e8 14 52 fa ff                                  call   0x442060
  0049ce4c: 83 c4 04                                        add    esp,0x4
  0049ce4f: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049ce52: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  0049ce55: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049ce58: 5f                                              pop    edi
  0049ce59: 8b c6                                           mov    eax,esi
  0049ce5b: 5e                                              pop    esi
  0049ce5c: 5b                                              pop    ebx
  0049ce5d: 8b e5                                           mov    esp,ebp
  0049ce5f: 5d                                              pop    ebp
  0049ce60: c2 04 00                                        ret    0x4
  0049ce63: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049ce66: 85 c9                                           test   ecx,ecx
  0049ce68: 75 04                                           jne    0x49ce6e
  0049ce6a: 33 d2                                           xor    edx,edx
  0049ce6c: eb 15                                           jmp    0x49ce83
  0049ce6e: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049ce71: 2b d1                                           sub    edx,ecx
  0049ce73: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049ce78: f7 ea                                           imul   edx
  0049ce7a: d1 fa                                           sar    edx,1
  0049ce7c: 8b c2                                           mov    eax,edx
  0049ce7e: c1 e8 1f                                        shr    eax,0x1f
  0049ce81: 03 d0                                           add    edx,eax
  0049ce83: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  0049ce86: 77 77                                           ja     0x49ceff
  0049ce88: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049ce8b: 3b c7                                           cmp    eax,edi
  0049ce8d: 74 24                                           je     0x49ceb3
  0049ce8f: 8b d0                                           mov    edx,eax
  0049ce91: 8b 1a                                           mov    ebx,DWORD PTR [edx]
  0049ce93: 8b f9                                           mov    edi,ecx
  0049ce95: 89 1f                                           mov    DWORD PTR [edi],ebx
  0049ce97: 8b 5a 04                                        mov    ebx,DWORD PTR [edx+0x4]
  0049ce9a: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  0049ce9d: 8b 52 08                                        mov    edx,DWORD PTR [edx+0x8]
  0049cea0: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0049cea3: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  0049cea6: 83 c0 0c                                        add    eax,0xc
  0049cea9: 83 c1 0c                                        add    ecx,0xc
  0049ceac: 3b c2                                           cmp    eax,edx
  0049ceae: 75 df                                           jne    0x49ce8f
  0049ceb0: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0049ceb3: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049ceb6: 85 c0                                           test   eax,eax
  0049ceb8: 75 19                                           jne    0x49ced3
  0049ceba: 33 d2                                           xor    edx,edx
  0049cebc: 8d 0c 52                                        lea    ecx,[edx+edx*2]
  0049cebf: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049cec2: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  0049cec5: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049cec8: 5f                                              pop    edi
  0049cec9: 8b c6                                           mov    eax,esi
  0049cecb: 5e                                              pop    esi
  0049cecc: 5b                                              pop    ebx
  0049cecd: 8b e5                                           mov    esp,ebp
  0049cecf: 5d                                              pop    ebp
  0049ced0: c2 04 00                                        ret    0x4
  0049ced3: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049ced6: 2b c8                                           sub    ecx,eax
  0049ced8: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049cedd: f7 e9                                           imul   ecx
  0049cedf: d1 fa                                           sar    edx,1
  0049cee1: 8b c2                                           mov    eax,edx
  0049cee3: c1 e8 1f                                        shr    eax,0x1f
  0049cee6: 03 d0                                           add    edx,eax
  0049cee8: 8d 0c 52                                        lea    ecx,[edx+edx*2]
  0049ceeb: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0049ceee: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  0049cef1: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049cef4: 5f                                              pop    edi
  0049cef5: 8b c6                                           mov    eax,esi
  0049cef7: 5e                                              pop    esi
  0049cef8: 5b                                              pop    ebx
  0049cef9: 8b e5                                           mov    esp,ebp
  0049cefb: 5d                                              pop    ebp
  0049cefc: c2 04 00                                        ret    0x4
  0049ceff: 33 ff                                           xor    edi,edi
  0049cf01: 3b cf                                           cmp    ecx,edi
  0049cf03: 75 04                                           jne    0x49cf09
  0049cf05: 33 d2                                           xor    edx,edx
  0049cf07: eb 15                                           jmp    0x49cf1e
  0049cf09: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0049cf0c: 2b d1                                           sub    edx,ecx
  0049cf0e: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049cf13: f7 ea                                           imul   edx
  0049cf15: d1 fa                                           sar    edx,1
  0049cf17: 8b c2                                           mov    eax,edx
  0049cf19: c1 e8 1f                                        shr    eax,0x1f
  0049cf1c: 03 d0                                           add    edx,eax
  0049cf1e: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  0049cf21: 77 5d                                           ja     0x49cf80
  0049cf23: 3b cf                                           cmp    ecx,edi
  0049cf25: 75 04                                           jne    0x49cf2b
  0049cf27: 33 d2                                           xor    edx,edx
  0049cf29: eb 15                                           jmp    0x49cf40
  0049cf2b: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0049cf2e: 2b d1                                           sub    edx,ecx
  0049cf30: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049cf35: f7 ea                                           imul   edx
  0049cf37: d1 fa                                           sar    edx,1
  0049cf39: 8b c2                                           mov    eax,edx
  0049cf3b: c1 e8 1f                                        shr    eax,0x1f
  0049cf3e: 03 d0                                           add    edx,eax
  0049cf40: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049cf43: 8d 14 52                                        lea    edx,[edx+edx*2]
  0049cf46: 8d 14 90                                        lea    edx,[eax+edx*4]
  0049cf49: 3b c2                                           cmp    eax,edx
  0049cf4b: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0049cf4e: 74 25                                           je     0x49cf75
  0049cf50: 8b f8                                           mov    edi,eax
  0049cf52: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0049cf54: 89 19                                           mov    DWORD PTR [ecx],ebx
  0049cf56: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  0049cf59: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0049cf5c: 8b 7f 08                                        mov    edi,DWORD PTR [edi+0x8]
  0049cf5f: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0049cf62: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0049cf65: 83 c1 0c                                        add    ecx,0xc
  0049cf68: 83 c0 0c                                        add    eax,0xc
  0049cf6b: 3b c2                                           cmp    eax,edx
  0049cf6d: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0049cf70: 75 de                                           jne    0x49cf50
  0049cf72: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0049cf75: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0049cf78: 8b 5b 08                                        mov    ebx,DWORD PTR [ebx+0x8]
  0049cf7b: 50                                              push   eax
  0049cf7c: 53                                              push   ebx
  0049cf7d: 52                                              push   edx
  0049cf7e: eb 5c                                           jmp    0x49cfdc
  0049cf80: 51                                              push   ecx
  0049cf81: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  0049cf84: e8 d7 50 fa ff                                  call   0x442060
  0049cf89: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049cf8c: 83 c4 04                                        add    esp,0x4
  0049cf8f: 3b c7                                           cmp    eax,edi
  0049cf91: 75 04                                           jne    0x49cf97
  0049cf93: 33 d2                                           xor    edx,edx
  0049cf95: eb 15                                           jmp    0x49cfac
  0049cf97: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049cf9a: 2b c8                                           sub    ecx,eax
  0049cf9c: b8 ab aa aa 2a                                  mov    eax,0x2aaaaaab
  0049cfa1: f7 e9                                           imul   ecx
  0049cfa3: d1 fa                                           sar    edx,1
  0049cfa5: 8b ca                                           mov    ecx,edx
  0049cfa7: c1 e9 1f                                        shr    ecx,0x1f
  0049cfaa: 03 d1                                           add    edx,ecx
  0049cfac: 3b d7                                           cmp    edx,edi
  0049cfae: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0049cfb1: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  0049cfb4: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049cfb7: 74 2d                                           je     0x49cfe6
  0049cfb9: 8d 3c 52                                        lea    edi,[edx+edx*2]
  0049cfbc: c1 e7 02                                        shl    edi,0x2
  0049cfbf: 57                                              push   edi
  0049cfc0: e8 2b 50 fa ff                                  call   0x441ff0
  0049cfc5: 83 c4 04                                        add    esp,0x4
  0049cfc8: 03 f8                                           add    edi,eax
  0049cfca: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0049cfcd: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049cfd0: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  0049cfd3: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0049cfd6: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  0049cfd9: 50                                              push   eax
  0049cfda: 51                                              push   ecx
  0049cfdb: 53                                              push   ebx
  0049cfdc: 8b ce                                           mov    ecx,esi
  0049cfde: e8 bd fd ff ff                                  call   0x49cda0
  0049cfe3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0049cfe6: 5f                                              pop    edi
  0049cfe7: 8b c6                                           mov    eax,esi
  0049cfe9: 5e                                              pop    esi
  0049cfea: 5b                                              pop    ebx
  0049cfeb: 8b e5                                           mov    esp,ebp
  0049cfed: 5d                                              pop    ebp
  0049cfee: c2 04 00                                        ret    0x4
  0049d010: 55                                              push   ebp
  0049d011: 8b ec                                           mov    ebp,esp
  0049d013: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0049d016: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0049d018: 8d 04 80                                        lea    eax,[eax+eax*4]
  0049d01b: 8d 14 c1                                        lea    edx,[ecx+eax*8]
  0049d01e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049d021: 89 10                                           mov    DWORD PTR [eax],edx
  0049d023: 5d                                              pop    ebp
  0049d024: c2 08 00                                        ret    0x8
  0049d030: 55                                              push   ebp
  0049d031: 8b ec                                           mov    ebp,esp
  0049d033: 83 ec 08                                        sub    esp,0x8
  0049d036: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049d039: 3b 4d 0c                                        cmp    ecx,DWORD PTR [ebp+0xc]
  0049d03c: 0f 84 78 01 00 00                               je     0x49d1ba
  0049d042: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049d045: 53                                              push   ebx
  0049d046: 56                                              push   esi
  0049d047: 83 c1 1c                                        add    ecx,0x1c
  0049d04a: 57                                              push   edi
  0049d04b: 8d 58 1c                                        lea    ebx,[eax+0x1c]
  0049d04e: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0049d051: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0049d057: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0049d05a: 8b 3a                                           mov    edi,DWORD PTR [edx]
  0049d05c: 3b fe                                           cmp    edi,esi
  0049d05e: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  0049d061: 73 05                                           jae    0x49d068
  0049d063: 89 7d f8                                        mov    DWORD PTR [ebp-0x8],edi
  0049d066: 8b f7                                           mov    esi,edi
  0049d068: 8d 41 fc                                        lea    eax,[ecx-0x4]
  0049d06b: 8d 53 fc                                        lea    edx,[ebx-0x4]
  0049d06e: 3b d0                                           cmp    edx,eax
  0049d070: 75 70                                           jne    0x49d0e2
  0049d072: 39 73 04                                        cmp    DWORD PTR [ebx+0x4],esi
  0049d075: 73 0c                                           jae    0x49d083
  0049d077: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049d07a: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0049d080: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0049d083: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0049d086: 2b c6                                           sub    eax,esi
  0049d088: 3b c7                                           cmp    eax,edi
  0049d08a: 73 02                                           jae    0x49d08e
  0049d08c: 8b f8                                           mov    edi,eax
  0049d08e: 85 ff                                           test   edi,edi
  0049d090: 0f 86 f4 00 00 00                               jbe    0x49d18a
  0049d096: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049d099: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0049d09f: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0049d0a2: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0049d0a4: 2b cf                                           sub    ecx,edi
  0049d0a6: 03 c6                                           add    eax,esi
  0049d0a8: 2b ce                                           sub    ecx,esi
  0049d0aa: 51                                              push   ecx
  0049d0ab: 8d 14 38                                        lea    edx,[eax+edi*1]
  0049d0ae: 52                                              push   edx
  0049d0af: 50                                              push   eax
  0049d0b0: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0049d0b6: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  0049d0b9: 83 c4 0c                                        add    esp,0xc
  0049d0bc: 2b f7                                           sub    esi,edi
  0049d0be: 6a 00                                           push   0x0
  0049d0c0: 8d 7b fc                                        lea    edi,[ebx-0x4]
  0049d0c3: 56                                              push   esi
  0049d0c4: 8b cf                                           mov    ecx,edi
  0049d0c6: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0049d0cc: 84 c0                                           test   al,al
  0049d0ce: 0f 84 b3 00 00 00                               je     0x49d187
  0049d0d4: 56                                              push   esi
  0049d0d5: 8b cf                                           mov    ecx,edi
  0049d0d7: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0049d0dd: e9 a5 00 00 00                                  jmp    0x49d187
  0049d0e2: 33 ff                                           xor    edi,edi
  0049d0e4: 3b f7                                           cmp    esi,edi
  0049d0e6: 76 61                                           jbe    0x49d149
  0049d0e8: 3b 71 04                                        cmp    esi,DWORD PTR [ecx+0x4]
  0049d0eb: 75 5c                                           jne    0x49d149
  0049d0ed: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0049d0ef: 3b c7                                           cmp    eax,edi
  0049d0f1: 75 05                                           jne    0x49d0f8
  0049d0f3: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049d0f8: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0049d0fc: 73 4b                                           jae    0x49d149
  0049d0fe: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0049d100: 3b c7                                           cmp    eax,edi
  0049d102: 74 1f                                           je     0x49d123
  0049d104: 8d 50 ff                                        lea    edx,[eax-0x1]
  0049d107: 8a 02                                           mov    al,BYTE PTR [edx]
  0049d109: 84 c0                                           test   al,al
  0049d10b: 74 0a                                           je     0x49d117
  0049d10d: 3c ff                                           cmp    al,0xff
  0049d10f: 74 06                                           je     0x49d117
  0049d111: fe c8                                           dec    al
  0049d113: 88 02                                           mov    BYTE PTR [edx],al
  0049d115: eb 0c                                           jmp    0x49d123
  0049d117: 52                                              push   edx
  0049d118: e8 43 4f fa ff                                  call   0x442060
  0049d11d: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0049d120: 83 c4 04                                        add    esp,0x4
  0049d123: 89 3b                                           mov    DWORD PTR [ebx],edi
  0049d125: 89 7b 04                                        mov    DWORD PTR [ebx+0x4],edi
  0049d128: 89 7b 08                                        mov    DWORD PTR [ebx+0x8],edi
  0049d12b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0049d12d: 3b c7                                           cmp    eax,edi
  0049d12f: 75 05                                           jne    0x49d136
  0049d131: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049d136: 89 03                                           mov    DWORD PTR [ebx],eax
  0049d138: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  0049d13b: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0049d13e: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0049d141: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0049d144: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0049d147: eb 41                                           jmp    0x49d18a
  0049d149: 6a 01                                           push   0x1
  0049d14b: 56                                              push   esi
  0049d14c: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  0049d14f: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0049d155: 84 c0                                           test   al,al
  0049d157: 74 2e                                           je     0x49d187
  0049d159: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0049d15c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0049d15e: 85 c0                                           test   eax,eax
  0049d160: 75 05                                           jne    0x49d167
  0049d162: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0049d167: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  0049d169: 8b ce                                           mov    ecx,esi
  0049d16b: 8b d1                                           mov    edx,ecx
  0049d16d: c1 e9 02                                        shr    ecx,0x2
  0049d170: 8b f0                                           mov    esi,eax
  0049d172: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  0049d175: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0049d177: 8b ca                                           mov    ecx,edx
  0049d179: 83 e1 03                                        and    ecx,0x3
  0049d17c: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0049d17e: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  0049d180: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0049d183: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0049d187: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  0049d18a: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0049d18d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049d190: 83 c2 28                                        add    edx,0x28
  0049d193: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0049d196: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0049d199: 83 c0 28                                        add    eax,0x28
  0049d19c: 83 c1 28                                        add    ecx,0x28
  0049d19f: 83 c3 28                                        add    ebx,0x28
  0049d1a2: 3b c2                                           cmp    eax,edx
  0049d1a4: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0049d1a7: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  0049d1aa: 0f 85 a1 fe ff ff                               jne    0x49d051
  0049d1b0: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049d1b3: 5f                                              pop    edi
  0049d1b4: 5e                                              pop    esi
  0049d1b5: 5b                                              pop    ebx
  0049d1b6: 8b e5                                           mov    esp,ebp
  0049d1b8: 5d                                              pop    ebp
  0049d1b9: c3                                              ret
  0049d1ba: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0049d1bd: 8b e5                                           mov    esp,ebp
  0049d1bf: 5d                                              pop    ebp
  0049d1c0: c3                                              ret
  0049e470: 55                                              push   ebp
  0049e471: 8b ec                                           mov    ebp,esp
  0049e473: 6a ff                                           push   0xffffffff
  0049e475: 68 c2 b3 4d 00                                  push   0x4db3c2
  0049e47a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0049e480: 50                                              push   eax
  0049e481: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0049e488: 51                                              push   ecx
  0049e489: 53                                              push   ebx
  0049e48a: 56                                              push   esi
  0049e48b: 8b f1                                           mov    esi,ecx
  0049e48d: 57                                              push   edi
  0049e48e: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0049e491: 6a 01                                           push   0x1
  0049e493: 8d 8e f8 00 00 00                               lea    ecx,[esi+0xf8]
  0049e499: c7 45 fc 08 00 00 00                            mov    DWORD PTR [ebp-0x4],0x8
  0049e4a0: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0049e4a6: 6a 01                                           push   0x1
  0049e4a8: 8d 8e cc 00 00 00                               lea    ecx,[esi+0xcc]
  0049e4ae: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0049e4b2: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0049e4b8: 6a 01                                           push   0x1
  0049e4ba: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  0049e4c0: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0049e4c4: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0049e4ca: 6a 01                                           push   0x1
  0049e4cc: 8d 8e 9c 00 00 00                               lea    ecx,[esi+0x9c]
  0049e4d2: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0049e4d6: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0049e4dc: 8b 86 84 00 00 00                               mov    eax,DWORD PTR [esi+0x84]
  0049e4e2: 33 db                                           xor    ebx,ebx
  0049e4e4: 3b c3                                           cmp    eax,ebx
  0049e4e6: 74 1c                                           je     0x49e504
  0049e4e8: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0049e4eb: 8a 01                                           mov    al,BYTE PTR [ecx]
  0049e4ed: 84 c0                                           test   al,al
  0049e4ef: 74 0a                                           je     0x49e4fb
  0049e4f1: 3c ff                                           cmp    al,0xff
  0049e4f3: 74 06                                           je     0x49e4fb
  0049e4f5: fe c8                                           dec    al
  0049e4f7: 88 01                                           mov    BYTE PTR [ecx],al
  0049e4f9: eb 09                                           jmp    0x49e504
  0049e4fb: 51                                              push   ecx
  0049e4fc: e8 5f 3b fa ff                                  call   0x442060
  0049e501: 83 c4 04                                        add    esp,0x4
  0049e504: 89 9e 84 00 00 00                               mov    DWORD PTR [esi+0x84],ebx
  0049e50a: 89 9e 88 00 00 00                               mov    DWORD PTR [esi+0x88],ebx
  0049e510: 89 9e 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],ebx
  0049e516: 8b 46 50                                        mov    eax,DWORD PTR [esi+0x50]
  0049e519: 3b c3                                           cmp    eax,ebx
  0049e51b: 74 1c                                           je     0x49e539
  0049e51d: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0049e520: 8a 01                                           mov    al,BYTE PTR [ecx]
  0049e522: 84 c0                                           test   al,al
  0049e524: 74 0a                                           je     0x49e530
  0049e526: 3c ff                                           cmp    al,0xff
  0049e528: 74 06                                           je     0x49e530
  0049e52a: fe c8                                           dec    al
  0049e52c: 88 01                                           mov    BYTE PTR [ecx],al
  0049e52e: eb 09                                           jmp    0x49e539
  0049e530: 51                                              push   ecx
  0049e531: e8 2a 3b fa ff                                  call   0x442060
  0049e536: 83 c4 04                                        add    esp,0x4
  0049e539: 89 5e 50                                        mov    DWORD PTR [esi+0x50],ebx
  0049e53c: 89 5e 54                                        mov    DWORD PTR [esi+0x54],ebx
  0049e53f: 89 5e 58                                        mov    DWORD PTR [esi+0x58],ebx
  0049e542: 8b 46 38                                        mov    eax,DWORD PTR [esi+0x38]
  0049e545: 3b c3                                           cmp    eax,ebx
  0049e547: 74 1c                                           je     0x49e565
  0049e549: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0049e54c: 8a 01                                           mov    al,BYTE PTR [ecx]
  0049e54e: 84 c0                                           test   al,al
  0049e550: 74 0a                                           je     0x49e55c
  0049e552: 3c ff                                           cmp    al,0xff
  0049e554: 74 06                                           je     0x49e55c
  0049e556: fe c8                                           dec    al
  0049e558: 88 01                                           mov    BYTE PTR [ecx],al
  0049e55a: eb 09                                           jmp    0x49e565
  0049e55c: 51                                              push   ecx
  0049e55d: e8 fe 3a fa ff                                  call   0x442060
  0049e562: 83 c4 04                                        add    esp,0x4
  0049e565: 89 5e 38                                        mov    DWORD PTR [esi+0x38],ebx
  0049e568: 89 5e 3c                                        mov    DWORD PTR [esi+0x3c],ebx
  0049e56b: 89 5e 40                                        mov    DWORD PTR [esi+0x40],ebx
  0049e56e: 8b 7e 24                                        mov    edi,DWORD PTR [esi+0x24]
  0049e571: 3b fb                                           cmp    edi,ebx
  0049e573: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0049e577: 74 24                                           je     0x49e59d
  0049e579: 8b 5e 28                                        mov    ebx,DWORD PTR [esi+0x28]
  0049e57c: 3b fb                                           cmp    edi,ebx
  0049e57e: 74 0f                                           je     0x49e58f
  0049e580: 8b 07                                           mov    eax,DWORD PTR [edi]
  0049e582: 6a 00                                           push   0x0
  0049e584: 8b cf                                           mov    ecx,edi
  0049e586: ff 10                                           call   DWORD PTR [eax]
  0049e588: 83 c7 24                                        add    edi,0x24
  0049e58b: 3b fb                                           cmp    edi,ebx
  0049e58d: 75 f1                                           jne    0x49e580
  0049e58f: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  0049e592: 50                                              push   eax
  0049e593: e8 c8 3a fa ff                                  call   0x442060
  0049e598: 83 c4 04                                        add    esp,0x4
  0049e59b: 33 db                                           xor    ebx,ebx
  0049e59d: 89 5e 24                                        mov    DWORD PTR [esi+0x24],ebx
  0049e5a0: 89 5e 28                                        mov    DWORD PTR [esi+0x28],ebx
  0049e5a3: 89 5e 2c                                        mov    DWORD PTR [esi+0x2c],ebx
  0049e5a6: 8b 7e 14                                        mov    edi,DWORD PTR [esi+0x14]
  0049e5a9: 3b fb                                           cmp    edi,ebx
  0049e5ab: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0049e5af: 74 24                                           je     0x49e5d5
  0049e5b1: 8b 5e 18                                        mov    ebx,DWORD PTR [esi+0x18]
  0049e5b4: 3b fb                                           cmp    edi,ebx
  0049e5b6: 74 0f                                           je     0x49e5c7
  0049e5b8: 8b 17                                           mov    edx,DWORD PTR [edi]
  0049e5ba: 6a 00                                           push   0x0
  0049e5bc: 8b cf                                           mov    ecx,edi
  0049e5be: ff 12                                           call   DWORD PTR [edx]
  0049e5c0: 83 c7 38                                        add    edi,0x38
  0049e5c3: 3b fb                                           cmp    edi,ebx
  0049e5c5: 75 f1                                           jne    0x49e5b8
  0049e5c7: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  0049e5ca: 50                                              push   eax
  0049e5cb: e8 90 3a fa ff                                  call   0x442060
  0049e5d0: 83 c4 04                                        add    esp,0x4
  0049e5d3: 33 db                                           xor    ebx,ebx
  0049e5d5: 89 5e 14                                        mov    DWORD PTR [esi+0x14],ebx
  0049e5d8: 89 5e 18                                        mov    DWORD PTR [esi+0x18],ebx
  0049e5db: 89 5e 1c                                        mov    DWORD PTR [esi+0x1c],ebx
  0049e5de: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  0049e5e1: 3b fb                                           cmp    edi,ebx
  0049e5e3: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0049e5ea: 74 24                                           je     0x49e610
  0049e5ec: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  0049e5ef: 3b fb                                           cmp    edi,ebx
  0049e5f1: 74 0f                                           je     0x49e602
  0049e5f3: 8b 07                                           mov    eax,DWORD PTR [edi]
  0049e5f5: 6a 00                                           push   0x0
  0049e5f7: 8b cf                                           mov    ecx,edi
  0049e5f9: ff 10                                           call   DWORD PTR [eax]
  0049e5fb: 83 c7 28                                        add    edi,0x28
  0049e5fe: 3b fb                                           cmp    edi,ebx
  0049e600: 75 f1                                           jne    0x49e5f3
  0049e602: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0049e605: 51                                              push   ecx
  0049e606: e8 55 3a fa ff                                  call   0x442060
  0049e60b: 83 c4 04                                        add    esp,0x4
  0049e60e: 33 db                                           xor    ebx,ebx
  0049e610: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0049e613: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0049e616: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0049e619: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0049e61c: 5f                                              pop    edi
  0049e61d: 5e                                              pop    esi
  0049e61e: 5b                                              pop    ebx
  0049e61f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049e626: 8b e5                                           mov    esp,ebp
  0049e628: 5d                                              pop    ebp
  0049e629: c3                                              ret
  0049fce0: 55                                              push   ebp
  0049fce1: 8b ec                                           mov    ebp,esp
  0049fce3: 8b c1                                           mov    eax,ecx
  0049fce5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049fce8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0049fcea: 89 10                                           mov    DWORD PTR [eax],edx
  0049fcec: 5d                                              pop    ebp
  0049fced: c2 04 00                                        ret    0x4
  004a0440: 55                                              push   ebp
  004a0441: 8b ec                                           mov    ebp,esp
  004a0443: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a0446: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a0448: 8d 04 80                                        lea    eax,[eax+eax*4]
  004a044b: 8d 14 c1                                        lea    edx,[ecx+eax*8]
  004a044e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a0451: 89 10                                           mov    DWORD PTR [eax],edx
  004a0453: 5d                                              pop    ebp
  004a0454: c2 08 00                                        ret    0x8
  004a1c20: 55                                              push   ebp
  004a1c21: 8b ec                                           mov    ebp,esp
  004a1c23: 6a ff                                           push   0xffffffff
  004a1c25: 68 19 b7 4d 00                                  push   0x4db719
  004a1c2a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a1c30: 50                                              push   eax
  004a1c31: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a1c38: 83 ec 08                                        sub    esp,0x8
  004a1c3b: 53                                              push   ebx
  004a1c3c: 56                                              push   esi
  004a1c3d: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a1c40: 57                                              push   edi
  004a1c41: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004a1c44: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a1c47: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004a1c4a: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a1c51: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a1c54: 85 c0                                           test   eax,eax
  004a1c56: 0f 86 b8 00 00 00                               jbe    0x4a1d14
  004a1c5c: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a1c5f: 85 ff                                           test   edi,edi
  004a1c61: 74 79                                           je     0x4a1cdc
  004a1c63: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a1c66: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004a1c69: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a1c6c: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004a1c6f: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a1c72: 89 57 0c                                        mov    DWORD PTR [edi+0xc],edx
  004a1c75: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004a1c78: 89 47 10                                        mov    DWORD PTR [edi+0x10],eax
  004a1c7b: 8a 4e 14                                        mov    cl,BYTE PTR [esi+0x14]
  004a1c7e: 88 4f 14                                        mov    BYTE PTR [edi+0x14],cl
  004a1c81: c7 07 28 f9 4d 00                               mov    DWORD PTR [edi],0x4df928
  004a1c87: 8a 46 18                                        mov    al,BYTE PTR [esi+0x18]
  004a1c8a: 8d 5f 18                                        lea    ebx,[edi+0x18]
  004a1c8d: 88 03                                           mov    BYTE PTR [ebx],al
  004a1c8f: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  004a1c92: 85 c0                                           test   eax,eax
  004a1c94: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a1c98: 75 04                                           jne    0x4a1c9e
  004a1c9a: 33 d2                                           xor    edx,edx
  004a1c9c: eb 16                                           jmp    0x4a1cb4
  004a1c9e: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004a1ca1: 2b c8                                           sub    ecx,eax
  004a1ca3: b8 67 66 66 66                                  mov    eax,0x66666667
  004a1ca8: f7 e9                                           imul   ecx
  004a1caa: c1 fa 04                                        sar    edx,0x4
  004a1cad: 8b c2                                           mov    eax,edx
  004a1caf: c1 e8 1f                                        shr    eax,0x1f
  004a1cb2: 03 d0                                           add    edx,eax
  004a1cb4: 52                                              push   edx
  004a1cb5: 8b cb                                           mov    ecx,ebx
  004a1cb7: e8 74 00 00 00                                  call   0x4a1d30
  004a1cbc: 84 c0                                           test   al,al
  004a1cbe: 74 16                                           je     0x4a1cd6
  004a1cc0: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004a1cc3: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004a1cc6: 8b 4e 1c                                        mov    ecx,DWORD PTR [esi+0x1c]
  004a1cc9: 52                                              push   edx
  004a1cca: 50                                              push   eax
  004a1ccb: 51                                              push   ecx
  004a1ccc: 8b cb                                           mov    ecx,ebx
  004a1cce: e8 dd 0a 00 00                                  call   0x4a27b0
  004a1cd3: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004a1cd6: c7 07 68 f9 4d 00                               mov    DWORD PTR [edi],0x4df968
  004a1cdc: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a1cdf: 49                                              dec    ecx
  004a1ce0: 83 c7 28                                        add    edi,0x28
  004a1ce3: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a1ce7: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a1cea: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004a1ced: e9 5f ff ff ff                                  jmp    0x4a1c51
  004a1d14: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a1d17: 8b c7                                           mov    eax,edi
  004a1d19: 5f                                              pop    edi
  004a1d1a: 5e                                              pop    esi
  004a1d1b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a1d22: 5b                                              pop    ebx
  004a1d23: 8b e5                                           mov    esp,ebp
  004a1d25: 5d                                              pop    ebp
  004a1d26: c2 0c 00                                        ret    0xc
  004a1d80: 55                                              push   ebp
  004a1d81: 8b ec                                           mov    ebp,esp
  004a1d83: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a1d86: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a1d88: 8d 04 80                                        lea    eax,[eax+eax*4]
  004a1d8b: c1 e0 03                                        shl    eax,0x3
  004a1d8e: 2b c8                                           sub    ecx,eax
  004a1d90: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a1d93: 89 08                                           mov    DWORD PTR [eax],ecx
  004a1d95: 5d                                              pop    ebp
  004a1d96: c2 08 00                                        ret    0x8
  004a2250: 55                                              push   ebp
  004a2251: 8b ec                                           mov    ebp,esp
  004a2253: 6a ff                                           push   0xffffffff
  004a2255: 68 62 b8 4d 00                                  push   0x4db862
  004a225a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a2260: 50                                              push   eax
  004a2261: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a2268: 51                                              push   ecx
  004a2269: 53                                              push   ebx
  004a226a: 56                                              push   esi
  004a226b: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a226e: 8a 06                                           mov    al,BYTE PTR [esi]
  004a2270: 57                                              push   edi
  004a2271: 8b f9                                           mov    edi,ecx
  004a2273: 88 07                                           mov    BYTE PTR [edi],al
  004a2275: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a2278: 85 c0                                           test   eax,eax
  004a227a: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  004a227d: 75 04                                           jne    0x4a2283
  004a227f: 33 d2                                           xor    edx,edx
  004a2281: eb 16                                           jmp    0x4a2299
  004a2283: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a2286: 2b c8                                           sub    ecx,eax
  004a2288: b8 67 66 66 66                                  mov    eax,0x66666667
  004a228d: f7 e9                                           imul   ecx
  004a228f: c1 fa 04                                        sar    edx,0x4
  004a2292: 8b c2                                           mov    eax,edx
  004a2294: c1 e8 1f                                        shr    eax,0x1f
  004a2297: 03 d0                                           add    edx,eax
  004a2299: 52                                              push   edx
  004a229a: 8b cf                                           mov    ecx,edi
  004a229c: e8 af d9 ff ff                                  call   0x49fc50
  004a22a1: 84 c0                                           test   al,al
  004a22a3: 74 16                                           je     0x4a22bb
  004a22a5: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004a22a8: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a22ab: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a22ae: 52                                              push   edx
  004a22af: 50                                              push   eax
  004a22b0: 51                                              push   ecx
  004a22b1: 8b cf                                           mov    ecx,edi
  004a22b3: e8 a8 1d 00 00                                  call   0x4a4060
  004a22b8: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004a22bb: 8a 46 10                                        mov    al,BYTE PTR [esi+0x10]
  004a22be: 8d 5f 10                                        lea    ebx,[edi+0x10]
  004a22c1: 88 03                                           mov    BYTE PTR [ebx],al
  004a22c3: 8b 46 14                                        mov    eax,DWORD PTR [esi+0x14]
  004a22c6: 85 c0                                           test   eax,eax
  004a22c8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a22cf: 75 04                                           jne    0x4a22d5
  004a22d1: 33 d2                                           xor    edx,edx
  004a22d3: eb 18                                           jmp    0x4a22ed
  004a22d5: 8b 4e 18                                        mov    ecx,DWORD PTR [esi+0x18]
  004a22d8: 2b c8                                           sub    ecx,eax
  004a22da: b8 93 24 49 92                                  mov    eax,0x92492493
  004a22df: f7 e9                                           imul   ecx
  004a22e1: 03 d1                                           add    edx,ecx
  004a22e3: c1 fa 05                                        sar    edx,0x5
  004a22e6: 8b c2                                           mov    eax,edx
  004a22e8: c1 e8 1f                                        shr    eax,0x1f
  004a22eb: 03 d0                                           add    edx,eax
  004a22ed: 52                                              push   edx
  004a22ee: 8b cb                                           mov    ecx,ebx
  004a22f0: e8 7b da ff ff                                  call   0x49fd70
  004a22f5: 84 c0                                           test   al,al
  004a22f7: 74 16                                           je     0x4a230f
  004a22f9: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004a22fc: 8b 46 18                                        mov    eax,DWORD PTR [esi+0x18]
  004a22ff: 8b 4e 14                                        mov    ecx,DWORD PTR [esi+0x14]
  004a2302: 52                                              push   edx
  004a2303: 50                                              push   eax
  004a2304: 51                                              push   ecx
  004a2305: 8b cb                                           mov    ecx,ebx
  004a2307: e8 64 1e 00 00                                  call   0x4a4170
  004a230c: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004a230f: 8a 46 20                                        mov    al,BYTE PTR [esi+0x20]
  004a2312: 8d 5f 20                                        lea    ebx,[edi+0x20]
  004a2315: 88 03                                           mov    BYTE PTR [ebx],al
  004a2317: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004a231a: 85 c0                                           test   eax,eax
  004a231c: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004a2320: 75 04                                           jne    0x4a2326
  004a2322: 33 d2                                           xor    edx,edx
  004a2324: eb 16                                           jmp    0x4a233c
  004a2326: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  004a2329: 2b c8                                           sub    ecx,eax
  004a232b: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a2330: f7 e9                                           imul   ecx
  004a2332: c1 fa 03                                        sar    edx,0x3
  004a2335: 8b c2                                           mov    eax,edx
  004a2337: c1 e8 1f                                        shr    eax,0x1f
  004a233a: 03 d0                                           add    edx,eax
  004a233c: 52                                              push   edx
  004a233d: 8b cb                                           mov    ecx,ebx
  004a233f: e8 ac 02 00 00                                  call   0x4a25f0
  004a2344: 84 c0                                           test   al,al
  004a2346: 74 16                                           je     0x4a235e
  004a2348: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004a234b: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  004a234e: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  004a2351: 52                                              push   edx
  004a2352: 50                                              push   eax
  004a2353: 51                                              push   ecx
  004a2354: 8b cb                                           mov    ecx,ebx
  004a2356: e8 15 1f 00 00                                  call   0x4a4270
  004a235b: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004a235e: 8a 46 30                                        mov    al,BYTE PTR [esi+0x30]
  004a2361: 88 47 30                                        mov    BYTE PTR [edi+0x30],al
  004a2364: 8a 46 34                                        mov    al,BYTE PTR [esi+0x34]
  004a2367: 8d 5f 34                                        lea    ebx,[edi+0x34]
  004a236a: 6a 00                                           push   0x0
  004a236c: 8b cb                                           mov    ecx,ebx
  004a236e: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a2372: 88 03                                           mov    BYTE PTR [ebx],al
  004a2374: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a237a: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a2380: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a2382: 52                                              push   edx
  004a2383: 6a 00                                           push   0x0
  004a2385: 8d 46 34                                        lea    eax,[esi+0x34]
  004a2388: 50                                              push   eax
  004a2389: 8b cb                                           mov    ecx,ebx
  004a238b: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a2391: 8b 46 44                                        mov    eax,DWORD PTR [esi+0x44]
  004a2394: 89 47 44                                        mov    DWORD PTR [edi+0x44],eax
  004a2397: 8b 4e 48                                        mov    ecx,DWORD PTR [esi+0x48]
  004a239a: 89 4f 48                                        mov    DWORD PTR [edi+0x48],ecx
  004a239d: 8a 46 4c                                        mov    al,BYTE PTR [esi+0x4c]
  004a23a0: 8d 5f 4c                                        lea    ebx,[edi+0x4c]
  004a23a3: 6a 00                                           push   0x0
  004a23a5: 8b cb                                           mov    ecx,ebx
  004a23a7: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004a23ab: 88 03                                           mov    BYTE PTR [ebx],al
  004a23ad: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a23b3: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a23b9: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a23bb: 50                                              push   eax
  004a23bc: 6a 00                                           push   0x0
  004a23be: 8d 46 4c                                        lea    eax,[esi+0x4c]
  004a23c1: 50                                              push   eax
  004a23c2: 8b cb                                           mov    ecx,ebx
  004a23c4: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a23ca: 8b 4e 5c                                        mov    ecx,DWORD PTR [esi+0x5c]
  004a23cd: 89 4f 5c                                        mov    DWORD PTR [edi+0x5c],ecx
  004a23d0: 8b 56 60                                        mov    edx,DWORD PTR [esi+0x60]
  004a23d3: 89 57 60                                        mov    DWORD PTR [edi+0x60],edx
  004a23d6: 8b 46 64                                        mov    eax,DWORD PTR [esi+0x64]
  004a23d9: 89 47 64                                        mov    DWORD PTR [edi+0x64],eax
  004a23dc: 8b 4e 68                                        mov    ecx,DWORD PTR [esi+0x68]
  004a23df: 89 4f 68                                        mov    DWORD PTR [edi+0x68],ecx
  004a23e2: 8b 56 6c                                        mov    edx,DWORD PTR [esi+0x6c]
  004a23e5: 89 57 6c                                        mov    DWORD PTR [edi+0x6c],edx
  004a23e8: 8b 46 70                                        mov    eax,DWORD PTR [esi+0x70]
  004a23eb: 89 47 70                                        mov    DWORD PTR [edi+0x70],eax
  004a23ee: 8b 4e 74                                        mov    ecx,DWORD PTR [esi+0x74]
  004a23f1: 89 4f 74                                        mov    DWORD PTR [edi+0x74],ecx
  004a23f4: 8b 56 78                                        mov    edx,DWORD PTR [esi+0x78]
  004a23f7: 89 57 78                                        mov    DWORD PTR [edi+0x78],edx
  004a23fa: 8b 46 7c                                        mov    eax,DWORD PTR [esi+0x7c]
  004a23fd: 89 47 7c                                        mov    DWORD PTR [edi+0x7c],eax
  004a2400: 8a 86 80 00 00 00                               mov    al,BYTE PTR [esi+0x80]
  004a2406: 8d 9f 80 00 00 00                               lea    ebx,[edi+0x80]
  004a240c: 6a 00                                           push   0x0
  004a240e: 8b cb                                           mov    ecx,ebx
  004a2410: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004a2414: 88 03                                           mov    BYTE PTR [ebx],al
  004a2416: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a241c: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a2422: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a2424: 52                                              push   edx
  004a2425: 6a 00                                           push   0x0
  004a2427: 8d 86 80 00 00 00                               lea    eax,[esi+0x80]
  004a242d: 50                                              push   eax
  004a242e: 8b cb                                           mov    ecx,ebx
  004a2430: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a2436: 8b 86 90 00 00 00                               mov    eax,DWORD PTR [esi+0x90]
  004a243c: 89 87 90 00 00 00                               mov    DWORD PTR [edi+0x90],eax
  004a2442: 8b 8e 94 00 00 00                               mov    ecx,DWORD PTR [esi+0x94]
  004a2448: 89 8f 94 00 00 00                               mov    DWORD PTR [edi+0x94],ecx
  004a244e: 8b 96 98 00 00 00                               mov    edx,DWORD PTR [esi+0x98]
  004a2454: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  004a2458: 89 97 98 00 00 00                               mov    DWORD PTR [edi+0x98],edx
  004a245e: 8d 9f 9c 00 00 00                               lea    ebx,[edi+0x9c]
  004a2464: 8a 86 9c 00 00 00                               mov    al,BYTE PTR [esi+0x9c]
  004a246a: 6a 00                                           push   0x0
  004a246c: 8b cb                                           mov    ecx,ebx
  004a246e: 88 03                                           mov    BYTE PTR [ebx],al
  004a2470: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a2476: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a247b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004a247d: 51                                              push   ecx
  004a247e: 6a 00                                           push   0x0
  004a2480: 8d 86 9c 00 00 00                               lea    eax,[esi+0x9c]
  004a2486: 50                                              push   eax
  004a2487: 8b cb                                           mov    ecx,ebx
  004a2489: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a248f: 8b 96 ac 00 00 00                               mov    edx,DWORD PTR [esi+0xac]
  004a2495: 89 97 ac 00 00 00                               mov    DWORD PTR [edi+0xac],edx
  004a249b: 8a 96 b0 00 00 00                               mov    dl,BYTE PTR [esi+0xb0]
  004a24a1: 8d 86 b0 00 00 00                               lea    eax,[esi+0xb0]
  004a24a7: 8d 8f b0 00 00 00                               lea    ecx,[edi+0xb0]
  004a24ad: 88 11                                           mov    BYTE PTR [ecx],dl
  004a24af: 33 d2                                           xor    edx,edx
  004a24b1: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004a24b4: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004a24b7: 89 51 0c                                        mov    DWORD PTR [ecx+0xc],edx
  004a24ba: 8b 1d ec e4 4d 00                               mov    ebx,DWORD PTR ds:0x4de4ec
  004a24c0: 8b 1b                                           mov    ebx,DWORD PTR [ebx]
  004a24c2: 53                                              push   ebx
  004a24c3: 52                                              push   edx
  004a24c4: 50                                              push   eax
  004a24c5: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  004a24c9: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a24cf: 8b 86 c0 00 00 00                               mov    eax,DWORD PTR [esi+0xc0]
  004a24d5: 89 87 c0 00 00 00                               mov    DWORD PTR [edi+0xc0],eax
  004a24db: 8b 8e c4 00 00 00                               mov    ecx,DWORD PTR [esi+0xc4]
  004a24e1: 89 8f c4 00 00 00                               mov    DWORD PTR [edi+0xc4],ecx
  004a24e7: 8b 96 c8 00 00 00                               mov    edx,DWORD PTR [esi+0xc8]
  004a24ed: 89 97 c8 00 00 00                               mov    DWORD PTR [edi+0xc8],edx
  004a24f3: 8a 86 cc 00 00 00                               mov    al,BYTE PTR [esi+0xcc]
  004a24f9: 8d 9f cc 00 00 00                               lea    ebx,[edi+0xcc]
  004a24ff: 6a 00                                           push   0x0
  004a2501: 8b cb                                           mov    ecx,ebx
  004a2503: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  004a2507: 88 03                                           mov    BYTE PTR [ebx],al
  004a2509: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a250f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a2514: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004a2516: 51                                              push   ecx
  004a2517: 6a 00                                           push   0x0
  004a2519: 8d 86 cc 00 00 00                               lea    eax,[esi+0xcc]
  004a251f: 50                                              push   eax
  004a2520: 8b cb                                           mov    ecx,ebx
  004a2522: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a2528: 8b 96 dc 00 00 00                               mov    edx,DWORD PTR [esi+0xdc]
  004a252e: 89 97 dc 00 00 00                               mov    DWORD PTR [edi+0xdc],edx
  004a2534: 8b 86 e0 00 00 00                               mov    eax,DWORD PTR [esi+0xe0]
  004a253a: 89 87 e0 00 00 00                               mov    DWORD PTR [edi+0xe0],eax
  004a2540: 8b 8e e4 00 00 00                               mov    ecx,DWORD PTR [esi+0xe4]
  004a2546: 89 8f e4 00 00 00                               mov    DWORD PTR [edi+0xe4],ecx
  004a254c: 8b 96 e8 00 00 00                               mov    edx,DWORD PTR [esi+0xe8]
  004a2552: 89 97 e8 00 00 00                               mov    DWORD PTR [edi+0xe8],edx
  004a2558: 8b 86 ec 00 00 00                               mov    eax,DWORD PTR [esi+0xec]
  004a255e: 89 87 ec 00 00 00                               mov    DWORD PTR [edi+0xec],eax
  004a2564: 8b 8e f0 00 00 00                               mov    ecx,DWORD PTR [esi+0xf0]
  004a256a: 89 8f f0 00 00 00                               mov    DWORD PTR [edi+0xf0],ecx
  004a2570: 8a 96 f4 00 00 00                               mov    dl,BYTE PTR [esi+0xf4]
  004a2576: 88 97 f4 00 00 00                               mov    BYTE PTR [edi+0xf4],dl
  004a257c: 8a 96 f8 00 00 00                               mov    dl,BYTE PTR [esi+0xf8]
  004a2582: 8d 8f f8 00 00 00                               lea    ecx,[edi+0xf8]
  004a2588: 8d 86 f8 00 00 00                               lea    eax,[esi+0xf8]
  004a258e: 88 11                                           mov    BYTE PTR [ecx],dl
  004a2590: 33 d2                                           xor    edx,edx
  004a2592: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004a2595: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004a2598: 89 51 0c                                        mov    DWORD PTR [ecx+0xc],edx
  004a259b: 8b 1d ec e4 4d 00                               mov    ebx,DWORD PTR ds:0x4de4ec
  004a25a1: 8b 1b                                           mov    ebx,DWORD PTR [ebx]
  004a25a3: 53                                              push   ebx
  004a25a4: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  004a25a8: 52                                              push   edx
  004a25a9: 50                                              push   eax
  004a25aa: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a25b0: 8a 86 08 01 00 00                               mov    al,BYTE PTR [esi+0x108]
  004a25b6: 88 87 08 01 00 00                               mov    BYTE PTR [edi+0x108],al
  004a25bc: 8a 8e 09 01 00 00                               mov    cl,BYTE PTR [esi+0x109]
  004a25c2: 88 8f 09 01 00 00                               mov    BYTE PTR [edi+0x109],cl
  004a25c8: 8a 96 0a 01 00 00                               mov    dl,BYTE PTR [esi+0x10a]
  004a25ce: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a25d1: 88 97 0a 01 00 00                               mov    BYTE PTR [edi+0x10a],dl
  004a25d7: 8b c7                                           mov    eax,edi
  004a25d9: 5f                                              pop    edi
  004a25da: 5e                                              pop    esi
  004a25db: 5b                                              pop    ebx
  004a25dc: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a25e3: 8b e5                                           mov    esp,ebp
  004a25e5: 5d                                              pop    ebp
  004a25e6: c2 04 00                                        ret    0x4
  004a2640: 55                                              push   ebp
  004a2641: 8b ec                                           mov    ebp,esp
  004a2643: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a2646: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004a2648: 6a 00                                           push   0x0
  004a264a: ff 10                                           call   DWORD PTR [eax]
  004a264c: 5d                                              pop    ebp
  004a264d: c2 04 00                                        ret    0x4
  004a2650: 55                                              push   ebp
  004a2651: 8b ec                                           mov    ebp,esp
  004a2653: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a2656: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004a2658: 6a 00                                           push   0x0
  004a265a: ff 10                                           call   DWORD PTR [eax]
  004a265c: 5d                                              pop    ebp
  004a265d: c2 04 00                                        ret    0x4
  004a2660: 55                                              push   ebp
  004a2661: 8b ec                                           mov    ebp,esp
  004a2663: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a2666: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004a2668: 6a 00                                           push   0x0
  004a266a: ff 10                                           call   DWORD PTR [eax]
  004a266c: 5d                                              pop    ebp
  004a266d: c2 04 00                                        ret    0x4
  004a2890: 55                                              push   ebp
  004a2891: 8b ec                                           mov    ebp,esp
  004a2893: 6a ff                                           push   0xffffffff
  004a2895: 68 e9 b8 4d 00                                  push   0x4db8e9
  004a289a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a28a0: 50                                              push   eax
  004a28a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a28a8: 83 ec 08                                        sub    esp,0x8
  004a28ab: 53                                              push   ebx
  004a28ac: 56                                              push   esi
  004a28ad: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a28b0: 57                                              push   edi
  004a28b1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a28b4: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a28b7: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004a28ba: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a28c1: 3b 75 0c                                        cmp    esi,DWORD PTR [ebp+0xc]
  004a28c4: 0f 84 b4 00 00 00                               je     0x4a297e
  004a28ca: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004a28cd: 85 ff                                           test   edi,edi
  004a28cf: 74 79                                           je     0x4a294a
  004a28d1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a28d4: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004a28d7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a28da: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004a28dd: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a28e0: 89 57 0c                                        mov    DWORD PTR [edi+0xc],edx
  004a28e3: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004a28e6: 89 47 10                                        mov    DWORD PTR [edi+0x10],eax
  004a28e9: 8a 4e 14                                        mov    cl,BYTE PTR [esi+0x14]
  004a28ec: 88 4f 14                                        mov    BYTE PTR [edi+0x14],cl
  004a28ef: c7 07 28 f9 4d 00                               mov    DWORD PTR [edi],0x4df928
  004a28f5: 8a 46 18                                        mov    al,BYTE PTR [esi+0x18]
  004a28f8: 8d 5f 18                                        lea    ebx,[edi+0x18]
  004a28fb: 88 03                                           mov    BYTE PTR [ebx],al
  004a28fd: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  004a2900: 85 c0                                           test   eax,eax
  004a2902: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a2906: 75 04                                           jne    0x4a290c
  004a2908: 33 d2                                           xor    edx,edx
  004a290a: eb 16                                           jmp    0x4a2922
  004a290c: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004a290f: 2b c8                                           sub    ecx,eax
  004a2911: b8 67 66 66 66                                  mov    eax,0x66666667
  004a2916: f7 e9                                           imul   ecx
  004a2918: c1 fa 04                                        sar    edx,0x4
  004a291b: 8b c2                                           mov    eax,edx
  004a291d: c1 e8 1f                                        shr    eax,0x1f
  004a2920: 03 d0                                           add    edx,eax
  004a2922: 52                                              push   edx
  004a2923: 8b cb                                           mov    ecx,ebx
  004a2925: e8 06 f4 ff ff                                  call   0x4a1d30
  004a292a: 84 c0                                           test   al,al
  004a292c: 74 16                                           je     0x4a2944
  004a292e: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004a2931: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004a2934: 8b 4e 1c                                        mov    ecx,DWORD PTR [esi+0x1c]
  004a2937: 52                                              push   edx
  004a2938: 50                                              push   eax
  004a2939: 51                                              push   ecx
  004a293a: 8b cb                                           mov    ecx,ebx
  004a293c: e8 6f fe ff ff                                  call   0x4a27b0
  004a2941: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004a2944: c7 07 68 f9 4d 00                               mov    DWORD PTR [edi],0x4df968
  004a294a: 83 c7 28                                        add    edi,0x28
  004a294d: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a2951: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a2954: 83 c6 28                                        add    esi,0x28
  004a2957: e9 65 ff ff ff                                  jmp    0x4a28c1
  004a297e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a2981: 8b c7                                           mov    eax,edi
  004a2983: 5f                                              pop    edi
  004a2984: 5e                                              pop    esi
  004a2985: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a298c: 5b                                              pop    ebx
  004a298d: 8b e5                                           mov    esp,ebp
  004a298f: 5d                                              pop    ebp
  004a2990: c2 0c 00                                        ret    0xc
  004a29a0: 55                                              push   ebp
  004a29a1: 8b ec                                           mov    ebp,esp
  004a29a3: 83 ec 0c                                        sub    esp,0xc
  004a29a6: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a29a9: 56                                              push   esi
  004a29aa: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a29ad: 3b f0                                           cmp    esi,eax
  004a29af: 0f 84 0e 02 00 00                               je     0x4a2bc3
  004a29b5: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a29b8: 53                                              push   ebx
  004a29b9: 8d 58 18                                        lea    ebx,[eax+0x18]
  004a29bc: 57                                              push   edi
  004a29bd: 89 5d f4                                        mov    DWORD PTR [ebp-0xc],ebx
  004a29c0: 83 c6 1c                                        add    esi,0x1c
  004a29c3: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004a29c6: 3b cb                                           cmp    ecx,ebx
  004a29c8: 0f 84 dc 01 00 00                               je     0x4a2baa
  004a29ce: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004a29d1: 85 ff                                           test   edi,edi
  004a29d3: 74 1e                                           je     0x4a29f3
  004a29d5: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a29d8: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004a29db: 2b cf                                           sub    ecx,edi
  004a29dd: b8 67 66 66 66                                  mov    eax,0x66666667
  004a29e2: f7 e9                                           imul   ecx
  004a29e4: c1 fa 04                                        sar    edx,0x4
  004a29e7: 8b c2                                           mov    eax,edx
  004a29e9: c1 e8 1f                                        shr    eax,0x1f
  004a29ec: 03 d0                                           add    edx,eax
  004a29ee: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a29f1: 75 2d                                           jne    0x4a2a20
  004a29f3: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a29f5: 85 c0                                           test   eax,eax
  004a29f7: 74 18                                           je     0x4a2a11
  004a29f9: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a29fc: 51                                              push   ecx
  004a29fd: 50                                              push   eax
  004a29fe: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004a2a01: e8 ca 01 00 00                                  call   0x4a2bd0
  004a2a06: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a2a08: 52                                              push   edx
  004a2a09: e8 52 f6 f9 ff                                  call   0x442060
  004a2a0e: 83 c4 04                                        add    esp,0x4
  004a2a11: 33 c0                                           xor    eax,eax
  004a2a13: 89 06                                           mov    DWORD PTR [esi],eax
  004a2a15: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a2a18: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a2a1b: e9 8a 01 00 00                                  jmp    0x4a2baa
  004a2a20: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004a2a22: 85 c9                                           test   ecx,ecx
  004a2a24: 75 04                                           jne    0x4a2a2a
  004a2a26: 33 d2                                           xor    edx,edx
  004a2a28: eb 16                                           jmp    0x4a2a40
  004a2a2a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a2a2d: 2b d1                                           sub    edx,ecx
  004a2a2f: b8 67 66 66 66                                  mov    eax,0x66666667
  004a2a34: f7 ea                                           imul   edx
  004a2a36: c1 fa 04                                        sar    edx,0x4
  004a2a39: 8b c2                                           mov    eax,edx
  004a2a3b: c1 e8 1f                                        shr    eax,0x1f
  004a2a3e: 03 d0                                           add    edx,eax
  004a2a40: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  004a2a43: 0f 87 a2 00 00 00                               ja     0x4a2aeb
  004a2a49: 3b 7d f8                                        cmp    edi,DWORD PTR [ebp-0x8]
  004a2a4c: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004a2a4f: 74 43                                           je     0x4a2a94
  004a2a51: 8d 59 18                                        lea    ebx,[ecx+0x18]
  004a2a54: 8d 4f 18                                        lea    ecx,[edi+0x18]
  004a2a57: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  004a2a5a: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a2a60: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a2a62: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004a2a65: 50                                              push   eax
  004a2a66: 6a 00                                           push   0x0
  004a2a68: 51                                              push   ecx
  004a2a69: 8b cb                                           mov    ecx,ebx
  004a2a6b: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a2a71: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004a2a74: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004a2a77: b8 28 00 00 00                                  mov    eax,0x28
  004a2a7c: 03 d0                                           add    edx,eax
  004a2a7e: 03 c8                                           add    ecx,eax
  004a2a80: 03 d8                                           add    ebx,eax
  004a2a82: 03 f8                                           add    edi,eax
  004a2a84: 3b 7d f8                                        cmp    edi,DWORD PTR [ebp-0x8]
  004a2a87: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004a2a8a: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  004a2a8d: 75 cb                                           jne    0x4a2a5a
  004a2a8f: 8b 5d f4                                        mov    ebx,DWORD PTR [ebp-0xc]
  004a2a92: 8b ca                                           mov    ecx,edx
  004a2a94: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a2a97: 3b c8                                           cmp    ecx,eax
  004a2a99: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004a2a9c: 8b f9                                           mov    edi,ecx
  004a2a9e: 74 12                                           je     0x4a2ab2
  004a2aa0: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a2aa2: 6a 00                                           push   0x0
  004a2aa4: 8b cf                                           mov    ecx,edi
  004a2aa6: ff 12                                           call   DWORD PTR [edx]
  004a2aa8: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a2aab: 83 c7 28                                        add    edi,0x28
  004a2aae: 3b f8                                           cmp    edi,eax
  004a2ab0: 75 ee                                           jne    0x4a2aa0
  004a2ab2: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a2ab5: 85 c0                                           test   eax,eax
  004a2ab7: 75 0f                                           jne    0x4a2ac8
  004a2ab9: 33 d2                                           xor    edx,edx
  004a2abb: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004a2abe: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a2ac0: 8d 04 ca                                        lea    eax,[edx+ecx*8]
  004a2ac3: e9 df 00 00 00                                  jmp    0x4a2ba7
  004a2ac8: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a2acb: 2b c8                                           sub    ecx,eax
  004a2acd: b8 67 66 66 66                                  mov    eax,0x66666667
  004a2ad2: f7 e9                                           imul   ecx
  004a2ad4: c1 fa 04                                        sar    edx,0x4
  004a2ad7: 8b c2                                           mov    eax,edx
  004a2ad9: c1 e8 1f                                        shr    eax,0x1f
  004a2adc: 03 d0                                           add    edx,eax
  004a2ade: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004a2ae1: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a2ae3: 8d 04 ca                                        lea    eax,[edx+ecx*8]
  004a2ae6: e9 bc 00 00 00                                  jmp    0x4a2ba7
  004a2aeb: 85 c9                                           test   ecx,ecx
  004a2aed: 75 04                                           jne    0x4a2af3
  004a2aef: 33 d2                                           xor    edx,edx
  004a2af1: eb 16                                           jmp    0x4a2b09
  004a2af3: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a2af6: 2b d1                                           sub    edx,ecx
  004a2af8: b8 67 66 66 66                                  mov    eax,0x66666667
  004a2afd: f7 ea                                           imul   edx
  004a2aff: c1 fa 04                                        sar    edx,0x4
  004a2b02: 8b c2                                           mov    eax,edx
  004a2b04: c1 e8 1f                                        shr    eax,0x1f
  004a2b07: 03 d0                                           add    edx,eax
  004a2b09: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  004a2b0c: 77 40                                           ja     0x4a2b4e
  004a2b0e: 85 c9                                           test   ecx,ecx
  004a2b10: 75 04                                           jne    0x4a2b16
  004a2b12: 33 d2                                           xor    edx,edx
  004a2b14: eb 16                                           jmp    0x4a2b2c
  004a2b16: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a2b19: 2b d1                                           sub    edx,ecx
  004a2b1b: b8 67 66 66 66                                  mov    eax,0x66666667
  004a2b20: f7 ea                                           imul   edx
  004a2b22: c1 fa 04                                        sar    edx,0x4
  004a2b25: 8b c2                                           mov    eax,edx
  004a2b27: c1 e8 1f                                        shr    eax,0x1f
  004a2b2a: 03 d0                                           add    edx,eax
  004a2b2c: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a2b2f: 8d 14 92                                        lea    edx,[edx+edx*4]
  004a2b32: 51                                              push   ecx
  004a2b33: 8d 3c d7                                        lea    edi,[edi+edx*8]
  004a2b36: 57                                              push   edi
  004a2b37: 50                                              push   eax
  004a2b38: e8 c3 00 00 00                                  call   0x4a2c00
  004a2b3d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a2b40: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004a2b43: 83 c4 0c                                        add    esp,0xc
  004a2b46: 51                                              push   ecx
  004a2b47: 50                                              push   eax
  004a2b48: 57                                              push   edi
  004a2b49: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004a2b4c: eb 54                                           jmp    0x4a2ba2
  004a2b4e: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a2b51: 52                                              push   edx
  004a2b52: 51                                              push   ecx
  004a2b53: 8d 7e fc                                        lea    edi,[esi-0x4]
  004a2b56: 8b cf                                           mov    ecx,edi
  004a2b58: e8 73 00 00 00                                  call   0x4a2bd0
  004a2b5d: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a2b5f: 50                                              push   eax
  004a2b60: e8 fb f4 f9 ff                                  call   0x442060
  004a2b65: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a2b68: 83 c4 04                                        add    esp,0x4
  004a2b6b: 85 c0                                           test   eax,eax
  004a2b6d: 75 04                                           jne    0x4a2b73
  004a2b6f: 33 d2                                           xor    edx,edx
  004a2b71: eb 16                                           jmp    0x4a2b89
  004a2b73: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a2b76: 2b c8                                           sub    ecx,eax
  004a2b78: b8 67 66 66 66                                  mov    eax,0x66666667
  004a2b7d: f7 e9                                           imul   ecx
  004a2b7f: c1 fa 04                                        sar    edx,0x4
  004a2b82: 8b ca                                           mov    ecx,edx
  004a2b84: c1 e9 1f                                        shr    ecx,0x1f
  004a2b87: 03 d1                                           add    edx,ecx
  004a2b89: 52                                              push   edx
  004a2b8a: 8b cf                                           mov    ecx,edi
  004a2b8c: e8 9f f1 ff ff                                  call   0x4a1d30
  004a2b91: 84 c0                                           test   al,al
  004a2b93: 74 15                                           je     0x4a2baa
  004a2b95: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a2b97: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004a2b9a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a2b9d: 52                                              push   edx
  004a2b9e: 50                                              push   eax
  004a2b9f: 51                                              push   ecx
  004a2ba0: 8b cf                                           mov    ecx,edi
  004a2ba2: e8 09 fc ff ff                                  call   0x4a27b0
  004a2ba7: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a2baa: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a2bad: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a2bb0: 83 c0 28                                        add    eax,0x28
  004a2bb3: 83 c6 28                                        add    esi,0x28
  004a2bb6: 3b c1                                           cmp    eax,ecx
  004a2bb8: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004a2bbb: 0f 85 02 fe ff ff                               jne    0x4a29c3
  004a2bc1: 5f                                              pop    edi
  004a2bc2: 5b                                              pop    ebx
  004a2bc3: 5e                                              pop    esi
  004a2bc4: 8b e5                                           mov    esp,ebp
  004a2bc6: 5d                                              pop    ebp
  004a2bc7: c3                                              ret
  004a2da0: 55                                              push   ebp
  004a2da1: 8b ec                                           mov    ebp,esp
  004a2da3: 83 ec 08                                        sub    esp,0x8
  004a2da6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a2da9: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  004a2dac: 0f 84 53 01 00 00                               je     0x4a2f05
  004a2db2: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a2db5: 53                                              push   ebx
  004a2db6: 56                                              push   esi
  004a2db7: 57                                              push   edi
  004a2db8: 8d 71 20                                        lea    esi,[ecx+0x20]
  004a2dbb: 8d 78 1c                                        lea    edi,[eax+0x1c]
  004a2dbe: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  004a2dc1: 83 e8 28                                        sub    eax,0x28
  004a2dc4: 83 ef 28                                        sub    edi,0x28
  004a2dc7: 83 ee 28                                        sub    esi,0x28
  004a2dca: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004a2dcd: 83 eb 28                                        sub    ebx,0x28
  004a2dd0: 8d 57 fc                                        lea    edx,[edi-0x4]
  004a2dd3: 8d 46 f8                                        lea    eax,[esi-0x8]
  004a2dd6: 3b c2                                           cmp    eax,edx
  004a2dd8: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  004a2ddb: 0f 84 09 01 00 00                               je     0x4a2eea
  004a2de1: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a2de3: 85 c0                                           test   eax,eax
  004a2de5: 74 1b                                           je     0x4a2e02
  004a2de7: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004a2dea: 2b c8                                           sub    ecx,eax
  004a2dec: b8 67 66 66 66                                  mov    eax,0x66666667
  004a2df1: f7 e9                                           imul   ecx
  004a2df3: c1 fa 04                                        sar    edx,0x4
  004a2df6: 8b ca                                           mov    ecx,edx
  004a2df8: c1 e9 1f                                        shr    ecx,0x1f
  004a2dfb: 03 d1                                           add    edx,ecx
  004a2dfd: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004a2e00: 75 0d                                           jne    0x4a2e0f
  004a2e02: 8d 4e f8                                        lea    ecx,[esi-0x8]
  004a2e05: e8 76 01 00 00                                  call   0x4a2f80
  004a2e0a: e9 db 00 00 00                                  jmp    0x4a2eea
  004a2e0f: 8d 5e f8                                        lea    ebx,[esi-0x8]
  004a2e12: 8b cb                                           mov    ecx,ebx
  004a2e14: e8 37 01 00 00                                  call   0x4a2f50
  004a2e19: 39 45 f8                                        cmp    DWORD PTR [ebp-0x8],eax
  004a2e1c: 77 36                                           ja     0x4a2e54
  004a2e1e: 8b 56 fc                                        mov    edx,DWORD PTR [esi-0x4]
  004a2e21: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a2e24: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  004a2e26: 52                                              push   edx
  004a2e27: 50                                              push   eax
  004a2e28: 51                                              push   ecx
  004a2e29: e8 d2 fd ff ff                                  call   0x4a2c00
  004a2e2e: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004a2e30: 83 c4 0c                                        add    esp,0xc
  004a2e33: 51                                              push   ecx
  004a2e34: 50                                              push   eax
  004a2e35: 8b cb                                           mov    ecx,ebx
  004a2e37: e8 94 fd ff ff                                  call   0x4a2bd0
  004a2e3c: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004a2e3f: e8 0c 01 00 00                                  call   0x4a2f50
  004a2e44: 8d 14 80                                        lea    edx,[eax+eax*4]
  004a2e47: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  004a2e4a: 8d 0c d0                                        lea    ecx,[eax+edx*8]
  004a2e4d: 89 0e                                           mov    DWORD PTR [esi],ecx
  004a2e4f: e9 96 00 00 00                                  jmp    0x4a2eea
  004a2e54: 8b cb                                           mov    ecx,ebx
  004a2e56: e8 c5 00 00 00                                  call   0x4a2f20
  004a2e5b: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004a2e5e: 8b d8                                           mov    ebx,eax
  004a2e60: e8 eb 00 00 00                                  call   0x4a2f50
  004a2e65: 3b c3                                           cmp    eax,ebx
  004a2e67: 77 3c                                           ja     0x4a2ea5
  004a2e69: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a2e6b: 8d 5e f8                                        lea    ebx,[esi-0x8]
  004a2e6e: 8b cb                                           mov    ecx,ebx
  004a2e70: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004a2e73: e8 d8 00 00 00                                  call   0x4a2f50
  004a2e78: 50                                              push   eax
  004a2e79: 8d 45 fc                                        lea    eax,[ebp-0x4]
  004a2e7c: 50                                              push   eax
  004a2e7d: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  004a2e80: e8 3b 01 00 00                                  call   0x4a2fc0
  004a2e85: 8b 4e fc                                        mov    ecx,DWORD PTR [esi-0x4]
  004a2e88: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004a2e8b: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a2e8d: 51                                              push   ecx
  004a2e8e: 52                                              push   edx
  004a2e8f: 50                                              push   eax
  004a2e90: e8 6b fd ff ff                                  call   0x4a2c00
  004a2e95: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004a2e97: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a2e9a: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004a2e9d: 83 c4 0c                                        add    esp,0xc
  004a2ea0: 51                                              push   ecx
  004a2ea1: 50                                              push   eax
  004a2ea2: 52                                              push   edx
  004a2ea3: eb 3c                                           jmp    0x4a2ee1
  004a2ea5: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a2ea7: 8b 4e fc                                        mov    ecx,DWORD PTR [esi-0x4]
  004a2eaa: 50                                              push   eax
  004a2eab: 51                                              push   ecx
  004a2eac: 8d 5e f8                                        lea    ebx,[esi-0x8]
  004a2eaf: 8b cb                                           mov    ecx,ebx
  004a2eb1: e8 1a fd ff ff                                  call   0x4a2bd0
  004a2eb6: 8b 56 fc                                        mov    edx,DWORD PTR [esi-0x4]
  004a2eb9: 52                                              push   edx
  004a2eba: e8 a1 f1 f9 ff                                  call   0x442060
  004a2ebf: 83 c4 04                                        add    esp,0x4
  004a2ec2: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004a2ec5: e8 86 00 00 00                                  call   0x4a2f50
  004a2eca: 50                                              push   eax
  004a2ecb: 8b cb                                           mov    ecx,ebx
  004a2ecd: e8 5e ee ff ff                                  call   0x4a1d30
  004a2ed2: 84 c0                                           test   al,al
  004a2ed4: 74 14                                           je     0x4a2eea
  004a2ed6: 8b 56 fc                                        mov    edx,DWORD PTR [esi-0x4]
  004a2ed9: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a2edc: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  004a2ede: 52                                              push   edx
  004a2edf: 50                                              push   eax
  004a2ee0: 51                                              push   ecx
  004a2ee1: 8b cb                                           mov    ecx,ebx
  004a2ee3: e8 c8 f8 ff ff                                  call   0x4a27b0
  004a2ee8: 89 06                                           mov    DWORD PTR [esi],eax
  004a2eea: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a2eed: 3b 45 0c                                        cmp    eax,DWORD PTR [ebp+0xc]
  004a2ef0: 0f 85 c8 fe ff ff                               jne    0x4a2dbe
  004a2ef6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a2ef9: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a2efc: 5f                                              pop    edi
  004a2efd: 5e                                              pop    esi
  004a2efe: 89 08                                           mov    DWORD PTR [eax],ecx
  004a2f00: 5b                                              pop    ebx
  004a2f01: 8b e5                                           mov    esp,ebp
  004a2f03: 5d                                              pop    ebp
  004a2f04: c3                                              ret
  004a2f05: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a2f08: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004a2f0b: 89 10                                           mov    DWORD PTR [eax],edx
  004a2f0d: 8b e5                                           mov    esp,ebp
  004a2f0f: 5d                                              pop    ebp
  004a2f10: c3                                              ret
  004a39a0: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004a39a3: 85 c0                                           test   eax,eax
  004a39a5: 75 01                                           jne    0x4a39a8
  004a39a7: c3                                              ret
  004a39a8: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004a39ab: 2b c8                                           sub    ecx,eax
  004a39ad: b8 67 66 66 66                                  mov    eax,0x66666667
  004a39b2: f7 e9                                           imul   ecx
  004a39b4: c1 fa 04                                        sar    edx,0x4
  004a39b7: 8b c2                                           mov    eax,edx
  004a39b9: c1 e8 1f                                        shr    eax,0x1f
  004a39bc: 03 d0                                           add    edx,eax
  004a39be: 8b c2                                           mov    eax,edx
  004a39c0: c3                                              ret
  004a39d0: 55                                              push   ebp
  004a39d1: 8b ec                                           mov    ebp,esp
  004a39d3: 56                                              push   esi
  004a39d4: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a39d7: 57                                              push   edi
  004a39d8: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004a39db: 3b f7                                           cmp    esi,edi
  004a39dd: 74 0f                                           je     0x4a39ee
  004a39df: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a39e1: 6a 00                                           push   0x0
  004a39e3: 8b ce                                           mov    ecx,esi
  004a39e5: ff 10                                           call   DWORD PTR [eax]
  004a39e7: 83 c6 28                                        add    esi,0x28
  004a39ea: 3b f7                                           cmp    esi,edi
  004a39ec: 75 f1                                           jne    0x4a39df
  004a39ee: 5f                                              pop    edi
  004a39ef: 5e                                              pop    esi
  004a39f0: 5d                                              pop    ebp
  004a39f1: c2 08 00                                        ret    0x8
  004a3a00: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004a3a03: 85 c0                                           test   eax,eax
  004a3a05: 75 01                                           jne    0x4a3a08
  004a3a07: c3                                              ret
  004a3a08: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  004a3a0b: 2b c8                                           sub    ecx,eax
  004a3a0d: b8 67 66 66 66                                  mov    eax,0x66666667
  004a3a12: f7 e9                                           imul   ecx
  004a3a14: c1 fa 04                                        sar    edx,0x4
  004a3a17: 8b c2                                           mov    eax,edx
  004a3a19: c1 e8 1f                                        shr    eax,0x1f
  004a3a1c: 03 d0                                           add    edx,eax
  004a3a1e: 8b c2                                           mov    eax,edx
  004a3a20: c3                                              ret
  004a4060: 55                                              push   ebp
  004a4061: 8b ec                                           mov    ebp,esp
  004a4063: 6a ff                                           push   0xffffffff
  004a4065: 68 09 ba 4d 00                                  push   0x4dba09
  004a406a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a4070: 50                                              push   eax
  004a4071: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a4078: 83 ec 08                                        sub    esp,0x8
  004a407b: 53                                              push   ebx
  004a407c: 56                                              push   esi
  004a407d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a4080: 57                                              push   edi
  004a4081: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a4084: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a4087: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004a408a: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a4091: 3b 75 0c                                        cmp    esi,DWORD PTR [ebp+0xc]
  004a4094: 0f 84 b4 00 00 00                               je     0x4a414e
  004a409a: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004a409d: 85 ff                                           test   edi,edi
  004a409f: 74 79                                           je     0x4a411a
  004a40a1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a40a4: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004a40a7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a40aa: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004a40ad: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a40b0: 89 57 0c                                        mov    DWORD PTR [edi+0xc],edx
  004a40b3: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004a40b6: 89 47 10                                        mov    DWORD PTR [edi+0x10],eax
  004a40b9: 8a 4e 14                                        mov    cl,BYTE PTR [esi+0x14]
  004a40bc: 88 4f 14                                        mov    BYTE PTR [edi+0x14],cl
  004a40bf: c7 07 28 f9 4d 00                               mov    DWORD PTR [edi],0x4df928
  004a40c5: 8a 46 18                                        mov    al,BYTE PTR [esi+0x18]
  004a40c8: 8d 5f 18                                        lea    ebx,[edi+0x18]
  004a40cb: 88 03                                           mov    BYTE PTR [ebx],al
  004a40cd: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  004a40d0: 85 c0                                           test   eax,eax
  004a40d2: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a40d6: 75 04                                           jne    0x4a40dc
  004a40d8: 33 d2                                           xor    edx,edx
  004a40da: eb 16                                           jmp    0x4a40f2
  004a40dc: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004a40df: 2b c8                                           sub    ecx,eax
  004a40e1: b8 67 66 66 66                                  mov    eax,0x66666667
  004a40e6: f7 e9                                           imul   ecx
  004a40e8: c1 fa 04                                        sar    edx,0x4
  004a40eb: 8b c2                                           mov    eax,edx
  004a40ed: c1 e8 1f                                        shr    eax,0x1f
  004a40f0: 03 d0                                           add    edx,eax
  004a40f2: 52                                              push   edx
  004a40f3: 8b cb                                           mov    ecx,ebx
  004a40f5: e8 36 dc ff ff                                  call   0x4a1d30
  004a40fa: 84 c0                                           test   al,al
  004a40fc: 74 16                                           je     0x4a4114
  004a40fe: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004a4101: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004a4104: 8b 4e 1c                                        mov    ecx,DWORD PTR [esi+0x1c]
  004a4107: 52                                              push   edx
  004a4108: 50                                              push   eax
  004a4109: 51                                              push   ecx
  004a410a: 8b cb                                           mov    ecx,ebx
  004a410c: e8 9f e6 ff ff                                  call   0x4a27b0
  004a4111: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004a4114: c7 07 68 f9 4d 00                               mov    DWORD PTR [edi],0x4df968
  004a411a: 83 c7 28                                        add    edi,0x28
  004a411d: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a4121: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004a4124: 83 c6 28                                        add    esi,0x28
  004a4127: e9 65 ff ff ff                                  jmp    0x4a4091
  004a414e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a4151: 8b c7                                           mov    eax,edi
  004a4153: 5f                                              pop    edi
  004a4154: 5e                                              pop    esi
  004a4155: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a415c: 5b                                              pop    ebx
  004a415d: 8b e5                                           mov    esp,ebp
  004a415f: 5d                                              pop    ebp
  004a4160: c2 0c 00                                        ret    0xc
  004a4170: 55                                              push   ebp
  004a4171: 8b ec                                           mov    ebp,esp
  004a4173: 6a ff                                           push   0xffffffff
  004a4175: 68 39 ba 4d 00                                  push   0x4dba39
  004a417a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a4180: 50                                              push   eax
  004a4181: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a4188: 83 ec 08                                        sub    esp,0x8
  004a418b: 53                                              push   ebx
  004a418c: 56                                              push   esi
  004a418d: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a4190: 57                                              push   edi
  004a4191: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004a4194: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a4197: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a419a: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004a41a1: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  004a41a4: 0f 84 aa 00 00 00                               je     0x4a4254
  004a41aa: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a41ad: 85 f6                                           test   esi,esi
  004a41af: 74 6f                                           je     0x4a4220
  004a41b1: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a41b4: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a41b7: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a41ba: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a41bd: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a41c0: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a41c3: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a41c6: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a41c9: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a41cc: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a41cf: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a41d5: 8b 57 18                                        mov    edx,DWORD PTR [edi+0x18]
  004a41d8: 89 56 18                                        mov    DWORD PTR [esi+0x18],edx
  004a41db: 8b 47 1c                                        mov    eax,DWORD PTR [edi+0x1c]
  004a41de: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004a41e1: 8a 47 20                                        mov    al,BYTE PTR [edi+0x20]
  004a41e4: 8d 5e 20                                        lea    ebx,[esi+0x20]
  004a41e7: 6a 00                                           push   0x0
  004a41e9: 8b cb                                           mov    ecx,ebx
  004a41eb: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a41ef: 88 03                                           mov    BYTE PTR [ebx],al
  004a41f1: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a41f7: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a41fd: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a41ff: 52                                              push   edx
  004a4200: 6a 00                                           push   0x0
  004a4202: 8d 47 20                                        lea    eax,[edi+0x20]
  004a4205: 50                                              push   eax
  004a4206: 8b cb                                           mov    ecx,ebx
  004a4208: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a420e: 8b 47 30                                        mov    eax,DWORD PTR [edi+0x30]
  004a4211: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004a4214: 8b 4f 34                                        mov    ecx,DWORD PTR [edi+0x34]
  004a4217: 89 4e 34                                        mov    DWORD PTR [esi+0x34],ecx
  004a421a: c7 06 88 f9 4d 00                               mov    DWORD PTR [esi],0x4df988
  004a4220: 83 c6 38                                        add    esi,0x38
  004a4223: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004a4227: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a422a: 83 c7 38                                        add    edi,0x38
  004a422d: e9 6f ff ff ff                                  jmp    0x4a41a1
  004a4254: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a4257: 5f                                              pop    edi
  004a4258: 8b c6                                           mov    eax,esi
  004a425a: 5e                                              pop    esi
  004a425b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a4262: 5b                                              pop    ebx
  004a4263: 8b e5                                           mov    esp,ebp
  004a4265: 5d                                              pop    ebp
  004a4266: c2 0c 00                                        ret    0xc
  004a4270: 55                                              push   ebp
  004a4271: 8b ec                                           mov    ebp,esp
  004a4273: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a4276: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a4279: 56                                              push   esi
  004a427a: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004a427d: 3b ce                                           cmp    ecx,esi
  004a427f: 74 4a                                           je     0x4a42cb
  004a4281: 85 c0                                           test   eax,eax
  004a4283: 74 3c                                           je     0x4a42c1
  004a4285: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004a4288: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004a428b: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004a428e: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004a4291: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  004a4294: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004a4297: 8b 51 10                                        mov    edx,DWORD PTR [ecx+0x10]
  004a429a: 89 50 10                                        mov    DWORD PTR [eax+0x10],edx
  004a429d: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004a42a0: c7 00 28 f9 4d 00                               mov    DWORD PTR [eax],0x4df928
  004a42a6: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  004a42a9: 8b 51 18                                        mov    edx,DWORD PTR [ecx+0x18]
  004a42ac: 89 50 18                                        mov    DWORD PTR [eax+0x18],edx
  004a42af: 8b 51 1c                                        mov    edx,DWORD PTR [ecx+0x1c]
  004a42b2: 89 50 1c                                        mov    DWORD PTR [eax+0x1c],edx
  004a42b5: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004a42b8: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  004a42bb: c7 00 a8 f9 4d 00                               mov    DWORD PTR [eax],0x4df9a8
  004a42c1: 83 c1 24                                        add    ecx,0x24
  004a42c4: 83 c0 24                                        add    eax,0x24
  004a42c7: 3b ce                                           cmp    ecx,esi
  004a42c9: 75 b6                                           jne    0x4a4281
  004a42cb: 5e                                              pop    esi
  004a42cc: 5d                                              pop    ebp
  004a42cd: c2 0c 00                                        ret    0xc
  004a4300: 55                                              push   ebp
  004a4301: 8b ec                                           mov    ebp,esp
  004a4303: 83 ec 0c                                        sub    esp,0xc
  004a4306: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a4309: 53                                              push   ebx
  004a430a: 56                                              push   esi
  004a430b: 8b f1                                           mov    esi,ecx
  004a430d: 3b f0                                           cmp    esi,eax
  004a430f: 57                                              push   edi
  004a4310: 0f 84 38 02 00 00                               je     0x4a454e
  004a4316: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  004a4319: 33 db                                           xor    ebx,ebx
  004a431b: 3b fb                                           cmp    edi,ebx
  004a431d: 74 1f                                           je     0x4a433e
  004a431f: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004a4322: 89 4d f4                                        mov    DWORD PTR [ebp-0xc],ecx
  004a4325: 2b cf                                           sub    ecx,edi
  004a4327: b8 67 66 66 66                                  mov    eax,0x66666667
  004a432c: f7 e9                                           imul   ecx
  004a432e: c1 fa 04                                        sar    edx,0x4
  004a4331: 8b c2                                           mov    eax,edx
  004a4333: c1 e8 1f                                        shr    eax,0x1f
  004a4336: 03 d0                                           add    edx,eax
  004a4338: 8b da                                           mov    ebx,edx
  004a433a: 75 35                                           jne    0x4a4371
  004a433c: 33 db                                           xor    ebx,ebx
  004a433e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a4341: 3b c3                                           cmp    eax,ebx
  004a4343: 74 18                                           je     0x4a435d
  004a4345: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a4348: 51                                              push   ecx
  004a4349: 50                                              push   eax
  004a434a: 8b ce                                           mov    ecx,esi
  004a434c: e8 7f f6 ff ff                                  call   0x4a39d0
  004a4351: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4354: 52                                              push   edx
  004a4355: e8 06 dd f9 ff                                  call   0x442060
  004a435a: 83 c4 04                                        add    esp,0x4
  004a435d: 5f                                              pop    edi
  004a435e: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  004a4361: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004a4364: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  004a4367: 8b c6                                           mov    eax,esi
  004a4369: 5e                                              pop    esi
  004a436a: 5b                                              pop    ebx
  004a436b: 8b e5                                           mov    esp,ebp
  004a436d: 5d                                              pop    ebp
  004a436e: c2 04 00                                        ret    0x4
  004a4371: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a4374: 85 c9                                           test   ecx,ecx
  004a4376: 75 04                                           jne    0x4a437c
  004a4378: 33 d2                                           xor    edx,edx
  004a437a: eb 16                                           jmp    0x4a4392
  004a437c: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a437f: 2b d1                                           sub    edx,ecx
  004a4381: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4386: f7 ea                                           imul   edx
  004a4388: c1 fa 04                                        sar    edx,0x4
  004a438b: 8b c2                                           mov    eax,edx
  004a438d: c1 e8 1f                                        shr    eax,0x1f
  004a4390: 03 d0                                           add    edx,eax
  004a4392: 3b da                                           cmp    ebx,edx
  004a4394: 0f 87 ab 00 00 00                               ja     0x4a4445
  004a439a: 3b 7d f4                                        cmp    edi,DWORD PTR [ebp-0xc]
  004a439d: 8b d9                                           mov    ebx,ecx
  004a439f: 74 36                                           je     0x4a43d7
  004a43a1: 8d 4b 18                                        lea    ecx,[ebx+0x18]
  004a43a4: 8d 57 18                                        lea    edx,[edi+0x18]
  004a43a7: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004a43aa: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004a43ad: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004a43b0: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a43b3: 50                                              push   eax
  004a43b4: e8 a7 01 00 00                                  call   0x4a4560
  004a43b9: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a43bc: b8 28 00 00 00                                  mov    eax,0x28
  004a43c1: 03 c8                                           add    ecx,eax
  004a43c3: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004a43c6: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004a43c9: 03 c8                                           add    ecx,eax
  004a43cb: 03 d8                                           add    ebx,eax
  004a43cd: 03 f8                                           add    edi,eax
  004a43cf: 3b 7d f4                                        cmp    edi,DWORD PTR [ebp-0xc]
  004a43d2: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004a43d5: 75 d6                                           jne    0x4a43ad
  004a43d7: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a43da: 3b d8                                           cmp    ebx,eax
  004a43dc: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004a43df: 8b fb                                           mov    edi,ebx
  004a43e1: 74 12                                           je     0x4a43f5
  004a43e3: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a43e5: 6a 00                                           push   0x0
  004a43e7: 8b cf                                           mov    ecx,edi
  004a43e9: ff 12                                           call   DWORD PTR [edx]
  004a43eb: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004a43ee: 83 c7 28                                        add    edi,0x28
  004a43f1: 3b f8                                           cmp    edi,eax
  004a43f3: 75 ee                                           jne    0x4a43e3
  004a43f5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a43f8: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004a43fb: 85 c0                                           test   eax,eax
  004a43fd: 75 19                                           jne    0x4a4418
  004a43ff: 33 d2                                           xor    edx,edx
  004a4401: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004a4404: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4407: 8d 04 ca                                        lea    eax,[edx+ecx*8]
  004a440a: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a440d: 5f                                              pop    edi
  004a440e: 8b c6                                           mov    eax,esi
  004a4410: 5e                                              pop    esi
  004a4411: 5b                                              pop    ebx
  004a4412: 8b e5                                           mov    esp,ebp
  004a4414: 5d                                              pop    ebp
  004a4415: c2 04 00                                        ret    0x4
  004a4418: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004a441b: 2b c8                                           sub    ecx,eax
  004a441d: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4422: f7 e9                                           imul   ecx
  004a4424: c1 fa 04                                        sar    edx,0x4
  004a4427: 8b c2                                           mov    eax,edx
  004a4429: c1 e8 1f                                        shr    eax,0x1f
  004a442c: 03 d0                                           add    edx,eax
  004a442e: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004a4431: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4434: 8d 04 ca                                        lea    eax,[edx+ecx*8]
  004a4437: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a443a: 5f                                              pop    edi
  004a443b: 8b c6                                           mov    eax,esi
  004a443d: 5e                                              pop    esi
  004a443e: 5b                                              pop    ebx
  004a443f: 8b e5                                           mov    esp,ebp
  004a4441: 5d                                              pop    ebp
  004a4442: c2 04 00                                        ret    0x4
  004a4445: 85 c9                                           test   ecx,ecx
  004a4447: 75 04                                           jne    0x4a444d
  004a4449: 33 d2                                           xor    edx,edx
  004a444b: eb 16                                           jmp    0x4a4463
  004a444d: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a4450: 2b d1                                           sub    edx,ecx
  004a4452: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4457: f7 ea                                           imul   edx
  004a4459: c1 fa 04                                        sar    edx,0x4
  004a445c: 8b c2                                           mov    eax,edx
  004a445e: c1 e8 1f                                        shr    eax,0x1f
  004a4461: 03 d0                                           add    edx,eax
  004a4463: 3b da                                           cmp    ebx,edx
  004a4465: 77 63                                           ja     0x4a44ca
  004a4467: 85 c9                                           test   ecx,ecx
  004a4469: 75 04                                           jne    0x4a446f
  004a446b: 33 d2                                           xor    edx,edx
  004a446d: eb 16                                           jmp    0x4a4485
  004a446f: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a4472: 2b d1                                           sub    edx,ecx
  004a4474: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4479: f7 ea                                           imul   edx
  004a447b: c1 fa 04                                        sar    edx,0x4
  004a447e: 8b c2                                           mov    eax,edx
  004a4480: c1 e8 1f                                        shr    eax,0x1f
  004a4483: 03 d0                                           add    edx,eax
  004a4485: 8d 14 92                                        lea    edx,[edx+edx*4]
  004a4488: 8d 04 d7                                        lea    eax,[edi+edx*8]
  004a448b: 3b f8                                           cmp    edi,eax
  004a448d: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004a4490: 74 2a                                           je     0x4a44bc
  004a4492: 8d 47 18                                        lea    eax,[edi+0x18]
  004a4495: 8d 59 18                                        lea    ebx,[ecx+0x18]
  004a4498: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004a449b: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004a449e: 51                                              push   ecx
  004a449f: 8b cb                                           mov    ecx,ebx
  004a44a1: e8 ba 00 00 00                                  call   0x4a4560
  004a44a6: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004a44a9: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004a44ac: 83 c7 28                                        add    edi,0x28
  004a44af: 83 c1 28                                        add    ecx,0x28
  004a44b2: 83 c3 28                                        add    ebx,0x28
  004a44b5: 3b f8                                           cmp    edi,eax
  004a44b7: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004a44ba: 75 df                                           jne    0x4a449b
  004a44bc: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004a44bf: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  004a44c2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a44c5: 52                                              push   edx
  004a44c6: 51                                              push   ecx
  004a44c7: 50                                              push   eax
  004a44c8: eb 7a                                           jmp    0x4a4544
  004a44ca: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004a44cd: 8b f9                                           mov    edi,ecx
  004a44cf: 3b fb                                           cmp    edi,ebx
  004a44d1: 74 0f                                           je     0x4a44e2
  004a44d3: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a44d5: 6a 00                                           push   0x0
  004a44d7: 8b cf                                           mov    ecx,edi
  004a44d9: ff 10                                           call   DWORD PTR [eax]
  004a44db: 83 c7 28                                        add    edi,0x28
  004a44de: 3b fb                                           cmp    edi,ebx
  004a44e0: 75 f1                                           jne    0x4a44d3
  004a44e2: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a44e5: 51                                              push   ecx
  004a44e6: e8 75 db f9 ff                                  call   0x442060
  004a44eb: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a44ee: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a44f1: 33 ff                                           xor    edi,edi
  004a44f3: 83 c4 04                                        add    esp,0x4
  004a44f6: 3b c7                                           cmp    eax,edi
  004a44f8: 75 04                                           jne    0x4a44fe
  004a44fa: 33 d2                                           xor    edx,edx
  004a44fc: eb 16                                           jmp    0x4a4514
  004a44fe: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a4501: 2b c8                                           sub    ecx,eax
  004a4503: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4508: f7 e9                                           imul   ecx
  004a450a: c1 fa 04                                        sar    edx,0x4
  004a450d: 8b c2                                           mov    eax,edx
  004a450f: c1 e8 1f                                        shr    eax,0x1f
  004a4512: 03 d0                                           add    edx,eax
  004a4514: 3b d7                                           cmp    edx,edi
  004a4516: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a4519: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a451c: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a451f: 74 2d                                           je     0x4a454e
  004a4521: 8d 3c 92                                        lea    edi,[edx+edx*4]
  004a4524: c1 e7 03                                        shl    edi,0x3
  004a4527: 57                                              push   edi
  004a4528: e8 c3 da f9 ff                                  call   0x441ff0
  004a452d: 83 c4 04                                        add    esp,0x4
  004a4530: 03 f8                                           add    edi,eax
  004a4532: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a4535: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4538: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a453b: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a453e: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004a4541: 50                                              push   eax
  004a4542: 51                                              push   ecx
  004a4543: 53                                              push   ebx
  004a4544: 8b ce                                           mov    ecx,esi
  004a4546: e8 15 fb ff ff                                  call   0x4a4060
  004a454b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a454e: 5f                                              pop    edi
  004a454f: 8b c6                                           mov    eax,esi
  004a4551: 5e                                              pop    esi
  004a4552: 5b                                              pop    ebx
  004a4553: 8b e5                                           mov    esp,ebp
  004a4555: 5d                                              pop    ebp
  004a4556: c2 04 00                                        ret    0x4
  004a47d0: 55                                              push   ebp
  004a47d1: 8b ec                                           mov    ebp,esp
  004a47d3: 83 ec 0c                                        sub    esp,0xc
  004a47d6: 53                                              push   ebx
  004a47d7: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a47da: 56                                              push   esi
  004a47db: 8b f1                                           mov    esi,ecx
  004a47dd: 3b f3                                           cmp    esi,ebx
  004a47df: 57                                              push   edi
  004a47e0: 0f 84 42 02 00 00                               je     0x4a4a28
  004a47e6: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a47e9: 33 ff                                           xor    edi,edi
  004a47eb: 3b c7                                           cmp    eax,edi
  004a47ed: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004a47f0: 74 20                                           je     0x4a4812
  004a47f2: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a47f5: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004a47f8: 2b c8                                           sub    ecx,eax
  004a47fa: b8 93 24 49 92                                  mov    eax,0x92492493
  004a47ff: f7 e9                                           imul   ecx
  004a4801: 03 d1                                           add    edx,ecx
  004a4803: c1 fa 05                                        sar    edx,0x5
  004a4806: 8b c2                                           mov    eax,edx
  004a4808: c1 e8 1f                                        shr    eax,0x1f
  004a480b: 03 d0                                           add    edx,eax
  004a480d: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004a4810: 75 33                                           jne    0x4a4845
  004a4812: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a4815: 3b c7                                           cmp    eax,edi
  004a4817: 74 18                                           je     0x4a4831
  004a4819: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a481c: 51                                              push   ecx
  004a481d: 50                                              push   eax
  004a481e: 8b ce                                           mov    ecx,esi
  004a4820: e8 8b 03 00 00                                  call   0x4a4bb0
  004a4825: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4828: 52                                              push   edx
  004a4829: e8 32 d8 f9 ff                                  call   0x442060
  004a482e: 83 c4 04                                        add    esp,0x4
  004a4831: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a4834: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a4837: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a483a: 5f                                              pop    edi
  004a483b: 8b c6                                           mov    eax,esi
  004a483d: 5e                                              pop    esi
  004a483e: 5b                                              pop    ebx
  004a483f: 8b e5                                           mov    esp,ebp
  004a4841: 5d                                              pop    ebp
  004a4842: c2 04 00                                        ret    0x4
  004a4845: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004a4848: 85 ff                                           test   edi,edi
  004a484a: 75 04                                           jne    0x4a4850
  004a484c: 33 d2                                           xor    edx,edx
  004a484e: eb 18                                           jmp    0x4a4868
  004a4850: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a4853: 2b cf                                           sub    ecx,edi
  004a4855: b8 93 24 49 92                                  mov    eax,0x92492493
  004a485a: f7 e9                                           imul   ecx
  004a485c: 03 d1                                           add    edx,ecx
  004a485e: c1 fa 05                                        sar    edx,0x5
  004a4861: 8b c2                                           mov    eax,edx
  004a4863: c1 e8 1f                                        shr    eax,0x1f
  004a4866: 03 d0                                           add    edx,eax
  004a4868: 39 55 f8                                        cmp    DWORD PTR [ebp-0x8],edx
  004a486b: 0f 87 a0 00 00 00                               ja     0x4a4911
  004a4871: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a4874: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a4877: 8b df                                           mov    ebx,edi
  004a4879: 8b 79 04                                        mov    edi,DWORD PTR [ecx+0x4]
  004a487c: 3b f8                                           cmp    edi,eax
  004a487e: 74 15                                           je     0x4a4895
  004a4880: 57                                              push   edi
  004a4881: 8b cb                                           mov    ecx,ebx
  004a4883: e8 b8 01 00 00                                  call   0x4a4a40
  004a4888: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a488b: 83 c7 38                                        add    edi,0x38
  004a488e: 83 c3 38                                        add    ebx,0x38
  004a4891: 3b f8                                           cmp    edi,eax
  004a4893: 75 eb                                           jne    0x4a4880
  004a4895: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a4898: 3b d8                                           cmp    ebx,eax
  004a489a: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004a489d: 8b fb                                           mov    edi,ebx
  004a489f: 74 12                                           je     0x4a48b3
  004a48a1: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a48a3: 6a 00                                           push   0x0
  004a48a5: 8b cf                                           mov    ecx,edi
  004a48a7: ff 12                                           call   DWORD PTR [edx]
  004a48a9: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004a48ac: 83 c7 38                                        add    edi,0x38
  004a48af: 3b f8                                           cmp    edi,eax
  004a48b1: 75 ee                                           jne    0x4a48a1
  004a48b3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a48b6: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004a48b9: 85 c0                                           test   eax,eax
  004a48bb: 75 1f                                           jne    0x4a48dc
  004a48bd: 33 d2                                           xor    edx,edx
  004a48bf: 8d 0c d5 00 00 00 00                            lea    ecx,[edx*8+0x0]
  004a48c6: 2b ca                                           sub    ecx,edx
  004a48c8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a48cb: 8d 04 ca                                        lea    eax,[edx+ecx*8]
  004a48ce: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a48d1: 5f                                              pop    edi
  004a48d2: 8b c6                                           mov    eax,esi
  004a48d4: 5e                                              pop    esi
  004a48d5: 5b                                              pop    ebx
  004a48d6: 8b e5                                           mov    esp,ebp
  004a48d8: 5d                                              pop    ebp
  004a48d9: c2 04 00                                        ret    0x4
  004a48dc: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004a48df: 2b c8                                           sub    ecx,eax
  004a48e1: b8 93 24 49 92                                  mov    eax,0x92492493
  004a48e6: f7 e9                                           imul   ecx
  004a48e8: 03 d1                                           add    edx,ecx
  004a48ea: c1 fa 05                                        sar    edx,0x5
  004a48ed: 8b c2                                           mov    eax,edx
  004a48ef: c1 e8 1f                                        shr    eax,0x1f
  004a48f2: 03 d0                                           add    edx,eax
  004a48f4: 8d 0c d5 00 00 00 00                            lea    ecx,[edx*8+0x0]
  004a48fb: 2b ca                                           sub    ecx,edx
  004a48fd: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4900: 8d 04 ca                                        lea    eax,[edx+ecx*8]
  004a4903: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4906: 5f                                              pop    edi
  004a4907: 8b c6                                           mov    eax,esi
  004a4909: 5e                                              pop    esi
  004a490a: 5b                                              pop    ebx
  004a490b: 8b e5                                           mov    esp,ebp
  004a490d: 5d                                              pop    ebp
  004a490e: c2 04 00                                        ret    0x4
  004a4911: 85 ff                                           test   edi,edi
  004a4913: 75 04                                           jne    0x4a4919
  004a4915: 33 d2                                           xor    edx,edx
  004a4917: eb 18                                           jmp    0x4a4931
  004a4919: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  004a491c: 2b cf                                           sub    ecx,edi
  004a491e: b8 93 24 49 92                                  mov    eax,0x92492493
  004a4923: f7 e9                                           imul   ecx
  004a4925: 03 d1                                           add    edx,ecx
  004a4927: c1 fa 05                                        sar    edx,0x5
  004a492a: 8b ca                                           mov    ecx,edx
  004a492c: c1 e9 1f                                        shr    ecx,0x1f
  004a492f: 03 d1                                           add    edx,ecx
  004a4931: 39 55 f8                                        cmp    DWORD PTR [ebp-0x8],edx
  004a4934: 77 65                                           ja     0x4a499b
  004a4936: 85 ff                                           test   edi,edi
  004a4938: 75 04                                           jne    0x4a493e
  004a493a: 33 d2                                           xor    edx,edx
  004a493c: eb 18                                           jmp    0x4a4956
  004a493e: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a4941: 2b cf                                           sub    ecx,edi
  004a4943: b8 93 24 49 92                                  mov    eax,0x92492493
  004a4948: f7 e9                                           imul   ecx
  004a494a: 03 d1                                           add    edx,ecx
  004a494c: c1 fa 05                                        sar    edx,0x5
  004a494f: 8b c2                                           mov    eax,edx
  004a4951: c1 e8 1f                                        shr    eax,0x1f
  004a4954: 03 d0                                           add    edx,eax
  004a4956: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a4959: 8d 0c d5 00 00 00 00                            lea    ecx,[edx*8+0x0]
  004a4960: 2b ca                                           sub    ecx,edx
  004a4962: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  004a4965: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a4968: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  004a496b: 8d 1c ca                                        lea    ebx,[edx+ecx*8]
  004a496e: 3b fb                                           cmp    edi,ebx
  004a4970: 74 19                                           je     0x4a498b
  004a4972: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a4975: 57                                              push   edi
  004a4976: e8 c5 00 00 00                                  call   0x4a4a40
  004a497b: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004a497e: 83 c2 38                                        add    edx,0x38
  004a4981: 83 c7 38                                        add    edi,0x38
  004a4984: 3b fb                                           cmp    edi,ebx
  004a4986: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004a4989: 75 e7                                           jne    0x4a4972
  004a498b: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a498e: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a4991: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  004a4994: 52                                              push   edx
  004a4995: 50                                              push   eax
  004a4996: e9 82 00 00 00                                  jmp    0x4a4a1d
  004a499b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a499e: 3b f8                                           cmp    edi,eax
  004a49a0: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004a49a3: 74 12                                           je     0x4a49b7
  004a49a5: 8b 07                                           mov    eax,DWORD PTR [edi]
  004a49a7: 6a 00                                           push   0x0
  004a49a9: 8b cf                                           mov    ecx,edi
  004a49ab: ff 10                                           call   DWORD PTR [eax]
  004a49ad: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a49b0: 83 c7 38                                        add    edi,0x38
  004a49b3: 3b f8                                           cmp    edi,eax
  004a49b5: 75 ee                                           jne    0x4a49a5
  004a49b7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a49ba: 51                                              push   ecx
  004a49bb: e8 a0 d6 f9 ff                                  call   0x442060
  004a49c0: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a49c3: 33 ff                                           xor    edi,edi
  004a49c5: 83 c4 04                                        add    esp,0x4
  004a49c8: 3b c7                                           cmp    eax,edi
  004a49ca: 75 04                                           jne    0x4a49d0
  004a49cc: 33 d2                                           xor    edx,edx
  004a49ce: eb 18                                           jmp    0x4a49e8
  004a49d0: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a49d3: 2b c8                                           sub    ecx,eax
  004a49d5: b8 93 24 49 92                                  mov    eax,0x92492493
  004a49da: f7 e9                                           imul   ecx
  004a49dc: 03 d1                                           add    edx,ecx
  004a49de: c1 fa 05                                        sar    edx,0x5
  004a49e1: 8b c2                                           mov    eax,edx
  004a49e3: c1 e8 1f                                        shr    eax,0x1f
  004a49e6: 03 d0                                           add    edx,eax
  004a49e8: 3b d7                                           cmp    edx,edi
  004a49ea: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a49ed: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a49f0: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a49f3: 74 33                                           je     0x4a4a28
  004a49f5: 8d 3c d5 00 00 00 00                            lea    edi,[edx*8+0x0]
  004a49fc: 2b fa                                           sub    edi,edx
  004a49fe: c1 e7 03                                        shl    edi,0x3
  004a4a01: 57                                              push   edi
  004a4a02: e8 e9 d5 f9 ff                                  call   0x441ff0
  004a4a07: 83 c4 04                                        add    esp,0x4
  004a4a0a: 03 f8                                           add    edi,eax
  004a4a0c: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a4a0f: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4a12: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a4a15: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a4a18: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004a4a1b: 50                                              push   eax
  004a4a1c: 51                                              push   ecx
  004a4a1d: 53                                              push   ebx
  004a4a1e: 8b ce                                           mov    ecx,esi
  004a4a20: e8 4b f7 ff ff                                  call   0x4a4170
  004a4a25: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4a28: 5f                                              pop    edi
  004a4a29: 8b c6                                           mov    eax,esi
  004a4a2b: 5e                                              pop    esi
  004a4a2c: 5b                                              pop    ebx
  004a4a2d: 8b e5                                           mov    esp,ebp
  004a4a2f: 5d                                              pop    ebp
  004a4a30: c2 04 00                                        ret    0x4
  004a4be0: 55                                              push   ebp
  004a4be1: 8b ec                                           mov    ebp,esp
  004a4be3: 51                                              push   ecx
  004a4be4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a4be7: 53                                              push   ebx
  004a4be8: 56                                              push   esi
  004a4be9: 8b f1                                           mov    esi,ecx
  004a4beb: 3b f0                                           cmp    esi,eax
  004a4bed: 57                                              push   edi
  004a4bee: 0f 84 07 02 00 00                               je     0x4a4dfb
  004a4bf4: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004a4bf7: 33 ff                                           xor    edi,edi
  004a4bf9: 3b cf                                           cmp    ecx,edi
  004a4bfb: 74 1d                                           je     0x4a4c1a
  004a4bfd: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  004a4c00: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004a4c03: 2b d1                                           sub    edx,ecx
  004a4c05: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a4c0a: f7 ea                                           imul   edx
  004a4c0c: c1 fa 03                                        sar    edx,0x3
  004a4c0f: 8b c2                                           mov    eax,edx
  004a4c11: c1 e8 1f                                        shr    eax,0x1f
  004a4c14: 03 d0                                           add    edx,eax
  004a4c16: 8b da                                           mov    ebx,edx
  004a4c18: 75 33                                           jne    0x4a4c4d
  004a4c1a: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a4c1d: 3b c7                                           cmp    eax,edi
  004a4c1f: 74 18                                           je     0x4a4c39
  004a4c21: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a4c24: 51                                              push   ecx
  004a4c25: 50                                              push   eax
  004a4c26: 8b ce                                           mov    ecx,esi
  004a4c28: e8 03 02 00 00                                  call   0x4a4e30
  004a4c2d: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4c30: 52                                              push   edx
  004a4c31: e8 2a d4 f9 ff                                  call   0x442060
  004a4c36: 83 c4 04                                        add    esp,0x4
  004a4c39: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a4c3c: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a4c3f: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a4c42: 5f                                              pop    edi
  004a4c43: 8b c6                                           mov    eax,esi
  004a4c45: 5e                                              pop    esi
  004a4c46: 5b                                              pop    ebx
  004a4c47: 8b e5                                           mov    esp,ebp
  004a4c49: 5d                                              pop    ebp
  004a4c4a: c2 04 00                                        ret    0x4
  004a4c4d: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004a4c50: 85 ff                                           test   edi,edi
  004a4c52: 75 04                                           jne    0x4a4c58
  004a4c54: 33 d2                                           xor    edx,edx
  004a4c56: eb 16                                           jmp    0x4a4c6e
  004a4c58: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a4c5b: 2b d7                                           sub    edx,edi
  004a4c5d: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a4c62: f7 ea                                           imul   edx
  004a4c64: c1 fa 03                                        sar    edx,0x3
  004a4c67: 8b c2                                           mov    eax,edx
  004a4c69: c1 e8 1f                                        shr    eax,0x1f
  004a4c6c: 03 d0                                           add    edx,eax
  004a4c6e: 3b da                                           cmp    ebx,edx
  004a4c70: 0f 87 8e 00 00 00                               ja     0x4a4d04
  004a4c76: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a4c79: 8b df                                           mov    ebx,edi
  004a4c7b: 8b f9                                           mov    edi,ecx
  004a4c7d: 3b f8                                           cmp    edi,eax
  004a4c7f: 74 15                                           je     0x4a4c96
  004a4c81: 57                                              push   edi
  004a4c82: 8b cb                                           mov    ecx,ebx
  004a4c84: e8 87 01 00 00                                  call   0x4a4e10
  004a4c89: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a4c8c: 83 c7 24                                        add    edi,0x24
  004a4c8f: 83 c3 24                                        add    ebx,0x24
  004a4c92: 3b f8                                           cmp    edi,eax
  004a4c94: 75 eb                                           jne    0x4a4c81
  004a4c96: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004a4c99: 3b d8                                           cmp    ebx,eax
  004a4c9b: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004a4c9e: 8b fb                                           mov    edi,ebx
  004a4ca0: 74 12                                           je     0x4a4cb4
  004a4ca2: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a4ca4: 6a 00                                           push   0x0
  004a4ca6: 8b cf                                           mov    ecx,edi
  004a4ca8: ff 12                                           call   DWORD PTR [edx]
  004a4caa: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a4cad: 83 c7 24                                        add    edi,0x24
  004a4cb0: 3b f8                                           cmp    edi,eax
  004a4cb2: 75 ee                                           jne    0x4a4ca2
  004a4cb4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a4cb7: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004a4cba: 85 c0                                           test   eax,eax
  004a4cbc: 75 19                                           jne    0x4a4cd7
  004a4cbe: 33 d2                                           xor    edx,edx
  004a4cc0: 8d 0c d2                                        lea    ecx,[edx+edx*8]
  004a4cc3: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4cc6: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004a4cc9: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4ccc: 5f                                              pop    edi
  004a4ccd: 8b c6                                           mov    eax,esi
  004a4ccf: 5e                                              pop    esi
  004a4cd0: 5b                                              pop    ebx
  004a4cd1: 8b e5                                           mov    esp,ebp
  004a4cd3: 5d                                              pop    ebp
  004a4cd4: c2 04 00                                        ret    0x4
  004a4cd7: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004a4cda: 2b c8                                           sub    ecx,eax
  004a4cdc: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a4ce1: f7 e9                                           imul   ecx
  004a4ce3: c1 fa 03                                        sar    edx,0x3
  004a4ce6: 8b c2                                           mov    eax,edx
  004a4ce8: c1 e8 1f                                        shr    eax,0x1f
  004a4ceb: 03 d0                                           add    edx,eax
  004a4ced: 8d 0c d2                                        lea    ecx,[edx+edx*8]
  004a4cf0: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4cf3: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004a4cf6: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4cf9: 5f                                              pop    edi
  004a4cfa: 8b c6                                           mov    eax,esi
  004a4cfc: 5e                                              pop    esi
  004a4cfd: 5b                                              pop    ebx
  004a4cfe: 8b e5                                           mov    esp,ebp
  004a4d00: 5d                                              pop    ebp
  004a4d01: c2 04 00                                        ret    0x4
  004a4d04: 85 ff                                           test   edi,edi
  004a4d06: 75 04                                           jne    0x4a4d0c
  004a4d08: 33 d2                                           xor    edx,edx
  004a4d0a: eb 16                                           jmp    0x4a4d22
  004a4d0c: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a4d0f: 2b d7                                           sub    edx,edi
  004a4d11: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a4d16: f7 ea                                           imul   edx
  004a4d18: c1 fa 03                                        sar    edx,0x3
  004a4d1b: 8b c2                                           mov    eax,edx
  004a4d1d: c1 e8 1f                                        shr    eax,0x1f
  004a4d20: 03 d0                                           add    edx,eax
  004a4d22: 3b da                                           cmp    ebx,edx
  004a4d24: 77 53                                           ja     0x4a4d79
  004a4d26: 85 ff                                           test   edi,edi
  004a4d28: 75 04                                           jne    0x4a4d2e
  004a4d2a: 33 d2                                           xor    edx,edx
  004a4d2c: eb 16                                           jmp    0x4a4d44
  004a4d2e: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a4d31: 2b d7                                           sub    edx,edi
  004a4d33: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a4d38: f7 ea                                           imul   edx
  004a4d3a: c1 fa 03                                        sar    edx,0x3
  004a4d3d: 8b c2                                           mov    eax,edx
  004a4d3f: c1 e8 1f                                        shr    eax,0x1f
  004a4d42: 03 d0                                           add    edx,eax
  004a4d44: 8d 14 d2                                        lea    edx,[edx+edx*8]
  004a4d47: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a4d4a: 8d 1c 91                                        lea    ebx,[ecx+edx*4]
  004a4d4d: 8b f9                                           mov    edi,ecx
  004a4d4f: 3b fb                                           cmp    edi,ebx
  004a4d51: 74 19                                           je     0x4a4d6c
  004a4d53: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a4d56: 57                                              push   edi
  004a4d57: e8 b4 00 00 00                                  call   0x4a4e10
  004a4d5c: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004a4d5f: 83 c2 24                                        add    edx,0x24
  004a4d62: 83 c7 24                                        add    edi,0x24
  004a4d65: 3b fb                                           cmp    edi,ebx
  004a4d67: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004a4d6a: 75 e7                                           jne    0x4a4d53
  004a4d6c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a4d6f: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a4d72: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004a4d75: 51                                              push   ecx
  004a4d76: 50                                              push   eax
  004a4d77: eb 77                                           jmp    0x4a4df0
  004a4d79: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004a4d7c: 3b fb                                           cmp    edi,ebx
  004a4d7e: 74 0f                                           je     0x4a4d8f
  004a4d80: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a4d82: 6a 00                                           push   0x0
  004a4d84: 8b cf                                           mov    ecx,edi
  004a4d86: ff 12                                           call   DWORD PTR [edx]
  004a4d88: 83 c7 24                                        add    edi,0x24
  004a4d8b: 3b fb                                           cmp    edi,ebx
  004a4d8d: 75 f1                                           jne    0x4a4d80
  004a4d8f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a4d92: 50                                              push   eax
  004a4d93: e8 c8 d2 f9 ff                                  call   0x442060
  004a4d98: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a4d9b: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a4d9e: 33 ff                                           xor    edi,edi
  004a4da0: 83 c4 04                                        add    esp,0x4
  004a4da3: 3b c7                                           cmp    eax,edi
  004a4da5: 75 04                                           jne    0x4a4dab
  004a4da7: 33 d2                                           xor    edx,edx
  004a4da9: eb 16                                           jmp    0x4a4dc1
  004a4dab: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a4dae: 2b c8                                           sub    ecx,eax
  004a4db0: b8 39 8e e3 38                                  mov    eax,0x38e38e39
  004a4db5: f7 e9                                           imul   ecx
  004a4db7: c1 fa 03                                        sar    edx,0x3
  004a4dba: 8b ca                                           mov    ecx,edx
  004a4dbc: c1 e9 1f                                        shr    ecx,0x1f
  004a4dbf: 03 d1                                           add    edx,ecx
  004a4dc1: 3b d7                                           cmp    edx,edi
  004a4dc3: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004a4dc6: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004a4dc9: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a4dcc: 74 2d                                           je     0x4a4dfb
  004a4dce: 8d 3c d2                                        lea    edi,[edx+edx*8]
  004a4dd1: c1 e7 02                                        shl    edi,0x2
  004a4dd4: 57                                              push   edi
  004a4dd5: e8 16 d2 f9 ff                                  call   0x441ff0
  004a4dda: 83 c4 04                                        add    esp,0x4
  004a4ddd: 03 f8                                           add    edi,eax
  004a4ddf: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a4de2: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4de5: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004a4de8: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004a4deb: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004a4dee: 50                                              push   eax
  004a4def: 51                                              push   ecx
  004a4df0: 53                                              push   ebx
  004a4df1: 8b ce                                           mov    ecx,esi
  004a4df3: e8 78 f4 ff ff                                  call   0x4a4270
  004a4df8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4dfb: 5f                                              pop    edi
  004a4dfc: 8b c6                                           mov    eax,esi
  004a4dfe: 5e                                              pop    esi
  004a4dff: 5b                                              pop    ebx
  004a4e00: 8b e5                                           mov    esp,ebp
  004a4e02: 5d                                              pop    ebp
  004a4e03: c2 04 00                                        ret    0x4
  004a4e60: 55                                              push   ebp
  004a4e61: 8b ec                                           mov    ebp,esp
  004a4e63: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a4e66: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a4e68: 8d 04 80                                        lea    eax,[eax+eax*4]
  004a4e6b: 8d 14 c1                                        lea    edx,[ecx+eax*8]
  004a4e6e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a4e71: 89 10                                           mov    DWORD PTR [eax],edx
  004a4e73: 5d                                              pop    ebp
  004a4e74: c2 08 00                                        ret    0x8
  004a4e80: 55                                              push   ebp
  004a4e81: 8b ec                                           mov    ebp,esp
  004a4e83: 83 ec 10                                        sub    esp,0x10
  004a4e86: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a4e89: 53                                              push   ebx
  004a4e8a: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a4e8d: 3b d8                                           cmp    ebx,eax
  004a4e8f: 0f 84 23 02 00 00                               je     0x4a50b8
  004a4e95: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a4e98: 56                                              push   esi
  004a4e99: 83 c3 1c                                        add    ebx,0x1c
  004a4e9c: 57                                              push   edi
  004a4e9d: 8d 70 1c                                        lea    esi,[eax+0x1c]
  004a4ea0: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004a4ea3: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a4ea6: 8d 56 fc                                        lea    edx,[esi-0x4]
  004a4ea9: 3b d1                                           cmp    edx,ecx
  004a4eab: 0f 84 d7 01 00 00                               je     0x4a5088
  004a4eb1: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a4eb3: 85 ff                                           test   edi,edi
  004a4eb5: 74 1e                                           je     0x4a4ed5
  004a4eb7: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a4eba: 89 4d f4                                        mov    DWORD PTR [ebp-0xc],ecx
  004a4ebd: 2b cf                                           sub    ecx,edi
  004a4ebf: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4ec4: f7 e9                                           imul   ecx
  004a4ec6: c1 fa 04                                        sar    edx,0x4
  004a4ec9: 8b c2                                           mov    eax,edx
  004a4ecb: c1 e8 1f                                        shr    eax,0x1f
  004a4ece: 03 d0                                           add    edx,eax
  004a4ed0: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004a4ed3: 75 2d                                           jne    0x4a4f02
  004a4ed5: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a4ed7: 85 c0                                           test   eax,eax
  004a4ed9: 74 18                                           je     0x4a4ef3
  004a4edb: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a4ede: 51                                              push   ecx
  004a4edf: 50                                              push   eax
  004a4ee0: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004a4ee3: e8 e8 dc ff ff                                  call   0x4a2bd0
  004a4ee8: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a4eea: 52                                              push   edx
  004a4eeb: e8 70 d1 f9 ff                                  call   0x442060
  004a4ef0: 83 c4 04                                        add    esp,0x4
  004a4ef3: 33 c0                                           xor    eax,eax
  004a4ef5: 89 06                                           mov    DWORD PTR [esi],eax
  004a4ef7: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a4efa: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004a4efd: e9 86 01 00 00                                  jmp    0x4a5088
  004a4f02: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004a4f04: 85 c9                                           test   ecx,ecx
  004a4f06: 75 04                                           jne    0x4a4f0c
  004a4f08: 33 d2                                           xor    edx,edx
  004a4f0a: eb 16                                           jmp    0x4a4f22
  004a4f0c: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4f0f: 2b d1                                           sub    edx,ecx
  004a4f11: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4f16: f7 ea                                           imul   edx
  004a4f18: c1 fa 04                                        sar    edx,0x4
  004a4f1b: 8b c2                                           mov    eax,edx
  004a4f1d: c1 e8 1f                                        shr    eax,0x1f
  004a4f20: 03 d0                                           add    edx,eax
  004a4f22: 39 55 f8                                        cmp    DWORD PTR [ebp-0x8],edx
  004a4f25: 0f 87 a1 00 00 00                               ja     0x4a4fcc
  004a4f2b: 3b 7d f4                                        cmp    edi,DWORD PTR [ebp-0xc]
  004a4f2e: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004a4f31: 74 43                                           je     0x4a4f76
  004a4f33: 8d 59 18                                        lea    ebx,[ecx+0x18]
  004a4f36: 8d 4f 18                                        lea    ecx,[edi+0x18]
  004a4f39: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004a4f3c: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a4f42: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a4f44: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a4f47: 50                                              push   eax
  004a4f48: 6a 00                                           push   0x0
  004a4f4a: 51                                              push   ecx
  004a4f4b: 8b cb                                           mov    ecx,ebx
  004a4f4d: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a4f53: 8b 55 f8                                        mov    edx,DWORD PTR [ebp-0x8]
  004a4f56: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a4f59: b8 28 00 00 00                                  mov    eax,0x28
  004a4f5e: 03 d0                                           add    edx,eax
  004a4f60: 03 c8                                           add    ecx,eax
  004a4f62: 03 d8                                           add    ebx,eax
  004a4f64: 03 f8                                           add    edi,eax
  004a4f66: 3b 7d f4                                        cmp    edi,DWORD PTR [ebp-0xc]
  004a4f69: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004a4f6c: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004a4f6f: 75 cb                                           jne    0x4a4f3c
  004a4f71: 8b 5d f0                                        mov    ebx,DWORD PTR [ebp-0x10]
  004a4f74: 8b ca                                           mov    ecx,edx
  004a4f76: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a4f79: 3b c8                                           cmp    ecx,eax
  004a4f7b: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004a4f7e: 8b f9                                           mov    edi,ecx
  004a4f80: 74 12                                           je     0x4a4f94
  004a4f82: 8b 17                                           mov    edx,DWORD PTR [edi]
  004a4f84: 6a 00                                           push   0x0
  004a4f86: 8b cf                                           mov    ecx,edi
  004a4f88: ff 12                                           call   DWORD PTR [edx]
  004a4f8a: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  004a4f8d: 83 c7 28                                        add    edi,0x28
  004a4f90: 3b f8                                           cmp    edi,eax
  004a4f92: 75 ee                                           jne    0x4a4f82
  004a4f94: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a4f96: 85 c0                                           test   eax,eax
  004a4f98: 75 0f                                           jne    0x4a4fa9
  004a4f9a: 33 d2                                           xor    edx,edx
  004a4f9c: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004a4f9f: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a4fa1: 8d 04 ca                                        lea    eax,[edx+ecx*8]
  004a4fa4: e9 dc 00 00 00                                  jmp    0x4a5085
  004a4fa9: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a4fac: 2b c8                                           sub    ecx,eax
  004a4fae: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4fb3: f7 e9                                           imul   ecx
  004a4fb5: c1 fa 04                                        sar    edx,0x4
  004a4fb8: 8b c2                                           mov    eax,edx
  004a4fba: c1 e8 1f                                        shr    eax,0x1f
  004a4fbd: 03 d0                                           add    edx,eax
  004a4fbf: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004a4fc2: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a4fc4: 8d 04 ca                                        lea    eax,[edx+ecx*8]
  004a4fc7: e9 b9 00 00 00                                  jmp    0x4a5085
  004a4fcc: 85 c9                                           test   ecx,ecx
  004a4fce: 75 04                                           jne    0x4a4fd4
  004a4fd0: 33 d2                                           xor    edx,edx
  004a4fd2: eb 16                                           jmp    0x4a4fea
  004a4fd4: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a4fd7: 2b d1                                           sub    edx,ecx
  004a4fd9: b8 67 66 66 66                                  mov    eax,0x66666667
  004a4fde: f7 ea                                           imul   edx
  004a4fe0: c1 fa 04                                        sar    edx,0x4
  004a4fe3: 8b c2                                           mov    eax,edx
  004a4fe5: c1 e8 1f                                        shr    eax,0x1f
  004a4fe8: 03 d0                                           add    edx,eax
  004a4fea: 39 55 f8                                        cmp    DWORD PTR [ebp-0x8],edx
  004a4fed: 77 3f                                           ja     0x4a502e
  004a4fef: 85 c9                                           test   ecx,ecx
  004a4ff1: 75 04                                           jne    0x4a4ff7
  004a4ff3: 33 d2                                           xor    edx,edx
  004a4ff5: eb 16                                           jmp    0x4a500d
  004a4ff7: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a4ffa: 2b d1                                           sub    edx,ecx
  004a4ffc: b8 67 66 66 66                                  mov    eax,0x66666667
  004a5001: f7 ea                                           imul   edx
  004a5003: c1 fa 04                                        sar    edx,0x4
  004a5006: 8b c2                                           mov    eax,edx
  004a5008: c1 e8 1f                                        shr    eax,0x1f
  004a500b: 03 d0                                           add    edx,eax
  004a500d: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a500f: 8d 14 92                                        lea    edx,[edx+edx*4]
  004a5012: 51                                              push   ecx
  004a5013: 8d 3c d7                                        lea    edi,[edi+edx*8]
  004a5016: 57                                              push   edi
  004a5017: 50                                              push   eax
  004a5018: e8 e3 db ff ff                                  call   0x4a2c00
  004a501d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a5020: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a5023: 83 c4 0c                                        add    esp,0xc
  004a5026: 51                                              push   ecx
  004a5027: 50                                              push   eax
  004a5028: 57                                              push   edi
  004a5029: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004a502c: eb 52                                           jmp    0x4a5080
  004a502e: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004a5031: 52                                              push   edx
  004a5032: 51                                              push   ecx
  004a5033: 8d 7e fc                                        lea    edi,[esi-0x4]
  004a5036: 8b cf                                           mov    ecx,edi
  004a5038: e8 93 db ff ff                                  call   0x4a2bd0
  004a503d: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a503f: 50                                              push   eax
  004a5040: e8 1b d0 f9 ff                                  call   0x442060
  004a5045: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a5047: 83 c4 04                                        add    esp,0x4
  004a504a: 85 c0                                           test   eax,eax
  004a504c: 75 04                                           jne    0x4a5052
  004a504e: 33 d2                                           xor    edx,edx
  004a5050: eb 16                                           jmp    0x4a5068
  004a5052: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a5055: 2b c8                                           sub    ecx,eax
  004a5057: b8 67 66 66 66                                  mov    eax,0x66666667
  004a505c: f7 e9                                           imul   ecx
  004a505e: c1 fa 04                                        sar    edx,0x4
  004a5061: 8b ca                                           mov    ecx,edx
  004a5063: c1 e9 1f                                        shr    ecx,0x1f
  004a5066: 03 d1                                           add    edx,ecx
  004a5068: 52                                              push   edx
  004a5069: 8b cf                                           mov    ecx,edi
  004a506b: e8 c0 cc ff ff                                  call   0x4a1d30
  004a5070: 84 c0                                           test   al,al
  004a5072: 74 14                                           je     0x4a5088
  004a5074: 8b 16                                           mov    edx,DWORD PTR [esi]
  004a5076: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a5079: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004a507b: 52                                              push   edx
  004a507c: 50                                              push   eax
  004a507d: 51                                              push   ecx
  004a507e: 8b cf                                           mov    ecx,edi
  004a5080: e8 2b d7 ff ff                                  call   0x4a27b0
  004a5085: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a5088: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004a508b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a508e: 83 c1 28                                        add    ecx,0x28
  004a5091: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  004a5094: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a5097: 83 c0 28                                        add    eax,0x28
  004a509a: 83 c3 28                                        add    ebx,0x28
  004a509d: 83 c6 28                                        add    esi,0x28
  004a50a0: 3b c1                                           cmp    eax,ecx
  004a50a2: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004a50a5: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004a50a8: 0f 85 f5 fd ff ff                               jne    0x4a4ea3
  004a50ae: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a50b1: 5f                                              pop    edi
  004a50b2: 5e                                              pop    esi
  004a50b3: 5b                                              pop    ebx
  004a50b4: 8b e5                                           mov    esp,ebp
  004a50b6: 5d                                              pop    ebp
  004a50b7: c3                                              ret
  004a50b8: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a50bb: 5b                                              pop    ebx
  004a50bc: 8b e5                                           mov    esp,ebp
  004a50be: 5d                                              pop    ebp
  004a50bf: c3                                              ret
  004a5b50: 55                                              push   ebp
  004a5b51: 8b ec                                           mov    ebp,esp
  004a5b53: 8b c1                                           mov    eax,ecx
  004a5b55: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a5b58: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a5b5a: 89 10                                           mov    DWORD PTR [eax],edx
  004a5b5c: 5d                                              pop    ebp
  004a5b5d: c2 04 00                                        ret    0x4
  004a5fb0: 55                                              push   ebp
  004a5fb1: 8b ec                                           mov    ebp,esp
  004a5fb3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a5fb6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a5fb8: 8d 04 80                                        lea    eax,[eax+eax*4]
  004a5fbb: 8d 14 c1                                        lea    edx,[ecx+eax*8]
  004a5fbe: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a5fc1: 89 10                                           mov    DWORD PTR [eax],edx
  004a5fc3: 5d                                              pop    ebp
  004a5fc4: c2 08 00                                        ret    0x8
  004a5fd0: 55                                              push   ebp
  004a5fd1: 8b ec                                           mov    ebp,esp
  004a5fd3: 6a ff                                           push   0xffffffff
  004a5fd5: 68 69 bb 4d 00                                  push   0x4dbb69
  004a5fda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a5fe0: 50                                              push   eax
  004a5fe1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a5fe8: 83 ec 08                                        sub    esp,0x8
  004a5feb: 53                                              push   ebx
  004a5fec: 56                                              push   esi
  004a5fed: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a5ff0: 57                                              push   edi
  004a5ff1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a5ff4: 33 db                                           xor    ebx,ebx
  004a5ff6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a5ff9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a5ffc: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004a5fff: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  004a6002: 0f 86 91 00 00 00                               jbe    0x4a6099
  004a6008: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a600b: 3b f3                                           cmp    esi,ebx
  004a600d: 74 53                                           je     0x4a6062
  004a600f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a6012: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a6015: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a6018: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a601b: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a601e: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a6021: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a6024: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a6027: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a602a: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a602d: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a6033: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  004a6036: 8d 47 18                                        lea    eax,[edi+0x18]
  004a6039: 8d 4e 18                                        lea    ecx,[esi+0x18]
  004a603c: 88 11                                           mov    BYTE PTR [ecx],dl
  004a603e: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004a6041: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004a6044: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004a6047: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a604d: 8b 12                                           mov    edx,DWORD PTR [edx]
  004a604f: 52                                              push   edx
  004a6050: 53                                              push   ebx
  004a6051: 50                                              push   eax
  004a6052: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a6056: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a605c: c7 06 e8 f9 4d 00                               mov    DWORD PTR [esi],0x4df9e8
  004a6062: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a6065: 49                                              dec    ecx
  004a6066: 83 c6 28                                        add    esi,0x28
  004a6069: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004a606c: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a606f: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a6072: eb 8b                                           jmp    0x4a5fff
  004a6099: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a609c: 5f                                              pop    edi
  004a609d: 8b c6                                           mov    eax,esi
  004a609f: 5e                                              pop    esi
  004a60a0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a60a7: 5b                                              pop    ebx
  004a60a8: 8b e5                                           mov    esp,ebp
  004a60aa: 5d                                              pop    ebp
  004a60ab: c2 0c 00                                        ret    0xc
  004a60b0: 55                                              push   ebp
  004a60b1: 8b ec                                           mov    ebp,esp
  004a60b3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a60b6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a60b8: 8d 04 80                                        lea    eax,[eax+eax*4]
  004a60bb: c1 e0 03                                        shl    eax,0x3
  004a60be: 2b c8                                           sub    ecx,eax
  004a60c0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a60c3: 89 08                                           mov    DWORD PTR [eax],ecx
  004a60c5: 5d                                              pop    ebp
  004a60c6: c2 08 00                                        ret    0x8
  004a60d0: 55                                              push   ebp
  004a60d1: 8b ec                                           mov    ebp,esp
  004a60d3: 6a ff                                           push   0xffffffff
  004a60d5: 68 99 bb 4d 00                                  push   0x4dbb99
  004a60da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a60e0: 50                                              push   eax
  004a60e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a60e8: 83 ec 08                                        sub    esp,0x8
  004a60eb: 53                                              push   ebx
  004a60ec: 56                                              push   esi
  004a60ed: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a60f0: 57                                              push   edi
  004a60f1: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004a60f4: 33 db                                           xor    ebx,ebx
  004a60f6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a60f9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a60fc: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004a60ff: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  004a6102: 0f 84 8d 00 00 00                               je     0x4a6195
  004a6108: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a610b: 3b f3                                           cmp    esi,ebx
  004a610d: 74 53                                           je     0x4a6162
  004a610f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a6112: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a6115: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a6118: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a611b: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a611e: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a6121: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a6124: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a6127: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a612a: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a612d: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a6133: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  004a6136: 8d 47 18                                        lea    eax,[edi+0x18]
  004a6139: 8d 4e 18                                        lea    ecx,[esi+0x18]
  004a613c: 88 11                                           mov    BYTE PTR [ecx],dl
  004a613e: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004a6141: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004a6144: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004a6147: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a614d: 8b 12                                           mov    edx,DWORD PTR [edx]
  004a614f: 52                                              push   edx
  004a6150: 53                                              push   ebx
  004a6151: 50                                              push   eax
  004a6152: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a6156: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a615c: c7 06 e8 f9 4d 00                               mov    DWORD PTR [esi],0x4df9e8
  004a6162: 83 c6 28                                        add    esi,0x28
  004a6165: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004a6168: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a616b: 83 c7 28                                        add    edi,0x28
  004a616e: eb 8f                                           jmp    0x4a60ff
  004a6195: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a6198: 5f                                              pop    edi
  004a6199: 8b c6                                           mov    eax,esi
  004a619b: 5e                                              pop    esi
  004a619c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a61a3: 5b                                              pop    ebx
  004a61a4: 8b e5                                           mov    esp,ebp
  004a61a6: 5d                                              pop    ebp
  004a61a7: c2 0c 00                                        ret    0xc
  004a61b0: 55                                              push   ebp
  004a61b1: 8b ec                                           mov    ebp,esp
  004a61b3: 51                                              push   ecx
  004a61b4: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a61b7: 53                                              push   ebx
  004a61b8: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a61bb: 3b d8                                           cmp    ebx,eax
  004a61bd: 0f 84 62 01 00 00                               je     0x4a6325
  004a61c3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a61c6: 56                                              push   esi
  004a61c7: 8d 50 18                                        lea    edx,[eax+0x18]
  004a61ca: 57                                              push   edi
  004a61cb: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a61ce: 83 c3 1c                                        add    ebx,0x1c
  004a61d1: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004a61d7: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004a61da: 8b 39                                           mov    edi,DWORD PTR [ecx]
  004a61dc: 8b f0                                           mov    esi,eax
  004a61de: 3b fe                                           cmp    edi,esi
  004a61e0: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  004a61e3: 73 05                                           jae    0x4a61ea
  004a61e5: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a61e8: 8b f7                                           mov    esi,edi
  004a61ea: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a61ed: 3b ca                                           cmp    ecx,edx
  004a61ef: 75 71                                           jne    0x4a6262
  004a61f1: 39 73 04                                        cmp    DWORD PTR [ebx+0x4],esi
  004a61f4: 73 0c                                           jae    0x4a6202
  004a61f6: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a61f9: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004a61ff: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a6202: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a6205: 2b c6                                           sub    eax,esi
  004a6207: 3b c7                                           cmp    eax,edi
  004a6209: 73 02                                           jae    0x4a620d
  004a620b: 8b f8                                           mov    edi,eax
  004a620d: 85 ff                                           test   edi,edi
  004a620f: 0f 86 f7 00 00 00                               jbe    0x4a630c
  004a6215: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a6218: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004a621e: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a6221: 8b 13                                           mov    edx,DWORD PTR [ebx]
  004a6223: 2b cf                                           sub    ecx,edi
  004a6225: 8d 04 16                                        lea    eax,[esi+edx*1]
  004a6228: 2b ce                                           sub    ecx,esi
  004a622a: 51                                              push   ecx
  004a622b: 8d 14 38                                        lea    edx,[eax+edi*1]
  004a622e: 52                                              push   edx
  004a622f: 50                                              push   eax
  004a6230: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004a6236: 8b 73 04                                        mov    esi,DWORD PTR [ebx+0x4]
  004a6239: 83 c4 0c                                        add    esp,0xc
  004a623c: 2b f7                                           sub    esi,edi
  004a623e: 6a 00                                           push   0x0
  004a6240: 8d 7b fc                                        lea    edi,[ebx-0x4]
  004a6243: 56                                              push   esi
  004a6244: 8b cf                                           mov    ecx,edi
  004a6246: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a624c: 84 c0                                           test   al,al
  004a624e: 0f 84 b5 00 00 00                               je     0x4a6309
  004a6254: 56                                              push   esi
  004a6255: 8b cf                                           mov    ecx,edi
  004a6257: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004a625d: e9 a7 00 00 00                                  jmp    0x4a6309
  004a6262: 33 ff                                           xor    edi,edi
  004a6264: 3b f7                                           cmp    esi,edi
  004a6266: 76 62                                           jbe    0x4a62ca
  004a6268: 3b f0                                           cmp    esi,eax
  004a626a: 75 5e                                           jne    0x4a62ca
  004a626c: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004a626f: 3b c7                                           cmp    eax,edi
  004a6271: 75 05                                           jne    0x4a6278
  004a6273: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a6278: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004a627c: 73 4c                                           jae    0x4a62ca
  004a627e: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a6280: 3b c7                                           cmp    eax,edi
  004a6282: 74 1f                                           je     0x4a62a3
  004a6284: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a6287: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a6289: 84 c0                                           test   al,al
  004a628b: 74 0a                                           je     0x4a6297
  004a628d: 3c ff                                           cmp    al,0xff
  004a628f: 74 06                                           je     0x4a6297
  004a6291: fe c8                                           dec    al
  004a6293: 88 01                                           mov    BYTE PTR [ecx],al
  004a6295: eb 0c                                           jmp    0x4a62a3
  004a6297: 51                                              push   ecx
  004a6298: e8 c3 bd f9 ff                                  call   0x442060
  004a629d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a62a0: 83 c4 04                                        add    esp,0x4
  004a62a3: 89 3b                                           mov    DWORD PTR [ebx],edi
  004a62a5: 89 7b 04                                        mov    DWORD PTR [ebx+0x4],edi
  004a62a8: 89 7b 08                                        mov    DWORD PTR [ebx+0x8],edi
  004a62ab: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004a62ae: 3b c7                                           cmp    eax,edi
  004a62b0: 75 05                                           jne    0x4a62b7
  004a62b2: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a62b7: 89 03                                           mov    DWORD PTR [ebx],eax
  004a62b9: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  004a62bc: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a62bf: 8b 4a 0c                                        mov    ecx,DWORD PTR [edx+0xc]
  004a62c2: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004a62c5: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004a62c8: eb 42                                           jmp    0x4a630c
  004a62ca: 6a 01                                           push   0x1
  004a62cc: 56                                              push   esi
  004a62cd: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a62d0: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a62d6: 84 c0                                           test   al,al
  004a62d8: 74 2f                                           je     0x4a6309
  004a62da: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a62dd: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004a62e0: 85 c0                                           test   eax,eax
  004a62e2: 75 05                                           jne    0x4a62e9
  004a62e4: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a62e9: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a62eb: 8b ce                                           mov    ecx,esi
  004a62ed: 8b f0                                           mov    esi,eax
  004a62ef: 8b c1                                           mov    eax,ecx
  004a62f1: c1 e9 02                                        shr    ecx,0x2
  004a62f4: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004a62f6: 8b c8                                           mov    ecx,eax
  004a62f8: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a62fb: 83 e1 03                                        and    ecx,0x3
  004a62fe: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004a6300: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004a6302: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004a6305: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  004a6309: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a630c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a630f: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a6312: 83 c0 28                                        add    eax,0x28
  004a6315: 83 c3 28                                        add    ebx,0x28
  004a6318: 3b c1                                           cmp    eax,ecx
  004a631a: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004a631d: 0f 85 ae fe ff ff                               jne    0x4a61d1
  004a6323: 5f                                              pop    edi
  004a6324: 5e                                              pop    esi
  004a6325: 5b                                              pop    ebx
  004a6326: 8b e5                                           mov    esp,ebp
  004a6328: 5d                                              pop    ebp
  004a6329: c3                                              ret
  004a6330: 55                                              push   ebp
  004a6331: 8b ec                                           mov    ebp,esp
  004a6333: 83 ec 08                                        sub    esp,0x8
  004a6336: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a6339: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  004a633c: 0f 84 5d 01 00 00                               je     0x4a649f
  004a6342: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a6345: 53                                              push   ebx
  004a6346: 56                                              push   esi
  004a6347: 57                                              push   edi
  004a6348: 83 c0 1c                                        add    eax,0x1c
  004a634b: 8d 59 20                                        lea    ebx,[ecx+0x20]
  004a634e: eb 03                                           jmp    0x4a6353
  004a6350: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a6353: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004a6356: 8b 75 14                                        mov    esi,DWORD PTR [ebp+0x14]
  004a6359: b9 28 00 00 00                                  mov    ecx,0x28
  004a635e: 2b d1                                           sub    edx,ecx
  004a6360: 2b f1                                           sub    esi,ecx
  004a6362: 2b c1                                           sub    eax,ecx
  004a6364: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  004a6367: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004a636a: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a6370: 89 75 14                                        mov    DWORD PTR [ebp+0x14],esi
  004a6373: 8b 32                                           mov    esi,DWORD PTR [edx]
  004a6375: 2b d9                                           sub    ebx,ecx
  004a6377: 3b f7                                           cmp    esi,edi
  004a6379: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004a637c: 89 7d f8                                        mov    DWORD PTR [ebp-0x8],edi
  004a637f: 73 05                                           jae    0x4a6386
  004a6381: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004a6384: 8b fe                                           mov    edi,esi
  004a6386: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  004a6389: 8d 50 fc                                        lea    edx,[eax-0x4]
  004a638c: 3b ca                                           cmp    ecx,edx
  004a638e: 75 6f                                           jne    0x4a63ff
  004a6390: 39 3b                                           cmp    DWORD PTR [ebx],edi
  004a6392: 73 09                                           jae    0x4a639d
  004a6394: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  004a6397: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004a639d: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a639f: 2b c7                                           sub    eax,edi
  004a63a1: 3b c6                                           cmp    eax,esi
  004a63a3: 73 02                                           jae    0x4a63a7
  004a63a5: 8b f0                                           mov    esi,eax
  004a63a7: 85 f6                                           test   esi,esi
  004a63a9: 76 42                                           jbe    0x4a63ed
  004a63ab: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  004a63ae: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004a63b4: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004a63b6: 8b 43 fc                                        mov    eax,DWORD PTR [ebx-0x4]
  004a63b9: 2b ce                                           sub    ecx,esi
  004a63bb: 03 c7                                           add    eax,edi
  004a63bd: 2b cf                                           sub    ecx,edi
  004a63bf: 51                                              push   ecx
  004a63c0: 8d 14 30                                        lea    edx,[eax+esi*1]
  004a63c3: 52                                              push   edx
  004a63c4: 50                                              push   eax
  004a63c5: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004a63cb: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a63cd: 83 c4 0c                                        add    esp,0xc
  004a63d0: 2b fe                                           sub    edi,esi
  004a63d2: 6a 00                                           push   0x0
  004a63d4: 8d 73 f8                                        lea    esi,[ebx-0x8]
  004a63d7: 57                                              push   edi
  004a63d8: 8b ce                                           mov    ecx,esi
  004a63da: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a63e0: 84 c0                                           test   al,al
  004a63e2: 74 09                                           je     0x4a63ed
  004a63e4: 57                                              push   edi
  004a63e5: 8b ce                                           mov    ecx,esi
  004a63e7: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004a63ed: 6a 00                                           push   0x0
  004a63ef: 6a 00                                           push   0x0
  004a63f1: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  004a63f4: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004a63fa: e9 85 00 00 00                                  jmp    0x4a6484
  004a63ff: 85 ff                                           test   edi,edi
  004a6401: 76 42                                           jbe    0x4a6445
  004a6403: 3b 78 04                                        cmp    edi,DWORD PTR [eax+0x4]
  004a6406: 75 3d                                           jne    0x4a6445
  004a6408: 8b 00                                           mov    eax,DWORD PTR [eax]
  004a640a: 85 c0                                           test   eax,eax
  004a640c: 75 05                                           jne    0x4a6413
  004a640e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a6413: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004a6417: 73 2c                                           jae    0x4a6445
  004a6419: 6a 01                                           push   0x1
  004a641b: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  004a641e: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004a6424: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a6427: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004a6429: 85 c0                                           test   eax,eax
  004a642b: 75 05                                           jne    0x4a6432
  004a642d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a6432: 89 43 fc                                        mov    DWORD PTR [ebx-0x4],eax
  004a6435: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004a6438: 89 13                                           mov    DWORD PTR [ebx],edx
  004a643a: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004a643d: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a6440: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004a6443: eb 3f                                           jmp    0x4a6484
  004a6445: 6a 01                                           push   0x1
  004a6447: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  004a644a: 57                                              push   edi
  004a644b: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a6451: 84 c0                                           test   al,al
  004a6453: 74 2f                                           je     0x4a6484
  004a6455: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  004a6458: 8b 32                                           mov    esi,DWORD PTR [edx]
  004a645a: 85 f6                                           test   esi,esi
  004a645c: 75 06                                           jne    0x4a6464
  004a645e: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004a6464: 8b cf                                           mov    ecx,edi
  004a6466: 8b 7b fc                                        mov    edi,DWORD PTR [ebx-0x4]
  004a6469: 8b c1                                           mov    eax,ecx
  004a646b: c1 e9 02                                        shr    ecx,0x2
  004a646e: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004a6470: 8b c8                                           mov    ecx,eax
  004a6472: 83 e1 03                                        and    ecx,0x3
  004a6475: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004a6477: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004a647a: 51                                              push   ecx
  004a647b: 8d 4b f8                                        lea    ecx,[ebx-0x8]
  004a647e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004a6484: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004a6487: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  004a648a: 0f 85 c0 fe ff ff                               jne    0x4a6350
  004a6490: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a6493: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a6496: 5f                                              pop    edi
  004a6497: 5e                                              pop    esi
  004a6498: 89 08                                           mov    DWORD PTR [eax],ecx
  004a649a: 5b                                              pop    ebx
  004a649b: 8b e5                                           mov    esp,ebp
  004a649d: 5d                                              pop    ebp
  004a649e: c3                                              ret
  004a649f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a64a2: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004a64a5: 89 10                                           mov    DWORD PTR [eax],edx
  004a64a7: 8b e5                                           mov    esp,ebp
  004a64a9: 5d                                              pop    ebp
  004a64aa: c3                                              ret
  004a77d0: 55                                              push   ebp
  004a77d1: 8b ec                                           mov    ebp,esp
  004a77d3: 8b c1                                           mov    eax,ecx
  004a77d5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a77d8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a77da: 89 10                                           mov    DWORD PTR [eax],edx
  004a77dc: 5d                                              pop    ebp
  004a77dd: c2 04 00                                        ret    0x4
  004a7c30: 55                                              push   ebp
  004a7c31: 8b ec                                           mov    ebp,esp
  004a7c33: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a7c36: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a7c38: 8d 14 80                                        lea    edx,[eax+eax*4]
  004a7c3b: 8d 04 50                                        lea    eax,[eax+edx*2]
  004a7c3e: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004a7c41: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a7c44: 89 10                                           mov    DWORD PTR [eax],edx
  004a7c46: 5d                                              pop    ebp
  004a7c47: c2 08 00                                        ret    0x8
  004a7c50: 55                                              push   ebp
  004a7c51: 8b ec                                           mov    ebp,esp
  004a7c53: 6a ff                                           push   0xffffffff
  004a7c55: 68 89 bd 4d 00                                  push   0x4dbd89
  004a7c5a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a7c60: 50                                              push   eax
  004a7c61: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a7c68: 83 ec 08                                        sub    esp,0x8
  004a7c6b: 53                                              push   ebx
  004a7c6c: 56                                              push   esi
  004a7c6d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004a7c70: 57                                              push   edi
  004a7c71: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004a7c74: 33 db                                           xor    ebx,ebx
  004a7c76: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a7c79: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a7c7c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004a7c7f: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  004a7c82: 0f 86 97 00 00 00                               jbe    0x4a7d1f
  004a7c88: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a7c8b: 3b f3                                           cmp    esi,ebx
  004a7c8d: 74 59                                           je     0x4a7ce8
  004a7c8f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a7c92: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a7c95: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a7c98: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a7c9b: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a7c9e: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a7ca1: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a7ca4: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a7ca7: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a7caa: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a7cad: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a7cb3: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  004a7cb6: 8d 47 18                                        lea    eax,[edi+0x18]
  004a7cb9: 8d 4e 18                                        lea    ecx,[esi+0x18]
  004a7cbc: 88 11                                           mov    BYTE PTR [ecx],dl
  004a7cbe: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004a7cc1: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004a7cc4: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004a7cc7: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a7ccd: 8b 12                                           mov    edx,DWORD PTR [edx]
  004a7ccf: 52                                              push   edx
  004a7cd0: 53                                              push   ebx
  004a7cd1: 50                                              push   eax
  004a7cd2: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a7cd6: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a7cdc: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  004a7cdf: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004a7ce2: c7 06 08 fa 4d 00                               mov    DWORD PTR [esi],0x4dfa08
  004a7ce8: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a7ceb: 49                                              dec    ecx
  004a7cec: 83 c6 2c                                        add    esi,0x2c
  004a7cef: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004a7cf2: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004a7cf5: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a7cf8: eb 85                                           jmp    0x4a7c7f
  004a7d1f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a7d22: 5f                                              pop    edi
  004a7d23: 8b c6                                           mov    eax,esi
  004a7d25: 5e                                              pop    esi
  004a7d26: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a7d2d: 5b                                              pop    ebx
  004a7d2e: 8b e5                                           mov    esp,ebp
  004a7d30: 5d                                              pop    ebp
  004a7d31: c2 0c 00                                        ret    0xc
  004a7d40: 55                                              push   ebp
  004a7d41: 8b ec                                           mov    ebp,esp
  004a7d43: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a7d46: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004a7d48: 8d 14 80                                        lea    edx,[eax+eax*4]
  004a7d4b: 8d 04 50                                        lea    eax,[eax+edx*2]
  004a7d4e: c1 e0 02                                        shl    eax,0x2
  004a7d51: 2b c8                                           sub    ecx,eax
  004a7d53: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a7d56: 89 08                                           mov    DWORD PTR [eax],ecx
  004a7d58: 5d                                              pop    ebp
  004a7d59: c2 08 00                                        ret    0x8
  004a7d60: 55                                              push   ebp
  004a7d61: 8b ec                                           mov    ebp,esp
  004a7d63: 6a ff                                           push   0xffffffff
  004a7d65: 68 b9 bd 4d 00                                  push   0x4dbdb9
  004a7d6a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004a7d70: 50                                              push   eax
  004a7d71: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004a7d78: 83 ec 08                                        sub    esp,0x8
  004a7d7b: 53                                              push   ebx
  004a7d7c: 56                                              push   esi
  004a7d7d: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004a7d80: 57                                              push   edi
  004a7d81: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004a7d84: 33 db                                           xor    ebx,ebx
  004a7d86: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004a7d89: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004a7d8c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004a7d8f: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  004a7d92: 0f 84 93 00 00 00                               je     0x4a7e2b
  004a7d98: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004a7d9b: 3b f3                                           cmp    esi,ebx
  004a7d9d: 74 59                                           je     0x4a7df8
  004a7d9f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004a7da2: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004a7da5: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004a7da8: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004a7dab: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004a7dae: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  004a7db1: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  004a7db4: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004a7db7: 8a 4f 14                                        mov    cl,BYTE PTR [edi+0x14]
  004a7dba: 88 4e 14                                        mov    BYTE PTR [esi+0x14],cl
  004a7dbd: c7 06 28 f9 4d 00                               mov    DWORD PTR [esi],0x4df928
  004a7dc3: 8a 57 18                                        mov    dl,BYTE PTR [edi+0x18]
  004a7dc6: 8d 47 18                                        lea    eax,[edi+0x18]
  004a7dc9: 8d 4e 18                                        lea    ecx,[esi+0x18]
  004a7dcc: 88 11                                           mov    BYTE PTR [ecx],dl
  004a7dce: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004a7dd1: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004a7dd4: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004a7dd7: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a7ddd: 8b 12                                           mov    edx,DWORD PTR [edx]
  004a7ddf: 52                                              push   edx
  004a7de0: 53                                              push   ebx
  004a7de1: 50                                              push   eax
  004a7de2: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004a7de6: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004a7dec: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  004a7def: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004a7df2: c7 06 08 fa 4d 00                               mov    DWORD PTR [esi],0x4dfa08
  004a7df8: 83 c6 2c                                        add    esi,0x2c
  004a7dfb: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004a7dfe: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004a7e01: 83 c7 2c                                        add    edi,0x2c
  004a7e04: eb 89                                           jmp    0x4a7d8f
  004a7e2b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004a7e2e: 5f                                              pop    edi
  004a7e2f: 8b c6                                           mov    eax,esi
  004a7e31: 5e                                              pop    esi
  004a7e32: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004a7e39: 5b                                              pop    ebx
  004a7e3a: 8b e5                                           mov    esp,ebp
  004a7e3c: 5d                                              pop    ebp
  004a7e3d: c2 0c 00                                        ret    0xc
  004a7e40: 55                                              push   ebp
  004a7e41: 8b ec                                           mov    ebp,esp
  004a7e43: 51                                              push   ecx
  004a7e44: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004a7e47: 53                                              push   ebx
  004a7e48: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004a7e4b: 3b d8                                           cmp    ebx,eax
  004a7e4d: 0f 84 59 01 00 00                               je     0x4a7fac
  004a7e53: 56                                              push   esi
  004a7e54: 57                                              push   edi
  004a7e55: 83 c3 1c                                        add    ebx,0x1c
  004a7e58: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004a7e5b: 8b 41 28                                        mov    eax,DWORD PTR [ecx+0x28]
  004a7e5e: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  004a7e61: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004a7e67: 8b 02                                           mov    eax,DWORD PTR [edx]
  004a7e69: 8d 71 18                                        lea    esi,[ecx+0x18]
  004a7e6c: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a7e6f: 8b f9                                           mov    edi,ecx
  004a7e71: 3b c7                                           cmp    eax,edi
  004a7e73: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a7e76: 73 05                                           jae    0x4a7e7d
  004a7e78: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004a7e7b: 8b f8                                           mov    edi,eax
  004a7e7d: 8d 53 fc                                        lea    edx,[ebx-0x4]
  004a7e80: 3b d6                                           cmp    edx,esi
  004a7e82: 75 6f                                           jne    0x4a7ef3
  004a7e84: 8b f0                                           mov    esi,eax
  004a7e86: 39 7b 04                                        cmp    DWORD PTR [ebx+0x4],edi
  004a7e89: 73 09                                           jae    0x4a7e94
  004a7e8b: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a7e8e: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004a7e94: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004a7e97: 2b c7                                           sub    eax,edi
  004a7e99: 3b c6                                           cmp    eax,esi
  004a7e9b: 73 02                                           jae    0x4a7e9f
  004a7e9d: 8b f0                                           mov    esi,eax
  004a7e9f: 85 f6                                           test   esi,esi
  004a7ea1: 0f 86 ec 00 00 00                               jbe    0x4a7f93
  004a7ea7: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a7eaa: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004a7eb0: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004a7eb3: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a7eb5: 2b ce                                           sub    ecx,esi
  004a7eb7: 03 c7                                           add    eax,edi
  004a7eb9: 2b cf                                           sub    ecx,edi
  004a7ebb: 51                                              push   ecx
  004a7ebc: 8d 14 30                                        lea    edx,[eax+esi*1]
  004a7ebf: 52                                              push   edx
  004a7ec0: 50                                              push   eax
  004a7ec1: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004a7ec7: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004a7eca: 83 c4 0c                                        add    esp,0xc
  004a7ecd: 2b fe                                           sub    edi,esi
  004a7ecf: 6a 00                                           push   0x0
  004a7ed1: 8d 73 fc                                        lea    esi,[ebx-0x4]
  004a7ed4: 57                                              push   edi
  004a7ed5: 8b ce                                           mov    ecx,esi
  004a7ed7: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a7edd: 84 c0                                           test   al,al
  004a7edf: 0f 84 ae 00 00 00                               je     0x4a7f93
  004a7ee5: 57                                              push   edi
  004a7ee6: 8b ce                                           mov    ecx,esi
  004a7ee8: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004a7eee: e9 a0 00 00 00                                  jmp    0x4a7f93
  004a7ef3: 85 ff                                           test   edi,edi
  004a7ef5: 76 61                                           jbe    0x4a7f58
  004a7ef7: 3b f9                                           cmp    edi,ecx
  004a7ef9: 75 5d                                           jne    0x4a7f58
  004a7efb: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a7efe: 85 c0                                           test   eax,eax
  004a7f00: 75 05                                           jne    0x4a7f07
  004a7f02: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a7f07: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004a7f0b: 73 4b                                           jae    0x4a7f58
  004a7f0d: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a7f0f: 85 c0                                           test   eax,eax
  004a7f11: 74 1c                                           je     0x4a7f2f
  004a7f13: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a7f16: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a7f18: 84 c0                                           test   al,al
  004a7f1a: 74 0a                                           je     0x4a7f26
  004a7f1c: 3c ff                                           cmp    al,0xff
  004a7f1e: 74 06                                           je     0x4a7f26
  004a7f20: fe c8                                           dec    al
  004a7f22: 88 01                                           mov    BYTE PTR [ecx],al
  004a7f24: eb 09                                           jmp    0x4a7f2f
  004a7f26: 51                                              push   ecx
  004a7f27: e8 34 a1 f9 ff                                  call   0x442060
  004a7f2c: 83 c4 04                                        add    esp,0x4
  004a7f2f: 33 c9                                           xor    ecx,ecx
  004a7f31: 89 0b                                           mov    DWORD PTR [ebx],ecx
  004a7f33: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a7f36: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004a7f39: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004a7f3c: 3b c1                                           cmp    eax,ecx
  004a7f3e: 75 05                                           jne    0x4a7f45
  004a7f40: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a7f45: 89 03                                           mov    DWORD PTR [ebx],eax
  004a7f47: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004a7f4a: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a7f4d: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004a7f50: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004a7f53: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004a7f56: eb 3b                                           jmp    0x4a7f93
  004a7f58: 6a 01                                           push   0x1
  004a7f5a: 57                                              push   edi
  004a7f5b: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a7f5e: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a7f64: 84 c0                                           test   al,al
  004a7f66: 74 2b                                           je     0x4a7f93
  004a7f68: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004a7f6b: 85 f6                                           test   esi,esi
  004a7f6d: 75 06                                           jne    0x4a7f75
  004a7f6f: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004a7f75: 8b cf                                           mov    ecx,edi
  004a7f77: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a7f79: 8b c1                                           mov    eax,ecx
  004a7f7b: c1 e9 02                                        shr    ecx,0x2
  004a7f7e: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004a7f80: 8b c8                                           mov    ecx,eax
  004a7f82: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004a7f85: 83 e1 03                                        and    ecx,0x3
  004a7f88: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004a7f8a: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004a7f8c: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004a7f8f: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  004a7f93: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a7f96: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004a7f99: 83 c0 2c                                        add    eax,0x2c
  004a7f9c: 83 c3 2c                                        add    ebx,0x2c
  004a7f9f: 3b c1                                           cmp    eax,ecx
  004a7fa1: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004a7fa4: 0f 85 ae fe ff ff                               jne    0x4a7e58
  004a7faa: 5f                                              pop    edi
  004a7fab: 5e                                              pop    esi
  004a7fac: 5b                                              pop    ebx
  004a7fad: 8b e5                                           mov    esp,ebp
  004a7faf: 5d                                              pop    ebp
  004a7fb0: c3                                              ret
  004a7fc0: 55                                              push   ebp
  004a7fc1: 8b ec                                           mov    ebp,esp
  004a7fc3: 83 ec 08                                        sub    esp,0x8
  004a7fc6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a7fc9: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  004a7fcc: 0f 84 24 01 00 00                               je     0x4a80f6
  004a7fd2: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a7fd5: 53                                              push   ebx
  004a7fd6: 56                                              push   esi
  004a7fd7: 57                                              push   edi
  004a7fd8: 8d 59 1c                                        lea    ebx,[ecx+0x1c]
  004a7fdb: 8d 70 1c                                        lea    esi,[eax+0x1c]
  004a7fde: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  004a7fe1: 8b 56 e0                                        mov    edx,DWORD PTR [esi-0x20]
  004a7fe4: 83 ee 2c                                        sub    esi,0x2c
  004a7fe7: 83 e8 2c                                        sub    eax,0x2c
  004a7fea: 83 eb 2c                                        sub    ebx,0x2c
  004a7fed: 83 ef 2c                                        sub    edi,0x2c
  004a7ff0: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  004a7ff3: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004a7ff6: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004a7ffb: 8b 00                                           mov    eax,DWORD PTR [eax]
  004a7ffd: 89 7d 14                                        mov    DWORD PTR [ebp+0x14],edi
  004a8000: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004a8003: 3b c7                                           cmp    eax,edi
  004a8005: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004a8008: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004a800b: 73 05                                           jae    0x4a8012
  004a800d: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004a8010: 8b f8                                           mov    edi,eax
  004a8012: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004a8015: 8d 53 fc                                        lea    edx,[ebx-0x4]
  004a8018: 3b d1                                           cmp    edx,ecx
  004a801a: 75 1d                                           jne    0x4a8039
  004a801c: 50                                              push   eax
  004a801d: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a8020: 57                                              push   edi
  004a8021: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004a8027: 6a 00                                           push   0x0
  004a8029: 6a 00                                           push   0x0
  004a802b: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a802e: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004a8034: e9 a2 00 00 00                                  jmp    0x4a80db
  004a8039: 85 ff                                           test   edi,edi
  004a803b: 76 60                                           jbe    0x4a809d
  004a803d: 3b 7e 04                                        cmp    edi,DWORD PTR [esi+0x4]
  004a8040: 75 5b                                           jne    0x4a809d
  004a8042: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a8044: 85 c0                                           test   eax,eax
  004a8046: 75 05                                           jne    0x4a804d
  004a8048: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a804d: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004a8051: 73 4a                                           jae    0x4a809d
  004a8053: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004a8055: 85 c0                                           test   eax,eax
  004a8057: 74 1c                                           je     0x4a8075
  004a8059: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004a805c: 8a 01                                           mov    al,BYTE PTR [ecx]
  004a805e: 84 c0                                           test   al,al
  004a8060: 74 0a                                           je     0x4a806c
  004a8062: 3c ff                                           cmp    al,0xff
  004a8064: 74 06                                           je     0x4a806c
  004a8066: fe c8                                           dec    al
  004a8068: 88 01                                           mov    BYTE PTR [ecx],al
  004a806a: eb 09                                           jmp    0x4a8075
  004a806c: 51                                              push   ecx
  004a806d: e8 ee 9f f9 ff                                  call   0x442060
  004a8072: 83 c4 04                                        add    esp,0x4
  004a8075: 33 c9                                           xor    ecx,ecx
  004a8077: 89 0b                                           mov    DWORD PTR [ebx],ecx
  004a8079: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a807c: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004a807f: 8b 06                                           mov    eax,DWORD PTR [esi]
  004a8081: 3b c1                                           cmp    eax,ecx
  004a8083: 75 05                                           jne    0x4a808a
  004a8085: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004a808a: 89 03                                           mov    DWORD PTR [ebx],eax
  004a808c: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004a808f: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004a8092: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004a8095: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004a8098: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004a809b: eb 3e                                           jmp    0x4a80db
  004a809d: 6a 01                                           push   0x1
  004a809f: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a80a2: 57                                              push   edi
  004a80a3: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004a80a9: 84 c0                                           test   al,al
  004a80ab: 74 2e                                           je     0x4a80db
  004a80ad: 8b 36                                           mov    esi,DWORD PTR [esi]
  004a80af: 85 f6                                           test   esi,esi
  004a80b1: 75 06                                           jne    0x4a80b9
  004a80b3: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004a80b9: 8b cf                                           mov    ecx,edi
  004a80bb: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004a80bd: 8b c1                                           mov    eax,ecx
  004a80bf: c1 e9 02                                        shr    ecx,0x2
  004a80c2: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004a80c4: 8b c8                                           mov    ecx,eax
  004a80c6: 83 e1 03                                        and    ecx,0x3
  004a80c9: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004a80cb: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004a80ce: 51                                              push   ecx
  004a80cf: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004a80d2: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004a80d8: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  004a80db: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004a80de: 3b 45 0c                                        cmp    eax,DWORD PTR [ebp+0xc]
  004a80e1: 0f 85 f7 fe ff ff                               jne    0x4a7fde
  004a80e7: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a80ea: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004a80ed: 5f                                              pop    edi
  004a80ee: 5e                                              pop    esi
  004a80ef: 89 10                                           mov    DWORD PTR [eax],edx
  004a80f1: 5b                                              pop    ebx
  004a80f2: 8b e5                                           mov    esp,ebp
  004a80f4: 5d                                              pop    ebp
  004a80f5: c3                                              ret
  004a80f6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004a80f9: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004a80fc: 89 08                                           mov    DWORD PTR [eax],ecx
  004a80fe: 8b e5                                           mov    esp,ebp
  004a8100: 5d                                              pop    ebp
  004a8101: c3                                              ret
  004a9ec0: 55                                              push   ebp
  004a9ec1: 8b ec                                           mov    ebp,esp
  004a9ec3: 8b c1                                           mov    eax,ecx
  004a9ec5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004a9ec8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004a9eca: 89 10                                           mov    DWORD PTR [eax],edx
  004a9ecc: 5d                                              pop    ebp
  004a9ecd: c2 04 00                                        ret    0x4
  004aa480: 55                                              push   ebp
  004aa481: 8b ec                                           mov    ebp,esp
  004aa483: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004aa486: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004aa488: 8d 14 80                                        lea    edx,[eax+eax*4]
  004aa48b: 8d 04 50                                        lea    eax,[eax+edx*2]
  004aa48e: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004aa491: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004aa494: 89 10                                           mov    DWORD PTR [eax],edx
  004aa496: 5d                                              pop    ebp
  004aa497: c2 08 00                                        ret    0x8
  004ab310: 55                                              push   ebp
  004ab311: 8b ec                                           mov    ebp,esp
  004ab313: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004ab316: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004ab318: 8d 14 80                                        lea    edx,[eax+eax*4]
  004ab31b: 8d 04 50                                        lea    eax,[eax+edx*2]
  004ab31e: c1 e0 02                                        shl    eax,0x2
  004ab321: 2b c8                                           sub    ecx,eax
  004ab323: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ab326: 89 08                                           mov    DWORD PTR [eax],ecx
  004ab328: 5d                                              pop    ebp
  004ab329: c2 08 00                                        ret    0x8
  004ab9a0: 55                                              push   ebp
  004ab9a1: 8b ec                                           mov    ebp,esp
  004ab9a3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ab9a6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004ab9a8: 6a 00                                           push   0x0
  004ab9aa: ff 10                                           call   DWORD PTR [eax]
  004ab9ac: 5d                                              pop    ebp
  004ab9ad: c2 04 00                                        ret    0x4
  004ab9b0: 55                                              push   ebp
  004ab9b1: 8b ec                                           mov    ebp,esp
  004ab9b3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ab9b6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004ab9b8: 6a 00                                           push   0x0
  004ab9ba: ff 10                                           call   DWORD PTR [eax]
  004ab9bc: 5d                                              pop    ebp
  004ab9bd: c2 04 00                                        ret    0x4
  004abac0: 55                                              push   ebp
  004abac1: 8b ec                                           mov    ebp,esp
  004abac3: 6a ff                                           push   0xffffffff
  004abac5: 68 b9 c4 4d 00                                  push   0x4dc4b9
  004abaca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004abad0: 50                                              push   eax
  004abad1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004abad8: 83 ec 08                                        sub    esp,0x8
  004abadb: 53                                              push   ebx
  004abadc: 56                                              push   esi
  004abadd: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004abae0: 57                                              push   edi
  004abae1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004abae4: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004abae7: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  004abaea: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004abaf1: 3b 75 0c                                        cmp    esi,DWORD PTR [ebp+0xc]
  004abaf4: 0f 84 ba 00 00 00                               je     0x4abbb4
  004abafa: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  004abafd: 85 ff                                           test   edi,edi
  004abaff: 74 7f                                           je     0x4abb80
  004abb01: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004abb04: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004abb07: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004abb0a: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004abb0d: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004abb10: 89 57 0c                                        mov    DWORD PTR [edi+0xc],edx
  004abb13: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004abb16: 89 47 10                                        mov    DWORD PTR [edi+0x10],eax
  004abb19: 8a 4e 14                                        mov    cl,BYTE PTR [esi+0x14]
  004abb1c: 88 4f 14                                        mov    BYTE PTR [edi+0x14],cl
  004abb1f: c7 07 28 f9 4d 00                               mov    DWORD PTR [edi],0x4df928
  004abb25: 8b 56 18                                        mov    edx,DWORD PTR [esi+0x18]
  004abb28: 89 57 18                                        mov    DWORD PTR [edi+0x18],edx
  004abb2b: 8a 46 1c                                        mov    al,BYTE PTR [esi+0x1c]
  004abb2e: 8d 5f 1c                                        lea    ebx,[edi+0x1c]
  004abb31: 88 03                                           mov    BYTE PTR [ebx],al
  004abb33: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004abb36: 85 c0                                           test   eax,eax
  004abb38: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  004abb3c: 75 04                                           jne    0x4abb42
  004abb3e: 33 d2                                           xor    edx,edx
  004abb40: eb 16                                           jmp    0x4abb58
  004abb42: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  004abb45: 2b c8                                           sub    ecx,eax
  004abb47: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004abb4c: f7 e9                                           imul   ecx
  004abb4e: c1 fa 03                                        sar    edx,0x3
  004abb51: 8b c2                                           mov    eax,edx
  004abb53: c1 e8 1f                                        shr    eax,0x1f
  004abb56: 03 d0                                           add    edx,eax
  004abb58: 52                                              push   edx
  004abb59: 8b cb                                           mov    ecx,ebx
  004abb5b: e8 60 f7 ff ff                                  call   0x4ab2c0
  004abb60: 84 c0                                           test   al,al
  004abb62: 74 16                                           je     0x4abb7a
  004abb64: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  004abb67: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004abb6a: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004abb6d: 52                                              push   edx
  004abb6e: 50                                              push   eax
  004abb6f: 51                                              push   ecx
  004abb70: 8b cb                                           mov    ecx,ebx
  004abb72: e8 69 fe ff ff                                  call   0x4ab9e0
  004abb77: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  004abb7a: c7 07 28 fa 4d 00                               mov    DWORD PTR [edi],0x4dfa28
  004abb80: 83 c7 2c                                        add    edi,0x2c
  004abb83: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  004abb87: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  004abb8a: 83 c6 2c                                        add    esi,0x2c
  004abb8d: e9 5f ff ff ff                                  jmp    0x4abaf1
  004abbb4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004abbb7: 8b c7                                           mov    eax,edi
  004abbb9: 5f                                              pop    edi
  004abbba: 5e                                              pop    esi
  004abbbb: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004abbc2: 5b                                              pop    ebx
  004abbc3: 8b e5                                           mov    esp,ebp
  004abbc5: 5d                                              pop    ebp
  004abbc6: c2 0c 00                                        ret    0xc
  004abbd0: 55                                              push   ebp
  004abbd1: 8b ec                                           mov    ebp,esp
  004abbd3: 83 ec 0c                                        sub    esp,0xc
  004abbd6: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004abbd9: 56                                              push   esi
  004abbda: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004abbdd: 3b f0                                           cmp    esi,eax
  004abbdf: 0f 84 dd 01 00 00                               je     0x4abdc2
  004abbe5: 53                                              push   ebx
  004abbe6: 57                                              push   edi
  004abbe7: 83 c6 20                                        add    esi,0x20
  004abbea: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004abbed: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  004abbf0: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004abbf3: 83 c7 1c                                        add    edi,0x1c
  004abbf6: 3b cf                                           cmp    ecx,edi
  004abbf8: 89 46 f8                                        mov    DWORD PTR [esi-0x8],eax
  004abbfb: 0f 84 a8 01 00 00                               je     0x4abda9
  004abc01: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  004abc04: 85 db                                           test   ebx,ebx
  004abc06: 89 5d f4                                        mov    DWORD PTR [ebp-0xc],ebx
  004abc09: 74 1e                                           je     0x4abc29
  004abc0b: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004abc0e: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004abc11: 2b cb                                           sub    ecx,ebx
  004abc13: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004abc18: f7 e9                                           imul   ecx
  004abc1a: c1 fa 03                                        sar    edx,0x3
  004abc1d: 8b c2                                           mov    eax,edx
  004abc1f: c1 e8 1f                                        shr    eax,0x1f
  004abc22: 03 d0                                           add    edx,eax
  004abc24: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004abc27: 75 2d                                           jne    0x4abc56
  004abc29: 8b 06                                           mov    eax,DWORD PTR [esi]
  004abc2b: 85 c0                                           test   eax,eax
  004abc2d: 74 18                                           je     0x4abc47
  004abc2f: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004abc32: 51                                              push   ecx
  004abc33: 50                                              push   eax
  004abc34: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004abc37: e8 24 03 00 00                                  call   0x4abf60
  004abc3c: 8b 16                                           mov    edx,DWORD PTR [esi]
  004abc3e: 52                                              push   edx
  004abc3f: e8 1c 64 f9 ff                                  call   0x442060
  004abc44: 83 c4 04                                        add    esp,0x4
  004abc47: 33 c0                                           xor    eax,eax
  004abc49: 89 06                                           mov    DWORD PTR [esi],eax
  004abc4b: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004abc4e: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004abc51: e9 53 01 00 00                                  jmp    0x4abda9
  004abc56: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004abc58: 85 c9                                           test   ecx,ecx
  004abc5a: 75 04                                           jne    0x4abc60
  004abc5c: 33 d2                                           xor    edx,edx
  004abc5e: eb 16                                           jmp    0x4abc76
  004abc60: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004abc63: 2b d1                                           sub    edx,ecx
  004abc65: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004abc6a: f7 ea                                           imul   edx
  004abc6c: c1 fa 03                                        sar    edx,0x3
  004abc6f: 8b c2                                           mov    eax,edx
  004abc71: c1 e8 1f                                        shr    eax,0x1f
  004abc74: 03 d0                                           add    edx,eax
  004abc76: 39 55 f8                                        cmp    DWORD PTR [ebp-0x8],edx
  004abc79: 0f 87 82 00 00 00                               ja     0x4abd01
  004abc7f: 8b 7d f4                                        mov    edi,DWORD PTR [ebp-0xc]
  004abc82: 3b 7d fc                                        cmp    edi,DWORD PTR [ebp-0x4]
  004abc85: 8b d9                                           mov    ebx,ecx
  004abc87: 74 15                                           je     0x4abc9e
  004abc89: 57                                              push   edi
  004abc8a: 8b cb                                           mov    ecx,ebx
  004abc8c: e8 3f 01 00 00                                  call   0x4abdd0
  004abc91: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004abc94: 83 c7 2c                                        add    edi,0x2c
  004abc97: 83 c3 2c                                        add    ebx,0x2c
  004abc9a: 3b f8                                           cmp    edi,eax
  004abc9c: 75 eb                                           jne    0x4abc89
  004abc9e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004abca1: 3b d8                                           cmp    ebx,eax
  004abca3: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004abca6: 8b fb                                           mov    edi,ebx
  004abca8: 74 12                                           je     0x4abcbc
  004abcaa: 8b 17                                           mov    edx,DWORD PTR [edi]
  004abcac: 6a 00                                           push   0x0
  004abcae: 8b cf                                           mov    ecx,edi
  004abcb0: ff 12                                           call   DWORD PTR [edx]
  004abcb2: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004abcb5: 83 c7 2c                                        add    edi,0x2c
  004abcb8: 3b f8                                           cmp    edi,eax
  004abcba: 75 ee                                           jne    0x4abcaa
  004abcbc: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004abcbf: 8d 48 1c                                        lea    ecx,[eax+0x1c]
  004abcc2: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004abcc5: 85 c0                                           test   eax,eax
  004abcc7: 75 12                                           jne    0x4abcdb
  004abcc9: 33 d2                                           xor    edx,edx
  004abccb: 8d 04 92                                        lea    eax,[edx+edx*4]
  004abcce: 8d 0c 42                                        lea    ecx,[edx+eax*2]
  004abcd1: 8b 16                                           mov    edx,DWORD PTR [esi]
  004abcd3: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004abcd6: e9 cb 00 00 00                                  jmp    0x4abda6
  004abcdb: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004abcde: 2b c8                                           sub    ecx,eax
  004abce0: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004abce5: f7 e9                                           imul   ecx
  004abce7: c1 fa 03                                        sar    edx,0x3
  004abcea: 8b ca                                           mov    ecx,edx
  004abcec: c1 e9 1f                                        shr    ecx,0x1f
  004abcef: 03 d1                                           add    edx,ecx
  004abcf1: 8d 04 92                                        lea    eax,[edx+edx*4]
  004abcf4: 8d 0c 42                                        lea    ecx,[edx+eax*2]
  004abcf7: 8b 16                                           mov    edx,DWORD PTR [esi]
  004abcf9: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004abcfc: e9 a5 00 00 00                                  jmp    0x4abda6
  004abd01: 85 c9                                           test   ecx,ecx
  004abd03: 75 04                                           jne    0x4abd09
  004abd05: 33 d2                                           xor    edx,edx
  004abd07: eb 16                                           jmp    0x4abd1f
  004abd09: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004abd0c: 2b d1                                           sub    edx,ecx
  004abd0e: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004abd13: f7 ea                                           imul   edx
  004abd15: c1 fa 03                                        sar    edx,0x3
  004abd18: 8b c2                                           mov    eax,edx
  004abd1a: c1 e8 1f                                        shr    eax,0x1f
  004abd1d: 03 d0                                           add    edx,eax
  004abd1f: 39 55 f8                                        cmp    DWORD PTR [ebp-0x8],edx
  004abd22: 77 43                                           ja     0x4abd67
  004abd24: 85 c9                                           test   ecx,ecx
  004abd26: 75 04                                           jne    0x4abd2c
  004abd28: 33 d2                                           xor    edx,edx
  004abd2a: eb 16                                           jmp    0x4abd42
  004abd2c: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004abd2f: 2b d1                                           sub    edx,ecx
  004abd31: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004abd36: f7 ea                                           imul   edx
  004abd38: c1 fa 03                                        sar    edx,0x3
  004abd3b: 8b c2                                           mov    eax,edx
  004abd3d: c1 e8 1f                                        shr    eax,0x1f
  004abd40: 03 d0                                           add    edx,eax
  004abd42: 8d 04 92                                        lea    eax,[edx+edx*4]
  004abd45: 8d 14 42                                        lea    edx,[edx+eax*2]
  004abd48: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004abd4b: 51                                              push   ecx
  004abd4c: 8d 1c 93                                        lea    ebx,[ebx+edx*4]
  004abd4f: 53                                              push   ebx
  004abd50: 50                                              push   eax
  004abd51: e8 3a 02 00 00                                  call   0x4abf90
  004abd56: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004abd59: 8b 7f 08                                        mov    edi,DWORD PTR [edi+0x8]
  004abd5c: 83 c4 0c                                        add    esp,0xc
  004abd5f: 51                                              push   ecx
  004abd60: 57                                              push   edi
  004abd61: 53                                              push   ebx
  004abd62: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004abd65: eb 3a                                           jmp    0x4abda1
  004abd67: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004abd6a: 52                                              push   edx
  004abd6b: 51                                              push   ecx
  004abd6c: 8d 5e fc                                        lea    ebx,[esi-0x4]
  004abd6f: 8b cb                                           mov    ecx,ebx
  004abd71: e8 ea 01 00 00                                  call   0x4abf60
  004abd76: 8b 06                                           mov    eax,DWORD PTR [esi]
  004abd78: 50                                              push   eax
  004abd79: e8 e2 62 f9 ff                                  call   0x442060
  004abd7e: 83 c4 04                                        add    esp,0x4
  004abd81: 8b cf                                           mov    ecx,edi
  004abd83: e8 a8 01 00 00                                  call   0x4abf30
  004abd88: 50                                              push   eax
  004abd89: 8b cb                                           mov    ecx,ebx
  004abd8b: e8 30 f5 ff ff                                  call   0x4ab2c0
  004abd90: 84 c0                                           test   al,al
  004abd92: 74 15                                           je     0x4abda9
  004abd94: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004abd96: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  004abd99: 8b 7f 04                                        mov    edi,DWORD PTR [edi+0x4]
  004abd9c: 51                                              push   ecx
  004abd9d: 50                                              push   eax
  004abd9e: 57                                              push   edi
  004abd9f: 8b cb                                           mov    ecx,ebx
  004abda1: e8 3a fc ff ff                                  call   0x4ab9e0
  004abda6: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004abda9: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004abdac: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004abdaf: 83 c0 2c                                        add    eax,0x2c
  004abdb2: 83 c6 2c                                        add    esi,0x2c
  004abdb5: 3b c1                                           cmp    eax,ecx
  004abdb7: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004abdba: 0f 85 2a fe ff ff                               jne    0x4abbea
  004abdc0: 5f                                              pop    edi
  004abdc1: 5b                                              pop    ebx
  004abdc2: 5e                                              pop    esi
  004abdc3: 8b e5                                           mov    esp,ebp
  004abdc5: 5d                                              pop    ebp
  004abdc6: c3                                              ret
  004ac130: 55                                              push   ebp
  004ac131: 8b ec                                           mov    ebp,esp
  004ac133: 83 ec 08                                        sub    esp,0x8
  004ac136: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004ac139: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  004ac13c: 0f 84 6a 01 00 00                               je     0x4ac2ac
  004ac142: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004ac145: 53                                              push   ebx
  004ac146: 56                                              push   esi
  004ac147: 57                                              push   edi
  004ac148: 8d 71 24                                        lea    esi,[ecx+0x24]
  004ac14b: 8d 78 20                                        lea    edi,[eax+0x20]
  004ac14e: 8b 57 cc                                        mov    edx,DWORD PTR [edi-0x34]
  004ac151: 83 e8 2c                                        sub    eax,0x2c
  004ac154: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004ac157: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004ac15a: 83 e8 2c                                        sub    eax,0x2c
  004ac15d: 83 ef 2c                                        sub    edi,0x2c
  004ac160: 83 ee 2c                                        sub    esi,0x2c
  004ac163: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  004ac166: 8d 47 fc                                        lea    eax,[edi-0x4]
  004ac169: 8d 4e f8                                        lea    ecx,[esi-0x8]
  004ac16c: 3b c8                                           cmp    ecx,eax
  004ac16e: 89 56 f4                                        mov    DWORD PTR [esi-0xc],edx
  004ac171: 0f 84 1a 01 00 00                               je     0x4ac291
  004ac177: 8b 07                                           mov    eax,DWORD PTR [edi]
  004ac179: 85 c0                                           test   eax,eax
  004ac17b: 74 18                                           je     0x4ac195
  004ac17d: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004ac180: 2b c8                                           sub    ecx,eax
  004ac182: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ac187: f7 e9                                           imul   ecx
  004ac189: c1 fa 03                                        sar    edx,0x3
  004ac18c: 8b c2                                           mov    eax,edx
  004ac18e: c1 e8 1f                                        shr    eax,0x1f
  004ac191: 03 d0                                           add    edx,eax
  004ac193: 75 0d                                           jne    0x4ac1a2
  004ac195: 8d 4e f8                                        lea    ecx,[esi-0x8]
  004ac198: e8 53 01 00 00                                  call   0x4ac2f0
  004ac19d: e9 ef 00 00 00                                  jmp    0x4ac291
  004ac1a2: 8d 4e f8                                        lea    ecx,[esi-0x8]
  004ac1a5: 8d 5f fc                                        lea    ebx,[edi-0x4]
  004ac1a8: e8 83 fd ff ff                                  call   0x4abf30
  004ac1ad: 8b d0                                           mov    edx,eax
  004ac1af: 8b cb                                           mov    ecx,ebx
  004ac1b1: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  004ac1b4: e8 77 fd ff ff                                  call   0x4abf30
  004ac1b9: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004ac1bc: 3b c1                                           cmp    eax,ecx
  004ac1be: 77 3a                                           ja     0x4ac1fa
  004ac1c0: 8b 56 fc                                        mov    edx,DWORD PTR [esi-0x4]
  004ac1c3: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004ac1c6: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  004ac1c8: 52                                              push   edx
  004ac1c9: 50                                              push   eax
  004ac1ca: 51                                              push   ecx
  004ac1cb: e8 c0 fd ff ff                                  call   0x4abf90
  004ac1d0: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004ac1d2: 83 c4 0c                                        add    esp,0xc
  004ac1d5: 51                                              push   ecx
  004ac1d6: 50                                              push   eax
  004ac1d7: 8d 4e f8                                        lea    ecx,[esi-0x8]
  004ac1da: e8 81 fd ff ff                                  call   0x4abf60
  004ac1df: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004ac1e2: e8 49 fd ff ff                                  call   0x4abf30
  004ac1e7: 8b 4e fc                                        mov    ecx,DWORD PTR [esi-0x4]
  004ac1ea: 8d 14 80                                        lea    edx,[eax+eax*4]
  004ac1ed: 8d 04 50                                        lea    eax,[eax+edx*2]
  004ac1f0: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004ac1f3: 89 16                                           mov    DWORD PTR [esi],edx
  004ac1f5: e9 97 00 00 00                                  jmp    0x4ac291
  004ac1fa: 8d 4e f8                                        lea    ecx,[esi-0x8]
  004ac1fd: e8 be 00 00 00                                  call   0x4ac2c0
  004ac202: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004ac205: 8b d8                                           mov    ebx,eax
  004ac207: e8 24 fd ff ff                                  call   0x4abf30
  004ac20c: 3b c3                                           cmp    eax,ebx
  004ac20e: 77 3c                                           ja     0x4ac24c
  004ac210: 8b 07                                           mov    eax,DWORD PTR [edi]
  004ac212: 8d 5e f8                                        lea    ebx,[esi-0x8]
  004ac215: 8b cb                                           mov    ecx,ebx
  004ac217: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004ac21a: e8 11 fd ff ff                                  call   0x4abf30
  004ac21f: 50                                              push   eax
  004ac220: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  004ac223: 51                                              push   ecx
  004ac224: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  004ac227: e8 04 01 00 00                                  call   0x4ac330
  004ac22c: 8b 56 fc                                        mov    edx,DWORD PTR [esi-0x4]
  004ac22f: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004ac232: 8b 07                                           mov    eax,DWORD PTR [edi]
  004ac234: 52                                              push   edx
  004ac235: 51                                              push   ecx
  004ac236: 50                                              push   eax
  004ac237: e8 54 fd ff ff                                  call   0x4abf90
  004ac23c: 8b 16                                           mov    edx,DWORD PTR [esi]
  004ac23e: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004ac241: 83 c4 0c                                        add    esp,0xc
  004ac244: 52                                              push   edx
  004ac245: 50                                              push   eax
  004ac246: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004ac249: 50                                              push   eax
  004ac24a: eb 3c                                           jmp    0x4ac288
  004ac24c: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004ac24e: 8b 56 fc                                        mov    edx,DWORD PTR [esi-0x4]
  004ac251: 51                                              push   ecx
  004ac252: 8d 5e f8                                        lea    ebx,[esi-0x8]
  004ac255: 52                                              push   edx
  004ac256: 8b cb                                           mov    ecx,ebx
  004ac258: e8 03 fd ff ff                                  call   0x4abf60
  004ac25d: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  004ac260: 50                                              push   eax
  004ac261: e8 fa 5d f9 ff                                  call   0x442060
  004ac266: 83 c4 04                                        add    esp,0x4
  004ac269: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004ac26c: e8 bf fc ff ff                                  call   0x4abf30
  004ac271: 50                                              push   eax
  004ac272: 8b cb                                           mov    ecx,ebx
  004ac274: e8 47 f0 ff ff                                  call   0x4ab2c0
  004ac279: 84 c0                                           test   al,al
  004ac27b: 74 14                                           je     0x4ac291
  004ac27d: 8b 56 fc                                        mov    edx,DWORD PTR [esi-0x4]
  004ac280: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004ac283: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  004ac285: 52                                              push   edx
  004ac286: 50                                              push   eax
  004ac287: 51                                              push   ecx
  004ac288: 8b cb                                           mov    ecx,ebx
  004ac28a: e8 51 f7 ff ff                                  call   0x4ab9e0
  004ac28f: 89 06                                           mov    DWORD PTR [esi],eax
  004ac291: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004ac294: 3b 45 0c                                        cmp    eax,DWORD PTR [ebp+0xc]
  004ac297: 0f 85 b1 fe ff ff                               jne    0x4ac14e
  004ac29d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ac2a0: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004ac2a3: 5f                                              pop    edi
  004ac2a4: 5e                                              pop    esi
  004ac2a5: 89 08                                           mov    DWORD PTR [eax],ecx
  004ac2a7: 5b                                              pop    ebx
  004ac2a8: 8b e5                                           mov    esp,ebp
  004ac2aa: 5d                                              pop    ebp
  004ac2ab: c3                                              ret
  004ac2ac: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ac2af: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004ac2b2: 89 10                                           mov    DWORD PTR [eax],edx
  004ac2b4: 8b e5                                           mov    esp,ebp
  004ac2b6: 5d                                              pop    ebp
  004ac2b7: c3                                              ret
  004b7280: 55                                              push   ebp
  004b7281: 8b ec                                           mov    ebp,esp
  004b7283: 51                                              push   ecx
  004b7284: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  004b7287: 6a 0c                                           push   0xc
  004b7289: a2 a8 64 55 00                                  mov    ds:0x5564a8,al
  004b728e: e8 5d ad f8 ff                                  call   0x441ff0
  004b7293: 89 00                                           mov    DWORD PTR [eax],eax
  004b7295: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004b7298: 83 c4 04                                        add    esp,0x4
  004b729b: a3 ac 64 55 00                                  mov    ds:0x5564ac,eax
  004b72a0: c7 05 b0 64 55 00 00 00 00 00                   mov    DWORD PTR ds:0x5564b0,0x0
  004b72aa: 8b e5                                           mov    esp,ebp
  004b72ac: 5d                                              pop    ebp
  004b72ad: c3                                              ret
  004b8990: 55                                              push   ebp
  004b8991: 8b ec                                           mov    ebp,esp
  004b8993: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004b8996: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b8999: 89 08                                           mov    DWORD PTR [eax],ecx
  004b899b: 5d                                              pop    ebp
  004b899c: c2 04 00                                        ret    0x4
  004b89a0: 55                                              push   ebp
  004b89a1: 8b ec                                           mov    ebp,esp
  004b89a3: 56                                              push   esi
  004b89a4: 57                                              push   edi
  004b89a5: 8b f9                                           mov    edi,ecx
  004b89a7: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  004b89aa: 85 f6                                           test   esi,esi
  004b89ac: 74 18                                           je     0x4b89c6
  004b89ae: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004b89b1: 2b ce                                           sub    ecx,esi
  004b89b3: b8 67 66 66 66                                  mov    eax,0x66666667
  004b89b8: f7 e9                                           imul   ecx
  004b89ba: c1 fa 03                                        sar    edx,0x3
  004b89bd: 8b c2                                           mov    eax,edx
  004b89bf: c1 e8 1f                                        shr    eax,0x1f
  004b89c2: 03 d0                                           add    edx,eax
  004b89c4: 75 04                                           jne    0x4b89ca
  004b89c6: 33 f6                                           xor    esi,esi
  004b89c8: eb 18                                           jmp    0x4b89e2
  004b89ca: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b89cd: 2b ce                                           sub    ecx,esi
  004b89cf: b8 67 66 66 66                                  mov    eax,0x66666667
  004b89d4: f7 e9                                           imul   ecx
  004b89d6: c1 fa 03                                        sar    edx,0x3
  004b89d9: 8b ca                                           mov    ecx,edx
  004b89db: c1 e9 1f                                        shr    ecx,0x1f
  004b89de: 03 d1                                           add    edx,ecx
  004b89e0: 8b f2                                           mov    esi,edx
  004b89e2: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004b89e5: 52                                              push   edx
  004b89e6: 6a 01                                           push   0x1
  004b89e8: 51                                              push   ecx
  004b89e9: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004b89ec: 8b cc                                           mov    ecx,esp
  004b89ee: 50                                              push   eax
  004b89ef: e8 8c 04 00 00                                  call   0x4b8e80
  004b89f4: 8b cf                                           mov    ecx,edi
  004b89f6: e8 15 00 00 00                                  call   0x4b8a10
  004b89fb: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004b89fe: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b8a01: 8d 0c b6                                        lea    ecx,[esi+esi*4]
  004b8a04: 8d 0c 8a                                        lea    ecx,[edx+ecx*4]
  004b8a07: 5f                                              pop    edi
  004b8a08: 89 08                                           mov    DWORD PTR [eax],ecx
  004b8a0a: 5e                                              pop    esi
  004b8a0b: 5d                                              pop    ebp
  004b8a0c: c2 0c 00                                        ret    0xc
  004b8e80: 55                                              push   ebp
  004b8e81: 8b ec                                           mov    ebp,esp
  004b8e83: 8b c1                                           mov    eax,ecx
  004b8e85: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004b8e88: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b8e8a: 89 10                                           mov    DWORD PTR [eax],edx
  004b8e8c: 5d                                              pop    ebp
  004b8e8d: c2 04 00                                        ret    0x4
  004b8e90: 55                                              push   ebp
  004b8e91: 8b ec                                           mov    ebp,esp
  004b8e93: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004b8e96: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004b8e98: 8d 04 80                                        lea    eax,[eax+eax*4]
  004b8e9b: 8d 14 81                                        lea    edx,[ecx+eax*4]
  004b8e9e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b8ea1: 89 10                                           mov    DWORD PTR [eax],edx
  004b8ea3: 5d                                              pop    ebp
  004b8ea4: c2 08 00                                        ret    0x8
  004b8eb0: 55                                              push   ebp
  004b8eb1: 8b ec                                           mov    ebp,esp
  004b8eb3: 6a ff                                           push   0xffffffff
  004b8eb5: 68 31 cf 4d 00                                  push   0x4dcf31
  004b8eba: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b8ec0: 50                                              push   eax
  004b8ec1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b8ec8: 83 ec 08                                        sub    esp,0x8
  004b8ecb: 53                                              push   ebx
  004b8ecc: 56                                              push   esi
  004b8ecd: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004b8ed0: 57                                              push   edi
  004b8ed1: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004b8ed4: 33 db                                           xor    ebx,ebx
  004b8ed6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004b8ed9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004b8edc: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b8edf: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  004b8ee2: 0f 86 94 00 00 00                               jbe    0x4b8f7c
  004b8ee8: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004b8eeb: 3b f3                                           cmp    esi,ebx
  004b8eed: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004b8ef1: 74 29                                           je     0x4b8f1c
  004b8ef3: 8b 07                                           mov    eax,DWORD PTR [edi]
  004b8ef5: 89 06                                           mov    DWORD PTR [esi],eax
  004b8ef7: 8a 57 04                                        mov    dl,BYTE PTR [edi+0x4]
  004b8efa: 8d 47 04                                        lea    eax,[edi+0x4]
  004b8efd: 8d 4e 04                                        lea    ecx,[esi+0x4]
  004b8f00: 88 11                                           mov    BYTE PTR [ecx],dl
  004b8f02: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004b8f05: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004b8f08: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004b8f0b: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b8f11: 8b 12                                           mov    edx,DWORD PTR [edx]
  004b8f13: 52                                              push   edx
  004b8f14: 53                                              push   ebx
  004b8f15: 50                                              push   eax
  004b8f16: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b8f1c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b8f1f: 49                                              dec    ecx
  004b8f20: 83 c6 14                                        add    esi,0x14
  004b8f23: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b8f26: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  004b8f29: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004b8f2c: eb b1                                           jmp    0x4b8edf
  004b8f7c: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b8f7f: 5f                                              pop    edi
  004b8f80: 8b c6                                           mov    eax,esi
  004b8f82: 5e                                              pop    esi
  004b8f83: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b8f8a: 5b                                              pop    ebx
  004b8f8b: 8b e5                                           mov    esp,ebp
  004b8f8d: 5d                                              pop    ebp
  004b8f8e: c2 0c 00                                        ret    0xc
  004b8fa0: 55                                              push   ebp
  004b8fa1: 8b ec                                           mov    ebp,esp
  004b8fa3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004b8fa6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004b8fa8: 8d 04 80                                        lea    eax,[eax+eax*4]
  004b8fab: c1 e0 02                                        shl    eax,0x2
  004b8fae: 2b c8                                           sub    ecx,eax
  004b8fb0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b8fb3: 89 08                                           mov    DWORD PTR [eax],ecx
  004b8fb5: 5d                                              pop    ebp
  004b8fb6: c2 08 00                                        ret    0x8
  004b8fc0: 55                                              push   ebp
  004b8fc1: 8b ec                                           mov    ebp,esp
  004b8fc3: 6a ff                                           push   0xffffffff
  004b8fc5: 68 51 cf 4d 00                                  push   0x4dcf51
  004b8fca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004b8fd0: 50                                              push   eax
  004b8fd1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004b8fd8: 83 ec 08                                        sub    esp,0x8
  004b8fdb: 53                                              push   ebx
  004b8fdc: 56                                              push   esi
  004b8fdd: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004b8fe0: 57                                              push   edi
  004b8fe1: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004b8fe4: 33 db                                           xor    ebx,ebx
  004b8fe6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004b8fe9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004b8fec: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004b8fef: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  004b8ff2: 0f 84 90 00 00 00                               je     0x4b9088
  004b8ff8: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  004b8ffb: 3b f3                                           cmp    esi,ebx
  004b8ffd: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004b9001: 74 29                                           je     0x4b902c
  004b9003: 8b 07                                           mov    eax,DWORD PTR [edi]
  004b9005: 89 06                                           mov    DWORD PTR [esi],eax
  004b9007: 8a 57 04                                        mov    dl,BYTE PTR [edi+0x4]
  004b900a: 8d 47 04                                        lea    eax,[edi+0x4]
  004b900d: 8d 4e 04                                        lea    ecx,[esi+0x4]
  004b9010: 88 11                                           mov    BYTE PTR [ecx],dl
  004b9012: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  004b9015: 89 59 08                                        mov    DWORD PTR [ecx+0x8],ebx
  004b9018: 89 59 0c                                        mov    DWORD PTR [ecx+0xc],ebx
  004b901b: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  004b9021: 8b 12                                           mov    edx,DWORD PTR [edx]
  004b9023: 52                                              push   edx
  004b9024: 53                                              push   ebx
  004b9025: 50                                              push   eax
  004b9026: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004b902c: 83 c6 14                                        add    esi,0x14
  004b902f: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004b9032: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  004b9035: 83 c7 14                                        add    edi,0x14
  004b9038: eb b5                                           jmp    0x4b8fef
  004b9088: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004b908b: 5f                                              pop    edi
  004b908c: 8b c6                                           mov    eax,esi
  004b908e: 5e                                              pop    esi
  004b908f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004b9096: 5b                                              pop    ebx
  004b9097: 8b e5                                           mov    esp,ebp
  004b9099: 5d                                              pop    ebp
  004b909a: c2 0c 00                                        ret    0xc
  004b90a0: 55                                              push   ebp
  004b90a1: 8b ec                                           mov    ebp,esp
  004b90a3: 51                                              push   ecx
  004b90a4: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b90a7: 3b 45 0c                                        cmp    eax,DWORD PTR [ebp+0xc]
  004b90aa: 0f 84 58 01 00 00                               je     0x4b9208
  004b90b0: 53                                              push   ebx
  004b90b1: 56                                              push   esi
  004b90b2: 57                                              push   edi
  004b90b3: 8d 58 08                                        lea    ebx,[eax+0x8]
  004b90b6: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  004b90b9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004b90bb: 89 10                                           mov    DWORD PTR [eax],edx
  004b90bd: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b90c2: 8b 00                                           mov    eax,DWORD PTR [eax]
  004b90c4: 8d 71 04                                        lea    esi,[ecx+0x4]
  004b90c7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004b90ca: 8b f9                                           mov    edi,ecx
  004b90cc: 3b c7                                           cmp    eax,edi
  004b90ce: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004b90d1: 73 05                                           jae    0x4b90d8
  004b90d3: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004b90d6: 8b f8                                           mov    edi,eax
  004b90d8: 8d 53 fc                                        lea    edx,[ebx-0x4]
  004b90db: 3b d6                                           cmp    edx,esi
  004b90dd: 75 6f                                           jne    0x4b914e
  004b90df: 8b f0                                           mov    esi,eax
  004b90e1: 39 7b 04                                        cmp    DWORD PTR [ebx+0x4],edi
  004b90e4: 73 09                                           jae    0x4b90ef
  004b90e6: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004b90e9: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  004b90ef: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004b90f2: 2b c7                                           sub    eax,edi
  004b90f4: 3b c6                                           cmp    eax,esi
  004b90f6: 73 02                                           jae    0x4b90fa
  004b90f8: 8b f0                                           mov    esi,eax
  004b90fa: 85 f6                                           test   esi,esi
  004b90fc: 0f 86 ec 00 00 00                               jbe    0x4b91ee
  004b9102: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004b9105: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  004b910b: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004b910e: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004b9110: 2b ce                                           sub    ecx,esi
  004b9112: 03 c7                                           add    eax,edi
  004b9114: 2b cf                                           sub    ecx,edi
  004b9116: 51                                              push   ecx
  004b9117: 8d 14 30                                        lea    edx,[eax+esi*1]
  004b911a: 52                                              push   edx
  004b911b: 50                                              push   eax
  004b911c: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004b9122: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004b9125: 83 c4 0c                                        add    esp,0xc
  004b9128: 2b fe                                           sub    edi,esi
  004b912a: 6a 00                                           push   0x0
  004b912c: 8d 73 fc                                        lea    esi,[ebx-0x4]
  004b912f: 57                                              push   edi
  004b9130: 8b ce                                           mov    ecx,esi
  004b9132: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004b9138: 84 c0                                           test   al,al
  004b913a: 0f 84 ae 00 00 00                               je     0x4b91ee
  004b9140: 57                                              push   edi
  004b9141: 8b ce                                           mov    ecx,esi
  004b9143: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004b9149: e9 a0 00 00 00                                  jmp    0x4b91ee
  004b914e: 85 ff                                           test   edi,edi
  004b9150: 76 61                                           jbe    0x4b91b3
  004b9152: 3b f9                                           cmp    edi,ecx
  004b9154: 75 5d                                           jne    0x4b91b3
  004b9156: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004b9159: 85 c0                                           test   eax,eax
  004b915b: 75 05                                           jne    0x4b9162
  004b915d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004b9162: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004b9166: 73 4b                                           jae    0x4b91b3
  004b9168: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004b916a: 85 c0                                           test   eax,eax
  004b916c: 74 1c                                           je     0x4b918a
  004b916e: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b9171: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b9173: 84 c0                                           test   al,al
  004b9175: 74 0a                                           je     0x4b9181
  004b9177: 3c ff                                           cmp    al,0xff
  004b9179: 74 06                                           je     0x4b9181
  004b917b: fe c8                                           dec    al
  004b917d: 88 01                                           mov    BYTE PTR [ecx],al
  004b917f: eb 09                                           jmp    0x4b918a
  004b9181: 51                                              push   ecx
  004b9182: e8 d9 8e f8 ff                                  call   0x442060
  004b9187: 83 c4 04                                        add    esp,0x4
  004b918a: 33 c9                                           xor    ecx,ecx
  004b918c: 89 0b                                           mov    DWORD PTR [ebx],ecx
  004b918e: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004b9191: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  004b9194: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004b9197: 3b c1                                           cmp    eax,ecx
  004b9199: 75 05                                           jne    0x4b91a0
  004b919b: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004b91a0: 89 03                                           mov    DWORD PTR [ebx],eax
  004b91a2: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004b91a5: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004b91a8: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004b91ab: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  004b91ae: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004b91b1: eb 3b                                           jmp    0x4b91ee
  004b91b3: 6a 01                                           push   0x1
  004b91b5: 57                                              push   edi
  004b91b6: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  004b91b9: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004b91bf: 84 c0                                           test   al,al
  004b91c1: 74 2b                                           je     0x4b91ee
  004b91c3: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004b91c6: 85 f6                                           test   esi,esi
  004b91c8: 75 06                                           jne    0x4b91d0
  004b91ca: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004b91d0: 8b cf                                           mov    ecx,edi
  004b91d2: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  004b91d4: 8b c1                                           mov    eax,ecx
  004b91d6: c1 e9 02                                        shr    ecx,0x2
  004b91d9: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004b91db: 8b c8                                           mov    ecx,eax
  004b91dd: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004b91e0: 83 e1 03                                        and    ecx,0x3
  004b91e3: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004b91e5: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  004b91e7: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004b91ea: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  004b91ee: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b91f1: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004b91f4: 83 c0 14                                        add    eax,0x14
  004b91f7: 83 c3 14                                        add    ebx,0x14
  004b91fa: 3b c1                                           cmp    eax,ecx
  004b91fc: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004b91ff: 0f 85 b1 fe ff ff                               jne    0x4b90b6
  004b9205: 5f                                              pop    edi
  004b9206: 5e                                              pop    esi
  004b9207: 5b                                              pop    ebx
  004b9208: 8b e5                                           mov    esp,ebp
  004b920a: 5d                                              pop    ebp
  004b920b: c3                                              ret
  004b9210: 55                                              push   ebp
  004b9211: 8b ec                                           mov    ebp,esp
  004b9213: 83 ec 08                                        sub    esp,0x8
  004b9216: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b9219: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  004b921c: 0f 84 28 01 00 00                               je     0x4b934a
  004b9222: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b9225: 53                                              push   ebx
  004b9226: 56                                              push   esi
  004b9227: 57                                              push   edi
  004b9228: 8d 79 08                                        lea    edi,[ecx+0x8]
  004b922b: 8d 70 08                                        lea    esi,[eax+0x8]
  004b922e: eb 03                                           jmp    0x4b9233
  004b9230: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004b9233: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b9236: 8b 50 ec                                        mov    edx,DWORD PTR [eax-0x14]
  004b9239: 83 e8 14                                        sub    eax,0x14
  004b923c: 83 e9 14                                        sub    ecx,0x14
  004b923f: 89 11                                           mov    DWORD PTR [ecx],edx
  004b9241: 8b 5e f0                                        mov    ebx,DWORD PTR [esi-0x10]
  004b9244: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004b9247: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  004b924c: 8b 00                                           mov    eax,DWORD PTR [eax]
  004b924e: 83 ee 14                                        sub    esi,0x14
  004b9251: 83 ef 14                                        sub    edi,0x14
  004b9254: 3b c3                                           cmp    eax,ebx
  004b9256: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004b9259: 89 4d 14                                        mov    DWORD PTR [ebp+0x14],ecx
  004b925c: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004b925f: 73 02                                           jae    0x4b9263
  004b9261: 8b d8                                           mov    ebx,eax
  004b9263: 8d 4e fc                                        lea    ecx,[esi-0x4]
  004b9266: 8d 57 fc                                        lea    edx,[edi-0x4]
  004b9269: 3b d1                                           cmp    edx,ecx
  004b926b: 75 1d                                           jne    0x4b928a
  004b926d: 50                                              push   eax
  004b926e: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004b9271: 53                                              push   ebx
  004b9272: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004b9278: 6a 00                                           push   0x0
  004b927a: 6a 00                                           push   0x0
  004b927c: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004b927f: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  004b9285: e9 a5 00 00 00                                  jmp    0x4b932f
  004b928a: 85 db                                           test   ebx,ebx
  004b928c: 76 60                                           jbe    0x4b92ee
  004b928e: 3b 5e 04                                        cmp    ebx,DWORD PTR [esi+0x4]
  004b9291: 75 5b                                           jne    0x4b92ee
  004b9293: 8b 06                                           mov    eax,DWORD PTR [esi]
  004b9295: 85 c0                                           test   eax,eax
  004b9297: 75 05                                           jne    0x4b929e
  004b9299: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004b929e: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004b92a2: 73 4a                                           jae    0x4b92ee
  004b92a4: 8b 07                                           mov    eax,DWORD PTR [edi]
  004b92a6: 85 c0                                           test   eax,eax
  004b92a8: 74 1c                                           je     0x4b92c6
  004b92aa: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004b92ad: 8a 01                                           mov    al,BYTE PTR [ecx]
  004b92af: 84 c0                                           test   al,al
  004b92b1: 74 0a                                           je     0x4b92bd
  004b92b3: 3c ff                                           cmp    al,0xff
  004b92b5: 74 06                                           je     0x4b92bd
  004b92b7: fe c8                                           dec    al
  004b92b9: 88 01                                           mov    BYTE PTR [ecx],al
  004b92bb: eb 09                                           jmp    0x4b92c6
  004b92bd: 51                                              push   ecx
  004b92be: e8 9d 8d f8 ff                                  call   0x442060
  004b92c3: 83 c4 04                                        add    esp,0x4
  004b92c6: 33 c9                                           xor    ecx,ecx
  004b92c8: 89 0f                                           mov    DWORD PTR [edi],ecx
  004b92ca: 89 4f 04                                        mov    DWORD PTR [edi+0x4],ecx
  004b92cd: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004b92d0: 8b 06                                           mov    eax,DWORD PTR [esi]
  004b92d2: 3b c1                                           cmp    eax,ecx
  004b92d4: 75 05                                           jne    0x4b92db
  004b92d6: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004b92db: 89 07                                           mov    DWORD PTR [edi],eax
  004b92dd: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004b92e0: 89 4f 04                                        mov    DWORD PTR [edi+0x4],ecx
  004b92e3: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004b92e6: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  004b92e9: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  004b92ec: eb 41                                           jmp    0x4b932f
  004b92ee: 6a 01                                           push   0x1
  004b92f0: 8d 4f fc                                        lea    ecx,[edi-0x4]
  004b92f3: 53                                              push   ebx
  004b92f4: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  004b92fa: 84 c0                                           test   al,al
  004b92fc: 74 31                                           je     0x4b932f
  004b92fe: 8b 36                                           mov    esi,DWORD PTR [esi]
  004b9300: 85 f6                                           test   esi,esi
  004b9302: 75 06                                           jne    0x4b930a
  004b9304: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  004b930a: 8b 3f                                           mov    edi,DWORD PTR [edi]
  004b930c: 8b cb                                           mov    ecx,ebx
  004b930e: 8b c1                                           mov    eax,ecx
  004b9310: c1 e9 02                                        shr    ecx,0x2
  004b9313: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004b9315: 8b c8                                           mov    ecx,eax
  004b9317: 83 e1 03                                        and    ecx,0x3
  004b931a: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  004b931c: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004b931f: 53                                              push   ebx
  004b9320: 83 c1 fc                                        add    ecx,0xfffffffc
  004b9323: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004b9329: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  004b932c: 8b 7d fc                                        mov    edi,DWORD PTR [ebp-0x4]
  004b932f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004b9332: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  004b9335: 0f 85 f5 fe ff ff                               jne    0x4b9230
  004b933b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b933e: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004b9341: 5f                                              pop    edi
  004b9342: 5e                                              pop    esi
  004b9343: 89 08                                           mov    DWORD PTR [eax],ecx
  004b9345: 5b                                              pop    ebx
  004b9346: 8b e5                                           mov    esp,ebp
  004b9348: 5d                                              pop    ebp
  004b9349: c3                                              ret
  004b934a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004b934d: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004b9350: 89 10                                           mov    DWORD PTR [eax],edx
  004b9352: 8b e5                                           mov    esp,ebp
  004b9354: 5d                                              pop    ebp
  004b9355: c3                                              ret
  004bc990: 55                                              push   ebp
  004bc991: 8b ec                                           mov    ebp,esp
  004bc993: 51                                              push   ecx
  004bc994: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  004bc997: a2 c8 64 55 00                                  mov    ds:0x5564c8,al
  004bc99c: 33 c0                                           xor    eax,eax
  004bc99e: a3 cc 64 55 00                                  mov    ds:0x5564cc,eax
  004bc9a3: a3 d0 64 55 00                                  mov    ds:0x5564d0,eax
  004bc9a8: a3 d4 64 55 00                                  mov    ds:0x5564d4,eax
  004bc9ad: 8b e5                                           mov    esp,ebp
  004bc9af: 5d                                              pop    ebp
  004bc9b0: c3                                              ret
  004bdd30: 55                                              push   ebp
  004bdd31: 8b ec                                           mov    ebp,esp
  004bdd33: 6a ff                                           push   0xffffffff
  004bdd35: 68 5b d4 4d 00                                  push   0x4dd45b
  004bdd3a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004bdd40: 50                                              push   eax
  004bdd41: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004bdd48: 51                                              push   ecx
  004bdd49: 56                                              push   esi
  004bdd4a: 57                                              push   edi
  004bdd4b: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  004bdd4e: c7 01 58 fd 4d 00                               mov    DWORD PTR [ecx],0x4dfd58
  004bdd54: 8b 41 60                                        mov    eax,DWORD PTR [ecx+0x60]
  004bdd57: 8d 71 3c                                        lea    esi,[ecx+0x3c]
  004bdd5a: 33 ff                                           xor    edi,edi
  004bdd5c: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004bdd5f: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bdd62: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004bdd65: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004bdd69: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  004bdd6c: 74 0a                                           je     0x4bdd78
  004bdd6e: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004bdd71: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bdd73: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004bdd76: eb 07                                           jmp    0x4bdd7f
  004bdd78: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  004bdd7f: 39 7e 20                                        cmp    DWORD PTR [esi+0x20],edi
  004bdd82: 74 09                                           je     0x4bdd8d
  004bdd84: 8b ce                                           mov    ecx,esi
  004bdd86: e8 b5 68 f6 ff                                  call   0x424640
  004bdd8b: eb dc                                           jmp    0x4bdd69
  004bdd8d: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  004bdd90: 74 04                                           je     0x4bdd96
  004bdd92: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  004bdd96: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004bdd99: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  004bdd9c: c7 06 6c e8 4d 00                               mov    DWORD PTR [esi],0x4de86c
  004bdda2: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bdda5: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004bdda8: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004bddac: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  004bddaf: 74 0a                                           je     0x4bddbb
  004bddb1: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004bddb4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004bddb6: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004bddb9: eb 07                                           jmp    0x4bddc2
  004bddbb: c7 46 40 01 00 00 00                            mov    DWORD PTR [esi+0x40],0x1
  004bddc2: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004bddc5: 3b c7                                           cmp    eax,edi
  004bddc7: 0f 84 f1 00 00 00                               je     0x4bdebe
  004bddcd: 8b 4e 28                                        mov    ecx,DWORD PTR [esi+0x28]
  004bddd0: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004bddd3: ff 4e 38                                        dec    DWORD PTR [esi+0x38]
  004bddd6: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004bddd9: 3b c1                                           cmp    eax,ecx
  004bdddb: 74 5c                                           je     0x4bde39
  004bdddd: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004bdde0: 74 53                                           je     0x4bde35
  004bdde2: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004bdde4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004bdde7: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004bddea: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004bdded: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004bddf0: 8b 10                                           mov    edx,DWORD PTR [eax]
  004bddf2: 89 11                                           mov    DWORD PTR [ecx],edx
  004bddf4: 8b 46 40                                        mov    eax,DWORD PTR [esi+0x40]
  004bddf7: 83 f8 01                                        cmp    eax,0x1
  004bddfa: 75 17                                           jne    0x4bde13
  004bddfc: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004bddff: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004bde02: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004bde05: 52                                              push   edx
  004bde06: 89 4e 20                                        mov    DWORD PTR [esi+0x20],ecx
  004bde09: e8 52 42 f8 ff                                  call   0x442060
  004bde0e: 83 c4 04                                        add    esp,0x4
  004bde11: eb 99                                           jmp    0x4bddac
  004bde13: 83 f8 02                                        cmp    eax,0x2
  004bde16: 0f 85 91 00 00 00                               jne    0x4bdead
  004bde1c: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004bde1f: 8b 02                                           mov    eax,DWORD PTR [edx]
  004bde21: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004bde24: 52                                              push   edx
  004bde25: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bde28: e8 33 42 f8 ff                                  call   0x442060
  004bde2d: 83 c4 04                                        add    esp,0x4
  004bde30: e9 77 ff ff ff                                  jmp    0x4bddac
  004bde35: 3b c1                                           cmp    eax,ecx
  004bde37: 75 35                                           jne    0x4bde6e
  004bde39: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004bde3c: 74 35                                           je     0x4bde73
  004bde3e: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004bde41: 89 39                                           mov    DWORD PTR [ecx],edi
  004bde43: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004bde46: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004bde49: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004bde4c: 83 7e 40 02                                     cmp    DWORD PTR [esi+0x40],0x2
  004bde50: 8b ca                                           mov    ecx,edx
  004bde52: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004bde55: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  004bde58: 75 53                                           jne    0x4bdead
  004bde5a: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004bde5d: 52                                              push   edx
  004bde5e: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004bde61: e8 fa 41 f8 ff                                  call   0x442060
  004bde66: 83 c4 04                                        add    esp,0x4
  004bde69: e9 3e ff ff ff                                  jmp    0x4bddac
  004bde6e: 3b 46 24                                        cmp    eax,DWORD PTR [esi+0x24]
  004bde71: 75 2e                                           jne    0x4bdea1
  004bde73: 3b c1                                           cmp    eax,ecx
  004bde75: 74 2a                                           je     0x4bdea1
  004bde77: 8b 00                                           mov    eax,DWORD PTR [eax]
  004bde79: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004bde7c: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004bde7f: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004bde81: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004bde84: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004bde87: 83 7e 40 01                                     cmp    DWORD PTR [esi+0x40],0x1
  004bde8b: 75 20                                           jne    0x4bdead
  004bde8d: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004bde90: 52                                              push   edx
  004bde91: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004bde94: e8 c7 41 f8 ff                                  call   0x442060
  004bde99: 83 c4 04                                        add    esp,0x4
  004bde9c: e9 0b ff ff ff                                  jmp    0x4bddac
  004bdea1: 89 7e 20                                        mov    DWORD PTR [esi+0x20],edi
  004bdea4: 89 7e 24                                        mov    DWORD PTR [esi+0x24],edi
  004bdea7: 89 7e 28                                        mov    DWORD PTR [esi+0x28],edi
  004bdeaa: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004bdead: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004bdeb0: 52                                              push   edx
  004bdeb1: e8 aa 41 f8 ff                                  call   0x442060
  004bdeb6: 83 c4 04                                        add    esp,0x4
  004bdeb9: e9 ee fe ff ff                                  jmp    0x4bddac
  004bdebe: 39 7e 40                                        cmp    DWORD PTR [esi+0x40],edi
  004bdec1: 74 04                                           je     0x4bdec7
  004bdec3: c6 46 34 07                                     mov    BYTE PTR [esi+0x34],0x7
  004bdec7: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004bdeca: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004bded0: 83 c6 08                                        add    esi,0x8
  004bded3: 56                                              push   esi
  004bded4: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  004bdeda: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004bdedd: 5f                                              pop    edi
  004bdede: 5e                                              pop    esi
  004bdedf: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004bdee6: 8b e5                                           mov    esp,ebp
  004bdee8: 5d                                              pop    ebp
  004bdee9: c3                                              ret
  004c09e0: b9 18 71 55 00                                  mov    ecx,0x557118
  004c09e5: e9 b6 22 00 00                                  jmp    0x4c2ca0
  004c0b70: b9 98 70 55 00                                  mov    ecx,0x557098
  004c0b75: e9 66 e7 ff ff                                  jmp    0x4bf2e0
  004c0d00: b9 18 70 55 00                                  mov    ecx,0x557018
  004c0d05: e9 06 c4 ff ff                                  jmp    0x4bd110
  004c0e90: b9 98 6f 55 00                                  mov    ecx,0x556f98
  004c0e95: e9 06 ca ff ff                                  jmp    0x4bd8a0
  004c1020: b9 18 6f 55 00                                  mov    ecx,0x556f18
  004c1025: e9 76 d8 ff ff                                  jmp    0x4be8a0
  004c11b0: b9 98 6e 55 00                                  mov    ecx,0x556e98
  004c11b5: e9 56 d4 ff ff                                  jmp    0x4be610
  004c1340: b9 18 6e 55 00                                  mov    ecx,0x556e18
  004c1345: e9 b6 e0 ff ff                                  jmp    0x4bf400
  004c14d0: b9 98 6d 55 00                                  mov    ecx,0x556d98
  004c14d5: e9 36 db ff ff                                  jmp    0x4bf010
  004c1660: b9 18 6d 55 00                                  mov    ecx,0x556d18
  004c1665: e9 96 bc ff ff                                  jmp    0x4bd300
  004c17f0: b9 98 6c 55 00                                  mov    ecx,0x556c98
  004c17f5: e9 36 bd ff ff                                  jmp    0x4bd530
  004c1980: b9 18 6c 55 00                                  mov    ecx,0x556c18
  004c1985: e9 e6 c2 ff ff                                  jmp    0x4bdc70
  004c19c0: b9 98 6b 55 00                                  mov    ecx,0x556b98
  004c19c5: e9 a6 16 00 00                                  jmp    0x4c3070
  004c1a00: b9 18 6b 55 00                                  mov    ecx,0x556b18
  004c1a05: e9 86 b5 ff ff                                  jmp    0x4bcf90
  004c1b90: b9 98 6a 55 00                                  mov    ecx,0x556a98
  004c1b95: e9 36 ce ff ff                                  jmp    0x4be9d0
  004c1d20: b9 18 6a 55 00                                  mov    ecx,0x556a18
  004c1d25: e9 56 d8 ff ff                                  jmp    0x4bf580
  004c1eb0: b9 98 69 55 00                                  mov    ecx,0x556998
  004c1eb5: e9 36 b8 ff ff                                  jmp    0x4bd6f0
  004c2040: b9 18 69 55 00                                  mov    ecx,0x556918
  004c2045: e9 e6 be ff ff                                  jmp    0x4bdf30
  004c21d0: b9 98 68 55 00                                  mov    ecx,0x556898
  004c21d5: e9 56 bd ff ff                                  jmp    0x4bdf30
  004c2210: b9 18 68 55 00                                  mov    ecx,0x556818
  004c2215: e9 16 bd ff ff                                  jmp    0x4bdf30
  004c2250: b9 98 67 55 00                                  mov    ecx,0x556798
  004c2255: e9 d6 bc ff ff                                  jmp    0x4bdf30
  004c2290: b9 18 67 55 00                                  mov    ecx,0x556718
  004c2295: e9 96 bc ff ff                                  jmp    0x4bdf30
  004c22d0: b9 98 66 55 00                                  mov    ecx,0x556698
  004c22d5: e9 56 bc ff ff                                  jmp    0x4bdf30
  004c2310: b9 18 66 55 00                                  mov    ecx,0x556618
  004c2315: e9 a6 bc ff ff                                  jmp    0x4bdfc0
  004c24a0: b9 98 65 55 00                                  mov    ecx,0x556598
  004c24a5: e9 26 05 00 00                                  jmp    0x4c29d0
  004c2630: b9 18 65 55 00                                  mov    ecx,0x556518
  004c2635: e9 16 df ff ff                                  jmp    0x4c0550
  004c29d0: 56                                              push   esi
  004c29d1: 8b f1                                           mov    esi,ecx
  004c29d3: 8d 46 40                                        lea    eax,[esi+0x40]
  004c29d6: 50                                              push   eax
  004c29d7: c7 46 38 8c e5 4d 00                            mov    DWORD PTR [esi+0x38],0x4de58c
  004c29de: c7 46 3c ff ff ff ff                            mov    DWORD PTR [esi+0x3c],0xffffffff
  004c29e5: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004c29eb: 33 c0                                           xor    eax,eax
  004c29ed: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  004c29f0: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004c29f3: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004c29f6: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004c29f9: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  004c29fc: 89 46 70                                        mov    DWORD PTR [esi+0x70],eax
  004c29ff: c7 46 38 6c e8 4d 00                            mov    DWORD PTR [esi+0x38],0x4de86c
  004c2a06: c6 46 6c 08                                     mov    BYTE PTR [esi+0x6c],0x8
  004c2a0a: 89 06                                           mov    DWORD PTR [esi],eax
  004c2a0c: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  004c2a0f: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  004c2a12: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004c2a15: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  004c2a18: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004c2a1b: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004c2a1e: c7 46 04 01 00 00 00                            mov    DWORD PTR [esi+0x4],0x1
  004c2a25: c7 46 08 18 00 00 00                            mov    DWORD PTR [esi+0x8],0x18
  004c2a2c: c7 46 0c 4b 00 00 00                            mov    DWORD PTR [esi+0xc],0x4b
  004c2a33: 8b c6                                           mov    eax,esi
  004c2a35: 5e                                              pop    esi
  004c2a36: c3                                              ret
  004c3070: 56                                              push   esi
  004c3071: 8b f1                                           mov    esi,ecx
  004c3073: 8d 46 44                                        lea    eax,[esi+0x44]
  004c3076: 50                                              push   eax
  004c3077: c7 46 3c 8c e5 4d 00                            mov    DWORD PTR [esi+0x3c],0x4de58c
  004c307e: c7 46 40 ff ff ff ff                            mov    DWORD PTR [esi+0x40],0xffffffff
  004c3085: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004c308b: 33 c0                                           xor    eax,eax
  004c308d: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  004c3090: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  004c3093: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  004c3096: 89 46 6c                                        mov    DWORD PTR [esi+0x6c],eax
  004c3099: 89 46 7c                                        mov    DWORD PTR [esi+0x7c],eax
  004c309c: 89 46 74                                        mov    DWORD PTR [esi+0x74],eax
  004c309f: c7 46 3c 6c e8 4d 00                            mov    DWORD PTR [esi+0x3c],0x4de86c
  004c30a6: c6 46 70 08                                     mov    BYTE PTR [esi+0x70],0x8
  004c30aa: c7 06 68 fd 4d 00                               mov    DWORD PTR [esi],0x4dfd68
  004c30b0: 8b c6                                           mov    eax,esi
  004c30b2: 5e                                              pop    esi
  004c30b3: c3                                              ret
  004c7370: c7 01 04 fe 4d 00                               mov    DWORD PTR [ecx],0x4dfe04
  004c7376: c3                                              ret
  004c7500: 55                                              push   ebp
  004c7501: 8b ec                                           mov    ebp,esp
  004c7503: 6a ff                                           push   0xffffffff
  004c7505: 68 db da 4d 00                                  push   0x4ddadb
  004c750a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004c7510: 50                                              push   eax
  004c7511: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004c7518: 51                                              push   ecx
  004c7519: 56                                              push   esi
  004c751a: 8b f1                                           mov    esi,ecx
  004c751c: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  004c751f: c7 06 10 fe 4d 00                               mov    DWORD PTR [esi],0x4dfe10
  004c7525: 8d 8e 88 00 00 00                               lea    ecx,[esi+0x88]
  004c752b: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004c7532: e8 29 22 f4 ff                                  call   0x409760
  004c7537: 8d 4e 18                                        lea    ecx,[esi+0x18]
  004c753a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004c7541: e8 1a 22 f4 ff                                  call   0x409760
  004c7546: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004c7549: 5e                                              pop    esi
  004c754a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004c7551: 8b e5                                           mov    esp,ebp
  004c7553: 5d                                              pop    ebp
  004c7554: c3                                              ret
  004c9c90: b9 f0 3a 56 00                                  mov    ecx,0x563af0
  004c9c95: e9 46 3c 00 00                                  jmp    0x4cd8e0
  004c9cd0: b9 a0 38 56 00                                  mov    ecx,0x5638a0
  004c9cd5: e9 06 3c 00 00                                  jmp    0x4cd8e0
  004c9d10: b9 50 36 56 00                                  mov    ecx,0x563650
  004c9d15: e9 c6 3b 00 00                                  jmp    0x4cd8e0
  004c9d50: b9 00 34 56 00                                  mov    ecx,0x563400
  004c9d55: e9 86 3b 00 00                                  jmp    0x4cd8e0
  004c9d90: b9 b0 31 56 00                                  mov    ecx,0x5631b0
  004c9d95: e9 46 3b 00 00                                  jmp    0x4cd8e0
  004c9dd0: b9 60 2f 56 00                                  mov    ecx,0x562f60
  004c9dd5: e9 06 3b 00 00                                  jmp    0x4cd8e0
  004c9e10: b9 10 2d 56 00                                  mov    ecx,0x562d10
  004c9e15: e9 c6 3a 00 00                                  jmp    0x4cd8e0
  004c9e50: b9 c0 2a 56 00                                  mov    ecx,0x562ac0
  004c9e55: e9 86 3a 00 00                                  jmp    0x4cd8e0
  004c9e90: b9 70 28 56 00                                  mov    ecx,0x562870
  004c9e95: e9 46 3a 00 00                                  jmp    0x4cd8e0
  004c9ed0: b9 20 26 56 00                                  mov    ecx,0x562620
  004c9ed5: e9 06 3a 00 00                                  jmp    0x4cd8e0
  004c9f10: b9 d0 23 56 00                                  mov    ecx,0x5623d0
  004c9f15: e9 c6 39 00 00                                  jmp    0x4cd8e0
  004c9f50: b9 80 21 56 00                                  mov    ecx,0x562180
  004c9f55: e9 86 39 00 00                                  jmp    0x4cd8e0
  004c9f90: b9 30 1f 56 00                                  mov    ecx,0x561f30
  004c9f95: e9 46 39 00 00                                  jmp    0x4cd8e0
  004c9fd0: b9 e0 1c 56 00                                  mov    ecx,0x561ce0
  004c9fd5: e9 06 39 00 00                                  jmp    0x4cd8e0
  004ca010: b9 90 1a 56 00                                  mov    ecx,0x561a90
  004ca015: e9 c6 38 00 00                                  jmp    0x4cd8e0
  004ca050: b9 40 18 56 00                                  mov    ecx,0x561840
  004ca055: e9 86 38 00 00                                  jmp    0x4cd8e0
  004ca090: b9 f0 15 56 00                                  mov    ecx,0x5615f0
  004ca095: e9 46 38 00 00                                  jmp    0x4cd8e0
  004ca0d0: b9 a0 13 56 00                                  mov    ecx,0x5613a0
  004ca0d5: e9 06 38 00 00                                  jmp    0x4cd8e0
  004ca110: b9 50 11 56 00                                  mov    ecx,0x561150
  004ca115: e9 c6 37 00 00                                  jmp    0x4cd8e0
  004ca150: b9 00 0f 56 00                                  mov    ecx,0x560f00
  004ca155: e9 86 37 00 00                                  jmp    0x4cd8e0
  004ca190: b9 b0 0c 56 00                                  mov    ecx,0x560cb0
  004ca195: e9 46 37 00 00                                  jmp    0x4cd8e0
  004ca1d0: b9 60 0a 56 00                                  mov    ecx,0x560a60
  004ca1d5: e9 06 37 00 00                                  jmp    0x4cd8e0
  004ca210: b9 10 08 56 00                                  mov    ecx,0x560810
  004ca215: e9 c6 36 00 00                                  jmp    0x4cd8e0
  004ca250: b9 c0 05 56 00                                  mov    ecx,0x5605c0
  004ca255: e9 86 36 00 00                                  jmp    0x4cd8e0
  004ca290: b9 70 03 56 00                                  mov    ecx,0x560370
  004ca295: e9 46 36 00 00                                  jmp    0x4cd8e0
  004ca2d0: b9 20 01 56 00                                  mov    ecx,0x560120
  004ca2d5: e9 06 36 00 00                                  jmp    0x4cd8e0
  004ca310: b9 d0 fe 55 00                                  mov    ecx,0x55fed0
  004ca315: e9 c6 35 00 00                                  jmp    0x4cd8e0
  004ca350: b9 80 fc 55 00                                  mov    ecx,0x55fc80
  004ca355: e9 86 35 00 00                                  jmp    0x4cd8e0
  004ca390: b9 30 fa 55 00                                  mov    ecx,0x55fa30
  004ca395: e9 46 35 00 00                                  jmp    0x4cd8e0
  004ca3d0: b9 e0 f7 55 00                                  mov    ecx,0x55f7e0
  004ca3d5: e9 06 35 00 00                                  jmp    0x4cd8e0
  004ca410: b9 90 f5 55 00                                  mov    ecx,0x55f590
  004ca415: e9 c6 34 00 00                                  jmp    0x4cd8e0
  004ca450: b9 40 f3 55 00                                  mov    ecx,0x55f340
  004ca455: e9 86 34 00 00                                  jmp    0x4cd8e0
  004ca490: b9 f0 f0 55 00                                  mov    ecx,0x55f0f0
  004ca495: e9 46 34 00 00                                  jmp    0x4cd8e0
  004ca4d0: b9 a0 ee 55 00                                  mov    ecx,0x55eea0
  004ca4d5: e9 06 34 00 00                                  jmp    0x4cd8e0
  004ca510: b9 50 ec 55 00                                  mov    ecx,0x55ec50
  004ca515: e9 c6 33 00 00                                  jmp    0x4cd8e0
  004ca550: b9 00 ea 55 00                                  mov    ecx,0x55ea00
  004ca555: e9 86 33 00 00                                  jmp    0x4cd8e0
  004ca590: b9 b0 e7 55 00                                  mov    ecx,0x55e7b0
  004ca595: e9 46 33 00 00                                  jmp    0x4cd8e0
  004ca5d0: b9 60 e5 55 00                                  mov    ecx,0x55e560
  004ca5d5: e9 06 33 00 00                                  jmp    0x4cd8e0
  004ca610: b9 10 e3 55 00                                  mov    ecx,0x55e310
  004ca615: e9 c6 32 00 00                                  jmp    0x4cd8e0
  004ca650: b9 c0 e0 55 00                                  mov    ecx,0x55e0c0
  004ca655: e9 86 32 00 00                                  jmp    0x4cd8e0
  004ca690: b9 70 de 55 00                                  mov    ecx,0x55de70
  004ca695: e9 46 32 00 00                                  jmp    0x4cd8e0
  004ca6d0: b9 20 dc 55 00                                  mov    ecx,0x55dc20
  004ca6d5: e9 06 32 00 00                                  jmp    0x4cd8e0
  004ca710: b9 d0 d9 55 00                                  mov    ecx,0x55d9d0
  004ca715: e9 c6 31 00 00                                  jmp    0x4cd8e0
  004ca750: b9 80 d7 55 00                                  mov    ecx,0x55d780
  004ca755: e9 86 31 00 00                                  jmp    0x4cd8e0
  004ca790: b9 30 d5 55 00                                  mov    ecx,0x55d530
  004ca795: e9 46 31 00 00                                  jmp    0x4cd8e0
  004ca7d0: b9 e0 d2 55 00                                  mov    ecx,0x55d2e0
  004ca7d5: e9 06 31 00 00                                  jmp    0x4cd8e0
  004ca810: b9 90 d0 55 00                                  mov    ecx,0x55d090
  004ca815: e9 c6 30 00 00                                  jmp    0x4cd8e0
  004ca850: b9 40 ce 55 00                                  mov    ecx,0x55ce40
  004ca855: e9 86 30 00 00                                  jmp    0x4cd8e0
  004ca890: b9 f0 cb 55 00                                  mov    ecx,0x55cbf0
  004ca895: e9 46 30 00 00                                  jmp    0x4cd8e0
  004ca8d0: b9 a0 c9 55 00                                  mov    ecx,0x55c9a0
  004ca8d5: e9 06 30 00 00                                  jmp    0x4cd8e0
  004ca910: b9 50 c7 55 00                                  mov    ecx,0x55c750
  004ca915: e9 c6 2f 00 00                                  jmp    0x4cd8e0
  004ca950: b9 00 c5 55 00                                  mov    ecx,0x55c500
  004ca955: e9 86 2f 00 00                                  jmp    0x4cd8e0
  004ca990: b9 b0 c2 55 00                                  mov    ecx,0x55c2b0
  004ca995: e9 46 2f 00 00                                  jmp    0x4cd8e0
  004ca9d0: b9 60 c0 55 00                                  mov    ecx,0x55c060
  004ca9d5: e9 06 2f 00 00                                  jmp    0x4cd8e0
  004caa10: b9 10 be 55 00                                  mov    ecx,0x55be10
  004caa15: e9 c6 2e 00 00                                  jmp    0x4cd8e0
  004caa50: b9 c0 bb 55 00                                  mov    ecx,0x55bbc0
  004caa55: e9 86 2e 00 00                                  jmp    0x4cd8e0
  004caa90: b9 70 b9 55 00                                  mov    ecx,0x55b970
  004caa95: e9 46 2e 00 00                                  jmp    0x4cd8e0
  004caad0: b9 20 b7 55 00                                  mov    ecx,0x55b720
  004caad5: e9 06 2e 00 00                                  jmp    0x4cd8e0
  004cab10: b9 d0 b4 55 00                                  mov    ecx,0x55b4d0
  004cab15: e9 c6 2d 00 00                                  jmp    0x4cd8e0
  004cab50: b9 80 b2 55 00                                  mov    ecx,0x55b280
  004cab55: e9 86 2d 00 00                                  jmp    0x4cd8e0
  004cab90: b9 30 b0 55 00                                  mov    ecx,0x55b030
  004cab95: e9 46 2d 00 00                                  jmp    0x4cd8e0
  004cabd0: b9 e0 ad 55 00                                  mov    ecx,0x55ade0
  004cabd5: e9 06 2d 00 00                                  jmp    0x4cd8e0
  004cac10: b9 90 ab 55 00                                  mov    ecx,0x55ab90
  004cac15: e9 c6 2c 00 00                                  jmp    0x4cd8e0
  004cac50: b9 40 a9 55 00                                  mov    ecx,0x55a940
  004cac55: e9 86 2c 00 00                                  jmp    0x4cd8e0
  004cac90: b9 f0 a6 55 00                                  mov    ecx,0x55a6f0
  004cac95: e9 46 2c 00 00                                  jmp    0x4cd8e0
  004cacd0: b9 a0 a4 55 00                                  mov    ecx,0x55a4a0
  004cacd5: e9 06 2c 00 00                                  jmp    0x4cd8e0
  004cad10: b9 50 a2 55 00                                  mov    ecx,0x55a250
  004cad15: e9 c6 2b 00 00                                  jmp    0x4cd8e0
  004cad50: b9 00 a0 55 00                                  mov    ecx,0x55a000
  004cad55: e9 86 2b 00 00                                  jmp    0x4cd8e0
  004cad90: b9 b0 9d 55 00                                  mov    ecx,0x559db0
  004cad95: e9 46 2b 00 00                                  jmp    0x4cd8e0
  004cadd0: b9 60 9b 55 00                                  mov    ecx,0x559b60
  004cadd5: e9 06 2b 00 00                                  jmp    0x4cd8e0
  004cae10: b9 10 99 55 00                                  mov    ecx,0x559910
  004cae15: e9 c6 2a 00 00                                  jmp    0x4cd8e0
  004cae50: b9 c0 96 55 00                                  mov    ecx,0x5596c0
  004cae55: e9 26 e9 ff ff                                  jmp    0x4c9780
  004cae90: b9 70 94 55 00                                  mov    ecx,0x559470
  004cae95: e9 e6 e8 ff ff                                  jmp    0x4c9780
  004caed0: b9 20 92 55 00                                  mov    ecx,0x559220
  004caed5: e9 a6 e8 ff ff                                  jmp    0x4c9780
  004caf10: b9 d0 8f 55 00                                  mov    ecx,0x558fd0
  004caf15: e9 66 e8 ff ff                                  jmp    0x4c9780
  004caf50: b9 80 8d 55 00                                  mov    ecx,0x558d80
  004caf55: e9 26 e8 ff ff                                  jmp    0x4c9780
  004caf90: b9 30 8b 55 00                                  mov    ecx,0x558b30
  004caf95: e9 e6 e7 ff ff                                  jmp    0x4c9780
  004cafd0: b9 e0 88 55 00                                  mov    ecx,0x5588e0
  004cafd5: e9 a6 e7 ff ff                                  jmp    0x4c9780
  004cb010: b9 90 86 55 00                                  mov    ecx,0x558690
  004cb015: e9 66 e7 ff ff                                  jmp    0x4c9780
  004cb050: b9 40 84 55 00                                  mov    ecx,0x558440
  004cb055: e9 d6 23 00 00                                  jmp    0x4cd430
  004cb090: b9 f0 81 55 00                                  mov    ecx,0x5581f0
  004cb095: e9 96 23 00 00                                  jmp    0x4cd430
  004cb0d0: b9 a0 7f 55 00                                  mov    ecx,0x557fa0
  004cb0d5: e9 56 23 00 00                                  jmp    0x4cd430
  004cb110: b9 50 7d 55 00                                  mov    ecx,0x557d50
  004cb115: e9 16 23 00 00                                  jmp    0x4cd430
  004cb150: b9 00 7b 55 00                                  mov    ecx,0x557b00
  004cb155: e9 46 de ff ff                                  jmp    0x4c8fa0
  004cb190: b9 b0 78 55 00                                  mov    ecx,0x5578b0
  004cb195: e9 06 de ff ff                                  jmp    0x4c8fa0
  004cb1d0: b9 60 76 55 00                                  mov    ecx,0x557660
  004cb1d5: e9 46 cd ff ff                                  jmp    0x4c7f20
  004cb210: b9 10 74 55 00                                  mov    ecx,0x557410
  004cb215: e9 66 e5 ff ff                                  jmp    0x4c9780
  004cb250: b9 c0 71 55 00                                  mov    ecx,0x5571c0
  004cb255: e9 a6 e7 ff ff                                  jmp    0x4c9a00
  004ce6a0: b9 68 3f 56 00                                  mov    ecx,0x563f68
  004ce6a5: e9 a6 0f 00 00                                  jmp    0x4cf650
  004ce750: b9 a8 3f 56 00                                  mov    ecx,0x563fa8
  004ce755: e9 06 00 00 00                                  jmp    0x4ce760
  004ce760: 55                                              push   ebp
  004ce761: 8b ec                                           mov    ebp,esp
  004ce763: 51                                              push   ecx
  004ce764: 56                                              push   esi
  004ce765: 8b f1                                           mov    esi,ecx
  004ce767: 8d 46 08                                        lea    eax,[esi+0x8]
  004ce76a: 50                                              push   eax
  004ce76b: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  004ce771: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004ce777: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  004ce77a: 33 c0                                           xor    eax,eax
  004ce77c: 50                                              push   eax
  004ce77d: 50                                              push   eax
  004ce77e: 6a 01                                           push   0x1
  004ce780: 88 4e 24                                        mov    BYTE PTR [esi+0x24],cl
  004ce783: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004ce786: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004ce789: 89 46 30                                        mov    DWORD PTR [esi+0x30],eax
  004ce78c: 89 46 34                                        mov    DWORD PTR [esi+0x34],eax
  004ce78f: 50                                              push   eax
  004ce790: c7 06 54 04 4e 00                               mov    DWORD PTR [esi],0x4e0454
  004ce796: ff 15 28 e1 4d 00                               call   DWORD PTR ds:0x4de128
  004ce79c: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004ce79f: 8b c6                                           mov    eax,esi
  004ce7a1: 5e                                              pop    esi
  004ce7a2: 8b e5                                           mov    esp,ebp
  004ce7a4: 5d                                              pop    ebp
  004ce7a5: c3                                              ret
  004ce8a0: 68 88 3f 56 00                                  push   0x563f88
  004ce8a5: c7 05 80 3f 56 00 8c e5 4d 00                   mov    DWORD PTR ds:0x563f80,0x4de58c
  004ce8af: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  004ce8b5: c3                                              ret
  004cfe10: b9 f0 3f 56 00                                  mov    ecx,0x563ff0
  004cfe15: e9 46 00 00 00                                  jmp    0x4cfe60
  004d21ce: ff 25 a8 e2 4d 00                               jmp    DWORD PTR ds:0x4de2a8
  004d21da: ff 25 98 e2 4d 00                               jmp    DWORD PTR ds:0x4de298
  004d2c1e: 6a 0a                                           push   0xa
  004d2c20: 68 04 00 02 80                                  push   0x80020004
  004d2c25: b9 a8 49 56 00                                  mov    ecx,0x5649a8
  004d2c2a: e8 0c 01 00 00                                  call   0x4d2d3b
  004d2c2f: c3                                              ret
