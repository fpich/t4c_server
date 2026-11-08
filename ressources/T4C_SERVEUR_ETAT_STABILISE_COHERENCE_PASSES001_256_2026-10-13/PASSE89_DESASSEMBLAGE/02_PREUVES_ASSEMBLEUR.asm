; PASSE 89, Cibles de CALL encore hors masque après passe 88
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 3410 distinct instructions; 44 graph entry points

  00404290: 55                                              push   ebp
  00404291: 8b ec                                           mov    ebp,esp
  00404293: 6a ff                                           push   0xffffffff
  00404295: 68 0a 32 4d 00                                  push   0x4d320a
  0040429a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004042a0: 50                                              push   eax
  004042a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004042a8: 83 ec 58                                        sub    esp,0x58
  004042ab: 53                                              push   ebx
  004042ac: 56                                              push   esi
  004042ad: 57                                              push   edi
  004042ae: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004042b1: 8b f1                                           mov    esi,ecx
  004042b3: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004042b6: 57                                              push   edi
  004042b7: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  004042ba: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  004042bd: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004042c3: 83 c7 10                                        add    edi,0x10
  004042c6: 57                                              push   edi
  004042c7: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004042ca: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004042d1: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004042d7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004042da: 85 c0                                           test   eax,eax
  004042dc: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004042e3: 75 04                                           jne    0x4042e9
  004042e5: 33 ff                                           xor    edi,edi
  004042e7: eb 08                                           jmp    0x4042f1
  004042e9: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  004042ec: 2b f8                                           sub    edi,eax
  004042ee: c1 ff 05                                        sar    edi,0x5
  004042f1: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004042f4: 85 db                                           test   ebx,ebx
  004042f6: 0f 84 22 03 00 00                               je     0x40461e
  004042fc: 85 c0                                           test   eax,eax
  004042fe: 75 04                                           jne    0x404304
  00404300: 33 c9                                           xor    ecx,ecx
  00404302: eb 08                                           jmp    0x40430c
  00404304: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00404307: 2b c8                                           sub    ecx,eax
  00404309: c1 f9 05                                        sar    ecx,0x5
  0040430c: ba ff ff ff 07                                  mov    edx,0x7ffffff
  00404311: 2b d1                                           sub    edx,ecx
  00404313: 3b d3                                           cmp    edx,ebx
  00404315: 73 2c                                           jae    0x404343
  00404317: 68 80 05 50 00                                  push   0x500580
  0040431c: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0040431f: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00404325: 8d 45 d8                                        lea    eax,[ebp-0x28]
  00404328: 50                                              push   eax
  00404329: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0040432c: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  00404330: e8 eb 10 00 00                                  call   0x405420
  00404335: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0040433a: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0040433d: 51                                              push   ecx
  0040433e: e8 13 da 0c 00                                  call   0x4d1d56
  00404343: 85 c0                                           test   eax,eax
  00404345: 75 04                                           jne    0x40434b
  00404347: 33 c9                                           xor    ecx,ecx
  00404349: eb 08                                           jmp    0x404353
  0040434b: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0040434e: 2b c8                                           sub    ecx,eax
  00404350: c1 f9 05                                        sar    ecx,0x5
  00404353: 03 cb                                           add    ecx,ebx
  00404355: 3b f9                                           cmp    edi,ecx
  00404357: 0f 83 51 01 00 00                               jae    0x4044ae
  0040435d: 8b cf                                           mov    ecx,edi
  0040435f: d1 e9                                           shr    ecx,1
  00404361: ba ff ff ff 07                                  mov    edx,0x7ffffff
  00404366: 2b d1                                           sub    edx,ecx
  00404368: 3b d7                                           cmp    edx,edi
  0040436a: 73 04                                           jae    0x404370
  0040436c: 33 ff                                           xor    edi,edi
  0040436e: eb 02                                           jmp    0x404372
  00404370: 03 f9                                           add    edi,ecx
  00404372: 85 c0                                           test   eax,eax
  00404374: 75 04                                           jne    0x40437a
  00404376: 33 c9                                           xor    ecx,ecx
  00404378: eb 08                                           jmp    0x404382
  0040437a: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0040437d: 2b c8                                           sub    ecx,eax
  0040437f: c1 f9 05                                        sar    ecx,0x5
  00404382: 03 cb                                           add    ecx,ebx
  00404384: 3b f9                                           cmp    edi,ecx
  00404386: 73 12                                           jae    0x40439a
  00404388: 85 c0                                           test   eax,eax
  0040438a: 75 04                                           jne    0x404390
  0040438c: 33 ff                                           xor    edi,edi
  0040438e: eb 08                                           jmp    0x404398
  00404390: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  00404393: 2b f8                                           sub    edi,eax
  00404395: c1 ff 05                                        sar    edi,0x5
  00404398: 03 fb                                           add    edi,ebx
  0040439a: 8b c7                                           mov    eax,edi
  0040439c: c1 e0 05                                        shl    eax,0x5
  0040439f: 50                                              push   eax
  004043a0: e8 4b dc 03 00                                  call   0x441ff0
  004043a5: 83 c4 04                                        add    esp,0x4
  004043a8: 50                                              push   eax
  004043a9: 51                                              push   ecx
  004043aa: 8d 55 08                                        lea    edx,[ebp+0x8]
  004043ad: 8b cc                                           mov    ecx,esp
  004043af: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004043b2: 52                                              push   edx
  004043b3: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004043b6: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004043b9: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  004043bd: e8 fe 02 00 00                                  call   0x4046c0
  004043c2: 51                                              push   ecx
  004043c3: 8b c4                                           mov    eax,esp
  004043c5: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004043c8: 50                                              push   eax
  004043c9: 8b ce                                           mov    ecx,esi
  004043cb: e8 90 f7 ff ff                                  call   0x403b60
  004043d0: 8b ce                                           mov    ecx,esi
  004043d2: e8 09 08 00 00                                  call   0x404be0
  004043d7: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  004043da: 51                                              push   ecx
  004043db: 53                                              push   ebx
  004043dc: 50                                              push   eax
  004043dd: 8b ce                                           mov    ecx,esi
  004043df: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004043e2: e8 e9 02 00 00                                  call   0x4046d0
  004043e7: 50                                              push   eax
  004043e8: 51                                              push   ecx
  004043e9: 8b d4                                           mov    edx,esp
  004043eb: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004043ee: 52                                              push   edx
  004043ef: 8b ce                                           mov    ecx,esi
  004043f1: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  004043f4: e8 77 f7 ff ff                                  call   0x403b70
  004043f9: 51                                              push   ecx
  004043fa: 8d 45 08                                        lea    eax,[ebp+0x8]
  004043fd: 8b cc                                           mov    ecx,esp
  004043ff: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00404402: 50                                              push   eax
  00404403: e8 b8 02 00 00                                  call   0x4046c0
  00404408: 8b ce                                           mov    ecx,esi
  0040440a: e8 d1 07 00 00                                  call   0x404be0
  0040440f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00404412: 85 c0                                           test   eax,eax
  00404414: 74 2c                                           je     0x404442
  00404416: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00404419: 8b d8                                           mov    ebx,eax
  0040441b: 3b d9                                           cmp    ebx,ecx
  0040441d: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  00404420: 74 11                                           je     0x404433
  00404422: 8b cb                                           mov    ecx,ebx
  00404424: e8 97 e5 ff ff                                  call   0x4029c0
  00404429: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0040442c: 83 c3 20                                        add    ebx,0x20
  0040442f: 3b d8                                           cmp    ebx,eax
  00404431: 75 ef                                           jne    0x404422
  00404433: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00404436: 51                                              push   ecx
  00404437: e8 24 dc 03 00                                  call   0x442060
  0040443c: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0040443f: 83 c4 04                                        add    esp,0x4
  00404442: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00404445: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00404448: c1 e7 05                                        shl    edi,0x5
  0040444b: 03 fa                                           add    edi,edx
  0040444d: 85 c9                                           test   ecx,ecx
  0040444f: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00404452: 75 14                                           jne    0x404468
  00404454: 33 c0                                           xor    eax,eax
  00404456: 8b c3                                           mov    eax,ebx
  00404458: c1 e0 05                                        shl    eax,0x5
  0040445b: 03 c2                                           add    eax,edx
  0040445d: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00404460: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00404463: e9 b6 01 00 00                                  jmp    0x40461e
  00404468: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0040446b: 2b c1                                           sub    eax,ecx
  0040446d: c1 f8 05                                        sar    eax,0x5
  00404470: 03 c3                                           add    eax,ebx
  00404472: c1 e0 05                                        shl    eax,0x5
  00404475: 03 c2                                           add    eax,edx
  00404477: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0040447a: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0040447d: e9 9c 01 00 00                                  jmp    0x40461e
  004044ae: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004044b1: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004044b4: 8b d0                                           mov    edx,eax
  004044b6: 2b d1                                           sub    edx,ecx
  004044b8: c1 fa 05                                        sar    edx,0x5
  004044bb: 3b d3                                           cmp    edx,ebx
  004044bd: 0f 83 cd 00 00 00                               jae    0x404590
  004044c3: 8b fb                                           mov    edi,ebx
  004044c5: c1 e7 05                                        shl    edi,0x5
  004044c8: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  004044cb: 50                                              push   eax
  004044cc: 51                                              push   ecx
  004044cd: 8b cc                                           mov    ecx,esp
  004044cf: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004044d2: 51                                              push   ecx
  004044d3: 8b ce                                           mov    ecx,esi
  004044d5: e8 96 f6 ff ff                                  call   0x403b70
  004044da: 51                                              push   ecx
  004044db: 8d 55 08                                        lea    edx,[ebp+0x8]
  004044de: 8b cc                                           mov    ecx,esp
  004044e0: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004044e3: 52                                              push   edx
  004044e4: e8 d7 01 00 00                                  call   0x4046c0
  004044e9: 8b ce                                           mov    ecx,esi
  004044eb: e8 f0 06 00 00                                  call   0x404be0
  004044f0: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004044f3: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  004044f6: 51                                              push   ecx
  004044f7: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004044fa: 8b d0                                           mov    edx,eax
  004044fc: 2b d1                                           sub    edx,ecx
  004044fe: c1 fa 05                                        sar    edx,0x5
  00404501: 8b cb                                           mov    ecx,ebx
  00404503: 2b ca                                           sub    ecx,edx
  00404505: 51                                              push   ecx
  00404506: 50                                              push   eax
  00404507: 8b ce                                           mov    ecx,esi
  00404509: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0040450d: e8 be 01 00 00                                  call   0x4046d0
  00404512: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00404515: 03 cf                                           add    ecx,edi
  00404517: 8d 55 9c                                        lea    edx,[ebp-0x64]
  0040451a: 52                                              push   edx
  0040451b: 51                                              push   ecx
  0040451c: 8b c4                                           mov    eax,esp
  0040451e: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  00404521: 53                                              push   ebx
  00404522: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00404525: 50                                              push   eax
  00404526: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00404529: 51                                              push   ecx
  0040452a: 8b ce                                           mov    ecx,esi
  0040452c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00404533: e8 38 f6 ff ff                                  call   0x403b70
  00404538: 8b c8                                           mov    ecx,eax
  0040453a: e8 c1 02 00 00                                  call   0x404800
  0040453f: 51                                              push   ecx
  00404540: 8d 55 08                                        lea    edx,[ebp+0x8]
  00404543: 8b cc                                           mov    ecx,esp
  00404545: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00404548: 52                                              push   edx
  00404549: e9 c3 00 00 00                                  jmp    0x404611
  00404590: 50                                              push   eax
  00404591: 51                                              push   ecx
  00404592: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00404595: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00404598: 8b cc                                           mov    ecx,esp
  0040459a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0040459d: 50                                              push   eax
  0040459e: e8 1d 01 00 00                                  call   0x4046c0
  004045a3: 51                                              push   ecx
  004045a4: 8b cc                                           mov    ecx,esp
  004045a6: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004045a9: 53                                              push   ebx
  004045aa: 51                                              push   ecx
  004045ab: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004045ae: e8 4d 02 00 00                                  call   0x404800
  004045b3: 8b ce                                           mov    ecx,esi
  004045b5: e8 26 06 00 00                                  call   0x404be0
  004045ba: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004045bd: 51                                              push   ecx
  004045be: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004045c1: 8b c4                                           mov    eax,esp
  004045c3: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004045c6: 51                                              push   ecx
  004045c7: 89 10                                           mov    DWORD PTR [eax],edx
  004045c9: 8b c4                                           mov    eax,esp
  004045cb: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004045ce: 53                                              push   ebx
  004045cf: 50                                              push   eax
  004045d0: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004045d3: e8 28 02 00 00                                  call   0x404800
  004045d8: 51                                              push   ecx
  004045d9: 8d 55 08                                        lea    edx,[ebp+0x8]
  004045dc: 8b cc                                           mov    ecx,esp
  004045de: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004045e1: 52                                              push   edx
  004045e2: e8 d9 00 00 00                                  call   0x4046c0
  004045e7: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004045ea: 50                                              push   eax
  004045eb: e8 20 09 00 00                                  call   0x404f10
  004045f0: 83 c4 10                                        add    esp,0x10
  004045f3: 8d 4d 9c                                        lea    ecx,[ebp-0x64]
  004045f6: 51                                              push   ecx
  004045f7: 51                                              push   ecx
  004045f8: 8b d4                                           mov    edx,esp
  004045fa: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004045fd: 53                                              push   ebx
  004045fe: 52                                              push   edx
  004045ff: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00404602: e8 99 00 00 00                                  call   0x4046a0
  00404607: 51                                              push   ecx
  00404608: 8d 45 08                                        lea    eax,[ebp+0x8]
  0040460b: 8b cc                                           mov    ecx,esp
  0040460d: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00404610: 50                                              push   eax
  00404611: e8 aa 00 00 00                                  call   0x4046c0
  00404616: e8 f5 06 00 00                                  call   0x404d10
  0040461b: 83 c4 0c                                        add    esp,0xc
  0040461e: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  00404621: 85 c0                                           test   eax,eax
  00404623: 74 1c                                           je     0x404641
  00404625: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00404628: 8a 01                                           mov    al,BYTE PTR [ecx]
  0040462a: 84 c0                                           test   al,al
  0040462c: 74 0a                                           je     0x404638
  0040462e: 3c ff                                           cmp    al,0xff
  00404630: 74 06                                           je     0x404638
  00404632: fe c8                                           dec    al
  00404634: 88 01                                           mov    BYTE PTR [ecx],al
  00404636: eb 09                                           jmp    0x404641
  00404638: 51                                              push   ecx
  00404639: e8 22 da 03 00                                  call   0x442060
  0040463e: 83 c4 04                                        add    esp,0x4
  00404641: 8b 4d a0                                        mov    ecx,DWORD PTR [ebp-0x60]
  00404644: 33 c0                                           xor    eax,eax
  00404646: 3b c8                                           cmp    ecx,eax
  00404648: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0040464b: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0040464e: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  00404651: 74 2d                                           je     0x404680
  00404653: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  00404656: 84 c0                                           test   al,al
  00404658: 74 1c                                           je     0x404676
  0040465a: 3c ff                                           cmp    al,0xff
  0040465c: 74 18                                           je     0x404676
  0040465e: fe c8                                           dec    al
  00404660: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00404663: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00404666: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040466d: 5f                                              pop    edi
  0040466e: 5e                                              pop    esi
  0040466f: 5b                                              pop    ebx
  00404670: 8b e5                                           mov    esp,ebp
  00404672: 5d                                              pop    ebp
  00404673: c2 0c 00                                        ret    0xc
  00404676: 49                                              dec    ecx
  00404677: 51                                              push   ecx
  00404678: e8 e3 d9 03 00                                  call   0x442060
  0040467d: 83 c4 04                                        add    esp,0x4
  00404680: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00404683: 5f                                              pop    edi
  00404684: 5e                                              pop    esi
  00404685: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040468c: 5b                                              pop    ebx
  0040468d: 8b e5                                           mov    esp,ebp
  0040468f: 5d                                              pop    ebp
  00404690: c2 0c 00                                        ret    0xc
  004046c0: 55                                              push   ebp
  004046c1: 8b ec                                           mov    ebp,esp
  004046c3: 8b c1                                           mov    eax,ecx
  004046c5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004046c8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004046ca: 89 10                                           mov    DWORD PTR [eax],edx
  004046cc: 5d                                              pop    ebp
  004046cd: c2 04 00                                        ret    0x4
  00404820: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00404822: 8a 50 11                                        mov    dl,BYTE PTR [eax+0x11]
  00404825: 84 d2                                           test   dl,dl
  00404827: 53                                              push   ebx
  00404828: 75 41                                           jne    0x40486b
  0040482a: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0040482d: 8a 5a 11                                        mov    bl,BYTE PTR [edx+0x11]
  00404830: 84 db                                           test   bl,bl
  00404832: 75 18                                           jne    0x40484c
  00404834: 8b 02                                           mov    eax,DWORD PTR [edx]
  00404836: 8a 58 11                                        mov    bl,BYTE PTR [eax+0x11]
  00404839: 84 db                                           test   bl,bl
  0040483b: 75 0b                                           jne    0x404848
  0040483d: 8b d0                                           mov    edx,eax
  0040483f: 8b 02                                           mov    eax,DWORD PTR [edx]
  00404841: 8a 58 11                                        mov    bl,BYTE PTR [eax+0x11]
  00404844: 84 db                                           test   bl,bl
  00404846: 74 f5                                           je     0x40483d
  00404848: 89 11                                           mov    DWORD PTR [ecx],edx
  0040484a: 5b                                              pop    ebx
  0040484b: c3                                              ret
  0040484c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0040484f: 8a 50 11                                        mov    dl,BYTE PTR [eax+0x11]
  00404852: 84 d2                                           test   dl,dl
  00404854: 75 13                                           jne    0x404869
  00404856: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00404858: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  0040485b: 75 0c                                           jne    0x404869
  0040485d: 89 01                                           mov    DWORD PTR [ecx],eax
  0040485f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00404862: 8a 50 11                                        mov    dl,BYTE PTR [eax+0x11]
  00404865: 84 d2                                           test   dl,dl
  00404867: 74 ed                                           je     0x404856
  00404869: 89 01                                           mov    DWORD PTR [ecx],eax
  0040486b: 5b                                              pop    ebx
  0040486c: c3                                              ret
  00407be0: 55                                              push   ebp
  00407be1: 8b ec                                           mov    ebp,esp
  00407be3: 8b c1                                           mov    eax,ecx
  00407be5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00407be8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00407bea: 89 10                                           mov    DWORD PTR [eax],edx
  00407bec: 5d                                              pop    ebp
  00407bed: c2 04 00                                        ret    0x4
  00408b50: 55                                              push   ebp
  00408b51: 8b ec                                           mov    ebp,esp
  00408b53: 6a ff                                           push   0xffffffff
  00408b55: 68 89 35 4d 00                                  push   0x4d3589
  00408b5a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00408b60: 50                                              push   eax
  00408b61: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00408b68: 83 ec 34                                        sub    esp,0x34
  00408b6b: 53                                              push   ebx
  00408b6c: 56                                              push   esi
  00408b6d: 57                                              push   edi
  00408b6e: 8b f9                                           mov    edi,ecx
  00408b70: 81 7f 08 54 55 55 05                            cmp    DWORD PTR [edi+0x8],0x5555554
  00408b77: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00408b7a: 72 57                                           jb     0x408bd3
  00408b7c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  00408b7f: 6a 00                                           push   0x0
  00408b81: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00408b84: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00408b87: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00408b8d: 83 c9 ff                                        or     ecx,0xffffffff
  00408b90: 33 c0                                           xor    eax,eax
  00408b92: bf a0 06 50 00                                  mov    edi,0x5006a0
  00408b97: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00408b99: f7 d1                                           not    ecx
  00408b9b: 49                                              dec    ecx
  00408b9c: 51                                              push   ecx
  00408b9d: 68 a0 06 50 00                                  push   0x5006a0
  00408ba2: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00408ba5: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  00408bab: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00408bae: 51                                              push   ecx
  00408baf: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00408bb2: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00408bb9: e8 c2 c4 ff ff                                  call   0x405080
  00408bbe: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00408bc3: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00408bc6: 52                                              push   edx
  00408bc7: c7 45 c0 f8 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5f8
  00408bce: e8 83 91 0c 00                                  call   0x4d1d56
  00408bd3: 6a 40                                           push   0x40
  00408bd5: e8 16 94 03 00                                  call   0x441ff0
  00408bda: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00408bdd: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00408be0: 8b d8                                           mov    ebx,eax
  00408be2: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00408be5: c6 43 3c 00                                     mov    BYTE PTR [ebx+0x3c],0x0
  00408be9: c6 43 3d 00                                     mov    BYTE PTR [ebx+0x3d],0x0
  00408bed: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00408bf0: 89 03                                           mov    DWORD PTR [ebx],eax
  00408bf2: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00408bf5: 52                                              push   edx
  00408bf6: 8d 43 0c                                        lea    eax,[ebx+0xc]
  00408bf9: 50                                              push   eax
  00408bfa: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  00408bfd: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00408c00: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00408c07: e8 b4 08 00 00                                  call   0x4094c0
  00408c0c: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  00408c0f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00408c12: 83 c4 0c                                        add    esp,0xc
  00408c15: 42                                              inc    edx
  00408c16: 3b f0                                           cmp    esi,eax
  00408c18: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  00408c1b: 75 10                                           jne    0x408c2d
  00408c1d: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00408c20: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00408c23: 89 19                                           mov    DWORD PTR [ecx],ebx
  00408c25: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00408c28: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  00408c2b: eb 22                                           jmp    0x408c4f
  00408c2d: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  00408c30: 84 c0                                           test   al,al
  00408c32: 74 0d                                           je     0x408c41
  00408c34: 89 1e                                           mov    DWORD PTR [esi],ebx
  00408c36: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00408c39: 3b 30                                           cmp    esi,DWORD PTR [eax]
  00408c3b: 75 12                                           jne    0x408c4f
  00408c3d: 89 18                                           mov    DWORD PTR [eax],ebx
  00408c3f: eb 0e                                           jmp    0x408c4f
  00408c41: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00408c44: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00408c47: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  00408c4a: 75 03                                           jne    0x408c4f
  00408c4c: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  00408c4f: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00408c52: 8a 51 3c                                        mov    dl,BYTE PTR [ecx+0x3c]
  00408c55: 84 d2                                           test   dl,dl
  00408c57: 8b c3                                           mov    eax,ebx
  00408c59: 0f 85 98 01 00 00                               jne    0x408df7
  00408c5f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00408c62: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00408c65: 8b 16                                           mov    edx,DWORD PTR [esi]
  00408c67: 3b ca                                           cmp    ecx,edx
  00408c69: 0f 85 c6 00 00 00                               jne    0x408d35
  00408c6f: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00408c72: 80 7a 3c 00                                     cmp    BYTE PTR [edx+0x3c],0x0
  00408c76: 75 1d                                           jne    0x408c95
  00408c78: c6 41 3c 01                                     mov    BYTE PTR [ecx+0x3c],0x1
  00408c7c: c6 42 3c 01                                     mov    BYTE PTR [edx+0x3c],0x1
  00408c80: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408c83: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408c86: c6 41 3c 00                                     mov    BYTE PTR [ecx+0x3c],0x0
  00408c8a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408c8d: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00408c90: e9 54 01 00 00                                  jmp    0x408de9
  00408c95: 3b 41 08                                        cmp    eax,DWORD PTR [ecx+0x8]
  00408c98: 75 3b                                           jne    0x408cd5
  00408c9a: 8b c1                                           mov    eax,ecx
  00408c9c: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00408c9f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00408ca1: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00408ca4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00408ca6: 80 7a 3d 00                                     cmp    BYTE PTR [edx+0x3d],0x0
  00408caa: 75 03                                           jne    0x408caf
  00408cac: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00408caf: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408cb2: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00408cb5: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00408cb8: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00408cbb: 75 05                                           jne    0x408cc2
  00408cbd: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00408cc0: eb 0e                                           jmp    0x408cd0
  00408cc2: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408cc5: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00408cc7: 75 04                                           jne    0x408ccd
  00408cc9: 89 0a                                           mov    DWORD PTR [edx],ecx
  00408ccb: eb 03                                           jmp    0x408cd0
  00408ccd: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00408cd0: 89 01                                           mov    DWORD PTR [ecx],eax
  00408cd2: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00408cd5: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00408cd8: c6 41 3c 01                                     mov    BYTE PTR [ecx+0x3c],0x1
  00408cdc: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408cdf: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408ce2: c6 41 3c 00                                     mov    BYTE PTR [ecx+0x3c],0x0
  00408ce6: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408ce9: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408cec: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00408cee: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00408cf1: 89 31                                           mov    DWORD PTR [ecx],esi
  00408cf3: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00408cf6: 80 7e 3d 00                                     cmp    BYTE PTR [esi+0x3d],0x0
  00408cfa: 75 03                                           jne    0x408cff
  00408cfc: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00408cff: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00408d02: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00408d05: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00408d08: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00408d0b: 75 0b                                           jne    0x408d18
  00408d0d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00408d10: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00408d13: e9 ce 00 00 00                                  jmp    0x408de6
  00408d18: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00408d1b: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  00408d1e: 75 0b                                           jne    0x408d2b
  00408d20: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00408d23: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00408d26: e9 bb 00 00 00                                  jmp    0x408de6
  00408d2b: 89 16                                           mov    DWORD PTR [esi],edx
  00408d2d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00408d30: e9 b1 00 00 00                                  jmp    0x408de6
  00408d35: 80 7a 3c 00                                     cmp    BYTE PTR [edx+0x3c],0x0
  00408d39: 75 1d                                           jne    0x408d58
  00408d3b: c6 41 3c 01                                     mov    BYTE PTR [ecx+0x3c],0x1
  00408d3f: c6 42 3c 01                                     mov    BYTE PTR [edx+0x3c],0x1
  00408d43: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00408d46: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00408d49: c6 42 3c 00                                     mov    BYTE PTR [edx+0x3c],0x0
  00408d4d: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00408d50: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00408d53: e9 91 00 00 00                                  jmp    0x408de9
  00408d58: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  00408d5a: 75 3d                                           jne    0x408d99
  00408d5c: 8b c1                                           mov    eax,ecx
  00408d5e: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00408d60: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00408d63: 89 10                                           mov    DWORD PTR [eax],edx
  00408d65: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00408d68: 80 7a 3d 00                                     cmp    BYTE PTR [edx+0x3d],0x0
  00408d6c: 75 03                                           jne    0x408d71
  00408d6e: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00408d71: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408d74: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00408d77: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00408d7a: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00408d7d: 75 05                                           jne    0x408d84
  00408d7f: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00408d82: eb 0f                                           jmp    0x408d93
  00408d84: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408d87: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  00408d8a: 75 05                                           jne    0x408d91
  00408d8c: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00408d8f: eb 02                                           jmp    0x408d93
  00408d91: 89 0a                                           mov    DWORD PTR [edx],ecx
  00408d93: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00408d96: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00408d99: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00408d9c: c6 41 3c 01                                     mov    BYTE PTR [ecx+0x3c],0x1
  00408da0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408da3: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408da6: c6 41 3c 00                                     mov    BYTE PTR [ecx+0x3c],0x0
  00408daa: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408dad: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408db0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00408db3: 8b 32                                           mov    esi,DWORD PTR [edx]
  00408db5: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00408db8: 8b 32                                           mov    esi,DWORD PTR [edx]
  00408dba: 80 7e 3d 00                                     cmp    BYTE PTR [esi+0x3d],0x0
  00408dbe: 75 03                                           jne    0x408dc3
  00408dc0: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00408dc3: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00408dc6: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00408dc9: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00408dcc: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00408dcf: 75 05                                           jne    0x408dd6
  00408dd1: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00408dd4: eb 0e                                           jmp    0x408de4
  00408dd6: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00408dd9: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  00408ddb: 75 04                                           jne    0x408de1
  00408ddd: 89 16                                           mov    DWORD PTR [esi],edx
  00408ddf: eb 03                                           jmp    0x408de4
  00408de1: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00408de4: 89 0a                                           mov    DWORD PTR [edx],ecx
  00408de6: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00408de9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00408dec: 8a 51 3c                                        mov    dl,BYTE PTR [ecx+0x3c]
  00408def: 84 d2                                           test   dl,dl
  00408df1: 0f 84 68 fe ff ff                               je     0x408c5f
  00408df7: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00408dfa: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00408dfd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00408e00: c6 40 3c 01                                     mov    BYTE PTR [eax+0x3c],0x1
  00408e04: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00408e07: 5f                                              pop    edi
  00408e08: 89 18                                           mov    DWORD PTR [eax],ebx
  00408e0a: 5e                                              pop    esi
  00408e0b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00408e12: 5b                                              pop    ebx
  00408e13: 8b e5                                           mov    esp,ebp
  00408e15: 5d                                              pop    ebp
  00408e16: c2 10 00                                        ret    0x10
  00408ed0: 55                                              push   ebp
  00408ed1: 8b ec                                           mov    ebp,esp
  00408ed3: 6a ff                                           push   0xffffffff
  00408ed5: 68 a9 35 4d 00                                  push   0x4d35a9
  00408eda: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00408ee0: 50                                              push   eax
  00408ee1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00408ee8: 83 ec 3c                                        sub    esp,0x3c
  00408eeb: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00408eee: 53                                              push   ebx
  00408eef: 56                                              push   esi
  00408ef0: 8b f1                                           mov    esi,ecx
  00408ef2: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00408ef4: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  00408ef7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00408efa: 85 c9                                           test   ecx,ecx
  00408efc: 57                                              push   edi
  00408efd: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00408f00: 75 04                                           jne    0x408f06
  00408f02: 33 db                                           xor    ebx,ebx
  00408f04: eb 08                                           jmp    0x408f0e
  00408f06: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  00408f09: 2b d9                                           sub    ebx,ecx
  00408f0b: c1 fb 02                                        sar    ebx,0x2
  00408f0e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00408f11: 85 ff                                           test   edi,edi
  00408f13: 0f 84 ea 02 00 00                               je     0x409203
  00408f19: 85 c9                                           test   ecx,ecx
  00408f1b: 75 04                                           jne    0x408f21
  00408f1d: 33 c0                                           xor    eax,eax
  00408f1f: eb 08                                           jmp    0x408f29
  00408f21: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00408f24: 2b c1                                           sub    eax,ecx
  00408f26: c1 f8 02                                        sar    eax,0x2
  00408f29: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  00408f2e: 2b d0                                           sub    edx,eax
  00408f30: 3b d7                                           cmp    edx,edi
  00408f32: 73 2f                                           jae    0x408f63
  00408f34: 68 80 05 50 00                                  push   0x500580
  00408f39: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00408f3c: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00408f42: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  00408f45: 50                                              push   eax
  00408f46: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00408f49: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00408f50: e8 cb c4 ff ff                                  call   0x405420
  00408f55: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00408f5a: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00408f5d: 51                                              push   ecx
  00408f5e: e8 f3 8d 0c 00                                  call   0x4d1d56
  00408f63: 85 c9                                           test   ecx,ecx
  00408f65: 75 04                                           jne    0x408f6b
  00408f67: 33 c0                                           xor    eax,eax
  00408f69: eb 08                                           jmp    0x408f73
  00408f6b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00408f6e: 2b c1                                           sub    eax,ecx
  00408f70: c1 f8 02                                        sar    eax,0x2
  00408f73: 03 c7                                           add    eax,edi
  00408f75: 3b d8                                           cmp    ebx,eax
  00408f77: 0f 83 3e 01 00 00                               jae    0x4090bb
  00408f7d: 8b c3                                           mov    eax,ebx
  00408f7f: d1 e8                                           shr    eax,1
  00408f81: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  00408f86: 2b d0                                           sub    edx,eax
  00408f88: 3b d3                                           cmp    edx,ebx
  00408f8a: 73 04                                           jae    0x408f90
  00408f8c: 33 db                                           xor    ebx,ebx
  00408f8e: eb 02                                           jmp    0x408f92
  00408f90: 03 d8                                           add    ebx,eax
  00408f92: 85 c9                                           test   ecx,ecx
  00408f94: 75 04                                           jne    0x408f9a
  00408f96: 33 c0                                           xor    eax,eax
  00408f98: eb 08                                           jmp    0x408fa2
  00408f9a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00408f9d: 2b c1                                           sub    eax,ecx
  00408f9f: c1 f8 02                                        sar    eax,0x2
  00408fa2: 03 c7                                           add    eax,edi
  00408fa4: 3b d8                                           cmp    ebx,eax
  00408fa6: 73 13                                           jae    0x408fbb
  00408fa8: 85 c9                                           test   ecx,ecx
  00408faa: 75 04                                           jne    0x408fb0
  00408fac: 33 c0                                           xor    eax,eax
  00408fae: eb 08                                           jmp    0x408fb8
  00408fb0: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00408fb3: 2b c1                                           sub    eax,ecx
  00408fb5: c1 f8 02                                        sar    eax,0x2
  00408fb8: 8d 1c 38                                        lea    ebx,[eax+edi*1]
  00408fbb: 8d 04 9d 00 00 00 00                            lea    eax,[ebx*4+0x0]
  00408fc2: 50                                              push   eax
  00408fc3: e8 28 90 03 00                                  call   0x441ff0
  00408fc8: 83 c4 04                                        add    esp,0x4
  00408fcb: 50                                              push   eax
  00408fcc: 51                                              push   ecx
  00408fcd: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00408fd0: 8d 55 08                                        lea    edx,[ebp+0x8]
  00408fd3: 8b cc                                           mov    ecx,esp
  00408fd5: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00408fd8: 52                                              push   edx
  00408fd9: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00408fdc: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00408fe3: e8 f8 eb ff ff                                  call   0x407be0
  00408fe8: 51                                              push   ecx
  00408fe9: 8b c4                                           mov    eax,esp
  00408feb: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00408fee: 50                                              push   eax
  00408fef: 8b ce                                           mov    ecx,esi
  00408ff1: e8 2a 02 00 00                                  call   0x409220
  00408ff6: 8b ce                                           mov    ecx,esi
  00408ff8: e8 63 03 00 00                                  call   0x409360
  00408ffd: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00409000: 51                                              push   ecx
  00409001: 57                                              push   edi
  00409002: 50                                              push   eax
  00409003: 8b ce                                           mov    ecx,esi
  00409005: e8 06 03 00 00                                  call   0x409310
  0040900a: 50                                              push   eax
  0040900b: 51                                              push   ecx
  0040900c: 8b d4                                           mov    edx,esp
  0040900e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00409011: 52                                              push   edx
  00409012: 8b ce                                           mov    ecx,esi
  00409014: e8 27 e7 ff ff                                  call   0x407740
  00409019: 51                                              push   ecx
  0040901a: 8d 45 08                                        lea    eax,[ebp+0x8]
  0040901d: 8b cc                                           mov    ecx,esp
  0040901f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00409022: 50                                              push   eax
  00409023: e8 b8 eb ff ff                                  call   0x407be0
  00409028: 8b ce                                           mov    ecx,esi
  0040902a: e8 31 03 00 00                                  call   0x409360
  0040902f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00409032: 85 c0                                           test   eax,eax
  00409034: 74 1a                                           je     0x409050
  00409036: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00409039: 3b c1                                           cmp    eax,ecx
  0040903b: 74 07                                           je     0x409044
  0040903d: 83 c0 04                                        add    eax,0x4
  00409040: 3b c1                                           cmp    eax,ecx
  00409042: 75 f9                                           jne    0x40903d
  00409044: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00409047: 51                                              push   ecx
  00409048: e8 13 90 03 00                                  call   0x442060
  0040904d: 83 c4 04                                        add    esp,0x4
  00409050: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00409053: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00409056: 85 c9                                           test   ecx,ecx
  00409058: 8d 04 9a                                        lea    eax,[edx+ebx*4]
  0040905b: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  0040905e: 75 20                                           jne    0x409080
  00409060: 33 c0                                           xor    eax,eax
  00409062: 8b c7                                           mov    eax,edi
  00409064: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  00409067: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0040906a: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0040906d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00409070: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00409077: 5f                                              pop    edi
  00409078: 5e                                              pop    esi
  00409079: 5b                                              pop    ebx
  0040907a: 8b e5                                           mov    esp,ebp
  0040907c: 5d                                              pop    ebp
  0040907d: c2 0c 00                                        ret    0xc
  00409080: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00409083: 2b c1                                           sub    eax,ecx
  00409085: c1 f8 02                                        sar    eax,0x2
  00409088: 03 c7                                           add    eax,edi
  0040908a: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  0040908d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00409090: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00409093: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00409096: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040909d: 5f                                              pop    edi
  0040909e: 5e                                              pop    esi
  0040909f: 5b                                              pop    ebx
  004090a0: 8b e5                                           mov    esp,ebp
  004090a2: 5d                                              pop    ebp
  004090a3: c2 0c 00                                        ret    0xc
  004090bb: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004090be: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004090c1: 8b d0                                           mov    edx,eax
  004090c3: 2b d1                                           sub    edx,ecx
  004090c5: c1 fa 02                                        sar    edx,0x2
  004090c8: 3b d7                                           cmp    edx,edi
  004090ca: 0f 83 a5 00 00 00                               jae    0x409175
  004090d0: 8d 1c bd 00 00 00 00                            lea    ebx,[edi*4+0x0]
  004090d7: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  004090da: 50                                              push   eax
  004090db: 51                                              push   ecx
  004090dc: 8b cc                                           mov    ecx,esp
  004090de: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004090e1: 51                                              push   ecx
  004090e2: 8b ce                                           mov    ecx,esi
  004090e4: e8 57 e6 ff ff                                  call   0x407740
  004090e9: 51                                              push   ecx
  004090ea: 8d 55 08                                        lea    edx,[ebp+0x8]
  004090ed: 8b cc                                           mov    ecx,esp
  004090ef: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004090f2: 52                                              push   edx
  004090f3: e8 e8 ea ff ff                                  call   0x407be0
  004090f8: 8b ce                                           mov    ecx,esi
  004090fa: e8 61 02 00 00                                  call   0x409360
  004090ff: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00409102: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00409105: 51                                              push   ecx
  00409106: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00409109: 8b d0                                           mov    edx,eax
  0040910b: 2b d1                                           sub    edx,ecx
  0040910d: c1 fa 02                                        sar    edx,0x2
  00409110: 8b cf                                           mov    ecx,edi
  00409112: 2b ca                                           sub    ecx,edx
  00409114: 51                                              push   ecx
  00409115: 50                                              push   eax
  00409116: 8b ce                                           mov    ecx,esi
  00409118: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  0040911f: e8 ec 01 00 00                                  call   0x409310
  00409124: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00409127: 03 cb                                           add    ecx,ebx
  00409129: 8d 55 10                                        lea    edx,[ebp+0x10]
  0040912c: 52                                              push   edx
  0040912d: 51                                              push   ecx
  0040912e: 8b c4                                           mov    eax,esp
  00409130: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00409133: 57                                              push   edi
  00409134: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00409137: 50                                              push   eax
  00409138: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0040913b: 51                                              push   ecx
  0040913c: 8b ce                                           mov    ecx,esi
  0040913e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00409145: e8 f6 e5 ff ff                                  call   0x407740
  0040914a: 8b c8                                           mov    ecx,eax
  0040914c: e8 ef 01 00 00                                  call   0x409340
  00409151: 51                                              push   ecx
  00409152: 8d 55 08                                        lea    edx,[ebp+0x8]
  00409155: 8b cc                                           mov    ecx,esp
  00409157: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0040915a: 52                                              push   edx
  0040915b: e9 96 00 00 00                                  jmp    0x4091f6
  00409175: 50                                              push   eax
  00409176: 51                                              push   ecx
  00409177: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0040917a: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0040917d: 8b cc                                           mov    ecx,esp
  0040917f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00409182: 50                                              push   eax
  00409183: e8 58 ea ff ff                                  call   0x407be0
  00409188: 51                                              push   ecx
  00409189: 8b cc                                           mov    ecx,esp
  0040918b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0040918e: 57                                              push   edi
  0040918f: 51                                              push   ecx
  00409190: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00409193: e8 a8 01 00 00                                  call   0x409340
  00409198: 8b ce                                           mov    ecx,esi
  0040919a: e8 c1 01 00 00                                  call   0x409360
  0040919f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004091a2: 51                                              push   ecx
  004091a3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004091a6: 8b c4                                           mov    eax,esp
  004091a8: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004091ab: 51                                              push   ecx
  004091ac: 89 10                                           mov    DWORD PTR [eax],edx
  004091ae: 8b c4                                           mov    eax,esp
  004091b0: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004091b3: 57                                              push   edi
  004091b4: 50                                              push   eax
  004091b5: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004091b8: e8 83 01 00 00                                  call   0x409340
  004091bd: 51                                              push   ecx
  004091be: 8d 55 08                                        lea    edx,[ebp+0x8]
  004091c1: 8b cc                                           mov    ecx,esp
  004091c3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004091c6: 52                                              push   edx
  004091c7: e8 14 ea ff ff                                  call   0x407be0
  004091cc: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004091cf: 50                                              push   eax
  004091d0: e8 db 01 00 00                                  call   0x4093b0
  004091d5: 83 c4 10                                        add    esp,0x10
  004091d8: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004091db: 51                                              push   ecx
  004091dc: 51                                              push   ecx
  004091dd: 8b d4                                           mov    edx,esp
  004091df: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004091e2: 57                                              push   edi
  004091e3: 52                                              push   edx
  004091e4: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004091e7: e8 44 00 00 00                                  call   0x409230
  004091ec: 51                                              push   ecx
  004091ed: 8d 45 08                                        lea    eax,[ebp+0x8]
  004091f0: 8b cc                                           mov    ecx,esp
  004091f2: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004091f5: 50                                              push   eax
  004091f6: e8 e5 e9 ff ff                                  call   0x407be0
  004091fb: e8 90 01 00 00                                  call   0x409390
  00409200: 83 c4 0c                                        add    esp,0xc
  00409203: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00409206: 5f                                              pop    edi
  00409207: 5e                                              pop    esi
  00409208: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040920f: 5b                                              pop    ebx
  00409210: 8b e5                                           mov    esp,ebp
  00409212: 5d                                              pop    ebp
  00409213: c2 0c 00                                        ret    0xc
  004092b0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004092b2: 8a 50 3d                                        mov    dl,BYTE PTR [eax+0x3d]
  004092b5: 84 d2                                           test   dl,dl
  004092b7: 53                                              push   ebx
  004092b8: 74 07                                           je     0x4092c1
  004092ba: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  004092bd: 89 01                                           mov    DWORD PTR [ecx],eax
  004092bf: 5b                                              pop    ebx
  004092c0: c3                                              ret
  004092c1: 8b 10                                           mov    edx,DWORD PTR [eax]
  004092c3: 8a 5a 3d                                        mov    bl,BYTE PTR [edx+0x3d]
  004092c6: 84 db                                           test   bl,bl
  004092c8: 75 1a                                           jne    0x4092e4
  004092ca: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004092cd: 8a 58 3d                                        mov    bl,BYTE PTR [eax+0x3d]
  004092d0: 84 db                                           test   bl,bl
  004092d2: 75 0c                                           jne    0x4092e0
  004092d4: 8b d0                                           mov    edx,eax
  004092d6: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  004092d9: 8a 58 3d                                        mov    bl,BYTE PTR [eax+0x3d]
  004092dc: 84 db                                           test   bl,bl
  004092de: 74 f4                                           je     0x4092d4
  004092e0: 89 11                                           mov    DWORD PTR [ecx],edx
  004092e2: 5b                                              pop    ebx
  004092e3: c3                                              ret
  004092e4: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004092e7: 8a 50 3d                                        mov    dl,BYTE PTR [eax+0x3d]
  004092ea: 84 d2                                           test   dl,dl
  004092ec: 75 1b                                           jne    0x409309
  004092ee: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004092f0: 3b 10                                           cmp    edx,DWORD PTR [eax]
  004092f2: 75 0c                                           jne    0x409300
  004092f4: 89 01                                           mov    DWORD PTR [ecx],eax
  004092f6: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004092f9: 8a 50 3d                                        mov    dl,BYTE PTR [eax+0x3d]
  004092fc: 84 d2                                           test   dl,dl
  004092fe: 74 ee                                           je     0x4092ee
  00409300: 8a 50 3d                                        mov    dl,BYTE PTR [eax+0x3d]
  00409303: 84 d2                                           test   dl,dl
  00409305: 75 02                                           jne    0x409309
  00409307: 89 01                                           mov    DWORD PTR [ecx],eax
  00409309: 5b                                              pop    ebx
  0040930a: c3                                              ret
  00411160: 55                                              push   ebp
  00411161: 8b ec                                           mov    ebp,esp
  00411163: 6a ff                                           push   0xffffffff
  00411165: 68 39 38 4d 00                                  push   0x4d3839
  0041116a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00411170: 50                                              push   eax
  00411171: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00411178: 83 ec 3c                                        sub    esp,0x3c
  0041117b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0041117e: 53                                              push   ebx
  0041117f: 56                                              push   esi
  00411180: 8b f1                                           mov    esi,ecx
  00411182: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00411184: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  00411187: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0041118a: 85 c9                                           test   ecx,ecx
  0041118c: 57                                              push   edi
  0041118d: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00411190: 75 04                                           jne    0x411196
  00411192: 33 db                                           xor    ebx,ebx
  00411194: eb 08                                           jmp    0x41119e
  00411196: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  00411199: 2b d9                                           sub    ebx,ecx
  0041119b: c1 fb 02                                        sar    ebx,0x2
  0041119e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004111a1: 85 ff                                           test   edi,edi
  004111a3: 0f 84 ea 02 00 00                               je     0x411493
  004111a9: 85 c9                                           test   ecx,ecx
  004111ab: 75 04                                           jne    0x4111b1
  004111ad: 33 c0                                           xor    eax,eax
  004111af: eb 08                                           jmp    0x4111b9
  004111b1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004111b4: 2b c1                                           sub    eax,ecx
  004111b6: c1 f8 02                                        sar    eax,0x2
  004111b9: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  004111be: 2b d0                                           sub    edx,eax
  004111c0: 3b d7                                           cmp    edx,edi
  004111c2: 73 2f                                           jae    0x4111f3
  004111c4: 68 80 05 50 00                                  push   0x500580
  004111c9: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  004111cc: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004111d2: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  004111d5: 50                                              push   eax
  004111d6: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004111d9: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004111e0: e8 3b 42 ff ff                                  call   0x405420
  004111e5: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004111ea: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004111ed: 51                                              push   ecx
  004111ee: e8 63 0b 0c 00                                  call   0x4d1d56
  004111f3: 85 c9                                           test   ecx,ecx
  004111f5: 75 04                                           jne    0x4111fb
  004111f7: 33 c0                                           xor    eax,eax
  004111f9: eb 08                                           jmp    0x411203
  004111fb: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004111fe: 2b c1                                           sub    eax,ecx
  00411200: c1 f8 02                                        sar    eax,0x2
  00411203: 03 c7                                           add    eax,edi
  00411205: 3b d8                                           cmp    ebx,eax
  00411207: 0f 83 3e 01 00 00                               jae    0x41134b
  0041120d: 8b c3                                           mov    eax,ebx
  0041120f: d1 e8                                           shr    eax,1
  00411211: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  00411216: 2b d0                                           sub    edx,eax
  00411218: 3b d3                                           cmp    edx,ebx
  0041121a: 73 04                                           jae    0x411220
  0041121c: 33 db                                           xor    ebx,ebx
  0041121e: eb 02                                           jmp    0x411222
  00411220: 03 d8                                           add    ebx,eax
  00411222: 85 c9                                           test   ecx,ecx
  00411224: 75 04                                           jne    0x41122a
  00411226: 33 c0                                           xor    eax,eax
  00411228: eb 08                                           jmp    0x411232
  0041122a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0041122d: 2b c1                                           sub    eax,ecx
  0041122f: c1 f8 02                                        sar    eax,0x2
  00411232: 03 c7                                           add    eax,edi
  00411234: 3b d8                                           cmp    ebx,eax
  00411236: 73 13                                           jae    0x41124b
  00411238: 85 c9                                           test   ecx,ecx
  0041123a: 75 04                                           jne    0x411240
  0041123c: 33 c0                                           xor    eax,eax
  0041123e: eb 08                                           jmp    0x411248
  00411240: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00411243: 2b c1                                           sub    eax,ecx
  00411245: c1 f8 02                                        sar    eax,0x2
  00411248: 8d 1c 38                                        lea    ebx,[eax+edi*1]
  0041124b: 8d 04 9d 00 00 00 00                            lea    eax,[ebx*4+0x0]
  00411252: 50                                              push   eax
  00411253: e8 98 0d 03 00                                  call   0x441ff0
  00411258: 83 c4 04                                        add    esp,0x4
  0041125b: 50                                              push   eax
  0041125c: 51                                              push   ecx
  0041125d: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00411260: 8d 55 08                                        lea    edx,[ebp+0x8]
  00411263: 8b cc                                           mov    ecx,esp
  00411265: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00411268: 52                                              push   edx
  00411269: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0041126c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00411273: e8 48 02 00 00                                  call   0x4114c0
  00411278: 51                                              push   ecx
  00411279: 8b c4                                           mov    eax,esp
  0041127b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0041127e: 50                                              push   eax
  0041127f: 8b ce                                           mov    ecx,esi
  00411281: e8 2a 02 00 00                                  call   0x4114b0
  00411286: 8b ce                                           mov    ecx,esi
  00411288: e8 83 03 00 00                                  call   0x411610
  0041128d: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00411290: 51                                              push   ecx
  00411291: 57                                              push   edi
  00411292: 50                                              push   eax
  00411293: 8b ce                                           mov    ecx,esi
  00411295: e8 56 02 00 00                                  call   0x4114f0
  0041129a: 50                                              push   eax
  0041129b: 51                                              push   ecx
  0041129c: 8b d4                                           mov    edx,esp
  0041129e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004112a1: 52                                              push   edx
  004112a2: 8b ce                                           mov    ecx,esi
  004112a4: e8 47 fe ff ff                                  call   0x4110f0
  004112a9: 51                                              push   ecx
  004112aa: 8d 45 08                                        lea    eax,[ebp+0x8]
  004112ad: 8b cc                                           mov    ecx,esp
  004112af: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004112b2: 50                                              push   eax
  004112b3: e8 08 02 00 00                                  call   0x4114c0
  004112b8: 8b ce                                           mov    ecx,esi
  004112ba: e8 51 03 00 00                                  call   0x411610
  004112bf: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004112c2: 85 c0                                           test   eax,eax
  004112c4: 74 1a                                           je     0x4112e0
  004112c6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004112c9: 3b c1                                           cmp    eax,ecx
  004112cb: 74 07                                           je     0x4112d4
  004112cd: 83 c0 04                                        add    eax,0x4
  004112d0: 3b c1                                           cmp    eax,ecx
  004112d2: 75 f9                                           jne    0x4112cd
  004112d4: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004112d7: 51                                              push   ecx
  004112d8: e8 83 0d 03 00                                  call   0x442060
  004112dd: 83 c4 04                                        add    esp,0x4
  004112e0: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004112e3: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004112e6: 85 c9                                           test   ecx,ecx
  004112e8: 8d 04 9a                                        lea    eax,[edx+ebx*4]
  004112eb: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004112ee: 75 20                                           jne    0x411310
  004112f0: 33 c0                                           xor    eax,eax
  004112f2: 8b c7                                           mov    eax,edi
  004112f4: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  004112f7: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004112fa: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004112fd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00411300: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00411307: 5f                                              pop    edi
  00411308: 5e                                              pop    esi
  00411309: 5b                                              pop    ebx
  0041130a: 8b e5                                           mov    esp,ebp
  0041130c: 5d                                              pop    ebp
  0041130d: c2 0c 00                                        ret    0xc
  00411310: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00411313: 2b c1                                           sub    eax,ecx
  00411315: c1 f8 02                                        sar    eax,0x2
  00411318: 03 c7                                           add    eax,edi
  0041131a: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  0041131d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00411320: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00411323: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00411326: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041132d: 5f                                              pop    edi
  0041132e: 5e                                              pop    esi
  0041132f: 5b                                              pop    ebx
  00411330: 8b e5                                           mov    esp,ebp
  00411332: 5d                                              pop    ebp
  00411333: c2 0c 00                                        ret    0xc
  0041134b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0041134e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00411351: 8b d0                                           mov    edx,eax
  00411353: 2b d1                                           sub    edx,ecx
  00411355: c1 fa 02                                        sar    edx,0x2
  00411358: 3b d7                                           cmp    edx,edi
  0041135a: 0f 83 a5 00 00 00                               jae    0x411405
  00411360: 8d 1c bd 00 00 00 00                            lea    ebx,[edi*4+0x0]
  00411367: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  0041136a: 50                                              push   eax
  0041136b: 51                                              push   ecx
  0041136c: 8b cc                                           mov    ecx,esp
  0041136e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00411371: 51                                              push   ecx
  00411372: 8b ce                                           mov    ecx,esi
  00411374: e8 77 fd ff ff                                  call   0x4110f0
  00411379: 51                                              push   ecx
  0041137a: 8d 55 08                                        lea    edx,[ebp+0x8]
  0041137d: 8b cc                                           mov    ecx,esp
  0041137f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00411382: 52                                              push   edx
  00411383: e8 38 01 00 00                                  call   0x4114c0
  00411388: 8b ce                                           mov    ecx,esi
  0041138a: e8 81 02 00 00                                  call   0x411610
  0041138f: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00411392: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00411395: 51                                              push   ecx
  00411396: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00411399: 8b d0                                           mov    edx,eax
  0041139b: 2b d1                                           sub    edx,ecx
  0041139d: c1 fa 02                                        sar    edx,0x2
  004113a0: 8b cf                                           mov    ecx,edi
  004113a2: 2b ca                                           sub    ecx,edx
  004113a4: 51                                              push   ecx
  004113a5: 50                                              push   eax
  004113a6: 8b ce                                           mov    ecx,esi
  004113a8: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  004113af: e8 3c 01 00 00                                  call   0x4114f0
  004113b4: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004113b7: 03 cb                                           add    ecx,ebx
  004113b9: 8d 55 10                                        lea    edx,[ebp+0x10]
  004113bc: 52                                              push   edx
  004113bd: 51                                              push   ecx
  004113be: 8b c4                                           mov    eax,esp
  004113c0: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004113c3: 57                                              push   edi
  004113c4: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004113c7: 50                                              push   eax
  004113c8: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004113cb: 51                                              push   ecx
  004113cc: 8b ce                                           mov    ecx,esi
  004113ce: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004113d5: e8 16 fd ff ff                                  call   0x4110f0
  004113da: 8b c8                                           mov    ecx,eax
  004113dc: e8 3f 01 00 00                                  call   0x411520
  004113e1: 51                                              push   ecx
  004113e2: 8d 55 08                                        lea    edx,[ebp+0x8]
  004113e5: 8b cc                                           mov    ecx,esp
  004113e7: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004113ea: 52                                              push   edx
  004113eb: e9 96 00 00 00                                  jmp    0x411486
  00411405: 50                                              push   eax
  00411406: 51                                              push   ecx
  00411407: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0041140a: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0041140d: 8b cc                                           mov    ecx,esp
  0041140f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00411412: 50                                              push   eax
  00411413: e8 a8 00 00 00                                  call   0x4114c0
  00411418: 51                                              push   ecx
  00411419: 8b cc                                           mov    ecx,esp
  0041141b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0041141e: 57                                              push   edi
  0041141f: 51                                              push   ecx
  00411420: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00411423: e8 f8 00 00 00                                  call   0x411520
  00411428: 8b ce                                           mov    ecx,esi
  0041142a: e8 e1 01 00 00                                  call   0x411610
  0041142f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00411432: 51                                              push   ecx
  00411433: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00411436: 8b c4                                           mov    eax,esp
  00411438: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0041143b: 51                                              push   ecx
  0041143c: 89 10                                           mov    DWORD PTR [eax],edx
  0041143e: 8b c4                                           mov    eax,esp
  00411440: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00411443: 57                                              push   edi
  00411444: 50                                              push   eax
  00411445: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00411448: e8 d3 00 00 00                                  call   0x411520
  0041144d: 51                                              push   ecx
  0041144e: 8d 55 08                                        lea    edx,[ebp+0x8]
  00411451: 8b cc                                           mov    ecx,esp
  00411453: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00411456: 52                                              push   edx
  00411457: e8 64 00 00 00                                  call   0x4114c0
  0041145c: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0041145f: 50                                              push   eax
  00411460: e8 fb 01 00 00                                  call   0x411660
  00411465: 83 c4 10                                        add    esp,0x10
  00411468: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0041146b: 51                                              push   ecx
  0041146c: 51                                              push   ecx
  0041146d: 8b d4                                           mov    edx,esp
  0041146f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00411472: 57                                              push   edi
  00411473: 52                                              push   edx
  00411474: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00411477: e8 54 00 00 00                                  call   0x4114d0
  0041147c: 51                                              push   ecx
  0041147d: 8d 45 08                                        lea    eax,[ebp+0x8]
  00411480: 8b cc                                           mov    ecx,esp
  00411482: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00411485: 50                                              push   eax
  00411486: e8 35 00 00 00                                  call   0x4114c0
  0041148b: e8 b0 01 00 00                                  call   0x411640
  00411490: 83 c4 0c                                        add    esp,0xc
  00411493: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00411496: 5f                                              pop    edi
  00411497: 5e                                              pop    esi
  00411498: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041149f: 5b                                              pop    ebx
  004114a0: 8b e5                                           mov    esp,ebp
  004114a2: 5d                                              pop    ebp
  004114a3: c2 0c 00                                        ret    0xc
  004114c0: 55                                              push   ebp
  004114c1: 8b ec                                           mov    ebp,esp
  004114c3: 8b c1                                           mov    eax,ecx
  004114c5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004114c8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004114ca: 89 10                                           mov    DWORD PTR [eax],edx
  004114cc: 5d                                              pop    ebp
  004114cd: c2 04 00                                        ret    0x4
  00424050: 55                                              push   ebp
  00424051: 8b ec                                           mov    ebp,esp
  00424053: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00424056: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00424058: c1 e2 04                                        shl    edx,0x4
  0042405b: 03 d0                                           add    edx,eax
  0042405d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00424060: 89 10                                           mov    DWORD PTR [eax],edx
  00424062: 5d                                              pop    ebp
  00424063: c2 08 00                                        ret    0x8
  00424120: 55                                              push   ebp
  00424121: 8b ec                                           mov    ebp,esp
  00424123: 6a ff                                           push   0xffffffff
  00424125: 68 61 45 4d 00                                  push   0x4d4561
  0042412a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00424130: 50                                              push   eax
  00424131: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00424138: 83 ec 08                                        sub    esp,0x8
  0042413b: 53                                              push   ebx
  0042413c: 56                                              push   esi
  0042413d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00424140: 57                                              push   edi
  00424141: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00424144: 33 db                                           xor    ebx,ebx
  00424146: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00424149: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0042414c: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0042414f: 39 5d 0c                                        cmp    DWORD PTR [ebp+0xc],ebx
  00424152: 0f 86 8a 00 00 00                               jbe    0x4241e2
  00424158: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  0042415b: 3b f3                                           cmp    esi,ebx
  0042415d: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00424161: 74 1f                                           je     0x424182
  00424163: 8a 07                                           mov    al,BYTE PTR [edi]
  00424165: 88 06                                           mov    BYTE PTR [esi],al
  00424167: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0042416a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042416d: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00424170: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00424175: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00424177: 51                                              push   ecx
  00424178: 53                                              push   ebx
  00424179: 57                                              push   edi
  0042417a: 8b ce                                           mov    ecx,esi
  0042417c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00424182: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00424185: 49                                              dec    ecx
  00424186: 83 c6 10                                        add    esi,0x10
  00424189: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0042418c: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0042418f: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00424192: eb bb                                           jmp    0x42414f
  004241e2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004241e5: 5f                                              pop    edi
  004241e6: 8b c6                                           mov    eax,esi
  004241e8: 5e                                              pop    esi
  004241e9: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004241f0: 5b                                              pop    ebx
  004241f1: 8b e5                                           mov    esp,ebp
  004241f3: 5d                                              pop    ebp
  004241f4: c2 0c 00                                        ret    0xc
  00424200: 55                                              push   ebp
  00424201: 8b ec                                           mov    ebp,esp
  00424203: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00424206: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00424208: c1 e0 04                                        shl    eax,0x4
  0042420b: 2b c8                                           sub    ecx,eax
  0042420d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00424210: 89 08                                           mov    DWORD PTR [eax],ecx
  00424212: 5d                                              pop    ebp
  00424213: c2 08 00                                        ret    0x8
  00424ac0: 55                                              push   ebp
  00424ac1: 8b ec                                           mov    ebp,esp
  00424ac3: 6a ff                                           push   0xffffffff
  00424ac5: 68 81 45 4d 00                                  push   0x4d4581
  00424aca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00424ad0: 50                                              push   eax
  00424ad1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00424ad8: 83 ec 08                                        sub    esp,0x8
  00424adb: 53                                              push   ebx
  00424adc: 56                                              push   esi
  00424add: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00424ae0: 57                                              push   edi
  00424ae1: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00424ae4: 33 db                                           xor    ebx,ebx
  00424ae6: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00424ae9: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00424aec: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  00424aef: 3b 7d 0c                                        cmp    edi,DWORD PTR [ebp+0xc]
  00424af2: 0f 84 86 00 00 00                               je     0x424b7e
  00424af8: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  00424afb: 3b f3                                           cmp    esi,ebx
  00424afd: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00424b01: 74 1f                                           je     0x424b22
  00424b03: 8a 07                                           mov    al,BYTE PTR [edi]
  00424b05: 88 06                                           mov    BYTE PTR [esi],al
  00424b07: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  00424b0a: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00424b0d: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00424b10: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00424b15: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00424b17: 51                                              push   ecx
  00424b18: 53                                              push   ebx
  00424b19: 57                                              push   edi
  00424b1a: 8b ce                                           mov    ecx,esi
  00424b1c: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00424b22: 83 c6 10                                        add    esi,0x10
  00424b25: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  00424b28: 89 75 10                                        mov    DWORD PTR [ebp+0x10],esi
  00424b2b: 83 c7 10                                        add    edi,0x10
  00424b2e: eb bf                                           jmp    0x424aef
  00424b7e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00424b81: 5f                                              pop    edi
  00424b82: 8b c6                                           mov    eax,esi
  00424b84: 5e                                              pop    esi
  00424b85: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00424b8c: 5b                                              pop    ebx
  00424b8d: 8b e5                                           mov    esp,ebp
  00424b8f: 5d                                              pop    ebp
  00424b90: c2 0c 00                                        ret    0xc
  00424ba0: 55                                              push   ebp
  00424ba1: 8b ec                                           mov    ebp,esp
  00424ba3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00424ba6: 53                                              push   ebx
  00424ba7: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00424baa: 3b d8                                           cmp    ebx,eax
  00424bac: 0f 84 43 01 00 00                               je     0x424cf5
  00424bb2: 56                                              push   esi
  00424bb3: 57                                              push   edi
  00424bb4: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  00424bb7: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00424bbc: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00424bbf: 8b 00                                           mov    eax,DWORD PTR [eax]
  00424bc1: 8b f9                                           mov    edi,ecx
  00424bc3: 3b c7                                           cmp    eax,edi
  00424bc5: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00424bc8: 73 05                                           jae    0x424bcf
  00424bca: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00424bcd: 8b f8                                           mov    edi,eax
  00424bcf: 3b de                                           cmp    ebx,esi
  00424bd1: 75 6c                                           jne    0x424c3f
  00424bd3: 8b f0                                           mov    esi,eax
  00424bd5: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  00424bd8: 73 08                                           jae    0x424be2
  00424bda: 8b cb                                           mov    ecx,ebx
  00424bdc: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00424be2: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00424be5: 2b c7                                           sub    eax,edi
  00424be7: 3b c6                                           cmp    eax,esi
  00424be9: 73 02                                           jae    0x424bed
  00424beb: 8b f0                                           mov    esi,eax
  00424bed: 85 f6                                           test   esi,esi
  00424bef: 0f 86 f0 00 00 00                               jbe    0x424ce5
  00424bf5: 8b cb                                           mov    ecx,ebx
  00424bf7: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00424bfd: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00424c00: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00424c03: 2b d6                                           sub    edx,esi
  00424c05: 8d 04 39                                        lea    eax,[ecx+edi*1]
  00424c08: 2b d7                                           sub    edx,edi
  00424c0a: 52                                              push   edx
  00424c0b: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00424c0e: 51                                              push   ecx
  00424c0f: 50                                              push   eax
  00424c10: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00424c16: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00424c19: 83 c4 0c                                        add    esp,0xc
  00424c1c: 6a 00                                           push   0x0
  00424c1e: 2b fe                                           sub    edi,esi
  00424c20: 57                                              push   edi
  00424c21: 8b cb                                           mov    ecx,ebx
  00424c23: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00424c29: 84 c0                                           test   al,al
  00424c2b: 0f 84 b4 00 00 00                               je     0x424ce5
  00424c31: 57                                              push   edi
  00424c32: 8b cb                                           mov    ecx,ebx
  00424c34: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00424c3a: e9 a6 00 00 00                                  jmp    0x424ce5
  00424c3f: 33 d2                                           xor    edx,edx
  00424c41: 3b fa                                           cmp    edi,edx
  00424c43: 76 64                                           jbe    0x424ca9
  00424c45: 3b f9                                           cmp    edi,ecx
  00424c47: 75 60                                           jne    0x424ca9
  00424c49: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00424c4c: 3b c2                                           cmp    eax,edx
  00424c4e: 75 05                                           jne    0x424c55
  00424c50: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00424c55: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00424c59: 73 4e                                           jae    0x424ca9
  00424c5b: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  00424c5e: 3b c2                                           cmp    eax,edx
  00424c60: 74 1e                                           je     0x424c80
  00424c62: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00424c65: 8a 01                                           mov    al,BYTE PTR [ecx]
  00424c67: 84 c0                                           test   al,al
  00424c69: 74 0a                                           je     0x424c75
  00424c6b: 3c ff                                           cmp    al,0xff
  00424c6d: 74 06                                           je     0x424c75
  00424c6f: fe c8                                           dec    al
  00424c71: 88 01                                           mov    BYTE PTR [ecx],al
  00424c73: eb 0b                                           jmp    0x424c80
  00424c75: 51                                              push   ecx
  00424c76: e8 e5 d3 01 00                                  call   0x442060
  00424c7b: 83 c4 04                                        add    esp,0x4
  00424c7e: 33 d2                                           xor    edx,edx
  00424c80: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00424c83: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00424c86: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00424c89: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00424c8c: 3b c2                                           cmp    eax,edx
  00424c8e: 75 05                                           jne    0x424c95
  00424c90: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00424c95: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00424c98: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00424c9b: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00424c9e: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00424ca1: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00424ca4: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00424ca7: eb 3c                                           jmp    0x424ce5
  00424ca9: 6a 01                                           push   0x1
  00424cab: 57                                              push   edi
  00424cac: 8b cb                                           mov    ecx,ebx
  00424cae: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00424cb4: 84 c0                                           test   al,al
  00424cb6: 74 2d                                           je     0x424ce5
  00424cb8: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00424cbb: 85 f6                                           test   esi,esi
  00424cbd: 75 06                                           jne    0x424cc5
  00424cbf: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00424cc5: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00424cc8: 8b cf                                           mov    ecx,edi
  00424cca: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00424ccd: 8b d1                                           mov    edx,ecx
  00424ccf: c1 e9 02                                        shr    ecx,0x2
  00424cd2: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00424cd4: 8b ca                                           mov    ecx,edx
  00424cd6: 83 e1 03                                        and    ecx,0x3
  00424cd9: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00424cdb: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00424cde: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00424ce1: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  00424ce5: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00424ce8: 83 c3 10                                        add    ebx,0x10
  00424ceb: 3b d8                                           cmp    ebx,eax
  00424ced: 0f 85 c1 fe ff ff                               jne    0x424bb4
  00424cf3: 5f                                              pop    edi
  00424cf4: 5e                                              pop    esi
  00424cf5: 5b                                              pop    ebx
  00424cf6: 5d                                              pop    ebp
  00424cf7: c3                                              ret
  00424d00: 55                                              push   ebp
  00424d01: 8b ec                                           mov    ebp,esp
  00424d03: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00424d06: 39 45 0c                                        cmp    DWORD PTR [ebp+0xc],eax
  00424d09: 0f 84 3b 01 00 00                               je     0x424e4a
  00424d0f: 53                                              push   ebx
  00424d10: 8b 5d 14                                        mov    ebx,DWORD PTR [ebp+0x14]
  00424d13: 56                                              push   esi
  00424d14: 57                                              push   edi
  00424d15: eb 03                                           jmp    0x424d1a
  00424d17: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00424d1a: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  00424d20: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00424d22: 8b 48 f8                                        mov    ecx,DWORD PTR [eax-0x8]
  00424d25: 83 e8 10                                        sub    eax,0x10
  00424d28: 8b f9                                           mov    edi,ecx
  00424d2a: 83 eb 10                                        sub    ebx,0x10
  00424d2d: 3b f7                                           cmp    esi,edi
  00424d2f: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00424d32: 89 7d 14                                        mov    DWORD PTR [ebp+0x14],edi
  00424d35: 73 05                                           jae    0x424d3c
  00424d37: 89 75 14                                        mov    DWORD PTR [ebp+0x14],esi
  00424d3a: 8b fe                                           mov    edi,esi
  00424d3c: 3b d8                                           cmp    ebx,eax
  00424d3e: 75 6e                                           jne    0x424dae
  00424d40: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  00424d43: 73 08                                           jae    0x424d4d
  00424d45: 8b cb                                           mov    ecx,ebx
  00424d47: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00424d4d: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00424d50: 2b c7                                           sub    eax,edi
  00424d52: 3b c6                                           cmp    eax,esi
  00424d54: 73 02                                           jae    0x424d58
  00424d56: 8b f0                                           mov    esi,eax
  00424d58: 85 f6                                           test   esi,esi
  00424d5a: 76 41                                           jbe    0x424d9d
  00424d5c: 8b cb                                           mov    ecx,ebx
  00424d5e: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00424d64: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  00424d67: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  00424d6a: 2b ce                                           sub    ecx,esi
  00424d6c: 8d 04 3a                                        lea    eax,[edx+edi*1]
  00424d6f: 2b cf                                           sub    ecx,edi
  00424d71: 51                                              push   ecx
  00424d72: 8d 14 30                                        lea    edx,[eax+esi*1]
  00424d75: 52                                              push   edx
  00424d76: 50                                              push   eax
  00424d77: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00424d7d: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00424d80: 83 c4 0c                                        add    esp,0xc
  00424d83: 6a 00                                           push   0x0
  00424d85: 2b fe                                           sub    edi,esi
  00424d87: 57                                              push   edi
  00424d88: 8b cb                                           mov    ecx,ebx
  00424d8a: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00424d90: 84 c0                                           test   al,al
  00424d92: 74 09                                           je     0x424d9d
  00424d94: 57                                              push   edi
  00424d95: 8b cb                                           mov    ecx,ebx
  00424d97: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00424d9d: 6a 00                                           push   0x0
  00424d9f: 6a 00                                           push   0x0
  00424da1: 8b cb                                           mov    ecx,ebx
  00424da3: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00424da9: e9 86 00 00 00                                  jmp    0x424e34
  00424dae: 85 ff                                           test   edi,edi
  00424db0: 76 43                                           jbe    0x424df5
  00424db2: 3b f9                                           cmp    edi,ecx
  00424db4: 75 3f                                           jne    0x424df5
  00424db6: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00424db9: 85 c0                                           test   eax,eax
  00424dbb: 75 05                                           jne    0x424dc2
  00424dbd: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00424dc2: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00424dc6: 73 2d                                           jae    0x424df5
  00424dc8: 6a 01                                           push   0x1
  00424dca: 8b cb                                           mov    ecx,ebx
  00424dcc: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00424dd2: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00424dd5: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00424dd8: 85 c0                                           test   eax,eax
  00424dda: 75 05                                           jne    0x424de1
  00424ddc: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00424de1: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00424de4: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00424de7: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00424dea: 8b 49 0c                                        mov    ecx,DWORD PTR [ecx+0xc]
  00424ded: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00424df0: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00424df3: eb 3f                                           jmp    0x424e34
  00424df5: 6a 01                                           push   0x1
  00424df7: 57                                              push   edi
  00424df8: 8b cb                                           mov    ecx,ebx
  00424dfa: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00424e00: 84 c0                                           test   al,al
  00424e02: 74 30                                           je     0x424e34
  00424e04: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00424e07: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00424e0a: 85 c0                                           test   eax,eax
  00424e0c: 75 05                                           jne    0x424e13
  00424e0e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00424e13: 8b cf                                           mov    ecx,edi
  00424e15: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00424e18: 8b f0                                           mov    esi,eax
  00424e1a: 8b c1                                           mov    eax,ecx
  00424e1c: c1 e9 02                                        shr    ecx,0x2
  00424e1f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00424e21: 8b c8                                           mov    ecx,eax
  00424e23: 83 e1 03                                        and    ecx,0x3
  00424e26: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00424e28: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00424e2b: 51                                              push   ecx
  00424e2c: 8b cb                                           mov    ecx,ebx
  00424e2e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00424e34: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00424e37: 3b 55 0c                                        cmp    edx,DWORD PTR [ebp+0xc]
  00424e3a: 0f 85 d7 fe ff ff                               jne    0x424d17
  00424e40: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00424e43: 5f                                              pop    edi
  00424e44: 5e                                              pop    esi
  00424e45: 89 18                                           mov    DWORD PTR [eax],ebx
  00424e47: 5b                                              pop    ebx
  00424e48: 5d                                              pop    ebp
  00424e49: c3                                              ret
  00424e4a: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00424e4d: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00424e50: 89 08                                           mov    DWORD PTR [eax],ecx
  00424e52: 5d                                              pop    ebp
  00424e53: c3                                              ret
  004275e0: 55                                              push   ebp
  004275e1: 8b ec                                           mov    ebp,esp
  004275e3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004275e6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004275e8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004275eb: 89 08                                           mov    DWORD PTR [eax],ecx
  004275ed: 5d                                              pop    ebp
  004275ee: c2 04 00                                        ret    0x4
  00427600: 55                                              push   ebp
  00427601: 8b ec                                           mov    ebp,esp
  00427603: 6a ff                                           push   0xffffffff
  00427605: 68 49 49 4d 00                                  push   0x4d4949
  0042760a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00427610: 50                                              push   eax
  00427611: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00427618: 83 ec 34                                        sub    esp,0x34
  0042761b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042761e: 56                                              push   esi
  0042761f: 8b f1                                           mov    esi,ecx
  00427621: 8a 48 15                                        mov    cl,BYTE PTR [eax+0x15]
  00427624: 84 c9                                           test   cl,cl
  00427626: 57                                              push   edi
  00427627: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0042762a: 74 57                                           je     0x427683
  0042762c: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  0042762f: 6a 00                                           push   0x0
  00427631: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00427634: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00427637: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042763d: 83 c9 ff                                        or     ecx,0xffffffff
  00427640: 33 c0                                           xor    eax,eax
  00427642: bf 40 05 50 00                                  mov    edi,0x500540
  00427647: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00427649: f7 d1                                           not    ecx
  0042764b: 49                                              dec    ecx
  0042764c: 51                                              push   ecx
  0042764d: 68 40 05 50 00                                  push   0x500540
  00427652: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00427655: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0042765b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0042765e: 51                                              push   ecx
  0042765f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00427662: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00427669: e8 12 da fd ff                                  call   0x405080
  0042766e: 68 18 0a 4e 00                                  push   0x4e0a18
  00427673: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00427676: 52                                              push   edx
  00427677: c7 45 c0 e0 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5e0
  0042767e: e8 d3 a6 0a 00                                  call   0x4d1d56
  00427683: 53                                              push   ebx
  00427684: 8b d8                                           mov    ebx,eax
  00427686: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00427689: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0042768c: e8 ff 1b 00 00                                  call   0x429290
  00427691: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00427693: 8a 42 15                                        mov    al,BYTE PTR [edx+0x15]
  00427696: 84 c0                                           test   al,al
  00427698: 74 05                                           je     0x42769f
  0042769a: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0042769d: eb 2b                                           jmp    0x4276ca
  0042769f: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004276a2: 8a 41 15                                        mov    al,BYTE PTR [ecx+0x15]
  004276a5: 84 c0                                           test   al,al
  004276a7: 74 04                                           je     0x4276ad
  004276a9: 8b fa                                           mov    edi,edx
  004276ab: eb 1d                                           jmp    0x4276ca
  004276ad: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004276af: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  004276b3: 75 0a                                           jne    0x4276bf
  004276b5: 8b c8                                           mov    ecx,eax
  004276b7: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004276b9: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  004276bd: 74 f6                                           je     0x4276b5
  004276bf: 3b cb                                           cmp    ecx,ebx
  004276c1: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  004276c4: 0f 85 8a 00 00 00                               jne    0x427754
  004276ca: 8a 4f 15                                        mov    cl,BYTE PTR [edi+0x15]
  004276cd: 84 c9                                           test   cl,cl
  004276cf: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004276d2: 75 03                                           jne    0x4276d7
  004276d4: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004276d7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004276da: 39 59 04                                        cmp    DWORD PTR [ecx+0x4],ebx
  004276dd: 75 05                                           jne    0x4276e4
  004276df: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  004276e2: eb 0b                                           jmp    0x4276ef
  004276e4: 39 18                                           cmp    DWORD PTR [eax],ebx
  004276e6: 75 04                                           jne    0x4276ec
  004276e8: 89 38                                           mov    DWORD PTR [eax],edi
  004276ea: eb 03                                           jmp    0x4276ef
  004276ec: 89 78 08                                        mov    DWORD PTR [eax+0x8],edi
  004276ef: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004276f2: 39 1e                                           cmp    DWORD PTR [esi],ebx
  004276f4: 75 24                                           jne    0x42771a
  004276f6: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004276f9: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  004276fc: 84 d2                                           test   dl,dl
  004276fe: 74 04                                           je     0x427704
  00427700: 89 06                                           mov    DWORD PTR [esi],eax
  00427702: eb 16                                           jmp    0x42771a
  00427704: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00427706: 80 79 15 00                                     cmp    BYTE PTR [ecx+0x15],0x0
  0042770a: 8b d7                                           mov    edx,edi
  0042770c: 75 0a                                           jne    0x427718
  0042770e: 8b d1                                           mov    edx,ecx
  00427710: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  00427712: 80 79 15 00                                     cmp    BYTE PTR [ecx+0x15],0x0
  00427716: 74 f6                                           je     0x42770e
  00427718: 89 16                                           mov    DWORD PTR [esi],edx
  0042771a: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0042771d: 8b 72 04                                        mov    esi,DWORD PTR [edx+0x4]
  00427720: 39 5e 08                                        cmp    DWORD PTR [esi+0x8],ebx
  00427723: 0f 85 89 00 00 00                               jne    0x4277b2
  00427729: 8b 0b                                           mov    ecx,DWORD PTR [ebx]
  0042772b: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  0042772e: 84 d2                                           test   dl,dl
  00427730: 74 05                                           je     0x427737
  00427732: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00427735: eb 7b                                           jmp    0x4277b2
  00427737: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0042773a: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  0042773d: 84 db                                           test   bl,bl
  0042773f: 8b d7                                           mov    edx,edi
  00427741: 75 0c                                           jne    0x42774f
  00427743: 8b d1                                           mov    edx,ecx
  00427745: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  00427748: 8a 59 15                                        mov    bl,BYTE PTR [ecx+0x15]
  0042774b: 84 db                                           test   bl,bl
  0042774d: 74 f4                                           je     0x427743
  0042774f: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00427752: eb 5e                                           jmp    0x4277b2
  00427754: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427757: 8b 13                                           mov    edx,DWORD PTR [ebx]
  00427759: 89 11                                           mov    DWORD PTR [ecx],edx
  0042775b: 3b 4b 08                                        cmp    ecx,DWORD PTR [ebx+0x8]
  0042775e: 75 04                                           jne    0x427764
  00427760: 8b c1                                           mov    eax,ecx
  00427762: eb 1b                                           jmp    0x42777f
  00427764: 8a 57 15                                        mov    dl,BYTE PTR [edi+0x15]
  00427767: 84 d2                                           test   dl,dl
  00427769: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042776c: 75 03                                           jne    0x427771
  0042776e: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  00427771: 89 38                                           mov    DWORD PTR [eax],edi
  00427773: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00427776: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00427779: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0042777c: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0042777f: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00427782: 39 5a 04                                        cmp    DWORD PTR [edx+0x4],ebx
  00427785: 75 05                                           jne    0x42778c
  00427787: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0042778a: eb 0e                                           jmp    0x42779a
  0042778c: 8b 53 04                                        mov    edx,DWORD PTR [ebx+0x4]
  0042778f: 39 1a                                           cmp    DWORD PTR [edx],ebx
  00427791: 75 04                                           jne    0x427797
  00427793: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427795: eb 03                                           jmp    0x42779a
  00427797: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0042779a: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0042779d: 8b 52 04                                        mov    edx,DWORD PTR [edx+0x4]
  004277a0: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  004277a3: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004277a6: 8a 5e 14                                        mov    bl,BYTE PTR [esi+0x14]
  004277a9: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004277ac: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  004277af: 88 56 14                                        mov    BYTE PTR [esi+0x14],dl
  004277b2: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004277b5: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004277b8: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004277bb: b3 01                                           mov    bl,0x1
  004277bd: 3a d3                                           cmp    dl,bl
  004277bf: 0f 85 58 02 00 00                               jne    0x427a1d
  004277c5: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004277c8: 3b 7a 04                                        cmp    edi,DWORD PTR [edx+0x4]
  004277cb: 0f 84 49 02 00 00                               je     0x427a1a
  004277d1: 38 5f 14                                        cmp    BYTE PTR [edi+0x14],bl
  004277d4: 0f 85 40 02 00 00                               jne    0x427a1a
  004277da: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004277dc: 3b f9                                           cmp    edi,ecx
  004277de: 75 71                                           jne    0x427851
  004277e0: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004277e3: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  004277e6: 84 d2                                           test   dl,dl
  004277e8: 75 43                                           jne    0x42782d
  004277ea: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  004277ed: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004277f0: c6 40 14 00                                     mov    BYTE PTR [eax+0x14],0x0
  004277f4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004277f6: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004277f9: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004277fb: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  004277ff: 75 03                                           jne    0x427804
  00427801: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00427804: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427807: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042780a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0042780d: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00427810: 75 05                                           jne    0x427817
  00427812: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427815: eb 0e                                           jmp    0x427825
  00427817: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042781a: 3b 02                                           cmp    eax,DWORD PTR [edx]
  0042781c: 75 04                                           jne    0x427822
  0042781e: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427820: eb 03                                           jmp    0x427825
  00427822: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427825: 89 01                                           mov    DWORD PTR [ecx],eax
  00427827: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042782a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042782d: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  00427830: 84 d2                                           test   dl,dl
  00427832: 0f 85 86 00 00 00                               jne    0x4278be
  00427838: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042783a: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  0042783d: 0f 85 93 00 00 00                               jne    0x4278d6
  00427843: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427846: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00427849: 0f 85 87 00 00 00                               jne    0x4278d6
  0042784f: eb 69                                           jmp    0x4278ba
  00427851: 8a 51 14                                        mov    dl,BYTE PTR [ecx+0x14]
  00427854: 84 d2                                           test   dl,dl
  00427856: 75 44                                           jne    0x42789c
  00427858: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  0042785b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042785d: c6 40 14 00                                     mov    BYTE PTR [eax+0x14],0x0
  00427861: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427864: 89 10                                           mov    DWORD PTR [eax],edx
  00427866: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427869: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  0042786d: 75 03                                           jne    0x427872
  0042786f: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00427872: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427875: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427878: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0042787b: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0042787e: 75 05                                           jne    0x427885
  00427880: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427883: eb 0f                                           jmp    0x427894
  00427885: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427888: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0042788b: 75 05                                           jne    0x427892
  0042788d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427890: eb 02                                           jmp    0x427894
  00427892: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427894: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00427897: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042789a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042789c: 8a 51 15                                        mov    dl,BYTE PTR [ecx+0x15]
  0042789f: 84 d2                                           test   dl,dl
  004278a1: 75 1b                                           jne    0x4278be
  004278a3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004278a6: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  004278a9: 0f 85 d0 00 00 00                               jne    0x42797f
  004278af: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004278b1: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  004278b4: 0f 85 c5 00 00 00                               jne    0x42797f
  004278ba: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  004278be: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004278c1: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004278c4: 8b f8                                           mov    edi,eax
  004278c6: 3b fa                                           cmp    edi,edx
  004278c8: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004278cb: 0f 85 00 ff ff ff                               jne    0x4277d1
  004278d1: e9 44 01 00 00                                  jmp    0x427a1a
  004278d6: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004278d9: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  004278dc: 75 4a                                           jne    0x427928
  004278de: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004278e0: 88 5a 14                                        mov    BYTE PTR [edx+0x14],bl
  004278e3: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004278e5: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  004278e9: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  004278ec: 89 31                                           mov    DWORD PTR [ecx],esi
  004278ee: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  004278f1: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  004278f5: 75 03                                           jne    0x4278fa
  004278f7: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004278fa: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004278fd: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00427900: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00427903: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00427906: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  00427909: 75 05                                           jne    0x427910
  0042790b: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0042790e: eb 0f                                           jmp    0x42791f
  00427910: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00427913: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  00427916: 75 05                                           jne    0x42791d
  00427918: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0042791b: eb 02                                           jmp    0x42791f
  0042791d: 89 16                                           mov    DWORD PTR [esi],edx
  0042791f: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427922: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427925: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00427928: 8a 50 14                                        mov    dl,BYTE PTR [eax+0x14]
  0042792b: 88 51 14                                        mov    BYTE PTR [ecx+0x14],dl
  0042792e: 88 58 14                                        mov    BYTE PTR [eax+0x14],bl
  00427931: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  00427934: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  00427937: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042793a: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042793c: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  0042793f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427941: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  00427945: 75 03                                           jne    0x42794a
  00427947: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0042794a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042794d: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  00427950: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00427953: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00427956: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  00427959: 75 0a                                           jne    0x427965
  0042795b: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0042795e: 89 01                                           mov    DWORD PTR [ecx],eax
  00427960: e9 b2 00 00 00                                  jmp    0x427a17
  00427965: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427968: 3b 02                                           cmp    eax,DWORD PTR [edx]
  0042796a: 75 09                                           jne    0x427975
  0042796c: 89 0a                                           mov    DWORD PTR [edx],ecx
  0042796e: 89 01                                           mov    DWORD PTR [ecx],eax
  00427970: e9 a2 00 00 00                                  jmp    0x427a17
  00427975: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427978: 89 01                                           mov    DWORD PTR [ecx],eax
  0042797a: e9 98 00 00 00                                  jmp    0x427a17
  0042797f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00427981: 38 5a 14                                        cmp    BYTE PTR [edx+0x14],bl
  00427984: 75 48                                           jne    0x4279ce
  00427986: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00427989: 88 5a 14                                        mov    BYTE PTR [edx+0x14],bl
  0042798c: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  0042798f: c6 41 14 00                                     mov    BYTE PTR [ecx+0x14],0x0
  00427993: 8b 32                                           mov    esi,DWORD PTR [edx]
  00427995: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00427998: 8b 32                                           mov    esi,DWORD PTR [edx]
  0042799a: 80 7e 15 00                                     cmp    BYTE PTR [esi+0x15],0x0
  0042799e: 75 03                                           jne    0x4279a3
  004279a0: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004279a3: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004279a6: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  004279a9: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004279ac: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  004279af: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  004279b2: 75 05                                           jne    0x4279b9
  004279b4: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004279b7: eb 0e                                           jmp    0x4279c7
  004279b9: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004279bc: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  004279be: 75 04                                           jne    0x4279c4
  004279c0: 89 16                                           mov    DWORD PTR [esi],edx
  004279c2: eb 03                                           jmp    0x4279c7
  004279c4: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004279c7: 89 0a                                           mov    DWORD PTR [edx],ecx
  004279c9: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004279cc: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004279ce: 8a 50 14                                        mov    dl,BYTE PTR [eax+0x14]
  004279d1: 88 51 14                                        mov    BYTE PTR [ecx+0x14],dl
  004279d4: 88 58 14                                        mov    BYTE PTR [eax+0x14],bl
  004279d7: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004279d9: 88 59 14                                        mov    BYTE PTR [ecx+0x14],bl
  004279dc: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004279de: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004279e1: 89 10                                           mov    DWORD PTR [eax],edx
  004279e3: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004279e6: 80 7a 15 00                                     cmp    BYTE PTR [edx+0x15],0x0
  004279ea: 75 03                                           jne    0x4279ef
  004279ec: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004279ef: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004279f2: 8b 75 f0                                        mov    esi,DWORD PTR [ebp-0x10]
  004279f5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004279f8: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004279fb: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004279fe: 75 05                                           jne    0x427a05
  00427a00: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00427a03: eb 0f                                           jmp    0x427a14
  00427a05: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00427a08: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  00427a0b: 75 05                                           jne    0x427a12
  00427a0d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00427a10: eb 02                                           jmp    0x427a14
  00427a12: 89 0a                                           mov    DWORD PTR [edx],ecx
  00427a14: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00427a17: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00427a1a: 88 5f 14                                        mov    BYTE PTR [edi+0x14],bl
  00427a1d: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00427a20: 50                                              push   eax
  00427a21: e8 3a a6 01 00                                  call   0x442060
  00427a26: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00427a29: 83 c4 04                                        add    esp,0x4
  00427a2c: 85 c0                                           test   eax,eax
  00427a2e: 5b                                              pop    ebx
  00427a2f: 76 04                                           jbe    0x427a35
  00427a31: 48                                              dec    eax
  00427a32: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00427a35: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00427a38: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00427a3b: 89 08                                           mov    DWORD PTR [eax],ecx
  00427a3d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00427a40: 5f                                              pop    edi
  00427a41: 5e                                              pop    esi
  00427a42: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00427a49: 8b e5                                           mov    esp,ebp
  00427a4b: 5d                                              pop    ebp
  00427a4c: c2 08 00                                        ret    0x8
  004282e0: 55                                              push   ebp
  004282e1: 8b ec                                           mov    ebp,esp
  004282e3: 53                                              push   ebx
  004282e4: 56                                              push   esi
  004282e5: 8b 31                                           mov    esi,DWORD PTR [ecx]
  004282e7: 8a 46 15                                        mov    al,BYTE PTR [esi+0x15]
  004282ea: 84 c0                                           test   al,al
  004282ec: 75 4a                                           jne    0x428338
  004282ee: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004282f1: 8a 42 15                                        mov    al,BYTE PTR [edx+0x15]
  004282f4: 84 c0                                           test   al,al
  004282f6: 75 21                                           jne    0x428319
  004282f8: 8b 02                                           mov    eax,DWORD PTR [edx]
  004282fa: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  004282fd: 84 db                                           test   bl,bl
  004282ff: 75 0b                                           jne    0x42830c
  00428301: 8b d0                                           mov    edx,eax
  00428303: 8b 02                                           mov    eax,DWORD PTR [edx]
  00428305: 8a 58 15                                        mov    bl,BYTE PTR [eax+0x15]
  00428308: 84 db                                           test   bl,bl
  0042830a: 74 f5                                           je     0x428301
  0042830c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042830f: 89 11                                           mov    DWORD PTR [ecx],edx
  00428311: 89 30                                           mov    DWORD PTR [eax],esi
  00428313: 5e                                              pop    esi
  00428314: 5b                                              pop    ebx
  00428315: 5d                                              pop    ebp
  00428316: c2 08 00                                        ret    0x8
  00428319: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042831c: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  0042831f: 84 d2                                           test   dl,dl
  00428321: 75 13                                           jne    0x428336
  00428323: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428325: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  00428328: 75 0c                                           jne    0x428336
  0042832a: 89 01                                           mov    DWORD PTR [ecx],eax
  0042832c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0042832f: 8a 50 15                                        mov    dl,BYTE PTR [eax+0x15]
  00428332: 84 d2                                           test   dl,dl
  00428334: 74 ed                                           je     0x428323
  00428336: 89 01                                           mov    DWORD PTR [ecx],eax
  00428338: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042833b: 89 30                                           mov    DWORD PTR [eax],esi
  0042833d: 5e                                              pop    esi
  0042833e: 5b                                              pop    ebx
  0042833f: 5d                                              pop    ebp
  00428340: c2 08 00                                        ret    0x8
  00428eb0: 55                                              push   ebp
  00428eb1: 8b ec                                           mov    ebp,esp
  00428eb3: 8b c1                                           mov    eax,ecx
  00428eb5: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00428eb8: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00428eba: 89 10                                           mov    DWORD PTR [eax],edx
  00428ebc: 5d                                              pop    ebp
  00428ebd: c2 04 00                                        ret    0x4
  004291a0: 55                                              push   ebp
  004291a1: 8b ec                                           mov    ebp,esp
  004291a3: 53                                              push   ebx
  004291a4: 56                                              push   esi
  004291a5: 57                                              push   edi
  004291a6: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004291a9: 8a 47 15                                        mov    al,BYTE PTR [edi+0x15]
  004291ac: 84 c0                                           test   al,al
  004291ae: 8b d9                                           mov    ebx,ecx
  004291b0: 8b f7                                           mov    esi,edi
  004291b2: 75 1f                                           jne    0x4291d3
  004291b4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004291b7: 50                                              push   eax
  004291b8: 8b cb                                           mov    ecx,ebx
  004291ba: e8 e1 ff ff ff                                  call   0x4291a0
  004291bf: 8b 36                                           mov    esi,DWORD PTR [esi]
  004291c1: 57                                              push   edi
  004291c2: e8 99 8e 01 00                                  call   0x442060
  004291c7: 8a 46 15                                        mov    al,BYTE PTR [esi+0x15]
  004291ca: 83 c4 04                                        add    esp,0x4
  004291cd: 84 c0                                           test   al,al
  004291cf: 8b fe                                           mov    edi,esi
  004291d1: 74 e1                                           je     0x4291b4
  004291d3: 5f                                              pop    edi
  004291d4: 5e                                              pop    esi
  004291d5: 5b                                              pop    ebx
  004291d6: 5d                                              pop    ebp
  004291d7: c2 04 00                                        ret    0x4
  00429760: 55                                              push   ebp
  00429761: 8b ec                                           mov    ebp,esp
  00429763: 6a ff                                           push   0xffffffff
  00429765: 68 fb 4a 4d 00                                  push   0x4d4afb
  0042976a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00429770: 50                                              push   eax
  00429771: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00429778: 83 ec 64                                        sub    esp,0x64
  0042977b: 53                                              push   ebx
  0042977c: 56                                              push   esi
  0042977d: 57                                              push   edi
  0042977e: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00429781: 8b f1                                           mov    esi,ecx
  00429783: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00429786: 57                                              push   edi
  00429787: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  0042978a: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  0042978d: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  00429793: 8d 47 10                                        lea    eax,[edi+0x10]
  00429796: 50                                              push   eax
  00429797: 8d 4d a0                                        lea    ecx,[ebp-0x60]
  0042979a: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004297a1: e8 ea 04 00 00                                  call   0x429c90
  004297a6: 83 c7 1c                                        add    edi,0x1c
  004297a9: 57                                              push   edi
  004297aa: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  004297ad: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  004297b1: ff 15 10 e5 4d 00                               call   DWORD PTR ds:0x4de510
  004297b7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004297ba: 85 c9                                           test   ecx,ecx
  004297bc: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  004297c3: 75 04                                           jne    0x4297c9
  004297c5: 33 ff                                           xor    edi,edi
  004297c7: eb 1b                                           jmp    0x4297e4
  004297c9: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004297cc: 2b d1                                           sub    edx,ecx
  004297ce: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004297d3: f7 ea                                           imul   edx
  004297d5: c1 fa 03                                        sar    edx,0x3
  004297d8: 8b c2                                           mov    eax,edx
  004297da: c1 e8 1f                                        shr    eax,0x1f
  004297dd: 03 d0                                           add    edx,eax
  004297df: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004297e2: 8b fa                                           mov    edi,edx
  004297e4: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  004297e7: 85 db                                           test   ebx,ebx
  004297e9: 0f 84 8d 03 00 00                               je     0x429b7c
  004297ef: 85 c9                                           test   ecx,ecx
  004297f1: 75 04                                           jne    0x4297f7
  004297f3: 33 d2                                           xor    edx,edx
  004297f5: eb 16                                           jmp    0x42980d
  004297f7: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004297fa: 2b d1                                           sub    edx,ecx
  004297fc: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  00429801: f7 ea                                           imul   edx
  00429803: c1 fa 03                                        sar    edx,0x3
  00429806: 8b c2                                           mov    eax,edx
  00429808: c1 e8 1f                                        shr    eax,0x1f
  0042980b: 03 d0                                           add    edx,eax
  0042980d: b8 5d 74 d1 05                                  mov    eax,0x5d1745d
  00429812: 2b c2                                           sub    eax,edx
  00429814: 3b c3                                           cmp    eax,ebx
  00429816: 73 2c                                           jae    0x429844
  00429818: 68 80 05 50 00                                  push   0x500580
  0042981d: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00429820: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00429826: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00429829: 51                                              push   ecx
  0042982a: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0042982d: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  00429831: e8 ea bb fd ff                                  call   0x405420
  00429836: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0042983b: 8d 55 bc                                        lea    edx,[ebp-0x44]
  0042983e: 52                                              push   edx
  0042983f: e8 12 85 0a 00                                  call   0x4d1d56
  00429844: 85 c9                                           test   ecx,ecx
  00429846: 75 04                                           jne    0x42984c
  00429848: 33 d2                                           xor    edx,edx
  0042984a: eb 16                                           jmp    0x429862
  0042984c: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0042984f: 2b d1                                           sub    edx,ecx
  00429851: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  00429856: f7 ea                                           imul   edx
  00429858: c1 fa 03                                        sar    edx,0x3
  0042985b: 8b c2                                           mov    eax,edx
  0042985d: c1 e8 1f                                        shr    eax,0x1f
  00429860: 03 d0                                           add    edx,eax
  00429862: 03 d3                                           add    edx,ebx
  00429864: 3b fa                                           cmp    edi,edx
  00429866: 0f 83 8e 01 00 00                               jae    0x4299fa
  0042986c: 8b c7                                           mov    eax,edi
  0042986e: d1 e8                                           shr    eax,1
  00429870: ba 5d 74 d1 05                                  mov    edx,0x5d1745d
  00429875: 2b d0                                           sub    edx,eax
  00429877: 3b d7                                           cmp    edx,edi
  00429879: 73 0c                                           jae    0x429887
  0042987b: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  00429882: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00429885: eb 05                                           jmp    0x42988c
  00429887: 03 f8                                           add    edi,eax
  00429889: 89 7d 10                                        mov    DWORD PTR [ebp+0x10],edi
  0042988c: 85 c9                                           test   ecx,ecx
  0042988e: 75 04                                           jne    0x429894
  00429890: 33 d2                                           xor    edx,edx
  00429892: eb 16                                           jmp    0x4298aa
  00429894: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00429897: 2b d1                                           sub    edx,ecx
  00429899: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  0042989e: f7 ea                                           imul   edx
  004298a0: c1 fa 03                                        sar    edx,0x3
  004298a3: 8b c2                                           mov    eax,edx
  004298a5: c1 e8 1f                                        shr    eax,0x1f
  004298a8: 03 d0                                           add    edx,eax
  004298aa: 03 d3                                           add    edx,ebx
  004298ac: 3b fa                                           cmp    edi,edx
  004298ae: 73 25                                           jae    0x4298d5
  004298b0: 85 c9                                           test   ecx,ecx
  004298b2: 75 04                                           jne    0x4298b8
  004298b4: 33 d2                                           xor    edx,edx
  004298b6: eb 16                                           jmp    0x4298ce
  004298b8: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004298bb: 2b d1                                           sub    edx,ecx
  004298bd: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004298c2: f7 ea                                           imul   edx
  004298c4: c1 fa 03                                        sar    edx,0x3
  004298c7: 8b ca                                           mov    ecx,edx
  004298c9: c1 e9 1f                                        shr    ecx,0x1f
  004298cc: 03 d1                                           add    edx,ecx
  004298ce: 03 d3                                           add    edx,ebx
  004298d0: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  004298d3: 8b fa                                           mov    edi,edx
  004298d5: 8d 14 bf                                        lea    edx,[edi+edi*4]
  004298d8: 8d 04 57                                        lea    eax,[edi+edx*2]
  004298db: c1 e0 02                                        shl    eax,0x2
  004298de: 50                                              push   eax
  004298df: e8 0c 87 01 00                                  call   0x441ff0
  004298e4: 83 c4 04                                        add    esp,0x4
  004298e7: 50                                              push   eax
  004298e8: 51                                              push   ecx
  004298e9: 8d 55 08                                        lea    edx,[ebp+0x8]
  004298ec: 8b cc                                           mov    ecx,esp
  004298ee: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004298f1: 52                                              push   edx
  004298f2: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004298f5: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004298f8: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  004298fc: e8 af f5 ff ff                                  call   0x428eb0
  00429901: 51                                              push   ecx
  00429902: 8b c4                                           mov    eax,esp
  00429904: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00429907: 50                                              push   eax
  00429908: 8b ce                                           mov    ecx,esi
  0042990a: e8 71 03 00 00                                  call   0x429c80
  0042990f: 8b ce                                           mov    ecx,esi
  00429911: e8 9a 0b 00 00                                  call   0x42a4b0
  00429916: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  00429919: 51                                              push   ecx
  0042991a: 53                                              push   ebx
  0042991b: 50                                              push   eax
  0042991c: 8b ce                                           mov    ecx,esi
  0042991e: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00429921: e8 9a 08 00 00                                  call   0x42a1c0
  00429926: 50                                              push   eax
  00429927: 51                                              push   ecx
  00429928: 8b d4                                           mov    edx,esp
  0042992a: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0042992d: 52                                              push   edx
  0042992e: 8b ce                                           mov    ecx,esi
  00429930: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00429933: e8 a8 e7 ff ff                                  call   0x4280e0
  00429938: 51                                              push   ecx
  00429939: 8d 45 08                                        lea    eax,[ebp+0x8]
  0042993c: 8b cc                                           mov    ecx,esp
  0042993e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00429941: 50                                              push   eax
  00429942: e8 69 f5 ff ff                                  call   0x428eb0
  00429947: 8b ce                                           mov    ecx,esi
  00429949: e8 62 0b 00 00                                  call   0x42a4b0
  0042994e: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429951: 85 c0                                           test   eax,eax
  00429953: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0042995a: 74 2c                                           je     0x429988
  0042995c: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042995f: 8b f8                                           mov    edi,eax
  00429961: 3b f9                                           cmp    edi,ecx
  00429963: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00429966: 74 11                                           je     0x429979
  00429968: 8b cf                                           mov    ecx,edi
  0042996a: e8 41 e8 ff ff                                  call   0x4281b0
  0042996f: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00429972: 83 c7 2c                                        add    edi,0x2c
  00429975: 3b f8                                           cmp    edi,eax
  00429977: 75 ef                                           jne    0x429968
  00429979: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042997c: 50                                              push   eax
  0042997d: e8 de 86 01 00                                  call   0x442060
  00429982: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  00429985: 83 c4 04                                        add    esp,0x4
  00429988: 8d 0c bf                                        lea    ecx,[edi+edi*4]
  0042998b: 8d 14 4f                                        lea    edx,[edi+ecx*2]
  0042998e: 8b 7d ec                                        mov    edi,DWORD PTR [ebp-0x14]
  00429991: 8d 04 97                                        lea    eax,[edi+edx*4]
  00429994: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00429997: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042999a: 85 c0                                           test   eax,eax
  0042999c: 75 04                                           jne    0x4299a2
  0042999e: 33 d2                                           xor    edx,edx
  004299a0: eb 16                                           jmp    0x4299b8
  004299a2: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004299a5: 2b c8                                           sub    ecx,eax
  004299a7: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004299ac: f7 e9                                           imul   ecx
  004299ae: c1 fa 03                                        sar    edx,0x3
  004299b1: 8b ca                                           mov    ecx,edx
  004299b3: c1 e9 1f                                        shr    ecx,0x1f
  004299b6: 03 d1                                           add    edx,ecx
  004299b8: 03 da                                           add    ebx,edx
  004299ba: 8d 14 9b                                        lea    edx,[ebx+ebx*4]
  004299bd: 8d 04 53                                        lea    eax,[ebx+edx*2]
  004299c0: 8d 0c 87                                        lea    ecx,[edi+eax*4]
  004299c3: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004299c6: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004299c9: e9 ae 01 00 00                                  jmp    0x429b7c
  004299fa: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004299fd: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00429a00: 8b d1                                           mov    edx,ecx
  00429a02: 2b d7                                           sub    edx,edi
  00429a04: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  00429a09: f7 ea                                           imul   edx
  00429a0b: c1 fa 03                                        sar    edx,0x3
  00429a0e: 8b c2                                           mov    eax,edx
  00429a10: c1 e8 1f                                        shr    eax,0x1f
  00429a13: 03 d0                                           add    edx,eax
  00429a15: 3b d3                                           cmp    edx,ebx
  00429a17: 0f 83 d1 00 00 00                               jae    0x429aee
  00429a1d: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00429a20: 8d 0c 9b                                        lea    ecx,[ebx+ebx*4]
  00429a23: 8d 3c 4b                                        lea    edi,[ebx+ecx*2]
  00429a26: c1 e7 02                                        shl    edi,0x2
  00429a29: 8d 04 17                                        lea    eax,[edi+edx*1]
  00429a2c: 50                                              push   eax
  00429a2d: 51                                              push   ecx
  00429a2e: 8b cc                                           mov    ecx,esp
  00429a30: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429a33: 51                                              push   ecx
  00429a34: 8b ce                                           mov    ecx,esi
  00429a36: e8 a5 e6 ff ff                                  call   0x4280e0
  00429a3b: 51                                              push   ecx
  00429a3c: 8d 55 08                                        lea    edx,[ebp+0x8]
  00429a3f: 8b cc                                           mov    ecx,esp
  00429a41: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429a44: 52                                              push   edx
  00429a45: e8 66 f4 ff ff                                  call   0x428eb0
  00429a4a: 8b ce                                           mov    ecx,esi
  00429a4c: e8 5f 0a 00 00                                  call   0x42a4b0
  00429a51: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00429a54: 8d 45 90                                        lea    eax,[ebp-0x70]
  00429a57: 50                                              push   eax
  00429a58: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00429a5b: 8b d1                                           mov    edx,ecx
  00429a5d: 2b d0                                           sub    edx,eax
  00429a5f: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  00429a64: f7 ea                                           imul   edx
  00429a66: c1 fa 03                                        sar    edx,0x3
  00429a69: 8b c2                                           mov    eax,edx
  00429a6b: c1 e8 1f                                        shr    eax,0x1f
  00429a6e: 03 d0                                           add    edx,eax
  00429a70: 8b c3                                           mov    eax,ebx
  00429a72: 2b c2                                           sub    eax,edx
  00429a74: 50                                              push   eax
  00429a75: 51                                              push   ecx
  00429a76: 8b ce                                           mov    ecx,esi
  00429a78: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  00429a7c: e8 3f 07 00 00                                  call   0x42a1c0
  00429a81: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00429a84: 8d 4d 90                                        lea    ecx,[ebp-0x70]
  00429a87: 51                                              push   ecx
  00429a88: 51                                              push   ecx
  00429a89: 8b d4                                           mov    edx,esp
  00429a8b: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  00429a8e: 03 c7                                           add    eax,edi
  00429a90: 53                                              push   ebx
  00429a91: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00429a94: 52                                              push   edx
  00429a95: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00429a98: 50                                              push   eax
  00429a99: 8b ce                                           mov    ecx,esi
  00429a9b: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00429aa2: e8 39 e6 ff ff                                  call   0x4280e0
  00429aa7: 8b c8                                           mov    ecx,eax
  00429aa9: e8 f2 08 00 00                                  call   0x42a3a0
  00429aae: 51                                              push   ecx
  00429aaf: 8b cc                                           mov    ecx,esp
  00429ab1: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429ab4: e9 b2 00 00 00                                  jmp    0x429b6b
  00429aee: 51                                              push   ecx
  00429aef: 51                                              push   ecx
  00429af0: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00429af3: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00429af6: 8b cc                                           mov    ecx,esp
  00429af8: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429afb: 52                                              push   edx
  00429afc: e8 af f3 ff ff                                  call   0x428eb0
  00429b01: 51                                              push   ecx
  00429b02: 8b c4                                           mov    eax,esp
  00429b04: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429b07: 53                                              push   ebx
  00429b08: 50                                              push   eax
  00429b09: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00429b0c: e8 8f 08 00 00                                  call   0x42a3a0
  00429b11: 8b ce                                           mov    ecx,esi
  00429b13: e8 98 09 00 00                                  call   0x42a4b0
  00429b18: 51                                              push   ecx
  00429b19: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00429b1c: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429b1f: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00429b22: 8b c4                                           mov    eax,esp
  00429b24: 51                                              push   ecx
  00429b25: 8b d4                                           mov    edx,esp
  00429b27: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429b2a: 53                                              push   ebx
  00429b2b: 89 08                                           mov    DWORD PTR [eax],ecx
  00429b2d: 52                                              push   edx
  00429b2e: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00429b31: e8 6a 08 00 00                                  call   0x42a3a0
  00429b36: 51                                              push   ecx
  00429b37: 8d 45 08                                        lea    eax,[ebp+0x8]
  00429b3a: 8b cc                                           mov    ecx,esp
  00429b3c: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429b3f: 50                                              push   eax
  00429b40: e8 6b f3 ff ff                                  call   0x428eb0
  00429b45: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00429b48: 51                                              push   ecx
  00429b49: e8 f2 0c 00 00                                  call   0x42a840
  00429b4e: 83 c4 10                                        add    esp,0x10
  00429b51: 8d 55 90                                        lea    edx,[ebp-0x70]
  00429b54: 52                                              push   edx
  00429b55: 51                                              push   ecx
  00429b56: 8b c4                                           mov    eax,esp
  00429b58: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429b5b: 53                                              push   ebx
  00429b5c: 50                                              push   eax
  00429b5d: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00429b60: e8 eb 01 00 00                                  call   0x429d50
  00429b65: 51                                              push   ecx
  00429b66: 8b cc                                           mov    ecx,esp
  00429b68: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429b6b: 8d 55 08                                        lea    edx,[ebp+0x8]
  00429b6e: 52                                              push   edx
  00429b6f: e8 3c f3 ff ff                                  call   0x428eb0
  00429b74: e8 e7 0a 00 00                                  call   0x42a660
  00429b79: 83 c4 0c                                        add    esp,0xc
  00429b7c: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  00429b7f: 85 c0                                           test   eax,eax
  00429b81: c7 45 fc 08 00 00 00                            mov    DWORD PTR [ebp-0x4],0x8
  00429b88: 74 1c                                           je     0x429ba6
  00429b8a: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00429b8d: 8a 01                                           mov    al,BYTE PTR [ecx]
  00429b8f: 84 c0                                           test   al,al
  00429b91: 74 0a                                           je     0x429b9d
  00429b93: 3c ff                                           cmp    al,0xff
  00429b95: 74 06                                           je     0x429b9d
  00429b97: fe c8                                           dec    al
  00429b99: 88 01                                           mov    BYTE PTR [ecx],al
  00429b9b: eb 09                                           jmp    0x429ba6
  00429b9d: 51                                              push   ecx
  00429b9e: e8 bd 84 01 00                                  call   0x442060
  00429ba3: 83 c4 04                                        add    esp,0x4
  00429ba6: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00429ba9: 8b 75 a8                                        mov    esi,DWORD PTR [ebp-0x58]
  00429bac: 33 d2                                           xor    edx,edx
  00429bae: 3b f2                                           cmp    esi,edx
  00429bb0: 89 55 b0                                        mov    DWORD PTR [ebp-0x50],edx
  00429bb3: 89 55 b4                                        mov    DWORD PTR [ebp-0x4c],edx
  00429bb6: 89 55 b8                                        mov    DWORD PTR [ebp-0x48],edx
  00429bb9: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00429bbb: 8b f8                                           mov    edi,eax
  00429bbd: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00429bc0: 74 38                                           je     0x429bfa
  00429bc2: 8b d1                                           mov    edx,ecx
  00429bc4: 3b ca                                           cmp    ecx,edx
  00429bc6: 75 32                                           jne    0x429bfa
  00429bc8: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00429bcb: 50                                              push   eax
  00429bcc: 8d 4d a0                                        lea    ecx,[ebp-0x60]
  00429bcf: e8 cc f5 ff ff                                  call   0x4291a0
  00429bd4: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00429bd7: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00429bda: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00429bdd: c7 45 a8 00 00 00 00                            mov    DWORD PTR [ebp-0x58],0x0
  00429be4: 89 00                                           mov    DWORD PTR [eax],eax
  00429be6: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00429be9: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00429bec: 51                                              push   ecx
  00429bed: 8d 4d a0                                        lea    ecx,[ebp-0x60]
  00429bf0: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00429bf3: e8 e8 d9 ff ff                                  call   0x4275e0
  00429bf8: eb 22                                           jmp    0x429c1c
  00429bfa: 3b c8                                           cmp    ecx,eax
  00429bfc: 74 21                                           je     0x429c1f
  00429bfe: 8b f1                                           mov    esi,ecx
  00429c00: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00429c03: e8 88 f6 ff ff                                  call   0x429290
  00429c08: 56                                              push   esi
  00429c09: 8d 55 e8                                        lea    edx,[ebp-0x18]
  00429c0c: 52                                              push   edx
  00429c0d: 8d 4d a0                                        lea    ecx,[ebp-0x60]
  00429c10: e8 eb d9 ff ff                                  call   0x427600
  00429c15: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00429c18: 3b cf                                           cmp    ecx,edi
  00429c1a: 75 e2                                           jne    0x429bfe
  00429c1c: 8b 45 a4                                        mov    eax,DWORD PTR [ebp-0x5c]
  00429c1f: 50                                              push   eax
  00429c20: e8 3b 84 01 00                                  call   0x442060
  00429c25: 8b 4d 94                                        mov    ecx,DWORD PTR [ebp-0x6c]
  00429c28: 33 c0                                           xor    eax,eax
  00429c2a: 83 c4 04                                        add    esp,0x4
  00429c2d: 3b c8                                           cmp    ecx,eax
  00429c2f: 89 45 a4                                        mov    DWORD PTR [ebp-0x5c],eax
  00429c32: 89 45 a8                                        mov    DWORD PTR [ebp-0x58],eax
  00429c35: 74 2d                                           je     0x429c64
  00429c37: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  00429c3a: 84 c0                                           test   al,al
  00429c3c: 74 1c                                           je     0x429c5a
  00429c3e: 3c ff                                           cmp    al,0xff
  00429c40: 74 18                                           je     0x429c5a
  00429c42: fe c8                                           dec    al
  00429c44: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00429c47: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00429c4a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00429c51: 5f                                              pop    edi
  00429c52: 5e                                              pop    esi
  00429c53: 5b                                              pop    ebx
  00429c54: 8b e5                                           mov    esp,ebp
  00429c56: 5d                                              pop    ebp
  00429c57: c2 0c 00                                        ret    0xc
  00429c5a: 49                                              dec    ecx
  00429c5b: 51                                              push   ecx
  00429c5c: e8 ff 83 01 00                                  call   0x442060
  00429c61: 83 c4 04                                        add    esp,0x4
  00429c64: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00429c67: 5f                                              pop    edi
  00429c68: 5e                                              pop    esi
  00429c69: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00429c70: 5b                                              pop    ebx
  00429c71: 8b e5                                           mov    esp,ebp
  00429c73: 5d                                              pop    ebp
  00429c74: c2 0c 00                                        ret    0xc
  0042a490: 55                                              push   ebp
  0042a491: 8b ec                                           mov    ebp,esp
  0042a493: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042a496: 85 c0                                           test   eax,eax
  0042a498: 74 0d                                           je     0x42a4a7
  0042a49a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042a49d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042a49f: 89 10                                           mov    DWORD PTR [eax],edx
  0042a4a1: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0042a4a4: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042a4a7: 5d                                              pop    ebp
  0042a4a8: c3                                              ret
  004312c0: 55                                              push   ebp
  004312c1: 8b ec                                           mov    ebp,esp
  004312c3: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  004312c6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004312c9: 89 08                                           mov    DWORD PTR [eax],ecx
  004312cb: 5d                                              pop    ebp
  004312cc: c2 04 00                                        ret    0x4
  00431c80: 55                                              push   ebp
  00431c81: 8b ec                                           mov    ebp,esp
  00431c83: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00431c86: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00431c88: c1 e2 04                                        shl    edx,0x4
  00431c8b: 03 d0                                           add    edx,eax
  00431c8d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00431c90: 89 10                                           mov    DWORD PTR [eax],edx
  00431c92: 5d                                              pop    ebp
  00431c93: c2 08 00                                        ret    0x8
  00431d00: 55                                              push   ebp
  00431d01: 8b ec                                           mov    ebp,esp
  00431d03: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00431d06: 85 c0                                           test   eax,eax
  00431d08: 76 36                                           jbe    0x431d40
  00431d0a: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00431d0d: 53                                              push   ebx
  00431d0e: 56                                              push   esi
  00431d0f: 8b c8                                           mov    ecx,eax
  00431d11: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00431d14: 57                                              push   edi
  00431d15: 85 c0                                           test   eax,eax
  00431d17: 74 1a                                           je     0x431d33
  00431d19: 8b f2                                           mov    esi,edx
  00431d1b: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00431d1d: 8b f8                                           mov    edi,eax
  00431d1f: 89 1f                                           mov    DWORD PTR [edi],ebx
  00431d21: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00431d24: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00431d27: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00431d2a: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  00431d2d: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  00431d30: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00431d33: 83 c0 10                                        add    eax,0x10
  00431d36: 49                                              dec    ecx
  00431d37: 75 dc                                           jne    0x431d15
  00431d39: 5f                                              pop    edi
  00431d3a: 5e                                              pop    esi
  00431d3b: 5b                                              pop    ebx
  00431d3c: 5d                                              pop    ebp
  00431d3d: c2 0c 00                                        ret    0xc
  00431d40: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00431d43: 5d                                              pop    ebp
  00431d44: c2 0c 00                                        ret    0xc
  00431d50: 55                                              push   ebp
  00431d51: 8b ec                                           mov    ebp,esp
  00431d53: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00431d56: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  00431d58: c1 e0 04                                        shl    eax,0x4
  00431d5b: 2b c8                                           sub    ecx,eax
  00431d5d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00431d60: 89 08                                           mov    DWORD PTR [eax],ecx
  00431d62: 5d                                              pop    ebp
  00431d63: c2 08 00                                        ret    0x8
  00432130: 55                                              push   ebp
  00432131: 8b ec                                           mov    ebp,esp
  00432133: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00432136: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00432139: 3b ca                                           cmp    ecx,edx
  0043213b: 74 35                                           je     0x432172
  0043213d: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00432140: 53                                              push   ebx
  00432141: 56                                              push   esi
  00432142: 57                                              push   edi
  00432143: 85 c0                                           test   eax,eax
  00432145: 74 1a                                           je     0x432161
  00432147: 8b f1                                           mov    esi,ecx
  00432149: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  0043214b: 8b f8                                           mov    edi,eax
  0043214d: 89 1f                                           mov    DWORD PTR [edi],ebx
  0043214f: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  00432152: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  00432155: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00432158: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  0043215b: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  0043215e: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  00432161: 83 c1 10                                        add    ecx,0x10
  00432164: 83 c0 10                                        add    eax,0x10
  00432167: 3b ca                                           cmp    ecx,edx
  00432169: 75 d8                                           jne    0x432143
  0043216b: 5f                                              pop    edi
  0043216c: 5e                                              pop    esi
  0043216d: 5b                                              pop    ebx
  0043216e: 5d                                              pop    ebp
  0043216f: c2 0c 00                                        ret    0xc
  00432172: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00432175: 5d                                              pop    ebp
  00432176: c2 0c 00                                        ret    0xc
  00432180: 55                                              push   ebp
  00432181: 8b ec                                           mov    ebp,esp
  00432183: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432186: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00432189: 3b c1                                           cmp    eax,ecx
  0043218b: 74 2a                                           je     0x4321b7
  0043218d: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00432190: 53                                              push   ebx
  00432191: 56                                              push   esi
  00432192: 57                                              push   edi
  00432193: 8b f2                                           mov    esi,edx
  00432195: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  00432197: 8b f8                                           mov    edi,eax
  00432199: 89 1f                                           mov    DWORD PTR [edi],ebx
  0043219b: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  0043219e: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  004321a1: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004321a4: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  004321a7: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  004321aa: 83 c0 10                                        add    eax,0x10
  004321ad: 3b c1                                           cmp    eax,ecx
  004321af: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  004321b2: 75 df                                           jne    0x432193
  004321b4: 5f                                              pop    edi
  004321b5: 5e                                              pop    esi
  004321b6: 5b                                              pop    ebx
  004321b7: 5d                                              pop    ebp
  004321b8: c3                                              ret
  004321c0: 55                                              push   ebp
  004321c1: 8b ec                                           mov    ebp,esp
  004321c3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004321c6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004321c9: 3b d0                                           cmp    edx,eax
  004321cb: 74 34                                           je     0x432201
  004321cd: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004321d0: 53                                              push   ebx
  004321d1: 56                                              push   esi
  004321d2: 57                                              push   edi
  004321d3: 83 e8 10                                        sub    eax,0x10
  004321d6: 83 e9 10                                        sub    ecx,0x10
  004321d9: 3b c2                                           cmp    eax,edx
  004321db: 8b f0                                           mov    esi,eax
  004321dd: 8b 1e                                           mov    ebx,DWORD PTR [esi]
  004321df: 8b f9                                           mov    edi,ecx
  004321e1: 89 1f                                           mov    DWORD PTR [edi],ebx
  004321e3: 8b 5e 04                                        mov    ebx,DWORD PTR [esi+0x4]
  004321e6: 89 5f 04                                        mov    DWORD PTR [edi+0x4],ebx
  004321e9: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004321ec: 89 5f 08                                        mov    DWORD PTR [edi+0x8],ebx
  004321ef: 8b 76 0c                                        mov    esi,DWORD PTR [esi+0xc]
  004321f2: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  004321f5: 75 dc                                           jne    0x4321d3
  004321f7: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004321fa: 5f                                              pop    edi
  004321fb: 5e                                              pop    esi
  004321fc: 89 08                                           mov    DWORD PTR [eax],ecx
  004321fe: 5b                                              pop    ebx
  004321ff: 5d                                              pop    ebp
  00432200: c3                                              ret
  00432201: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00432204: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00432207: 89 08                                           mov    DWORD PTR [eax],ecx
  00432209: 5d                                              pop    ebp
  0043220a: c3                                              ret
  00436550: 55                                              push   ebp
  00436551: 8b ec                                           mov    ebp,esp
  00436553: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436556: 85 c0                                           test   eax,eax
  00436558: 74 0d                                           je     0x436567
  0043655a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0043655d: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0043655f: 89 10                                           mov    DWORD PTR [eax],edx
  00436561: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00436564: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00436567: 5d                                              pop    ebp
  00436568: c3                                              ret
  00436930: 55                                              push   ebp
  00436931: 8b ec                                           mov    ebp,esp
  00436933: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  00436936: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436939: 89 08                                           mov    DWORD PTR [eax],ecx
  0043693b: 5d                                              pop    ebp
  0043693c: c2 04 00                                        ret    0x4
  00436950: 55                                              push   ebp
  00436951: 8b ec                                           mov    ebp,esp
  00436953: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00436955: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00436958: 8d 14 c8                                        lea    edx,[eax+ecx*8]
  0043695b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043695e: 89 10                                           mov    DWORD PTR [eax],edx
  00436960: 5d                                              pop    ebp
  00436961: c2 08 00                                        ret    0x8
  00436970: 55                                              push   ebp
  00436971: 8b ec                                           mov    ebp,esp
  00436973: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00436976: 85 c0                                           test   eax,eax
  00436978: 76 22                                           jbe    0x43699c
  0043697a: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0043697d: 8b d0                                           mov    edx,eax
  0043697f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436982: 56                                              push   esi
  00436983: 85 c0                                           test   eax,eax
  00436985: 74 0a                                           je     0x436991
  00436987: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00436989: 89 30                                           mov    DWORD PTR [eax],esi
  0043698b: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0043698e: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  00436991: 83 c0 08                                        add    eax,0x8
  00436994: 4a                                              dec    edx
  00436995: 75 ec                                           jne    0x436983
  00436997: 5e                                              pop    esi
  00436998: 5d                                              pop    ebp
  00436999: c2 0c 00                                        ret    0xc
  0043699c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043699f: 5d                                              pop    ebp
  004369a0: c2 0c 00                                        ret    0xc
  004369b0: 55                                              push   ebp
  004369b1: 8b ec                                           mov    ebp,esp
  004369b3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004369b6: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  004369b8: 8d 14 c5 00 00 00 00                            lea    edx,[eax*8+0x0]
  004369bf: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004369c2: 2b ca                                           sub    ecx,edx
  004369c4: 89 08                                           mov    DWORD PTR [eax],ecx
  004369c6: 5d                                              pop    ebp
  004369c7: c2 08 00                                        ret    0x8
  004369d0: 55                                              push   ebp
  004369d1: 8b ec                                           mov    ebp,esp
  004369d3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004369d6: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004369d9: 3b ca                                           cmp    ecx,edx
  004369db: 74 21                                           je     0x4369fe
  004369dd: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004369e0: 56                                              push   esi
  004369e1: 85 c0                                           test   eax,eax
  004369e3: 74 0a                                           je     0x4369ef
  004369e5: 8b 31                                           mov    esi,DWORD PTR [ecx]
  004369e7: 89 30                                           mov    DWORD PTR [eax],esi
  004369e9: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004369ec: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  004369ef: 83 c1 08                                        add    ecx,0x8
  004369f2: 83 c0 08                                        add    eax,0x8
  004369f5: 3b ca                                           cmp    ecx,edx
  004369f7: 75 e8                                           jne    0x4369e1
  004369f9: 5e                                              pop    esi
  004369fa: 5d                                              pop    ebp
  004369fb: c2 0c 00                                        ret    0xc
  004369fe: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00436a01: 5d                                              pop    ebp
  00436a02: c2 0c 00                                        ret    0xc
  00436a10: 55                                              push   ebp
  00436a11: 8b ec                                           mov    ebp,esp
  00436a13: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436a16: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00436a19: 3b c2                                           cmp    eax,edx
  00436a1b: 74 16                                           je     0x436a33
  00436a1d: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00436a20: 56                                              push   esi
  00436a21: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00436a23: 89 30                                           mov    DWORD PTR [eax],esi
  00436a25: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00436a28: 89 70 04                                        mov    DWORD PTR [eax+0x4],esi
  00436a2b: 83 c0 08                                        add    eax,0x8
  00436a2e: 3b c2                                           cmp    eax,edx
  00436a30: 75 ef                                           jne    0x436a21
  00436a32: 5e                                              pop    esi
  00436a33: 5d                                              pop    ebp
  00436a34: c3                                              ret
  00436a40: 55                                              push   ebp
  00436a41: 8b ec                                           mov    ebp,esp
  00436a43: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00436a46: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00436a49: 3b d0                                           cmp    edx,eax
  00436a4b: 74 21                                           je     0x436a6e
  00436a4d: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00436a50: 56                                              push   esi
  00436a51: 8b 70 f8                                        mov    esi,DWORD PTR [eax-0x8]
  00436a54: 83 e8 08                                        sub    eax,0x8
  00436a57: 83 e9 08                                        sub    ecx,0x8
  00436a5a: 3b c2                                           cmp    eax,edx
  00436a5c: 89 31                                           mov    DWORD PTR [ecx],esi
  00436a5e: 8b 70 04                                        mov    esi,DWORD PTR [eax+0x4]
  00436a61: 89 71 04                                        mov    DWORD PTR [ecx+0x4],esi
  00436a64: 75 eb                                           jne    0x436a51
  00436a66: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436a69: 89 08                                           mov    DWORD PTR [eax],ecx
  00436a6b: 5e                                              pop    esi
  00436a6c: 5d                                              pop    ebp
  00436a6d: c3                                              ret
  00436a6e: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00436a71: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00436a74: 89 08                                           mov    DWORD PTR [eax],ecx
  00436a76: 5d                                              pop    ebp
  00436a77: c3                                              ret
  00450a90: 55                                              push   ebp
  00450a91: 8b ec                                           mov    ebp,esp
  00450a93: 83 ec 1c                                        sub    esp,0x1c
  00450a96: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00450a99: 33 d2                                           xor    edx,edx
  00450a9b: 3b c2                                           cmp    eax,edx
  00450a9d: 0f 84 a1 00 00 00                               je     0x450b44
  00450aa3: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  00450aa6: 53                                              push   ebx
  00450aa7: 56                                              push   esi
  00450aa8: 66 8b 70 14                                     mov    si,WORD PTR [eax+0x14]
  00450aac: 57                                              push   edi
  00450aad: 8b 78 1c                                        mov    edi,DWORD PTR [eax+0x1c]
  00450ab0: 3b fa                                           cmp    edi,edx
  00450ab2: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00450ab5: 75 08                                           jne    0x450abf
  00450ab7: 89 55 f4                                        mov    DWORD PTR [ebp-0xc],edx
  00450aba: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  00450abd: eb 1d                                           jmp    0x450adc
  00450abf: 89 4d f4                                        mov    DWORD PTR [ebp-0xc],ecx
  00450ac2: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  00450ac5: df 6d f4                                        fild   QWORD PTR [ebp-0xc]
  00450ac8: 89 7d f4                                        mov    DWORD PTR [ebp-0xc],edi
  00450acb: 89 55 f8                                        mov    DWORD PTR [ebp-0x8],edx
  00450ace: dc 0d e8 f3 4d 00                               fmul   QWORD PTR ds:0x4df3e8
  00450ad4: df 6d f4                                        fild   QWORD PTR [ebp-0xc]
  00450ad7: de f9                                           fdivp  st(1),st
  00450ad9: dd 5d f4                                        fstp   QWORD PTR [ebp-0xc]
  00450adc: 8b 48 18                                        mov    ecx,DWORD PTR [eax+0x18]
  00450adf: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  00450ae2: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  00450ae5: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  00450ae8: 8b 40 10                                        mov    eax,DWORD PTR [eax+0x10]
  00450aeb: 85 c0                                           test   eax,eax
  00450aed: 89 4d e4                                        mov    DWORD PTR [ebp-0x1c],ecx
  00450af0: 8b da                                           mov    ebx,edx
  00450af2: 75 08                                           jne    0x450afc
  00450af4: dd 05 30 e6 4d 00                               fld    QWORD PTR ds:0x4de630
  00450afa: eb 13                                           jmp    0x450b0f
  00450afc: 6a 00                                           push   0x0
  00450afe: 50                                              push   eax
  00450aff: 52                                              push   edx
  00450b00: 51                                              push   ecx
  00450b01: e8 5a 13 08 00                                  call   0x4d1e60
  00450b06: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00450b09: 89 55 f0                                        mov    DWORD PTR [ebp-0x10],edx
  00450b0c: df 6d ec                                        fild   QWORD PTR [ebp-0x14]
  00450b0f: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00450b12: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00450b15: 52                                              push   edx
  00450b16: 53                                              push   ebx
  00450b17: 50                                              push   eax
  00450b18: e8 5d 12 08 00                                  call   0x4d1d7a
  00450b1d: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00450b20: 8b 55 f4                                        mov    edx,DWORD PTR [ebp-0xc]
  00450b23: 50                                              push   eax
  00450b24: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00450b27: 51                                              push   ecx
  00450b28: 52                                              push   edx
  00450b29: 50                                              push   eax
  00450b2a: 57                                              push   edi
  00450b2b: 81 e6 ff ff 00 00                               and    esi,0xffff
  00450b31: 56                                              push   esi
  00450b32: 68 bc 5d 50 00                                  push   0x505dbc
  00450b37: 6a 08                                           push   0x8
  00450b39: e8 02 12 02 00                                  call   0x471d40
  00450b3e: 83 c4 2c                                        add    esp,0x2c
  00450b41: 5f                                              pop    edi
  00450b42: 5e                                              pop    esi
  00450b43: 5b                                              pop    ebx
  00450b44: 8b e5                                           mov    esp,ebp
  00450b46: 5d                                              pop    ebp
  00450b47: c3                                              ret
  00486cf0: 55                                              push   ebp
  00486cf1: 8b ec                                           mov    ebp,esp
  00486cf3: 6a ff                                           push   0xffffffff
  00486cf5: 68 c9 a3 4d 00                                  push   0x4da3c9
  00486cfa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00486d00: 50                                              push   eax
  00486d01: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00486d08: 83 ec 3c                                        sub    esp,0x3c
  00486d0b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00486d0e: 53                                              push   ebx
  00486d0f: 56                                              push   esi
  00486d10: 8b f1                                           mov    esi,ecx
  00486d12: 8a 08                                           mov    cl,BYTE PTR [eax]
  00486d14: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00486d17: 85 c0                                           test   eax,eax
  00486d19: 57                                              push   edi
  00486d1a: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00486d1d: 88 4d 13                                        mov    BYTE PTR [ebp+0x13],cl
  00486d20: 75 04                                           jne    0x486d26
  00486d22: 33 db                                           xor    ebx,ebx
  00486d24: eb 05                                           jmp    0x486d2b
  00486d26: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  00486d29: 2b d8                                           sub    ebx,eax
  00486d2b: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00486d2e: 85 ff                                           test   edi,edi
  00486d30: 0f 84 b5 02 00 00                               je     0x486feb
  00486d36: 85 c0                                           test   eax,eax
  00486d38: 75 04                                           jne    0x486d3e
  00486d3a: 33 c9                                           xor    ecx,ecx
  00486d3c: eb 05                                           jmp    0x486d43
  00486d3e: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00486d41: 2b c8                                           sub    ecx,eax
  00486d43: 83 ca ff                                        or     edx,0xffffffff
  00486d46: 2b d1                                           sub    edx,ecx
  00486d48: 3b d7                                           cmp    edx,edi
  00486d4a: 73 2f                                           jae    0x486d7b
  00486d4c: 68 80 05 50 00                                  push   0x500580
  00486d51: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  00486d54: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00486d5a: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  00486d5d: 50                                              push   eax
  00486d5e: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00486d61: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00486d68: e8 b3 e6 f7 ff                                  call   0x405420
  00486d6d: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00486d72: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00486d75: 51                                              push   ecx
  00486d76: e8 db af 04 00                                  call   0x4d1d56
  00486d7b: 85 c0                                           test   eax,eax
  00486d7d: 75 04                                           jne    0x486d83
  00486d7f: 33 c9                                           xor    ecx,ecx
  00486d81: eb 05                                           jmp    0x486d88
  00486d83: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00486d86: 2b c8                                           sub    ecx,eax
  00486d88: 03 cf                                           add    ecx,edi
  00486d8a: 3b d9                                           cmp    ebx,ecx
  00486d8c: 0f 83 28 01 00 00                               jae    0x486eba
  00486d92: 8b cb                                           mov    ecx,ebx
  00486d94: d1 e9                                           shr    ecx,1
  00486d96: 83 ca ff                                        or     edx,0xffffffff
  00486d99: 2b d1                                           sub    edx,ecx
  00486d9b: 3b d3                                           cmp    edx,ebx
  00486d9d: 73 04                                           jae    0x486da3
  00486d9f: 33 db                                           xor    ebx,ebx
  00486da1: eb 02                                           jmp    0x486da5
  00486da3: 03 d9                                           add    ebx,ecx
  00486da5: 85 c0                                           test   eax,eax
  00486da7: 75 04                                           jne    0x486dad
  00486da9: 33 c9                                           xor    ecx,ecx
  00486dab: eb 05                                           jmp    0x486db2
  00486dad: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00486db0: 2b c8                                           sub    ecx,eax
  00486db2: 03 cf                                           add    ecx,edi
  00486db4: 3b d9                                           cmp    ebx,ecx
  00486db6: 73 10                                           jae    0x486dc8
  00486db8: 85 c0                                           test   eax,eax
  00486dba: 75 04                                           jne    0x486dc0
  00486dbc: 33 c9                                           xor    ecx,ecx
  00486dbe: eb 05                                           jmp    0x486dc5
  00486dc0: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00486dc3: 2b c8                                           sub    ecx,eax
  00486dc5: 8d 1c 39                                        lea    ebx,[ecx+edi*1]
  00486dc8: 53                                              push   ebx
  00486dc9: e8 22 b2 fb ff                                  call   0x441ff0
  00486dce: 83 c4 04                                        add    esp,0x4
  00486dd1: 50                                              push   eax
  00486dd2: 51                                              push   ecx
  00486dd3: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00486dd6: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00486dd9: 8d 45 08                                        lea    eax,[ebp+0x8]
  00486ddc: 8b cc                                           mov    ecx,esp
  00486dde: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486de1: 50                                              push   eax
  00486de2: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00486de9: e8 42 02 00 00                                  call   0x487030
  00486dee: 51                                              push   ecx
  00486def: 8b cc                                           mov    ecx,esp
  00486df1: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486df4: 51                                              push   ecx
  00486df5: 8b ce                                           mov    ecx,esi
  00486df7: e8 24 fe ff ff                                  call   0x486c20
  00486dfc: 8b ce                                           mov    ecx,esi
  00486dfe: e8 5d 02 00 00                                  call   0x487060
  00486e03: 8d 55 13                                        lea    edx,[ebp+0x13]
  00486e06: 52                                              push   edx
  00486e07: 57                                              push   edi
  00486e08: 50                                              push   eax
  00486e09: 8b ce                                           mov    ecx,esi
  00486e0b: e8 f0 01 00 00                                  call   0x487000
  00486e10: 50                                              push   eax
  00486e11: 51                                              push   ecx
  00486e12: 8b c4                                           mov    eax,esp
  00486e14: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486e17: 50                                              push   eax
  00486e18: 8b ce                                           mov    ecx,esi
  00486e1a: e8 11 fe ff ff                                  call   0x486c30
  00486e1f: 51                                              push   ecx
  00486e20: 8d 55 08                                        lea    edx,[ebp+0x8]
  00486e23: 8b cc                                           mov    ecx,esp
  00486e25: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486e28: 52                                              push   edx
  00486e29: e8 02 02 00 00                                  call   0x487030
  00486e2e: 8b ce                                           mov    ecx,esi
  00486e30: e8 2b 02 00 00                                  call   0x487060
  00486e35: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00486e38: 85 c0                                           test   eax,eax
  00486e3a: 74 18                                           je     0x486e54
  00486e3c: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00486e3f: 3b c1                                           cmp    eax,ecx
  00486e41: 74 05                                           je     0x486e48
  00486e43: 40                                              inc    eax
  00486e44: 3b c1                                           cmp    eax,ecx
  00486e46: 75 fb                                           jne    0x486e43
  00486e48: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00486e4b: 50                                              push   eax
  00486e4c: e8 0f b2 fb ff                                  call   0x442060
  00486e51: 83 c4 04                                        add    esp,0x4
  00486e54: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00486e57: 8d 0c 1a                                        lea    ecx,[edx+ebx*1]
  00486e5a: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  00486e5d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00486e60: 85 c9                                           test   ecx,ecx
  00486e62: 75 1f                                           jne    0x486e83
  00486e64: 33 c0                                           xor    eax,eax
  00486e66: 8b c2                                           mov    eax,edx
  00486e68: 03 c7                                           add    eax,edi
  00486e6a: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00486e6d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00486e70: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00486e73: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00486e7a: 5f                                              pop    edi
  00486e7b: 5e                                              pop    esi
  00486e7c: 5b                                              pop    ebx
  00486e7d: 8b e5                                           mov    esp,ebp
  00486e7f: 5d                                              pop    ebp
  00486e80: c2 0c 00                                        ret    0xc
  00486e83: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00486e86: 2b c1                                           sub    eax,ecx
  00486e88: 03 c2                                           add    eax,edx
  00486e8a: 03 c7                                           add    eax,edi
  00486e8c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00486e8f: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00486e92: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00486e95: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00486e9c: 5f                                              pop    edi
  00486e9d: 5e                                              pop    esi
  00486e9e: 5b                                              pop    ebx
  00486e9f: 8b e5                                           mov    esp,ebp
  00486ea1: 5d                                              pop    ebp
  00486ea2: c2 0c 00                                        ret    0xc
  00486eba: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00486ebd: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00486ec0: 8b d0                                           mov    edx,eax
  00486ec2: 2b d1                                           sub    edx,ecx
  00486ec4: 3b d7                                           cmp    edx,edi
  00486ec6: 0f 83 91 00 00 00                               jae    0x486f5d
  00486ecc: 03 cf                                           add    ecx,edi
  00486ece: 51                                              push   ecx
  00486ecf: 51                                              push   ecx
  00486ed0: 8b c4                                           mov    eax,esp
  00486ed2: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486ed5: 50                                              push   eax
  00486ed6: 8b ce                                           mov    ecx,esi
  00486ed8: e8 53 fd ff ff                                  call   0x486c30
  00486edd: 51                                              push   ecx
  00486ede: 8d 55 08                                        lea    edx,[ebp+0x8]
  00486ee1: 8b cc                                           mov    ecx,esp
  00486ee3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486ee6: 52                                              push   edx
  00486ee7: e8 44 01 00 00                                  call   0x487030
  00486eec: 8b ce                                           mov    ecx,esi
  00486eee: e8 6d 01 00 00                                  call   0x487060
  00486ef3: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00486ef6: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00486ef9: 8d 4d 13                                        lea    ecx,[ebp+0x13]
  00486efc: 51                                              push   ecx
  00486efd: 2b d0                                           sub    edx,eax
  00486eff: 03 d7                                           add    edx,edi
  00486f01: 52                                              push   edx
  00486f02: 50                                              push   eax
  00486f03: 8b ce                                           mov    ecx,esi
  00486f05: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00486f0c: e8 ef 00 00 00                                  call   0x487000
  00486f11: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  00486f14: 8d 45 13                                        lea    eax,[ebp+0x13]
  00486f17: 50                                              push   eax
  00486f18: 51                                              push   ecx
  00486f19: 8b cc                                           mov    ecx,esp
  00486f1b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486f1e: 57                                              push   edi
  00486f1f: 51                                              push   ecx
  00486f20: 8d 55 e8                                        lea    edx,[ebp-0x18]
  00486f23: 03 df                                           add    ebx,edi
  00486f25: 52                                              push   edx
  00486f26: 8b ce                                           mov    ecx,esi
  00486f28: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00486f2f: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00486f32: e8 f9 fc ff ff                                  call   0x486c30
  00486f37: 8b c8                                           mov    ecx,eax
  00486f39: e8 02 01 00 00                                  call   0x487040
  00486f3e: 51                                              push   ecx
  00486f3f: 8b cc                                           mov    ecx,esp
  00486f41: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00486f44: e9 91 00 00 00                                  jmp    0x486fda
  00486f5d: 50                                              push   eax
  00486f5e: 51                                              push   ecx
  00486f5f: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00486f62: 8d 45 0c                                        lea    eax,[ebp+0xc]
  00486f65: 8b cc                                           mov    ecx,esp
  00486f67: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486f6a: 50                                              push   eax
  00486f6b: e8 c0 00 00 00                                  call   0x487030
  00486f70: 51                                              push   ecx
  00486f71: 8b cc                                           mov    ecx,esp
  00486f73: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486f76: 57                                              push   edi
  00486f77: 51                                              push   ecx
  00486f78: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00486f7b: e8 c0 00 00 00                                  call   0x487040
  00486f80: 8b ce                                           mov    ecx,esi
  00486f82: e8 d9 00 00 00                                  call   0x487060
  00486f87: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00486f8a: 51                                              push   ecx
  00486f8b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00486f8e: 8b c4                                           mov    eax,esp
  00486f90: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486f93: 51                                              push   ecx
  00486f94: 89 10                                           mov    DWORD PTR [eax],edx
  00486f96: 8b c4                                           mov    eax,esp
  00486f98: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486f9b: 57                                              push   edi
  00486f9c: 50                                              push   eax
  00486f9d: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00486fa0: e8 9b 00 00 00                                  call   0x487040
  00486fa5: 51                                              push   ecx
  00486fa6: 8d 55 08                                        lea    edx,[ebp+0x8]
  00486fa9: 8b cc                                           mov    ecx,esp
  00486fab: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486fae: 52                                              push   edx
  00486faf: e8 7c 00 00 00                                  call   0x487030
  00486fb4: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00486fb7: 50                                              push   eax
  00486fb8: e8 13 01 00 00                                  call   0x4870d0
  00486fbd: 83 c4 10                                        add    esp,0x10
  00486fc0: 8d 4d 13                                        lea    ecx,[ebp+0x13]
  00486fc3: 51                                              push   ecx
  00486fc4: 51                                              push   ecx
  00486fc5: 8b d4                                           mov    edx,esp
  00486fc7: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486fca: 57                                              push   edi
  00486fcb: 52                                              push   edx
  00486fcc: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00486fcf: e8 ac fc ff ff                                  call   0x486c80
  00486fd4: 51                                              push   ecx
  00486fd5: 8b cc                                           mov    ecx,esp
  00486fd7: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00486fda: 8d 45 08                                        lea    eax,[ebp+0x8]
  00486fdd: 50                                              push   eax
  00486fde: e8 4d 00 00 00                                  call   0x487030
  00486fe3: e8 c8 00 00 00                                  call   0x4870b0
  00486fe8: 83 c4 0c                                        add    esp,0xc
  00486feb: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00486fee: 5f                                              pop    edi
  00486fef: 5e                                              pop    esi
  00486ff0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00486ff7: 5b                                              pop    ebx
  00486ff8: 8b e5                                           mov    esp,ebp
  00486ffa: 5d                                              pop    ebp
  00486ffb: c2 0c 00                                        ret    0xc
  00487030: 55                                              push   ebp
  00487031: 8b ec                                           mov    ebp,esp
  00487033: 8b c1                                           mov    eax,ecx
  00487035: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00487038: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0048703a: 89 10                                           mov    DWORD PTR [eax],edx
  0048703c: 5d                                              pop    ebp
  0048703d: c2 04 00                                        ret    0x4
  004cfc40: 55                                              push   ebp
  004cfc41: 8b ec                                           mov    ebp,esp
  004cfc43: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004cfc46: 25 ff 00 00 00                                  and    eax,0xff
  004cfc4b: 83 c0 d0                                        add    eax,0xffffffd0
  004cfc4e: 83 f8 16                                        cmp    eax,0x16
  004cfc51: 77 61                                           ja     0x4cfcb4
  004cfc53: ff 24 85 bc fc 4c 00                            jmp    DWORD PTR [eax*4+0x4cfcbc]
  004cfcb4: 32 c0                                           xor    al,al
  004cfcb6: 5d                                              pop    ebp
  004cfcb7: c2 04 00                                        ret    0x4
  004cfd20: 55                                              push   ebp
  004cfd21: 8b ec                                           mov    ebp,esp
  004cfd23: 53                                              push   ebx
  004cfd24: 56                                              push   esi
  004cfd25: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004cfd28: 85 f6                                           test   esi,esi
  004cfd2a: 57                                              push   edi
  004cfd2b: 0f 84 c0 00 00 00                               je     0x4cfdf1
  004cfd31: 83 c9 ff                                        or     ecx,0xffffffff
  004cfd34: 33 c0                                           xor    eax,eax
  004cfd36: 8b fe                                           mov    edi,esi
  004cfd38: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004cfd3a: f7 d1                                           not    ecx
  004cfd3c: 49                                              dec    ecx
  004cfd3d: 83 f9 08                                        cmp    ecx,0x8
  004cfd40: 0f 85 ab 00 00 00                               jne    0x4cfdf1
  004cfd46: 80 3e 43                                        cmp    BYTE PTR [esi],0x43
  004cfd49: 74 2c                                           je     0x4cfd77
  004cfd4b: 8b 1d 54 e3 4d 00                               mov    ebx,DWORD PTR ds:0x4de354
  004cfd51: 33 ff                                           xor    edi,edi
  004cfd53: 0f be 04 37                                     movsx  eax,BYTE PTR [edi+esi*1]
  004cfd57: 50                                              push   eax
  004cfd58: ff d3                                           call   ebx
  004cfd5a: 83 c4 04                                        add    esp,0x4
  004cfd5d: 85 c0                                           test   eax,eax
  004cfd5f: 0f 84 8c 00 00 00                               je     0x4cfdf1
  004cfd65: 47                                              inc    edi
  004cfd66: 83 ff 08                                        cmp    edi,0x8
  004cfd69: 7c e8                                           jl     0x4cfd53
  004cfd6b: 5f                                              pop    edi
  004cfd6c: 5e                                              pop    esi
  004cfd6d: b8 01 00 00 00                                  mov    eax,0x1
  004cfd72: 5b                                              pop    ebx
  004cfd73: 5d                                              pop    ebp
  004cfd74: c2 04 00                                        ret    0x4
  004cfd77: 0f be 56 03                                     movsx  edx,BYTE PTR [esi+0x3]
  004cfd7b: 0f be 7e 04                                     movsx  edi,BYTE PTR [esi+0x4]
  004cfd7f: 0f be 5e 05                                     movsx  ebx,BYTE PTR [esi+0x5]
  004cfd83: 0f be 46 06                                     movsx  eax,BYTE PTR [esi+0x6]
  004cfd87: 0f be 4e 02                                     movsx  ecx,BYTE PTR [esi+0x2]
  004cfd8b: 8d 44 18 a1                                     lea    eax,[eax+ebx*1-0x5f]
  004cfd8f: 83 ea 30                                        sub    edx,0x30
  004cfd92: 83 e9 30                                        sub    ecx,0x30
  004cfd95: 83 ef 30                                        sub    edi,0x30
  004cfd98: 8d 1c 17                                        lea    ebx,[edi+edx*1]
  004cfd9b: 8d 5c 0b 01                                     lea    ebx,[ebx+ecx*1+0x1]
  004cfd9f: 0f af c3                                        imul   eax,ebx
  004cfda2: 8d 4c 0a 01                                     lea    ecx,[edx+ecx*1+0x1]
  004cfda6: 0f af c1                                        imul   eax,ecx
  004cfda9: 47                                              inc    edi
  004cfdaa: 0f af c7                                        imul   eax,edi
  004cfdad: 99                                              cdq
  004cfdae: b9 61 00 00 00                                  mov    ecx,0x61
  004cfdb3: f7 f9                                           idiv   ecx
  004cfdb5: b8 67 66 66 66                                  mov    eax,0x66666667
  004cfdba: 8b ca                                           mov    ecx,edx
  004cfdbc: f7 e9                                           imul   ecx
  004cfdbe: c1 fa 02                                        sar    edx,0x2
  004cfdc1: 8b c2                                           mov    eax,edx
  004cfdc3: c1 e8 1f                                        shr    eax,0x1f
  004cfdc6: 03 d0                                           add    edx,eax
  004cfdc8: 0f be 46 01                                     movsx  eax,BYTE PTR [esi+0x1]
  004cfdcc: 83 e8 30                                        sub    eax,0x30
  004cfdcf: 3b d0                                           cmp    edx,eax
  004cfdd1: 75 1e                                           jne    0x4cfdf1
  004cfdd3: 0f be 46 07                                     movsx  eax,BYTE PTR [esi+0x7]
  004cfdd7: 8d 14 92                                        lea    edx,[edx+edx*4]
  004cfdda: d1 e2                                           shl    edx,1
  004cfddc: 2b ca                                           sub    ecx,edx
  004cfdde: 83 e8 30                                        sub    eax,0x30
  004cfde1: 3b c8                                           cmp    ecx,eax
  004cfde3: 75 0c                                           jne    0x4cfdf1
  004cfde5: 5f                                              pop    edi
  004cfde6: 5e                                              pop    esi
  004cfde7: b8 01 00 00 00                                  mov    eax,0x1
  004cfdec: 5b                                              pop    ebx
  004cfded: 5d                                              pop    ebp
  004cfdee: c2 04 00                                        ret    0x4
  004cfdf1: 5f                                              pop    edi
  004cfdf2: 5e                                              pop    esi
  004cfdf3: 33 c0                                           xor    eax,eax
  004cfdf5: 5b                                              pop    ebx
  004cfdf6: 5d                                              pop    ebp
  004cfdf7: c2 04 00                                        ret    0x4
  004d1a00: 55                                              push   ebp
  004d1a01: 8b ec                                           mov    ebp,esp
  004d1a03: 56                                              push   esi
  004d1a04: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004d1a07: 83 c8 ff                                        or     eax,0xffffffff
  004d1a0a: 85 f6                                           test   esi,esi
  004d1a0c: 7e 2d                                           jle    0x4d1a3b
  004d1a0e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004d1a11: 57                                              push   edi
  004d1a12: 8a 11                                           mov    dl,BYTE PTR [ecx]
  004d1a14: 88 55 0c                                        mov    BYTE PTR [ebp+0xc],dl
  004d1a17: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004d1a1a: 8b d0                                           mov    edx,eax
  004d1a1c: 81 e2 ff 00 00 00                               and    edx,0xff
  004d1a22: 81 e7 ff 00 00 00                               and    edi,0xff
  004d1a28: 33 d7                                           xor    edx,edi
  004d1a2a: 8b 14 95 f0 0e 51 00                            mov    edx,DWORD PTR [edx*4+0x510ef0]
  004d1a31: c1 e8 08                                        shr    eax,0x8
  004d1a34: 41                                              inc    ecx
  004d1a35: 33 c2                                           xor    eax,edx
  004d1a37: 4e                                              dec    esi
  004d1a38: 75 d8                                           jne    0x4d1a12
  004d1a3a: 5f                                              pop    edi
  004d1a3b: 5e                                              pop    esi
  004d1a3c: 5d                                              pop    ebp
  004d1a3d: c3                                              ret
  004d21c8: ff 25 c4 e2 4d 00                               jmp    DWORD PTR ds:0x4de2c4
