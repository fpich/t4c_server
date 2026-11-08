; PASSE 86, Cibles directes des sessions, paquets et dialogues
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 851 distinct instructions; 25 graph entry points

  00406f90: 55                                              push   ebp
  00406f91: 8b ec                                           mov    ebp,esp
  00406f93: 6a ff                                           push   0xffffffff
  00406f95: 68 79 34 4d 00                                  push   0x4d3479
  00406f9a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00406fa0: 50                                              push   eax
  00406fa1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00406fa8: 83 ec 30                                        sub    esp,0x30
  00406fab: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  00406fae: 53                                              push   ebx
  00406faf: 56                                              push   esi
  00406fb0: 57                                              push   edi
  00406fb1: 33 db                                           xor    ebx,ebx
  00406fb3: 53                                              push   ebx
  00406fb4: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  00406fb7: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  00406fba: 88 45 c8                                        mov    BYTE PTR [ebp-0x38],al
  00406fbd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00406fc3: bf 01 00 00 00                                  mov    edi,0x1
  00406fc8: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00406fcb: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00406fce: ff 15 f8 e4 4d 00                               call   DWORD PTR ds:0x4de4f8
  00406fd4: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00406fd7: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00406fda: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00406fdd: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00406fe4: 89 4d c4                                        mov    DWORD PTR [ebp-0x3c],ecx
  00406fe7: 89 55 e8                                        mov    DWORD PTR [ebp-0x18],edx
  00406fea: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00406fed: 50                                              push   eax
  00406fee: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00406ff1: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00406ff4: 58                                              pop    eax
  00406ff5: e8 06 d2 02 00                                  call   0x434200
  00406ffa: 8b 10                                           mov    edx,DWORD PTR [eax]
  00406ffc: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00406fff: 51                                              push   ecx
  00407000: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00407003: 68 18 14 51 00                                  push   0x511418
  00407008: 51                                              push   ecx
  00407009: 8b c8                                           mov    ecx,eax
  0040700b: ff 12                                           call   DWORD PTR [edx]
  0040700d: 68 20 14 51 00                                  push   0x511420
  00407012: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00407018: e8 e3 d1 02 00                                  call   0x434200
  0040701d: 8b 10                                           mov    edx,DWORD PTR [eax]
  0040701f: 68 1c 14 51 00                                  push   0x51141c
  00407024: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  00407027: 51                                              push   ecx
  00407028: 8b c8                                           mov    ecx,eax
  0040702a: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0040702d: 8d 55 c4                                        lea    edx,[ebp-0x3c]
  00407030: 52                                              push   edx
  00407031: b9 08 14 51 00                                  mov    ecx,0x511408
  00407036: e8 75 15 00 00                                  call   0x4085b0
  0040703b: 3b 05 0c 14 51 00                               cmp    eax,DWORD PTR ds:0x51140c
  00407041: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  00407044: 74 19                                           je     0x40705f
  00407046: 83 c0 0c                                        add    eax,0xc
  00407049: 50                                              push   eax
  0040704a: 8d 45 c4                                        lea    eax,[ebp-0x3c]
  0040704d: 50                                              push   eax
  0040704e: e8 fd f2 ff ff                                  call   0x406350
  00407053: 83 c4 08                                        add    esp,0x8
  00407056: 84 c0                                           test   al,al
  00407058: 75 05                                           jne    0x40705f
  0040705a: 8d 45 14                                        lea    eax,[ebp+0x14]
  0040705d: eb 0c                                           jmp    0x40706b
  0040705f: 8b 0d 0c 14 51 00                               mov    ecx,DWORD PTR ds:0x51140c
  00407065: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  00407068: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0040706b: 8b 30                                           mov    esi,DWORD PTR [eax]
  0040706d: 3b 35 0c 14 51 00                               cmp    esi,DWORD PTR ds:0x51140c
  00407073: 75 7d                                           jne    0x4070f2
  00407075: e8 86 d1 02 00                                  call   0x434200
  0040707a: 8b 10                                           mov    edx,DWORD PTR [eax]
  0040707c: 68 1c 14 51 00                                  push   0x51141c
  00407081: 8b c8                                           mov    ecx,eax
  00407083: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00407086: 68 20 14 51 00                                  push   0x511420
  0040708b: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00407091: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00407094: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  00407097: 53                                              push   ebx
  00407098: 8b ce                                           mov    ecx,esi
  0040709a: 88 06                                           mov    BYTE PTR [esi],al
  0040709c: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004070a2: 83 c9 ff                                        or     ecx,0xffffffff
  004070a5: 33 c0                                           xor    eax,eax
  004070a7: bf 58 13 51 00                                  mov    edi,0x511358
  004070ac: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  004070ae: f7 d1                                           not    ecx
  004070b0: 49                                              dec    ecx
  004070b1: 51                                              push   ecx
  004070b2: 68 58 13 51 00                                  push   0x511358
  004070b7: 8b ce                                           mov    ecx,esi
  004070b9: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  004070bf: c7 45 f0 01 00 00 00                            mov    DWORD PTR [ebp-0x10],0x1
  004070c6: 6a 01                                           push   0x1
  004070c8: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  004070cb: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  004070ce: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004070d4: 6a 01                                           push   0x1
  004070d6: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004070d9: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  004070df: 8b c6                                           mov    eax,esi
  004070e1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004070e4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004070eb: 5f                                              pop    edi
  004070ec: 5e                                              pop    esi
  004070ed: 5b                                              pop    ebx
  004070ee: 8b e5                                           mov    esp,ebp
  004070f0: 5d                                              pop    ebp
  004070f1: c3                                              ret
  004070f2: e8 09 d1 02 00                                  call   0x434200
  004070f7: 8b 10                                           mov    edx,DWORD PTR [eax]
  004070f9: 68 1c 14 51 00                                  push   0x51141c
  004070fe: 8b c8                                           mov    ecx,eax
  00407100: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  00407103: 68 20 14 51 00                                  push   0x511420
  00407108: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  0040710e: 8a 4e 38                                        mov    cl,BYTE PTR [esi+0x38]
  00407111: 8d 46 38                                        lea    eax,[esi+0x38]
  00407114: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00407117: 88 0e                                           mov    BYTE PTR [esi],cl
  00407119: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0040711c: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0040711f: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00407122: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  00407128: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0040712a: 52                                              push   edx
  0040712b: 53                                              push   ebx
  0040712c: 50                                              push   eax
  0040712d: 8b ce                                           mov    ecx,esi
  0040712f: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00407135: 57                                              push   edi
  00407136: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00407139: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0040713c: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0040713f: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00407145: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  00407148: 3b c3                                           cmp    eax,ebx
  0040714a: 74 2d                                           je     0x407179
  0040714c: 8d 48 ff                                        lea    ecx,[eax-0x1]
  0040714f: 8a 01                                           mov    al,BYTE PTR [ecx]
  00407151: 3a c3                                           cmp    al,bl
  00407153: 74 1b                                           je     0x407170
  00407155: 3c ff                                           cmp    al,0xff
  00407157: 74 17                                           je     0x407170
  00407159: fe c8                                           dec    al
  0040715b: 88 01                                           mov    BYTE PTR [ecx],al
  0040715d: 8b c6                                           mov    eax,esi
  0040715f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00407162: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00407169: 5f                                              pop    edi
  0040716a: 5e                                              pop    esi
  0040716b: 5b                                              pop    ebx
  0040716c: 8b e5                                           mov    esp,ebp
  0040716e: 5d                                              pop    ebp
  0040716f: c3                                              ret
  00407170: 51                                              push   ecx
  00407171: e8 ea ae 03 00                                  call   0x442060
  00407176: 83 c4 04                                        add    esp,0x4
  00407179: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0040717c: 5f                                              pop    edi
  0040717d: 8b c6                                           mov    eax,esi
  0040717f: 5e                                              pop    esi
  00407180: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00407187: 5b                                              pop    ebx
  00407188: 8b e5                                           mov    esp,ebp
  0040718a: 5d                                              pop    ebp
  0040718b: c3                                              ret
  004274e0: 55                                              push   ebp
  004274e1: 8b ec                                           mov    ebp,esp
  004274e3: 83 ec 1c                                        sub    esp,0x1c
  004274e6: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  004274e9: 57                                              push   edi
  004274ea: 8b 38                                           mov    edi,DWORD PTR [eax]
  004274ec: 3b f8                                           cmp    edi,eax
  004274ee: 89 4d f4                                        mov    DWORD PTR [ebp-0xc],ecx
  004274f1: 0f 84 c7 00 00 00                               je     0x4275be
  004274f7: 53                                              push   ebx
  004274f8: 56                                              push   esi
  004274f9: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004274fc: 8b 57 30                                        mov    edx,DWORD PTR [edi+0x30]
  004274ff: 8d 5f 2c                                        lea    ebx,[edi+0x2c]
  00427502: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  00427505: c6 45 e8 01                                     mov    BYTE PTR [ebp-0x18],0x1
  00427509: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  0042750c: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  00427510: b1 01                                           mov    cl,0x1
  00427512: 8b f2                                           mov    esi,edx
  00427514: 88 4d f8                                        mov    BYTE PTR [ebp-0x8],cl
  00427517: 75 1f                                           jne    0x427538
  00427519: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042751c: 3b 48 0c                                        cmp    ecx,DWORD PTR [eax+0xc]
  0042751f: 8b f0                                           mov    esi,eax
  00427521: 0f 92 c1                                        setb   cl
  00427524: 84 c9                                           test   cl,cl
  00427526: 88 4d f8                                        mov    BYTE PTR [ebp-0x8],cl
  00427529: 74 04                                           je     0x42752f
  0042752b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042752d: eb 03                                           jmp    0x427532
  0042752f: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  00427532: 80 78 15 00                                     cmp    BYTE PTR [eax+0x15],0x0
  00427536: 74 e1                                           je     0x427519
  00427538: 84 c9                                           test   cl,cl
  0042753a: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  0042753d: 74 19                                           je     0x427558
  0042753f: 3b 32                                           cmp    esi,DWORD PTR [edx]
  00427541: 75 0d                                           jne    0x427550
  00427543: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  00427546: 52                                              push   edx
  00427547: 56                                              push   esi
  00427548: 6a 01                                           push   0x1
  0042754a: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0042754d: 50                                              push   eax
  0042754e: eb 20                                           jmp    0x427570
  00427550: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00427553: e8 d8 1c 00 00                                  call   0x429230
  00427558: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0042755b: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0042755e: 39 4a 0c                                        cmp    DWORD PTR [edx+0xc],ecx
  00427561: 73 14                                           jae    0x427577
  00427563: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00427566: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00427569: 50                                              push   eax
  0042756a: 56                                              push   esi
  0042756b: 51                                              push   ecx
  0042756c: 8d 55 ec                                        lea    edx,[ebp-0x14]
  0042756f: 52                                              push   edx
  00427570: 8b cb                                           mov    ecx,ebx
  00427572: e8 69 11 00 00                                  call   0x4286e0
  00427577: 8a 47 49                                        mov    al,BYTE PTR [edi+0x49]
  0042757a: 84 c0                                           test   al,al
  0042757c: 75 32                                           jne    0x4275b0
  0042757e: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00427581: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00427584: 84 c9                                           test   cl,cl
  00427586: 75 0b                                           jne    0x427593
  00427588: 50                                              push   eax
  00427589: e8 f2 16 00 00                                  call   0x428c80
  0042758e: 83 c4 04                                        add    esp,0x4
  00427591: eb 1b                                           jmp    0x4275ae
  00427593: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  00427596: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  00427599: 84 c9                                           test   cl,cl
  0042759b: 75 11                                           jne    0x4275ae
  0042759d: 3b 78 08                                        cmp    edi,DWORD PTR [eax+0x8]
  004275a0: 75 0c                                           jne    0x4275ae
  004275a2: 8b f8                                           mov    edi,eax
  004275a4: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  004275a7: 8a 48 49                                        mov    cl,BYTE PTR [eax+0x49]
  004275aa: 84 c9                                           test   cl,cl
  004275ac: 74 ef                                           je     0x42759d
  004275ae: 8b f8                                           mov    edi,eax
  004275b0: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  004275b3: 3b 78 40                                        cmp    edi,DWORD PTR [eax+0x40]
  004275b6: 0f 85 3d ff ff ff                               jne    0x4274f9
  004275bc: 5e                                              pop    esi
  004275bd: 5b                                              pop    ebx
  004275be: 5f                                              pop    edi
  004275bf: 8b e5                                           mov    esp,ebp
  004275c1: 5d                                              pop    ebp
  004275c2: c2 04 00                                        ret    0x4
  004312d0: 55                                              push   ebp
  004312d1: 8b ec                                           mov    ebp,esp
  004312d3: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004312d6: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004312d9: 89 08                                           mov    DWORD PTR [eax],ecx
  004312db: 5d                                              pop    ebp
  004312dc: c2 04 00                                        ret    0x4
  004314b0: 55                                              push   ebp
  004314b1: 8b ec                                           mov    ebp,esp
  004314b3: 56                                              push   esi
  004314b4: 57                                              push   edi
  004314b5: 8b f9                                           mov    edi,ecx
  004314b7: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004314ba: 85 c0                                           test   eax,eax
  004314bc: 74 0d                                           je     0x4314cb
  004314be: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  004314c1: 2b c8                                           sub    ecx,eax
  004314c3: f7 c1 f0 ff ff ff                               test   ecx,0xfffffff0
  004314c9: 75 04                                           jne    0x4314cf
  004314cb: 33 f6                                           xor    esi,esi
  004314cd: eb 08                                           jmp    0x4314d7
  004314cf: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004314d2: 2b f0                                           sub    esi,eax
  004314d4: c1 fe 04                                        sar    esi,0x4
  004314d7: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  004314da: 52                                              push   edx
  004314db: 6a 01                                           push   0x1
  004314dd: 51                                              push   ecx
  004314de: 8d 45 0c                                        lea    eax,[ebp+0xc]
  004314e1: 8b cc                                           mov    ecx,esp
  004314e3: 50                                              push   eax
  004314e4: e8 67 00 00 00                                  call   0x431550
  004314e9: 8b cf                                           mov    ecx,edi
  004314eb: e8 30 04 00 00                                  call   0x431920
  004314f0: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  004314f3: c1 e6 04                                        shl    esi,0x4
  004314f6: 03 f0                                           add    esi,eax
  004314f8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004314fb: 5f                                              pop    edi
  004314fc: 89 30                                           mov    DWORD PTR [eax],esi
  004314fe: 5e                                              pop    esi
  004314ff: 5d                                              pop    ebp
  00431500: c2 0c 00                                        ret    0xc
  00445870: 55                                              push   ebp
  00445871: 8b ec                                           mov    ebp,esp
  00445873: 56                                              push   esi
  00445874: 8b f1                                           mov    esi,ecx
  00445876: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  00445879: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0044587c: 57                                              push   edi
  0044587d: 33 ff                                           xor    edi,edi
  0044587f: 42                                              inc    edx
  00445880: 3b c7                                           cmp    eax,edi
  00445882: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00445885: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00445888: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0044588c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0044588f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00445892: 6a 0c                                           push   0xc
  00445894: 75 35                                           jne    0x4458cb
  00445896: e8 55 c7 ff ff                                  call   0x441ff0
  0044589b: 83 c4 04                                        add    esp,0x4
  0044589e: 3b c7                                           cmp    eax,edi
  004458a0: 74 07                                           je     0x4458a9
  004458a2: 89 38                                           mov    DWORD PTR [eax],edi
  004458a4: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004458a7: eb 02                                           jmp    0x4458ab
  004458a9: 33 c0                                           xor    eax,eax
  004458ab: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004458ae: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004458b1: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004458b4: 89 38                                           mov    DWORD PTR [eax],edi
  004458b6: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004458b9: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004458bc: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  004458bf: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  004458c2: 5f                                              pop    edi
  004458c3: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  004458c6: 5e                                              pop    esi
  004458c7: 5d                                              pop    ebp
  004458c8: c2 04 00                                        ret    0x4
  004458cb: e8 20 c7 ff ff                                  call   0x441ff0
  004458d0: 83 c4 04                                        add    esp,0x4
  004458d3: 3b c7                                           cmp    eax,edi
  004458d5: 74 07                                           je     0x4458de
  004458d7: 89 38                                           mov    DWORD PTR [eax],edi
  004458d9: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004458dc: eb 02                                           jmp    0x4458e0
  004458de: 33 c0                                           xor    eax,eax
  004458e0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004458e3: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  004458e6: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004458e9: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004458ec: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004458ef: 89 10                                           mov    DWORD PTR [eax],edx
  004458f1: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004458f4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004458f7: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004458fa: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004458fd: 5f                                              pop    edi
  004458fe: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00445901: 5e                                              pop    esi
  00445902: 5d                                              pop    ebp
  00445903: c2 04 00                                        ret    0x4
  0044eff0: 55                                              push   ebp
  0044eff1: 8b ec                                           mov    ebp,esp
  0044eff3: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0044eff6: 56                                              push   esi
  0044eff7: 6a 00                                           push   0x0
  0044eff9: 6a 00                                           push   0x0
  0044effb: 50                                              push   eax
  0044effc: 8b f1                                           mov    esi,ecx
  0044effe: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044f001: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0044f004: 6a ef                                           push   0xffffffef
  0044f006: 51                                              push   ecx
  0044f007: 52                                              push   edx
  0044f008: e8 77 f4 07 00                                  call   0x4ce484
  0044f00d: 66 89 06                                        mov    WORD PTR [esi],ax
  0044f010: 5e                                              pop    esi
  0044f011: 5d                                              pop    ebp
  0044f012: c2 08 00                                        ret    0x8
  00451380: 55                                              push   ebp
  00451381: 8b ec                                           mov    ebp,esp
  00451383: 6a ff                                           push   0xffffffff
  00451385: 68 48 6b 4d 00                                  push   0x4d6b48
  0045138a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00451390: 50                                              push   eax
  00451391: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00451398: 83 ec 10                                        sub    esp,0x10
  0045139b: a0 24 4a 51 00                                  mov    al,ds:0x514a24
  004513a0: 53                                              push   ebx
  004513a1: 56                                              push   esi
  004513a2: 33 db                                           xor    ebx,ebx
  004513a4: 84 c0                                           test   al,al
  004513a6: 57                                              push   edi
  004513a7: 0f 85 f4 02 00 00                               jne    0x4516a1
  004513ad: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004513b0: e8 ab 56 03 00                                  call   0x486a60
  004513b5: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004513b8: 0f bf c0                                        movsx  eax,ax
  004513bb: 3d 10 27 00 00                                  cmp    eax,0x2710
  004513c0: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004513c3: 0f 8f b5 00 00 00                               jg     0x45147e
  004513c9: 74 42                                           je     0x45140d
  004513cb: 48                                              dec    eax
  004513cc: 83 f8 63                                        cmp    eax,0x63
  004513cf: 0f 87 cc 02 00 00                               ja     0x4516a1
  004513d5: ff 24 85 b4 16 45 00                            jmp    DWORD PTR [eax*4+0x4516b4]
  0045140d: be ee 02 00 00                                  mov    esi,0x2ee
  00451412: bf 05 00 00 00                                  mov    edi,0x5
  00451417: e9 88 00 00 00                                  jmp    0x4514a4
  0045147e: 05 ef d8 ff ff                                  add    eax,0xffffd8ef
  00451483: 83 f8 03                                        cmp    eax,0x3
  00451486: 0f 87 15 02 00 00                               ja     0x4516a1
  0045148c: ff 24 85 44 18 45 00                            jmp    DWORD PTR [eax*4+0x451844]
  004514a4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004514a7: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  004514aa: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  004514ad: e8 8e 4a 03 00                                  call   0x485f40
  004514b2: 8d 45 f0                                        lea    eax,[ebp-0x10]
  004514b5: 50                                              push   eax
  004514b6: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004514b9: 51                                              push   ecx
  004514ba: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004514bd: e8 6e 55 03 00                                  call   0x486a30
  004514c2: 39 5d 2c                                        cmp    DWORD PTR [ebp+0x2c],ebx
  004514c5: 0f 84 3e 01 00 00                               je     0x451609
  004514cb: 8a 55 0b                                        mov    dl,BYTE PTR [ebp+0xb]
  004514ce: 88 55 0c                                        mov    BYTE PTR [ebp+0xc],dl
  004514d1: 89 5d 10                                        mov    DWORD PTR [ebp+0x10],ebx
  004514d4: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  004514d7: 89 5d 18                                        mov    DWORD PTR [ebp+0x18],ebx
  004514da: 83 7d 20 ff                                     cmp    DWORD PTR [ebp+0x20],0xffffffff
  004514de: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004514e1: 74 3b                                           je     0x45151e
  004514e3: 8b 55 24                                        mov    edx,DWORD PTR [ebp+0x24]
  004514e6: 83 fa ff                                        cmp    edx,0xffffffff
  004514e9: 74 33                                           je     0x45151e
  004514eb: 8b 4d 28                                        mov    ecx,DWORD PTR [ebp+0x28]
  004514ee: 83 f9 ff                                        cmp    ecx,0xffffffff
  004514f1: 74 2b                                           je     0x45151e
  004514f3: 8b 45 1c                                        mov    eax,DWORD PTR [ebp+0x1c]
  004514f6: 83 f8 ff                                        cmp    eax,0xffffffff
  004514f9: 74 23                                           je     0x45151e
  004514fb: 8b 5d 30                                        mov    ebx,DWORD PTR [ebp+0x30]
  004514fe: 53                                              push   ebx
  004514ff: 8b 5d 20                                        mov    ebx,DWORD PTR [ebp+0x20]
  00451502: 50                                              push   eax
  00451503: 83 ec 0c                                        sub    esp,0xc
  00451506: 8b c4                                           mov    eax,esp
  00451508: 89 18                                           mov    DWORD PTR [eax],ebx
  0045150a: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0045150d: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  00451510: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00451513: 51                                              push   ecx
  00451514: e8 27 12 00 00                                  call   0x452740
  00451519: 83 c4 18                                        add    esp,0x18
  0045151c: eb 14                                           jmp    0x451532
  0045151e: 8b 55 34                                        mov    edx,DWORD PTR [ebp+0x34]
  00451521: 8b 45 30                                        mov    eax,DWORD PTR [ebp+0x30]
  00451524: 52                                              push   edx
  00451525: 50                                              push   eax
  00451526: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00451529: 51                                              push   ecx
  0045152a: e8 31 11 00 00                                  call   0x452660
  0045152f: 83 c4 0c                                        add    esp,0xc
  00451532: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  00451535: 3b 5d 14                                        cmp    ebx,DWORD PTR [ebp+0x14]
  00451538: 0f 84 a9 00 00 00                               je     0x4515e7
  0045153e: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  00451541: 66 3d 10 27                                     cmp    ax,0x2710
  00451545: 0f bf c0                                        movsx  eax,ax
  00451548: 7e 38                                           jle    0x451582
  0045154a: 05 f0 d8 ff ff                                  add    eax,0xffffd8f0
  0045154f: 83 f8 04                                        cmp    eax,0x4
  00451552: 77 2a                                           ja     0x45157e
  00451554: ff 24 85 54 18 45 00                            jmp    DWORD PTR [eax*4+0x451854]
  0045157e: 33 c0                                           xor    eax,eax
  00451580: eb 21                                           jmp    0x4515a3
  00451582: 8b 04 85 f8 46 51 00                            mov    eax,DWORD PTR [eax*4+0x5146f8]
  00451589: 85 c0                                           test   eax,eax
  0045158b: 74 16                                           je     0x4515a3
  0045158d: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  00451590: 01 50 08                                        add    DWORD PTR [eax+0x8],edx
  00451593: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  00451596: 8b 48 10                                        mov    ecx,DWORD PTR [eax+0x10]
  00451599: 83 d2 00                                        adc    edx,0x0
  0045159c: 41                                              inc    ecx
  0045159d: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004515a0: 89 48 10                                        mov    DWORD PTR [eax+0x10],ecx
  004515a3: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  004515a6: 50                                              push   eax
  004515a7: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  004515aa: 57                                              push   edi
  004515ab: 56                                              push   esi
  004515ac: 50                                              push   eax
  004515ad: 51                                              push   ecx
  004515ae: 83 ec 10                                        sub    esp,0x10
  004515b1: 8b d3                                           mov    edx,ebx
  004515b3: 8b 0a                                           mov    ecx,DWORD PTR [edx]
  004515b5: 8b c4                                           mov    eax,esp
  004515b7: 89 08                                           mov    DWORD PTR [eax],ecx
  004515b9: 8b 4a 04                                        mov    ecx,DWORD PTR [edx+0x4]
  004515bc: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  004515bf: 8b 4a 08                                        mov    ecx,DWORD PTR [edx+0x8]
  004515c2: 8b 52 0c                                        mov    edx,DWORD PTR [edx+0xc]
  004515c5: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  004515c8: 8b 0d 28 4a 51 00                               mov    ecx,DWORD PTR ds:0x514a28
  004515ce: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  004515d1: e8 3a d6 fd ff                                  call   0x42ec10
  004515d6: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  004515d9: 83 c3 10                                        add    ebx,0x10
  004515dc: 3b d8                                           cmp    ebx,eax
  004515de: 0f 85 5a ff ff ff                               jne    0x45153e
  004515e4: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004515e7: 85 db                                           test   ebx,ebx
  004515e9: 0f 84 b2 00 00 00                               je     0x4516a1
  004515ef: 53                                              push   ebx
  004515f0: e8 6b 0a ff ff                                  call   0x442060
  004515f5: 83 c4 04                                        add    esp,0x4
  004515f8: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004515fb: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00451602: 5f                                              pop    edi
  00451603: 5e                                              pop    esi
  00451604: 5b                                              pop    ebx
  00451605: 8b e5                                           mov    esp,ebp
  00451607: 5d                                              pop    ebp
  00451608: c3                                              ret
  00451609: 66 81 7d e8 10 27                               cmp    WORD PTR [ebp-0x18],0x2710
  0045160f: 7e 3b                                           jle    0x45164c
  00451611: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  00451614: 05 f0 d8 ff ff                                  add    eax,0xffffd8f0
  00451619: 83 f8 04                                        cmp    eax,0x4
  0045161c: 77 2a                                           ja     0x451648
  0045161e: ff 24 85 68 18 45 00                            jmp    DWORD PTR [eax*4+0x451868]
  00451648: 33 c0                                           xor    eax,eax
  0045164a: eb 23                                           jmp    0x45166f
  0045164c: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0045164f: 8b 04 8d f8 46 51 00                            mov    eax,DWORD PTR [ecx*4+0x5146f8]
  00451656: 3b c3                                           cmp    eax,ebx
  00451658: 74 15                                           je     0x45166f
  0045165a: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0045165d: 01 50 08                                        add    DWORD PTR [eax+0x8],edx
  00451660: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  00451663: 8b 48 10                                        mov    ecx,DWORD PTR [eax+0x10]
  00451666: 13 d3                                           adc    edx,ebx
  00451668: 41                                              inc    ecx
  00451669: 89 50 0c                                        mov    DWORD PTR [eax+0xc],edx
  0045166c: 89 48 10                                        mov    DWORD PTR [eax+0x10],ecx
  0045166f: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00451672: 50                                              push   eax
  00451673: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  00451676: 57                                              push   edi
  00451677: 56                                              push   esi
  00451678: 50                                              push   eax
  00451679: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0045167c: 51                                              push   ecx
  0045167d: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  00451680: 83 ec 10                                        sub    esp,0x10
  00451683: 8b d4                                           mov    edx,esp
  00451685: 89 02                                           mov    DWORD PTR [edx],eax
  00451687: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0045168a: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0045168d: 8b 4d 18                                        mov    ecx,DWORD PTR [ebp+0x18]
  00451690: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  00451693: 89 4a 0c                                        mov    DWORD PTR [edx+0xc],ecx
  00451696: 8b 0d 28 4a 51 00                               mov    ecx,DWORD PTR ds:0x514a28
  0045169c: e8 6f d5 fd ff                                  call   0x42ec10
  004516a1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004516a4: 5f                                              pop    edi
  004516a5: 5e                                              pop    esi
  004516a6: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004516ad: 5b                                              pop    ebx
  004516ae: 8b e5                                           mov    esp,ebp
  004516b0: 5d                                              pop    ebp
  004516b1: c3                                              ret
  00454470: 55                                              push   ebp
  00454471: 8b ec                                           mov    ebp,esp
  00454473: 56                                              push   esi
  00454474: 8b f1                                           mov    esi,ecx
  00454476: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00454479: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0045447c: 57                                              push   edi
  0045447d: 33 ff                                           xor    edi,edi
  0045447f: 42                                              inc    edx
  00454480: 3b c7                                           cmp    eax,edi
  00454482: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00454485: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00454488: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0045448c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0045448f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00454492: 6a 0c                                           push   0xc
  00454494: 75 35                                           jne    0x4544cb
  00454496: e8 55 db fe ff                                  call   0x441ff0
  0045449b: 83 c4 04                                        add    esp,0x4
  0045449e: 3b c7                                           cmp    eax,edi
  004544a0: 74 07                                           je     0x4544a9
  004544a2: 89 38                                           mov    DWORD PTR [eax],edi
  004544a4: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004544a7: eb 02                                           jmp    0x4544ab
  004544a9: 33 c0                                           xor    eax,eax
  004544ab: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004544ae: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004544b1: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004544b4: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004544b7: 89 38                                           mov    DWORD PTR [eax],edi
  004544b9: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004544bc: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004544bf: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004544c2: 5f                                              pop    edi
  004544c3: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004544c6: 5e                                              pop    esi
  004544c7: 5d                                              pop    ebp
  004544c8: c2 04 00                                        ret    0x4
  004544cb: e8 20 db fe ff                                  call   0x441ff0
  004544d0: 83 c4 04                                        add    esp,0x4
  004544d3: 3b c7                                           cmp    eax,edi
  004544d5: 74 07                                           je     0x4544de
  004544d7: 89 38                                           mov    DWORD PTR [eax],edi
  004544d9: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004544dc: eb 02                                           jmp    0x4544e0
  004544de: 33 c0                                           xor    eax,eax
  004544e0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004544e3: 89 01                                           mov    DWORD PTR [ecx],eax
  004544e5: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004544e8: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004544eb: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004544ee: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004544f1: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004544f4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004544f7: 89 38                                           mov    DWORD PTR [eax],edi
  004544f9: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004544fc: 5f                                              pop    edi
  004544fd: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00454500: 5e                                              pop    esi
  00454501: 5d                                              pop    ebp
  00454502: c2 04 00                                        ret    0x4
  004569b0: 56                                              push   esi
  004569b1: 68 c4 67 50 00                                  push   0x5067c4
  004569b6: 68 00 08 00 00                                  push   0x800
  004569bb: 8b f1                                           mov    esi,ecx
  004569bd: e8 7e b3 01 00                                  call   0x471d40
  004569c2: 83 c4 08                                        add    esp,0x8
  004569c5: 8b c6                                           mov    eax,esi
  004569c7: 5e                                              pop    esi
  004569c8: c3                                              ret
  004569d0: 68 e4 67 50 00                                  push   0x5067e4
  004569d5: 68 00 08 00 00                                  push   0x800
  004569da: e8 61 b3 01 00                                  call   0x471d40
  004569df: 83 c4 08                                        add    esp,0x8
  004569e2: c3                                              ret
  00458eb0: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00458eb3: 8b 51 28                                        mov    edx,DWORD PTR [ecx+0x28]
  00458eb6: 89 41 2c                                        mov    DWORD PTR [ecx+0x2c],eax
  00458eb9: ff 49 38                                        dec    DWORD PTR [ecx+0x38]
  00458ebc: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00458ebf: 3b c2                                           cmp    eax,edx
  00458ec1: 74 57                                           je     0x458f1a
  00458ec3: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00458ec6: 74 4e                                           je     0x458f16
  00458ec8: 8b 10                                           mov    edx,DWORD PTR [eax]
  00458eca: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00458ecd: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  00458ed0: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00458ed3: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00458ed6: 8b 00                                           mov    eax,DWORD PTR [eax]
  00458ed8: 89 02                                           mov    DWORD PTR [edx],eax
  00458eda: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  00458edd: 83 f8 01                                        cmp    eax,0x1
  00458ee0: 75 16                                           jne    0x458ef8
  00458ee2: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00458ee5: 8b 42 04                                        mov    eax,DWORD PTR [edx+0x4]
  00458ee8: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00458eeb: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00458eee: 51                                              push   ecx
  00458eef: e8 6c 91 fe ff                                  call   0x442060
  00458ef4: 83 c4 04                                        add    esp,0x4
  00458ef7: c3                                              ret
  00458ef8: 83 f8 02                                        cmp    eax,0x2
  00458efb: 0f 85 8c 00 00 00                               jne    0x458f8d
  00458f01: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  00458f04: 8b 02                                           mov    eax,DWORD PTR [edx]
  00458f06: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00458f09: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00458f0c: 51                                              push   ecx
  00458f0d: e8 4e 91 fe ff                                  call   0x442060
  00458f12: 83 c4 04                                        add    esp,0x4
  00458f15: c3                                              ret
  00458f16: 3b c2                                           cmp    eax,edx
  00458f18: 75 34                                           jne    0x458f4e
  00458f1a: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00458f1d: 74 34                                           je     0x458f53
  00458f1f: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00458f22: 33 d2                                           xor    edx,edx
  00458f24: 89 10                                           mov    DWORD PTR [eax],edx
  00458f26: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00458f29: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00458f2c: 89 41 28                                        mov    DWORD PTR [ecx+0x28],eax
  00458f2f: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00458f32: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  00458f35: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00458f38: 83 79 40 02                                     cmp    DWORD PTR [ecx+0x40],0x2
  00458f3c: 75 4f                                           jne    0x458f8d
  00458f3e: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00458f41: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00458f44: 51                                              push   ecx
  00458f45: e8 16 91 fe ff                                  call   0x442060
  00458f4a: 83 c4 04                                        add    esp,0x4
  00458f4d: c3                                              ret
  00458f4e: 3b 41 24                                        cmp    eax,DWORD PTR [ecx+0x24]
  00458f51: 75 2c                                           jne    0x458f7f
  00458f53: 3b c2                                           cmp    eax,edx
  00458f55: 74 28                                           je     0x458f7f
  00458f57: 8b 00                                           mov    eax,DWORD PTR [eax]
  00458f59: 33 d2                                           xor    edx,edx
  00458f5b: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  00458f5e: 8b 41 20                                        mov    eax,DWORD PTR [ecx+0x20]
  00458f61: 8b 00                                           mov    eax,DWORD PTR [eax]
  00458f63: 89 41 20                                        mov    DWORD PTR [ecx+0x20],eax
  00458f66: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  00458f69: 83 79 40 01                                     cmp    DWORD PTR [ecx+0x40],0x1
  00458f6d: 75 1e                                           jne    0x458f8d
  00458f6f: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00458f72: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00458f75: 51                                              push   ecx
  00458f76: e8 e5 90 fe ff                                  call   0x442060
  00458f7b: 83 c4 04                                        add    esp,0x4
  00458f7e: c3                                              ret
  00458f7f: 33 d2                                           xor    edx,edx
  00458f81: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  00458f84: 89 51 24                                        mov    DWORD PTR [ecx+0x24],edx
  00458f87: 89 51 28                                        mov    DWORD PTR [ecx+0x28],edx
  00458f8a: 89 51 40                                        mov    DWORD PTR [ecx+0x40],edx
  00458f8d: 8b 49 2c                                        mov    ecx,DWORD PTR [ecx+0x2c]
  00458f90: 51                                              push   ecx
  00458f91: e8 ca 90 fe ff                                  call   0x442060
  00458f96: 83 c4 04                                        add    esp,0x4
  00458f99: c3                                              ret
  00462cc0: 55                                              push   ebp
  00462cc1: 8b ec                                           mov    ebp,esp
  00462cc3: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00462cc6: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00462cc9: 56                                              push   esi
  00462cca: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  00462ccd: 3b ce                                           cmp    ecx,esi
  00462ccf: 74 0e                                           je     0x462cdf
  00462cd1: 85 c0                                           test   eax,eax
  00462cd3: 74 04                                           je     0x462cd9
  00462cd5: 8a 11                                           mov    dl,BYTE PTR [ecx]
  00462cd7: 88 10                                           mov    BYTE PTR [eax],dl
  00462cd9: 40                                              inc    eax
  00462cda: 41                                              inc    ecx
  00462cdb: 3b ce                                           cmp    ecx,esi
  00462cdd: 75 f2                                           jne    0x462cd1
  00462cdf: 5e                                              pop    esi
  00462ce0: 5d                                              pop    ebp
  00462ce1: c2 0c 00                                        ret    0xc
  00473470: 55                                              push   ebp
  00473471: 8b ec                                           mov    ebp,esp
  00473473: 56                                              push   esi
  00473474: 8b f1                                           mov    esi,ecx
  00473476: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00473479: 8b 56 38                                        mov    edx,DWORD PTR [esi+0x38]
  0047347c: 57                                              push   edi
  0047347d: 33 ff                                           xor    edi,edi
  0047347f: 42                                              inc    edx
  00473480: 3b c7                                           cmp    eax,edi
  00473482: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  00473485: 89 7e 40                                        mov    DWORD PTR [esi+0x40],edi
  00473488: c6 46 34 08                                     mov    BYTE PTR [esi+0x34],0x8
  0047348c: 89 46 2c                                        mov    DWORD PTR [esi+0x2c],eax
  0047348f: 89 56 38                                        mov    DWORD PTR [esi+0x38],edx
  00473492: 6a 0c                                           push   0xc
  00473494: 75 35                                           jne    0x4734cb
  00473496: e8 55 eb fc ff                                  call   0x441ff0
  0047349b: 83 c4 04                                        add    esp,0x4
  0047349e: 3b c7                                           cmp    eax,edi
  004734a0: 74 07                                           je     0x4734a9
  004734a2: 89 38                                           mov    DWORD PTR [eax],edi
  004734a4: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004734a7: eb 02                                           jmp    0x4734ab
  004734a9: 33 c0                                           xor    eax,eax
  004734ab: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004734ae: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004734b1: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004734b4: 89 46 24                                        mov    DWORD PTR [esi+0x24],eax
  004734b7: 89 38                                           mov    DWORD PTR [eax],edi
  004734b9: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004734bc: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004734bf: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004734c2: 5f                                              pop    edi
  004734c3: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  004734c6: 5e                                              pop    esi
  004734c7: 5d                                              pop    ebp
  004734c8: c2 04 00                                        ret    0x4
  004734cb: e8 20 eb fc ff                                  call   0x441ff0
  004734d0: 83 c4 04                                        add    esp,0x4
  004734d3: 3b c7                                           cmp    eax,edi
  004734d5: 74 07                                           je     0x4734de
  004734d7: 89 38                                           mov    DWORD PTR [eax],edi
  004734d9: 89 78 04                                        mov    DWORD PTR [eax+0x4],edi
  004734dc: eb 02                                           jmp    0x4734e0
  004734de: 33 c0                                           xor    eax,eax
  004734e0: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004734e3: 89 01                                           mov    DWORD PTR [ecx],eax
  004734e5: 8b 56 2c                                        mov    edx,DWORD PTR [esi+0x2c]
  004734e8: 89 46 20                                        mov    DWORD PTR [esi+0x20],eax
  004734eb: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  004734ee: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  004734f1: 8b 46 20                                        mov    eax,DWORD PTR [esi+0x20]
  004734f4: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004734f7: 89 38                                           mov    DWORD PTR [eax],edi
  004734f9: 8b 4e 20                                        mov    ecx,DWORD PTR [esi+0x20]
  004734fc: 5f                                              pop    edi
  004734fd: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  00473500: 5e                                              pop    esi
  00473501: 5d                                              pop    ebp
  00473502: c2 04 00                                        ret    0x4
  004786b0: b8 90 5e 51 00                                  mov    eax,0x515e90
  004786b5: c3                                              ret
  004d1a76: ff 25 64 e2 4d 00                               jmp    DWORD PTR ds:0x4de264
  004d1a8e: ff 25 54 e2 4d 00                               jmp    DWORD PTR ds:0x4de254
  004d1ae2: ff 25 1c e2 4d 00                               jmp    DWORD PTR ds:0x4de21c
  004d1afa: ff 25 0c e2 4d 00                               jmp    DWORD PTR ds:0x4de20c
  004d1b00: ff 25 08 e2 4d 00                               jmp    DWORD PTR ds:0x4de208
  004d1b06: ff 25 04 e2 4d 00                               jmp    DWORD PTR ds:0x4de204
  004d1b0c: ff 25 00 e2 4d 00                               jmp    DWORD PTR ds:0x4de200
  004d1b12: ff 25 fc e1 4d 00                               jmp    DWORD PTR ds:0x4de1fc
  004d1fa0: 80 f9 40                                        cmp    cl,0x40
  004d1fa3: 73 15                                           jae    0x4d1fba
  004d1fa5: 80 f9 20                                        cmp    cl,0x20
  004d1fa8: 73 06                                           jae    0x4d1fb0
  004d1faa: 0f a5 c2                                        shld   edx,eax,cl
  004d1fad: d3 e0                                           shl    eax,cl
  004d1faf: c3                                              ret
  004d1fb0: 8b d0                                           mov    edx,eax
  004d1fb2: 33 c0                                           xor    eax,eax
  004d1fb4: 80 e1 1f                                        and    cl,0x1f
  004d1fb7: d3 e2                                           shl    edx,cl
  004d1fb9: c3                                              ret
  004d1fba: 33 c0                                           xor    eax,eax
  004d1fbc: 33 d2                                           xor    edx,edx
  004d1fbe: c3                                              ret
  004d2502: ff 25 a8 e4 4d 00                               jmp    DWORD PTR ds:0x4de4a8
  004d254a: ff 25 90 e4 4d 00                               jmp    DWORD PTR ds:0x4de490
