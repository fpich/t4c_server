; PASSE 91, Deuxieme generation de CALL directs distincts
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 226 distinct instructions; 5 graph entry points

  004285f0: 55                                              push   ebp
  004285f1: 8b ec                                           mov    ebp,esp
  004285f3: 53                                              push   ebx
  004285f4: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004285f7: 56                                              push   esi
  004285f8: 8b f1                                           mov    esi,ecx
  004285fa: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004285fd: 85 c0                                           test   eax,eax
  004285ff: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00428602: 57                                              push   edi
  00428603: 74 5f                                           je     0x428664
  00428605: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428608: 3b 08                                           cmp    ecx,DWORD PTR [eax]
  0042860a: 75 58                                           jne    0x428664
  0042860c: 3b d8                                           cmp    ebx,eax
  0042860e: 75 54                                           jne    0x428664
  00428610: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  00428613: 8a 43 15                                        mov    al,BYTE PTR [ebx+0x15]
  00428616: 84 c0                                           test   al,al
  00428618: 8b fb                                           mov    edi,ebx
  0042861a: 75 1f                                           jne    0x42863b
  0042861c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0042861f: 50                                              push   eax
  00428620: 8b ce                                           mov    ecx,esi
  00428622: e8 79 0b 00 00                                  call   0x4291a0
  00428627: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00428629: 53                                              push   ebx
  0042862a: e8 31 9a 01 00                                  call   0x442060
  0042862f: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  00428632: 83 c4 04                                        add    esp,0x4
  00428635: 84 c0                                           test   al,al
  00428637: 8b df                                           mov    ebx,edi
  00428639: 74 e1                                           je     0x42861c
  0042863b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042863e: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00428641: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428644: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  0042864b: 89 00                                           mov    DWORD PTR [eax],eax
  0042864d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00428650: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00428653: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00428656: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428658: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042865b: 5f                                              pop    edi
  0042865c: 5e                                              pop    esi
  0042865d: 89 10                                           mov    DWORD PTR [eax],edx
  0042865f: 5b                                              pop    ebx
  00428660: 5d                                              pop    ebp
  00428661: c2 0c 00                                        ret    0xc
  00428664: 3b cb                                           cmp    ecx,ebx
  00428666: 74 1d                                           je     0x428685
  00428668: 8b f9                                           mov    edi,ecx
  0042866a: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0042866d: e8 1e 0c 00 00                                  call   0x429290
  00428672: 57                                              push   edi
  00428673: 8d 45 10                                        lea    eax,[ebp+0x10]
  00428676: 50                                              push   eax
  00428677: 8b ce                                           mov    ecx,esi
  00428679: e8 82 ef ff ff                                  call   0x427600
  0042867e: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00428681: 3b cb                                           cmp    ecx,ebx
  00428683: 75 e3                                           jne    0x428668
  00428685: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00428688: 5f                                              pop    edi
  00428689: 5e                                              pop    esi
  0042868a: 89 08                                           mov    DWORD PTR [eax],ecx
  0042868c: 5b                                              pop    ebx
  0042868d: 5d                                              pop    ebp
  0042868e: c2 0c 00                                        ret    0xc
  00428d80: 55                                              push   ebp
  00428d81: 8b ec                                           mov    ebp,esp
  00428d83: 53                                              push   ebx
  00428d84: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00428d87: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00428d8a: 56                                              push   esi
  00428d8b: 8b f1                                           mov    esi,ecx
  00428d8d: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00428d90: 57                                              push   edi
  00428d91: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00428d94: 57                                              push   edi
  00428d95: 51                                              push   ecx
  00428d96: 8b ce                                           mov    ecx,esi
  00428d98: e8 03 03 00 00                                  call   0x4290a0
  00428d9d: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00428da0: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00428da3: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00428da6: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00428da9: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00428dac: 8a 48 15                                        mov    cl,BYTE PTR [eax+0x15]
  00428daf: 84 c9                                           test   cl,cl
  00428db1: 75 3c                                           jne    0x428def
  00428db3: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00428db5: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  00428db8: 84 db                                           test   bl,bl
  00428dba: 75 0b                                           jne    0x428dc7
  00428dbc: 8b c1                                           mov    eax,ecx
  00428dbe: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00428dc0: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  00428dc3: 84 db                                           test   bl,bl
  00428dc5: 74 f5                                           je     0x428dbc
  00428dc7: 89 02                                           mov    DWORD PTR [edx],eax
  00428dc9: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00428dcc: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00428dcf: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00428dd2: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00428dd5: 84 d2                                           test   dl,dl
  00428dd7: 75 0c                                           jne    0x428de5
  00428dd9: 8b c8                                           mov    ecx,eax
  00428ddb: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  00428dde: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00428de1: 84 d2                                           test   dl,dl
  00428de3: 74 f4                                           je     0x428dd9
  00428de5: 5f                                              pop    edi
  00428de6: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00428de9: 5e                                              pop    esi
  00428dea: 5b                                              pop    ebx
  00428deb: 5d                                              pop    ebp
  00428dec: c2 04 00                                        ret    0x4
  00428def: 89 12                                           mov    DWORD PTR [edx],edx
  00428df1: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00428df4: 5f                                              pop    edi
  00428df5: 89 76 08                                        mov    DWORD PTR [esi+0x8],esi
  00428df8: 5e                                              pop    esi
  00428df9: 5b                                              pop    ebx
  00428dfa: 5d                                              pop    ebp
  00428dfb: c2 04 00                                        ret    0x4
  004290a0: 55                                              push   ebp
  004290a1: 8b ec                                           mov    ebp,esp
  004290a3: 6a ff                                           push   0xffffffff
  004290a5: 68 80 4a 4d 00                                  push   0x4d4a80
  004290aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004290b0: 50                                              push   eax
  004290b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004290b8: 83 ec 0c                                        sub    esp,0xc
  004290bb: 53                                              push   ebx
  004290bc: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004290bf: 56                                              push   esi
  004290c0: 57                                              push   edi
  004290c1: 8b f9                                           mov    edi,ecx
  004290c3: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004290c6: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004290c9: 8a 43 15                                        mov    al,BYTE PTR [ebx+0x15]
  004290cc: 84 c0                                           test   al,al
  004290ce: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004290d1: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  004290d4: 75 6f                                           jne    0x429145
  004290d6: 8a 4b 14                                        mov    cl,BYTE PTR [ebx+0x14]
  004290d9: 6a 18                                           push   0x18
  004290db: 88 4d 0b                                        mov    BYTE PTR [ebp+0xb],cl
  004290de: e8 0d 8f 01 00                                  call   0x441ff0
  004290e3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004290e6: 8b f0                                           mov    esi,eax
  004290e8: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  004290eb: 88 46 14                                        mov    BYTE PTR [esi+0x14],al
  004290ee: 8d 46 0c                                        lea    eax,[esi+0xc]
  004290f1: 83 c4 04                                        add    esp,0x4
  004290f4: 85 c0                                           test   eax,eax
  004290f6: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004290f9: c6 46 15 00                                     mov    BYTE PTR [esi+0x15],0x0
  004290fd: 74 0b                                           je     0x42910a
  004290ff: 8b 4b 0c                                        mov    ecx,DWORD PTR [ebx+0xc]
  00429102: 89 08                                           mov    DWORD PTR [eax],ecx
  00429104: 8b 53 10                                        mov    edx,DWORD PTR [ebx+0x10]
  00429107: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0042910a: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0042910d: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00429110: 89 06                                           mov    DWORD PTR [esi],eax
  00429112: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00429115: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00429118: 8a 42 15                                        mov    al,BYTE PTR [edx+0x15]
  0042911b: 84 c0                                           test   al,al
  0042911d: 74 03                                           je     0x429122
  0042911f: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00429122: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00429124: 56                                              push   esi
  00429125: 50                                              push   eax
  00429126: 8b cf                                           mov    ecx,edi
  00429128: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0042912f: e8 6c ff ff ff                                  call   0x4290a0
  00429134: 89 06                                           mov    DWORD PTR [esi],eax
  00429136: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00429139: 56                                              push   esi
  0042913a: 51                                              push   ecx
  0042913b: 8b cf                                           mov    ecx,edi
  0042913d: e8 5e ff ff ff                                  call   0x4290a0
  00429142: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00429145: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00429148: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0042914b: 5f                                              pop    edi
  0042914c: 5e                                              pop    esi
  0042914d: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00429154: 5b                                              pop    ebx
  00429155: 8b e5                                           mov    esp,ebp
  00429157: 5d                                              pop    ebp
  00429158: c2 08 00                                        ret    0x8
  0042a0f0: 56                                              push   esi
  0042a0f1: 6a 18                                           push   0x18
  0042a0f3: 8b f1                                           mov    esi,ecx
  0042a0f5: e8 f6 7e 01 00                                  call   0x441ff0
  0042a0fa: 33 c9                                           xor    ecx,ecx
  0042a0fc: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042a0ff: 88 48 15                                        mov    BYTE PTR [eax+0x15],cl
  0042a102: b2 01                                           mov    dl,0x1
  0042a104: 88 50 14                                        mov    BYTE PTR [eax+0x14],dl
  0042a107: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042a10a: 88 50 15                                        mov    BYTE PTR [eax+0x15],dl
  0042a10d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042a110: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042a113: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042a116: 89 00                                           mov    DWORD PTR [eax],eax
  0042a118: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042a11b: 83 c4 04                                        add    esp,0x4
  0042a11e: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  0042a121: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0042a124: 5e                                              pop    esi
  0042a125: c3                                              ret
  0042a380: 55                                              push   ebp
  0042a381: 8b ec                                           mov    ebp,esp
  0042a383: 8a 55 0c                                        mov    dl,BYTE PTR [ebp+0xc]
  0042a386: 8b c1                                           mov    eax,ecx
  0042a388: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042a38b: 8a 09                                           mov    cl,BYTE PTR [ecx]
  0042a38d: 88 08                                           mov    BYTE PTR [eax],cl
  0042a38f: 88 50 01                                        mov    BYTE PTR [eax+0x1],dl
  0042a392: 5d                                              pop    ebp
  0042a393: c2 08 00                                        ret    0x8
