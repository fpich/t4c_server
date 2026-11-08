; PASSE 94, Fermeture supplementaire des cibles CALL directes
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 243 distinct instructions; 6 graph entry points

  00415be0: 55                                              push   ebp
  00415be1: 8b ec                                           mov    ebp,esp
  00415be3: 56                                              push   esi
  00415be4: 8b f1                                           mov    esi,ecx
  00415be6: e8 c7 be 0b 00                                  call   0x4d1ab2
  00415beb: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00415bee: 8b 00                                           mov    eax,DWORD PTR [eax]
  00415bf0: 51                                              push   ecx
  00415bf1: 8b ce                                           mov    ecx,esi
  00415bf3: 89 06                                           mov    DWORD PTR [esi],eax
  00415bf5: e8 5e be 0b 00                                  call   0x4d1a58
  00415bfa: 8b c6                                           mov    eax,esi
  00415bfc: 5e                                              pop    esi
  00415bfd: 5d                                              pop    ebp
  00415bfe: c2 04 00                                        ret    0x4
  004252a0: 55                                              push   ebp
  004252a1: 8b ec                                           mov    ebp,esp
  004252a3: 56                                              push   esi
  004252a4: 8b f1                                           mov    esi,ecx
  004252a6: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  004252a9: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  004252ac: 57                                              push   edi
  004252ad: 33 ff                                           xor    edi,edi
  004252af: 42                                              inc    edx
  004252b0: 3b c7                                           cmp    eax,edi
  004252b2: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004252b5: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004252b8: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004252bc: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004252bf: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  004252c2: 6a 0c                                           push   0xc
  004252c4: 75 35                                           jne    0x4252fb
  004252c6: e8 25 cd 01 00                                  call   0x441ff0
  004252cb: 83 c4 04                                        add    esp,0x4
  004252ce: 3b c7                                           cmp    eax,edi
  004252d0: 74 07                                           je     0x4252d9
  004252d2: 89 38                                           mov    DWORD PTR [eax],edi
  004252d4: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004252d7: eb 02                                           jmp    0x4252db
  004252d9: 33 c0                                           xor    eax,eax
  004252db: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004252de: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004252e1: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004252e4: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004252e7: 89 38                                           mov    DWORD PTR [eax],edi
  004252e9: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004252ec: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004252ef: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004252f2: 5f                                              pop    edi
  004252f3: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004252f6: 5e                                              pop    esi
  004252f7: 5d                                              pop    ebp
  004252f8: c2 04 00                                        ret    0x4
  004252fb: e8 f0 cc 01 00                                  call   0x441ff0
  00425300: 83 c4 04                                        add    esp,0x4
  00425303: 3b c7                                           cmp    eax,edi
  00425305: 74 07                                           je     0x42530e
  00425307: 89 38                                           mov    DWORD PTR [eax],edi
  00425309: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0042530c: eb 02                                           jmp    0x425310
  0042530e: 33 c0                                           xor    eax,eax
  00425310: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00425313: 89 01                                           mov    DWORD PTR [ecx],eax
  00425315: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00425318: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0042531b: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0042531e: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00425321: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00425324: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00425327: 89 38                                           mov    DWORD PTR [eax],edi
  00425329: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0042532c: 5f                                              pop    edi
  0042532d: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00425330: 5e                                              pop    esi
  00425331: 5d                                              pop    ebp
  00425332: c2 04 00                                        ret    0x4
  00425340: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00425343: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  00425346: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  00425349: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  0042534c: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0042534f: 3b c2                                           cmp    eax,edx
  00425351: 74 57                                           je     0x4253aa
  00425353: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00425356: 74 4e                                           je     0x4253a6
  00425358: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042535a: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042535d: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00425360: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00425363: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00425366: 8b 00                                           mov    eax,DWORD PTR [eax]
  00425368: 89 02                                           mov    DWORD PTR [edx],eax
  0042536a: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0042536d: 83 f8 01                                        cmp    eax,0x1
  00425370: 75 16                                           jne    0x425388
  00425372: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00425375: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00425378: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  0042537b: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0042537e: 51                                              push   ecx
  0042537f: e8 dc cc 01 00                                  call   0x442060
  00425384: 83 c4 04                                        add    esp,0x4
  00425387: c3                                              ret
  00425388: 83 f8 02                                        cmp    eax,0x2
  0042538b: 0f 85 8c 00 00 00                               jne    0x42541d
  00425391: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00425394: 8b 02                                           mov    eax,DWORD PTR [edx]
  00425396: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00425399: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  0042539c: 51                                              push   ecx
  0042539d: e8 be cc 01 00                                  call   0x442060
  004253a2: 83 c4 04                                        add    esp,0x4
  004253a5: c3                                              ret
  004253a6: 3b c2                                           cmp    eax,edx
  004253a8: 75 34                                           jne    0x4253de
  004253aa: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  004253ad: 74 34                                           je     0x4253e3
  004253af: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004253b2: 33 d2                                           xor    edx,edx
  004253b4: 89 10                                           mov    DWORD PTR [eax],edx
  004253b6: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  004253b9: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004253bc: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  004253bf: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  004253c2: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004253c5: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  004253c8: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  004253cc: 75 4f                                           jne    0x42541d
  004253ce: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  004253d1: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  004253d4: 51                                              push   ecx
  004253d5: e8 86 cc 01 00                                  call   0x442060
  004253da: 83 c4 04                                        add    esp,0x4
  004253dd: c3                                              ret
  004253de: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  004253e1: 75 2c                                           jne    0x42540f
  004253e3: 3b c2                                           cmp    eax,edx
  004253e5: 74 28                                           je     0x42540f
  004253e7: 8b 00                                           mov    eax,DWORD PTR [eax]
  004253e9: 33 d2                                           xor    edx,edx
  004253eb: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004253ee: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  004253f1: 8b 00                                           mov    eax,DWORD PTR [eax]
  004253f3: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  004253f6: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  004253f9: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  004253fd: 75 1e                                           jne    0x42541d
  004253ff: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00425402: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00425405: 51                                              push   ecx
  00425406: e8 55 cc 01 00                                  call   0x442060
  0042540b: 83 c4 04                                        add    esp,0x4
  0042540e: c3                                              ret
  0042540f: 33 d2                                           xor    edx,edx
  00425411: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  00425414: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  00425417: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  0042541a: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  0042541d: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00425420: 51                                              push   ecx
  00425421: e8 3a cc 01 00                                  call   0x442060
  00425426: 83 c4 04                                        add    esp,0x4
  00425429: c3                                              ret
  004380e0: 55                                              push   ebp
  004380e1: 8b ec                                           mov    ebp,esp
  004380e3: 56                                              push   esi
  004380e4: 8b f1                                           mov    esi,ecx
  004380e6: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  004380e9: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  004380ec: 57                                              push   edi
  004380ed: 33 ff                                           xor    edi,edi
  004380ef: 42                                              inc    edx
  004380f0: 3b c7                                           cmp    eax,edi
  004380f2: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004380f5: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  004380f8: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  004380fc: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  004380ff: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00438102: 6a 0c                                           push   0xc
  00438104: 75 35                                           jne    0x43813b
  00438106: e8 e5 9e 00 00                                  call   0x441ff0
  0043810b: 83 c4 04                                        add    esp,0x4
  0043810e: 3b c7                                           cmp    eax,edi
  00438110: 74 07                                           je     0x438119
  00438112: 89 38                                           mov    DWORD PTR [eax],edi
  00438114: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00438117: eb 02                                           jmp    0x43811b
  00438119: 33 c0                                           xor    eax,eax
  0043811b: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0043811e: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00438121: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00438124: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00438127: 89 38                                           mov    DWORD PTR [eax],edi
  00438129: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  0043812c: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0043812f: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00438132: 5f                                              pop    edi
  00438133: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00438136: 5e                                              pop    esi
  00438137: 5d                                              pop    ebp
  00438138: c2 04 00                                        ret    0x4
  0043813b: e8 b0 9e 00 00                                  call   0x441ff0
  00438140: 83 c4 04                                        add    esp,0x4
  00438143: 3b c7                                           cmp    eax,edi
  00438145: 74 07                                           je     0x43814e
  00438147: 89 38                                           mov    DWORD PTR [eax],edi
  00438149: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  0043814c: eb 02                                           jmp    0x438150
  0043814e: 33 c0                                           xor    eax,eax
  00438150: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  00438153: 89 01                                           mov    DWORD PTR [ecx],eax
  00438155: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  00438158: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  0043815b: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  0043815e: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00438161: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  00438164: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00438167: 89 38                                           mov    DWORD PTR [eax],edi
  00438169: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  0043816c: 5f                                              pop    edi
  0043816d: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00438170: 5e                                              pop    esi
  00438171: 5d                                              pop    ebp
  00438172: c2 04 00                                        ret    0x4
  0044f160: 55                                              push   ebp
  0044f161: 8b ec                                           mov    ebp,esp
  0044f163: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0044f166: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0044f169: 6a 00                                           push   0x0
  0044f16b: 6a 00                                           push   0x0
  0044f16d: 50                                              push   eax
  0044f16e: 8b 41 0c                                        mov    eax,DWORD PTR [ecx+0xc]
  0044f171: 6a 08                                           push   0x8
  0044f173: 52                                              push   edx
  0044f174: 50                                              push   eax
  0044f175: e8 0a f3 07 00                                  call   0x4ce484
  0044f17a: 5d                                              pop    ebp
  0044f17b: c2 08 00                                        ret    0x8
  00458fa0: 8b 41 28                                        mov    eax,DWORD PTR [ecx+0x28]
  00458fa3: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00458fa6: c7 41 40 00 00 00 00                            mov    DWORD PTR [ecx+0x40],0x0
  00458fad: c6 41 34 08                                     mov    BYTE PTR [ecx+0x34],0x8
  00458fb1: c3                                              ret
