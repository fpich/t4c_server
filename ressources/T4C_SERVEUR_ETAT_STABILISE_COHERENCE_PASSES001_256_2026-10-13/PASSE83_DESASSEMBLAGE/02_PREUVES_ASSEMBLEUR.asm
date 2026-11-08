; PASSE 83, Entrees exportees historiquement non couvertes
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2380 distinct instructions; 51 graph entry points

  00401050: 55                                              push   ebp
  00401051: 8b ec                                           mov    ebp,esp
  00401053: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00401056: 5d                                              pop    ebp
  00401057: c2 04 00                                        ret    0x4
  00401080: 55                                              push   ebp
  00401081: 8b ec                                           mov    ebp,esp
  00401083: 8b c1                                           mov    eax,ecx
  00401085: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00401088: 8a 11                                           mov    dl,BYTE PTR [ecx]
  0040108a: 88 10                                           mov    BYTE PTR [eax],dl
  0040108c: 5d                                              pop    ebp
  0040108d: c2 04 00                                        ret    0x4
  00401090: 55                                              push   ebp
  00401091: 8b ec                                           mov    ebp,esp
  00401093: 8b c1                                           mov    eax,ecx
  00401095: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00401098: 8a 11                                           mov    dl,BYTE PTR [ecx]
  0040109a: 88 10                                           mov    BYTE PTR [eax],dl
  0040109c: 5d                                              pop    ebp
  0040109d: c2 04 00                                        ret    0x4
  004010a0: 55                                              push   ebp
  004010a1: 8b ec                                           mov    ebp,esp
  004010a3: 6a ff                                           push   0xffffffff
  004010a5: 68 b3 2e 4d 00                                  push   0x4d2eb3
  004010aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004010b0: 50                                              push   eax
  004010b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004010b8: 83 ec 08                                        sub    esp,0x8
  004010bb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004010be: 53                                              push   ebx
  004010bf: 8b d9                                           mov    ebx,ecx
  004010c1: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004010c4: 56                                              push   esi
  004010c5: 57                                              push   edi
  004010c6: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004010c9: 8d 70 08                                        lea    esi,[eax+0x8]
  004010cc: 8d 7b 08                                        lea    edi,[ebx+0x8]
  004010cf: b9 06 00 00 00                                  mov    ecx,0x6
  004010d4: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004010d6: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004010d9: c7 03 8c e5 4d 00                               mov    DWORD PTR [ebx],0x4de58c
  004010df: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  004010e2: 89 53 20                                        mov    DWORD PTR [ebx+0x20],edx
  004010e5: 8a 48 25                                        mov    cl,BYTE PTR [eax+0x25]
  004010e8: 8a 40 24                                        mov    al,BYTE PTR [eax+0x24]
  004010eb: 8d 73 24                                        lea    esi,[ebx+0x24]
  004010ee: 33 ff                                           xor    edi,edi
  004010f0: 6a 14                                           push   0x14
  004010f2: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004010f5: 88 06                                           mov    BYTE PTR [esi],al
  004010f7: 88 4e 01                                        mov    BYTE PTR [esi+0x1],cl
  004010fa: e8 f1 0e 04 00                                  call   0x441ff0
  004010ff: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  00401102: c6 40 10 01                                     mov    BYTE PTR [eax+0x10],0x1
  00401106: c6 40 11 00                                     mov    BYTE PTR [eax+0x11],0x0
  0040110a: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0040110d: c6 40 11 01                                     mov    BYTE PTR [eax+0x11],0x1
  00401111: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00401114: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00401117: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040111a: 89 00                                           mov    DWORD PTR [eax],eax
  0040111c: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040111f: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00401122: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00401125: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  00401128: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0040112b: 83 c4 04                                        add    esp,0x4
  0040112e: 50                                              push   eax
  0040112f: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  00401132: 8b 47 28                                        mov    eax,DWORD PTR [edi+0x28]
  00401135: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00401138: 51                                              push   ecx
  00401139: 8b ce                                           mov    ecx,esi
  0040113b: e8 70 2f 00 00                                  call   0x4040b0
  00401140: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00401143: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00401146: 8b 47 2c                                        mov    eax,DWORD PTR [edi+0x2c]
  00401149: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0040114c: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040114f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00401152: 8a 51 11                                        mov    dl,BYTE PTR [ecx+0x11]
  00401155: 84 d2                                           test   dl,dl
  00401157: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0040115a: 75 1f                                           jne    0x40117b
  0040115c: 51                                              push   ecx
  0040115d: e8 9e 30 00 00                                  call   0x404200
  00401162: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00401165: 89 01                                           mov    DWORD PTR [ecx],eax
  00401167: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0040116a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0040116d: 52                                              push   edx
  0040116e: e8 6d 30 00 00                                  call   0x4041e0
  00401173: 83 c4 08                                        add    esp,0x8
  00401176: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00401179: eb 08                                           jmp    0x401183
  0040117b: 89 00                                           mov    DWORD PTR [eax],eax
  0040117d: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00401180: 89 76 08                                        mov    DWORD PTR [esi+0x8],esi
  00401183: 8a 47 31                                        mov    al,BYTE PTR [edi+0x31]
  00401186: 8a 4f 30                                        mov    cl,BYTE PTR [edi+0x30]
  00401189: 8d 73 30                                        lea    esi,[ebx+0x30]
  0040118c: 6a 14                                           push   0x14
  0040118e: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00401192: 88 0e                                           mov    BYTE PTR [esi],cl
  00401194: 88 46 01                                        mov    BYTE PTR [esi+0x1],al
  00401197: e8 54 0e 04 00                                  call   0x441ff0
  0040119c: c6 40 10 01                                     mov    BYTE PTR [eax+0x10],0x1
  004011a0: 33 c9                                           xor    ecx,ecx
  004011a2: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004011a5: 88 48 11                                        mov    BYTE PTR [eax+0x11],cl
  004011a8: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004011ab: c6 40 11 01                                     mov    BYTE PTR [eax+0x11],0x1
  004011af: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004011b2: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004011b5: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004011b8: 89 00                                           mov    DWORD PTR [eax],eax
  004011ba: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004011bd: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  004011c0: 83 c4 04                                        add    esp,0x4
  004011c3: 8d 47 30                                        lea    eax,[edi+0x30]
  004011c6: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004011c9: 50                                              push   eax
  004011ca: 8b ce                                           mov    ecx,esi
  004011cc: e8 0f 29 00 00                                  call   0x403ae0
  004011d1: 8a 47 3c                                        mov    al,BYTE PTR [edi+0x3c]
  004011d4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004011d7: 5f                                              pop    edi
  004011d8: 88 43 3c                                        mov    BYTE PTR [ebx+0x3c],al
  004011db: c7 03 7c e5 4d 00                               mov    DWORD PTR [ebx],0x4de57c
  004011e1: 5e                                              pop    esi
  004011e2: 8b c3                                           mov    eax,ebx
  004011e4: 5b                                              pop    ebx
  004011e5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004011ec: 8b e5                                           mov    esp,ebp
  004011ee: 5d                                              pop    ebp
  004011ef: c2 04 00                                        ret    0x4
  00401200: 55                                              push   ebp
  00401201: 8b ec                                           mov    ebp,esp
  00401203: 83 ec 10                                        sub    esp,0x10
  00401206: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00401209: 53                                              push   ebx
  0040120a: 8b d9                                           mov    ebx,ecx
  0040120c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0040120f: 56                                              push   esi
  00401210: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00401213: 57                                              push   edi
  00401214: 8d 70 08                                        lea    esi,[eax+0x8]
  00401217: 8d 7b 08                                        lea    edi,[ebx+0x8]
  0040121a: b9 06 00 00 00                                  mov    ecx,0x6
  0040121f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00401221: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00401224: 8d 48 24                                        lea    ecx,[eax+0x24]
  00401227: 8d 73 24                                        lea    esi,[ebx+0x24]
  0040122a: 3b f1                                           cmp    esi,ecx
  0040122c: 89 53 20                                        mov    DWORD PTR [ebx+0x20],edx
  0040122f: 0f 84 80 00 00 00                               je     0x4012b5
  00401235: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00401238: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0040123b: 85 d2                                           test   edx,edx
  0040123d: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  0040123f: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00401242: 74 36                                           je     0x40127a
  00401244: 8b d1                                           mov    edx,ecx
  00401246: 3b ca                                           cmp    ecx,edx
  00401248: 75 30                                           jne    0x40127a
  0040124a: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0040124d: 50                                              push   eax
  0040124e: 8b ce                                           mov    ecx,esi
  00401250: e8 4b 2f 00 00                                  call   0x4041a0
  00401255: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00401258: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0040125b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040125e: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00401265: 89 00                                           mov    DWORD PTR [eax],eax
  00401267: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0040126a: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0040126d: 51                                              push   ecx
  0040126e: 8b ce                                           mov    ecx,esi
  00401270: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00401273: e8 48 28 00 00                                  call   0x403ac0
  00401278: eb 25                                           jmp    0x40129f
  0040127a: 3b cf                                           cmp    ecx,edi
  0040127c: 74 24                                           je     0x4012a2
  0040127e: 6a 00                                           push   0x0
  00401280: 8d 55 f4                                        lea    edx,[ebp-0xc]
  00401283: 52                                              push   edx
  00401284: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00401287: e8 94 2f 00 00                                  call   0x404220
  0040128c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0040128e: 50                                              push   eax
  0040128f: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00401292: 51                                              push   ecx
  00401293: 8b ce                                           mov    ecx,esi
  00401295: e8 c6 29 00 00                                  call   0x403c60
  0040129a: 39 7d fc                                        cmp    DWORD PTR [ebp-0x4],edi
  0040129d: 75 df                                           jne    0x40127e
  0040129f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004012a2: 8a 50 24                                        mov    dl,BYTE PTR [eax+0x24]
  004012a5: 83 c0 24                                        add    eax,0x24
  004012a8: 50                                              push   eax
  004012a9: 8b ce                                           mov    ecx,esi
  004012ab: 88 16                                           mov    BYTE PTR [esi],dl
  004012ad: e8 2e 28 00 00                                  call   0x403ae0
  004012b2: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004012b5: 8d 48 30                                        lea    ecx,[eax+0x30]
  004012b8: 8d 73 30                                        lea    esi,[ebx+0x30]
  004012bb: 3b f1                                           cmp    esi,ecx
  004012bd: 0f 84 80 00 00 00                               je     0x401343
  004012c3: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004012c6: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004012c9: 85 d2                                           test   edx,edx
  004012cb: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  004012cd: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004012d0: 74 36                                           je     0x401308
  004012d2: 8b d1                                           mov    edx,ecx
  004012d4: 3b ca                                           cmp    ecx,edx
  004012d6: 75 30                                           jne    0x401308
  004012d8: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004012db: 50                                              push   eax
  004012dc: 8b ce                                           mov    ecx,esi
  004012de: e8 bd 2e 00 00                                  call   0x4041a0
  004012e3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004012e6: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  004012e9: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004012ec: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  004012f3: 89 00                                           mov    DWORD PTR [eax],eax
  004012f5: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004012f8: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004012fb: 51                                              push   ecx
  004012fc: 8b ce                                           mov    ecx,esi
  004012fe: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00401301: e8 ba 27 00 00                                  call   0x403ac0
  00401306: eb 25                                           jmp    0x40132d
  00401308: 3b cf                                           cmp    ecx,edi
  0040130a: 74 24                                           je     0x401330
  0040130c: 6a 00                                           push   0x0
  0040130e: 8d 55 f4                                        lea    edx,[ebp-0xc]
  00401311: 52                                              push   edx
  00401312: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00401315: e8 06 2f 00 00                                  call   0x404220
  0040131a: 8b 00                                           mov    eax,DWORD PTR [eax]
  0040131c: 50                                              push   eax
  0040131d: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00401320: 51                                              push   ecx
  00401321: 8b ce                                           mov    ecx,esi
  00401323: e8 38 29 00 00                                  call   0x403c60
  00401328: 39 7d fc                                        cmp    DWORD PTR [ebp-0x4],edi
  0040132b: 75 df                                           jne    0x40130c
  0040132d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00401330: 8a 50 30                                        mov    dl,BYTE PTR [eax+0x30]
  00401333: 83 c0 30                                        add    eax,0x30
  00401336: 50                                              push   eax
  00401337: 8b ce                                           mov    ecx,esi
  00401339: 88 16                                           mov    BYTE PTR [esi],dl
  0040133b: e8 a0 27 00 00                                  call   0x403ae0
  00401340: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00401343: 8a 40 3c                                        mov    al,BYTE PTR [eax+0x3c]
  00401346: 5f                                              pop    edi
  00401347: 88 43 3c                                        mov    BYTE PTR [ebx+0x3c],al
  0040134a: 5e                                              pop    esi
  0040134b: 8b c3                                           mov    eax,ebx
  0040134d: 5b                                              pop    ebx
  0040134e: 8b e5                                           mov    esp,ebp
  00401350: 5d                                              pop    ebp
  00401351: c2 04 00                                        ret    0x4
  004018f0: 55                                              push   ebp
  004018f1: 8b ec                                           mov    ebp,esp
  004018f3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004018f6: 53                                              push   ebx
  004018f7: 8b d9                                           mov    ebx,ecx
  004018f9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004018fc: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004018ff: 56                                              push   esi
  00401900: 57                                              push   edi
  00401901: 8d 70 08                                        lea    esi,[eax+0x8]
  00401904: 8d 7b 08                                        lea    edi,[ebx+0x8]
  00401907: b9 06 00 00 00                                  mov    ecx,0x6
  0040190c: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0040190e: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  00401911: 89 53 20                                        mov    DWORD PTR [ebx+0x20],edx
  00401914: 8d 48 24                                        lea    ecx,[eax+0x24]
  00401917: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00401919: 8d 53 24                                        lea    edx,[ebx+0x24]
  0040191c: 89 32                                           mov    DWORD PTR [edx],esi
  0040191e: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00401921: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00401924: 8b 71 08                                        mov    esi,DWORD PTR [ecx+0x8]
  00401927: 89 72 08                                        mov    DWORD PTR [edx+0x8],esi
  0040192a: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  0040192d: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  00401930: 8b 50 34                                        mov    edx,DWORD PTR [eax+0x34]
  00401933: 89 53 34                                        mov    DWORD PTR [ebx+0x34],edx
  00401936: 8b 48 38                                        mov    ecx,DWORD PTR [eax+0x38]
  00401939: 89 4b 38                                        mov    DWORD PTR [ebx+0x38],ecx
  0040193c: 8b 50 3c                                        mov    edx,DWORD PTR [eax+0x3c]
  0040193f: 89 53 3c                                        mov    DWORD PTR [ebx+0x3c],edx
  00401942: 8a 48 40                                        mov    cl,BYTE PTR [eax+0x40]
  00401945: 88 4b 40                                        mov    BYTE PTR [ebx+0x40],cl
  00401948: 8a 50 41                                        mov    dl,BYTE PTR [eax+0x41]
  0040194b: 88 53 41                                        mov    BYTE PTR [ebx+0x41],dl
  0040194e: 8b 48 44                                        mov    ecx,DWORD PTR [eax+0x44]
  00401951: 89 4b 44                                        mov    DWORD PTR [ebx+0x44],ecx
  00401954: 8b 50 48                                        mov    edx,DWORD PTR [eax+0x48]
  00401957: 89 53 48                                        mov    DWORD PTR [ebx+0x48],edx
  0040195a: 8b 48 4c                                        mov    ecx,DWORD PTR [eax+0x4c]
  0040195d: 89 4b 4c                                        mov    DWORD PTR [ebx+0x4c],ecx
  00401960: 8b 50 50                                        mov    edx,DWORD PTR [eax+0x50]
  00401963: 89 53 50                                        mov    DWORD PTR [ebx+0x50],edx
  00401966: 8b 48 54                                        mov    ecx,DWORD PTR [eax+0x54]
  00401969: 89 4b 54                                        mov    DWORD PTR [ebx+0x54],ecx
  0040196c: 8b 50 58                                        mov    edx,DWORD PTR [eax+0x58]
  0040196f: 89 53 58                                        mov    DWORD PTR [ebx+0x58],edx
  00401972: 8b 48 5c                                        mov    ecx,DWORD PTR [eax+0x5c]
  00401975: 89 4b 5c                                        mov    DWORD PTR [ebx+0x5c],ecx
  00401978: 8b 50 60                                        mov    edx,DWORD PTR [eax+0x60]
  0040197b: 89 53 60                                        mov    DWORD PTR [ebx+0x60],edx
  0040197e: 8b 48 64                                        mov    ecx,DWORD PTR [eax+0x64]
  00401981: 89 4b 64                                        mov    DWORD PTR [ebx+0x64],ecx
  00401984: 8b 50 68                                        mov    edx,DWORD PTR [eax+0x68]
  00401987: 89 53 68                                        mov    DWORD PTR [ebx+0x68],edx
  0040198a: 8a 48 6c                                        mov    cl,BYTE PTR [eax+0x6c]
  0040198d: 88 4b 6c                                        mov    BYTE PTR [ebx+0x6c],cl
  00401990: 8b 50 70                                        mov    edx,DWORD PTR [eax+0x70]
  00401993: 89 53 70                                        mov    DWORD PTR [ebx+0x70],edx
  00401996: 8b 48 74                                        mov    ecx,DWORD PTR [eax+0x74]
  00401999: 89 4b 74                                        mov    DWORD PTR [ebx+0x74],ecx
  0040199c: 8a 50 78                                        mov    dl,BYTE PTR [eax+0x78]
  0040199f: 88 53 78                                        mov    BYTE PTR [ebx+0x78],dl
  004019a2: 8a 48 79                                        mov    cl,BYTE PTR [eax+0x79]
  004019a5: 88 4b 79                                        mov    BYTE PTR [ebx+0x79],cl
  004019a8: 8a 50 7a                                        mov    dl,BYTE PTR [eax+0x7a]
  004019ab: 88 53 7a                                        mov    BYTE PTR [ebx+0x7a],dl
  004019ae: 8b 48 7c                                        mov    ecx,DWORD PTR [eax+0x7c]
  004019b1: 89 4b 7c                                        mov    DWORD PTR [ebx+0x7c],ecx
  004019b4: 8b 90 80 00 00 00                               mov    edx,DWORD PTR [eax+0x80]
  004019ba: 89 93 80 00 00 00                               mov    DWORD PTR [ebx+0x80],edx
  004019c0: 8b 88 84 00 00 00                               mov    ecx,DWORD PTR [eax+0x84]
  004019c6: 89 8b 84 00 00 00                               mov    DWORD PTR [ebx+0x84],ecx
  004019cc: 8b 90 88 00 00 00                               mov    edx,DWORD PTR [eax+0x88]
  004019d2: 89 93 88 00 00 00                               mov    DWORD PTR [ebx+0x88],edx
  004019d8: 8a 88 8c 00 00 00                               mov    cl,BYTE PTR [eax+0x8c]
  004019de: 88 8b 8c 00 00 00                               mov    BYTE PTR [ebx+0x8c],cl
  004019e4: 8b 90 90 00 00 00                               mov    edx,DWORD PTR [eax+0x90]
  004019ea: 89 93 90 00 00 00                               mov    DWORD PTR [ebx+0x90],edx
  004019f0: 8b 88 94 00 00 00                               mov    ecx,DWORD PTR [eax+0x94]
  004019f6: 89 8b 94 00 00 00                               mov    DWORD PTR [ebx+0x94],ecx
  004019fc: 8b 90 98 00 00 00                               mov    edx,DWORD PTR [eax+0x98]
  00401a02: 89 93 98 00 00 00                               mov    DWORD PTR [ebx+0x98],edx
  00401a08: 8b 88 9c 00 00 00                               mov    ecx,DWORD PTR [eax+0x9c]
  00401a0e: 89 8b 9c 00 00 00                               mov    DWORD PTR [ebx+0x9c],ecx
  00401a14: 8b 90 a0 00 00 00                               mov    edx,DWORD PTR [eax+0xa0]
  00401a1a: 89 93 a0 00 00 00                               mov    DWORD PTR [ebx+0xa0],edx
  00401a20: 8b 88 a4 00 00 00                               mov    ecx,DWORD PTR [eax+0xa4]
  00401a26: 05 a8 00 00 00                                  add    eax,0xa8
  00401a2b: 89 8b a4 00 00 00                               mov    DWORD PTR [ebx+0xa4],ecx
  00401a31: 50                                              push   eax
  00401a32: 8d 8b a8 00 00 00                               lea    ecx,[ebx+0xa8]
  00401a38: e8 09 00 0d 00                                  call   0x4d1a46
  00401a3d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00401a40: 8d 96 ac 00 00 00                               lea    edx,[esi+0xac]
  00401a46: 52                                              push   edx
  00401a47: 8d 8b ac 00 00 00                               lea    ecx,[ebx+0xac]
  00401a4d: e8 f4 ff 0c 00                                  call   0x4d1a46
  00401a52: 8d 86 b0 00 00 00                               lea    eax,[esi+0xb0]
  00401a58: 50                                              push   eax
  00401a59: 8d 8b b0 00 00 00                               lea    ecx,[ebx+0xb0]
  00401a5f: e8 e2 ff 0c 00                                  call   0x4d1a46
  00401a64: 8b 8e b8 00 00 00                               mov    ecx,DWORD PTR [esi+0xb8]
  00401a6a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00401a6d: 89 8b b8 00 00 00                               mov    DWORD PTR [ebx+0xb8],ecx
  00401a73: 81 c6 bc 00 00 00                               add    esi,0xbc
  00401a79: 8d bb bc 00 00 00                               lea    edi,[ebx+0xbc]
  00401a7f: b9 06 00 00 00                                  mov    ecx,0x6
  00401a84: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00401a86: 8b 90 d4 00 00 00                               mov    edx,DWORD PTR [eax+0xd4]
  00401a8c: 89 93 d4 00 00 00                               mov    DWORD PTR [ebx+0xd4],edx
  00401a92: 8b 88 d8 00 00 00                               mov    ecx,DWORD PTR [eax+0xd8]
  00401a98: 89 8b d8 00 00 00                               mov    DWORD PTR [ebx+0xd8],ecx
  00401a9e: 8b 90 dc 00 00 00                               mov    edx,DWORD PTR [eax+0xdc]
  00401aa4: 89 93 dc 00 00 00                               mov    DWORD PTR [ebx+0xdc],edx
  00401aaa: 8b 88 e0 00 00 00                               mov    ecx,DWORD PTR [eax+0xe0]
  00401ab0: 89 8b e0 00 00 00                               mov    DWORD PTR [ebx+0xe0],ecx
  00401ab6: 8b 90 e4 00 00 00                               mov    edx,DWORD PTR [eax+0xe4]
  00401abc: 89 93 e4 00 00 00                               mov    DWORD PTR [ebx+0xe4],edx
  00401ac2: 8a 88 e8 00 00 00                               mov    cl,BYTE PTR [eax+0xe8]
  00401ac8: 88 8b e8 00 00 00                               mov    BYTE PTR [ebx+0xe8],cl
  00401ace: 8b 90 ec 00 00 00                               mov    edx,DWORD PTR [eax+0xec]
  00401ad4: 89 93 ec 00 00 00                               mov    DWORD PTR [ebx+0xec],edx
  00401ada: 8b 88 f0 00 00 00                               mov    ecx,DWORD PTR [eax+0xf0]
  00401ae0: 89 8b f0 00 00 00                               mov    DWORD PTR [ebx+0xf0],ecx
  00401ae6: 8b 90 f4 00 00 00                               mov    edx,DWORD PTR [eax+0xf4]
  00401aec: 89 93 f4 00 00 00                               mov    DWORD PTR [ebx+0xf4],edx
  00401af2: 8b 88 fc 00 00 00                               mov    ecx,DWORD PTR [eax+0xfc]
  00401af8: 89 8b fc 00 00 00                               mov    DWORD PTR [ebx+0xfc],ecx
  00401afe: 8d b0 00 01 00 00                               lea    esi,[eax+0x100]
  00401b04: 8d bb 00 01 00 00                               lea    edi,[ebx+0x100]
  00401b0a: b9 06 00 00 00                                  mov    ecx,0x6
  00401b0f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00401b11: 8b 90 18 01 00 00                               mov    edx,DWORD PTR [eax+0x118]
  00401b17: 5f                                              pop    edi
  00401b18: 5e                                              pop    esi
  00401b19: 89 93 18 01 00 00                               mov    DWORD PTR [ebx+0x118],edx
  00401b1f: 8b c3                                           mov    eax,ebx
  00401b21: 5b                                              pop    ebx
  00401b22: 5d                                              pop    ebp
  00401b23: c2 04 00                                        ret    0x4
  00401bf0: 55                                              push   ebp
  00401bf1: 8b ec                                           mov    ebp,esp
  00401bf3: 8b c1                                           mov    eax,ecx
  00401bf5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00401bf8: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00401bfa: 88 10                                           mov    BYTE PTR [eax],dl
  00401bfc: 5d                                              pop    ebp
  00401bfd: c2 04 00                                        ret    0x4
  00401c50: 55                                              push   ebp
  00401c51: 8b ec                                           mov    ebp,esp
  00401c53: 8b c1                                           mov    eax,ecx
  00401c55: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00401c58: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00401c5b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00401c5e: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00401c61: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00401c64: 66 8b 51 0c                                     mov    dx,WORD PTR [ecx+0xc]
  00401c68: 66 89 50 0c                                     mov    WORD PTR [eax+0xc],dx
  00401c6c: 8b 49 10                                        mov    ecx,DWORD PTR [ecx+0x10]
  00401c6f: 89 48 10                                        mov    DWORD PTR [eax+0x10],ecx
  00401c72: 5d                                              pop    ebp
  00401c73: c2 04 00                                        ret    0x4
  00401db0: 55                                              push   ebp
  00401db1: 8b ec                                           mov    ebp,esp
  00401db3: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00401db6: 8b c1                                           mov    eax,ecx
  00401db8: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00401dbb: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00401dbe: 56                                              push   esi
  00401dbf: 57                                              push   edi
  00401dc0: 8d 72 08                                        lea    esi,[edx+0x8]
  00401dc3: 8d 78 08                                        lea    edi,[eax+0x8]
  00401dc6: b9 06 00 00 00                                  mov    ecx,0x6
  00401dcb: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00401dcd: 8b 4a 20                                        mov    ecx,DWORD PTR [edx+0x20]
  00401dd0: 89 48 20                                        mov    DWORD PTR [eax+0x20],ecx
  00401dd3: 8b 4a 24                                        mov    ecx,DWORD PTR [edx+0x24]
  00401dd6: 89 48 24                                        mov    DWORD PTR [eax+0x24],ecx
  00401dd9: 8b 4a 28                                        mov    ecx,DWORD PTR [edx+0x28]
  00401ddc: 89 48 28                                        mov    DWORD PTR [eax+0x28],ecx
  00401ddf: 66 8b 4a 2c                                     mov    cx,WORD PTR [edx+0x2c]
  00401de3: 66 89 48 2c                                     mov    WORD PTR [eax+0x2c],cx
  00401de7: 66 8b 4a 2e                                     mov    cx,WORD PTR [edx+0x2e]
  00401deb: 66 89 48 2e                                     mov    WORD PTR [eax+0x2e],cx
  00401def: 8b 52 30                                        mov    edx,DWORD PTR [edx+0x30]
  00401df2: 5f                                              pop    edi
  00401df3: 89 50 30                                        mov    DWORD PTR [eax+0x30],edx
  00401df6: 5e                                              pop    esi
  00401df7: 5d                                              pop    ebp
  00401df8: c2 04 00                                        ret    0x4
  00401ea0: 8b c1                                           mov    eax,ecx
  00401ea2: c2 04 00                                        ret    0x4
  00401f40: 8b c1                                           mov    eax,ecx
  00401f42: c7 00 d4 e5 4d 00                               mov    DWORD PTR [eax],0x4de5d4
  00401f48: c3                                              ret
  00401f50: 55                                              push   ebp
  00401f51: 8b ec                                           mov    ebp,esp
  00401f53: 8b c1                                           mov    eax,ecx
  00401f55: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00401f58: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00401f5b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00401f5e: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00401f61: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00401f64: c7 00 d4 e5 4d 00                               mov    DWORD PTR [eax],0x4de5d4
  00401f6a: 5d                                              pop    ebp
  00401f6b: c2 04 00                                        ret    0x4
  00401f70: 55                                              push   ebp
  00401f71: 8b ec                                           mov    ebp,esp
  00401f73: 8b c1                                           mov    eax,ecx
  00401f75: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00401f78: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00401f7b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00401f7e: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00401f81: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00401f84: 5d                                              pop    ebp
  00401f85: c2 04 00                                        ret    0x4
  00401f90: 55                                              push   ebp
  00401f91: 8b ec                                           mov    ebp,esp
  00401f93: 8b c1                                           mov    eax,ecx
  00401f95: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00401f98: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00401f9a: 88 10                                           mov    BYTE PTR [eax],dl
  00401f9c: 5d                                              pop    ebp
  00401f9d: c2 04 00                                        ret    0x4
  00401fb0: 55                                              push   ebp
  00401fb1: 8b ec                                           mov    ebp,esp
  00401fb3: 8b c1                                           mov    eax,ecx
  00401fb5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00401fb8: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00401fba: 88 10                                           mov    BYTE PTR [eax],dl
  00401fbc: 5d                                              pop    ebp
  00401fbd: c2 04 00                                        ret    0x4
  00402110: 55                                              push   ebp
  00402111: 8b ec                                           mov    ebp,esp
  00402113: 51                                              push   ecx
  00402114: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00402119: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0040211c: 53                                              push   ebx
  0040211d: 56                                              push   esi
  0040211e: 8b 30                                           mov    esi,DWORD PTR [eax]
  00402120: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00402123: 57                                              push   edi
  00402124: 8b f8                                           mov    edi,eax
  00402126: 3b f7                                           cmp    esi,edi
  00402128: 8b d9                                           mov    ebx,ecx
  0040212a: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0040212d: 73 05                                           jae    0x402134
  0040212f: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  00402132: 8b fe                                           mov    edi,esi
  00402134: 3b da                                           cmp    ebx,edx
  00402136: 75 6d                                           jne    0x4021a5
  00402138: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  0040213b: 73 0b                                           jae    0x402148
  0040213d: 8b cb                                           mov    ecx,ebx
  0040213f: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00402145: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00402148: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0040214b: 2b c7                                           sub    eax,edi
  0040214d: 3b c6                                           cmp    eax,esi
  0040214f: 73 02                                           jae    0x402153
  00402151: 8b f0                                           mov    esi,eax
  00402153: 85 f6                                           test   esi,esi
  00402155: 0f 86 f8 00 00 00                               jbe    0x402253
  0040215b: 8b cb                                           mov    ecx,ebx
  0040215d: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00402163: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00402166: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00402169: 2b d6                                           sub    edx,esi
  0040216b: 8d 04 39                                        lea    eax,[ecx+edi*1]
  0040216e: 2b d7                                           sub    edx,edi
  00402170: 52                                              push   edx
  00402171: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00402174: 51                                              push   ecx
  00402175: 50                                              push   eax
  00402176: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0040217c: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0040217f: 83 c4 0c                                        add    esp,0xc
  00402182: 6a 00                                           push   0x0
  00402184: 2b fe                                           sub    edi,esi
  00402186: 57                                              push   edi
  00402187: 8b cb                                           mov    ecx,ebx
  00402189: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0040218f: 84 c0                                           test   al,al
  00402191: 0f 84 b9 00 00 00                               je     0x402250
  00402197: 57                                              push   edi
  00402198: 8b cb                                           mov    ecx,ebx
  0040219a: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  004021a0: e9 ab 00 00 00                                  jmp    0x402250
  004021a5: 33 f6                                           xor    esi,esi
  004021a7: 3b fe                                           cmp    edi,esi
  004021a9: 76 65                                           jbe    0x402210
  004021ab: 3b f8                                           cmp    edi,eax
  004021ad: 75 61                                           jne    0x402210
  004021af: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004021b2: 3b c6                                           cmp    eax,esi
  004021b4: 75 05                                           jne    0x4021bb
  004021b6: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004021bb: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  004021bf: 73 4f                                           jae    0x402210
  004021c1: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004021c4: 3b c6                                           cmp    eax,esi
  004021c6: 74 1f                                           je     0x4021e7
  004021c8: 8d 48 ff                                        lea    ecx,[eax-0x1]
  004021cb: 8a 01                                           mov    al,BYTE PTR [ecx]
  004021cd: 84 c0                                           test   al,al
  004021cf: 74 0a                                           je     0x4021db
  004021d1: 3c ff                                           cmp    al,0xff
  004021d3: 74 06                                           je     0x4021db
  004021d5: fe c8                                           dec    al
  004021d7: 88 01                                           mov    BYTE PTR [ecx],al
  004021d9: eb 0c                                           jmp    0x4021e7
  004021db: 51                                              push   ecx
  004021dc: e8 7f fe 03 00                                  call   0x442060
  004021e1: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004021e4: 83 c4 04                                        add    esp,0x4
  004021e7: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  004021ea: 89 73 08                                        mov    DWORD PTR [ebx+0x8],esi
  004021ed: 89 73 0c                                        mov    DWORD PTR [ebx+0xc],esi
  004021f0: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004021f3: 3b c6                                           cmp    eax,esi
  004021f5: 75 05                                           jne    0x4021fc
  004021f7: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  004021fc: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  004021ff: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  00402202: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00402205: 8b 4a 0c                                        mov    ecx,DWORD PTR [edx+0xc]
  00402208: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0040220b: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0040220e: eb 43                                           jmp    0x402253
  00402210: 6a 01                                           push   0x1
  00402212: 57                                              push   edi
  00402213: 8b cb                                           mov    ecx,ebx
  00402215: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0040221b: 84 c0                                           test   al,al
  0040221d: 74 31                                           je     0x402250
  0040221f: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00402222: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00402225: 3b c6                                           cmp    eax,esi
  00402227: 75 05                                           jne    0x40222e
  00402229: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040222e: 8b cf                                           mov    ecx,edi
  00402230: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00402233: 8b f0                                           mov    esi,eax
  00402235: 8b c1                                           mov    eax,ecx
  00402237: c1 e9 02                                        shr    ecx,0x2
  0040223a: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0040223c: 8b c8                                           mov    ecx,eax
  0040223e: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00402241: 83 e1 03                                        and    ecx,0x3
  00402244: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00402246: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00402249: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0040224c: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  00402250: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00402253: 66 8b 42 10                                     mov    ax,WORD PTR [edx+0x10]
  00402257: 66 89 43 10                                     mov    WORD PTR [ebx+0x10],ax
  0040225b: 8d 7b 14                                        lea    edi,[ebx+0x14]
  0040225e: 8d 72 14                                        lea    esi,[edx+0x14]
  00402261: b9 06 00 00 00                                  mov    ecx,0x6
  00402266: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00402268: 5f                                              pop    edi
  00402269: 5e                                              pop    esi
  0040226a: 8b c3                                           mov    eax,ebx
  0040226c: 5b                                              pop    ebx
  0040226d: 8b e5                                           mov    esp,ebp
  0040226f: 5d                                              pop    ebp
  00402270: c2 04 00                                        ret    0x4
  004023f0: 55                                              push   ebp
  004023f1: 8b ec                                           mov    ebp,esp
  004023f3: 83 ec 08                                        sub    esp,0x8
  004023f6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004023f9: 8b 10                                           mov    edx,DWORD PTR [eax]
  004023fb: 89 11                                           mov    DWORD PTR [ecx],edx
  004023fd: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00402400: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00402403: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  00402406: 53                                              push   ebx
  00402407: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0040240a: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  0040240d: 8d 59 0c                                        lea    ebx,[ecx+0xc]
  00402410: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  00402416: 83 c0 0c                                        add    eax,0xc
  00402419: 56                                              push   esi
  0040241a: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0040241c: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0040241f: 57                                              push   edi
  00402420: 8b f9                                           mov    edi,ecx
  00402422: 3b f7                                           cmp    esi,edi
  00402424: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00402427: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  0040242a: 73 05                                           jae    0x402431
  0040242c: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  0040242f: 8b fe                                           mov    edi,esi
  00402431: 3b d8                                           cmp    ebx,eax
  00402433: 75 6d                                           jne    0x4024a2
  00402435: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  00402438: 73 0b                                           jae    0x402445
  0040243a: 8b cb                                           mov    ecx,ebx
  0040243c: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00402442: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00402445: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00402448: 2b cf                                           sub    ecx,edi
  0040244a: 3b ce                                           cmp    ecx,esi
  0040244c: 73 02                                           jae    0x402450
  0040244e: 8b f1                                           mov    esi,ecx
  00402450: 85 f6                                           test   esi,esi
  00402452: 0f 86 fb 00 00 00                               jbe    0x402553
  00402458: 8b cb                                           mov    ecx,ebx
  0040245a: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00402460: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00402463: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00402466: 2b ce                                           sub    ecx,esi
  00402468: 8d 04 3a                                        lea    eax,[edx+edi*1]
  0040246b: 2b cf                                           sub    ecx,edi
  0040246d: 51                                              push   ecx
  0040246e: 8d 14 30                                        lea    edx,[eax+esi*1]
  00402471: 52                                              push   edx
  00402472: 50                                              push   eax
  00402473: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00402479: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0040247c: 83 c4 0c                                        add    esp,0xc
  0040247f: 6a 00                                           push   0x0
  00402481: 2b fe                                           sub    edi,esi
  00402483: 57                                              push   edi
  00402484: 8b cb                                           mov    ecx,ebx
  00402486: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0040248c: 84 c0                                           test   al,al
  0040248e: 0f 84 bc 00 00 00                               je     0x402550
  00402494: 57                                              push   edi
  00402495: 8b cb                                           mov    ecx,ebx
  00402497: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0040249d: e9 ae 00 00 00                                  jmp    0x402550
  004024a2: 33 f6                                           xor    esi,esi
  004024a4: 3b fe                                           cmp    edi,esi
  004024a6: 76 68                                           jbe    0x402510
  004024a8: 3b f9                                           cmp    edi,ecx
  004024aa: 75 64                                           jne    0x402510
  004024ac: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004024af: 3b ce                                           cmp    ecx,esi
  004024b1: 75 06                                           jne    0x4024b9
  004024b3: 8b 0d d8 e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4d8
  004024b9: 80 79 ff fe                                     cmp    BYTE PTR [ecx-0x1],0xfe
  004024bd: 73 51                                           jae    0x402510
  004024bf: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004024c2: 3b ce                                           cmp    ecx,esi
  004024c4: 74 20                                           je     0x4024e6
  004024c6: 8d 51 ff                                        lea    edx,[ecx-0x1]
  004024c9: 8a 0a                                           mov    cl,BYTE PTR [edx]
  004024cb: 84 c9                                           test   cl,cl
  004024cd: 74 0b                                           je     0x4024da
  004024cf: 80 f9 ff                                        cmp    cl,0xff
  004024d2: 74 06                                           je     0x4024da
  004024d4: fe c9                                           dec    cl
  004024d6: 88 0a                                           mov    BYTE PTR [edx],cl
  004024d8: eb 0c                                           jmp    0x4024e6
  004024da: 52                                              push   edx
  004024db: e8 80 fb 03 00                                  call   0x442060
  004024e0: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004024e3: 83 c4 04                                        add    esp,0x4
  004024e6: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  004024e9: 89 73 08                                        mov    DWORD PTR [ebx+0x8],esi
  004024ec: 89 73 0c                                        mov    DWORD PTR [ebx+0xc],esi
  004024ef: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004024f2: 3b ce                                           cmp    ecx,esi
  004024f4: 75 06                                           jne    0x4024fc
  004024f6: 8b 0d d8 e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4d8
  004024fc: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  004024ff: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  00402502: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00402505: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  00402508: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0040250b: fe 41 ff                                        inc    BYTE PTR [ecx-0x1]
  0040250e: eb 43                                           jmp    0x402553
  00402510: 6a 01                                           push   0x1
  00402512: 57                                              push   edi
  00402513: 8b cb                                           mov    ecx,ebx
  00402515: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0040251b: 84 c0                                           test   al,al
  0040251d: 74 31                                           je     0x402550
  0040251f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00402522: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00402525: 3b c6                                           cmp    eax,esi
  00402527: 75 05                                           jne    0x40252e
  00402529: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040252e: 8b cf                                           mov    ecx,edi
  00402530: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00402533: 8b d1                                           mov    edx,ecx
  00402535: c1 e9 02                                        shr    ecx,0x2
  00402538: 8b f0                                           mov    esi,eax
  0040253a: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0040253d: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0040253f: 8b ca                                           mov    ecx,edx
  00402541: 83 e1 03                                        and    ecx,0x3
  00402544: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00402546: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00402549: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0040254c: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  00402550: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00402553: 66 8b 50 10                                     mov    dx,WORD PTR [eax+0x10]
  00402557: 8d 70 14                                        lea    esi,[eax+0x14]
  0040255a: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  0040255d: 8d 7b 14                                        lea    edi,[ebx+0x14]
  00402560: 66 89 53 10                                     mov    WORD PTR [ebx+0x10],dx
  00402564: b9 06 00 00 00                                  mov    ecx,0x6
  00402569: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0040256b: 5f                                              pop    edi
  0040256c: 5e                                              pop    esi
  0040256d: 5b                                              pop    ebx
  0040256e: 8b e5                                           mov    esp,ebp
  00402570: 5d                                              pop    ebp
  00402571: c2 04 00                                        ret    0x4
  004025d0: 55                                              push   ebp
  004025d1: 8b ec                                           mov    ebp,esp
  004025d3: 8b c1                                           mov    eax,ecx
  004025d5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004025d8: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004025db: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004025de: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004025e1: 56                                              push   esi
  004025e2: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004025e5: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  004025e8: 57                                              push   edi
  004025e9: 8b f1                                           mov    esi,ecx
  004025eb: bf f0 ff ff ff                                  mov    edi,0xfffffff0
  004025f0: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004025f3: 2b f0                                           sub    esi,eax
  004025f5: 8d 50 10                                        lea    edx,[eax+0x10]
  004025f8: 2b f8                                           sub    edi,eax
  004025fa: 8a 0c 16                                        mov    cl,BYTE PTR [esi+edx*1]
  004025fd: 88 0a                                           mov    BYTE PTR [edx],cl
  004025ff: 42                                              inc    edx
  00402600: 8d 0c 17                                        lea    ecx,[edi+edx*1]
  00402603: 81 f9 00 01 00 00                               cmp    ecx,0x100
  00402609: 72 ef                                           jb     0x4025fa
  0040260b: 5f                                              pop    edi
  0040260c: 5e                                              pop    esi
  0040260d: 5d                                              pop    ebp
  0040260e: c2 04 00                                        ret    0x4
  00406030: 55                                              push   ebp
  00406031: 8b ec                                           mov    ebp,esp
  00406033: 8b c1                                           mov    eax,ecx
  00406035: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00406038: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0040603a: 89 10                                           mov    DWORD PTR [eax],edx
  0040603c: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0040603f: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00406042: 5d                                              pop    ebp
  00406043: c2 04 00                                        ret    0x4
  004096b0: 55                                              push   ebp
  004096b1: 8b ec                                           mov    ebp,esp
  004096b3: 8b c1                                           mov    eax,ecx
  004096b5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004096b8: 8a 11                                           mov    dl,BYTE PTR [ecx]
  004096ba: 88 10                                           mov    BYTE PTR [eax],dl
  004096bc: 5d                                              pop    ebp
  004096bd: c2 04 00                                        ret    0x4
  00411ae0: 55                                              push   ebp
  00411ae1: 8b ec                                           mov    ebp,esp
  00411ae3: 83 ec 08                                        sub    esp,0x8
  00411ae6: 53                                              push   ebx
  00411ae7: 56                                              push   esi
  00411ae8: 8b f1                                           mov    esi,ecx
  00411aea: 57                                              push   edi
  00411aeb: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00411aee: 66 8b 07                                        mov    ax,WORD PTR [edi]
  00411af1: 66 89 06                                        mov    WORD PTR [esi],ax
  00411af4: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00411af7: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00411afa: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00411afd: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00411b00: 8b 47 0c                                        mov    eax,DWORD PTR [edi+0xc]
  00411b03: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00411b06: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00411b09: 89 4e 10                                        mov    DWORD PTR [esi+0x10],ecx
  00411b0c: 66 8b 57 14                                     mov    dx,WORD PTR [edi+0x14]
  00411b10: 66 89 56 14                                     mov    WORD PTR [esi+0x14],dx
  00411b14: 8b 47 18                                        mov    eax,DWORD PTR [edi+0x18]
  00411b17: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  00411b1a: 8b 4f 1c                                        mov    ecx,DWORD PTR [edi+0x1c]
  00411b1d: 89 4e 1c                                        mov    DWORD PTR [esi+0x1c],ecx
  00411b20: 8b 57 20                                        mov    edx,DWORD PTR [edi+0x20]
  00411b23: 89 56 20                                        mov    DWORD PTR [esi+0x20],edx
  00411b26: 8b 47 24                                        mov    eax,DWORD PTR [edi+0x24]
  00411b29: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  00411b2c: 8b 4f 28                                        mov    ecx,DWORD PTR [edi+0x28]
  00411b2f: 89 4e 28                                        mov    DWORD PTR [esi+0x28],ecx
  00411b32: 8b 57 2c                                        mov    edx,DWORD PTR [edi+0x2c]
  00411b35: 89 56 2c                                        mov    DWORD PTR [esi+0x2c],edx
  00411b38: 8a 47 30                                        mov    al,BYTE PTR [edi+0x30]
  00411b3b: 88 46 30                                        mov    BYTE PTR [esi+0x30],al
  00411b3e: 8d 4f 34                                        lea    ecx,[edi+0x34]
  00411b41: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00411b43: 8d 56 34                                        lea    edx,[esi+0x34]
  00411b46: 89 02                                           mov    DWORD PTR [edx],eax
  00411b48: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00411b4b: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00411b4e: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00411b51: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00411b54: 8a 57 40                                        mov    dl,BYTE PTR [edi+0x40]
  00411b57: 88 56 40                                        mov    BYTE PTR [esi+0x40],dl
  00411b5a: 8d 47 44                                        lea    eax,[edi+0x44]
  00411b5d: 8b 10                                           mov    edx,DWORD PTR [eax]
  00411b5f: 8d 4e 44                                        lea    ecx,[esi+0x44]
  00411b62: 89 11                                           mov    DWORD PTR [ecx],edx
  00411b64: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00411b67: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00411b6a: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00411b6d: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00411b70: 8a 4f 50                                        mov    cl,BYTE PTR [edi+0x50]
  00411b73: 88 4e 50                                        mov    BYTE PTR [esi+0x50],cl
  00411b76: 66 8b 57 52                                     mov    dx,WORD PTR [edi+0x52]
  00411b7a: 66 89 56 52                                     mov    WORD PTR [esi+0x52],dx
  00411b7e: 8d 47 54                                        lea    eax,[edi+0x54]
  00411b81: 8b 10                                           mov    edx,DWORD PTR [eax]
  00411b83: 8d 4e 54                                        lea    ecx,[esi+0x54]
  00411b86: 89 11                                           mov    DWORD PTR [ecx],edx
  00411b88: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00411b8b: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00411b8e: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00411b91: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00411b94: 66 8b 4f 60                                     mov    cx,WORD PTR [edi+0x60]
  00411b98: 66 89 4e 60                                     mov    WORD PTR [esi+0x60],cx
  00411b9c: 66 8b 57 62                                     mov    dx,WORD PTR [edi+0x62]
  00411ba0: 66 89 56 62                                     mov    WORD PTR [esi+0x62],dx
  00411ba4: 66 8b 47 64                                     mov    ax,WORD PTR [edi+0x64]
  00411ba8: 66 89 46 64                                     mov    WORD PTR [esi+0x64],ax
  00411bac: 66 8b 4f 66                                     mov    cx,WORD PTR [edi+0x66]
  00411bb0: 66 89 4e 66                                     mov    WORD PTR [esi+0x66],cx
  00411bb4: 8b 57 68                                        mov    edx,DWORD PTR [edi+0x68]
  00411bb7: 89 56 68                                        mov    DWORD PTR [esi+0x68],edx
  00411bba: 8b 47 6c                                        mov    eax,DWORD PTR [edi+0x6c]
  00411bbd: 89 46 6c                                        mov    DWORD PTR [esi+0x6c],eax
  00411bc0: 8b 4f 70                                        mov    ecx,DWORD PTR [edi+0x70]
  00411bc3: 89 4e 70                                        mov    DWORD PTR [esi+0x70],ecx
  00411bc6: 8b 57 74                                        mov    edx,DWORD PTR [edi+0x74]
  00411bc9: 89 56 74                                        mov    DWORD PTR [esi+0x74],edx
  00411bcc: 8b 47 78                                        mov    eax,DWORD PTR [edi+0x78]
  00411bcf: 89 46 78                                        mov    DWORD PTR [esi+0x78],eax
  00411bd2: 8b 4f 7c                                        mov    ecx,DWORD PTR [edi+0x7c]
  00411bd5: 89 4e 7c                                        mov    DWORD PTR [esi+0x7c],ecx
  00411bd8: 8b 97 80 00 00 00                               mov    edx,DWORD PTR [edi+0x80]
  00411bde: 89 96 80 00 00 00                               mov    DWORD PTR [esi+0x80],edx
  00411be4: 8b 87 84 00 00 00                               mov    eax,DWORD PTR [edi+0x84]
  00411bea: 89 86 84 00 00 00                               mov    DWORD PTR [esi+0x84],eax
  00411bf0: 8b 8f 88 00 00 00                               mov    ecx,DWORD PTR [edi+0x88]
  00411bf6: 89 8e 88 00 00 00                               mov    DWORD PTR [esi+0x88],ecx
  00411bfc: 8b 97 8c 00 00 00                               mov    edx,DWORD PTR [edi+0x8c]
  00411c02: 8d 87 90 00 00 00                               lea    eax,[edi+0x90]
  00411c08: 8d 9e 90 00 00 00                               lea    ebx,[esi+0x90]
  00411c0e: 3b d8                                           cmp    ebx,eax
  00411c10: 89 96 8c 00 00 00                               mov    DWORD PTR [esi+0x8c],edx
  00411c16: 0f 84 4f 01 00 00                               je     0x411d6b
  00411c1c: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00411c1f: 85 d2                                           test   edx,edx
  00411c21: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00411c24: 74 12                                           je     0x411c38
  00411c26: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00411c29: 8b c8                                           mov    ecx,eax
  00411c2b: 2b ca                                           sub    ecx,edx
  00411c2d: c1 f9 02                                        sar    ecx,0x2
  00411c30: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00411c33: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  00411c36: 75 2f                                           jne    0x411c67
  00411c38: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00411c3b: 85 c0                                           test   eax,eax
  00411c3d: 74 18                                           je     0x411c57
  00411c3f: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00411c42: 51                                              push   ecx
  00411c43: 50                                              push   eax
  00411c44: 8b cb                                           mov    ecx,ebx
  00411c46: e8 a5 10 01 00                                  call   0x422cf0
  00411c4b: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411c4e: 52                                              push   edx
  00411c4f: e8 0c 04 03 00                                  call   0x442060
  00411c54: 83 c4 04                                        add    esp,0x4
  00411c57: 33 c0                                           xor    eax,eax
  00411c59: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00411c5c: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00411c5f: 89 43 0c                                        mov    DWORD PTR [ebx+0xc],eax
  00411c62: e9 04 01 00 00                                  jmp    0x411d6b
  00411c67: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411c6a: 85 d2                                           test   edx,edx
  00411c6c: 75 04                                           jne    0x411c72
  00411c6e: 33 c0                                           xor    eax,eax
  00411c70: eb 08                                           jmp    0x411c7a
  00411c72: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00411c75: 2b c2                                           sub    eax,edx
  00411c77: c1 f8 02                                        sar    eax,0x2
  00411c7a: 3b c8                                           cmp    ecx,eax
  00411c7c: 77 4e                                           ja     0x411ccc
  00411c7e: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00411c81: 8b ca                                           mov    ecx,edx
  00411c83: 3b 45 08                                        cmp    eax,DWORD PTR [ebp+0x8]
  00411c86: 74 11                                           je     0x411c99
  00411c88: 8b 10                                           mov    edx,DWORD PTR [eax]
  00411c8a: 89 11                                           mov    DWORD PTR [ecx],edx
  00411c8c: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00411c8f: 83 c0 04                                        add    eax,0x4
  00411c92: 83 c1 04                                        add    ecx,0x4
  00411c95: 3b c2                                           cmp    eax,edx
  00411c97: 75 ef                                           jne    0x411c88
  00411c99: 8b 8f 94 00 00 00                               mov    ecx,DWORD PTR [edi+0x94]
  00411c9f: 85 c9                                           test   ecx,ecx
  00411ca1: 75 10                                           jne    0x411cb3
  00411ca3: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00411ca6: 33 c0                                           xor    eax,eax
  00411ca8: 8d 14 81                                        lea    edx,[ecx+eax*4]
  00411cab: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00411cae: e9 b8 00 00 00                                  jmp    0x411d6b
  00411cb3: 8b 87 98 00 00 00                               mov    eax,DWORD PTR [edi+0x98]
  00411cb9: 2b c1                                           sub    eax,ecx
  00411cbb: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00411cbe: c1 f8 02                                        sar    eax,0x2
  00411cc1: 8d 14 81                                        lea    edx,[ecx+eax*4]
  00411cc4: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00411cc7: e9 9f 00 00 00                                  jmp    0x411d6b
  00411ccc: 8b cb                                           mov    ecx,ebx
  00411cce: e8 8d 0f 01 00                                  call   0x422c60
  00411cd3: 39 45 f8                                        cmp    DWORD PTR [ebp-0x8],eax
  00411cd6: 77 45                                           ja     0x411d1d
  00411cd8: 8b 87 94 00 00 00                               mov    eax,DWORD PTR [edi+0x94]
  00411cde: 8b cb                                           mov    ecx,ebx
  00411ce0: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00411ce3: e8 98 0f 01 00                                  call   0x422c80
  00411ce8: 50                                              push   eax
  00411ce9: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00411cec: 51                                              push   ecx
  00411ced: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00411cf0: e8 1b 11 01 00                                  call   0x422e10
  00411cf5: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411cf8: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00411cfb: 8b 87 94 00 00 00                               mov    eax,DWORD PTR [edi+0x94]
  00411d01: 52                                              push   edx
  00411d02: 51                                              push   ecx
  00411d03: 50                                              push   eax
  00411d04: e8 c7 2b 01 00                                  call   0x4248d0
  00411d09: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00411d0c: 8b 87 98 00 00 00                               mov    eax,DWORD PTR [edi+0x98]
  00411d12: 83 c4 0c                                        add    esp,0xc
  00411d15: 52                                              push   edx
  00411d16: 50                                              push   eax
  00411d17: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00411d1a: 50                                              push   eax
  00411d1b: eb 44                                           jmp    0x411d61
  00411d1d: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00411d20: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411d23: 51                                              push   ecx
  00411d24: 52                                              push   edx
  00411d25: 8b cb                                           mov    ecx,ebx
  00411d27: e8 c4 0f 01 00                                  call   0x422cf0
  00411d2c: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00411d2f: 50                                              push   eax
  00411d30: e8 2b 03 03 00                                  call   0x442060
  00411d35: 83 c4 04                                        add    esp,0x4
  00411d38: 8d 8f 90 00 00 00                               lea    ecx,[edi+0x90]
  00411d3e: e8 3d 0f 01 00                                  call   0x422c80
  00411d43: 50                                              push   eax
  00411d44: 8b cb                                           mov    ecx,ebx
  00411d46: e8 55 0f 01 00                                  call   0x422ca0
  00411d4b: 84 c0                                           test   al,al
  00411d4d: 74 1c                                           je     0x411d6b
  00411d4f: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411d52: 8b 87 98 00 00 00                               mov    eax,DWORD PTR [edi+0x98]
  00411d58: 8b 8f 94 00 00 00                               mov    ecx,DWORD PTR [edi+0x94]
  00411d5e: 52                                              push   edx
  00411d5f: 50                                              push   eax
  00411d60: 51                                              push   ecx
  00411d61: 8b cb                                           mov    ecx,ebx
  00411d63: e8 38 2b 01 00                                  call   0x4248a0
  00411d68: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00411d6b: 8d 87 a0 00 00 00                               lea    eax,[edi+0xa0]
  00411d71: 8d 9e a0 00 00 00                               lea    ebx,[esi+0xa0]
  00411d77: 3b d8                                           cmp    ebx,eax
  00411d79: 0f 84 50 01 00 00                               je     0x411ecf
  00411d7f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00411d82: 33 d2                                           xor    edx,edx
  00411d84: 3b ca                                           cmp    ecx,edx
  00411d86: 74 0d                                           je     0x411d95
  00411d88: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00411d8b: 2b c1                                           sub    eax,ecx
  00411d8d: c1 f8 02                                        sar    eax,0x2
  00411d90: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00411d93: 75 2f                                           jne    0x411dc4
  00411d95: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00411d98: 3b c2                                           cmp    eax,edx
  00411d9a: 74 1a                                           je     0x411db6
  00411d9c: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00411d9f: 51                                              push   ecx
  00411da0: 50                                              push   eax
  00411da1: 8b cb                                           mov    ecx,ebx
  00411da3: e8 48 0f 01 00                                  call   0x422cf0
  00411da8: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411dab: 52                                              push   edx
  00411dac: e8 af 02 03 00                                  call   0x442060
  00411db1: 83 c4 04                                        add    esp,0x4
  00411db4: 33 d2                                           xor    edx,edx
  00411db6: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00411db9: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00411dbc: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00411dbf: e9 0b 01 00 00                                  jmp    0x411ecf
  00411dc4: 8b cb                                           mov    ecx,ebx
  00411dc6: e8 b5 0e 01 00                                  call   0x422c80
  00411dcb: 39 45 08                                        cmp    DWORD PTR [ebp+0x8],eax
  00411dce: 77 3c                                           ja     0x411e0c
  00411dd0: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411dd3: 8b 87 a8 00 00 00                               mov    eax,DWORD PTR [edi+0xa8]
  00411dd9: 8b 8f a4 00 00 00                               mov    ecx,DWORD PTR [edi+0xa4]
  00411ddf: 52                                              push   edx
  00411de0: 50                                              push   eax
  00411de1: 51                                              push   ecx
  00411de2: e8 e9 2a 01 00                                  call   0x4248d0
  00411de7: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00411dea: 83 c4 0c                                        add    esp,0xc
  00411ded: 51                                              push   ecx
  00411dee: 50                                              push   eax
  00411def: 8b cb                                           mov    ecx,ebx
  00411df1: e8 fa 0e 01 00                                  call   0x422cf0
  00411df6: 8d 8f a0 00 00 00                               lea    ecx,[edi+0xa0]
  00411dfc: e8 7f 0e 01 00                                  call   0x422c80
  00411e01: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411e04: 8d 04 82                                        lea    eax,[edx+eax*4]
  00411e07: e9 c0 00 00 00                                  jmp    0x411ecc
  00411e0c: 8d 8f a0 00 00 00                               lea    ecx,[edi+0xa0]
  00411e12: e8 69 0e 01 00                                  call   0x422c80
  00411e17: 8b d0                                           mov    edx,eax
  00411e19: 8b cb                                           mov    ecx,ebx
  00411e1b: 89 55 08                                        mov    DWORD PTR [ebp+0x8],edx
  00411e1e: e8 3d 0e 01 00                                  call   0x422c60
  00411e23: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00411e26: 3b c8                                           cmp    ecx,eax
  00411e28: 77 4b                                           ja     0x411e75
  00411e2a: 8b 97 a4 00 00 00                               mov    edx,DWORD PTR [edi+0xa4]
  00411e30: 8d 9e a0 00 00 00                               lea    ebx,[esi+0xa0]
  00411e36: 8b cb                                           mov    ecx,ebx
  00411e38: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  00411e3b: e8 40 0e 01 00                                  call   0x422c80
  00411e40: 50                                              push   eax
  00411e41: 8d 45 08                                        lea    eax,[ebp+0x8]
  00411e44: 50                                              push   eax
  00411e45: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00411e48: e8 c3 0f 01 00                                  call   0x422e10
  00411e4d: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00411e50: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00411e53: 8b 87 a4 00 00 00                               mov    eax,DWORD PTR [edi+0xa4]
  00411e59: 51                                              push   ecx
  00411e5a: 52                                              push   edx
  00411e5b: 50                                              push   eax
  00411e5c: e8 6f 2a 01 00                                  call   0x4248d0
  00411e61: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00411e64: 8b 87 a8 00 00 00                               mov    eax,DWORD PTR [edi+0xa8]
  00411e6a: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00411e6d: 83 c4 0c                                        add    esp,0xc
  00411e70: 51                                              push   ecx
  00411e71: 50                                              push   eax
  00411e72: 52                                              push   edx
  00411e73: eb 50                                           jmp    0x411ec5
  00411e75: 8b 86 a8 00 00 00                               mov    eax,DWORD PTR [esi+0xa8]
  00411e7b: 8b 8e a4 00 00 00                               mov    ecx,DWORD PTR [esi+0xa4]
  00411e81: 8d 9e a0 00 00 00                               lea    ebx,[esi+0xa0]
  00411e87: 50                                              push   eax
  00411e88: 51                                              push   ecx
  00411e89: 8b cb                                           mov    ecx,ebx
  00411e8b: e8 60 0e 01 00                                  call   0x422cf0
  00411e90: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411e93: 52                                              push   edx
  00411e94: e8 c7 01 03 00                                  call   0x442060
  00411e99: 83 c4 04                                        add    esp,0x4
  00411e9c: 8d 8f a0 00 00 00                               lea    ecx,[edi+0xa0]
  00411ea2: e8 d9 0d 01 00                                  call   0x422c80
  00411ea7: 50                                              push   eax
  00411ea8: 8b cb                                           mov    ecx,ebx
  00411eaa: e8 f1 0d 01 00                                  call   0x422ca0
  00411eaf: 84 c0                                           test   al,al
  00411eb1: 74 1c                                           je     0x411ecf
  00411eb3: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00411eb6: 8b 87 a8 00 00 00                               mov    eax,DWORD PTR [edi+0xa8]
  00411ebc: 8b 8f a4 00 00 00                               mov    ecx,DWORD PTR [edi+0xa4]
  00411ec2: 52                                              push   edx
  00411ec3: 50                                              push   eax
  00411ec4: 51                                              push   ecx
  00411ec5: 8b cb                                           mov    ecx,ebx
  00411ec7: e8 d4 29 01 00                                  call   0x4248a0
  00411ecc: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00411ecf: 8d 87 b0 00 00 00                               lea    eax,[edi+0xb0]
  00411ed5: 50                                              push   eax
  00411ed6: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  00411edc: e8 7f 0a 01 00                                  call   0x422960
  00411ee1: 8b 8f c0 00 00 00                               mov    ecx,DWORD PTR [edi+0xc0]
  00411ee7: 89 8e c0 00 00 00                               mov    DWORD PTR [esi+0xc0],ecx
  00411eed: 8b 97 c4 00 00 00                               mov    edx,DWORD PTR [edi+0xc4]
  00411ef3: 89 96 c4 00 00 00                               mov    DWORD PTR [esi+0xc4],edx
  00411ef9: 8b 87 c8 00 00 00                               mov    eax,DWORD PTR [edi+0xc8]
  00411eff: 89 86 c8 00 00 00                               mov    DWORD PTR [esi+0xc8],eax
  00411f05: 8b 8f cc 00 00 00                               mov    ecx,DWORD PTR [edi+0xcc]
  00411f0b: 89 8e cc 00 00 00                               mov    DWORD PTR [esi+0xcc],ecx
  00411f11: 8b 97 d0 00 00 00                               mov    edx,DWORD PTR [edi+0xd0]
  00411f17: 89 96 d0 00 00 00                               mov    DWORD PTR [esi+0xd0],edx
  00411f1d: 8b 87 d4 00 00 00                               mov    eax,DWORD PTR [edi+0xd4]
  00411f23: 89 86 d4 00 00 00                               mov    DWORD PTR [esi+0xd4],eax
  00411f29: 8b 8f d8 00 00 00                               mov    ecx,DWORD PTR [edi+0xd8]
  00411f2f: 89 8e d8 00 00 00                               mov    DWORD PTR [esi+0xd8],ecx
  00411f35: 8b 97 dc 00 00 00                               mov    edx,DWORD PTR [edi+0xdc]
  00411f3b: 89 96 dc 00 00 00                               mov    DWORD PTR [esi+0xdc],edx
  00411f41: 8b 87 e0 00 00 00                               mov    eax,DWORD PTR [edi+0xe0]
  00411f47: 89 86 e0 00 00 00                               mov    DWORD PTR [esi+0xe0],eax
  00411f4d: 8b 8f e4 00 00 00                               mov    ecx,DWORD PTR [edi+0xe4]
  00411f53: 89 8e e4 00 00 00                               mov    DWORD PTR [esi+0xe4],ecx
  00411f59: 8b 97 e8 00 00 00                               mov    edx,DWORD PTR [edi+0xe8]
  00411f5f: 89 96 e8 00 00 00                               mov    DWORD PTR [esi+0xe8],edx
  00411f65: 8b 87 ec 00 00 00                               mov    eax,DWORD PTR [edi+0xec]
  00411f6b: 89 86 ec 00 00 00                               mov    DWORD PTR [esi+0xec],eax
  00411f71: 8b 8f f0 00 00 00                               mov    ecx,DWORD PTR [edi+0xf0]
  00411f77: 89 8e f0 00 00 00                               mov    DWORD PTR [esi+0xf0],ecx
  00411f7d: 8b 97 f4 00 00 00                               mov    edx,DWORD PTR [edi+0xf4]
  00411f83: 89 96 f4 00 00 00                               mov    DWORD PTR [esi+0xf4],edx
  00411f89: 8b 87 f8 00 00 00                               mov    eax,DWORD PTR [edi+0xf8]
  00411f8f: 89 86 f8 00 00 00                               mov    DWORD PTR [esi+0xf8],eax
  00411f95: 8b 8f fc 00 00 00                               mov    ecx,DWORD PTR [edi+0xfc]
  00411f9b: 89 8e fc 00 00 00                               mov    DWORD PTR [esi+0xfc],ecx
  00411fa1: 8b 97 00 01 00 00                               mov    edx,DWORD PTR [edi+0x100]
  00411fa7: 89 96 00 01 00 00                               mov    DWORD PTR [esi+0x100],edx
  00411fad: 8b 87 04 01 00 00                               mov    eax,DWORD PTR [edi+0x104]
  00411fb3: 89 86 04 01 00 00                               mov    DWORD PTR [esi+0x104],eax
  00411fb9: 8b 8f 08 01 00 00                               mov    ecx,DWORD PTR [edi+0x108]
  00411fbf: 89 8e 08 01 00 00                               mov    DWORD PTR [esi+0x108],ecx
  00411fc5: 66 8b 97 0c 01 00 00                            mov    dx,WORD PTR [edi+0x10c]
  00411fcc: 66 89 96 0c 01 00 00                            mov    WORD PTR [esi+0x10c],dx
  00411fd3: 66 8b 87 0e 01 00 00                            mov    ax,WORD PTR [edi+0x10e]
  00411fda: 66 89 86 0e 01 00 00                            mov    WORD PTR [esi+0x10e],ax
  00411fe1: 66 8b 8f 10 01 00 00                            mov    cx,WORD PTR [edi+0x110]
  00411fe8: 66 89 8e 10 01 00 00                            mov    WORD PTR [esi+0x110],cx
  00411fef: 66 8b 97 12 01 00 00                            mov    dx,WORD PTR [edi+0x112]
  00411ff6: 66 89 96 12 01 00 00                            mov    WORD PTR [esi+0x112],dx
  00411ffd: 66 8b 87 14 01 00 00                            mov    ax,WORD PTR [edi+0x114]
  00412004: 66 89 86 14 01 00 00                            mov    WORD PTR [esi+0x114],ax
  0041200b: 66 8b 8f 16 01 00 00                            mov    cx,WORD PTR [edi+0x116]
  00412012: 66 89 8e 16 01 00 00                            mov    WORD PTR [esi+0x116],cx
  00412019: 66 8b 97 18 01 00 00                            mov    dx,WORD PTR [edi+0x118]
  00412020: 66 89 96 18 01 00 00                            mov    WORD PTR [esi+0x118],dx
  00412027: 66 8b 87 1a 01 00 00                            mov    ax,WORD PTR [edi+0x11a]
  0041202e: 66 89 86 1a 01 00 00                            mov    WORD PTR [esi+0x11a],ax
  00412035: 8b 8f 1c 01 00 00                               mov    ecx,DWORD PTR [edi+0x11c]
  0041203b: 89 8e 1c 01 00 00                               mov    DWORD PTR [esi+0x11c],ecx
  00412041: 8b 97 20 01 00 00                               mov    edx,DWORD PTR [edi+0x120]
  00412047: 89 96 20 01 00 00                               mov    DWORD PTR [esi+0x120],edx
  0041204d: 8b 87 24 01 00 00                               mov    eax,DWORD PTR [edi+0x124]
  00412053: 89 86 24 01 00 00                               mov    DWORD PTR [esi+0x124],eax
  00412059: 8b 8f 28 01 00 00                               mov    ecx,DWORD PTR [edi+0x128]
  0041205f: 89 8e 28 01 00 00                               mov    DWORD PTR [esi+0x128],ecx
  00412065: 8b 97 2c 01 00 00                               mov    edx,DWORD PTR [edi+0x12c]
  0041206b: 89 96 2c 01 00 00                               mov    DWORD PTR [esi+0x12c],edx
  00412071: 8a 87 30 01 00 00                               mov    al,BYTE PTR [edi+0x130]
  00412077: 88 86 30 01 00 00                               mov    BYTE PTR [esi+0x130],al
  0041207d: 5f                                              pop    edi
  0041207e: 8b c6                                           mov    eax,esi
  00412080: 5e                                              pop    esi
  00412081: 5b                                              pop    ebx
  00412082: 8b e5                                           mov    esp,ebp
  00412084: 5d                                              pop    ebp
  00412085: c2 04 00                                        ret    0x4
  00425490: 55                                              push   ebp
  00425491: 8b ec                                           mov    ebp,esp
  00425493: 8b c1                                           mov    eax,ecx
  00425495: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00425498: 8a 11                                           mov    dl,BYTE PTR [ecx]
  0042549a: 88 10                                           mov    BYTE PTR [eax],dl
  0042549c: 5d                                              pop    ebp
  0042549d: c2 04 00                                        ret    0x4
  00434200: 8a 0d bc 21 51 00                               mov    cl,BYTE PTR ds:0x5121bc
  00434206: b0 01                                           mov    al,0x1
  00434208: 84 c8                                           test   al,cl
  0043420a: 75 13                                           jne    0x43421f
  0043420c: 0a c8                                           or     cl,al
  0043420e: 88 0d bc 21 51 00                               mov    BYTE PTR ds:0x5121bc,cl
  00434214: e8 f7 f8 ff ff                                  call   0x433b10
  00434219: a3 b8 21 51 00                                  mov    ds:0x5121b8,eax
  0043421e: c3                                              ret
  0043421f: a1 b8 21 51 00                                  mov    eax,ds:0x5121b8
  00434224: c3                                              ret
  00436ce0: 55                                              push   ebp
  00436ce1: 8b ec                                           mov    ebp,esp
  00436ce3: 51                                              push   ecx
  00436ce4: 56                                              push   esi
  00436ce5: 57                                              push   edi
  00436ce6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00436ce9: 85 ff                                           test   edi,edi
  00436ceb: 66 8b 47 04                                     mov    ax,WORD PTR [edi+0x4]
  00436cef: 8b f1                                           mov    esi,ecx
  00436cf1: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  00436cf4: 66 89 46 04                                     mov    WORD PTR [esi+0x4],ax
  00436cf8: 74 05                                           je     0x436cff
  00436cfa: 83 c7 28                                        add    edi,0x28
  00436cfd: eb 02                                           jmp    0x436d01
  00436cff: 33 ff                                           xor    edi,edi
  00436d01: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00436d03: 83 c6 28                                        add    esi,0x28
  00436d06: 89 0e                                           mov    DWORD PTR [esi],ecx
  00436d08: 66 8b 57 04                                     mov    dx,WORD PTR [edi+0x4]
  00436d0c: 66 89 56 04                                     mov    WORD PTR [esi+0x4],dx
  00436d10: 66 8b 47 06                                     mov    ax,WORD PTR [edi+0x6]
  00436d14: 66 89 46 06                                     mov    WORD PTR [esi+0x6],ax
  00436d18: 8a 4f 08                                        mov    cl,BYTE PTR [edi+0x8]
  00436d1b: 88 4e 08                                        mov    BYTE PTR [esi+0x8],cl
  00436d1e: 66 8b 57 0a                                     mov    dx,WORD PTR [edi+0xa]
  00436d22: 66 89 56 0a                                     mov    WORD PTR [esi+0xa],dx
  00436d26: 66 8b 47 0c                                     mov    ax,WORD PTR [edi+0xc]
  00436d2a: 66 89 46 0c                                     mov    WORD PTR [esi+0xc],ax
  00436d2e: 66 8b 4f 0e                                     mov    cx,WORD PTR [edi+0xe]
  00436d32: 66 89 4e 0e                                     mov    WORD PTR [esi+0xe],cx
  00436d36: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  00436d39: 89 56 10                                        mov    DWORD PTR [esi+0x10],edx
  00436d3c: 8b 47 14                                        mov    eax,DWORD PTR [edi+0x14]
  00436d3f: 89 46 14                                        mov    DWORD PTR [esi+0x14],eax
  00436d42: 8b 4f 18                                        mov    ecx,DWORD PTR [edi+0x18]
  00436d45: 89 4e 18                                        mov    DWORD PTR [esi+0x18],ecx
  00436d48: 8a 57 1c                                        mov    dl,BYTE PTR [edi+0x1c]
  00436d4b: 88 56 1c                                        mov    BYTE PTR [esi+0x1c],dl
  00436d4e: 8a 47 1d                                        mov    al,BYTE PTR [edi+0x1d]
  00436d51: 88 46 1d                                        mov    BYTE PTR [esi+0x1d],al
  00436d54: 8a 4f 1e                                        mov    cl,BYTE PTR [edi+0x1e]
  00436d57: 88 4e 1e                                        mov    BYTE PTR [esi+0x1e],cl
  00436d5a: 8a 57 1f                                        mov    dl,BYTE PTR [edi+0x1f]
  00436d5d: 88 56 1f                                        mov    BYTE PTR [esi+0x1f],dl
  00436d60: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00436d65: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00436d67: 53                                              push   ebx
  00436d68: 51                                              push   ecx
  00436d69: 6a 00                                           push   0x0
  00436d6b: 8d 57 20                                        lea    edx,[edi+0x20]
  00436d6e: 52                                              push   edx
  00436d6f: 8d 4e 20                                        lea    ecx,[esi+0x20]
  00436d72: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00436d78: 8d 47 30                                        lea    eax,[edi+0x30]
  00436d7b: 8b 10                                           mov    edx,DWORD PTR [eax]
  00436d7d: 8d 4e 30                                        lea    ecx,[esi+0x30]
  00436d80: 89 11                                           mov    DWORD PTR [ecx],edx
  00436d82: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00436d85: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00436d88: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  00436d8b: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00436d8e: 8b 40 0c                                        mov    eax,DWORD PTR [eax+0xc]
  00436d91: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  00436d94: 8d 5f 40                                        lea    ebx,[edi+0x40]
  00436d97: 8d 4e 40                                        lea    ecx,[esi+0x40]
  00436d9a: 53                                              push   ebx
  00436d9b: e8 70 14 00 00                                  call   0x438210
  00436da0: 8d 4b 70                                        lea    ecx,[ebx+0x70]
  00436da3: 51                                              push   ecx
  00436da4: 8d 8e b0 00 00 00                               lea    ecx,[esi+0xb0]
  00436daa: e8 61 14 00 00                                  call   0x438210
  00436daf: 66 8b 93 e0 00 00 00                            mov    dx,WORD PTR [ebx+0xe0]
  00436db6: 66 89 96 20 01 00 00                            mov    WORD PTR [esi+0x120],dx
  00436dbd: 66 8b 83 e2 00 00 00                            mov    ax,WORD PTR [ebx+0xe2]
  00436dc4: 66 89 86 22 01 00 00                            mov    WORD PTR [esi+0x122],ax
  00436dcb: 66 8b 8b e4 00 00 00                            mov    cx,WORD PTR [ebx+0xe4]
  00436dd2: 66 89 8e 24 01 00 00                            mov    WORD PTR [esi+0x124],cx
  00436dd9: 8a 93 e6 00 00 00                               mov    dl,BYTE PTR [ebx+0xe6]
  00436ddf: 88 96 26 01 00 00                               mov    BYTE PTR [esi+0x126],dl
  00436de5: 8a 83 e7 00 00 00                               mov    al,BYTE PTR [ebx+0xe7]
  00436deb: 88 86 27 01 00 00                               mov    BYTE PTR [esi+0x127],al
  00436df1: 8b 8f 28 01 00 00                               mov    ecx,DWORD PTR [edi+0x128]
  00436df7: 89 8e 28 01 00 00                               mov    DWORD PTR [esi+0x128],ecx
  00436dfd: 8b 97 2c 01 00 00                               mov    edx,DWORD PTR [edi+0x12c]
  00436e03: 89 96 2c 01 00 00                               mov    DWORD PTR [esi+0x12c],edx
  00436e09: 8d 87 30 01 00 00                               lea    eax,[edi+0x130]
  00436e0f: 8b 10                                           mov    edx,DWORD PTR [eax]
  00436e11: 8d 8e 30 01 00 00                               lea    ecx,[esi+0x130]
  00436e17: 89 11                                           mov    DWORD PTR [ecx],edx
  00436e19: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00436e1c: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00436e1f: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  00436e22: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00436e25: 8b 40 0c                                        mov    eax,DWORD PTR [eax+0xc]
  00436e28: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  00436e2b: 8d 8f 40 01 00 00                               lea    ecx,[edi+0x140]
  00436e31: 51                                              push   ecx
  00436e32: 8d 8e 40 01 00 00                               lea    ecx,[esi+0x140]
  00436e38: e8 09 ac 09 00                                  call   0x4d1a46
  00436e3d: 8d 9f 44 01 00 00                               lea    ebx,[edi+0x144]
  00436e43: 8d 8e 44 01 00 00                               lea    ecx,[esi+0x144]
  00436e49: 53                                              push   ebx
  00436e4a: e8 91 05 00 00                                  call   0x4373e0
  00436e4f: 8b 53 44                                        mov    edx,DWORD PTR [ebx+0x44]
  00436e52: 89 96 88 01 00 00                               mov    DWORD PTR [esi+0x188],edx
  00436e58: 8b 43 48                                        mov    eax,DWORD PTR [ebx+0x48]
  00436e5b: 89 86 8c 01 00 00                               mov    DWORD PTR [esi+0x18c],eax
  00436e61: 8b 4b 4c                                        mov    ecx,DWORD PTR [ebx+0x4c]
  00436e64: 89 8e 90 01 00 00                               mov    DWORD PTR [esi+0x190],ecx
  00436e6a: 8b 97 94 01 00 00                               mov    edx,DWORD PTR [edi+0x194]
  00436e70: 8d 87 98 01 00 00                               lea    eax,[edi+0x198]
  00436e76: 50                                              push   eax
  00436e77: 8d 8e 98 01 00 00                               lea    ecx,[esi+0x198]
  00436e7d: 89 96 94 01 00 00                               mov    DWORD PTR [esi+0x194],edx
  00436e83: e8 38 04 00 00                                  call   0x4372c0
  00436e88: 8d 8f dc 01 00 00                               lea    ecx,[edi+0x1dc]
  00436e8e: 51                                              push   ecx
  00436e8f: 8d 8e dc 01 00 00                               lea    ecx,[esi+0x1dc]
  00436e95: e8 86 04 00 00                                  call   0x437320
  00436e9a: 8d 86 20 02 00 00                               lea    eax,[esi+0x220]
  00436ea0: 2b fe                                           sub    edi,esi
  00436ea2: b9 04 00 00 00                                  mov    ecx,0x4
  00436ea7: 5b                                              pop    ebx
  00436ea8: 66 8b 14 07                                     mov    dx,WORD PTR [edi+eax*1]
  00436eac: 66 89 10                                        mov    WORD PTR [eax],dx
  00436eaf: 83 c0 02                                        add    eax,0x2
  00436eb2: 49                                              dec    ecx
  00436eb3: 75 f3                                           jne    0x436ea8
  00436eb5: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436eb8: 85 c0                                           test   eax,eax
  00436eba: 74 05                                           je     0x436ec1
  00436ebc: 8d 48 08                                        lea    ecx,[eax+0x8]
  00436ebf: eb 02                                           jmp    0x436ec3
  00436ec1: 33 c9                                           xor    ecx,ecx
  00436ec3: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00436ec6: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00436ec9: 8d 71 08                                        lea    esi,[ecx+0x8]
  00436ecc: 8d 78 10                                        lea    edi,[eax+0x10]
  00436ecf: b9 06 00 00 00                                  mov    ecx,0x6
  00436ed4: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  00436ed7: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00436ed9: 5f                                              pop    edi
  00436eda: 5e                                              pop    esi
  00436edb: 8b e5                                           mov    esp,ebp
  00436edd: 5d                                              pop    ebp
  00436ede: c2 04 00                                        ret    0x4
  00437470: 55                                              push   ebp
  00437471: 8b ec                                           mov    ebp,esp
  00437473: 8b c1                                           mov    eax,ecx
  00437475: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00437478: 8a 11                                           mov    dl,BYTE PTR [ecx]
  0043747a: 88 10                                           mov    BYTE PTR [eax],dl
  0043747c: 5d                                              pop    ebp
  0043747d: c2 04 00                                        ret    0x4
  00438210: 55                                              push   ebp
  00438211: 8b ec                                           mov    ebp,esp
  00438213: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00438216: 53                                              push   ebx
  00438217: 56                                              push   esi
  00438218: 8b d9                                           mov    ebx,ecx
  0043821a: 57                                              push   edi
  0043821b: 8d 70 08                                        lea    esi,[eax+0x8]
  0043821e: 8d 7b 08                                        lea    edi,[ebx+0x8]
  00438221: b9 08 00 00 00                                  mov    ecx,0x8
  00438226: 83 c0 28                                        add    eax,0x28
  00438229: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043822b: 50                                              push   eax
  0043822c: 8d 4b 28                                        lea    ecx,[ebx+0x28]
  0043822f: e8 12 98 09 00                                  call   0x4d1a46
  00438234: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00438237: 8b 48 30                                        mov    ecx,DWORD PTR [eax+0x30]
  0043823a: 89 4b 30                                        mov    DWORD PTR [ebx+0x30],ecx
  0043823d: 8d 70 34                                        lea    esi,[eax+0x34]
  00438240: 8d 7b 34                                        lea    edi,[ebx+0x34]
  00438243: b9 06 00 00 00                                  mov    ecx,0x6
  00438248: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043824a: 8b 50 4c                                        mov    edx,DWORD PTR [eax+0x4c]
  0043824d: 89 53 4c                                        mov    DWORD PTR [ebx+0x4c],edx
  00438250: 8b 48 50                                        mov    ecx,DWORD PTR [eax+0x50]
  00438253: 89 4b 50                                        mov    DWORD PTR [ebx+0x50],ecx
  00438256: 8b 50 54                                        mov    edx,DWORD PTR [eax+0x54]
  00438259: 89 53 54                                        mov    DWORD PTR [ebx+0x54],edx
  0043825c: 8b 48 58                                        mov    ecx,DWORD PTR [eax+0x58]
  0043825f: 89 4b 58                                        mov    DWORD PTR [ebx+0x58],ecx
  00438262: 8b 50 5c                                        mov    edx,DWORD PTR [eax+0x5c]
  00438265: 89 53 5c                                        mov    DWORD PTR [ebx+0x5c],edx
  00438268: 8a 48 60                                        mov    cl,BYTE PTR [eax+0x60]
  0043826b: 88 4b 60                                        mov    BYTE PTR [ebx+0x60],cl
  0043826e: 8b 50 64                                        mov    edx,DWORD PTR [eax+0x64]
  00438271: 89 53 64                                        mov    DWORD PTR [ebx+0x64],edx
  00438274: 8b 48 68                                        mov    ecx,DWORD PTR [eax+0x68]
  00438277: 89 4b 68                                        mov    DWORD PTR [ebx+0x68],ecx
  0043827a: 8b 50 6c                                        mov    edx,DWORD PTR [eax+0x6c]
  0043827d: 5f                                              pop    edi
  0043827e: 5e                                              pop    esi
  0043827f: 89 53 6c                                        mov    DWORD PTR [ebx+0x6c],edx
  00438282: 8b c3                                           mov    eax,ebx
  00438284: 5b                                              pop    ebx
  00438285: 5d                                              pop    ebp
  00438286: c2 04 00                                        ret    0x4
  0043aca0: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  0043aca3: c3                                              ret
  0043aee0: 55                                              push   ebp
  0043aee1: 8b ec                                           mov    ebp,esp
  0043aee3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043aee6: 50                                              push   eax
  0043aee7: e8 74 71 00 00                                  call   0x442060
  0043aeec: 83 c4 04                                        add    esp,0x4
  0043aeef: 5d                                              pop    ebp
  0043aef0: c3                                              ret
  0043df30: 55                                              push   ebp
  0043df31: 8b ec                                           mov    ebp,esp
  0043df33: 8b c1                                           mov    eax,ecx
  0043df35: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043df38: 8a 11                                           mov    dl,BYTE PTR [ecx]
  0043df3a: 88 10                                           mov    BYTE PTR [eax],dl
  0043df3c: 5d                                              pop    ebp
  0043df3d: c2 04 00                                        ret    0x4
  0043df40: 55                                              push   ebp
  0043df41: 8b ec                                           mov    ebp,esp
  0043df43: 6a ff                                           push   0xffffffff
  0043df45: 68 73 5a 4d 00                                  push   0x4d5a73
  0043df4a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0043df50: 50                                              push   eax
  0043df51: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0043df58: 81 ec 14 01 00 00                               sub    esp,0x114
  0043df5e: 53                                              push   ebx
  0043df5f: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  0043df65: e8 26 b2 01 00                                  call   0x459190
  0043df6a: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0043df6d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0043df74: e8 27 19 09 00                                  call   0x4cf8a0
  0043df79: 68 8c 34 50 00                                  push   0x50348c
  0043df7e: 68 02 00 00 80                                  push   0x80000002
  0043df83: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  0043df89: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0043df8d: e8 7e b2 01 00                                  call   0x459210
  0043df92: 68 58 13 51 00                                  push   0x511358
  0043df97: 68 64 34 50 00                                  push   0x503464
  0043df9c: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  0043dfa2: e8 09 b3 01 00                                  call   0x4592b0
  0043dfa7: 50                                              push   eax
  0043dfa8: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0043dfab: e8 00 1c 09 00                                  call   0x4cfbb0
  0043dfb0: 33 db                                           xor    ebx,ebx
  0043dfb2: 8a dc                                           mov    bl,ah
  0043dfb4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0043dfb7: 80 e3 01                                        and    bl,0x1
  0043dfba: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0043dfbe: e8 fd 18 09 00                                  call   0x4cf8c0
  0043dfc3: 8d 8d e0 fe ff ff                               lea    ecx,[ebp-0x120]
  0043dfc9: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0043dfd0: e8 cb b1 01 00                                  call   0x4591a0
  0043dfd5: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0043dfd8: 8a c3                                           mov    al,bl
  0043dfda: 5b                                              pop    ebx
  0043dfdb: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0043dfe2: 8b e5                                           mov    esp,ebp
  0043dfe4: 5d                                              pop    ebp
  0043dfe5: c3                                              ret
  0043dff0: 55                                              push   ebp
  0043dff1: 8b ec                                           mov    ebp,esp
  0043dff3: 8b c1                                           mov    eax,ecx
  0043dff5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043dff8: 56                                              push   esi
  0043dff9: 8b 31                                           mov    esi,DWORD PTR [ecx]
  0043dffb: 8b d0                                           mov    edx,eax
  0043dffd: 89 32                                           mov    DWORD PTR [edx],esi
  0043dfff: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0043e002: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  0043e005: 8b 71 08                                        mov    esi,DWORD PTR [ecx+0x8]
  0043e008: 89 72 08                                        mov    DWORD PTR [edx+0x8],esi
  0043e00b: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  0043e00e: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  0043e011: 5e                                              pop    esi
  0043e012: 5d                                              pop    ebp
  0043e013: c2 04 00                                        ret    0x4
  0043e060: 55                                              push   ebp
  0043e061: 8b ec                                           mov    ebp,esp
  0043e063: 56                                              push   esi
  0043e064: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0043e067: 57                                              push   edi
  0043e068: 8b c1                                           mov    eax,ecx
  0043e06a: b9 0e 00 00 00                                  mov    ecx,0xe
  0043e06f: 8b f8                                           mov    edi,eax
  0043e071: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043e073: 5f                                              pop    edi
  0043e074: 5e                                              pop    esi
  0043e075: 5d                                              pop    ebp
  0043e076: c2 04 00                                        ret    0x4
  0043e080: 55                                              push   ebp
  0043e081: 8b ec                                           mov    ebp,esp
  0043e083: 8b c1                                           mov    eax,ecx
  0043e085: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0043e088: 8a 11                                           mov    dl,BYTE PTR [ecx]
  0043e08a: 88 10                                           mov    BYTE PTR [eax],dl
  0043e08c: 5d                                              pop    ebp
  0043e08d: c2 04 00                                        ret    0x4
  00449910: 55                                              push   ebp
  00449911: 8b ec                                           mov    ebp,esp
  00449913: 53                                              push   ebx
  00449914: 56                                              push   esi
  00449915: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00449918: 66 8b 46 04                                     mov    ax,WORD PTR [esi+0x4]
  0044991c: 57                                              push   edi
  0044991d: 8b d9                                           mov    ebx,ecx
  0044991f: 8d 7e 08                                        lea    edi,[esi+0x8]
  00449922: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  00449925: 57                                              push   edi
  00449926: 66 89 43 04                                     mov    WORD PTR [ebx+0x4],ax
  0044992a: e8 b1 81 fc ff                                  call   0x411ae0
  0044992f: 66 8b 8f 38 01 00 00                            mov    cx,WORD PTR [edi+0x138]
  00449936: 66 89 8b 40 01 00 00                            mov    WORD PTR [ebx+0x140],cx
  0044993d: 8b 97 3c 01 00 00                               mov    edx,DWORD PTR [edi+0x13c]
  00449943: 89 93 44 01 00 00                               mov    DWORD PTR [ebx+0x144],edx
  00449949: 8b 86 4c 01 00 00                               mov    eax,DWORD PTR [esi+0x14c]
  0044994f: 89 83 4c 01 00 00                               mov    DWORD PTR [ebx+0x14c],eax
  00449955: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00449958: 81 c6 50 01 00 00                               add    esi,0x150
  0044995e: 8d bb 50 01 00 00                               lea    edi,[ebx+0x150]
  00449964: b9 06 00 00 00                                  mov    ecx,0x6
  00449969: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0044996b: 8b 88 68 01 00 00                               mov    ecx,DWORD PTR [eax+0x168]
  00449971: 89 8b 68 01 00 00                               mov    DWORD PTR [ebx+0x168],ecx
  00449977: 8b 90 6c 01 00 00                               mov    edx,DWORD PTR [eax+0x16c]
  0044997d: 89 93 6c 01 00 00                               mov    DWORD PTR [ebx+0x16c],edx
  00449983: 8b 88 70 01 00 00                               mov    ecx,DWORD PTR [eax+0x170]
  00449989: 89 8b 70 01 00 00                               mov    DWORD PTR [ebx+0x170],ecx
  0044998f: 8b 90 74 01 00 00                               mov    edx,DWORD PTR [eax+0x174]
  00449995: 89 93 74 01 00 00                               mov    DWORD PTR [ebx+0x174],edx
  0044999b: 8b 88 78 01 00 00                               mov    ecx,DWORD PTR [eax+0x178]
  004499a1: 89 8b 78 01 00 00                               mov    DWORD PTR [ebx+0x178],ecx
  004499a7: 8a 90 7c 01 00 00                               mov    dl,BYTE PTR [eax+0x17c]
  004499ad: 88 93 7c 01 00 00                               mov    BYTE PTR [ebx+0x17c],dl
  004499b3: 8b 88 80 01 00 00                               mov    ecx,DWORD PTR [eax+0x180]
  004499b9: 89 8b 80 01 00 00                               mov    DWORD PTR [ebx+0x180],ecx
  004499bf: 8b 90 84 01 00 00                               mov    edx,DWORD PTR [eax+0x184]
  004499c5: 89 93 84 01 00 00                               mov    DWORD PTR [ebx+0x184],edx
  004499cb: 8b 80 88 01 00 00                               mov    eax,DWORD PTR [eax+0x188]
  004499d1: 5f                                              pop    edi
  004499d2: 89 83 88 01 00 00                               mov    DWORD PTR [ebx+0x188],eax
  004499d8: 5e                                              pop    esi
  004499d9: 8b c3                                           mov    eax,ebx
  004499db: 5b                                              pop    ebx
  004499dc: 5d                                              pop    ebp
  004499dd: c2 04 00                                        ret    0x4
  004590c0: 55                                              push   ebp
  004590c1: 8b ec                                           mov    ebp,esp
  004590c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004590c6: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  004590c9: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004590cc: 6a 00                                           push   0x0
  004590ce: a3 d8 4c 51 00                                  mov    ds:0x514cd8,eax
  004590d3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004590d6: 52                                              push   edx
  004590d7: 50                                              push   eax
  004590d8: 89 0d dc 4c 51 00                               mov    DWORD PTR ds:0x514cdc,ecx
  004590de: e8 0d ff ff ff                                  call   0x458ff0
  004590e3: 83 c4 0c                                        add    esp,0xc
  004590e6: 5d                                              pop    ebp
  004590e7: c2 10 00                                        ret    0x10
  00459120: 55                                              push   ebp
  00459121: 8b ec                                           mov    ebp,esp
  00459123: 53                                              push   ebx
  00459124: 56                                              push   esi
  00459125: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00459128: 8b 06                                           mov    eax,DWORD PTR [esi]
  0045912a: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  0045912d: 57                                              push   edi
  0045912e: 33 ff                                           xor    edi,edi
  00459130: 85 c0                                           test   eax,eax
  00459132: 76 1a                                           jbe    0x45914e
  00459134: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00459137: 6a 01                                           push   0x1
  00459139: 40                                              inc    eax
  0045913a: 50                                              push   eax
  0045913b: 6a 01                                           push   0x1
  0045913d: e8 ae fe ff ff                                  call   0x458ff0
  00459142: 03 d8                                           add    ebx,eax
  00459144: 8b 06                                           mov    eax,DWORD PTR [esi]
  00459146: 83 c4 0c                                        add    esp,0xc
  00459149: 47                                              inc    edi
  0045914a: 3b f8                                           cmp    edi,eax
  0045914c: 72 e6                                           jb     0x459134
  0045914e: 5f                                              pop    edi
  0045914f: 5e                                              pop    esi
  00459150: 8b c3                                           mov    eax,ebx
  00459152: 5b                                              pop    ebx
  00459153: 5d                                              pop    ebp
  00459154: c2 04 00                                        ret    0x4
  0045a1f0: 55                                              push   ebp
  0045a1f1: 8b ec                                           mov    ebp,esp
  0045a1f3: 53                                              push   ebx
  0045a1f4: 56                                              push   esi
  0045a1f5: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0045a1f8: 66 8b 46 04                                     mov    ax,WORD PTR [esi+0x4]
  0045a1fc: 57                                              push   edi
  0045a1fd: 8b d9                                           mov    ebx,ecx
  0045a1ff: 8d 7e 08                                        lea    edi,[esi+0x8]
  0045a202: 8d 4b 08                                        lea    ecx,[ebx+0x8]
  0045a205: 57                                              push   edi
  0045a206: 66 89 43 04                                     mov    WORD PTR [ebx+0x4],ax
  0045a20a: e8 d1 78 fb ff                                  call   0x411ae0
  0045a20f: 66 8b 8f 38 01 00 00                            mov    cx,WORD PTR [edi+0x138]
  0045a216: 66 89 8b 40 01 00 00                            mov    WORD PTR [ebx+0x140],cx
  0045a21d: 8b 97 3c 01 00 00                               mov    edx,DWORD PTR [edi+0x13c]
  0045a223: 89 93 44 01 00 00                               mov    DWORD PTR [ebx+0x144],edx
  0045a229: 8b 86 4c 01 00 00                               mov    eax,DWORD PTR [esi+0x14c]
  0045a22f: 89 83 4c 01 00 00                               mov    DWORD PTR [ebx+0x14c],eax
  0045a235: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045a238: 81 c6 50 01 00 00                               add    esi,0x150
  0045a23e: 8d bb 50 01 00 00                               lea    edi,[ebx+0x150]
  0045a244: b9 06 00 00 00                                  mov    ecx,0x6
  0045a249: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0045a24b: 8b 88 68 01 00 00                               mov    ecx,DWORD PTR [eax+0x168]
  0045a251: 89 8b 68 01 00 00                               mov    DWORD PTR [ebx+0x168],ecx
  0045a257: 8b 90 6c 01 00 00                               mov    edx,DWORD PTR [eax+0x16c]
  0045a25d: 89 93 6c 01 00 00                               mov    DWORD PTR [ebx+0x16c],edx
  0045a263: 8b 88 70 01 00 00                               mov    ecx,DWORD PTR [eax+0x170]
  0045a269: 89 8b 70 01 00 00                               mov    DWORD PTR [ebx+0x170],ecx
  0045a26f: 8b 90 74 01 00 00                               mov    edx,DWORD PTR [eax+0x174]
  0045a275: 89 93 74 01 00 00                               mov    DWORD PTR [ebx+0x174],edx
  0045a27b: 8b 88 78 01 00 00                               mov    ecx,DWORD PTR [eax+0x178]
  0045a281: 89 8b 78 01 00 00                               mov    DWORD PTR [ebx+0x178],ecx
  0045a287: 8a 90 7c 01 00 00                               mov    dl,BYTE PTR [eax+0x17c]
  0045a28d: 88 93 7c 01 00 00                               mov    BYTE PTR [ebx+0x17c],dl
  0045a293: 8b 88 80 01 00 00                               mov    ecx,DWORD PTR [eax+0x180]
  0045a299: 89 8b 80 01 00 00                               mov    DWORD PTR [ebx+0x180],ecx
  0045a29f: 8b 90 84 01 00 00                               mov    edx,DWORD PTR [eax+0x184]
  0045a2a5: 89 93 84 01 00 00                               mov    DWORD PTR [ebx+0x184],edx
  0045a2ab: 8b 80 88 01 00 00                               mov    eax,DWORD PTR [eax+0x188]
  0045a2b1: 5f                                              pop    edi
  0045a2b2: 89 83 88 01 00 00                               mov    DWORD PTR [ebx+0x188],eax
  0045a2b8: 5e                                              pop    esi
  0045a2b9: 8b c3                                           mov    eax,ebx
  0045a2bb: 5b                                              pop    ebx
  0045a2bc: 5d                                              pop    ebp
  0045a2bd: c2 04 00                                        ret    0x4
  0045ff60: 55                                              push   ebp
  0045ff61: 8b ec                                           mov    ebp,esp
  0045ff63: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045ff66: 50                                              push   eax
  0045ff67: 83 c1 18                                        add    ecx,0x18
  0045ff6a: 51                                              push   ecx
  0045ff6b: e8 d0 db fd ff                                  call   0x43db40
  0045ff70: 83 c4 08                                        add    esp,0x8
  0045ff73: 5d                                              pop    ebp
  0045ff74: c2 04 00                                        ret    0x4
  00462380: 55                                              push   ebp
  00462381: 8b ec                                           mov    ebp,esp
  00462383: 81 ec 00 08 00 00                               sub    esp,0x800
  00462389: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0046238c: 25 ff ff 00 00                                  and    eax,0xffff
  00462391: 53                                              push   ebx
  00462392: 05 f0 d8 ff ff                                  add    eax,0xffffd8f0
  00462397: 3d 00 04 00 00                                  cmp    eax,0x400
  0046239c: 56                                              push   esi
  0046239d: 57                                              push   edi
  0046239e: 0f 8d 5f 04 00 00                               jge    0x462803
  004623a4: 8b 34 85 a4 4d 51 00                            mov    esi,DWORD PTR [eax*4+0x514da4]
  004623ab: 85 f6                                           test   esi,esi
  004623ad: 0f 84 50 04 00 00                               je     0x462803
  004623b3: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004623b6: 8b 17                                           mov    edx,DWORD PTR [edi]
  004623b8: 68 58 13 51 00                                  push   0x511358
  004623bd: 8b cf                                           mov    ecx,edi
  004623bf: c6 85 00 f8 ff ff 00                            mov    BYTE PTR [ebp-0x800],0x0
  004623c6: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  004623cc: 50                                              push   eax
  004623cd: 68 6d 1c 00 00                                  push   0x1c6d
  004623d2: e8 19 b6 fd ff                                  call   0x43d9f0
  004623d7: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004623da: 83 c4 0c                                        add    esp,0xc
  004623dd: 50                                              push   eax
  004623de: 8b cb                                           mov    ecx,ebx
  004623e0: e8 73 f6 06 00                                  call   0x4d1a58
  004623e5: 8b 96 38 03 00 00                               mov    edx,DWORD PTR [esi+0x338]
  004623eb: 32 c0                                           xor    al,al
  004623ed: 85 d2                                           test   edx,edx
  004623ef: b1 01                                           mov    cl,0x1
  004623f1: 74 3a                                           je     0x46242d
  004623f3: 8b 07                                           mov    eax,DWORD PTR [edi]
  004623f5: 52                                              push   edx
  004623f6: 68 58 13 51 00                                  push   0x511358
  004623fb: 8b cf                                           mov    ecx,edi
  004623fd: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  00462403: 50                                              push   eax
  00462404: 68 6e 1c 00 00                                  push   0x1c6e
  00462409: e8 e2 b5 fd ff                                  call   0x43d9f0
  0046240e: 83 c4 0c                                        add    esp,0xc
  00462411: 50                                              push   eax
  00462412: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  00462418: 51                                              push   ecx
  00462419: e8 22 15 fa ff                                  call   0x403940
  0046241e: 83 c4 0c                                        add    esp,0xc
  00462421: 50                                              push   eax
  00462422: 8b cb                                           mov    ecx,ebx
  00462424: e8 29 f6 06 00                                  call   0x4d1a52
  00462429: b0 01                                           mov    al,0x1
  0046242b: 32 c9                                           xor    cl,cl
  0046242d: 8b 96 48 03 00 00                               mov    edx,DWORD PTR [esi+0x348]
  00462433: 85 d2                                           test   edx,edx
  00462435: 74 50                                           je     0x462487
  00462437: 84 c0                                           test   al,al
  00462439: 74 0c                                           je     0x462447
  0046243b: 68 00 20 50 00                                  push   0x502000
  00462440: 8b cb                                           mov    ecx,ebx
  00462442: e8 0b f6 06 00                                  call   0x4d1a52
  00462447: 8b 96 48 03 00 00                               mov    edx,DWORD PTR [esi+0x348]
  0046244d: 8b 07                                           mov    eax,DWORD PTR [edi]
  0046244f: 52                                              push   edx
  00462450: 68 58 13 51 00                                  push   0x511358
  00462455: 8b cf                                           mov    ecx,edi
  00462457: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  0046245d: 50                                              push   eax
  0046245e: 68 72 1c 00 00                                  push   0x1c72
  00462463: e8 88 b5 fd ff                                  call   0x43d9f0
  00462468: 83 c4 0c                                        add    esp,0xc
  0046246b: 50                                              push   eax
  0046246c: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  00462472: 51                                              push   ecx
  00462473: e8 c8 14 fa ff                                  call   0x403940
  00462478: 83 c4 0c                                        add    esp,0xc
  0046247b: 50                                              push   eax
  0046247c: 8b cb                                           mov    ecx,ebx
  0046247e: e8 cf f5 06 00                                  call   0x4d1a52
  00462483: b0 01                                           mov    al,0x1
  00462485: 32 c9                                           xor    cl,cl
  00462487: 8b 96 4c 03 00 00                               mov    edx,DWORD PTR [esi+0x34c]
  0046248d: 85 d2                                           test   edx,edx
  0046248f: 74 50                                           je     0x4624e1
  00462491: 84 c0                                           test   al,al
  00462493: 74 0c                                           je     0x4624a1
  00462495: 68 00 20 50 00                                  push   0x502000
  0046249a: 8b cb                                           mov    ecx,ebx
  0046249c: e8 b1 f5 06 00                                  call   0x4d1a52
  004624a1: 8b 96 4c 03 00 00                               mov    edx,DWORD PTR [esi+0x34c]
  004624a7: 8b 07                                           mov    eax,DWORD PTR [edi]
  004624a9: 52                                              push   edx
  004624aa: 68 58 13 51 00                                  push   0x511358
  004624af: 8b cf                                           mov    ecx,edi
  004624b1: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  004624b7: 50                                              push   eax
  004624b8: 68 73 1c 00 00                                  push   0x1c73
  004624bd: e8 2e b5 fd ff                                  call   0x43d9f0
  004624c2: 83 c4 0c                                        add    esp,0xc
  004624c5: 50                                              push   eax
  004624c6: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  004624cc: 51                                              push   ecx
  004624cd: e8 6e 14 fa ff                                  call   0x403940
  004624d2: 83 c4 0c                                        add    esp,0xc
  004624d5: 50                                              push   eax
  004624d6: 8b cb                                           mov    ecx,ebx
  004624d8: e8 75 f5 06 00                                  call   0x4d1a52
  004624dd: b0 01                                           mov    al,0x1
  004624df: 32 c9                                           xor    cl,cl
  004624e1: 8b 96 a0 03 00 00                               mov    edx,DWORD PTR [esi+0x3a0]
  004624e7: 85 d2                                           test   edx,edx
  004624e9: 0f 84 8b 02 00 00                               je     0x46277a
  004624ef: 84 c0                                           test   al,al
  004624f1: 74 25                                           je     0x462518
  004624f3: 8b 17                                           mov    edx,DWORD PTR [edi]
  004624f5: 68 58 13 51 00                                  push   0x511358
  004624fa: 8b cf                                           mov    ecx,edi
  004624fc: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  00462502: 50                                              push   eax
  00462503: 68 74 1c 00 00                                  push   0x1c74
  00462508: e8 e3 b4 fd ff                                  call   0x43d9f0
  0046250d: 83 c4 0c                                        add    esp,0xc
  00462510: 50                                              push   eax
  00462511: 8b cb                                           mov    ecx,ebx
  00462513: e8 3a f5 06 00                                  call   0x4d1a52
  00462518: 83 be a0 03 00 00 01                            cmp    DWORD PTR [esi+0x3a0],0x1
  0046251f: 68 58 13 51 00                                  push   0x511358
  00462524: 7e 12                                           jle    0x462538
  00462526: 8b 07                                           mov    eax,DWORD PTR [edi]
  00462528: 8b cf                                           mov    ecx,edi
  0046252a: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  00462530: 50                                              push   eax
  00462531: 68 78 1c 00 00                                  push   0x1c78
  00462536: eb 10                                           jmp    0x462548
  00462538: 8b 17                                           mov    edx,DWORD PTR [edi]
  0046253a: 8b cf                                           mov    ecx,edi
  0046253c: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  00462542: 50                                              push   eax
  00462543: 68 79 1c 00 00                                  push   0x1c79
  00462548: e8 a3 b4 fd ff                                  call   0x43d9f0
  0046254d: 83 c4 0c                                        add    esp,0xc
  00462550: 50                                              push   eax
  00462551: 8b cb                                           mov    ecx,ebx
  00462553: e8 fa f4 06 00                                  call   0x4d1a52
  00462558: 8b 86 8c 03 00 00                               mov    eax,DWORD PTR [esi+0x38c]
  0046255e: 89 86 88 03 00 00                               mov    DWORD PTR [esi+0x388],eax
  00462564: 33 c0                                           xor    eax,eax
  00462566: 8b c8                                           mov    ecx,eax
  00462568: 3b c8                                           cmp    ecx,eax
  0046256a: 89 86 a8 03 00 00                               mov    DWORD PTR [esi+0x3a8],eax
  00462570: c6 86 9c 03 00 00 08                            mov    BYTE PTR [esi+0x39c],0x8
  00462577: 74 10                                           je     0x462589
  00462579: 8b 8e 88 03 00 00                               mov    ecx,DWORD PTR [esi+0x388]
  0046257f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00462581: 89 96 88 03 00 00                               mov    DWORD PTR [esi+0x388],edx
  00462587: eb 0a                                           jmp    0x462593
  00462589: c7 86 a8 03 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x3a8],0x1
  00462593: 39 86 88 03 00 00                               cmp    DWORD PTR [esi+0x388],eax
  00462599: 0f 85 b3 00 00 00                               jne    0x462652
  0046259f: 39 86 a8 03 00 00                               cmp    DWORD PTR [esi+0x3a8],eax
  004625a5: 74 07                                           je     0x4625ae
  004625a7: c6 86 9c 03 00 00 07                            mov    BYTE PTR [esi+0x39c],0x7
  004625ae: 89 86 a8 03 00 00                               mov    DWORD PTR [esi+0x3a8],eax
  004625b4: 68 48 04 50 00                                  push   0x500448
  004625b9: 8b cb                                           mov    ecx,ebx
  004625bb: e8 92 f4 06 00                                  call   0x4d1a52
  004625c0: 8b 17                                           mov    edx,DWORD PTR [edi]
  004625c2: 8b cf                                           mov    ecx,edi
  004625c4: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  004625ca: 8b 8e 38 03 00 00                               mov    ecx,DWORD PTR [esi+0x338]
  004625d0: 25 ff ff 00 00                                  and    eax,0xffff
  004625d5: 3b c8                                           cmp    ecx,eax
  004625d7: 0f 8f 26 02 00 00                               jg     0x462803
  004625dd: 8b cf                                           mov    ecx,edi
  004625df: e8 4c bc 02 00                                  call   0x48e230
  004625e4: 8b 8e 48 03 00 00                               mov    ecx,DWORD PTR [esi+0x348]
  004625ea: 25 ff ff 00 00                                  and    eax,0xffff
  004625ef: 3b c8                                           cmp    ecx,eax
  004625f1: 0f 8f 0c 02 00 00                               jg     0x462803
  004625f7: 8b cf                                           mov    ecx,edi
  004625f9: e8 72 bc 02 00                                  call   0x48e270
  004625fe: 8b 8e 4c 03 00 00                               mov    ecx,DWORD PTR [esi+0x34c]
  00462604: 25 ff ff 00 00                                  and    eax,0xffff
  00462609: 3b c8                                           cmp    ecx,eax
  0046260b: 0f 8f f2 01 00 00                               jg     0x462803
  00462611: 8b 86 68 03 00 00                               mov    eax,DWORD PTR [esi+0x368]
  00462617: 8d 9e 68 03 00 00                               lea    ebx,[esi+0x368]
  0046261d: 8b cb                                           mov    ecx,ebx
  0046261f: c7 45 10 01 00 00 00                            mov    DWORD PTR [ebp+0x10],0x1
  00462626: ff 50 04                                        call   DWORD PTR [eax+0x4]
  00462629: 8b 4b 24                                        mov    ecx,DWORD PTR [ebx+0x24]
  0046262c: 89 4b 20                                        mov    DWORD PTR [ebx+0x20],ecx
  0046262f: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  00462636: c6 43 34 08                                     mov    BYTE PTR [ebx+0x34],0x8
  0046263a: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  0046263d: 85 c0                                           test   eax,eax
  0046263f: 0f 84 60 01 00 00                               je     0x4627a5
  00462645: 8b 53 20                                        mov    edx,DWORD PTR [ebx+0x20]
  00462648: 8b 02                                           mov    eax,DWORD PTR [edx]
  0046264a: 89 43 20                                        mov    DWORD PTR [ebx+0x20],eax
  0046264d: e9 5a 01 00 00                                  jmp    0x4627ac
  00462652: 8b 86 88 03 00 00                               mov    eax,DWORD PTR [esi+0x388]
  00462658: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0046265b: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0046265d: 50                                              push   eax
  0046265e: e8 cd fb ff ff                                  call   0x462230
  00462663: 83 c4 04                                        add    esp,0x4
  00462666: 85 c0                                           test   eax,eax
  00462668: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0046266b: 74 4d                                           je     0x4626ba
  0046266d: 8b 17                                           mov    edx,DWORD PTR [edi]
  0046266f: 8b cf                                           mov    ecx,edi
  00462671: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  00462677: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0046267a: 8b 91 00 04 00 00                               mov    edx,DWORD PTR [ecx+0x400]
  00462680: 85 d2                                           test   edx,edx
  00462682: 75 0f                                           jne    0x462693
  00462684: b8 58 13 51 00                                  mov    eax,0x511358
  00462689: 50                                              push   eax
  0046268a: 8b cb                                           mov    ecx,ebx
  0046268c: e8 c1 f3 06 00                                  call   0x4d1a52
  00462691: eb 27                                           jmp    0x4626ba
  00462693: 8b 89 fc 03 00 00                               mov    ecx,DWORD PTR [ecx+0x3fc]
  00462699: 85 c9                                           test   ecx,ecx
  0046269b: 75 06                                           jne    0x4626a3
  0046269d: 8b 0d d8 e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4d8
  004626a3: 50                                              push   eax
  004626a4: 51                                              push   ecx
  004626a5: e8 96 b4 fd ff                                  call   0x43db40
  004626aa: 83 c4 08                                        add    esp,0x8
  004626ad: 50                                              push   eax
  004626ae: 8b cb                                           mov    ecx,ebx
  004626b0: e8 9d f3 06 00                                  call   0x4d1a52
  004626b5: eb 03                                           jmp    0x4626ba
  004626b7: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004626ba: 8b 86 a8 03 00 00                               mov    eax,DWORD PTR [esi+0x3a8]
  004626c0: 85 c0                                           test   eax,eax
  004626c2: 74 10                                           je     0x4626d4
  004626c4: 8b 86 88 03 00 00                               mov    eax,DWORD PTR [esi+0x388]
  004626ca: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004626cc: 89 8e 88 03 00 00                               mov    DWORD PTR [esi+0x388],ecx
  004626d2: eb 0a                                           jmp    0x4626de
  004626d4: c7 86 a8 03 00 00 01 00 00 00                   mov    DWORD PTR [esi+0x3a8],0x1
  004626de: 8b 86 88 03 00 00                               mov    eax,DWORD PTR [esi+0x388]
  004626e4: 85 c0                                           test   eax,eax
  004626e6: 74 72                                           je     0x46275a
  004626e8: 68 00 20 50 00                                  push   0x502000
  004626ed: 8b cb                                           mov    ecx,ebx
  004626ef: e8 5e f3 06 00                                  call   0x4d1a52
  004626f4: 8b 96 88 03 00 00                               mov    edx,DWORD PTR [esi+0x388]
  004626fa: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004626fd: 8b 00                                           mov    eax,DWORD PTR [eax]
  004626ff: 50                                              push   eax
  00462700: e8 2b fb ff ff                                  call   0x462230
  00462705: 8b d8                                           mov    ebx,eax
  00462707: 83 c4 04                                        add    esp,0x4
  0046270a: 85 db                                           test   ebx,ebx
  0046270c: 74 a9                                           je     0x4626b7
  0046270e: 8b 17                                           mov    edx,DWORD PTR [edi]
  00462710: 8b cf                                           mov    ecx,edi
  00462712: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  00462718: 8b 8b 00 04 00 00                               mov    ecx,DWORD PTR [ebx+0x400]
  0046271e: 85 c9                                           test   ecx,ecx
  00462720: 75 10                                           jne    0x462732
  00462722: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00462725: b8 58 13 51 00                                  mov    eax,0x511358
  0046272a: 50                                              push   eax
  0046272b: e8 22 f3 06 00                                  call   0x4d1a52
  00462730: eb 85                                           jmp    0x4626b7
  00462732: 8b 9b fc 03 00 00                               mov    ebx,DWORD PTR [ebx+0x3fc]
  00462738: 85 db                                           test   ebx,ebx
  0046273a: 75 06                                           jne    0x462742
  0046273c: 8b 1d d8 e4 4d 00                               mov    ebx,DWORD PTR ds:0x4de4d8
  00462742: 50                                              push   eax
  00462743: 53                                              push   ebx
  00462744: e8 f7 b3 fd ff                                  call   0x43db40
  00462749: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0046274c: 83 c4 08                                        add    esp,0x8
  0046274f: 50                                              push   eax
  00462750: e8 fd f2 06 00                                  call   0x4d1a52
  00462755: e9 5d ff ff ff                                  jmp    0x4626b7
  0046275a: 8b 86 a8 03 00 00                               mov    eax,DWORD PTR [esi+0x3a8]
  00462760: 85 c0                                           test   eax,eax
  00462762: 74 07                                           je     0x46276b
  00462764: c6 86 9c 03 00 00 07                            mov    BYTE PTR [esi+0x39c],0x7
  0046276b: c7 86 a8 03 00 00 00 00 00 00                   mov    DWORD PTR [esi+0x3a8],0x0
  00462775: e9 3a fe ff ff                                  jmp    0x4625b4
  0046277a: 84 c9                                           test   cl,cl
  0046277c: 0f 84 32 fe ff ff                               je     0x4625b4
  00462782: 8b 07                                           mov    eax,DWORD PTR [edi]
  00462784: 68 58 13 51 00                                  push   0x511358
  00462789: 8b cf                                           mov    ecx,edi
  0046278b: ff 90 94 01 00 00                               call   DWORD PTR [eax+0x194]
  00462791: 50                                              push   eax
  00462792: 68 76 1c 00 00                                  push   0x1c76
  00462797: e8 54 b2 fd ff                                  call   0x43d9f0
  0046279c: 83 c4 0c                                        add    esp,0xc
  0046279f: 50                                              push   eax
  004627a0: e9 14 fe ff ff                                  jmp    0x4625b9
  004627a5: c7 43 40 01 00 00 00                            mov    DWORD PTR [ebx+0x40],0x1
  004627ac: 8b 43 20                                        mov    eax,DWORD PTR [ebx+0x20]
  004627af: 85 c0                                           test   eax,eax
  004627b1: 74 2d                                           je     0x4627e0
  004627b3: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004627b6: 85 c0                                           test   eax,eax
  004627b8: 74 38                                           je     0x4627f2
  004627ba: 8b 8e 88 03 00 00                               mov    ecx,DWORD PTR [esi+0x388]
  004627c0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004627c3: 8b 02                                           mov    eax,DWORD PTR [edx]
  004627c5: 8b 17                                           mov    edx,DWORD PTR [edi]
  004627c7: 50                                              push   eax
  004627c8: 8b cf                                           mov    ecx,edi
  004627ca: ff 92 70 01 00 00                               call   DWORD PTR [edx+0x170]
  004627d0: 85 c0                                           test   eax,eax
  004627d2: 0f 85 62 fe ff ff                               jne    0x46263a
  004627d8: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004627db: e9 5a fe ff ff                                  jmp    0x46263a
  004627e0: 8b 43 40                                        mov    eax,DWORD PTR [ebx+0x40]
  004627e3: 85 c0                                           test   eax,eax
  004627e5: 74 04                                           je     0x4627eb
  004627e7: c6 43 34 07                                     mov    BYTE PTR [ebx+0x34],0x7
  004627eb: c7 43 40 00 00 00 00                            mov    DWORD PTR [ebx+0x40],0x0
  004627f2: 8b 03                                           mov    eax,DWORD PTR [ebx]
  004627f4: 8b cb                                           mov    ecx,ebx
  004627f6: ff 50 08                                        call   DWORD PTR [eax+0x8]
  004627f9: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004627fc: 5f                                              pop    edi
  004627fd: 5e                                              pop    esi
  004627fe: 5b                                              pop    ebx
  004627ff: 8b e5                                           mov    esp,ebp
  00462801: 5d                                              pop    ebp
  00462802: c3                                              ret
  00462803: 5f                                              pop    edi
  00462804: 5e                                              pop    esi
  00462805: 33 c0                                           xor    eax,eax
  00462807: 5b                                              pop    ebx
  00462808: 8b e5                                           mov    esp,ebp
  0046280a: 5d                                              pop    ebp
  0046280b: c3                                              ret
  00462cf0: 55                                              push   ebp
  00462cf1: 8b ec                                           mov    ebp,esp
  00462cf3: 83 ec 08                                        sub    esp,0x8
  00462cf6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00462cf9: 53                                              push   ebx
  00462cfa: 56                                              push   esi
  00462cfb: 8d 58 04                                        lea    ebx,[eax+0x4]
  00462cfe: 8d 71 04                                        lea    esi,[ecx+0x4]
  00462d01: 3b f3                                           cmp    esi,ebx
  00462d03: 57                                              push   edi
  00462d04: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00462d07: 0f 84 17 01 00 00                               je     0x462e24
  00462d0d: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00462d10: 33 c9                                           xor    ecx,ecx
  00462d12: 3b c1                                           cmp    eax,ecx
  00462d14: 74 09                                           je     0x462d1f
  00462d16: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00462d19: 8b d7                                           mov    edx,edi
  00462d1b: 2b d0                                           sub    edx,eax
  00462d1d: 75 2f                                           jne    0x462d4e
  00462d1f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00462d22: 3b c1                                           cmp    eax,ecx
  00462d24: 74 1a                                           je     0x462d40
  00462d26: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00462d29: 51                                              push   ecx
  00462d2a: 50                                              push   eax
  00462d2b: 8b ce                                           mov    ecx,esi
  00462d2d: e8 0e 01 00 00                                  call   0x462e40
  00462d32: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00462d35: 52                                              push   edx
  00462d36: e8 25 f3 fd ff                                  call   0x442060
  00462d3b: 83 c4 04                                        add    esp,0x4
  00462d3e: 33 c9                                           xor    ecx,ecx
  00462d40: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00462d43: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00462d46: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  00462d49: e9 d6 00 00 00                                  jmp    0x462e24
  00462d4e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00462d51: 3b c1                                           cmp    eax,ecx
  00462d53: 75 04                                           jne    0x462d59
  00462d55: 33 c9                                           xor    ecx,ecx
  00462d57: eb 05                                           jmp    0x462d5e
  00462d59: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00462d5c: 2b c8                                           sub    ecx,eax
  00462d5e: 3b d1                                           cmp    edx,ecx
  00462d60: 77 31                                           ja     0x462d93
  00462d62: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00462d65: 3b cf                                           cmp    ecx,edi
  00462d67: 74 0a                                           je     0x462d73
  00462d69: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00462d6b: 88 10                                           mov    BYTE PTR [eax],dl
  00462d6d: 40                                              inc    eax
  00462d6e: 41                                              inc    ecx
  00462d6f: 3b cf                                           cmp    ecx,edi
  00462d71: 75 f6                                           jne    0x462d69
  00462d73: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00462d76: 85 c9                                           test   ecx,ecx
  00462d78: 75 0c                                           jne    0x462d86
  00462d7a: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00462d7d: 33 c0                                           xor    eax,eax
  00462d7f: 8b c1                                           mov    eax,ecx
  00462d81: e9 9b 00 00 00                                  jmp    0x462e21
  00462d86: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00462d89: 2b c1                                           sub    eax,ecx
  00462d8b: 03 46 04                                        add    eax,DWORD PTR [esi+0x4]
  00462d8e: e9 8e 00 00 00                                  jmp    0x462e21
  00462d93: 85 c0                                           test   eax,eax
  00462d95: 75 04                                           jne    0x462d9b
  00462d97: 33 c9                                           xor    ecx,ecx
  00462d99: eb 05                                           jmp    0x462da0
  00462d9b: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00462d9e: 2b c8                                           sub    ecx,eax
  00462da0: 3b d1                                           cmp    edx,ecx
  00462da2: 77 2d                                           ja     0x462dd1
  00462da4: 85 c0                                           test   eax,eax
  00462da6: 75 04                                           jne    0x462dac
  00462da8: 33 d2                                           xor    edx,edx
  00462daa: eb 05                                           jmp    0x462db1
  00462dac: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00462daf: 2b d0                                           sub    edx,eax
  00462db1: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00462db4: 03 d1                                           add    edx,ecx
  00462db6: 3b ca                                           cmp    ecx,edx
  00462db8: 8b f8                                           mov    edi,eax
  00462dba: 74 0a                                           je     0x462dc6
  00462dbc: 8a 01                                           mov    al,BYTE PTR [ecx]
  00462dbe: 88 07                                           mov    BYTE PTR [edi],al
  00462dc0: 47                                              inc    edi
  00462dc1: 41                                              inc    ecx
  00462dc2: 3b ca                                           cmp    ecx,edx
  00462dc4: 75 f6                                           jne    0x462dbc
  00462dc6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00462dc9: 8b 5b 08                                        mov    ebx,DWORD PTR [ebx+0x8]
  00462dcc: 51                                              push   ecx
  00462dcd: 53                                              push   ebx
  00462dce: 52                                              push   edx
  00462dcf: eb 49                                           jmp    0x462e1a
  00462dd1: 50                                              push   eax
  00462dd2: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00462dd5: e8 86 f2 fd ff                                  call   0x442060
  00462dda: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00462ddd: 83 c4 04                                        add    esp,0x4
  00462de0: 85 c0                                           test   eax,eax
  00462de2: 75 04                                           jne    0x462de8
  00462de4: 33 ff                                           xor    edi,edi
  00462de6: eb 05                                           jmp    0x462ded
  00462de8: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00462deb: 2b f8                                           sub    edi,eax
  00462ded: 33 c0                                           xor    eax,eax
  00462def: 3b f8                                           cmp    edi,eax
  00462df1: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00462df4: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00462df7: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00462dfa: 74 28                                           je     0x462e24
  00462dfc: 57                                              push   edi
  00462dfd: e8 ee f1 fd ff                                  call   0x441ff0
  00462e02: 83 c4 04                                        add    esp,0x4
  00462e05: 8d 14 38                                        lea    edx,[eax+edi*1]
  00462e08: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00462e0b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00462e0e: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  00462e11: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00462e14: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  00462e17: 50                                              push   eax
  00462e18: 51                                              push   ecx
  00462e19: 53                                              push   ebx
  00462e1a: 8b ce                                           mov    ecx,esi
  00462e1c: e8 9f fe ff ff                                  call   0x462cc0
  00462e21: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00462e24: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00462e27: 8b 48 14                                        mov    ecx,DWORD PTR [eax+0x14]
  00462e2a: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00462e2d: 5f                                              pop    edi
  00462e2e: 5e                                              pop    esi
  00462e2f: 89 48 14                                        mov    DWORD PTR [eax+0x14],ecx
  00462e32: 5b                                              pop    ebx
  00462e33: 8b e5                                           mov    esp,ebp
  00462e35: 5d                                              pop    ebp
  00462e36: c2 04 00                                        ret    0x4
  00462e50: 55                                              push   ebp
  00462e51: 8b ec                                           mov    ebp,esp
  00462e53: 8b c1                                           mov    eax,ecx
  00462e55: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00462e58: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00462e5a: 88 10                                           mov    BYTE PTR [eax],dl
  00462e5c: 5d                                              pop    ebp
  00462e5d: c2 04 00                                        ret    0x4
  00462ea0: 55                                              push   ebp
  00462ea1: 8b ec                                           mov    ebp,esp
  00462ea3: 8b c1                                           mov    eax,ecx
  00462ea5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00462ea8: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00462eab: 56                                              push   esi
  00462eac: 57                                              push   edi
  00462ead: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00462eb0: 8b 51 0c                                        mov    edx,DWORD PTR [ecx+0xc]
  00462eb3: 8d 71 10                                        lea    esi,[ecx+0x10]
  00462eb6: 8d 78 10                                        lea    edi,[eax+0x10]
  00462eb9: b9 06 00 00 00                                  mov    ecx,0x6
  00462ebe: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  00462ec1: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00462ec3: 5f                                              pop    edi
  00462ec4: 5e                                              pop    esi
  00462ec5: 5d                                              pop    ebp
  00462ec6: c2 04 00                                        ret    0x4
  00462ed0: 55                                              push   ebp
  00462ed1: 8b ec                                           mov    ebp,esp
  00462ed3: 8b c1                                           mov    eax,ecx
  00462ed5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00462ed8: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00462eda: 88 10                                           mov    BYTE PTR [eax],dl
  00462edc: 5d                                              pop    ebp
  00462edd: c2 04 00                                        ret    0x4
  00462f50: c2 04 00                                        ret    0x4
  00462f60: 55                                              push   ebp
  00462f61: 8b ec                                           mov    ebp,esp
  00462f63: 8b c1                                           mov    eax,ecx
  00462f65: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00462f68: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00462f6a: 88 10                                           mov    BYTE PTR [eax],dl
  00462f6c: 5d                                              pop    ebp
  00462f6d: c2 04 00                                        ret    0x4
  00462f70: 55                                              push   ebp
  00462f71: 8b ec                                           mov    ebp,esp
  00462f73: 8b c1                                           mov    eax,ecx
  00462f75: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00462f78: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00462f7a: 88 10                                           mov    BYTE PTR [eax],dl
  00462f7c: 5d                                              pop    ebp
  00462f7d: c2 04 00                                        ret    0x4
  00462fb0: 55                                              push   ebp
  00462fb1: 8b ec                                           mov    ebp,esp
  00462fb3: 8b c1                                           mov    eax,ecx
  00462fb5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00462fb8: 66 8b 51 04                                     mov    dx,WORD PTR [ecx+0x4]
  00462fbc: 66 89 50 04                                     mov    WORD PTR [eax+0x4],dx
  00462fc0: 5d                                              pop    ebp
  00462fc1: c2 04 00                                        ret    0x4
  00463570: 6a 00                                           push   0x0
  00463572: e8 69 74 02 00                                  call   0x48a9e0
  00463577: c3                                              ret
  00486290: 55                                              push   ebp
  00486291: 8b ec                                           mov    ebp,esp
  00486293: 83 ec 0c                                        sub    esp,0xc
  00486296: 53                                              push   ebx
  00486297: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0048629a: 56                                              push   esi
  0048629b: 8b f1                                           mov    esi,ecx
  0048629d: 57                                              push   edi
  0048629e: 83 c9 ff                                        or     ecx,0xffffffff
  004862a1: 33 c0                                           xor    eax,eax
  004862a3: 8b fb                                           mov    edi,ebx
  004862a5: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004862a7: f7 d1                                           not    ecx
  004862a9: 49                                              dec    ecx
  004862aa: 8a c5                                           mov    al,ch
  004862ac: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  004862af: 8d 4d 0b                                        lea    ecx,[ebp+0xb]
  004862b2: 51                                              push   ecx
  004862b3: 51                                              push   ecx
  004862b4: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004862b7: 83 c6 04                                        add    esi,0x4
  004862ba: 54                                              push   esp
  004862bb: 8b ce                                           mov    ecx,esi
  004862bd: 88 45 0b                                        mov    BYTE PTR [ebp+0xb],al
  004862c0: e8 6b 09 00 00                                  call   0x486c30
  004862c5: 8d 55 f4                                        lea    edx,[ebp-0xc]
  004862c8: 52                                              push   edx
  004862c9: 8b ce                                           mov    ecx,esi
  004862cb: e8 d0 09 00 00                                  call   0x486ca0
  004862d0: 8a 45 fc                                        mov    al,BYTE PTR [ebp-0x4]
  004862d3: 8d 4d 0b                                        lea    ecx,[ebp+0xb]
  004862d6: 51                                              push   ecx
  004862d7: 51                                              push   ecx
  004862d8: 54                                              push   esp
  004862d9: 8b ce                                           mov    ecx,esi
  004862db: 88 45 0b                                        mov    BYTE PTR [ebp+0xb],al
  004862de: e8 4d 09 00 00                                  call   0x486c30
  004862e3: 8d 55 f4                                        lea    edx,[ebp-0xc]
  004862e6: 52                                              push   edx
  004862e7: 8b ce                                           mov    ecx,esi
  004862e9: e8 b2 09 00 00                                  call   0x486ca0
  004862ee: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004862f1: 03 c3                                           add    eax,ebx
  004862f3: 3b d8                                           cmp    ebx,eax
  004862f5: 8b fb                                           mov    edi,ebx
  004862f7: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004862fa: 74 25                                           je     0x486321
  004862fc: 8a 0f                                           mov    cl,BYTE PTR [edi]
  004862fe: 8d 55 0b                                        lea    edx,[ebp+0xb]
  00486301: 52                                              push   edx
  00486302: 88 4d 0b                                        mov    BYTE PTR [ebp+0xb],cl
  00486305: 51                                              push   ecx
  00486306: 54                                              push   esp
  00486307: 8b ce                                           mov    ecx,esi
  00486309: e8 22 09 00 00                                  call   0x486c30
  0048630e: 8d 45 f4                                        lea    eax,[ebp-0xc]
  00486311: 50                                              push   eax
  00486312: 8b ce                                           mov    ecx,esi
  00486314: e8 87 09 00 00                                  call   0x486ca0
  00486319: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0048631c: 47                                              inc    edi
  0048631d: 3b f8                                           cmp    edi,eax
  0048631f: 75 db                                           jne    0x4862fc
  00486321: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  00486324: 5f                                              pop    edi
  00486325: 5e                                              pop    esi
  00486326: 5b                                              pop    ebx
  00486327: 8b e5                                           mov    esp,ebp
  00486329: 5d                                              pop    ebp
  0048632a: c2 04 00                                        ret    0x4
  00486330: 55                                              push   ebp
  00486331: 8b ec                                           mov    ebp,esp
  00486333: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00486336: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00486339: 85 c0                                           test   eax,eax
  0048633b: 75 05                                           jne    0x486342
  0048633d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00486342: 50                                              push   eax
  00486343: e8 48 ff ff ff                                  call   0x486290
  00486348: 5d                                              pop    ebp
  00486349: c2 04 00                                        ret    0x4
  00486350: 55                                              push   ebp
  00486351: 8b ec                                           mov    ebp,esp
  00486353: 83 ec 10                                        sub    esp,0x10
  00486356: 53                                              push   ebx
  00486357: 56                                              push   esi
  00486358: 57                                              push   edi
  00486359: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0048635c: 8b 07                                           mov    eax,DWORD PTR [edi]
  0048635e: 8b 58 f8                                        mov    ebx,DWORD PTR [eax-0x8]
  00486361: 8d 45 ff                                        lea    eax,[ebp-0x1]
  00486364: 50                                              push   eax
  00486365: 33 d2                                           xor    edx,edx
  00486367: 51                                              push   ecx
  00486368: 8d 71 04                                        lea    esi,[ecx+0x4]
  0048636b: 89 4d f4                                        mov    DWORD PTR [ebp-0xc],ecx
  0048636e: 8a d7                                           mov    dl,bh
  00486370: 54                                              push   esp
  00486371: 8b ce                                           mov    ecx,esi
  00486373: 88 55 ff                                        mov    BYTE PTR [ebp-0x1],dl
  00486376: e8 b5 08 00 00                                  call   0x486c30
  0048637b: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0048637e: 51                                              push   ecx
  0048637f: 8b ce                                           mov    ecx,esi
  00486381: e8 1a 09 00 00                                  call   0x486ca0
  00486386: 8d 55 ff                                        lea    edx,[ebp-0x1]
  00486389: 52                                              push   edx
  0048638a: 51                                              push   ecx
  0048638b: 54                                              push   esp
  0048638c: 8b ce                                           mov    ecx,esi
  0048638e: 88 5d ff                                        mov    BYTE PTR [ebp-0x1],bl
  00486391: e8 9a 08 00 00                                  call   0x486c30
  00486396: 8d 45 f8                                        lea    eax,[ebp-0x8]
  00486399: 50                                              push   eax
  0048639a: 8b ce                                           mov    ecx,esi
  0048639c: e8 ff 08 00 00                                  call   0x486ca0
  004863a1: 6a 00                                           push   0x0
  004863a3: 8b cf                                           mov    ecx,edi
  004863a5: e8 c6 b6 04 00                                  call   0x4d1a70
  004863aa: 8d 0c 18                                        lea    ecx,[eax+ebx*1]
  004863ad: 3b c1                                           cmp    eax,ecx
  004863af: 8b f8                                           mov    edi,eax
  004863b1: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004863b4: 74 1d                                           je     0x4863d3
  004863b6: 57                                              push   edi
  004863b7: 51                                              push   ecx
  004863b8: 54                                              push   esp
  004863b9: 8b ce                                           mov    ecx,esi
  004863bb: e8 70 08 00 00                                  call   0x486c30
  004863c0: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004863c3: 51                                              push   ecx
  004863c4: 8b ce                                           mov    ecx,esi
  004863c6: e8 d5 08 00 00                                  call   0x486ca0
  004863cb: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004863ce: 47                                              inc    edi
  004863cf: 3b f8                                           cmp    edi,eax
  004863d1: 75 e3                                           jne    0x4863b6
  004863d3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004863d6: 53                                              push   ebx
  004863d7: e8 8e b6 04 00                                  call   0x4d1a6a
  004863dc: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004863df: 5f                                              pop    edi
  004863e0: 5e                                              pop    esi
  004863e1: 5b                                              pop    ebx
  004863e2: 8b e5                                           mov    esp,ebp
  004863e4: 5d                                              pop    ebp
  004863e5: c2 04 00                                        ret    0x4
