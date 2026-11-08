; PASSE 119, Desassemblage des cibles APPELS_DIRECTS_PREUVES justifiees par des instructions sources
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2212 distinct instructions; 29 graph entry points

  004032a0: 55                                              push   ebp
  004032a1: 8b ec                                           mov    ebp,esp
  004032a3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004032a9: 6a ff                                           push   0xffffffff
  004032ab: 68 a8 30 4d 00                                  push   0x4d30a8
  004032b0: 50                                              push   eax
  004032b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004032b8: 56                                              push   esi
  004032b9: 57                                              push   edi
  004032ba: 8b f1                                           mov    esi,ecx
  004032bc: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004032bf: 85 ff                                           test   edi,edi
  004032c1: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004032c8: 74 04                                           je     0x4032ce
  004032ca: 8b 07                                           mov    eax,DWORD PTR [edi]
  004032cc: eb 02                                           jmp    0x4032d0
  004032ce: 33 c0                                           xor    eax,eax
  004032d0: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004032d2: 50                                              push   eax
  004032d3: 56                                              push   esi
  004032d4: ff 51 20                                        call   DWORD PTR [ecx+0x20]
  004032d7: 85 c0                                           test   eax,eax
  004032d9: 7d 0c                                           jge    0x4032e7
  004032db: 68 80 04 50 00                                  push   0x500480
  004032e0: 56                                              push   esi
  004032e1: 50                                              push   eax
  004032e2: e8 83 f2 0c 00                                  call   0x4d256a
  004032e7: 85 ff                                           test   edi,edi
  004032e9: 74 34                                           je     0x40331f
  004032eb: 8d 57 08                                        lea    edx,[edi+0x8]
  004032ee: 52                                              push   edx
  004032ef: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  004032f5: 85 c0                                           test   eax,eax
  004032f7: 75 26                                           jne    0x40331f
  004032f9: 8b 07                                           mov    eax,DWORD PTR [edi]
  004032fb: 85 c0                                           test   eax,eax
  004032fd: 74 07                                           je     0x403306
  004032ff: 50                                              push   eax
  00403300: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  00403306: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00403309: 85 c0                                           test   eax,eax
  0040330b: 74 09                                           je     0x403316
  0040330d: 50                                              push   eax
  0040330e: e8 7d b1 0c 00                                  call   0x4ce490
  00403313: 83 c4 04                                        add    esp,0x4
  00403316: 57                                              push   edi
  00403317: e8 44 ed 03 00                                  call   0x442060
  0040331c: 83 c4 04                                        add    esp,0x4
  0040331f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00403322: 5f                                              pop    edi
  00403323: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040332a: 5e                                              pop    esi
  0040332b: 8b e5                                           mov    esp,ebp
  0040332d: 5d                                              pop    ebp
  0040332e: c2 04 00                                        ret    0x4
  00403340: 55                                              push   ebp
  00403341: 8b ec                                           mov    ebp,esp
  00403343: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00403349: 6a ff                                           push   0xffffffff
  0040334b: 68 c8 30 4d 00                                  push   0x4d30c8
  00403350: 50                                              push   eax
  00403351: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00403358: 56                                              push   esi
  00403359: 57                                              push   edi
  0040335a: 8b f1                                           mov    esi,ecx
  0040335c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0040335f: 85 ff                                           test   edi,edi
  00403361: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00403368: 74 04                                           je     0x40336e
  0040336a: 8b 07                                           mov    eax,DWORD PTR [edi]
  0040336c: eb 02                                           jmp    0x403370
  0040336e: 33 c0                                           xor    eax,eax
  00403370: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00403372: 50                                              push   eax
  00403373: 56                                              push   esi
  00403374: ff 51 2c                                        call   DWORD PTR [ecx+0x2c]
  00403377: 85 c0                                           test   eax,eax
  00403379: 7d 0c                                           jge    0x403387
  0040337b: 68 80 04 50 00                                  push   0x500480
  00403380: 56                                              push   esi
  00403381: 50                                              push   eax
  00403382: e8 e3 f1 0c 00                                  call   0x4d256a
  00403387: 85 ff                                           test   edi,edi
  00403389: 74 34                                           je     0x4033bf
  0040338b: 8d 57 08                                        lea    edx,[edi+0x8]
  0040338e: 52                                              push   edx
  0040338f: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  00403395: 85 c0                                           test   eax,eax
  00403397: 75 26                                           jne    0x4033bf
  00403399: 8b 07                                           mov    eax,DWORD PTR [edi]
  0040339b: 85 c0                                           test   eax,eax
  0040339d: 74 07                                           je     0x4033a6
  0040339f: 50                                              push   eax
  004033a0: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  004033a6: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004033a9: 85 c0                                           test   eax,eax
  004033ab: 74 09                                           je     0x4033b6
  004033ad: 50                                              push   eax
  004033ae: e8 dd b0 0c 00                                  call   0x4ce490
  004033b3: 83 c4 04                                        add    esp,0x4
  004033b6: 57                                              push   edi
  004033b7: e8 a4 ec 03 00                                  call   0x442060
  004033bc: 83 c4 04                                        add    esp,0x4
  004033bf: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004033c2: 5f                                              pop    edi
  004033c3: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004033ca: 5e                                              pop    esi
  004033cb: 8b e5                                           mov    esp,ebp
  004033cd: 5d                                              pop    ebp
  004033ce: c2 04 00                                        ret    0x4
  004033e0: 55                                              push   ebp
  004033e1: 8b ec                                           mov    ebp,esp
  004033e3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004033e9: 6a ff                                           push   0xffffffff
  004033eb: 68 e8 30 4d 00                                  push   0x4d30e8
  004033f0: 50                                              push   eax
  004033f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004033f8: 56                                              push   esi
  004033f9: 57                                              push   edi
  004033fa: 8b f1                                           mov    esi,ecx
  004033fc: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004033ff: 85 ff                                           test   edi,edi
  00403401: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00403408: 74 04                                           je     0x40340e
  0040340a: 8b 07                                           mov    eax,DWORD PTR [edi]
  0040340c: eb 02                                           jmp    0x403410
  0040340e: 33 c0                                           xor    eax,eax
  00403410: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00403412: 50                                              push   eax
  00403413: 56                                              push   esi
  00403414: ff 51 44                                        call   DWORD PTR [ecx+0x44]
  00403417: 85 c0                                           test   eax,eax
  00403419: 7d 0c                                           jge    0x403427
  0040341b: 68 80 04 50 00                                  push   0x500480
  00403420: 56                                              push   esi
  00403421: 50                                              push   eax
  00403422: e8 43 f1 0c 00                                  call   0x4d256a
  00403427: 85 ff                                           test   edi,edi
  00403429: 74 34                                           je     0x40345f
  0040342b: 8d 57 08                                        lea    edx,[edi+0x8]
  0040342e: 52                                              push   edx
  0040342f: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  00403435: 85 c0                                           test   eax,eax
  00403437: 75 26                                           jne    0x40345f
  00403439: 8b 07                                           mov    eax,DWORD PTR [edi]
  0040343b: 85 c0                                           test   eax,eax
  0040343d: 74 07                                           je     0x403446
  0040343f: 50                                              push   eax
  00403440: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  00403446: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00403449: 85 c0                                           test   eax,eax
  0040344b: 74 09                                           je     0x403456
  0040344d: 50                                              push   eax
  0040344e: e8 3d b0 0c 00                                  call   0x4ce490
  00403453: 83 c4 04                                        add    esp,0x4
  00403456: 57                                              push   edi
  00403457: e8 04 ec 03 00                                  call   0x442060
  0040345c: 83 c4 04                                        add    esp,0x4
  0040345f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00403462: 5f                                              pop    edi
  00403463: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040346a: 5e                                              pop    esi
  0040346b: 8b e5                                           mov    esp,ebp
  0040346d: 5d                                              pop    ebp
  0040346e: c2 04 00                                        ret    0x4
  00403480: 55                                              push   ebp
  00403481: 8b ec                                           mov    ebp,esp
  00403483: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00403489: 6a ff                                           push   0xffffffff
  0040348b: 68 08 31 4d 00                                  push   0x4d3108
  00403490: 50                                              push   eax
  00403491: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00403498: 56                                              push   esi
  00403499: 57                                              push   edi
  0040349a: 8b f1                                           mov    esi,ecx
  0040349c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0040349f: 85 ff                                           test   edi,edi
  004034a1: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004034a8: 74 04                                           je     0x4034ae
  004034aa: 8b 07                                           mov    eax,DWORD PTR [edi]
  004034ac: eb 02                                           jmp    0x4034b0
  004034ae: 33 c0                                           xor    eax,eax
  004034b0: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004034b2: 50                                              push   eax
  004034b3: 56                                              push   esi
  004034b4: ff 51 4c                                        call   DWORD PTR [ecx+0x4c]
  004034b7: 85 c0                                           test   eax,eax
  004034b9: 7d 0c                                           jge    0x4034c7
  004034bb: 68 80 04 50 00                                  push   0x500480
  004034c0: 56                                              push   esi
  004034c1: 50                                              push   eax
  004034c2: e8 a3 f0 0c 00                                  call   0x4d256a
  004034c7: 85 ff                                           test   edi,edi
  004034c9: 74 34                                           je     0x4034ff
  004034cb: 8d 57 08                                        lea    edx,[edi+0x8]
  004034ce: 52                                              push   edx
  004034cf: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  004034d5: 85 c0                                           test   eax,eax
  004034d7: 75 26                                           jne    0x4034ff
  004034d9: 8b 07                                           mov    eax,DWORD PTR [edi]
  004034db: 85 c0                                           test   eax,eax
  004034dd: 74 07                                           je     0x4034e6
  004034df: 50                                              push   eax
  004034e0: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  004034e6: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004034e9: 85 c0                                           test   eax,eax
  004034eb: 74 09                                           je     0x4034f6
  004034ed: 50                                              push   eax
  004034ee: e8 9d af 0c 00                                  call   0x4ce490
  004034f3: 83 c4 04                                        add    esp,0x4
  004034f6: 57                                              push   edi
  004034f7: e8 64 eb 03 00                                  call   0x442060
  004034fc: 83 c4 04                                        add    esp,0x4
  004034ff: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00403502: 5f                                              pop    edi
  00403503: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040350a: 5e                                              pop    esi
  0040350b: 8b e5                                           mov    esp,ebp
  0040350d: 5d                                              pop    ebp
  0040350e: c2 04 00                                        ret    0x4
  00403520: 55                                              push   ebp
  00403521: 8b ec                                           mov    ebp,esp
  00403523: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00403529: 6a ff                                           push   0xffffffff
  0040352b: 68 28 31 4d 00                                  push   0x4d3128
  00403530: 50                                              push   eax
  00403531: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00403538: 56                                              push   esi
  00403539: 57                                              push   edi
  0040353a: 8b f9                                           mov    edi,ecx
  0040353c: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0040353f: 85 f6                                           test   esi,esi
  00403541: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00403548: 74 04                                           je     0x40354e
  0040354a: 8b 06                                           mov    eax,DWORD PTR [esi]
  0040354c: eb 02                                           jmp    0x403550
  0040354e: 33 c0                                           xor    eax,eax
  00403550: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00403552: 8d 55 0c                                        lea    edx,[ebp+0xc]
  00403555: 52                                              push   edx
  00403556: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00403559: 52                                              push   edx
  0040355a: 50                                              push   eax
  0040355b: 57                                              push   edi
  0040355c: ff 51 50                                        call   DWORD PTR [ecx+0x50]
  0040355f: 85 c0                                           test   eax,eax
  00403561: 7d 0c                                           jge    0x40356f
  00403563: 68 80 04 50 00                                  push   0x500480
  00403568: 57                                              push   edi
  00403569: 50                                              push   eax
  0040356a: e8 fb ef 0c 00                                  call   0x4d256a
  0040356f: 85 f6                                           test   esi,esi
  00403571: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00403574: 74 34                                           je     0x4035aa
  00403576: 8d 46 08                                        lea    eax,[esi+0x8]
  00403579: 50                                              push   eax
  0040357a: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  00403580: 85 c0                                           test   eax,eax
  00403582: 75 26                                           jne    0x4035aa
  00403584: 8b 06                                           mov    eax,DWORD PTR [esi]
  00403586: 85 c0                                           test   eax,eax
  00403588: 74 07                                           je     0x403591
  0040358a: 50                                              push   eax
  0040358b: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  00403591: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00403594: 85 c0                                           test   eax,eax
  00403596: 74 09                                           je     0x4035a1
  00403598: 50                                              push   eax
  00403599: e8 f2 ae 0c 00                                  call   0x4ce490
  0040359e: 83 c4 04                                        add    esp,0x4
  004035a1: 56                                              push   esi
  004035a2: e8 b9 ea 03 00                                  call   0x442060
  004035a7: 83 c4 04                                        add    esp,0x4
  004035aa: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004035ad: 8b c7                                           mov    eax,edi
  004035af: 5f                                              pop    edi
  004035b0: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004035b7: 5e                                              pop    esi
  004035b8: 8b e5                                           mov    esp,ebp
  004035ba: 5d                                              pop    ebp
  004035bb: c2 08 00                                        ret    0x8
  004035c0: 55                                              push   ebp
  004035c1: 8b ec                                           mov    ebp,esp
  004035c3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004035c9: 6a ff                                           push   0xffffffff
  004035cb: 68 50 31 4d 00                                  push   0x4d3150
  004035d0: 50                                              push   eax
  004035d1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004035d8: 53                                              push   ebx
  004035d9: 56                                              push   esi
  004035da: 57                                              push   edi
  004035db: 8b f9                                           mov    edi,ecx
  004035dd: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004035e0: 85 c0                                           test   eax,eax
  004035e2: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004035e9: 74 04                                           je     0x4035ef
  004035eb: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004035ed: eb 02                                           jmp    0x4035f1
  004035ef: 33 c9                                           xor    ecx,ecx
  004035f1: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004035f4: 85 f6                                           test   esi,esi
  004035f6: 74 04                                           je     0x4035fc
  004035f8: 8b 06                                           mov    eax,DWORD PTR [esi]
  004035fa: eb 02                                           jmp    0x4035fe
  004035fc: 33 c0                                           xor    eax,eax
  004035fe: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00403601: 8b 17                                           mov    edx,DWORD PTR [edi]
  00403603: 53                                              push   ebx
  00403604: 51                                              push   ecx
  00403605: 50                                              push   eax
  00403606: 57                                              push   edi
  00403607: ff 52 64                                        call   DWORD PTR [edx+0x64]
  0040360a: 8b d8                                           mov    ebx,eax
  0040360c: 85 db                                           test   ebx,ebx
  0040360e: 7d 0c                                           jge    0x40361c
  00403610: 68 80 04 50 00                                  push   0x500480
  00403615: 57                                              push   edi
  00403616: 53                                              push   ebx
  00403617: e8 4e ef 0c 00                                  call   0x4d256a
  0040361c: 85 f6                                           test   esi,esi
  0040361e: 8b 3d e8 e0 4d 00                               mov    edi,DWORD PTR ds:0x4de0e8
  00403624: 74 30                                           je     0x403656
  00403626: 8d 46 08                                        lea    eax,[esi+0x8]
  00403629: 50                                              push   eax
  0040362a: ff d7                                           call   edi
  0040362c: 85 c0                                           test   eax,eax
  0040362e: 75 26                                           jne    0x403656
  00403630: 8b 06                                           mov    eax,DWORD PTR [esi]
  00403632: 85 c0                                           test   eax,eax
  00403634: 74 07                                           je     0x40363d
  00403636: 50                                              push   eax
  00403637: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  0040363d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00403640: 85 c0                                           test   eax,eax
  00403642: 74 09                                           je     0x40364d
  00403644: 50                                              push   eax
  00403645: e8 46 ae 0c 00                                  call   0x4ce490
  0040364a: 83 c4 04                                        add    esp,0x4
  0040364d: 56                                              push   esi
  0040364e: e8 0d ea 03 00                                  call   0x442060
  00403653: 83 c4 04                                        add    esp,0x4
  00403656: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00403659: 85 f6                                           test   esi,esi
  0040365b: 74 30                                           je     0x40368d
  0040365d: 8d 4e 08                                        lea    ecx,[esi+0x8]
  00403660: 51                                              push   ecx
  00403661: ff d7                                           call   edi
  00403663: 85 c0                                           test   eax,eax
  00403665: 75 26                                           jne    0x40368d
  00403667: 8b 06                                           mov    eax,DWORD PTR [esi]
  00403669: 85 c0                                           test   eax,eax
  0040366b: 74 07                                           je     0x403674
  0040366d: 50                                              push   eax
  0040366e: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  00403674: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00403677: 85 c0                                           test   eax,eax
  00403679: 74 09                                           je     0x403684
  0040367b: 50                                              push   eax
  0040367c: e8 0f ae 0c 00                                  call   0x4ce490
  00403681: 83 c4 04                                        add    esp,0x4
  00403684: 56                                              push   esi
  00403685: e8 d6 e9 03 00                                  call   0x442060
  0040368a: 83 c4 04                                        add    esp,0x4
  0040368d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00403690: 5f                                              pop    edi
  00403691: 5e                                              pop    esi
  00403692: 8b c3                                           mov    eax,ebx
  00403694: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040369b: 5b                                              pop    ebx
  0040369c: 8b e5                                           mov    esp,ebp
  0040369e: 5d                                              pop    ebp
  0040369f: c2 0c 00                                        ret    0xc
  004036b0: 55                                              push   ebp
  004036b1: 8b ec                                           mov    ebp,esp
  004036b3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004036b9: 6a ff                                           push   0xffffffff
  004036bb: 68 68 31 4d 00                                  push   0x4d3168
  004036c0: 50                                              push   eax
  004036c1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004036c8: 56                                              push   esi
  004036c9: 57                                              push   edi
  004036ca: 8b f1                                           mov    esi,ecx
  004036cc: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  004036cf: 85 ff                                           test   edi,edi
  004036d1: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004036d8: 74 04                                           je     0x4036de
  004036da: 8b 07                                           mov    eax,DWORD PTR [edi]
  004036dc: eb 02                                           jmp    0x4036e0
  004036de: 33 c0                                           xor    eax,eax
  004036e0: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004036e2: 50                                              push   eax
  004036e3: 56                                              push   esi
  004036e4: ff 51 74                                        call   DWORD PTR [ecx+0x74]
  004036e7: 85 c0                                           test   eax,eax
  004036e9: 7d 0c                                           jge    0x4036f7
  004036eb: 68 80 04 50 00                                  push   0x500480
  004036f0: 56                                              push   esi
  004036f1: 50                                              push   eax
  004036f2: e8 73 ee 0c 00                                  call   0x4d256a
  004036f7: 85 ff                                           test   edi,edi
  004036f9: 74 34                                           je     0x40372f
  004036fb: 8d 57 08                                        lea    edx,[edi+0x8]
  004036fe: 52                                              push   edx
  004036ff: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  00403705: 85 c0                                           test   eax,eax
  00403707: 75 26                                           jne    0x40372f
  00403709: 8b 07                                           mov    eax,DWORD PTR [edi]
  0040370b: 85 c0                                           test   eax,eax
  0040370d: 74 07                                           je     0x403716
  0040370f: 50                                              push   eax
  00403710: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  00403716: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00403719: 85 c0                                           test   eax,eax
  0040371b: 74 09                                           je     0x403726
  0040371d: 50                                              push   eax
  0040371e: e8 6d ad 0c 00                                  call   0x4ce490
  00403723: 83 c4 04                                        add    esp,0x4
  00403726: 57                                              push   edi
  00403727: e8 34 e9 03 00                                  call   0x442060
  0040372c: 83 c4 04                                        add    esp,0x4
  0040372f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00403732: 5f                                              pop    edi
  00403733: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040373a: 5e                                              pop    esi
  0040373b: 8b e5                                           mov    esp,ebp
  0040373d: 5d                                              pop    ebp
  0040373e: c2 04 00                                        ret    0x4
  00403750: 55                                              push   ebp
  00403751: 8b ec                                           mov    ebp,esp
  00403753: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00403759: 6a ff                                           push   0xffffffff
  0040375b: 68 88 31 4d 00                                  push   0x4d3188
  00403760: 50                                              push   eax
  00403761: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00403768: 56                                              push   esi
  00403769: 57                                              push   edi
  0040376a: 8b f1                                           mov    esi,ecx
  0040376c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0040376f: 85 ff                                           test   edi,edi
  00403771: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00403778: 74 04                                           je     0x40377e
  0040377a: 8b 07                                           mov    eax,DWORD PTR [edi]
  0040377c: eb 02                                           jmp    0x403780
  0040377e: 33 c0                                           xor    eax,eax
  00403780: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00403782: 50                                              push   eax
  00403783: 56                                              push   esi
  00403784: ff 91 48 01 00 00                               call   DWORD PTR [ecx+0x148]
  0040378a: 85 c0                                           test   eax,eax
  0040378c: 7d 0c                                           jge    0x40379a
  0040378e: 68 80 04 50 00                                  push   0x500480
  00403793: 56                                              push   esi
  00403794: 50                                              push   eax
  00403795: e8 d0 ed 0c 00                                  call   0x4d256a
  0040379a: 85 ff                                           test   edi,edi
  0040379c: 74 34                                           je     0x4037d2
  0040379e: 8d 57 08                                        lea    edx,[edi+0x8]
  004037a1: 52                                              push   edx
  004037a2: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  004037a8: 85 c0                                           test   eax,eax
  004037aa: 75 26                                           jne    0x4037d2
  004037ac: 8b 07                                           mov    eax,DWORD PTR [edi]
  004037ae: 85 c0                                           test   eax,eax
  004037b0: 74 07                                           je     0x4037b9
  004037b2: 50                                              push   eax
  004037b3: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  004037b9: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004037bc: 85 c0                                           test   eax,eax
  004037be: 74 09                                           je     0x4037c9
  004037c0: 50                                              push   eax
  004037c1: e8 ca ac 0c 00                                  call   0x4ce490
  004037c6: 83 c4 04                                        add    esp,0x4
  004037c9: 57                                              push   edi
  004037ca: e8 91 e8 03 00                                  call   0x442060
  004037cf: 83 c4 04                                        add    esp,0x4
  004037d2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004037d5: 5f                                              pop    edi
  004037d6: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004037dd: 5e                                              pop    esi
  004037de: 8b e5                                           mov    esp,ebp
  004037e0: 5d                                              pop    ebp
  004037e1: c2 04 00                                        ret    0x4
  004037f0: 55                                              push   ebp
  004037f1: 8b ec                                           mov    ebp,esp
  004037f3: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004037f9: 6a ff                                           push   0xffffffff
  004037fb: 68 a8 31 4d 00                                  push   0x4d31a8
  00403800: 50                                              push   eax
  00403801: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00403808: 56                                              push   esi
  00403809: 57                                              push   edi
  0040380a: 8b f1                                           mov    esi,ecx
  0040380c: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0040380f: 85 ff                                           test   edi,edi
  00403811: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00403818: 74 04                                           je     0x40381e
  0040381a: 8b 07                                           mov    eax,DWORD PTR [edi]
  0040381c: eb 02                                           jmp    0x403820
  0040381e: 33 c0                                           xor    eax,eax
  00403820: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  00403822: 50                                              push   eax
  00403823: 56                                              push   esi
  00403824: ff 91 50 01 00 00                               call   DWORD PTR [ecx+0x150]
  0040382a: 85 c0                                           test   eax,eax
  0040382c: 7d 0c                                           jge    0x40383a
  0040382e: 68 80 04 50 00                                  push   0x500480
  00403833: 56                                              push   esi
  00403834: 50                                              push   eax
  00403835: e8 30 ed 0c 00                                  call   0x4d256a
  0040383a: 85 ff                                           test   edi,edi
  0040383c: 74 34                                           je     0x403872
  0040383e: 8d 57 08                                        lea    edx,[edi+0x8]
  00403841: 52                                              push   edx
  00403842: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  00403848: 85 c0                                           test   eax,eax
  0040384a: 75 26                                           jne    0x403872
  0040384c: 8b 07                                           mov    eax,DWORD PTR [edi]
  0040384e: 85 c0                                           test   eax,eax
  00403850: 74 07                                           je     0x403859
  00403852: 50                                              push   eax
  00403853: ff 15 14 e4 4d 00                               call   DWORD PTR ds:0x4de414
  00403859: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0040385c: 85 c0                                           test   eax,eax
  0040385e: 74 09                                           je     0x403869
  00403860: 50                                              push   eax
  00403861: e8 2a ac 0c 00                                  call   0x4ce490
  00403866: 83 c4 04                                        add    esp,0x4
  00403869: 57                                              push   edi
  0040386a: e8 f1 e7 03 00                                  call   0x442060
  0040386f: 83 c4 04                                        add    esp,0x4
  00403872: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00403875: 5f                                              pop    edi
  00403876: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0040387d: 5e                                              pop    esi
  0040387e: 8b e5                                           mov    esp,ebp
  00403880: 5d                                              pop    ebp
  00403881: c2 04 00                                        ret    0x4
  004038f0: 56                                              push   esi
  004038f1: 8b f1                                           mov    esi,ecx
  004038f3: 83 3e 00                                        cmp    DWORD PTR [esi],0x0
  004038f6: 75 0a                                           jne    0x403902
  004038f8: 68 03 40 00 80                                  push   0x80004003
  004038fd: e8 5a ec 0c 00                                  call   0x4d255c
  00403902: 8b 06                                           mov    eax,DWORD PTR [esi]
  00403904: 5e                                              pop    esi
  00403905: c3                                              ret
  00403910: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00403912: 83 c0 08                                        add    eax,0x8
  00403915: c3                                              ret
  00403960: 55                                              push   ebp
  00403961: 8b ec                                           mov    ebp,esp
  00403963: 83 ec 14                                        sub    esp,0x14
  00403966: 53                                              push   ebx
  00403967: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0040396a: 85 db                                           test   ebx,ebx
  0040396c: 56                                              push   esi
  0040396d: 57                                              push   edi
  0040396e: 89 4d fc                                        mov    DWORD PTR [ebp-0x4],ecx
  00403971: 75 11                                           jne    0x403984
  00403973: b8 57 00 07 80                                  mov    eax,0x80070057
  00403978: 8d 65 e0                                        lea    esp,[ebp-0x20]
  0040397b: 5f                                              pop    edi
  0040397c: 5e                                              pop    esi
  0040397d: 5b                                              pop    ebx
  0040397e: 8b e5                                           mov    esp,ebp
  00403980: 5d                                              pop    ebp
  00403981: c2 0c 00                                        ret    0xc
  00403984: 53                                              push   ebx
  00403985: ff 15 f4 e0 4d 00                               call   DWORD PTR ds:0x4de0f4
  0040398b: 8b f0                                           mov    esi,eax
  0040398d: 46                                              inc    esi
  0040398e: 8d 04 36                                        lea    eax,[esi+esi*1]
  00403991: 83 c0 03                                        add    eax,0x3
  00403994: 83 e0 fc                                        and    eax,0xfffffffc
  00403997: e8 14 e3 0c 00                                  call   0x4d1cb0
  0040399c: 8b fc                                           mov    edi,esp
  0040399e: 56                                              push   esi
  0040399f: 57                                              push   edi
  004039a0: 6a ff                                           push   0xffffffff
  004039a2: 53                                              push   ebx
  004039a3: 6a 00                                           push   0x0
  004039a5: 6a 00                                           push   0x0
  004039a7: 66 c7 07 00 00                                  mov    WORD PTR [edi],0x0
  004039ac: ff 15 f0 e0 4d 00                               call   DWORD PTR ds:0x4de0f0
  004039b2: 85 c0                                           test   eax,eax
  004039b4: 75 32                                           jne    0x4039e8
  004039b6: 8b 35 ec e0 4d 00                               mov    esi,DWORD PTR ds:0x4de0ec
  004039bc: ff d6                                           call   esi
  004039be: 85 c0                                           test   eax,eax
  004039c0: 74 18                                           je     0x4039da
  004039c2: ff d6                                           call   esi
  004039c4: 25 ff ff 00 00                                  and    eax,0xffff
  004039c9: 0d 00 00 07 80                                  or     eax,0x80070000
  004039ce: 8d 65 e0                                        lea    esp,[ebp-0x20]
  004039d1: 5f                                              pop    edi
  004039d2: 5e                                              pop    esi
  004039d3: 5b                                              pop    ebx
  004039d4: 8b e5                                           mov    esp,ebp
  004039d6: 5d                                              pop    ebp
  004039d7: c2 0c 00                                        ret    0xc
  004039da: 33 c0                                           xor    eax,eax
  004039dc: 8d 65 e0                                        lea    esp,[ebp-0x20]
  004039df: 5f                                              pop    edi
  004039e0: 5e                                              pop    esi
  004039e1: 5b                                              pop    ebx
  004039e2: 8b e5                                           mov    esp,ebp
  004039e4: 5d                                              pop    ebp
  004039e5: c2 0c 00                                        ret    0xc
  004039e8: 85 ff                                           test   edi,edi
  004039ea: 75 11                                           jne    0x4039fd
  004039ec: b8 57 00 07 80                                  mov    eax,0x80070057
  004039f1: 8d 65 e0                                        lea    esp,[ebp-0x20]
  004039f4: 5f                                              pop    edi
  004039f5: 5e                                              pop    esi
  004039f6: 5b                                              pop    ebx
  004039f7: 8b e5                                           mov    esp,ebp
  004039f9: 5d                                              pop    ebp
  004039fa: c2 0c 00                                        ret    0xc
  004039fd: 66 83 3f 7b                                     cmp    WORD PTR [edi],0x7b
  00403a01: 75 0d                                           jne    0x403a10
  00403a03: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00403a06: 50                                              push   eax
  00403a07: 57                                              push   edi
  00403a08: ff 15 c4 e4 4d 00                               call   DWORD PTR ds:0x4de4c4
  00403a0e: eb 0b                                           jmp    0x403a1b
  00403a10: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  00403a13: 51                                              push   ecx
  00403a14: 57                                              push   edi
  00403a15: ff 15 c8 e4 4d 00                               call   DWORD PTR ds:0x4de4c8
  00403a1b: 85 c0                                           test   eax,eax
  00403a1d: 0f 8c 84 00 00 00                               jl     0x403aa7
  00403a23: 8b 7d fc                                        mov    edi,DWORD PTR [ebp-0x4]
  00403a26: 8b 07                                           mov    eax,DWORD PTR [edi]
  00403a28: 85 c0                                           test   eax,eax
  00403a2a: 74 06                                           je     0x403a32
  00403a2c: 8b 10                                           mov    edx,DWORD PTR [eax]
  00403a2e: 50                                              push   eax
  00403a2f: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00403a32: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00403a35: a8 14                                           test   al,0x14
  00403a37: 74 55                                           je     0x403a8e
  00403a39: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00403a3c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00403a3f: 51                                              push   ecx
  00403a40: 68 d8 04 50 00                                  push   0x5004d8
  00403a45: 50                                              push   eax
  00403a46: 52                                              push   edx
  00403a47: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00403a4a: 50                                              push   eax
  00403a4b: ff 15 cc e4 4d 00                               call   DWORD PTR ds:0x4de4cc
  00403a51: 8b f0                                           mov    esi,eax
  00403a53: 85 f6                                           test   esi,esi
  00403a55: 7c 4e                                           jl     0x403aa5
  00403a57: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00403a5a: 51                                              push   ecx
  00403a5b: ff 15 b8 e4 4d 00                               call   DWORD PTR ds:0x4de4b8
  00403a61: 8b f0                                           mov    esi,eax
  00403a63: 85 f6                                           test   esi,esi
  00403a65: 7c 10                                           jl     0x403a77
  00403a67: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00403a6a: 8b 10                                           mov    edx,DWORD PTR [eax]
  00403a6c: 57                                              push   edi
  00403a6d: 68 80 04 50 00                                  push   0x500480
  00403a72: 50                                              push   eax
  00403a73: ff 12                                           call   DWORD PTR [edx]
  00403a75: 8b f0                                           mov    esi,eax
  00403a77: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00403a7a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00403a7c: 50                                              push   eax
  00403a7d: ff 51 08                                        call   DWORD PTR [ecx+0x8]
  00403a80: 8b c6                                           mov    eax,esi
  00403a82: 8d 65 e0                                        lea    esp,[ebp-0x20]
  00403a85: 5f                                              pop    edi
  00403a86: 5e                                              pop    esi
  00403a87: 5b                                              pop    ebx
  00403a88: 8b e5                                           mov    esp,ebp
  00403a8a: 5d                                              pop    ebp
  00403a8b: c2 0c 00                                        ret    0xc
  00403a8e: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00403a91: 57                                              push   edi
  00403a92: 68 80 04 50 00                                  push   0x500480
  00403a97: 50                                              push   eax
  00403a98: 52                                              push   edx
  00403a99: 8d 45 ec                                        lea    eax,[ebp-0x14]
  00403a9c: 50                                              push   eax
  00403a9d: ff 15 cc e4 4d 00                               call   DWORD PTR ds:0x4de4cc
  00403aa3: 8b f0                                           mov    esi,eax
  00403aa5: 8b c6                                           mov    eax,esi
  00403aa7: 8d 65 e0                                        lea    esp,[ebp-0x20]
  00403aaa: 5f                                              pop    edi
  00403aab: 5e                                              pop    esi
  00403aac: 5b                                              pop    ebx
  00403aad: 8b e5                                           mov    esp,ebp
  00403aaf: 5d                                              pop    ebp
  00403ab0: c2 0c 00                                        ret    0xc
  004049c0: 55                                              push   ebp
  004049c1: 8b ec                                           mov    ebp,esp
  004049c3: 83 ec 08                                        sub    esp,0x8
  004049c6: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004049c9: 3b 55 0c                                        cmp    edx,DWORD PTR [ebp+0xc]
  004049cc: 0f 84 03 02 00 00                               je     0x404bd5
  004049d2: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004049d5: 53                                              push   ebx
  004049d6: 56                                              push   esi
  004049d7: 8d 72 14                                        lea    esi,[edx+0x14]
  004049da: 57                                              push   edi
  004049db: 8d 58 14                                        lea    ebx,[eax+0x14]
  004049de: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  004049e1: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004049e7: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004049e9: 8b 4e f4                                        mov    ecx,DWORD PTR [esi-0xc]
  004049ec: 8b f9                                           mov    edi,ecx
  004049ee: 3b c7                                           cmp    eax,edi
  004049f0: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  004049f3: 73 05                                           jae    0x4049fa
  004049f5: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004049f8: 8b f8                                           mov    edi,eax
  004049fa: 39 55 10                                        cmp    DWORD PTR [ebp+0x10],edx
  004049fd: 75 1d                                           jne    0x404a1c
  004049ff: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00404a02: 50                                              push   eax
  00404a03: 57                                              push   edi
  00404a04: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404a0a: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00404a0d: 6a 00                                           push   0x0
  00404a0f: 6a 00                                           push   0x0
  00404a11: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404a17: e9 aa 00 00 00                                  jmp    0x404ac6
  00404a1c: 33 d2                                           xor    edx,edx
  00404a1e: 3b fa                                           cmp    edi,edx
  00404a20: 76 64                                           jbe    0x404a86
  00404a22: 3b f9                                           cmp    edi,ecx
  00404a24: 75 60                                           jne    0x404a86
  00404a26: 8b 46 f0                                        mov    eax,DWORD PTR [esi-0x10]
  00404a29: 3b c2                                           cmp    eax,edx
  00404a2b: 75 05                                           jne    0x404a32
  00404a2d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404a32: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00404a36: 73 4e                                           jae    0x404a86
  00404a38: 8b 43 f0                                        mov    eax,DWORD PTR [ebx-0x10]
  00404a3b: 3b c2                                           cmp    eax,edx
  00404a3d: 74 1e                                           je     0x404a5d
  00404a3f: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00404a42: 8a 01                                           mov    al,BYTE PTR [ecx]
  00404a44: 84 c0                                           test   al,al
  00404a46: 74 0a                                           je     0x404a52
  00404a48: 3c ff                                           cmp    al,0xff
  00404a4a: 74 06                                           je     0x404a52
  00404a4c: fe c8                                           dec    al
  00404a4e: 88 01                                           mov    BYTE PTR [ecx],al
  00404a50: eb 0b                                           jmp    0x404a5d
  00404a52: 51                                              push   ecx
  00404a53: e8 08 d6 03 00                                  call   0x442060
  00404a58: 83 c4 04                                        add    esp,0x4
  00404a5b: 33 d2                                           xor    edx,edx
  00404a5d: 89 53 f0                                        mov    DWORD PTR [ebx-0x10],edx
  00404a60: 89 53 f4                                        mov    DWORD PTR [ebx-0xc],edx
  00404a63: 89 53 f8                                        mov    DWORD PTR [ebx-0x8],edx
  00404a66: 8b 46 f0                                        mov    eax,DWORD PTR [esi-0x10]
  00404a69: 3b c2                                           cmp    eax,edx
  00404a6b: 75 05                                           jne    0x404a72
  00404a6d: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404a72: 89 43 f0                                        mov    DWORD PTR [ebx-0x10],eax
  00404a75: 8b 56 f4                                        mov    edx,DWORD PTR [esi-0xc]
  00404a78: 89 53 f4                                        mov    DWORD PTR [ebx-0xc],edx
  00404a7b: 8b 4e f8                                        mov    ecx,DWORD PTR [esi-0x8]
  00404a7e: 89 4b f8                                        mov    DWORD PTR [ebx-0x8],ecx
  00404a81: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00404a84: eb 40                                           jmp    0x404ac6
  00404a86: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00404a89: 6a 01                                           push   0x1
  00404a8b: 57                                              push   edi
  00404a8c: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00404a92: 84 c0                                           test   al,al
  00404a94: 74 30                                           je     0x404ac6
  00404a96: 8b 76 f0                                        mov    esi,DWORD PTR [esi-0x10]
  00404a99: 85 f6                                           test   esi,esi
  00404a9b: 75 06                                           jne    0x404aa3
  00404a9d: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00404aa3: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00404aa6: 8b cf                                           mov    ecx,edi
  00404aa8: 8b 7b f0                                        mov    edi,DWORD PTR [ebx-0x10]
  00404aab: 8b d1                                           mov    edx,ecx
  00404aad: c1 e9 02                                        shr    ecx,0x2
  00404ab0: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00404ab2: 8b ca                                           mov    ecx,edx
  00404ab4: 83 e1 03                                        and    ecx,0x3
  00404ab7: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00404ab9: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00404abc: 50                                              push   eax
  00404abd: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00404ac3: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  00404ac6: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  00404acc: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00404acf: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00404ad1: 3b c7                                           cmp    eax,edi
  00404ad3: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00404ad6: 73 05                                           jae    0x404add
  00404ad8: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00404adb: 8b f8                                           mov    edi,eax
  00404add: 8d 56 fc                                        lea    edx,[esi-0x4]
  00404ae0: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00404ae3: 3b ca                                           cmp    ecx,edx
  00404ae5: 75 1d                                           jne    0x404b04
  00404ae7: 50                                              push   eax
  00404ae8: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00404aeb: 57                                              push   edi
  00404aec: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404af2: 6a 00                                           push   0x0
  00404af4: 6a 00                                           push   0x0
  00404af6: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00404af9: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  00404aff: e9 a2 00 00 00                                  jmp    0x404ba6
  00404b04: 85 ff                                           test   edi,edi
  00404b06: 76 60                                           jbe    0x404b68
  00404b08: 3b 7e 04                                        cmp    edi,DWORD PTR [esi+0x4]
  00404b0b: 75 5b                                           jne    0x404b68
  00404b0d: 8b 06                                           mov    eax,DWORD PTR [esi]
  00404b0f: 85 c0                                           test   eax,eax
  00404b11: 75 05                                           jne    0x404b18
  00404b13: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404b18: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00404b1c: 73 4a                                           jae    0x404b68
  00404b1e: 8b 03                                           mov    eax,DWORD PTR [ebx]
  00404b20: 85 c0                                           test   eax,eax
  00404b22: 74 1c                                           je     0x404b40
  00404b24: 8d 48 ff                                        lea    ecx,[eax-0x1]
  00404b27: 8a 01                                           mov    al,BYTE PTR [ecx]
  00404b29: 84 c0                                           test   al,al
  00404b2b: 74 0a                                           je     0x404b37
  00404b2d: 3c ff                                           cmp    al,0xff
  00404b2f: 74 06                                           je     0x404b37
  00404b31: fe c8                                           dec    al
  00404b33: 88 01                                           mov    BYTE PTR [ecx],al
  00404b35: eb 09                                           jmp    0x404b40
  00404b37: 51                                              push   ecx
  00404b38: e8 23 d5 03 00                                  call   0x442060
  00404b3d: 83 c4 04                                        add    esp,0x4
  00404b40: 33 c9                                           xor    ecx,ecx
  00404b42: 89 0b                                           mov    DWORD PTR [ebx],ecx
  00404b44: 89 4b 04                                        mov    DWORD PTR [ebx+0x4],ecx
  00404b47: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00404b4a: 8b 06                                           mov    eax,DWORD PTR [esi]
  00404b4c: 3b c1                                           cmp    eax,ecx
  00404b4e: 75 05                                           jne    0x404b55
  00404b50: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00404b55: 89 03                                           mov    DWORD PTR [ebx],eax
  00404b57: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00404b5a: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00404b5d: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00404b60: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00404b63: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  00404b66: eb 3e                                           jmp    0x404ba6
  00404b68: 6a 01                                           push   0x1
  00404b6a: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00404b6d: 57                                              push   edi
  00404b6e: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00404b74: 84 c0                                           test   al,al
  00404b76: 74 2e                                           je     0x404ba6
  00404b78: 8b 36                                           mov    esi,DWORD PTR [esi]
  00404b7a: 85 f6                                           test   esi,esi
  00404b7c: 75 06                                           jne    0x404b84
  00404b7e: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00404b84: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00404b87: 8b cf                                           mov    ecx,edi
  00404b89: 8b 3b                                           mov    edi,DWORD PTR [ebx]
  00404b8b: 8b d1                                           mov    edx,ecx
  00404b8d: c1 e9 02                                        shr    ecx,0x2
  00404b90: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00404b92: 8b ca                                           mov    ecx,edx
  00404b94: 83 e1 03                                        and    ecx,0x3
  00404b97: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00404b99: 50                                              push   eax
  00404b9a: 8d 4b fc                                        lea    ecx,[ebx-0x4]
  00404b9d: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00404ba3: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  00404ba6: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00404ba9: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00404bac: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00404baf: 83 c2 20                                        add    edx,0x20
  00404bb2: 83 c1 20                                        add    ecx,0x20
  00404bb5: 83 c6 20                                        add    esi,0x20
  00404bb8: 83 c3 20                                        add    ebx,0x20
  00404bbb: 3b d0                                           cmp    edx,eax
  00404bbd: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  00404bc0: 89 55 08                                        mov    DWORD PTR [ebp+0x8],edx
  00404bc3: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  00404bc6: 0f 85 15 fe ff ff                               jne    0x4049e1
  00404bcc: 5f                                              pop    edi
  00404bcd: 5e                                              pop    esi
  00404bce: 8b c1                                           mov    eax,ecx
  00404bd0: 5b                                              pop    ebx
  00404bd1: 8b e5                                           mov    esp,ebp
  00404bd3: 5d                                              pop    ebp
  00404bd4: c3                                              ret
  00404bd5: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00404bd8: 8b e5                                           mov    esp,ebp
  00404bda: 5d                                              pop    ebp
  00404bdb: c3                                              ret
  004082d0: 55                                              push   ebp
  004082d1: 8b ec                                           mov    ebp,esp
  004082d3: 6a ff                                           push   0xffffffff
  004082d5: 68 49 35 4d 00                                  push   0x4d3549
  004082da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004082e0: 50                                              push   eax
  004082e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004082e8: 83 ec 34                                        sub    esp,0x34
  004082eb: 53                                              push   ebx
  004082ec: 56                                              push   esi
  004082ed: 57                                              push   edi
  004082ee: 8b f9                                           mov    edi,ecx
  004082f0: 81 7f 08 43 44 44 04                            cmp    DWORD PTR [edi+0x8],0x4444443
  004082f7: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004082fa: 72 57                                           jb     0x408353
  004082fc: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  004082ff: 6a 00                                           push   0x0
  00408301: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00408304: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  00408307: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0040830d: 83 c9 ff                                        or     ecx,0xffffffff
  00408310: 33 c0                                           xor    eax,eax
  00408312: bf a0 06 50 00                                  mov    edi,0x5006a0
  00408317: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00408319: f7 d1                                           not    ecx
  0040831b: 49                                              dec    ecx
  0040831c: 51                                              push   ecx
  0040831d: 68 a0 06 50 00                                  push   0x5006a0
  00408322: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00408325: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0040832b: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  0040832e: 51                                              push   ecx
  0040832f: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00408332: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00408339: e8 42 cd ff ff                                  call   0x405080
  0040833e: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00408343: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00408346: 52                                              push   edx
  00408347: c7 45 c0 f8 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5f8
  0040834e: e8 03 9a 0c 00                                  call   0x4d1d56
  00408353: 6a 4c                                           push   0x4c
  00408355: e8 96 9c 03 00                                  call   0x441ff0
  0040835a: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0040835d: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00408360: 8b d8                                           mov    ebx,eax
  00408362: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00408365: c6 43 48 00                                     mov    BYTE PTR [ebx+0x48],0x0
  00408369: c6 43 49 00                                     mov    BYTE PTR [ebx+0x49],0x0
  0040836d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00408370: 89 03                                           mov    DWORD PTR [ebx],eax
  00408372: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00408375: 52                                              push   edx
  00408376: 8d 43 0c                                        lea    eax,[ebx+0xc]
  00408379: 50                                              push   eax
  0040837a: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0040837d: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00408380: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00408387: e8 64 10 00 00                                  call   0x4093f0
  0040838c: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0040838f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00408392: 83 c4 0c                                        add    esp,0xc
  00408395: 42                                              inc    edx
  00408396: 3b f0                                           cmp    esi,eax
  00408398: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0040839b: 75 10                                           jne    0x4083ad
  0040839d: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  004083a0: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  004083a3: 89 19                                           mov    DWORD PTR [ecx],ebx
  004083a5: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004083a8: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  004083ab: eb 22                                           jmp    0x4083cf
  004083ad: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  004083b0: 84 c0                                           test   al,al
  004083b2: 74 0d                                           je     0x4083c1
  004083b4: 89 1e                                           mov    DWORD PTR [esi],ebx
  004083b6: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004083b9: 3b 30                                           cmp    esi,DWORD PTR [eax]
  004083bb: 75 12                                           jne    0x4083cf
  004083bd: 89 18                                           mov    DWORD PTR [eax],ebx
  004083bf: eb 0e                                           jmp    0x4083cf
  004083c1: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  004083c4: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004083c7: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  004083ca: 75 03                                           jne    0x4083cf
  004083cc: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  004083cf: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004083d2: 8a 51 48                                        mov    dl,BYTE PTR [ecx+0x48]
  004083d5: 84 d2                                           test   dl,dl
  004083d7: 8b c3                                           mov    eax,ebx
  004083d9: 0f 85 98 01 00 00                               jne    0x408577
  004083df: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004083e2: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004083e5: 8b 16                                           mov    edx,DWORD PTR [esi]
  004083e7: 3b ca                                           cmp    ecx,edx
  004083e9: 0f 85 c6 00 00 00                               jne    0x4084b5
  004083ef: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004083f2: 80 7a 48 00                                     cmp    BYTE PTR [edx+0x48],0x0
  004083f6: 75 1d                                           jne    0x408415
  004083f8: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  004083fc: c6 42 48 01                                     mov    BYTE PTR [edx+0x48],0x1
  00408400: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408403: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408406: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  0040840a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0040840d: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00408410: e9 54 01 00 00                                  jmp    0x408569
  00408415: 3b 41 08                                        cmp    eax,DWORD PTR [ecx+0x8]
  00408418: 75 3b                                           jne    0x408455
  0040841a: 8b c1                                           mov    eax,ecx
  0040841c: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0040841f: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00408421: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  00408424: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00408426: 80 7a 49 00                                     cmp    BYTE PTR [edx+0x49],0x0
  0040842a: 75 03                                           jne    0x40842f
  0040842c: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0040842f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408432: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00408435: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00408438: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0040843b: 75 05                                           jne    0x408442
  0040843d: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00408440: eb 0e                                           jmp    0x408450
  00408442: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408445: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00408447: 75 04                                           jne    0x40844d
  00408449: 89 0a                                           mov    DWORD PTR [edx],ecx
  0040844b: eb 03                                           jmp    0x408450
  0040844d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00408450: 89 01                                           mov    DWORD PTR [ecx],eax
  00408452: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00408455: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00408458: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  0040845c: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0040845f: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408462: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  00408466: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408469: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0040846c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0040846e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00408471: 89 31                                           mov    DWORD PTR [ecx],esi
  00408473: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00408476: 80 7e 49 00                                     cmp    BYTE PTR [esi+0x49],0x0
  0040847a: 75 03                                           jne    0x40847f
  0040847c: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0040847f: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00408482: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00408485: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00408488: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0040848b: 75 0b                                           jne    0x408498
  0040848d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00408490: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00408493: e9 ce 00 00 00                                  jmp    0x408566
  00408498: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0040849b: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  0040849e: 75 0b                                           jne    0x4084ab
  004084a0: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004084a3: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004084a6: e9 bb 00 00 00                                  jmp    0x408566
  004084ab: 89 16                                           mov    DWORD PTR [esi],edx
  004084ad: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004084b0: e9 b1 00 00 00                                  jmp    0x408566
  004084b5: 80 7a 48 00                                     cmp    BYTE PTR [edx+0x48],0x0
  004084b9: 75 1d                                           jne    0x4084d8
  004084bb: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  004084bf: c6 42 48 01                                     mov    BYTE PTR [edx+0x48],0x1
  004084c3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004084c6: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  004084c9: c6 42 48 00                                     mov    BYTE PTR [edx+0x48],0x0
  004084cd: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004084d0: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004084d3: e9 91 00 00 00                                  jmp    0x408569
  004084d8: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  004084da: 75 3d                                           jne    0x408519
  004084dc: 8b c1                                           mov    eax,ecx
  004084de: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004084e0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004084e3: 89 10                                           mov    DWORD PTR [eax],edx
  004084e5: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004084e8: 80 7a 49 00                                     cmp    BYTE PTR [edx+0x49],0x0
  004084ec: 75 03                                           jne    0x4084f1
  004084ee: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004084f1: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004084f4: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004084f7: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004084fa: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004084fd: 75 05                                           jne    0x408504
  004084ff: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00408502: eb 0f                                           jmp    0x408513
  00408504: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408507: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  0040850a: 75 05                                           jne    0x408511
  0040850c: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  0040850f: eb 02                                           jmp    0x408513
  00408511: 89 0a                                           mov    DWORD PTR [edx],ecx
  00408513: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00408516: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00408519: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0040851c: c6 41 48 01                                     mov    BYTE PTR [ecx+0x48],0x1
  00408520: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00408523: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408526: c6 41 48 00                                     mov    BYTE PTR [ecx+0x48],0x0
  0040852a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0040852d: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00408530: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00408533: 8b 32                                           mov    esi,DWORD PTR [edx]
  00408535: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00408538: 8b 32                                           mov    esi,DWORD PTR [edx]
  0040853a: 80 7e 49 00                                     cmp    BYTE PTR [esi+0x49],0x0
  0040853e: 75 03                                           jne    0x408543
  00408540: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00408543: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00408546: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00408549: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  0040854c: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0040854f: 75 05                                           jne    0x408556
  00408551: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00408554: eb 0e                                           jmp    0x408564
  00408556: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00408559: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0040855b: 75 04                                           jne    0x408561
  0040855d: 89 16                                           mov    DWORD PTR [esi],edx
  0040855f: eb 03                                           jmp    0x408564
  00408561: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00408564: 89 0a                                           mov    DWORD PTR [edx],ecx
  00408566: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00408569: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0040856c: 8a 51 48                                        mov    dl,BYTE PTR [ecx+0x48]
  0040856f: 84 d2                                           test   dl,dl
  00408571: 0f 84 68 fe ff ff                               je     0x4083df
  00408577: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0040857a: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0040857d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00408580: c6 40 48 01                                     mov    BYTE PTR [eax+0x48],0x1
  00408584: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00408587: 5f                                              pop    edi
  00408588: 89 18                                           mov    DWORD PTR [eax],ebx
  0040858a: 5e                                              pop    esi
  0040858b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00408592: 5b                                              pop    ebx
  00408593: 8b e5                                           mov    esp,ebp
  00408595: 5d                                              pop    ebp
  00408596: c2 10 00                                        ret    0x10
  00409250: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00409252: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  00409255: 84 d2                                           test   dl,dl
  00409257: 53                                              push   ebx
  00409258: 74 07                                           je     0x409261
  0040925a: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0040925d: 89 01                                           mov    DWORD PTR [ecx],eax
  0040925f: 5b                                              pop    ebx
  00409260: c3                                              ret
  00409261: 8b 10                                           mov    edx,DWORD PTR [eax]
  00409263: 8a 5a 49                                        mov    bl,BYTE PTR [edx+0x49]
  00409266: 84 db                                           test   bl,bl
  00409268: 75 1a                                           jne    0x409284
  0040926a: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  0040926d: 8a 58 49                                        mov    bl,BYTE PTR [eax+0x49]
  00409270: 84 db                                           test   bl,bl
  00409272: 75 0c                                           jne    0x409280
  00409274: 8b d0                                           mov    edx,eax
  00409276: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00409279: 8a 58 49                                        mov    bl,BYTE PTR [eax+0x49]
  0040927c: 84 db                                           test   bl,bl
  0040927e: 74 f4                                           je     0x409274
  00409280: 89 11                                           mov    DWORD PTR [ecx],edx
  00409282: 5b                                              pop    ebx
  00409283: c3                                              ret
  00409284: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00409287: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  0040928a: 84 d2                                           test   dl,dl
  0040928c: 75 1b                                           jne    0x4092a9
  0040928e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00409290: 3b 10                                           cmp    edx,DWORD PTR [eax]
  00409292: 75 0c                                           jne    0x4092a0
  00409294: 89 01                                           mov    DWORD PTR [ecx],eax
  00409296: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00409299: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  0040929c: 84 d2                                           test   dl,dl
  0040929e: 74 ee                                           je     0x40928e
  004092a0: 8a 50 49                                        mov    dl,BYTE PTR [eax+0x49]
  004092a3: 84 d2                                           test   dl,dl
  004092a5: 75 02                                           jne    0x4092a9
  004092a7: 89 01                                           mov    DWORD PTR [ecx],eax
  004092a9: 5b                                              pop    ebx
  004092aa: c3                                              ret
  00429d70: 55                                              push   ebp
  00429d71: 8b ec                                           mov    ebp,esp
  00429d73: 6a ff                                           push   0xffffffff
  00429d75: 68 19 4b 4d 00                                  push   0x4d4b19
  00429d7a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00429d80: 50                                              push   eax
  00429d81: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00429d88: 83 ec 40                                        sub    esp,0x40
  00429d8b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00429d8e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00429d91: 53                                              push   ebx
  00429d92: 56                                              push   esi
  00429d93: 8b f1                                           mov    esi,ecx
  00429d95: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00429d97: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429d9a: 85 c0                                           test   eax,eax
  00429d9c: 57                                              push   edi
  00429d9d: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00429da0: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  00429da3: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  00429da6: 75 04                                           jne    0x429dac
  00429da8: 33 db                                           xor    ebx,ebx
  00429daa: eb 08                                           jmp    0x429db4
  00429dac: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  00429daf: 2b d8                                           sub    ebx,eax
  00429db1: c1 fb 03                                        sar    ebx,0x3
  00429db4: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00429db7: 85 ff                                           test   edi,edi
  00429db9: 0f 84 ea 02 00 00                               je     0x42a0a9
  00429dbf: 85 c0                                           test   eax,eax
  00429dc1: 75 04                                           jne    0x429dc7
  00429dc3: 33 c9                                           xor    ecx,ecx
  00429dc5: eb 08                                           jmp    0x429dcf
  00429dc7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00429dca: 2b c8                                           sub    ecx,eax
  00429dcc: c1 f9 03                                        sar    ecx,0x3
  00429dcf: ba ff ff ff 1f                                  mov    edx,0x1fffffff
  00429dd4: 2b d1                                           sub    edx,ecx
  00429dd6: 3b d7                                           cmp    edx,edi
  00429dd8: 73 2f                                           jae    0x429e09
  00429dda: 68 80 05 50 00                                  push   0x500580
  00429ddf: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00429de2: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00429de8: 8d 45 d0                                        lea    eax,[ebp-0x30]
  00429deb: 50                                              push   eax
  00429dec: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  00429def: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00429df6: e8 25 b6 fd ff                                  call   0x405420
  00429dfb: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00429e00: 8d 4d b4                                        lea    ecx,[ebp-0x4c]
  00429e03: 51                                              push   ecx
  00429e04: e8 4d 7f 0a 00                                  call   0x4d1d56
  00429e09: 85 c0                                           test   eax,eax
  00429e0b: 75 04                                           jne    0x429e11
  00429e0d: 33 c9                                           xor    ecx,ecx
  00429e0f: eb 08                                           jmp    0x429e19
  00429e11: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00429e14: 2b c8                                           sub    ecx,eax
  00429e16: c1 f9 03                                        sar    ecx,0x3
  00429e19: 03 cf                                           add    ecx,edi
  00429e1b: 3b d9                                           cmp    ebx,ecx
  00429e1d: 0f 83 3e 01 00 00                               jae    0x429f61
  00429e23: 8b cb                                           mov    ecx,ebx
  00429e25: d1 e9                                           shr    ecx,1
  00429e27: ba ff ff ff 1f                                  mov    edx,0x1fffffff
  00429e2c: 2b d1                                           sub    edx,ecx
  00429e2e: 3b d3                                           cmp    edx,ebx
  00429e30: 73 04                                           jae    0x429e36
  00429e32: 33 db                                           xor    ebx,ebx
  00429e34: eb 02                                           jmp    0x429e38
  00429e36: 03 d9                                           add    ebx,ecx
  00429e38: 85 c0                                           test   eax,eax
  00429e3a: 75 04                                           jne    0x429e40
  00429e3c: 33 c9                                           xor    ecx,ecx
  00429e3e: eb 08                                           jmp    0x429e48
  00429e40: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00429e43: 2b c8                                           sub    ecx,eax
  00429e45: c1 f9 03                                        sar    ecx,0x3
  00429e48: 03 cf                                           add    ecx,edi
  00429e4a: 3b d9                                           cmp    ebx,ecx
  00429e4c: 73 13                                           jae    0x429e61
  00429e4e: 85 c0                                           test   eax,eax
  00429e50: 75 04                                           jne    0x429e56
  00429e52: 33 c9                                           xor    ecx,ecx
  00429e54: eb 08                                           jmp    0x429e5e
  00429e56: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00429e59: 2b c8                                           sub    ecx,eax
  00429e5b: c1 f9 03                                        sar    ecx,0x3
  00429e5e: 8d 1c 39                                        lea    ebx,[ecx+edi*1]
  00429e61: 8d 04 dd 00 00 00 00                            lea    eax,[ebx*8+0x0]
  00429e68: 50                                              push   eax
  00429e69: e8 82 81 01 00                                  call   0x441ff0
  00429e6e: 83 c4 04                                        add    esp,0x4
  00429e71: 50                                              push   eax
  00429e72: 51                                              push   ecx
  00429e73: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00429e76: 8d 55 08                                        lea    edx,[ebp+0x8]
  00429e79: 8b cc                                           mov    ecx,esp
  00429e7b: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00429e7e: 52                                              push   edx
  00429e7f: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  00429e82: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00429e89: e8 e2 f0 ff ff                                  call   0x428f70
  00429e8e: 51                                              push   ecx
  00429e8f: 8b c4                                           mov    eax,esp
  00429e91: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00429e94: 50                                              push   eax
  00429e95: 8b ce                                           mov    ecx,esi
  00429e97: e8 24 02 00 00                                  call   0x42a0c0
  00429e9c: 8b ce                                           mov    ecx,esi
  00429e9e: e8 2d 0a 00 00                                  call   0x42a8d0
  00429ea3: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00429ea6: 51                                              push   ecx
  00429ea7: 57                                              push   edi
  00429ea8: 50                                              push   eax
  00429ea9: 8b ce                                           mov    ecx,esi
  00429eab: e8 10 05 00 00                                  call   0x42a3c0
  00429eb0: 50                                              push   eax
  00429eb1: 51                                              push   ecx
  00429eb2: 8b d4                                           mov    edx,esp
  00429eb4: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00429eb7: 52                                              push   edx
  00429eb8: 8b ce                                           mov    ecx,esi
  00429eba: e8 71 e2 ff ff                                  call   0x428130
  00429ebf: 51                                              push   ecx
  00429ec0: 8d 45 08                                        lea    eax,[ebp+0x8]
  00429ec3: 8b cc                                           mov    ecx,esp
  00429ec5: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00429ec8: 50                                              push   eax
  00429ec9: e8 a2 f0 ff ff                                  call   0x428f70
  00429ece: 8b ce                                           mov    ecx,esi
  00429ed0: e8 fb 09 00 00                                  call   0x42a8d0
  00429ed5: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00429ed8: 85 c0                                           test   eax,eax
  00429eda: 74 1a                                           je     0x429ef6
  00429edc: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00429edf: 3b c1                                           cmp    eax,ecx
  00429ee1: 74 07                                           je     0x429eea
  00429ee3: 83 c0 08                                        add    eax,0x8
  00429ee6: 3b c1                                           cmp    eax,ecx
  00429ee8: 75 f9                                           jne    0x429ee3
  00429eea: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00429eed: 51                                              push   ecx
  00429eee: e8 6d 81 01 00                                  call   0x442060
  00429ef3: 83 c4 04                                        add    esp,0x4
  00429ef6: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00429ef9: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00429efc: 85 c9                                           test   ecx,ecx
  00429efe: 8d 04 da                                        lea    eax,[edx+ebx*8]
  00429f01: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  00429f04: 75 20                                           jne    0x429f26
  00429f06: 33 c0                                           xor    eax,eax
  00429f08: 8b c7                                           mov    eax,edi
  00429f0a: 8d 0c c2                                        lea    ecx,[edx+eax*8]
  00429f0d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00429f10: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00429f13: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00429f16: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00429f1d: 5f                                              pop    edi
  00429f1e: 5e                                              pop    esi
  00429f1f: 5b                                              pop    ebx
  00429f20: 8b e5                                           mov    esp,ebp
  00429f22: 5d                                              pop    ebp
  00429f23: c2 0c 00                                        ret    0xc
  00429f26: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00429f29: 2b c1                                           sub    eax,ecx
  00429f2b: c1 f8 03                                        sar    eax,0x3
  00429f2e: 03 c7                                           add    eax,edi
  00429f30: 8d 0c c2                                        lea    ecx,[edx+eax*8]
  00429f33: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00429f36: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00429f39: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00429f3c: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00429f43: 5f                                              pop    edi
  00429f44: 5e                                              pop    esi
  00429f45: 5b                                              pop    ebx
  00429f46: 8b e5                                           mov    esp,ebp
  00429f48: 5d                                              pop    ebp
  00429f49: c2 0c 00                                        ret    0xc
  00429f61: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00429f64: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00429f67: 8b d0                                           mov    edx,eax
  00429f69: 2b d1                                           sub    edx,ecx
  00429f6b: c1 fa 03                                        sar    edx,0x3
  00429f6e: 3b d7                                           cmp    edx,edi
  00429f70: 0f 83 a5 00 00 00                               jae    0x42a01b
  00429f76: 8d 1c fd 00 00 00 00                            lea    ebx,[edi*8+0x0]
  00429f7d: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  00429f80: 50                                              push   eax
  00429f81: 51                                              push   ecx
  00429f82: 8b cc                                           mov    ecx,esp
  00429f84: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429f87: 51                                              push   ecx
  00429f88: 8b ce                                           mov    ecx,esi
  00429f8a: e8 a1 e1 ff ff                                  call   0x428130
  00429f8f: 51                                              push   ecx
  00429f90: 8d 55 08                                        lea    edx,[ebp+0x8]
  00429f93: 8b cc                                           mov    ecx,esp
  00429f95: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429f98: 52                                              push   edx
  00429f99: e8 d2 ef ff ff                                  call   0x428f70
  00429f9e: 8b ce                                           mov    ecx,esi
  00429fa0: e8 2b 09 00 00                                  call   0x42a8d0
  00429fa5: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00429fa8: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00429fab: 51                                              push   ecx
  00429fac: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00429faf: 8b d0                                           mov    edx,eax
  00429fb1: 2b d1                                           sub    edx,ecx
  00429fb3: c1 fa 03                                        sar    edx,0x3
  00429fb6: 8b cf                                           mov    ecx,edi
  00429fb8: 2b ca                                           sub    ecx,edx
  00429fba: 51                                              push   ecx
  00429fbb: 50                                              push   eax
  00429fbc: 8b ce                                           mov    ecx,esi
  00429fbe: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00429fc5: e8 f6 03 00 00                                  call   0x42a3c0
  00429fca: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00429fcd: 03 cb                                           add    ecx,ebx
  00429fcf: 8d 55 e0                                        lea    edx,[ebp-0x20]
  00429fd2: 52                                              push   edx
  00429fd3: 51                                              push   ecx
  00429fd4: 8b c4                                           mov    eax,esp
  00429fd6: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00429fd9: 57                                              push   edi
  00429fda: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00429fdd: 50                                              push   eax
  00429fde: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00429fe1: 51                                              push   ecx
  00429fe2: 8b ce                                           mov    ecx,esi
  00429fe4: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00429feb: e8 40 e1 ff ff                                  call   0x428130
  00429ff0: 8b c8                                           mov    ecx,eax
  00429ff2: e8 09 04 00 00                                  call   0x42a400
  00429ff7: 51                                              push   ecx
  00429ff8: 8d 55 08                                        lea    edx,[ebp+0x8]
  00429ffb: 8b cc                                           mov    ecx,esp
  00429ffd: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0042a000: 52                                              push   edx
  0042a001: e9 96 00 00 00                                  jmp    0x42a09c
  0042a01b: 50                                              push   eax
  0042a01c: 51                                              push   ecx
  0042a01d: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0042a020: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0042a023: 8b cc                                           mov    ecx,esp
  0042a025: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0042a028: 50                                              push   eax
  0042a029: e8 42 ef ff ff                                  call   0x428f70
  0042a02e: 51                                              push   ecx
  0042a02f: 8b cc                                           mov    ecx,esp
  0042a031: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0042a034: 57                                              push   edi
  0042a035: 51                                              push   ecx
  0042a036: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0042a039: e8 c2 03 00 00                                  call   0x42a400
  0042a03e: 8b ce                                           mov    ecx,esi
  0042a040: e8 8b 08 00 00                                  call   0x42a8d0
  0042a045: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0042a048: 51                                              push   ecx
  0042a049: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0042a04c: 8b c4                                           mov    eax,esp
  0042a04e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0042a051: 51                                              push   ecx
  0042a052: 89 10                                           mov    DWORD PTR [eax],edx
  0042a054: 8b c4                                           mov    eax,esp
  0042a056: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0042a059: 57                                              push   edi
  0042a05a: 50                                              push   eax
  0042a05b: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0042a05e: e8 9d 03 00 00                                  call   0x42a400
  0042a063: 51                                              push   ecx
  0042a064: 8d 55 08                                        lea    edx,[ebp+0x8]
  0042a067: 8b cc                                           mov    ecx,esp
  0042a069: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0042a06c: 52                                              push   edx
  0042a06d: e8 fe ee ff ff                                  call   0x428f70
  0042a072: 8d 45 e8                                        lea    eax,[ebp-0x18]
  0042a075: 50                                              push   eax
  0042a076: e8 c5 08 00 00                                  call   0x42a940
  0042a07b: 83 c4 10                                        add    esp,0x10
  0042a07e: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0042a081: 51                                              push   ecx
  0042a082: 51                                              push   ecx
  0042a083: 8b d4                                           mov    edx,esp
  0042a085: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0042a088: 57                                              push   edi
  0042a089: 52                                              push   edx
  0042a08a: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0042a08d: e8 3e 00 00 00                                  call   0x42a0d0
  0042a092: 51                                              push   ecx
  0042a093: 8d 45 08                                        lea    eax,[ebp+0x8]
  0042a096: 8b cc                                           mov    ecx,esp
  0042a098: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0042a09b: 50                                              push   eax
  0042a09c: e8 cf ee ff ff                                  call   0x428f70
  0042a0a1: e8 6a 08 00 00                                  call   0x42a910
  0042a0a6: 83 c4 0c                                        add    esp,0xc
  0042a0a9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042a0ac: 5f                                              pop    edi
  0042a0ad: 5e                                              pop    esi
  0042a0ae: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042a0b5: 5b                                              pop    ebx
  0042a0b6: 8b e5                                           mov    esp,ebp
  0042a0b8: 5d                                              pop    ebp
  0042a0b9: c2 0c 00                                        ret    0xc
  0042a980: 55                                              push   ebp
  0042a981: 8b ec                                           mov    ebp,esp
  0042a983: 6a ff                                           push   0xffffffff
  0042a985: 68 fe 4b 4d 00                                  push   0x4d4bfe
  0042a98a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042a990: 50                                              push   eax
  0042a991: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042a998: 51                                              push   ecx
  0042a999: 53                                              push   ebx
  0042a99a: 56                                              push   esi
  0042a99b: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0042a99e: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0042a9a1: 33 db                                           xor    ebx,ebx
  0042a9a3: 3b f3                                           cmp    esi,ebx
  0042a9a5: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0042a9a8: 0f 84 a3 00 00 00                               je     0x42aa51
  0042a9ae: 57                                              push   edi
  0042a9af: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0042a9b2: 8a 07                                           mov    al,BYTE PTR [edi]
  0042a9b4: 88 06                                           mov    BYTE PTR [esi],al
  0042a9b6: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0042a9b9: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042a9bc: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0042a9bf: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042a9c4: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042a9c6: 51                                              push   ecx
  0042a9c7: 53                                              push   ebx
  0042a9c8: 57                                              push   edi
  0042a9c9: 8b ce                                           mov    ecx,esi
  0042a9cb: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042a9d1: 8a 47 10                                        mov    al,BYTE PTR [edi+0x10]
  0042a9d4: 83 c6 10                                        add    esi,0x10
  0042a9d7: 83 c7 10                                        add    edi,0x10
  0042a9da: 88 06                                           mov    BYTE PTR [esi],al
  0042a9dc: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0042a9df: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042a9e2: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  0042a9e5: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0042a9eb: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042a9ed: 50                                              push   eax
  0042a9ee: 53                                              push   ebx
  0042a9ef: 57                                              push   edi
  0042a9f0: 8b ce                                           mov    ecx,esi
  0042a9f2: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0042a9f6: 89 75 0c                                        mov    DWORD PTR [ebp+0xc],esi
  0042a9f9: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042a9ff: 8a 4f 10                                        mov    cl,BYTE PTR [edi+0x10]
  0042aa02: 8a 47 11                                        mov    al,BYTE PTR [edi+0x11]
  0042aa05: 8d 5e 10                                        lea    ebx,[esi+0x10]
  0042aa08: 88 0b                                           mov    BYTE PTR [ebx],cl
  0042aa0a: 8b cb                                           mov    ecx,ebx
  0042aa0c: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0042aa10: 88 43 01                                        mov    BYTE PTR [ebx+0x1],al
  0042aa13: e8 d8 f6 ff ff                                  call   0x42a0f0
  0042aa18: 8d 47 10                                        lea    eax,[edi+0x10]
  0042aa1b: 50                                              push   eax
  0042aa1c: 8b cb                                           mov    ecx,ebx
  0042aa1e: e8 5d e3 ff ff                                  call   0x428d80
  0042aa23: 8a 47 1c                                        mov    al,BYTE PTR [edi+0x1c]
  0042aa26: 83 c7 1c                                        add    edi,0x1c
  0042aa29: 83 c6 1c                                        add    esi,0x1c
  0042aa2c: 6a 00                                           push   0x0
  0042aa2e: 8b ce                                           mov    ecx,esi
  0042aa30: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0042aa34: 88 06                                           mov    BYTE PTR [esi],al
  0042aa36: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042aa3c: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0042aa42: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042aa44: 52                                              push   edx
  0042aa45: 6a 00                                           push   0x0
  0042aa47: 57                                              push   edi
  0042aa48: 8b ce                                           mov    ecx,esi
  0042aa4a: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042aa50: 5f                                              pop    edi
  0042aa51: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042aa54: 5e                                              pop    esi
  0042aa55: 5b                                              pop    ebx
  0042aa56: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042aa5d: 8b e5                                           mov    esp,ebp
  0042aa5f: 5d                                              pop    ebp
  0042aa60: c3                                              ret
  0042e0a0: 55                                              push   ebp
  0042e0a1: 8b ec                                           mov    ebp,esp
  0042e0a3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042e0a6: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0042e0a9: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042e0ac: 3b 51 04                                        cmp    edx,DWORD PTR [ecx+0x4]
  0042e0af: 73 07                                           jae    0x42e0b8
  0042e0b1: b8 01 00 00 00                                  mov    eax,0x1
  0042e0b6: 5d                                              pop    ebp
  0042e0b7: c3                                              ret
  0042e0b8: 66 8b 40 02                                     mov    ax,WORD PTR [eax+0x2]
  0042e0bc: 66 3b 41 02                                     cmp    ax,WORD PTR [ecx+0x2]
  0042e0c0: 1b c0                                           sbb    eax,eax
  0042e0c2: f7 d8                                           neg    eax
  0042e0c4: 5d                                              pop    ebp
  0042e0c5: c3                                              ret
  004315a0: 55                                              push   ebp
  004315a1: 8b ec                                           mov    ebp,esp
  004315a3: 6a ff                                           push   0xffffffff
  004315a5: 68 29 51 4d 00                                  push   0x4d5129
  004315aa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004315b0: 50                                              push   eax
  004315b1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004315b8: 83 ec 34                                        sub    esp,0x34
  004315bb: 53                                              push   ebx
  004315bc: 56                                              push   esi
  004315bd: 57                                              push   edi
  004315be: 8b f9                                           mov    edi,ecx
  004315c0: 81 7f 08 cb cc cc 0c                            cmp    DWORD PTR [edi+0x8],0xccccccb
  004315c7: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  004315ca: 72 57                                           jb     0x431623
  004315cc: 8a 45 0f                                        mov    al,BYTE PTR [ebp+0xf]
  004315cf: 6a 00                                           push   0x0
  004315d1: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004315d4: 88 45 dc                                        mov    BYTE PTR [ebp-0x24],al
  004315d7: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004315dd: 83 c9 ff                                        or     ecx,0xffffffff
  004315e0: 33 c0                                           xor    eax,eax
  004315e2: bf a0 06 50 00                                  mov    edi,0x5006a0
  004315e7: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004315e9: f7 d1                                           not    ecx
  004315eb: 49                                              dec    ecx
  004315ec: 51                                              push   ecx
  004315ed: 68 a0 06 50 00                                  push   0x5006a0
  004315f2: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004315f5: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  004315fb: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  004315fe: 51                                              push   ecx
  004315ff: 8d 4d c0                                        lea    ecx,[ebp-0x40]
  00431602: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00431609: e8 72 3a fd ff                                  call   0x405080
  0043160e: 68 e8 0a 4e 00                                  push   0x4e0ae8
  00431613: 8d 55 c0                                        lea    edx,[ebp-0x40]
  00431616: 52                                              push   edx
  00431617: c7 45 c0 f8 e5 4d 00                            mov    DWORD PTR [ebp-0x40],0x4de5f8
  0043161e: e8 33 07 0a 00                                  call   0x4d1d56
  00431623: 6a 24                                           push   0x24
  00431625: e8 c6 09 01 00                                  call   0x441ff0
  0043162a: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0043162d: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  00431630: 8b d8                                           mov    ebx,eax
  00431632: 89 73 04                                        mov    DWORD PTR [ebx+0x4],esi
  00431635: c6 43 20 00                                     mov    BYTE PTR [ebx+0x20],0x0
  00431639: c6 43 21 00                                     mov    BYTE PTR [ebx+0x21],0x0
  0043163d: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00431640: 89 03                                           mov    DWORD PTR [ebx],eax
  00431642: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00431645: 52                                              push   edx
  00431646: 8d 43 0c                                        lea    eax,[ebx+0xc]
  00431649: 50                                              push   eax
  0043164a: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0043164d: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  00431650: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00431657: e8 b4 0b 00 00                                  call   0x432210
  0043165c: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0043165f: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00431662: 83 c4 0c                                        add    esp,0xc
  00431665: 42                                              inc    edx
  00431666: 3b f0                                           cmp    esi,eax
  00431668: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0043166b: 75 10                                           jne    0x43167d
  0043166d: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  00431670: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  00431673: 89 19                                           mov    DWORD PTR [ecx],ebx
  00431675: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00431678: 89 5a 08                                        mov    DWORD PTR [edx+0x8],ebx
  0043167b: eb 22                                           jmp    0x43169f
  0043167d: 8a 45 0c                                        mov    al,BYTE PTR [ebp+0xc]
  00431680: 84 c0                                           test   al,al
  00431682: 74 0d                                           je     0x431691
  00431684: 89 1e                                           mov    DWORD PTR [esi],ebx
  00431686: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00431689: 3b 30                                           cmp    esi,DWORD PTR [eax]
  0043168b: 75 12                                           jne    0x43169f
  0043168d: 89 18                                           mov    DWORD PTR [eax],ebx
  0043168f: eb 0e                                           jmp    0x43169f
  00431691: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  00431694: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00431697: 3b 70 08                                        cmp    esi,DWORD PTR [eax+0x8]
  0043169a: 75 03                                           jne    0x43169f
  0043169c: 89 58 08                                        mov    DWORD PTR [eax+0x8],ebx
  0043169f: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  004316a2: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  004316a5: 84 d2                                           test   dl,dl
  004316a7: 8b c3                                           mov    eax,ebx
  004316a9: 0f 85 98 01 00 00                               jne    0x431847
  004316af: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004316b2: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  004316b5: 8b 16                                           mov    edx,DWORD PTR [esi]
  004316b7: 3b ca                                           cmp    ecx,edx
  004316b9: 0f 85 c6 00 00 00                               jne    0x431785
  004316bf: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004316c2: 80 7a 20 00                                     cmp    BYTE PTR [edx+0x20],0x0
  004316c6: 75 1d                                           jne    0x4316e5
  004316c8: c6 41 20 01                                     mov    BYTE PTR [ecx+0x20],0x1
  004316cc: c6 42 20 01                                     mov    BYTE PTR [edx+0x20],0x1
  004316d0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004316d3: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004316d6: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  004316da: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004316dd: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  004316e0: e9 54 01 00 00                                  jmp    0x431839
  004316e5: 3b 41 08                                        cmp    eax,DWORD PTR [ecx+0x8]
  004316e8: 75 3b                                           jne    0x431725
  004316ea: 8b c1                                           mov    eax,ecx
  004316ec: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004316ef: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004316f1: 89 50 08                                        mov    DWORD PTR [eax+0x8],edx
  004316f4: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004316f6: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004316fa: 75 03                                           jne    0x4316ff
  004316fc: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004316ff: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00431702: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00431705: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00431708: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  0043170b: 75 05                                           jne    0x431712
  0043170d: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  00431710: eb 0e                                           jmp    0x431720
  00431712: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00431715: 3b 02                                           cmp    eax,DWORD PTR [edx]
  00431717: 75 04                                           jne    0x43171d
  00431719: 89 0a                                           mov    DWORD PTR [edx],ecx
  0043171b: eb 03                                           jmp    0x431720
  0043171d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00431720: 89 01                                           mov    DWORD PTR [ecx],eax
  00431722: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  00431725: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00431728: c6 41 20 01                                     mov    BYTE PTR [ecx+0x20],0x1
  0043172c: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0043172f: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00431732: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  00431736: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00431739: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  0043173c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0043173e: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00431741: 89 31                                           mov    DWORD PTR [ecx],esi
  00431743: 8b 72 08                                        mov    esi,DWORD PTR [edx+0x8]
  00431746: 80 7e 21 00                                     cmp    BYTE PTR [esi+0x21],0x0
  0043174a: 75 03                                           jne    0x43174f
  0043174c: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0043174f: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00431752: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00431755: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  00431758: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0043175b: 75 0b                                           jne    0x431768
  0043175d: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00431760: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00431763: e9 ce 00 00 00                                  jmp    0x431836
  00431768: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0043176b: 3b 4e 08                                        cmp    ecx,DWORD PTR [esi+0x8]
  0043176e: 75 0b                                           jne    0x43177b
  00431770: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00431773: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00431776: e9 bb 00 00 00                                  jmp    0x431836
  0043177b: 89 16                                           mov    DWORD PTR [esi],edx
  0043177d: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  00431780: e9 b1 00 00 00                                  jmp    0x431836
  00431785: 80 7a 20 00                                     cmp    BYTE PTR [edx+0x20],0x0
  00431789: 75 1d                                           jne    0x4317a8
  0043178b: c6 41 20 01                                     mov    BYTE PTR [ecx+0x20],0x1
  0043178f: c6 42 20 01                                     mov    BYTE PTR [edx+0x20],0x1
  00431793: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  00431796: 8b 51 04                                        mov    edx,DWORD PTR [ecx+0x4]
  00431799: c6 42 20 00                                     mov    BYTE PTR [edx+0x20],0x0
  0043179d: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004317a0: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004317a3: e9 91 00 00 00                                  jmp    0x431839
  004317a8: 3b 01                                           cmp    eax,DWORD PTR [ecx]
  004317aa: 75 3d                                           jne    0x4317e9
  004317ac: 8b c1                                           mov    eax,ecx
  004317ae: 8b 08                                           mov    ecx,DWORD PTR [eax]
  004317b0: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004317b3: 89 10                                           mov    DWORD PTR [eax],edx
  004317b5: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  004317b8: 80 7a 21 00                                     cmp    BYTE PTR [edx+0x21],0x0
  004317bc: 75 03                                           jne    0x4317c1
  004317be: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  004317c1: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004317c4: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  004317c7: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004317ca: 3b 42 04                                        cmp    eax,DWORD PTR [edx+0x4]
  004317cd: 75 05                                           jne    0x4317d4
  004317cf: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  004317d2: eb 0f                                           jmp    0x4317e3
  004317d4: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004317d7: 3b 42 08                                        cmp    eax,DWORD PTR [edx+0x8]
  004317da: 75 05                                           jne    0x4317e1
  004317dc: 89 4a 08                                        mov    DWORD PTR [edx+0x8],ecx
  004317df: eb 02                                           jmp    0x4317e3
  004317e1: 89 0a                                           mov    DWORD PTR [edx],ecx
  004317e3: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  004317e6: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004317e9: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  004317ec: c6 41 20 01                                     mov    BYTE PTR [ecx+0x20],0x1
  004317f0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004317f3: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004317f6: c6 41 20 00                                     mov    BYTE PTR [ecx+0x20],0x0
  004317fa: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  004317fd: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  00431800: 8b 51 08                                        mov    edx,DWORD PTR [ecx+0x8]
  00431803: 8b 32                                           mov    esi,DWORD PTR [edx]
  00431805: 89 71 08                                        mov    DWORD PTR [ecx+0x8],esi
  00431808: 8b 32                                           mov    esi,DWORD PTR [edx]
  0043180a: 80 7e 21 00                                     cmp    BYTE PTR [esi+0x21],0x0
  0043180e: 75 03                                           jne    0x431813
  00431810: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  00431813: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00431816: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  00431819: 8b 77 04                                        mov    esi,DWORD PTR [edi+0x4]
  0043181c: 3b 4e 04                                        cmp    ecx,DWORD PTR [esi+0x4]
  0043181f: 75 05                                           jne    0x431826
  00431821: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00431824: eb 0e                                           jmp    0x431834
  00431826: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  00431829: 3b 0e                                           cmp    ecx,DWORD PTR [esi]
  0043182b: 75 04                                           jne    0x431831
  0043182d: 89 16                                           mov    DWORD PTR [esi],edx
  0043182f: eb 03                                           jmp    0x431834
  00431831: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  00431834: 89 0a                                           mov    DWORD PTR [edx],ecx
  00431836: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  00431839: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0043183c: 8a 51 20                                        mov    dl,BYTE PTR [ecx+0x20]
  0043183f: 84 d2                                           test   dl,dl
  00431841: 0f 84 68 fe ff ff                               je     0x4316af
  00431847: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0043184a: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0043184d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00431850: c6 40 20 01                                     mov    BYTE PTR [eax+0x20],0x1
  00431854: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00431857: 5f                                              pop    edi
  00431858: 89 18                                           mov    DWORD PTR [eax],ebx
  0043185a: 5e                                              pop    esi
  0043185b: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00431862: 5b                                              pop    ebx
  00431863: 8b e5                                           mov    esp,ebp
  00431865: 5d                                              pop    ebp
  00431866: c2 10 00                                        ret    0x10
  00431ca0: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00431ca2: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00431ca5: 84 d2                                           test   dl,dl
  00431ca7: 53                                              push   ebx
  00431ca8: 74 07                                           je     0x431cb1
  00431caa: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00431cad: 89 01                                           mov    DWORD PTR [ecx],eax
  00431caf: 5b                                              pop    ebx
  00431cb0: c3                                              ret
  00431cb1: 8b 10                                           mov    edx,DWORD PTR [eax]
  00431cb3: 8a 5a 21                                        mov    bl,BYTE PTR [edx+0x21]
  00431cb6: 84 db                                           test   bl,bl
  00431cb8: 75 1a                                           jne    0x431cd4
  00431cba: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00431cbd: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  00431cc0: 84 db                                           test   bl,bl
  00431cc2: 75 0c                                           jne    0x431cd0
  00431cc4: 8b d0                                           mov    edx,eax
  00431cc6: 8b 42 08                                        mov    eax,DWORD PTR [edx+0x8]
  00431cc9: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  00431ccc: 84 db                                           test   bl,bl
  00431cce: 74 f4                                           je     0x431cc4
  00431cd0: 89 11                                           mov    DWORD PTR [ecx],edx
  00431cd2: 5b                                              pop    ebx
  00431cd3: c3                                              ret
  00431cd4: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00431cd7: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00431cda: 84 d2                                           test   dl,dl
  00431cdc: 75 1b                                           jne    0x431cf9
  00431cde: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00431ce0: 3b 10                                           cmp    edx,DWORD PTR [eax]
  00431ce2: 75 0c                                           jne    0x431cf0
  00431ce4: 89 01                                           mov    DWORD PTR [ecx],eax
  00431ce6: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00431ce9: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00431cec: 84 d2                                           test   dl,dl
  00431cee: 74 ee                                           je     0x431cde
  00431cf0: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00431cf3: 84 d2                                           test   dl,dl
  00431cf5: 75 02                                           jne    0x431cf9
  00431cf7: 89 01                                           mov    DWORD PTR [ecx],eax
  00431cf9: 5b                                              pop    ebx
  00431cfa: c3                                              ret
  004d06b0: 55                                              push   ebp
  004d06b1: 8b ec                                           mov    ebp,esp
  004d06b3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004d06b6: 56                                              push   esi
  004d06b7: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004d06ba: 57                                              push   edi
  004d06bb: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  004d06be: 57                                              push   edi
  004d06bf: 56                                              push   esi
  004d06c0: 50                                              push   eax
  004d06c1: ff 15 88 e0 4d 00                               call   DWORD PTR ds:0x4de088
  004d06c7: 3b c7                                           cmp    eax,edi
  004d06c9: 75 45                                           jne    0x4d0710
  004d06cb: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004d06ce: 8b d1                                           mov    edx,ecx
  004d06d0: 81 e2 ff 0f 00 00                               and    edx,0xfff
  004d06d6: 81 fa ff 0f 00 00                               cmp    edx,0xfff
  004d06dc: 75 04                                           jne    0x4d06e2
  004d06de: 41                                              inc    ecx
  004d06df: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  004d06e2: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  004d06e5: 8b d1                                           mov    edx,ecx
  004d06e7: 81 e2 ff 0f 00 00                               and    edx,0xfff
  004d06ed: 81 fa ff 0f 00 00                               cmp    edx,0xfff
  004d06f3: 75 04                                           jne    0x4d06f9
  004d06f5: 41                                              inc    ecx
  004d06f6: 89 4e 0c                                        mov    DWORD PTR [esi+0xc],ecx
  004d06f9: 81 7e 10 00 00 01 00                            cmp    DWORD PTR [esi+0x10],0x10000
  004d0700: 74 0e                                           je     0x4d0710
  004d0702: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004d0705: 85 c9                                           test   ecx,ecx
  004d0707: 75 07                                           jne    0x4d0710
  004d0709: c7 46 08 02 00 00 00                            mov    DWORD PTR [esi+0x8],0x2
  004d0710: 5f                                              pop    edi
  004d0711: 5e                                              pop    esi
  004d0712: 5d                                              pop    ebp
  004d0713: c3                                              ret
  004d0720: 55                                              push   ebp
  004d0721: 8b ec                                           mov    ebp,esp
  004d0723: 83 ec 2c                                        sub    esp,0x2c
  004d0726: 56                                              push   esi
  004d0727: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004d072a: 57                                              push   edi
  004d072b: 8b 3e                                           mov    edi,DWORD PTR [esi]
  004d072d: 33 c0                                           xor    eax,eax
  004d072f: 6a 1c                                           push   0x1c
  004d0731: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  004d0734: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004d0737: 51                                              push   ecx
  004d0738: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004d073b: 57                                              push   edi
  004d073c: c7 45 f0 00 00 00 00                            mov    DWORD PTR [ebp-0x10],0x0
  004d0743: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004d0746: c7 46 0c 00 00 02 00                            mov    DWORD PTR [esi+0xc],0x20000
  004d074d: e8 5e ff ff ff                                  call   0x4d06b0
  004d0752: 83 c4 0c                                        add    esp,0xc
  004d0755: 83 f8 1c                                        cmp    eax,0x1c
  004d0758: 0f 85 99 00 00 00                               jne    0x4d07f7
  004d075e: 53                                              push   ebx
  004d075f: bb 00 20 00 00                                  mov    ebx,0x2000
  004d0764: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  004d0767: 3b 16                                           cmp    edx,DWORD PTR [esi]
  004d0769: 0f 85 87 00 00 00                               jne    0x4d07f6
  004d076f: 8b 4e 10                                        mov    ecx,DWORD PTR [esi+0x10]
  004d0772: 83 f9 04                                        cmp    ecx,0x4
  004d0775: 73 16                                           jae    0x4d078d
  004d0777: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  004d077a: 33 d2                                           xor    edx,edx
  004d077c: 3b c3                                           cmp    eax,ebx
  004d077e: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004d0781: 0f 94 c2                                        sete   dl
  004d0784: 4a                                              dec    edx
  004d0785: 23 d0                                           and    edx,eax
  004d0787: 89 54 8d f0                                     mov    DWORD PTR [ebp+ecx*4-0x10],edx
  004d078b: eb 26                                           jmp    0x4d07b3
  004d078d: 6a 0c                                           push   0xc
  004d078f: 8d 45 f4                                        lea    eax,[ebp-0xc]
  004d0792: 50                                              push   eax
  004d0793: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004d0796: 51                                              push   ecx
  004d0797: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  004d079d: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  004d07a0: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  004d07a3: 33 d2                                           xor    edx,edx
  004d07a5: 83 c4 0c                                        add    esp,0xc
  004d07a8: 3b cb                                           cmp    ecx,ebx
  004d07aa: 0f 94 c2                                        sete   dl
  004d07ad: 4a                                              dec    edx
  004d07ae: 23 d0                                           and    edx,eax
  004d07b0: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004d07b3: 8b 4e 10                                        mov    ecx,DWORD PTR [esi+0x10]
  004d07b6: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004d07b9: 41                                              inc    ecx
  004d07ba: 89 4e 10                                        mov    DWORD PTR [esi+0x10],ecx
  004d07bd: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  004d07c0: 03 d1                                           add    edx,ecx
  004d07c2: f6 c4 01                                        test   ah,0x1
  004d07c5: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  004d07c8: 74 03                                           je     0x4d07cd
  004d07ca: ff 46 14                                        inc    DWORD PTR [esi+0x14]
  004d07cd: 81 7e 0c 00 00 02 00                            cmp    DWORD PTR [esi+0xc],0x20000
  004d07d4: 75 06                                           jne    0x4d07dc
  004d07d6: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  004d07d9: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004d07dc: 03 f9                                           add    edi,ecx
  004d07de: 6a 1c                                           push   0x1c
  004d07e0: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  004d07e3: 51                                              push   ecx
  004d07e4: 57                                              push   edi
  004d07e5: e8 c6 fe ff ff                                  call   0x4d06b0
  004d07ea: 83 c4 0c                                        add    esp,0xc
  004d07ed: 83 f8 1c                                        cmp    eax,0x1c
  004d07f0: 0f 84 6e ff ff ff                               je     0x4d0764
  004d07f6: 5b                                              pop    ebx
  004d07f7: 8b 4e 14                                        mov    ecx,DWORD PTR [esi+0x14]
  004d07fa: 85 c9                                           test   ecx,ecx
  004d07fc: b8 01 00 00 00                                  mov    eax,0x1
  004d0801: 77 26                                           ja     0x4d0829
  004d0803: 8b 56 10                                        mov    edx,DWORD PTR [esi+0x10]
  004d0806: b9 04 00 00 00                                  mov    ecx,0x4
  004d080b: 3b d1                                           cmp    edx,ecx
  004d080d: 72 18                                           jb     0x4d0827
  004d080f: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  004d0812: 85 d2                                           test   edx,edx
  004d0814: 75 11                                           jne    0x4d0827
  004d0816: 39 45 f4                                        cmp    DWORD PTR [ebp-0xc],eax
  004d0819: 75 0c                                           jne    0x4d0827
  004d081b: 39 4d f8                                        cmp    DWORD PTR [ebp-0x8],ecx
  004d081e: 75 07                                           jne    0x4d0827
  004d0820: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004d0823: 85 c9                                           test   ecx,ecx
  004d0825: 74 02                                           je     0x4d0829
  004d0827: 33 c0                                           xor    eax,eax
  004d0829: 5f                                              pop    edi
  004d082a: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  004d082d: 5e                                              pop    esi
  004d082e: 8b e5                                           mov    esp,ebp
  004d0830: 5d                                              pop    ebp
  004d0831: c3                                              ret
  004d0940: 55                                              push   ebp
  004d0941: 8b ec                                           mov    ebp,esp
  004d0943: 81 ec 58 01 00 00                               sub    esp,0x158
  004d0949: 56                                              push   esi
  004d094a: 57                                              push   edi
  004d094b: 66 8b 7d 0c                                     mov    di,WORD PTR [ebp+0xc]
  004d094f: 66 83 ff 2f                                     cmp    di,0x2f
  004d0953: 0f 8c 08 01 00 00                               jl     0x4d0a61
  004d0959: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004d095c: 8d 85 a8 fe ff ff                               lea    eax,[ebp-0x158]
  004d0962: 50                                              push   eax
  004d0963: 56                                              push   esi
  004d0964: ff 15 74 e0 4d 00                               call   DWORD PTR ds:0x4de074
  004d096a: 83 f8 ff                                        cmp    eax,0xffffffff
  004d096d: 0f 84 ca 00 00 00                               je     0x4d0a3d
  004d0973: 53                                              push   ebx
  004d0974: 50                                              push   eax
  004d0975: ff 15 78 e0 4d 00                               call   DWORD PTR ds:0x4de078
  004d097b: 8b 1d f4 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0f4
  004d0981: 56                                              push   esi
  004d0982: ff d3                                           call   ebx
  004d0984: 66 3d 14 00                                     cmp    ax,0x14
  004d0988: 7e 0e                                           jle    0x4d0998
  004d098a: 0f bf c8                                        movsx  ecx,ax
  004d098d: 8d 74 31 ec                                     lea    esi,[ecx+esi*1-0x14]
  004d0991: c6 06 2e                                        mov    BYTE PTR [esi],0x2e
  004d0994: c6 46 01 2e                                     mov    BYTE PTR [esi+0x1],0x2e
  004d0998: 8b 3d 44 e3 4d 00                               mov    edi,DWORD PTR ds:0x4de344
  004d099e: 56                                              push   esi
  004d099f: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004d09a2: 68 d4 0c 51 00                                  push   0x510cd4
  004d09a7: 56                                              push   esi
  004d09a8: ff d7                                           call   edi
  004d09aa: 83 c4 0c                                        add    esp,0xc
  004d09ad: 8d 55 e8                                        lea    edx,[ebp-0x18]
  004d09b0: 52                                              push   edx
  004d09b1: 8d 85 bc fe ff ff                               lea    eax,[ebp-0x144]
  004d09b7: 50                                              push   eax
  004d09b8: ff 15 7c e0 4d 00                               call   DWORD PTR ds:0x4de07c
  004d09be: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  004d09c1: 51                                              push   ecx
  004d09c2: 8d 55 e8                                        lea    edx,[ebp-0x18]
  004d09c5: 52                                              push   edx
  004d09c6: ff 15 80 e0 4d 00                               call   DWORD PTR ds:0x4de080
  004d09cc: 56                                              push   esi
  004d09cd: ff d3                                           call   ebx
  004d09cf: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  004d09d2: 8b 55 fa                                        mov    edx,DWORD PTR [ebp-0x6]
  004d09d5: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004d09db: 51                                              push   ecx
  004d09dc: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004d09df: 81 e2 ff ff 00 00                               and    edx,0xffff
  004d09e5: 52                                              push   edx
  004d09e6: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004d09ec: 51                                              push   ecx
  004d09ed: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  004d09f0: 66 ba cf 07                                     mov    dx,0x7cf
  004d09f4: 66 3b d1                                        cmp    dx,cx
  004d09f7: 1b d2                                           sbb    edx,edx
  004d09f9: 83 e2 64                                        and    edx,0x64
  004d09fc: 81 c2 6c 07 00 00                               add    edx,0x76c
  004d0a02: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004d0a08: 2b ca                                           sub    ecx,edx
  004d0a0a: 8b 55 f2                                        mov    edx,DWORD PTR [ebp-0xe]
  004d0a0d: 51                                              push   ecx
  004d0a0e: 8b 4d f6                                        mov    ecx,DWORD PTR [ebp-0xa]
  004d0a11: 81 e1 ff ff 00 00                               and    ecx,0xffff
  004d0a17: 51                                              push   ecx
  004d0a18: 8b 8d c8 fe ff ff                               mov    ecx,DWORD PTR [ebp-0x138]
  004d0a1e: 81 e2 ff ff 00 00                               and    edx,0xffff
  004d0a24: 52                                              push   edx
  004d0a25: 0f bf d0                                        movsx  edx,ax
  004d0a28: 51                                              push   ecx
  004d0a29: 03 d6                                           add    edx,esi
  004d0a2b: 68 b0 0c 51 00                                  push   0x510cb0
  004d0a30: 52                                              push   edx
  004d0a31: ff d7                                           call   edi
  004d0a33: 83 c4 24                                        add    esp,0x24
  004d0a36: 5b                                              pop    ebx
  004d0a37: 5f                                              pop    edi
  004d0a38: 5e                                              pop    esi
  004d0a39: 8b e5                                           mov    esp,ebp
  004d0a3b: 5d                                              pop    ebp
  004d0a3c: c3                                              ret
  004d0a3d: 56                                              push   esi
  004d0a3e: ff 15 f4 e0 4d 00                               call   DWORD PTR ds:0x4de0f4
  004d0a44: 0f bf cf                                        movsx  ecx,di
  004d0a47: 83 c0 11                                        add    eax,0x11
  004d0a4a: 3b c1                                           cmp    eax,ecx
  004d0a4c: 7d 13                                           jge    0x4d0a61
  004d0a4e: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004d0a51: 56                                              push   esi
  004d0a52: 68 9c 0c 51 00                                  push   0x510c9c
  004d0a57: 52                                              push   edx
  004d0a58: ff 15 44 e3 4d 00                               call   DWORD PTR ds:0x4de344
  004d0a5e: 83 c4 0c                                        add    esp,0xc
  004d0a61: 5f                                              pop    edi
  004d0a62: 5e                                              pop    esi
  004d0a63: 8b e5                                           mov    esp,ebp
  004d0a65: 5d                                              pop    ebp
  004d0a66: c3                                              ret
  004d1410: 55                                              push   ebp
  004d1411: 8b ec                                           mov    ebp,esp
  004d1413: 6a ff                                           push   0xffffffff
  004d1415: 68 70 04 4e 00                                  push   0x4e0470
  004d141a: 68 bc 21 4d 00                                  push   0x4d21bc
  004d141f: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004d1425: 50                                              push   eax
  004d1426: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004d142d: 83 ec 18                                        sub    esp,0x18
  004d1430: 53                                              push   ebx
  004d1431: 56                                              push   esi
  004d1432: 57                                              push   edi
  004d1433: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004d1436: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004d1439: 8b 41 3c                                        mov    eax,DWORD PTR [ecx+0x3c]
  004d143c: 03 c1                                           add    eax,ecx
  004d143e: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004d1445: 81 38 50 45 00 00                               cmp    DWORD PTR [eax],0x4550
  004d144b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004d1452: 75 59                                           jne    0x4d14ad
  004d1454: 8b 40 78                                        mov    eax,DWORD PTR [eax+0x78]
  004d1457: 03 c1                                           add    eax,ecx
  004d1459: 8b 50 1c                                        mov    edx,DWORD PTR [eax+0x1c]
  004d145c: 03 d1                                           add    edx,ecx
  004d145e: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004d1461: 89 16                                           mov    DWORD PTR [esi],edx
  004d1463: 8b 50 24                                        mov    edx,DWORD PTR [eax+0x24]
  004d1466: 03 d1                                           add    edx,ecx
  004d1468: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  004d146b: 89 16                                           mov    DWORD PTR [esi],edx
  004d146d: 8b 50 20                                        mov    edx,DWORD PTR [eax+0x20]
  004d1470: 03 d1                                           add    edx,ecx
  004d1472: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  004d1475: 89 11                                           mov    DWORD PTR [ecx],edx
  004d1477: 8b 50 14                                        mov    edx,DWORD PTR [eax+0x14]
  004d147a: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  004d147d: 89 11                                           mov    DWORD PTR [ecx],edx
  004d147f: 8b 50 18                                        mov    edx,DWORD PTR [eax+0x18]
  004d1482: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  004d1485: 89 10                                           mov    DWORD PTR [eax],edx
  004d1487: b8 01 00 00 00                                  mov    eax,0x1
  004d148c: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  004d148f: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004d1496: 5f                                              pop    edi
  004d1497: 5e                                              pop    esi
  004d1498: 5b                                              pop    ebx
  004d1499: 8b e5                                           mov    esp,ebp
  004d149b: 5d                                              pop    ebp
  004d149c: c3                                              ret
  004d14ad: 33 c0                                           xor    eax,eax
  004d14af: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  004d14b2: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004d14b9: 5f                                              pop    edi
  004d14ba: 5e                                              pop    esi
  004d14bb: 5b                                              pop    ebx
  004d14bc: 8b e5                                           mov    esp,ebp
  004d14be: 5d                                              pop    ebp
  004d14bf: c3                                              ret
  004d14c0: 55                                              push   ebp
  004d14c1: 8b ec                                           mov    ebp,esp
  004d14c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004d14c6: 3d 00 00 02 00                                  cmp    eax,0x20000
  004d14cb: 77 33                                           ja     0x4d1500
  004d14cd: 74 2a                                           je     0x4d14f9
  004d14cf: 3d 00 10 00 00                                  cmp    eax,0x1000
  004d14d4: 74 1c                                           je     0x4d14f2
  004d14d6: 3d 00 20 00 00                                  cmp    eax,0x2000
  004d14db: 74 0e                                           je     0x4d14eb
  004d14dd: 3d 00 00 01 00                                  cmp    eax,0x10000
  004d14e2: 75 2a                                           jne    0x4d150e
  004d14e4: b8 c8 0e 51 00                                  mov    eax,0x510ec8
  004d14e9: 5d                                              pop    ebp
  004d14ea: c3                                              ret
  004d14eb: b8 c0 0e 51 00                                  mov    eax,0x510ec0
  004d14f0: 5d                                              pop    ebp
  004d14f1: c3                                              ret
  004d14f2: b8 b8 0e 51 00                                  mov    eax,0x510eb8
  004d14f7: 5d                                              pop    ebp
  004d14f8: c3                                              ret
  004d14f9: b8 b0 0e 51 00                                  mov    eax,0x510eb0
  004d14fe: 5d                                              pop    ebp
  004d14ff: c3                                              ret
  004d1500: 3d 00 00 04 00                                  cmp    eax,0x40000
  004d1505: 74 15                                           je     0x4d151c
  004d1507: 3d 00 00 00 01                                  cmp    eax,0x1000000
  004d150c: 74 07                                           je     0x4d1515
  004d150e: b8 98 0e 51 00                                  mov    eax,0x510e98
  004d1513: 5d                                              pop    ebp
  004d1514: c3                                              ret
  004d1515: b8 a8 0e 51 00                                  mov    eax,0x510ea8
  004d151a: 5d                                              pop    ebp
  004d151b: c3                                              ret
  004d151c: b8 a0 0e 51 00                                  mov    eax,0x510ea0
  004d1521: 5d                                              pop    ebp
  004d1522: c3                                              ret
  004d250e: ff 25 a0 e4 4d 00                               jmp    DWORD PTR ds:0x4de4a0
  004d2514: ff 25 70 e4 4d 00                               jmp    DWORD PTR ds:0x4de470
  004d251a: ff 25 88 e4 4d 00                               jmp    DWORD PTR ds:0x4de488
  004d2532: ff 25 80 e4 4d 00                               jmp    DWORD PTR ds:0x4de480
