; PASSE 95, Décodage des deux tables de saut bornées, sans désassembler leurs données
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2059 distinct instructions; 2 graph entry points

  0041b250: 55                                              push   ebp
  0041b251: 8b ec                                           mov    ebp,esp
  0041b253: 6a ff                                           push   0xffffffff
  0041b255: 68 97 40 4d 00                                  push   0x4d4097
  0041b25a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0041b260: 50                                              push   eax
  0041b261: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0041b268: 81 ec 88 01 00 00                               sub    esp,0x188
  0041b26e: 53                                              push   ebx
  0041b26f: 56                                              push   esi
  0041b270: 57                                              push   edi
  0041b271: 8b f1                                           mov    esi,ecx
  0041b273: e8 78 f8 ff ff                                  call   0x41aaf0
  0041b278: 8b f8                                           mov    edi,eax
  0041b27a: 8a 86 b0 00 00 00                               mov    al,BYTE PTR [esi+0xb0]
  0041b280: 33 db                                           xor    ebx,ebx
  0041b282: 84 c0                                           test   al,al
  0041b284: 0f 85 2b 19 00 00                               jne    0x41cbb5
  0041b28a: 8b cf                                           mov    ecx,edi
  0041b28c: e8 4f 98 03 00                                  call   0x454ae0
  0041b291: 81 e2 80 00 00 00                               and    edx,0x80
  0041b297: 33 c0                                           xor    eax,eax
  0041b299: 0b c2                                           or     eax,edx
  0041b29b: 0f 85 14 19 00 00                               jne    0x41cbb5
  0041b2a1: 39 5f 44                                        cmp    DWORD PTR [edi+0x44],ebx
  0041b2a4: 75 21                                           jne    0x41b2c7
  0041b2a6: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b2a8: 6a 01                                           push   0x1
  0041b2aa: 6a 01                                           push   0x1
  0041b2ac: 8b ce                                           mov    ecx,esi
  0041b2ae: ff 90 dc 00 00 00                               call   DWORD PTR [eax+0xdc]
  0041b2b4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041b2b7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041b2be: 5f                                              pop    edi
  0041b2bf: 5e                                              pop    esi
  0041b2c0: 5b                                              pop    ebx
  0041b2c1: 8b e5                                           mov    esp,ebp
  0041b2c3: 5d                                              pop    ebp
  0041b2c4: c2 08 00                                        ret    0x8
  0041b2c7: 8b 56 30                                        mov    edx,DWORD PTR [esi+0x30]
  0041b2ca: 8d 4e 30                                        lea    ecx,[esi+0x30]
  0041b2cd: c6 86 b0 00 00 00 01                            mov    BYTE PTR [esi+0xb0],0x1
  0041b2d4: 89 8d d8 fe ff ff                               mov    DWORD PTR [ebp-0x128],ecx
  0041b2da: ff 52 04                                        call   DWORD PTR [edx+0x4]
  0041b2dd: 8b ce                                           mov    ecx,esi
  0041b2df: e8 5c 4b 00 00                                  call   0x41fe40
  0041b2e4: 8b ce                                           mov    ecx,esi
  0041b2e6: e8 05 f8 ff ff                                  call   0x41aaf0
  0041b2eb: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041b2ee: 3b fb                                           cmp    edi,ebx
  0041b2f0: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0041b2f3: 0f 84 84 03 00 00                               je     0x41b67d
  0041b2f9: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b2fb: 6a 03                                           push   0x3
  0041b2fd: 8b cf                                           mov    ecx,edi
  0041b2ff: ff 90 80 00 00 00                               call   DWORD PTR [eax+0x80]
  0041b305: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b307: 8b cf                                           mov    ecx,edi
  0041b309: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0041b30c: ff 90 14 01 00 00                               call   DWORD PTR [eax+0x114]
  0041b312: 8b 55 e0                                        mov    edx,DWORD PTR [ebp-0x20]
  0041b315: 50                                              push   eax
  0041b316: 8b cf                                           mov    ecx,edi
  0041b318: ff 92 ac 00 00 00                               call   DWORD PTR [edx+0xac]
  0041b31e: 8b cf                                           mov    ecx,edi
  0041b320: e8 4b 03 07 00                                  call   0x48b670
  0041b325: 3c 01                                           cmp    al,0x1
  0041b327: 0f 85 52 02 00 00                               jne    0x41b57f
  0041b32d: 8b cf                                           mov    ecx,edi
  0041b32f: e8 bc f7 ff ff                                  call   0x41aaf0
  0041b334: 3b fe                                           cmp    edi,esi
  0041b336: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0041b339: 53                                              push   ebx
  0041b33a: 0f 85 ca 00 00 00                               jne    0x41b40a
  0041b340: e8 cb 69 05 00                                  call   0x471d10
  0041b345: 83 c4 04                                        add    esp,0x4
  0041b348: 85 c0                                           test   eax,eax
  0041b34a: 0f 84 ff 03 00 00                               je     0x41b74f
  0041b350: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b353: 8d 85 6c ff ff ff                               lea    eax,[ebp-0x94]
  0041b359: 50                                              push   eax
  0041b35a: e8 01 d9 03 00                                  call   0x458c60
  0041b35f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b361: 8d 95 dc fe ff ff                               lea    edx,[ebp-0x124]
  0041b367: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  0041b36a: 52                                              push   edx
  0041b36b: 8b ce                                           mov    ecx,esi
  0041b36d: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0041b370: e8 db 26 00 00                                  call   0x41da50
  0041b375: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b377: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b379: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0041b37c: 8d 85 78 ff ff ff                               lea    eax,[ebp-0x88]
  0041b382: 50                                              push   eax
  0041b383: 8b ce                                           mov    ecx,esi
  0041b385: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0041b389: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b38c: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0041b38f: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b391: 51                                              push   ecx
  0041b392: 8d 45 84                                        lea    eax,[ebp-0x7c]
  0041b395: 50                                              push   eax
  0041b396: 8b ce                                           mov    ecx,esi
  0041b398: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b39b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041b39e: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b3a0: 51                                              push   ecx
  0041b3a1: 8d 85 78 fe ff ff                               lea    eax,[ebp-0x188]
  0041b3a7: 50                                              push   eax
  0041b3a8: 8b ce                                           mov    ecx,esi
  0041b3aa: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b3ad: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b3af: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b3b1: 51                                              push   ecx
  0041b3b2: 8b ce                                           mov    ecx,esi
  0041b3b4: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041b3ba: 8b ce                                           mov    ecx,esi
  0041b3bc: 25 ff ff 00 00                                  and    eax,0xffff
  0041b3c1: 50                                              push   eax
  0041b3c2: 8b 45 e0                                        mov    eax,DWORD PTR [ebp-0x20]
  0041b3c5: 50                                              push   eax
  0041b3c6: e8 35 03 07 00                                  call   0x48b700
  0041b3cb: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b3ce: 50                                              push   eax
  0041b3cf: 51                                              push   ecx
  0041b3d0: 68 10 24 50 00                                  push   0x502410
  0041b3d5: 6a 40                                           push   0x40
  0041b3d7: 53                                              push   ebx
  0041b3d8: e8 33 69 05 00                                  call   0x471d10
  0041b3dd: 83 c4 04                                        add    esp,0x4
  0041b3e0: 50                                              push   eax
  0041b3e1: e8 0a 37 0b 00                                  call   0x4ceaf0
  0041b3e6: 83 c4 28                                        add    esp,0x28
  0041b3e9: 8d 8d dc fe ff ff                               lea    ecx,[ebp-0x124]
  0041b3ef: c6 45 fc 00                                     mov    BYTE PTR [ebp-0x4],0x0
  0041b3f3: e8 48 66 0b 00                                  call   0x4d1a40
  0041b3f8: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041b3ff: 8d 8d 6c ff ff ff                               lea    ecx,[ebp-0x94]
  0041b405: e9 40 03 00 00                                  jmp    0x41b74a
  0041b40a: e8 01 69 05 00                                  call   0x471d10
  0041b40f: 83 c4 04                                        add    esp,0x4
  0041b412: 85 c0                                           test   eax,eax
  0041b414: 0f 84 35 03 00 00                               je     0x41b74f
  0041b41a: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041b41d: 8d 55 8c                                        lea    edx,[ebp-0x74]
  0041b420: 52                                              push   edx
  0041b421: e8 3a d8 03 00                                  call   0x458c60
  0041b426: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b428: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0041b42a: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  0041b431: 89 85 6c ff ff ff                               mov    DWORD PTR [ebp-0x94],eax
  0041b437: e8 24 26 02 00                                  call   0x43da60
  0041b43c: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041b43f: 50                                              push   eax
  0041b440: 51                                              push   ecx
  0041b441: 8b cf                                           mov    ecx,edi
  0041b443: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041b446: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b449: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041b44b: 8d 95 70 ff ff ff                               lea    edx,[ebp-0x90]
  0041b451: 52                                              push   edx
  0041b452: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0041b456: e8 05 d8 03 00                                  call   0x458c60
  0041b45b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b45d: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  0041b463: 51                                              push   ecx
  0041b464: 8b ce                                           mov    ecx,esi
  0041b466: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0041b46a: 89 85 dc fe ff ff                               mov    DWORD PTR [ebp-0x124],eax
  0041b470: e8 db 25 00 00                                  call   0x41da50
  0041b475: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041b477: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b479: 8d 8d 78 fe ff ff                               lea    ecx,[ebp-0x188]
  0041b47f: 51                                              push   ecx
  0041b480: 8b cf                                           mov    ecx,edi
  0041b482: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0041b486: 89 55 e0                                        mov    DWORD PTR [ebp-0x20],edx
  0041b489: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b48c: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0041b48f: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b491: 52                                              push   edx
  0041b492: 8d 8d 78 ff ff ff                               lea    ecx,[ebp-0x88]
  0041b498: 51                                              push   ecx
  0041b499: 8b cf                                           mov    ecx,edi
  0041b49b: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b49e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041b4a1: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b4a3: 52                                              push   edx
  0041b4a4: 8d 8d 6c fe ff ff                               lea    ecx,[ebp-0x194]
  0041b4aa: 51                                              push   ecx
  0041b4ab: 8b cf                                           mov    ecx,edi
  0041b4ad: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b4b0: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041b4b2: 8b 07                                           mov    eax,DWORD PTR [edi]
  0041b4b4: 52                                              push   edx
  0041b4b5: 8b cf                                           mov    ecx,edi
  0041b4b7: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041b4bd: 8b 8d 6c ff ff ff                               mov    ecx,DWORD PTR [ebp-0x94]
  0041b4c3: 25 ff ff 00 00                                  and    eax,0xffff
  0041b4c8: 50                                              push   eax
  0041b4c9: 51                                              push   ecx
  0041b4ca: 8b cf                                           mov    ecx,edi
  0041b4cc: e8 2f 02 07 00                                  call   0x48b700
  0041b4d1: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b4d3: 50                                              push   eax
  0041b4d4: 53                                              push   ebx
  0041b4d5: 8d 85 90 fe ff ff                               lea    eax,[ebp-0x170]
  0041b4db: 50                                              push   eax
  0041b4dc: 8b ce                                           mov    ecx,esi
  0041b4de: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b4e1: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0041b4e4: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b4e6: 51                                              push   ecx
  0041b4e7: 8d 85 84 fe ff ff                               lea    eax,[ebp-0x17c]
  0041b4ed: 50                                              push   eax
  0041b4ee: 8b ce                                           mov    ecx,esi
  0041b4f0: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b4f3: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041b4f6: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b4f8: 51                                              push   ecx
  0041b4f9: 8d 85 cc fe ff ff                               lea    eax,[ebp-0x134]
  0041b4ff: 50                                              push   eax
  0041b500: 8b ce                                           mov    ecx,esi
  0041b502: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b505: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b507: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b509: 51                                              push   ecx
  0041b50a: 8b ce                                           mov    ecx,esi
  0041b50c: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041b512: 8b ce                                           mov    ecx,esi
  0041b514: 25 ff ff 00 00                                  and    eax,0xffff
  0041b519: 50                                              push   eax
  0041b51a: 8b 85 dc fe ff ff                               mov    eax,DWORD PTR [ebp-0x124]
  0041b520: 50                                              push   eax
  0041b521: e8 da 01 07 00                                  call   0x48b700
  0041b526: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0041b529: 50                                              push   eax
  0041b52a: 51                                              push   ecx
  0041b52b: 68 98 23 50 00                                  push   0x502398
  0041b530: 6a 40                                           push   0x40
  0041b532: 33 db                                           xor    ebx,ebx
  0041b534: 53                                              push   ebx
  0041b535: e8 d6 67 05 00                                  call   0x471d10
  0041b53a: 83 c4 04                                        add    esp,0x4
  0041b53d: 50                                              push   eax
  0041b53e: e8 ad 35 0b 00                                  call   0x4ceaf0
  0041b543: 83 c4 44                                        add    esp,0x44
  0041b546: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  0041b54c: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0041b550: e8 eb 64 0b 00                                  call   0x4d1a40
  0041b555: 8d 8d 70 ff ff ff                               lea    ecx,[ebp-0x90]
  0041b55b: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0041b55f: e8 dc 64 0b 00                                  call   0x4d1a40
  0041b564: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041b567: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0041b56b: e8 d0 64 0b 00                                  call   0x4d1a40
  0041b570: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041b577: 8d 4d 8c                                        lea    ecx,[ebp-0x74]
  0041b57a: e9 cb 01 00 00                                  jmp    0x41b74a
  0041b57f: 53                                              push   ebx
  0041b580: e8 8b 67 05 00                                  call   0x471d10
  0041b585: 83 c4 04                                        add    esp,0x4
  0041b588: 85 c0                                           test   eax,eax
  0041b58a: 0f 84 bf 01 00 00                               je     0x41b74f
  0041b590: 8b 1f                                           mov    ebx,DWORD PTR [edi]
  0041b592: e8 c9 24 02 00                                  call   0x43da60
  0041b597: 8d 95 6c ff ff ff                               lea    edx,[ebp-0x94]
  0041b59d: 8b cf                                           mov    ecx,edi
  0041b59f: 50                                              push   eax
  0041b5a0: 52                                              push   edx
  0041b5a1: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041b5a4: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041b5a6: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b5a9: 8d 85 74 ff ff ff                               lea    eax,[ebp-0x8c]
  0041b5af: 50                                              push   eax
  0041b5b0: c7 45 fc 06 00 00 00                            mov    DWORD PTR [ebp-0x4],0x6
  0041b5b7: e8 a4 d6 03 00                                  call   0x458c60
  0041b5bc: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b5be: 8d 95 70 ff ff ff                               lea    edx,[ebp-0x90]
  0041b5c4: 89 4d 8c                                        mov    DWORD PTR [ebp-0x74],ecx
  0041b5c7: 52                                              push   edx
  0041b5c8: 8b ce                                           mov    ecx,esi
  0041b5ca: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0041b5ce: e8 7d 24 00 00                                  call   0x41da50
  0041b5d3: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b5d5: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b5d7: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0041b5da: 53                                              push   ebx
  0041b5db: 8d 85 cc fe ff ff                               lea    eax,[ebp-0x134]
  0041b5e1: 50                                              push   eax
  0041b5e2: 8b ce                                           mov    ecx,esi
  0041b5e4: c6 45 fc 08                                     mov    BYTE PTR [ebp-0x4],0x8
  0041b5e8: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b5eb: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0041b5ee: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b5f0: 51                                              push   ecx
  0041b5f1: 8d 85 84 fe ff ff                               lea    eax,[ebp-0x17c]
  0041b5f7: 50                                              push   eax
  0041b5f8: 8b ce                                           mov    ecx,esi
  0041b5fa: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b5fd: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041b600: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b602: 51                                              push   ecx
  0041b603: 8d 85 90 fe ff ff                               lea    eax,[ebp-0x170]
  0041b609: 50                                              push   eax
  0041b60a: 8b ce                                           mov    ecx,esi
  0041b60c: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041b60f: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041b611: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b613: 51                                              push   ecx
  0041b614: 8b ce                                           mov    ecx,esi
  0041b616: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041b61c: 8b ce                                           mov    ecx,esi
  0041b61e: 25 ff ff 00 00                                  and    eax,0xffff
  0041b623: 50                                              push   eax
  0041b624: 8b 45 8c                                        mov    eax,DWORD PTR [ebp-0x74]
  0041b627: 50                                              push   eax
  0041b628: e8 d3 00 07 00                                  call   0x48b700
  0041b62d: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0041b630: 50                                              push   eax
  0041b631: 51                                              push   ecx
  0041b632: 68 48 23 50 00                                  push   0x502348
  0041b637: 6a 40                                           push   0x40
  0041b639: 33 db                                           xor    ebx,ebx
  0041b63b: 53                                              push   ebx
  0041b63c: e8 cf 66 05 00                                  call   0x471d10
  0041b641: 83 c4 04                                        add    esp,0x4
  0041b644: 50                                              push   eax
  0041b645: e8 a6 34 0b 00                                  call   0x4ceaf0
  0041b64a: 83 c4 2c                                        add    esp,0x2c
  0041b64d: 8d 8d 70 ff ff ff                               lea    ecx,[ebp-0x90]
  0041b653: c6 45 fc 07                                     mov    BYTE PTR [ebp-0x4],0x7
  0041b657: e8 e4 63 0b 00                                  call   0x4d1a40
  0041b65c: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  0041b662: c6 45 fc 06                                     mov    BYTE PTR [ebp-0x4],0x6
  0041b666: e8 d5 63 0b 00                                  call   0x4d1a40
  0041b66b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041b672: 8d 8d 6c ff ff ff                               lea    ecx,[ebp-0x94]
  0041b678: e9 cd 00 00 00                                  jmp    0x41b74a
  0041b67d: 53                                              push   ebx
  0041b67e: e8 8d 66 05 00                                  call   0x471d10
  0041b683: 83 c4 04                                        add    esp,0x4
  0041b686: 85 c0                                           test   eax,eax
  0041b688: 0f 84 c1 00 00 00                               je     0x41b74f
  0041b68e: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0041b691: 8d 95 74 ff ff ff                               lea    edx,[ebp-0x8c]
  0041b697: 52                                              push   edx
  0041b698: e8 c3 d5 03 00                                  call   0x458c60
  0041b69d: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041b69f: 8d 8d 70 ff ff ff                               lea    ecx,[ebp-0x90]
  0041b6a5: 51                                              push   ecx
  0041b6a6: 8b ce                                           mov    ecx,esi
  0041b6a8: c7 45 fc 09 00 00 00                            mov    DWORD PTR [ebp-0x4],0x9
  0041b6af: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041b6b2: e8 99 23 00 00                                  call   0x41da50
  0041b6b7: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041b6b9: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b6bb: 8d 8d cc fe ff ff                               lea    ecx,[ebp-0x134]
  0041b6c1: 51                                              push   ecx
  0041b6c2: 8b ce                                           mov    ecx,esi
  0041b6c4: c6 45 fc 0a                                     mov    BYTE PTR [ebp-0x4],0xa
  0041b6c8: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  0041b6cb: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b6ce: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0041b6d1: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b6d3: 52                                              push   edx
  0041b6d4: 8d 8d 84 fe ff ff                               lea    ecx,[ebp-0x17c]
  0041b6da: 51                                              push   ecx
  0041b6db: 8b ce                                           mov    ecx,esi
  0041b6dd: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b6e0: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041b6e3: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b6e5: 52                                              push   edx
  0041b6e6: 8d 8d 90 fe ff ff                               lea    ecx,[ebp-0x170]
  0041b6ec: 51                                              push   ecx
  0041b6ed: 8b ce                                           mov    ecx,esi
  0041b6ef: ff 50 1c                                        call   DWORD PTR [eax+0x1c]
  0041b6f2: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041b6f4: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b6f6: 52                                              push   edx
  0041b6f7: 8b ce                                           mov    ecx,esi
  0041b6f9: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041b6ff: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041b702: 25 ff ff 00 00                                  and    eax,0xffff
  0041b707: 50                                              push   eax
  0041b708: 51                                              push   ecx
  0041b709: 8b ce                                           mov    ecx,esi
  0041b70b: e8 f0 ff 06 00                                  call   0x48b700
  0041b710: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  0041b713: 50                                              push   eax
  0041b714: 52                                              push   edx
  0041b715: 68 f0 22 50 00                                  push   0x5022f0
  0041b71a: 6a 04                                           push   0x4
  0041b71c: 53                                              push   ebx
  0041b71d: e8 ee 65 05 00                                  call   0x471d10
  0041b722: 83 c4 04                                        add    esp,0x4
  0041b725: 50                                              push   eax
  0041b726: e8 c5 33 0b 00                                  call   0x4ceaf0
  0041b72b: 83 c4 28                                        add    esp,0x28
  0041b72e: 8d 8d 70 ff ff ff                               lea    ecx,[ebp-0x90]
  0041b734: c6 45 fc 09                                     mov    BYTE PTR [ebp-0x4],0x9
  0041b738: e8 03 63 0b 00                                  call   0x4d1a40
  0041b73d: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041b744: 8d 8d 74 ff ff ff                               lea    ecx,[ebp-0x8c]
  0041b74a: e8 f1 62 0b 00                                  call   0x4d1a40
  0041b74f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b752: e8 07 63 0b 00                                  call   0x4d1a5e
  0041b757: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b75a: c7 45 fc 0b 00 00 00                            mov    DWORD PTR [ebp-0x4],0xb
  0041b761: e8 f8 62 0b 00                                  call   0x4d1a5e
  0041b766: 53                                              push   ebx
  0041b767: 53                                              push   ebx
  0041b768: 53                                              push   ebx
  0041b769: 6a 0d                                           push   0xd
  0041b76b: 8b ce                                           mov    ecx,esi
  0041b76d: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0041b771: e8 ca 17 07 00                                  call   0x48cf40
  0041b776: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041b778: 8b ce                                           mov    ecx,esi
  0041b77a: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041b780: 66 3d 01 00                                     cmp    ax,0x1
  0041b784: 0f 86 e4 03 00 00                               jbe    0x41bb6e
  0041b78a: 68 dc 22 50 00                                  push   0x5022dc
  0041b78f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b792: e8 c1 62 0b 00                                  call   0x4d1a58
  0041b797: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b799: 8b ce                                           mov    ecx,esi
  0041b79b: ff 92 3c 01 00 00                               call   DWORD PTR [edx+0x13c]
  0041b7a1: 25 ff ff 00 00                                  and    eax,0xffff
  0041b7a6: 50                                              push   eax
  0041b7a7: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b7aa: 68 cc 22 50 00                                  push   0x5022cc
  0041b7af: 50                                              push   eax
  0041b7b0: e8 df 62 0b 00                                  call   0x4d1a94
  0041b7b5: 83 c4 0c                                        add    esp,0xc
  0041b7b8: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b7bb: 51                                              push   ecx
  0041b7bc: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b7bf: e8 f4 62 0b 00                                  call   0x4d1ab8
  0041b7c4: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b7c6: 8b ce                                           mov    ecx,esi
  0041b7c8: ff 92 cc 00 00 00                               call   DWORD PTR [edx+0xcc]
  0041b7ce: 50                                              push   eax
  0041b7cf: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b7d2: 68 c0 22 50 00                                  push   0x5022c0
  0041b7d7: 50                                              push   eax
  0041b7d8: e8 b7 62 0b 00                                  call   0x4d1a94
  0041b7dd: 83 c4 0c                                        add    esp,0xc
  0041b7e0: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b7e3: 51                                              push   ecx
  0041b7e4: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b7e7: e8 cc 62 0b 00                                  call   0x4d1ab8
  0041b7ec: 8b ce                                           mov    ecx,esi
  0041b7ee: e8 bd 29 07 00                                  call   0x48e1b0
  0041b7f3: 8b ce                                           mov    ecx,esi
  0041b7f5: 25 ff ff 00 00                                  and    eax,0xffff
  0041b7fa: 50                                              push   eax
  0041b7fb: e8 60 2a 07 00                                  call   0x48e260
  0041b800: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041b803: 25 ff ff 00 00                                  and    eax,0xffff
  0041b808: 50                                              push   eax
  0041b809: 68 b0 22 50 00                                  push   0x5022b0
  0041b80e: 52                                              push   edx
  0041b80f: e8 80 62 0b 00                                  call   0x4d1a94
  0041b814: 83 c4 10                                        add    esp,0x10
  0041b817: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b81a: 50                                              push   eax
  0041b81b: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b81e: e8 95 62 0b 00                                  call   0x4d1ab8
  0041b823: 8b ce                                           mov    ecx,esi
  0041b825: e8 66 29 07 00                                  call   0x48e190
  0041b82a: 8b ce                                           mov    ecx,esi
  0041b82c: 25 ff ff 00 00                                  and    eax,0xffff
  0041b831: 50                                              push   eax
  0041b832: e8 09 2a 07 00                                  call   0x48e240
  0041b837: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b83a: 25 ff ff 00 00                                  and    eax,0xffff
  0041b83f: 50                                              push   eax
  0041b840: 68 a0 22 50 00                                  push   0x5022a0
  0041b845: 51                                              push   ecx
  0041b846: e8 49 62 0b 00                                  call   0x4d1a94
  0041b84b: 83 c4 10                                        add    esp,0x10
  0041b84e: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041b851: 52                                              push   edx
  0041b852: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b855: e8 5e 62 0b 00                                  call   0x4d1ab8
  0041b85a: 8b ce                                           mov    ecx,esi
  0041b85c: e8 0f 29 07 00                                  call   0x48e170
  0041b861: 8b ce                                           mov    ecx,esi
  0041b863: 25 ff ff 00 00                                  and    eax,0xffff
  0041b868: 50                                              push   eax
  0041b869: e8 c2 29 07 00                                  call   0x48e230
  0041b86e: 25 ff ff 00 00                                  and    eax,0xffff
  0041b873: 50                                              push   eax
  0041b874: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b877: 68 90 22 50 00                                  push   0x502290
  0041b87c: 50                                              push   eax
  0041b87d: e8 12 62 0b 00                                  call   0x4d1a94
  0041b882: 83 c4 10                                        add    esp,0x10
  0041b885: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b888: 51                                              push   ecx
  0041b889: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b88c: e8 27 62 0b 00                                  call   0x4d1ab8
  0041b891: 8b ce                                           mov    ecx,esi
  0041b893: e8 b8 28 07 00                                  call   0x48e150
  0041b898: 8b ce                                           mov    ecx,esi
  0041b89a: 25 ff ff 00 00                                  and    eax,0xffff
  0041b89f: 50                                              push   eax
  0041b8a0: e8 ab 29 07 00                                  call   0x48e250
  0041b8a5: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041b8a8: 25 ff ff 00 00                                  and    eax,0xffff
  0041b8ad: 50                                              push   eax
  0041b8ae: 68 80 22 50 00                                  push   0x502280
  0041b8b3: 52                                              push   edx
  0041b8b4: e8 db 61 0b 00                                  call   0x4d1a94
  0041b8b9: 83 c4 10                                        add    esp,0x10
  0041b8bc: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041b8bf: 50                                              push   eax
  0041b8c0: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b8c3: e8 f0 61 0b 00                                  call   0x4d1ab8
  0041b8c8: 8b ce                                           mov    ecx,esi
  0041b8ca: e8 01 29 07 00                                  call   0x48e1d0
  0041b8cf: 8b ce                                           mov    ecx,esi
  0041b8d1: 25 ff ff 00 00                                  and    eax,0xffff
  0041b8d6: 50                                              push   eax
  0041b8d7: e8 94 29 07 00                                  call   0x48e270
  0041b8dc: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b8df: 25 ff ff 00 00                                  and    eax,0xffff
  0041b8e4: 50                                              push   eax
  0041b8e5: 68 70 22 50 00                                  push   0x502270
  0041b8ea: 51                                              push   ecx
  0041b8eb: e8 a4 61 0b 00                                  call   0x4d1a94
  0041b8f0: 83 c4 10                                        add    esp,0x10
  0041b8f3: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041b8f6: 52                                              push   edx
  0041b8f7: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b8fa: e8 b9 61 0b 00                                  call   0x4d1ab8
  0041b8ff: 8b 8e 9c 01 00 00                               mov    ecx,DWORD PTR [esi+0x19c]
  0041b905: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041b907: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0041b90a: 53                                              push   ebx
  0041b90b: e8 00 64 05 00                                  call   0x471d10
  0041b910: 83 c4 04                                        add    esp,0x4
  0041b913: 85 c0                                           test   eax,eax
  0041b915: 74 18                                           je     0x41b92f
  0041b917: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0041b91a: 51                                              push   ecx
  0041b91b: 6a 08                                           push   0x8
  0041b91d: 53                                              push   ebx
  0041b91e: e8 ed 63 05 00                                  call   0x471d10
  0041b923: 83 c4 04                                        add    esp,0x4
  0041b926: 50                                              push   eax
  0041b927: e8 c4 31 0b 00                                  call   0x4ceaf0
  0041b92c: 83 c4 0c                                        add    esp,0xc
  0041b92f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041b932: e8 69 61 0b 00                                  call   0x4d1aa0
  0041b937: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b93a: e8 61 61 0b 00                                  call   0x4d1aa0
  0041b93f: 68 60 22 50 00                                  push   0x502260
  0041b944: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b947: e8 06 61 0b 00                                  call   0x4d1a52
  0041b94c: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041b952: 8b 48 38                                        mov    ecx,DWORD PTR [eax+0x38]
  0041b955: 3b cb                                           cmp    ecx,ebx
  0041b957: 75 12                                           jne    0x41b96b
  0041b959: 68 58 22 50 00                                  push   0x502258
  0041b95e: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b961: e8 f2 60 0b 00                                  call   0x4d1a58
  0041b966: e9 db 00 00 00                                  jmp    0x41ba46
  0041b96b: 8b 50 24                                        mov    edx,DWORD PTR [eax+0x24]
  0041b96e: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  0041b971: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0041b974: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0041b977: c6 40 34 08                                     mov    BYTE PTR [eax+0x34],0x8
  0041b97b: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041b981: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0041b984: 74 0a                                           je     0x41b990
  0041b986: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041b989: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041b98b: 89 50 20                                        mov    DWORD PTR [eax+0x20],edx
  0041b98e: eb 07                                           jmp    0x41b997
  0041b990: c7 40 40 01 00 00 00                            mov    DWORD PTR [eax+0x40],0x1
  0041b997: 39 58 20                                        cmp    DWORD PTR [eax+0x20],ebx
  0041b99a: 0f 84 9a 00 00 00                               je     0x41ba3a
  0041b9a0: 8b 86 9c 01 00 00                               mov    eax,DWORD PTR [esi+0x19c]
  0041b9a6: 8b 48 20                                        mov    ecx,DWORD PTR [eax+0x20]
  0041b9a9: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0041b9ac: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041b9ae: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041b9b0: 8b ce                                           mov    ecx,esi
  0041b9b2: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041b9b5: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041b9bb: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041b9be: 50                                              push   eax
  0041b9bf: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0041b9c2: 50                                              push   eax
  0041b9c3: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041b9c6: 50                                              push   eax
  0041b9c7: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b9ca: c6 45 fc 0d                                     mov    BYTE PTR [ebp-0x4],0xd
  0041b9ce: e8 e5 60 0b 00                                  call   0x4d1ab8
  0041b9d3: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041b9d6: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0041b9da: e8 61 60 0b 00                                  call   0x4d1a40
  0041b9df: 68 00 20 50 00                                  push   0x502000
  0041b9e4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041b9e7: e8 66 60 0b 00                                  call   0x4d1a52
  0041b9ec: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0041b9ef: 8b c3                                           mov    eax,ebx
  0041b9f1: 99                                              cdq
  0041b9f2: b9 0a 00 00 00                                  mov    ecx,0xa
  0041b9f7: f7 f9                                           idiv   ecx
  0041b9f9: 85 d2                                           test   edx,edx
  0041b9fb: 75 32                                           jne    0x41ba2f
  0041b9fd: 85 db                                           test   ebx,ebx
  0041b9ff: 74 2e                                           je     0x41ba2f
  0041ba01: 52                                              push   edx
  0041ba02: e8 09 63 05 00                                  call   0x471d10
  0041ba07: 83 c4 04                                        add    esp,0x4
  0041ba0a: 85 c0                                           test   eax,eax
  0041ba0c: 74 19                                           je     0x41ba27
  0041ba0e: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0041ba11: 52                                              push   edx
  0041ba12: 6a 08                                           push   0x8
  0041ba14: 6a 00                                           push   0x0
  0041ba16: e8 f5 62 05 00                                  call   0x471d10
  0041ba1b: 83 c4 04                                        add    esp,0x4
  0041ba1e: 50                                              push   eax
  0041ba1f: e8 cc 30 0b 00                                  call   0x4ceaf0
  0041ba24: 83 c4 0c                                        add    esp,0xc
  0041ba27: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041ba2a: e8 71 60 0b 00                                  call   0x4d1aa0
  0041ba2f: 43                                              inc    ebx
  0041ba30: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  0041ba33: 33 db                                           xor    ebx,ebx
  0041ba35: e9 41 ff ff ff                                  jmp    0x41b97b
  0041ba3a: 39 58 40                                        cmp    DWORD PTR [eax+0x40],ebx
  0041ba3d: 74 04                                           je     0x41ba43
  0041ba3f: c6 40 34 07                                     mov    BYTE PTR [eax+0x34],0x7
  0041ba43: 89 58 40                                        mov    DWORD PTR [eax+0x40],ebx
  0041ba46: 8b 8e 9c 01 00 00                               mov    ecx,DWORD PTR [esi+0x19c]
  0041ba4c: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0041ba4e: ff 50 08                                        call   DWORD PTR [eax+0x8]
  0041ba51: 53                                              push   ebx
  0041ba52: e8 b9 62 05 00                                  call   0x471d10
  0041ba57: 83 c4 04                                        add    esp,0x4
  0041ba5a: 85 c0                                           test   eax,eax
  0041ba5c: 74 18                                           je     0x41ba76
  0041ba5e: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0041ba61: 51                                              push   ecx
  0041ba62: 6a 08                                           push   0x8
  0041ba64: 53                                              push   ebx
  0041ba65: e8 a6 62 05 00                                  call   0x471d10
  0041ba6a: 83 c4 04                                        add    esp,0x4
  0041ba6d: 50                                              push   eax
  0041ba6e: e8 7d 30 0b 00                                  call   0x4ceaf0
  0041ba73: 83 c4 0c                                        add    esp,0xc
  0041ba76: 68 48 22 50 00                                  push   0x502248
  0041ba7b: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041ba7e: e8 d5 5f 0b 00                                  call   0x4d1a58
  0041ba83: 8d 96 a0 01 00 00                               lea    edx,[esi+0x1a0]
  0041ba89: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  0041ba8c: 89 55 0c                                        mov    DWORD PTR [ebp+0xc],edx
  0041ba8f: c7 45 e8 10 00 00 00                            mov    DWORD PTR [ebp-0x18],0x10
  0041ba96: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041ba99: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041ba9b: 3b c3                                           cmp    eax,ebx
  0041ba9d: 0f 84 88 00 00 00                               je     0x41bb2b
  0041baa3: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041baa5: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041baa7: 8b ce                                           mov    ecx,esi
  0041baa9: ff 92 94 01 00 00                               call   DWORD PTR [edx+0x194]
  0041baaf: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041bab2: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0041bab4: 50                                              push   eax
  0041bab5: 8d 45 8c                                        lea    eax,[ebp-0x74]
  0041bab8: 50                                              push   eax
  0041bab9: ff 53 48                                        call   DWORD PTR [ebx+0x48]
  0041babc: 50                                              push   eax
  0041babd: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bac0: c6 45 fc 0e                                     mov    BYTE PTR [ebp-0x4],0xe
  0041bac4: e8 ef 5f 0b 00                                  call   0x4d1ab8
  0041bac9: 8d 4d 8c                                        lea    ecx,[ebp-0x74]
  0041bacc: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0041bad0: e8 6b 5f 0b 00                                  call   0x4d1a40
  0041bad5: 68 00 20 50 00                                  push   0x502000
  0041bada: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041badd: e8 70 5f 0b 00                                  call   0x4d1a52
  0041bae2: 8b 5d e0                                        mov    ebx,DWORD PTR [ebp-0x20]
  0041bae5: 8b c3                                           mov    eax,ebx
  0041bae7: 99                                              cdq
  0041bae8: b9 0a 00 00 00                                  mov    ecx,0xa
  0041baed: f7 f9                                           idiv   ecx
  0041baef: 85 d2                                           test   edx,edx
  0041baf1: 75 32                                           jne    0x41bb25
  0041baf3: 85 db                                           test   ebx,ebx
  0041baf5: 74 2e                                           je     0x41bb25
  0041baf7: 52                                              push   edx
  0041baf8: e8 13 62 05 00                                  call   0x471d10
  0041bafd: 83 c4 04                                        add    esp,0x4
  0041bb00: 85 c0                                           test   eax,eax
  0041bb02: 74 19                                           je     0x41bb1d
  0041bb04: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0041bb07: 52                                              push   edx
  0041bb08: 6a 08                                           push   0x8
  0041bb0a: 6a 00                                           push   0x0
  0041bb0c: e8 ff 61 05 00                                  call   0x471d10
  0041bb11: 83 c4 04                                        add    esp,0x4
  0041bb14: 50                                              push   eax
  0041bb15: e8 d6 2f 0b 00                                  call   0x4ceaf0
  0041bb1a: 83 c4 0c                                        add    esp,0xc
  0041bb1d: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bb20: e8 7b 5f 0b 00                                  call   0x4d1aa0
  0041bb25: 43                                              inc    ebx
  0041bb26: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  0041bb29: 33 db                                           xor    ebx,ebx
  0041bb2b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041bb2e: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0041bb31: 83 c1 04                                        add    ecx,0x4
  0041bb34: 48                                              dec    eax
  0041bb35: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0041bb38: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0041bb3b: 0f 85 55 ff ff ff                               jne    0x41ba96
  0041bb41: 53                                              push   ebx
  0041bb42: e8 c9 61 05 00                                  call   0x471d10
  0041bb47: 83 c4 04                                        add    esp,0x4
  0041bb4a: 85 c0                                           test   eax,eax
  0041bb4c: 74 18                                           je     0x41bb66
  0041bb4e: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0041bb51: 50                                              push   eax
  0041bb52: 6a 08                                           push   0x8
  0041bb54: 53                                              push   ebx
  0041bb55: e8 b6 61 05 00                                  call   0x471d10
  0041bb5a: 83 c4 04                                        add    esp,0x4
  0041bb5d: 50                                              push   eax
  0041bb5e: e8 8d 2f 0b 00                                  call   0x4ceaf0
  0041bb63: 83 c4 0c                                        add    esp,0xc
  0041bb66: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bb69: e8 32 5f 0b 00                                  call   0x4d1aa0
  0041bb6e: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041bb70: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  0041bb73: 50                                              push   eax
  0041bb74: 8b ce                                           mov    ecx,esi
  0041bb76: ff 52 1c                                        call   DWORD PTR [edx+0x1c]
  0041bb79: 8b 8e 50 01 00 00                               mov    ecx,DWORD PTR [esi+0x150]
  0041bb7f: 8b 96 54 01 00 00                               mov    edx,DWORD PTR [esi+0x154]
  0041bb85: 8d 85 30 ff ff ff                               lea    eax,[ebp-0xd0]
  0041bb8b: 50                                              push   eax
  0041bb8c: 89 4d 88                                        mov    DWORD PTR [ebp-0x78],ecx
  0041bb8f: 89 55 8c                                        mov    DWORD PTR [ebp-0x74],edx
  0041bb92: 89 9d e0 fe ff ff                               mov    DWORD PTR [ebp-0x120],ebx
  0041bb98: c7 85 28 ff ff ff 8c e5 4d 00                   mov    DWORD PTR [ebp-0xd8],0x4de58c
  0041bba2: c7 85 2c ff ff ff ff ff ff ff                   mov    DWORD PTR [ebp-0xd4],0xffffffff
  0041bbac: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0041bbb2: 89 9d 4c ff ff ff                               mov    DWORD PTR [ebp-0xb4],ebx
  0041bbb8: 89 9d 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],ebx
  0041bbbe: 89 9d 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],ebx
  0041bbc4: 89 9d 58 ff ff ff                               mov    DWORD PTR [ebp-0xa8],ebx
  0041bbca: c7 85 28 ff ff ff 6c e6 4d 00                   mov    DWORD PTR [ebp-0xd8],0x4de66c
  0041bbd4: 89 9d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ebx
  0041bbda: c6 85 5c ff ff ff 08                            mov    BYTE PTR [ebp-0xa4],0x8
  0041bbe1: 89 9d 60 ff ff ff                               mov    DWORD PTR [ebp-0xa0],ebx
  0041bbe7: 8d 8d ec fe ff ff                               lea    ecx,[ebp-0x114]
  0041bbed: 51                                              push   ecx
  0041bbee: c7 85 e4 fe ff ff 8c e5 4d 00                   mov    DWORD PTR [ebp-0x11c],0x4de58c
  0041bbf8: c7 85 e8 fe ff ff ff ff ff ff                   mov    DWORD PTR [ebp-0x118],0xffffffff
  0041bc02: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0041bc08: 89 9d 08 ff ff ff                               mov    DWORD PTR [ebp-0xf8],ebx
  0041bc0e: 89 9d 0c ff ff ff                               mov    DWORD PTR [ebp-0xf4],ebx
  0041bc14: 89 9d 10 ff ff ff                               mov    DWORD PTR [ebp-0xf0],ebx
  0041bc1a: 89 9d 14 ff ff ff                               mov    DWORD PTR [ebp-0xec],ebx
  0041bc20: c7 85 e4 fe ff ff 6c e6 4d 00                   mov    DWORD PTR [ebp-0x11c],0x4de66c
  0041bc2a: 89 9d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ebx
  0041bc30: c6 85 18 ff ff ff 08                            mov    BYTE PTR [ebp-0xe8],0x8
  0041bc37: 89 9d 1c ff ff ff                               mov    DWORD PTR [ebp-0xe4],ebx
  0041bc3d: 8d 95 e0 fe ff ff                               lea    edx,[ebp-0x120]
  0041bc43: 52                                              push   edx
  0041bc44: 8d 85 28 ff ff ff                               lea    eax,[ebp-0xd8]
  0041bc4a: 50                                              push   eax
  0041bc4b: 8d 8d e4 fe ff ff                               lea    ecx,[ebp-0x11c]
  0041bc51: 51                                              push   ecx
  0041bc52: 57                                              push   edi
  0041bc53: 56                                              push   esi
  0041bc54: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041bc58: e8 c3 cd 01 00                                  call   0x438a20
  0041bc5d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041bc5f: 83 c4 14                                        add    esp,0x14
  0041bc62: 8b ce                                           mov    ecx,esi
  0041bc64: ff 92 04 01 00 00                               call   DWORD PTR [edx+0x104]
  0041bc6a: 8b 8d e0 fe ff ff                               mov    ecx,DWORD PTR [ebp-0x120]
  0041bc70: 3b c8                                           cmp    ecx,eax
  0041bc72: 73 11                                           jae    0x41bc85
  0041bc74: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041bc76: 2b c1                                           sub    eax,ecx
  0041bc78: 6a 01                                           push   0x1
  0041bc7a: 50                                              push   eax
  0041bc7b: 8b ce                                           mov    ecx,esi
  0041bc7d: ff 92 08 01 00 00                               call   DWORD PTR [edx+0x108]
  0041bc83: eb 0d                                           jmp    0x41bc92
  0041bc85: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041bc87: 6a 01                                           push   0x1
  0041bc89: 53                                              push   ebx
  0041bc8a: 8b ce                                           mov    ecx,esi
  0041bc8c: ff 90 08 01 00 00                               call   DWORD PTR [eax+0x108]
  0041bc92: 8b 8d e0 fe ff ff                               mov    ecx,DWORD PTR [ebp-0x120]
  0041bc98: 51                                              push   ecx
  0041bc99: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041bc9c: 68 28 22 50 00                                  push   0x502228
  0041bca1: 52                                              push   edx
  0041bca2: e8 ed 5d 0b 00                                  call   0x4d1a94
  0041bca7: 83 c4 0c                                        add    esp,0xc
  0041bcaa: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bcad: e8 ee 5d 0b 00                                  call   0x4d1aa0
  0041bcb2: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bcb5: e8 e6 5d 0b 00                                  call   0x4d1aa0
  0041bcba: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041bcbc: 8b ce                                           mov    ecx,esi
  0041bcbe: ff 90 3c 01 00 00                               call   DWORD PTR [eax+0x13c]
  0041bcc4: 66 3d 01 00                                     cmp    ax,0x1
  0041bcc8: 0f 86 7a 02 00 00                               jbe    0x41bf48
  0041bcce: 8b 96 50 01 00 00                               mov    edx,DWORD PTR [esi+0x150]
  0041bcd4: 8b 45 88                                        mov    eax,DWORD PTR [ebp-0x78]
  0041bcd7: 2b c2                                           sub    eax,edx
  0041bcd9: 50                                              push   eax
  0041bcda: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bcdd: 68 04 22 50 00                                  push   0x502204
  0041bce2: 51                                              push   ecx
  0041bce3: e8 ac 5d 0b 00                                  call   0x4d1a94
  0041bce8: 83 c4 0c                                        add    esp,0xc
  0041bceb: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041bcee: 52                                              push   edx
  0041bcef: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bcf2: e8 c1 5d 0b 00                                  call   0x4d1ab8
  0041bcf7: 68 e8 21 50 00                                  push   0x5021e8
  0041bcfc: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bcff: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  0041bd02: e8 4b 5d 0b 00                                  call   0x4d1a52
  0041bd07: 39 9d 1c ff ff ff                               cmp    DWORD PTR [ebp-0xe4],ebx
  0041bd0d: 75 12                                           jne    0x41bd21
  0041bd0f: 68 e0 21 50 00                                  push   0x5021e0
  0041bd14: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bd17: e8 36 5d 0b 00                                  call   0x4d1a52
  0041bd1c: e9 ec 00 00 00                                  jmp    0x41be0d
  0041bd21: 8b 85 08 ff ff ff                               mov    eax,DWORD PTR [ebp-0xf8]
  0041bd27: 33 c9                                           xor    ecx,ecx
  0041bd29: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041bd2f: 89 8d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ecx
  0041bd35: c6 85 18 ff ff ff 08                            mov    BYTE PTR [ebp-0xe8],0x8
  0041bd3c: 3b cb                                           cmp    ecx,ebx
  0041bd3e: 74 0a                                           je     0x41bd4a
  0041bd40: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041bd42: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041bd48: eb 0b                                           jmp    0x41bd55
  0041bd4a: b9 01 00 00 00                                  mov    ecx,0x1
  0041bd4f: 89 8d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ecx
  0041bd55: 3b c3                                           cmp    eax,ebx
  0041bd57: 0f 84 9f 00 00 00                               je     0x41bdfc
  0041bd5d: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041bd60: 8b 38                                           mov    edi,DWORD PTR [eax]
  0041bd62: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041bd65: e8 f6 1c 02 00                                  call   0x43da60
  0041bd6a: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041bd6d: 50                                              push   eax
  0041bd6e: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0041bd71: 50                                              push   eax
  0041bd72: ff 57 48                                        call   DWORD PTR [edi+0x48]
  0041bd75: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041bd77: 51                                              push   ecx
  0041bd78: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0041bd7b: 68 d8 21 50 00                                  push   0x5021d8
  0041bd80: 52                                              push   edx
  0041bd81: c6 45 fc 11                                     mov    BYTE PTR [ebp-0x4],0x11
  0041bd85: e8 0a 5d 0b 00                                  call   0x4d1a94
  0041bd8a: 83 c4 0c                                        add    esp,0xc
  0041bd8d: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041bd90: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041bd94: e8 a7 5c 0b 00                                  call   0x4d1a40
  0041bd99: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041bd9c: 50                                              push   eax
  0041bd9d: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bda0: e8 13 5d 0b 00                                  call   0x4d1ab8
  0041bda5: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041bda8: 8b c7                                           mov    eax,edi
  0041bdaa: 99                                              cdq
  0041bdab: b9 0a 00 00 00                                  mov    ecx,0xa
  0041bdb0: f7 f9                                           idiv   ecx
  0041bdb2: 85 d2                                           test   edx,edx
  0041bdb4: 75 31                                           jne    0x41bde7
  0041bdb6: 3b fb                                           cmp    edi,ebx
  0041bdb8: 74 2d                                           je     0x41bde7
  0041bdba: 53                                              push   ebx
  0041bdbb: e8 50 5f 05 00                                  call   0x471d10
  0041bdc0: 83 c4 04                                        add    esp,0x4
  0041bdc3: 85 c0                                           test   eax,eax
  0041bdc5: 74 18                                           je     0x41bddf
  0041bdc7: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0041bdca: 52                                              push   edx
  0041bdcb: 6a 08                                           push   0x8
  0041bdcd: 53                                              push   ebx
  0041bdce: e8 3d 5f 05 00                                  call   0x471d10
  0041bdd3: 83 c4 04                                        add    esp,0x4
  0041bdd6: 50                                              push   eax
  0041bdd7: e8 14 2d 0b 00                                  call   0x4ceaf0
  0041bddc: 83 c4 0c                                        add    esp,0xc
  0041bddf: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bde2: e8 b9 5c 0b 00                                  call   0x4d1aa0
  0041bde7: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041bded: 8b 8d 24 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xdc]
  0041bdf3: 47                                              inc    edi
  0041bdf4: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0041bdf7: e9 40 ff ff ff                                  jmp    0x41bd3c
  0041bdfc: 3b cb                                           cmp    ecx,ebx
  0041bdfe: 74 07                                           je     0x41be07
  0041be00: c6 85 18 ff ff ff 07                            mov    BYTE PTR [ebp-0xe8],0x7
  0041be07: 89 9d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ebx
  0041be0d: 53                                              push   ebx
  0041be0e: 89 5d 0c                                        mov    DWORD PTR [ebp+0xc],ebx
  0041be11: e8 fa 5e 05 00                                  call   0x471d10
  0041be16: 83 c4 04                                        add    esp,0x4
  0041be19: 85 c0                                           test   eax,eax
  0041be1b: 74 18                                           je     0x41be35
  0041be1d: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0041be20: 50                                              push   eax
  0041be21: 6a 08                                           push   0x8
  0041be23: 53                                              push   ebx
  0041be24: e8 e7 5e 05 00                                  call   0x471d10
  0041be29: 83 c4 04                                        add    esp,0x4
  0041be2c: 50                                              push   eax
  0041be2d: e8 be 2c 0b 00                                  call   0x4ceaf0
  0041be32: 83 c4 0c                                        add    esp,0xc
  0041be35: 68 c0 21 50 00                                  push   0x5021c0
  0041be3a: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041be3d: e8 16 5c 0b 00                                  call   0x4d1a58
  0041be42: 39 9d 60 ff ff ff                               cmp    DWORD PTR [ebp-0xa0],ebx
  0041be48: 75 12                                           jne    0x41be5c
  0041be4a: 68 e0 21 50 00                                  push   0x5021e0
  0041be4f: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041be52: e8 fb 5b 0b 00                                  call   0x4d1a52
  0041be57: e9 ec 00 00 00                                  jmp    0x41bf48
  0041be5c: 8b 85 4c ff ff ff                               mov    eax,DWORD PTR [ebp-0xb4]
  0041be62: 33 c9                                           xor    ecx,ecx
  0041be64: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041be6a: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  0041be70: c6 85 5c ff ff ff 08                            mov    BYTE PTR [ebp-0xa4],0x8
  0041be77: 3b cb                                           cmp    ecx,ebx
  0041be79: 74 0a                                           je     0x41be85
  0041be7b: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041be7d: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041be83: eb 0b                                           jmp    0x41be90
  0041be85: b9 01 00 00 00                                  mov    ecx,0x1
  0041be8a: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  0041be90: 3b c3                                           cmp    eax,ebx
  0041be92: 0f 84 9f 00 00 00                               je     0x41bf37
  0041be98: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041be9b: 8b 38                                           mov    edi,DWORD PTR [eax]
  0041be9d: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041bea0: e8 bb 1b 02 00                                  call   0x43da60
  0041bea5: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041bea8: 50                                              push   eax
  0041bea9: 51                                              push   ecx
  0041beaa: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041bead: ff 57 48                                        call   DWORD PTR [edi+0x48]
  0041beb0: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041beb2: 52                                              push   edx
  0041beb3: 8d 45 f0                                        lea    eax,[ebp-0x10]
  0041beb6: 68 d8 21 50 00                                  push   0x5021d8
  0041bebb: 50                                              push   eax
  0041bebc: c6 45 fc 12                                     mov    BYTE PTR [ebp-0x4],0x12
  0041bec0: e8 cf 5b 0b 00                                  call   0x4d1a94
  0041bec5: 83 c4 0c                                        add    esp,0xc
  0041bec8: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041becb: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041becf: e8 6c 5b 0b 00                                  call   0x4d1a40
  0041bed4: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041bed7: 51                                              push   ecx
  0041bed8: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bedb: e8 d8 5b 0b 00                                  call   0x4d1ab8
  0041bee0: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  0041bee3: 8b c7                                           mov    eax,edi
  0041bee5: 99                                              cdq
  0041bee6: b9 0a 00 00 00                                  mov    ecx,0xa
  0041beeb: f7 f9                                           idiv   ecx
  0041beed: 85 d2                                           test   edx,edx
  0041beef: 75 31                                           jne    0x41bf22
  0041bef1: 3b fb                                           cmp    edi,ebx
  0041bef3: 74 2d                                           je     0x41bf22
  0041bef5: 53                                              push   ebx
  0041bef6: e8 15 5e 05 00                                  call   0x471d10
  0041befb: 83 c4 04                                        add    esp,0x4
  0041befe: 85 c0                                           test   eax,eax
  0041bf00: 74 18                                           je     0x41bf1a
  0041bf02: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0041bf05: 52                                              push   edx
  0041bf06: 6a 08                                           push   0x8
  0041bf08: 53                                              push   ebx
  0041bf09: e8 02 5e 05 00                                  call   0x471d10
  0041bf0e: 83 c4 04                                        add    esp,0x4
  0041bf11: 50                                              push   eax
  0041bf12: e8 d9 2b 0b 00                                  call   0x4ceaf0
  0041bf17: 83 c4 0c                                        add    esp,0xc
  0041bf1a: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bf1d: e8 7e 5b 0b 00                                  call   0x4d1aa0
  0041bf22: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041bf28: 8b 8d 68 ff ff ff                               mov    ecx,DWORD PTR [ebp-0x98]
  0041bf2e: 47                                              inc    edi
  0041bf2f: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0041bf32: e9 40 ff ff ff                                  jmp    0x41be77
  0041bf37: 3b cb                                           cmp    ecx,ebx
  0041bf39: 74 07                                           je     0x41bf42
  0041bf3b: c6 85 5c ff ff ff 07                            mov    BYTE PTR [ebp-0xa4],0x7
  0041bf42: 89 9d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ebx
  0041bf48: 53                                              push   ebx
  0041bf49: e8 c2 5d 05 00                                  call   0x471d10
  0041bf4e: 83 c4 04                                        add    esp,0x4
  0041bf51: 85 c0                                           test   eax,eax
  0041bf53: 74 18                                           je     0x41bf6d
  0041bf55: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0041bf58: 50                                              push   eax
  0041bf59: 6a 08                                           push   0x8
  0041bf5b: 53                                              push   ebx
  0041bf5c: e8 af 5d 05 00                                  call   0x471d10
  0041bf61: 83 c4 04                                        add    esp,0x4
  0041bf64: 50                                              push   eax
  0041bf65: e8 86 2b 0b 00                                  call   0x4ceaf0
  0041bf6a: 83 c4 0c                                        add    esp,0xc
  0041bf6d: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041bf70: e8 2b 5b 0b 00                                  call   0x4d1aa0
  0041bf75: 6a 07                                           push   0x7
  0041bf77: 53                                              push   ebx
  0041bf78: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041bf7d: e8 1e d1 03 00                                  call   0x4590a0
  0041bf82: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  0041bf85: 51                                              push   ecx
  0041bf86: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0041bf89: c7 45 90 8c e5 4d 00                            mov    DWORD PTR [ebp-0x70],0x4de58c
  0041bf90: c7 45 94 ff ff ff ff                            mov    DWORD PTR [ebp-0x6c],0xffffffff
  0041bf97: ff 15 dc e0 4d 00                               call   DWORD PTR ds:0x4de0dc
  0041bf9d: 33 c0                                           xor    eax,eax
  0041bf9f: 89 5d b4                                        mov    DWORD PTR [ebp-0x4c],ebx
  0041bfa2: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041bfa5: 89 5d bc                                        mov    DWORD PTR [ebp-0x44],ebx
  0041bfa8: 89 5d c0                                        mov    DWORD PTR [ebp-0x40],ebx
  0041bfab: c7 45 90 6c e6 4d 00                            mov    DWORD PTR [ebp-0x70],0x4de66c
  0041bfb2: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041bfb5: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041bfb9: 89 5d c8                                        mov    DWORD PTR [ebp-0x38],ebx
  0041bfbc: 8b 8d 08 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xf8]
  0041bfc2: 33 d2                                           xor    edx,edx
  0041bfc4: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  0041bfc8: 89 8d 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],ecx
  0041bfce: 89 95 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edx
  0041bfd4: c6 85 18 ff ff ff 08                            mov    BYTE PTR [ebp-0xe8],0x8
  0041bfdb: 3b d3                                           cmp    edx,ebx
  0041bfdd: 74 0a                                           je     0x41bfe9
  0041bfdf: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0041bfe1: 89 8d 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],ecx
  0041bfe7: eb 0b                                           jmp    0x41bff4
  0041bfe9: ba 01 00 00 00                                  mov    edx,0x1
  0041bfee: 89 95 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edx
  0041bff4: 3b cb                                           cmp    ecx,ebx
  0041bff6: 0f 84 9f 00 00 00                               je     0x41c09b
  0041bffc: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  0041bfff: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  0041c002: 42                                              inc    edx
  0041c003: 3b c3                                           cmp    eax,ebx
  0041c005: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c008: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c00b: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c00f: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c012: 89 55 c8                                        mov    DWORD PTR [ebp-0x38],edx
  0041c015: 6a 0c                                           push   0xc
  0041c017: 75 3d                                           jne    0x41c056
  0041c019: e8 d2 5f 02 00                                  call   0x441ff0
  0041c01e: 83 c4 04                                        add    esp,0x4
  0041c021: 3b c3                                           cmp    eax,ebx
  0041c023: 74 07                                           je     0x41c02c
  0041c025: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c027: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c02a: eb 02                                           jmp    0x41c02e
  0041c02c: 33 c0                                           xor    eax,eax
  0041c02e: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c031: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c034: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c037: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c039: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c03c: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  0041c03f: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c042: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0041c045: 8b 8d 04 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xfc]
  0041c04b: 8b 95 24 ff ff ff                               mov    edx,DWORD PTR [ebp-0xdc]
  0041c051: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  0041c054: eb 85                                           jmp    0x41bfdb
  0041c056: e8 95 5f 02 00                                  call   0x441ff0
  0041c05b: 83 c4 04                                        add    esp,0x4
  0041c05e: 3b c3                                           cmp    eax,ebx
  0041c060: 74 07                                           je     0x41c069
  0041c062: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c064: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c067: eb 02                                           jmp    0x41c06b
  0041c069: 33 c0                                           xor    eax,eax
  0041c06b: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c06e: 89 01                                           mov    DWORD PTR [ecx],eax
  0041c070: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  0041c073: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c076: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c079: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041c07c: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c07f: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c081: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c084: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0041c087: 8b 8d 04 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xfc]
  0041c08d: 8b 95 24 ff ff ff                               mov    edx,DWORD PTR [ebp-0xdc]
  0041c093: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  0041c096: e9 40 ff ff ff                                  jmp    0x41bfdb
  0041c09b: 3b d3                                           cmp    edx,ebx
  0041c09d: 74 07                                           je     0x41c0a6
  0041c09f: c6 85 18 ff ff ff 07                            mov    BYTE PTR [ebp-0xe8],0x7
  0041c0a6: 8b 8d 4c ff ff ff                               mov    ecx,DWORD PTR [ebp-0xb4]
  0041c0ac: 33 d2                                           xor    edx,edx
  0041c0ae: 89 9d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ebx
  0041c0b4: 89 8d 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],ecx
  0041c0ba: 89 95 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edx
  0041c0c0: c6 85 5c ff ff ff 08                            mov    BYTE PTR [ebp-0xa4],0x8
  0041c0c7: 3b d3                                           cmp    edx,ebx
  0041c0c9: 74 0a                                           je     0x41c0d5
  0041c0cb: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0041c0cd: 89 8d 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],ecx
  0041c0d3: eb 0b                                           jmp    0x41c0e0
  0041c0d5: ba 01 00 00 00                                  mov    edx,0x1
  0041c0da: 89 95 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edx
  0041c0e0: 3b cb                                           cmp    ecx,ebx
  0041c0e2: 0f 84 9f 00 00 00                               je     0x41c187
  0041c0e8: 8b 79 08                                        mov    edi,DWORD PTR [ecx+0x8]
  0041c0eb: 8b 55 c8                                        mov    edx,DWORD PTR [ebp-0x38]
  0041c0ee: 42                                              inc    edx
  0041c0ef: 3b c3                                           cmp    eax,ebx
  0041c0f1: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c0f4: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c0f7: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c0fb: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c0fe: 89 55 c8                                        mov    DWORD PTR [ebp-0x38],edx
  0041c101: 6a 0c                                           push   0xc
  0041c103: 75 3d                                           jne    0x41c142
  0041c105: e8 e6 5e 02 00                                  call   0x441ff0
  0041c10a: 83 c4 04                                        add    esp,0x4
  0041c10d: 3b c3                                           cmp    eax,ebx
  0041c10f: 74 07                                           je     0x41c118
  0041c111: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c113: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c116: eb 02                                           jmp    0x41c11a
  0041c118: 33 c0                                           xor    eax,eax
  0041c11a: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c11d: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c120: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c123: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c125: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c128: 89 5a 04                                        mov    DWORD PTR [edx+0x4],ebx
  0041c12b: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c12e: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0041c131: 8b 8d 48 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xb8]
  0041c137: 8b 95 68 ff ff ff                               mov    edx,DWORD PTR [ebp-0x98]
  0041c13d: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  0041c140: eb 85                                           jmp    0x41c0c7
  0041c142: e8 a9 5e 02 00                                  call   0x441ff0
  0041c147: 83 c4 04                                        add    esp,0x4
  0041c14a: 3b c3                                           cmp    eax,ebx
  0041c14c: 74 07                                           je     0x41c155
  0041c14e: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c150: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c153: eb 02                                           jmp    0x41c157
  0041c155: 33 c0                                           xor    eax,eax
  0041c157: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c15a: 89 01                                           mov    DWORD PTR [ecx],eax
  0041c15c: 8b 55 bc                                        mov    edx,DWORD PTR [ebp-0x44]
  0041c15f: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c162: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c165: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041c168: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c16b: 89 18                                           mov    DWORD PTR [eax],ebx
  0041c16d: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c170: 89 79 08                                        mov    DWORD PTR [ecx+0x8],edi
  0041c173: 8b 8d 48 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xb8]
  0041c179: 8b 95 68 ff ff ff                               mov    edx,DWORD PTR [ebp-0x98]
  0041c17f: 8b 45 b8                                        mov    eax,DWORD PTR [ebp-0x48]
  0041c182: e9 40 ff ff ff                                  jmp    0x41c0c7
  0041c187: 3b d3                                           cmp    edx,ebx
  0041c189: 74 07                                           je     0x41c192
  0041c18b: c6 85 5c ff ff ff 07                            mov    BYTE PTR [ebp-0xa4],0x7
  0041c192: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0041c195: 52                                              push   edx
  0041c196: 89 9d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ebx
  0041c19c: e8 1f 5d 05 00                                  call   0x471ec0
  0041c1a1: 83 c4 04                                        add    esp,0x4
  0041c1a4: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  0041c1a7: 3b c3                                           cmp    eax,ebx
  0041c1a9: 8b 45 b4                                        mov    eax,DWORD PTR [ebp-0x4c]
  0041c1ac: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c1af: 0f 84 1f 03 00 00                               je     0x41c4d4
  0041c1b5: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c1b8: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c1bc: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0041c1bf: 3b cb                                           cmp    ecx,ebx
  0041c1c1: 74 07                                           je     0x41c1ca
  0041c1c3: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c1c5: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c1c8: eb 08                                           jmp    0x41c1d2
  0041c1ca: b9 01 00 00 00                                  mov    ecx,0x1
  0041c1cf: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c1d2: 3b c3                                           cmp    eax,ebx
  0041c1d4: 0f 84 ed 02 00 00                               je     0x41c4c7
  0041c1da: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0041c1dd: 8b 40 08                                        mov    eax,DWORD PTR [eax+0x8]
  0041c1e0: 8b 5d d8                                        mov    ebx,DWORD PTR [ebp-0x28]
  0041c1e3: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  0041c1e6: 89 4d 80                                        mov    DWORD PTR [ebp-0x80],ecx
  0041c1e9: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0041c1ec: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  0041c1ef: 8b c1                                           mov    eax,ecx
  0041c1f1: 41                                              inc    ecx
  0041c1f2: 83 f8 07                                        cmp    eax,0x7
  0041c1f5: 89 9d 7c ff ff ff                               mov    DWORD PTR [ebp-0x84],ebx
  0041c1fb: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0041c1fe: 0f 87 b7 00 00 00                               ja     0x41c2bb
  0041c204: ff 24 85 d8 cb 41 00                            jmp    DWORD PTR [eax*4+0x41cbd8]
  0041c20b: 6a 02                                           push   0x2
  0041c20d: 6a 01                                           push   0x1
  0041c20f: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041c214: e8 87 ce 03 00                                  call   0x4590a0
  0041c219: 8b f8                                           mov    edi,eax
  0041c21b: 03 7d d4                                        add    edi,DWORD PTR [ebp-0x2c]
  0041c21e: e9 98 00 00 00                                  jmp    0x41c2bb
  0041c223: 6a 02                                           push   0x2
  0041c225: 6a 01                                           push   0x1
  0041c227: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041c22c: e8 6f ce 03 00                                  call   0x4590a0
  0041c231: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  0041c234: 2b f8                                           sub    edi,eax
  0041c236: e9 80 00 00 00                                  jmp    0x41c2bb
  0041c23b: 6a 02                                           push   0x2
  0041c23d: 6a 01                                           push   0x1
  0041c23f: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041c244: e8 57 ce 03 00                                  call   0x4590a0
  0041c249: 8b 5d d4                                        mov    ebx,DWORD PTR [ebp-0x2c]
  0041c24c: 8b f8                                           mov    edi,eax
  0041c24e: 03 fb                                           add    edi,ebx
  0041c250: eb 28                                           jmp    0x41c27a
  0041c252: 6a 02                                           push   0x2
  0041c254: 6a 01                                           push   0x1
  0041c256: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041c25b: e8 40 ce 03 00                                  call   0x4590a0
  0041c260: 8b f8                                           mov    edi,eax
  0041c262: 03 7d d4                                        add    edi,DWORD PTR [ebp-0x2c]
  0041c265: eb 3b                                           jmp    0x41c2a2
  0041c267: 6a 02                                           push   0x2
  0041c269: 6a 01                                           push   0x1
  0041c26b: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041c270: e8 2b ce 03 00                                  call   0x4590a0
  0041c275: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  0041c278: 2b f8                                           sub    edi,eax
  0041c27a: 6a 02                                           push   0x2
  0041c27c: 6a 01                                           push   0x1
  0041c27e: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041c283: e8 18 ce 03 00                                  call   0x4590a0
  0041c288: 8b d8                                           mov    ebx,eax
  0041c28a: 03 5d d8                                        add    ebx,DWORD PTR [ebp-0x28]
  0041c28d: eb 26                                           jmp    0x41c2b5
  0041c28f: 6a 02                                           push   0x2
  0041c291: 6a 01                                           push   0x1
  0041c293: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041c298: e8 03 ce 03 00                                  call   0x4590a0
  0041c29d: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  0041c2a0: 2b f8                                           sub    edi,eax
  0041c2a2: 6a 02                                           push   0x2
  0041c2a4: 6a 01                                           push   0x1
  0041c2a6: b9 34 5e 51 00                                  mov    ecx,0x515e34
  0041c2ab: e8 f0 cd 03 00                                  call   0x4590a0
  0041c2b0: 8b 5d d8                                        mov    ebx,DWORD PTR [ebp-0x28]
  0041c2b3: 2b d8                                           sub    ebx,eax
  0041c2b5: 89 9d 7c ff ff ff                               mov    DWORD PTR [ebp-0x84],ebx
  0041c2bb: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0041c2be: 8b 4d 80                                        mov    ecx,DWORD PTR [ebp-0x80]
  0041c2c1: 33 d2                                           xor    edx,edx
  0041c2c3: 83 f8 07                                        cmp    eax,0x7
  0041c2c6: 0f 9f c2                                        setg   dl
  0041c2c9: 6a 00                                           push   0x0
  0041c2cb: 6a 00                                           push   0x0
  0041c2cd: 6a 00                                           push   0x0
  0041c2cf: 83 ec 0c                                        sub    esp,0xc
  0041c2d2: 4a                                              dec    edx
  0041c2d3: 23 d0                                           and    edx,eax
  0041c2d5: 8b c4                                           mov    eax,esp
  0041c2d7: 89 38                                           mov    DWORD PTR [eax],edi
  0041c2d9: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c2dc: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0041c2df: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0041c2e2: 89 55 0c                                        mov    DWORD PTR [ebp+0xc],edx
  0041c2e5: e8 66 2f 09 00                                  call   0x4af250
  0041c2ea: 85 c0                                           test   eax,eax
  0041c2ec: 74 38                                           je     0x41c326
  0041c2ee: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0041c2f1: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0041c2f4: 6a 02                                           push   0x2
  0041c2f6: 83 ec 0c                                        sub    esp,0xc
  0041c2f9: 8b d4                                           mov    edx,esp
  0041c2fb: 89 02                                           mov    DWORD PTR [edx],eax
  0041c2fd: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  0041c300: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041c303: 8d 8d cc fe ff ff                               lea    ecx,[ebp-0x134]
  0041c309: 51                                              push   ecx
  0041c30a: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0041c30d: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0041c310: e8 8b 5e 09 00                                  call   0x4b21a0
  0041c315: 8b 38                                           mov    edi,DWORD PTR [eax]
  0041c317: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  0041c31a: 8b 50 08                                        mov    edx,DWORD PTR [eax+0x8]
  0041c31d: 89 9d 7c ff ff ff                               mov    DWORD PTR [ebp-0x84],ebx
  0041c323: 89 55 80                                        mov    DWORD PTR [ebp-0x80],edx
  0041c326: 85 ff                                           test   edi,edi
  0041c328: 0f 8e cc 00 00 00                               jle    0x41c3fa
  0041c32e: 85 db                                           test   ebx,ebx
  0041c330: 0f 8e c4 00 00 00                               jle    0x41c3fa
  0041c336: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0041c339: 8b 55 80                                        mov    edx,DWORD PTR [ebp-0x80]
  0041c33c: 50                                              push   eax
  0041c33d: 83 ec 0c                                        sub    esp,0xc
  0041c340: 8b cc                                           mov    ecx,esp
  0041c342: 89 39                                           mov    DWORD PTR [ecx],edi
  0041c344: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0041c347: 89 51 08                                        mov    DWORD PTR [ecx+0x8],edx
  0041c34a: 8b 4d e0                                        mov    ecx,DWORD PTR [ebp-0x20]
  0041c34d: e8 be 2d 09 00                                  call   0x4af110
  0041c352: 6a 03                                           push   0x3
  0041c354: e8 b7 59 05 00                                  call   0x471d10
  0041c359: 83 c4 04                                        add    esp,0x4
  0041c35c: 85 c0                                           test   eax,eax
  0041c35e: 74 6e                                           je     0x41c3ce
  0041c360: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0041c363: 8b 18                                           mov    ebx,DWORD PTR [eax]
  0041c365: e8 f6 16 02 00                                  call   0x43da60
  0041c36a: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041c36d: 8b d3                                           mov    edx,ebx
  0041c36f: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0041c372: 50                                              push   eax
  0041c373: 51                                              push   ecx
  0041c374: 8b cb                                           mov    ecx,ebx
  0041c376: ff 52 48                                        call   DWORD PTR [edx+0x48]
  0041c379: 8b 4d 80                                        mov    ecx,DWORD PTR [ebp-0x80]
  0041c37c: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c37e: 8b 95 7c ff ff ff                               mov    edx,DWORD PTR [ebp-0x84]
  0041c384: 51                                              push   ecx
  0041c385: 52                                              push   edx
  0041c386: 89 45 8c                                        mov    DWORD PTR [ebp-0x74],eax
  0041c389: 8b 03                                           mov    eax,DWORD PTR [ebx]
  0041c38b: 57                                              push   edi
  0041c38c: 8b cb                                           mov    ecx,ebx
  0041c38e: c6 45 fc 14                                     mov    BYTE PTR [ebp-0x4],0x14
  0041c392: ff 50 28                                        call   DWORD PTR [eax+0x28]
  0041c395: 8b 4d 8c                                        mov    ecx,DWORD PTR [ebp-0x74]
  0041c398: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  0041c39b: 50                                              push   eax
  0041c39c: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  0041c39f: 51                                              push   ecx
  0041c3a0: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0041c3a3: 52                                              push   edx
  0041c3a4: 50                                              push   eax
  0041c3a5: 51                                              push   ecx
  0041c3a6: 68 70 21 50 00                                  push   0x502170
  0041c3ab: 6a 40                                           push   0x40
  0041c3ad: 6a 03                                           push   0x3
  0041c3af: e8 5c 59 05 00                                  call   0x471d10
  0041c3b4: 83 c4 04                                        add    esp,0x4
  0041c3b7: 50                                              push   eax
  0041c3b8: e8 33 27 0b 00                                  call   0x4ceaf0
  0041c3bd: 83 c4 2c                                        add    esp,0x2c
  0041c3c0: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0041c3c3: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  0041c3c7: e8 74 56 0b 00                                  call   0x4d1a40
  0041c3cc: eb 03                                           jmp    0x41c3d1
  0041c3ce: 8b 5d e8                                        mov    ebx,DWORD PTR [ebp-0x18]
  0041c3d1: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0041c3d4: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0041c3d7: 6a 01                                           push   0x1
  0041c3d9: 83 ec 0c                                        sub    esp,0xc
  0041c3dc: 8b d4                                           mov    edx,esp
  0041c3de: 89 02                                           mov    DWORD PTR [edx],eax
  0041c3e0: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  0041c3e3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041c3e6: 8b cb                                           mov    ecx,ebx
  0041c3e8: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0041c3eb: e8 f0 33 07 00                                  call   0x48f7e0
  0041c3f0: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c3f3: 33 db                                           xor    ebx,ebx
  0041c3f5: e9 c2 fd ff ff                                  jmp    0x41c1bc
  0041c3fa: 8b 4d b0                                        mov    ecx,DWORD PTR [ebp-0x50]
  0041c3fd: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  0041c400: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041c402: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0041c408: 8b 7d c8                                        mov    edi,DWORD PTR [ebp-0x38]
  0041c40b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c40e: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  0041c411: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  0041c414: 4f                                              dec    edi
  0041c415: 3b c1                                           cmp    eax,ecx
  0041c417: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c41a: 89 7d c8                                        mov    DWORD PTR [ebp-0x38],edi
  0041c41d: 74 38                                           je     0x41c457
  0041c41f: 3b c2                                           cmp    eax,edx
  0041c421: 74 5f                                           je     0x41c482
  0041c423: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c425: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c428: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0041c42b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c42e: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c431: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c433: 89 11                                           mov    DWORD PTR [ecx],edx
  0041c435: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0041c438: 83 f8 01                                        cmp    eax,0x1
  0041c43b: 75 0b                                           jne    0x41c448
  0041c43d: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c440: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c443: 89 4d b0                                        mov    DWORD PTR [ebp-0x50],ecx
  0041c446: eb 69                                           jmp    0x41c4b1
  0041c448: 83 f8 02                                        cmp    eax,0x2
  0041c44b: 75 64                                           jne    0x41c4b1
  0041c44d: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c450: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c452: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c455: eb 5a                                           jmp    0x41c4b1
  0041c457: 3b c2                                           cmp    eax,edx
  0041c459: 74 27                                           je     0x41c482
  0041c45b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c45e: c7 01 00 00 00 00                               mov    DWORD PTR [ecx],0x0
  0041c464: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c467: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c46a: 89 55 b8                                        mov    DWORD PTR [ebp-0x48],edx
  0041c46d: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c470: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c473: 83 7d d0 02                                     cmp    DWORD PTR [ebp-0x30],0x2
  0041c477: 75 38                                           jne    0x41c4b1
  0041c479: c7 45 d0 00 00 00 00                            mov    DWORD PTR [ebp-0x30],0x0
  0041c480: eb 2f                                           jmp    0x41c4b1
  0041c482: 3b c1                                           cmp    eax,ecx
  0041c484: 74 1d                                           je     0x41c4a3
  0041c486: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c488: 33 c9                                           xor    ecx,ecx
  0041c48a: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041c48d: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c490: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c492: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c495: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c498: 83 7d d0 01                                     cmp    DWORD PTR [ebp-0x30],0x1
  0041c49c: 75 13                                           jne    0x41c4b1
  0041c49e: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c4a1: eb 0e                                           jmp    0x41c4b1
  0041c4a3: 33 c0                                           xor    eax,eax
  0041c4a5: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c4a8: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c4ab: 89 45 b8                                        mov    DWORD PTR [ebp-0x48],eax
  0041c4ae: 89 45 d0                                        mov    DWORD PTR [ebp-0x30],eax
  0041c4b1: 8b 4d bc                                        mov    ecx,DWORD PTR [ebp-0x44]
  0041c4b4: 51                                              push   ecx
  0041c4b5: e8 a6 5b 02 00                                  call   0x442060
  0041c4ba: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c4bd: 83 c4 04                                        add    esp,0x4
  0041c4c0: 33 db                                           xor    ebx,ebx
  0041c4c2: e9 f5 fc ff ff                                  jmp    0x41c1bc
  0041c4c7: 3b cb                                           cmp    ecx,ebx
  0041c4c9: 0f 84 ed 00 00 00                               je     0x41c5bc
  0041c4cf: e9 e4 00 00 00                                  jmp    0x41c5b8
  0041c4d4: 33 c9                                           xor    ecx,ecx
  0041c4d6: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c4d9: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c4dd: bf 02 00 00 00                                  mov    edi,0x2
  0041c4e2: 3b cb                                           cmp    ecx,ebx
  0041c4e4: 74 07                                           je     0x41c4ed
  0041c4e6: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c4e8: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c4eb: eb 08                                           jmp    0x41c4f5
  0041c4ed: b9 01 00 00 00                                  mov    ecx,0x1
  0041c4f2: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c4f5: 3b c3                                           cmp    eax,ebx
  0041c4f7: 0f 84 b7 00 00 00                               je     0x41c5b4
  0041c4fd: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0041c500: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041c502: ff 92 c4 01 00 00                               call   DWORD PTR [edx+0x1c4]
  0041c508: 8b 4d c8                                        mov    ecx,DWORD PTR [ebp-0x38]
  0041c50b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c50e: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  0041c511: 49                                              dec    ecx
  0041c512: 89 4d c8                                        mov    DWORD PTR [ebp-0x38],ecx
  0041c515: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  0041c518: 3b c1                                           cmp    eax,ecx
  0041c51a: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c51d: 74 37                                           je     0x41c556
  0041c51f: 3b c2                                           cmp    eax,edx
  0041c521: 74 52                                           je     0x41c575
  0041c523: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c525: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c528: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0041c52b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c52e: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c531: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c533: 89 11                                           mov    DWORD PTR [ecx],edx
  0041c535: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0041c538: 83 f8 01                                        cmp    eax,0x1
  0041c53b: 75 0b                                           jne    0x41c548
  0041c53d: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c540: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c543: 89 4d b0                                        mov    DWORD PTR [ebp-0x50],ecx
  0041c546: eb 55                                           jmp    0x41c59d
  0041c548: 3b c7                                           cmp    eax,edi
  0041c54a: 75 51                                           jne    0x41c59d
  0041c54c: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c54f: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c551: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c554: eb 47                                           jmp    0x41c59d
  0041c556: 3b c2                                           cmp    eax,edx
  0041c558: 74 1b                                           je     0x41c575
  0041c55a: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c55d: 89 19                                           mov    DWORD PTR [ecx],ebx
  0041c55f: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c562: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c565: 89 55 b8                                        mov    DWORD PTR [ebp-0x48],edx
  0041c568: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c56b: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c56e: 39 7d d0                                        cmp    DWORD PTR [ebp-0x30],edi
  0041c571: 75 2a                                           jne    0x41c59d
  0041c573: eb 25                                           jmp    0x41c59a
  0041c575: 3b c1                                           cmp    eax,ecx
  0041c577: 74 18                                           je     0x41c591
  0041c579: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c57b: 89 59 04                                        mov    DWORD PTR [ecx+0x4],ebx
  0041c57e: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c581: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c583: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c586: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c589: 83 7d d0 01                                     cmp    DWORD PTR [ebp-0x30],0x1
  0041c58d: 75 0e                                           jne    0x41c59d
  0041c58f: eb 09                                           jmp    0x41c59a
  0041c591: 89 5d b0                                        mov    DWORD PTR [ebp-0x50],ebx
  0041c594: 89 5d b4                                        mov    DWORD PTR [ebp-0x4c],ebx
  0041c597: 89 5d b8                                        mov    DWORD PTR [ebp-0x48],ebx
  0041c59a: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c59d: 8b 45 bc                                        mov    eax,DWORD PTR [ebp-0x44]
  0041c5a0: 50                                              push   eax
  0041c5a1: e8 ba 5a 02 00                                  call   0x442060
  0041c5a6: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c5a9: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0041c5ac: 83 c4 04                                        add    esp,0x4
  0041c5af: e9 2e ff ff ff                                  jmp    0x41c4e2
  0041c5b4: 3b cb                                           cmp    ecx,ebx
  0041c5b6: 74 04                                           je     0x41c5bc
  0041c5b8: c6 45 c4 07                                     mov    BYTE PTR [ebp-0x3c],0x7
  0041c5bc: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c5be: 53                                              push   ebx
  0041c5bf: 68 34 4e 00 00                                  push   0x4e34
  0041c5c4: 8b ce                                           mov    ecx,esi
  0041c5c6: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0041c5c9: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0041c5cc: 3b c3                                           cmp    eax,ebx
  0041c5ce: 74 47                                           je     0x41c617
  0041c5d0: 8b f8                                           mov    edi,eax
  0041c5d2: 8b d8                                           mov    ebx,eax
  0041c5d4: 25 ff 00 00 00                                  and    eax,0xff
  0041c5d9: c1 ef 14                                        shr    edi,0x14
  0041c5dc: c1 eb 08                                        shr    ebx,0x8
  0041c5df: 50                                              push   eax
  0041c5e0: 81 e7 ff 0f 00 00                               and    edi,0xfff
  0041c5e6: 81 e3 ff 0f 00 00                               and    ebx,0xfff
  0041c5ec: 89 45 80                                        mov    DWORD PTR [ebp-0x80],eax
  0041c5ef: e8 cc 58 05 00                                  call   0x471ec0
  0041c5f4: 83 c4 04                                        add    esp,0x4
  0041c5f7: 85 c0                                           test   eax,eax
  0041c5f9: 74 1c                                           je     0x41c617
  0041c5fb: 33 c9                                           xor    ecx,ecx
  0041c5fd: 66 8b 48 2c                                     mov    cx,WORD PTR [eax+0x2c]
  0041c601: 3b f9                                           cmp    edi,ecx
  0041c603: 7d 12                                           jge    0x41c617
  0041c605: 33 d2                                           xor    edx,edx
  0041c607: 66 8b 50 2e                                     mov    dx,WORD PTR [eax+0x2e]
  0041c60b: 3b da                                           cmp    ebx,edx
  0041c60d: 7d 08                                           jge    0x41c617
  0041c60f: 85 ff                                           test   edi,edi
  0041c611: 7c 04                                           jl     0x41c617
  0041c613: 85 db                                           test   ebx,ebx
  0041c615: 7d 14                                           jge    0x41c62b
  0041c617: a1 58 e6 4d 00                                  mov    eax,ds:0x4de658
  0041c61c: 8b 3d 50 e6 4d 00                               mov    edi,DWORD PTR ds:0x4de650
  0041c622: 8b 1d 54 e6 4d 00                               mov    ebx,DWORD PTR ds:0x4de654
  0041c628: 89 45 80                                        mov    DWORD PTR [ebp-0x80],eax
  0041c62b: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c631: e8 ba 97 06 00                                  call   0x485df0
  0041c636: 6a 2c                                           push   0x2c
  0041c638: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c63e: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  0041c642: e8 09 9b 06 00                                  call   0x486150
  0041c647: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c649: 8b ce                                           mov    ecx,esi
  0041c64b: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0041c64e: 8b c2                                           mov    eax,edx
  0041c650: 52                                              push   edx
  0041c651: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c657: c1 f8 1f                                        sar    eax,0x1f
  0041c65a: e8 91 9b 06 00                                  call   0x4861f0
  0041c65f: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c661: 8b ce                                           mov    ecx,esi
  0041c663: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0041c666: 50                                              push   eax
  0041c667: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c66d: e8 7e 9b 06 00                                  call   0x4861f0
  0041c672: 8b 06                                           mov    eax,DWORD PTR [esi]
  0041c674: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c67a: 51                                              push   ecx
  0041c67b: 8b ce                                           mov    ecx,esi
  0041c67d: ff 90 4c 01 00 00                               call   DWORD PTR [eax+0x14c]
  0041c683: 6a 00                                           push   0x0
  0041c685: 6a 00                                           push   0x0
  0041c687: e8 84 61 04 00                                  call   0x462810
  0041c68c: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  0041c68f: 50                                              push   eax
  0041c690: 33 c0                                           xor    eax,eax
  0041c692: 83 ec 0c                                        sub    esp,0xc
  0041c695: 8b d4                                           mov    edx,esp
  0041c697: 89 02                                           mov    DWORD PTR [edx],eax
  0041c699: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0041c69c: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0041c69f: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0041c6a2: 83 ec 0c                                        sub    esp,0xc
  0041c6a5: 8b c4                                           mov    eax,esp
  0041c6a7: 89 08                                           mov    DWORD PTR [eax],ecx
  0041c6a9: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0041c6ac: 89 50 04                                        mov    DWORD PTR [eax+0x4],edx
  0041c6af: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0041c6b2: 6a 00                                           push   0x0
  0041c6b4: 8b ce                                           mov    ecx,esi
  0041c6b6: e8 45 f0 06 00                                  call   0x48b700
  0041c6bb: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0041c6be: 50                                              push   eax
  0041c6bf: 8b 45 d4                                        mov    eax,DWORD PTR [ebp-0x2c]
  0041c6c2: 68 3c 75 00 00                                  push   0x753c
  0041c6c7: 6a 14                                           push   0x14
  0041c6c9: 83 ec 0c                                        sub    esp,0xc
  0041c6cc: 8b d4                                           mov    edx,esp
  0041c6ce: 89 02                                           mov    DWORD PTR [edx],eax
  0041c6d0: 8b 45 dc                                        mov    eax,DWORD PTR [ebp-0x24]
  0041c6d3: 89 4a 04                                        mov    DWORD PTR [edx+0x4],ecx
  0041c6d6: 89 42 08                                        mov    DWORD PTR [edx+0x8],eax
  0041c6d9: e8 22 38 ff ff                                  call   0x40ff00
  0041c6de: 8b 4d 80                                        mov    ecx,DWORD PTR [ebp-0x80]
  0041c6e1: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c6e3: 83 c4 40                                        add    esp,0x40
  0041c6e6: 6a 01                                           push   0x1
  0041c6e8: 83 ec 0c                                        sub    esp,0xc
  0041c6eb: 8b c4                                           mov    eax,esp
  0041c6ed: 89 38                                           mov    DWORD PTR [eax],edi
  0041c6ef: 89 58 04                                        mov    DWORD PTR [eax+0x4],ebx
  0041c6f2: 89 48 08                                        mov    DWORD PTR [eax+0x8],ecx
  0041c6f5: 8b ce                                           mov    ecx,esi
  0041c6f7: ff 92 0c 01 00 00                               call   DWORD PTR [edx+0x10c]
  0041c6fd: 6a 07                                           push   0x7
  0041c6ff: 8b ce                                           mov    ecx,esi
  0041c701: e8 7a 2d 07 00                                  call   0x48f480
  0041c706: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c70c: e8 df 96 06 00                                  call   0x485df0
  0041c711: b3 16                                           mov    bl,0x16
  0041c713: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041c716: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0041c719: e8 40 53 0b 00                                  call   0x4d1a5e
  0041c71e: 33 d2                                           xor    edx,edx
  0041c720: 66 8b 96 1c 01 00 00                            mov    dx,WORD PTR [esi+0x11c]
  0041c727: 68 58 13 51 00                                  push   0x511358
  0041c72c: c6 45 fc 17                                     mov    BYTE PTR [ebp-0x4],0x17
  0041c730: 52                                              push   edx
  0041c731: 6a 10                                           push   0x10
  0041c733: e8 b8 12 02 00                                  call   0x43d9f0
  0041c738: 83 c4 0c                                        add    esp,0xc
  0041c73b: 50                                              push   eax
  0041c73c: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041c73f: e8 14 53 0b 00                                  call   0x4d1a58
  0041c744: 6a 3f                                           push   0x3f
  0041c746: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c74c: e8 ff 99 06 00                                  call   0x486150
  0041c751: 6a 1e                                           push   0x1e
  0041c753: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c759: e8 f2 99 06 00                                  call   0x486150
  0041c75e: 6a 03                                           push   0x3
  0041c760: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c766: e8 e5 99 06 00                                  call   0x486150
  0041c76b: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0041c76e: 50                                              push   eax
  0041c76f: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c775: e8 d6 9b 06 00                                  call   0x486350
  0041c77a: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041c77c: 8d 85 b4 fe ff ff                               lea    eax,[ebp-0x14c]
  0041c782: 50                                              push   eax
  0041c783: 8b ce                                           mov    ecx,esi
  0041c785: ff 92 4c 01 00 00                               call   DWORD PTR [edx+0x14c]
  0041c78b: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0041c78e: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0041c791: e8 aa 52 0b 00                                  call   0x4d1a40
  0041c796: 8d 8d b4 fe ff ff                               lea    ecx,[ebp-0x14c]
  0041c79c: c6 45 fc 15                                     mov    BYTE PTR [ebp-0x4],0x15
  0041c7a0: e8 db 96 06 00                                  call   0x485e80
  0041c7a5: 8b 8d d8 fe ff ff                               mov    ecx,DWORD PTR [ebp-0x128]
  0041c7ab: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0041c7ad: ff 52 08                                        call   DWORD PTR [edx+0x8]
  0041c7b0: 8d 8d 9c fe ff ff                               lea    ecx,[ebp-0x164]
  0041c7b6: c6 45 fc 13                                     mov    BYTE PTR [ebp-0x4],0x13
  0041c7ba: e8 c1 96 06 00                                  call   0x485e80
  0041c7bf: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  0041c7c2: 33 c9                                           xor    ecx,ecx
  0041c7c4: 8b c2                                           mov    eax,edx
  0041c7c6: c6 45 fc 10                                     mov    BYTE PTR [ebp-0x4],0x10
  0041c7ca: c7 45 90 6c e6 4d 00                            mov    DWORD PTR [ebp-0x70],0x4de66c
  0041c7d1: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c7d4: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c7d7: c6 45 c4 08                                     mov    BYTE PTR [ebp-0x3c],0x8
  0041c7db: bb 02 00 00 00                                  mov    ebx,0x2
  0041c7e0: 33 ff                                           xor    edi,edi
  0041c7e2: be 01 00 00 00                                  mov    esi,0x1
  0041c7e7: 3b cf                                           cmp    ecx,edi
  0041c7e9: 74 07                                           je     0x41c7f2
  0041c7eb: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c7ed: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c7f0: eb 05                                           jmp    0x41c7f7
  0041c7f2: 8b ce                                           mov    ecx,esi
  0041c7f4: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  0041c7f7: 3b c7                                           cmp    eax,edi
  0041c7f9: 0f 84 a3 00 00 00                               je     0x41c8a2
  0041c7ff: ff 4d c8                                        dec    DWORD PTR [ebp-0x38]
  0041c802: 8b 4d b8                                        mov    ecx,DWORD PTR [ebp-0x48]
  0041c805: 3b c1                                           cmp    eax,ecx
  0041c807: 89 45 bc                                        mov    DWORD PTR [ebp-0x44],eax
  0041c80a: 74 36                                           je     0x41c842
  0041c80c: 3b c2                                           cmp    eax,edx
  0041c80e: 74 51                                           je     0x41c861
  0041c810: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c812: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c815: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0041c818: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c81b: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c81e: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c820: 89 11                                           mov    DWORD PTR [ecx],edx
  0041c822: 8b 45 d0                                        mov    eax,DWORD PTR [ebp-0x30]
  0041c825: 3b c6                                           cmp    eax,esi
  0041c827: 75 0b                                           jne    0x41c834
  0041c829: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c82c: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c82f: 89 4d b0                                        mov    DWORD PTR [ebp-0x50],ecx
  0041c832: eb 54                                           jmp    0x41c888
  0041c834: 3b c3                                           cmp    eax,ebx
  0041c836: 75 50                                           jne    0x41c888
  0041c838: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c83b: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c83d: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c840: eb 46                                           jmp    0x41c888
  0041c842: 3b c2                                           cmp    eax,edx
  0041c844: 74 1b                                           je     0x41c861
  0041c846: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c849: 89 39                                           mov    DWORD PTR [ecx],edi
  0041c84b: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c84e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c851: 89 55 b8                                        mov    DWORD PTR [ebp-0x48],edx
  0041c854: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c857: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c85a: 39 5d d0                                        cmp    DWORD PTR [ebp-0x30],ebx
  0041c85d: 75 29                                           jne    0x41c888
  0041c85f: eb 24                                           jmp    0x41c885
  0041c861: 3b c1                                           cmp    eax,ecx
  0041c863: 74 17                                           je     0x41c87c
  0041c865: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c867: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0041c86a: 8b 55 b0                                        mov    edx,DWORD PTR [ebp-0x50]
  0041c86d: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c86f: 89 45 b0                                        mov    DWORD PTR [ebp-0x50],eax
  0041c872: 89 45 b4                                        mov    DWORD PTR [ebp-0x4c],eax
  0041c875: 39 75 d0                                        cmp    DWORD PTR [ebp-0x30],esi
  0041c878: 75 0e                                           jne    0x41c888
  0041c87a: eb 09                                           jmp    0x41c885
  0041c87c: 89 7d b0                                        mov    DWORD PTR [ebp-0x50],edi
  0041c87f: 89 7d b4                                        mov    DWORD PTR [ebp-0x4c],edi
  0041c882: 89 7d b8                                        mov    DWORD PTR [ebp-0x48],edi
  0041c885: 89 7d d0                                        mov    DWORD PTR [ebp-0x30],edi
  0041c888: 8b 45 bc                                        mov    eax,DWORD PTR [ebp-0x44]
  0041c88b: 50                                              push   eax
  0041c88c: e8 cf 57 02 00                                  call   0x442060
  0041c891: 8b 45 b0                                        mov    eax,DWORD PTR [ebp-0x50]
  0041c894: 8b 55 b4                                        mov    edx,DWORD PTR [ebp-0x4c]
  0041c897: 8b 4d d0                                        mov    ecx,DWORD PTR [ebp-0x30]
  0041c89a: 83 c4 04                                        add    esp,0x4
  0041c89d: e9 45 ff ff ff                                  jmp    0x41c7e7
  0041c8a2: 3b cf                                           cmp    ecx,edi
  0041c8a4: 74 04                                           je     0x41c8aa
  0041c8a6: c6 45 c4 07                                     mov    BYTE PTR [ebp-0x3c],0x7
  0041c8aa: 8b 1d e0 e0 4d 00                               mov    ebx,DWORD PTR ds:0x4de0e0
  0041c8b0: 8d 4d 98                                        lea    ecx,[ebp-0x68]
  0041c8b3: 51                                              push   ecx
  0041c8b4: 89 7d d0                                        mov    DWORD PTR [ebp-0x30],edi
  0041c8b7: c7 45 90 8c e5 4d 00                            mov    DWORD PTR [ebp-0x70],0x4de58c
  0041c8be: ff d3                                           call   ebx
  0041c8c0: 8b 95 08 ff ff ff                               mov    edx,DWORD PTR [ebp-0xf8]
  0041c8c6: be 6c e6 4d 00                                  mov    esi,0x4de66c
  0041c8cb: 8b c2                                           mov    eax,edx
  0041c8cd: 33 c9                                           xor    ecx,ecx
  0041c8cf: c6 45 fc 0f                                     mov    BYTE PTR [ebp-0x4],0xf
  0041c8d3: 89 b5 e4 fe ff ff                               mov    DWORD PTR [ebp-0x11c],esi
  0041c8d9: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c8df: 89 8d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ecx
  0041c8e5: c6 85 18 ff ff ff 08                            mov    BYTE PTR [ebp-0xe8],0x8
  0041c8ec: 3b cf                                           cmp    ecx,edi
  0041c8ee: 74 0a                                           je     0x41c8fa
  0041c8f0: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041c8f2: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c8f8: eb 0b                                           jmp    0x41c905
  0041c8fa: b9 01 00 00 00                                  mov    ecx,0x1
  0041c8ff: 89 8d 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],ecx
  0041c905: 3b c7                                           cmp    eax,edi
  0041c907: 0f 84 f5 00 00 00                               je     0x41ca02
  0041c90d: ff 8d 1c ff ff ff                               dec    DWORD PTR [ebp-0xe4]
  0041c913: 8b 8d 0c ff ff ff                               mov    ecx,DWORD PTR [ebp-0xf4]
  0041c919: 3b c1                                           cmp    eax,ecx
  0041c91b: 89 85 10 ff ff ff                               mov    DWORD PTR [ebp-0xf0],eax
  0041c921: 74 4d                                           je     0x41c970
  0041c923: 3b c2                                           cmp    eax,edx
  0041c925: 74 75                                           je     0x41c99c
  0041c927: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c929: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c92c: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0041c92f: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041c935: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c938: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041c93a: 89 11                                           mov    DWORD PTR [ecx],edx
  0041c93c: 8b 85 24 ff ff ff                               mov    eax,DWORD PTR [ebp-0xdc]
  0041c942: 83 f8 01                                        cmp    eax,0x1
  0041c945: 75 14                                           jne    0x41c95b
  0041c947: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041c94d: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c950: 89 8d 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],ecx
  0041c956: e9 81 00 00 00                                  jmp    0x41c9dc
  0041c95b: 83 f8 02                                        cmp    eax,0x2
  0041c95e: 75 7c                                           jne    0x41c9dc
  0041c960: 8b 95 04 ff ff ff                               mov    edx,DWORD PTR [ebp-0xfc]
  0041c966: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c968: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c96e: eb 6c                                           jmp    0x41c9dc
  0041c970: 3b c2                                           cmp    eax,edx
  0041c972: 74 28                                           je     0x41c99c
  0041c974: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041c977: 89 39                                           mov    DWORD PTR [ecx],edi
  0041c979: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041c97f: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041c982: 89 95 0c ff ff ff                               mov    DWORD PTR [ebp-0xf4],edx
  0041c988: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041c98b: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c991: 83 bd 24 ff ff ff 02                            cmp    DWORD PTR [ebp-0xdc],0x2
  0041c998: 75 42                                           jne    0x41c9dc
  0041c99a: eb 3a                                           jmp    0x41c9d6
  0041c99c: 3b c1                                           cmp    eax,ecx
  0041c99e: 74 24                                           je     0x41c9c4
  0041c9a0: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041c9a2: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0041c9a5: 8b 95 04 ff ff ff                               mov    edx,DWORD PTR [ebp-0xfc]
  0041c9ab: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041c9ad: 89 85 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],eax
  0041c9b3: 89 85 08 ff ff ff                               mov    DWORD PTR [ebp-0xf8],eax
  0041c9b9: 83 bd 24 ff ff ff 01                            cmp    DWORD PTR [ebp-0xdc],0x1
  0041c9c0: 75 1a                                           jne    0x41c9dc
  0041c9c2: eb 12                                           jmp    0x41c9d6
  0041c9c4: 89 bd 04 ff ff ff                               mov    DWORD PTR [ebp-0xfc],edi
  0041c9ca: 89 bd 08 ff ff ff                               mov    DWORD PTR [ebp-0xf8],edi
  0041c9d0: 89 bd 0c ff ff ff                               mov    DWORD PTR [ebp-0xf4],edi
  0041c9d6: 89 bd 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edi
  0041c9dc: 8b 85 10 ff ff ff                               mov    eax,DWORD PTR [ebp-0xf0]
  0041c9e2: 50                                              push   eax
  0041c9e3: e8 78 56 02 00                                  call   0x442060
  0041c9e8: 8b 85 04 ff ff ff                               mov    eax,DWORD PTR [ebp-0xfc]
  0041c9ee: 8b 95 08 ff ff ff                               mov    edx,DWORD PTR [ebp-0xf8]
  0041c9f4: 8b 8d 24 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xdc]
  0041c9fa: 83 c4 04                                        add    esp,0x4
  0041c9fd: e9 ea fe ff ff                                  jmp    0x41c8ec
  0041ca02: 3b cf                                           cmp    ecx,edi
  0041ca04: 74 07                                           je     0x41ca0d
  0041ca06: c6 85 18 ff ff ff 07                            mov    BYTE PTR [ebp-0xe8],0x7
  0041ca0d: 8d 8d ec fe ff ff                               lea    ecx,[ebp-0x114]
  0041ca13: 51                                              push   ecx
  0041ca14: 89 bd 24 ff ff ff                               mov    DWORD PTR [ebp-0xdc],edi
  0041ca1a: c7 85 e4 fe ff ff 8c e5 4d 00                   mov    DWORD PTR [ebp-0x11c],0x4de58c
  0041ca24: ff d3                                           call   ebx
  0041ca26: 8b 95 4c ff ff ff                               mov    edx,DWORD PTR [ebp-0xb4]
  0041ca2c: 8b c2                                           mov    eax,edx
  0041ca2e: 33 c9                                           xor    ecx,ecx
  0041ca30: 89 b5 28 ff ff ff                               mov    DWORD PTR [ebp-0xd8],esi
  0041ca36: c6 45 fc 0c                                     mov    BYTE PTR [ebp-0x4],0xc
  0041ca3a: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041ca40: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  0041ca46: c6 85 5c ff ff ff 08                            mov    BYTE PTR [ebp-0xa4],0x8
  0041ca4d: be 01 00 00 00                                  mov    esi,0x1
  0041ca52: 3b cf                                           cmp    ecx,edi
  0041ca54: 74 0a                                           je     0x41ca60
  0041ca56: 8b 00                                           mov    eax,DWORD PTR [eax]
  0041ca58: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041ca5e: eb 08                                           jmp    0x41ca68
  0041ca60: 8b ce                                           mov    ecx,esi
  0041ca62: 89 8d 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],ecx
  0041ca68: 3b c7                                           cmp    eax,edi
  0041ca6a: 0f 84 f3 00 00 00                               je     0x41cb63
  0041ca70: ff 8d 60 ff ff ff                               dec    DWORD PTR [ebp-0xa0]
  0041ca76: 8b 8d 50 ff ff ff                               mov    ecx,DWORD PTR [ebp-0xb0]
  0041ca7c: 3b c1                                           cmp    eax,ecx
  0041ca7e: 89 85 54 ff ff ff                               mov    DWORD PTR [ebp-0xac],eax
  0041ca84: 74 4c                                           je     0x41cad2
  0041ca86: 3b c2                                           cmp    eax,edx
  0041ca88: 74 74                                           je     0x41cafe
  0041ca8a: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041ca8c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041ca8f: 89 42 04                                        mov    DWORD PTR [edx+0x4],eax
  0041ca92: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041ca98: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041ca9b: 8b 10                                           mov    edx,DWORD PTR [eax]
  0041ca9d: 89 11                                           mov    DWORD PTR [ecx],edx
  0041ca9f: 8b 85 68 ff ff ff                               mov    eax,DWORD PTR [ebp-0x98]
  0041caa5: 3b c6                                           cmp    eax,esi
  0041caa7: 75 14                                           jne    0x41cabd
  0041caa9: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041caaf: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041cab2: 89 8d 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],ecx
  0041cab8: e9 80 00 00 00                                  jmp    0x41cb3d
  0041cabd: 83 f8 02                                        cmp    eax,0x2
  0041cac0: 75 7b                                           jne    0x41cb3d
  0041cac2: 8b 95 48 ff ff ff                               mov    edx,DWORD PTR [ebp-0xb8]
  0041cac8: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041caca: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041cad0: eb 6b                                           jmp    0x41cb3d
  0041cad2: 3b c2                                           cmp    eax,edx
  0041cad4: 74 28                                           je     0x41cafe
  0041cad6: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0041cad9: 89 39                                           mov    DWORD PTR [ecx],edi
  0041cadb: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041cae1: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0041cae4: 89 95 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],edx
  0041caea: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0041caed: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041caf3: 83 bd 68 ff ff ff 02                            cmp    DWORD PTR [ebp-0x98],0x2
  0041cafa: 75 41                                           jne    0x41cb3d
  0041cafc: eb 39                                           jmp    0x41cb37
  0041cafe: 3b c1                                           cmp    eax,ecx
  0041cb00: 74 23                                           je     0x41cb25
  0041cb02: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0041cb04: 89 79 04                                        mov    DWORD PTR [ecx+0x4],edi
  0041cb07: 8b 95 48 ff ff ff                               mov    edx,DWORD PTR [ebp-0xb8]
  0041cb0d: 8b 02                                           mov    eax,DWORD PTR [edx]
  0041cb0f: 89 85 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],eax
  0041cb15: 89 85 4c ff ff ff                               mov    DWORD PTR [ebp-0xb4],eax
  0041cb1b: 39 b5 68 ff ff ff                               cmp    DWORD PTR [ebp-0x98],esi
  0041cb21: 75 1a                                           jne    0x41cb3d
  0041cb23: eb 12                                           jmp    0x41cb37
  0041cb25: 89 bd 48 ff ff ff                               mov    DWORD PTR [ebp-0xb8],edi
  0041cb2b: 89 bd 4c ff ff ff                               mov    DWORD PTR [ebp-0xb4],edi
  0041cb31: 89 bd 50 ff ff ff                               mov    DWORD PTR [ebp-0xb0],edi
  0041cb37: 89 bd 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edi
  0041cb3d: 8b 85 54 ff ff ff                               mov    eax,DWORD PTR [ebp-0xac]
  0041cb43: 50                                              push   eax
  0041cb44: e8 17 55 02 00                                  call   0x442060
  0041cb49: 8b 85 48 ff ff ff                               mov    eax,DWORD PTR [ebp-0xb8]
  0041cb4f: 8b 95 4c ff ff ff                               mov    edx,DWORD PTR [ebp-0xb4]
  0041cb55: 8b 8d 68 ff ff ff                               mov    ecx,DWORD PTR [ebp-0x98]
  0041cb5b: 83 c4 04                                        add    esp,0x4
  0041cb5e: e9 ef fe ff ff                                  jmp    0x41ca52
  0041cb63: 3b cf                                           cmp    ecx,edi
  0041cb65: 74 07                                           je     0x41cb6e
  0041cb67: c6 85 5c ff ff ff 07                            mov    BYTE PTR [ebp-0xa4],0x7
  0041cb6e: 8d 8d 30 ff ff ff                               lea    ecx,[ebp-0xd0]
  0041cb74: 51                                              push   ecx
  0041cb75: 89 bd 68 ff ff ff                               mov    DWORD PTR [ebp-0x98],edi
  0041cb7b: c7 85 28 ff ff ff 8c e5 4d 00                   mov    DWORD PTR [ebp-0xd8],0x4de58c
  0041cb85: ff d3                                           call   ebx
  0041cb87: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0041cb8a: c6 45 fc 0b                                     mov    BYTE PTR [ebp-0x4],0xb
  0041cb8e: e8 ad 4e 0b 00                                  call   0x4d1a40
  0041cb93: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0041cb96: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0041cb9d: e8 9e 4e 0b 00                                  call   0x4d1a40
  0041cba2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041cba5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041cbac: 5f                                              pop    edi
  0041cbad: 5e                                              pop    esi
  0041cbae: 5b                                              pop    ebx
  0041cbaf: 8b e5                                           mov    esp,ebp
  0041cbb1: 5d                                              pop    ebp
  0041cbb2: c2 08 00                                        ret    0x8
  0041cbb5: 8b 16                                           mov    edx,DWORD PTR [esi]
  0041cbb7: 6a 01                                           push   0x1
  0041cbb9: 53                                              push   ebx
  0041cbba: 8b ce                                           mov    ecx,esi
  0041cbbc: ff 92 dc 00 00 00                               call   DWORD PTR [edx+0xdc]
  0041cbc2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0041cbc5: 5f                                              pop    edi
  0041cbc6: 5e                                              pop    esi
  0041cbc7: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0041cbce: 5b                                              pop    ebx
  0041cbcf: 8b e5                                           mov    esp,ebp
  0041cbd1: 5d                                              pop    ebp
  0041cbd2: c2 08 00                                        ret    0x8
  004cfc40: 55                                              push   ebp
  004cfc41: 8b ec                                           mov    ebp,esp
  004cfc43: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004cfc46: 25 ff 00 00 00                                  and    eax,0xff
  004cfc4b: 83 c0 d0                                        add    eax,0xffffffd0
  004cfc4e: 83 f8 16                                        cmp    eax,0x16
  004cfc51: 77 61                                           ja     0x4cfcb4
  004cfc53: ff 24 85 bc fc 4c 00                            jmp    DWORD PTR [eax*4+0x4cfcbc]
  004cfc5a: b0 0f                                           mov    al,0xf
  004cfc5c: 5d                                              pop    ebp
  004cfc5d: c2 04 00                                        ret    0x4
  004cfc60: b0 0e                                           mov    al,0xe
  004cfc62: 5d                                              pop    ebp
  004cfc63: c2 04 00                                        ret    0x4
  004cfc66: b0 0d                                           mov    al,0xd
  004cfc68: 5d                                              pop    ebp
  004cfc69: c2 04 00                                        ret    0x4
  004cfc6c: b0 0c                                           mov    al,0xc
  004cfc6e: 5d                                              pop    ebp
  004cfc6f: c2 04 00                                        ret    0x4
  004cfc72: b0 0b                                           mov    al,0xb
  004cfc74: 5d                                              pop    ebp
  004cfc75: c2 04 00                                        ret    0x4
  004cfc78: b0 0a                                           mov    al,0xa
  004cfc7a: 5d                                              pop    ebp
  004cfc7b: c2 04 00                                        ret    0x4
  004cfc7e: b0 09                                           mov    al,0x9
  004cfc80: 5d                                              pop    ebp
  004cfc81: c2 04 00                                        ret    0x4
  004cfc84: b0 08                                           mov    al,0x8
  004cfc86: 5d                                              pop    ebp
  004cfc87: c2 04 00                                        ret    0x4
  004cfc8a: b0 07                                           mov    al,0x7
  004cfc8c: 5d                                              pop    ebp
  004cfc8d: c2 04 00                                        ret    0x4
  004cfc90: b0 06                                           mov    al,0x6
  004cfc92: 5d                                              pop    ebp
  004cfc93: c2 04 00                                        ret    0x4
  004cfc96: b0 05                                           mov    al,0x5
  004cfc98: 5d                                              pop    ebp
  004cfc99: c2 04 00                                        ret    0x4
  004cfc9c: b0 04                                           mov    al,0x4
  004cfc9e: 5d                                              pop    ebp
  004cfc9f: c2 04 00                                        ret    0x4
  004cfca2: b0 03                                           mov    al,0x3
  004cfca4: 5d                                              pop    ebp
  004cfca5: c2 04 00                                        ret    0x4
  004cfca8: b0 02                                           mov    al,0x2
  004cfcaa: 5d                                              pop    ebp
  004cfcab: c2 04 00                                        ret    0x4
  004cfcae: b0 01                                           mov    al,0x1
  004cfcb0: 5d                                              pop    ebp
  004cfcb1: c2 04 00                                        ret    0x4
  004cfcb4: 32 c0                                           xor    al,al
  004cfcb6: 5d                                              pop    ebp
  004cfcb7: c2 04 00                                        ret    0x4
