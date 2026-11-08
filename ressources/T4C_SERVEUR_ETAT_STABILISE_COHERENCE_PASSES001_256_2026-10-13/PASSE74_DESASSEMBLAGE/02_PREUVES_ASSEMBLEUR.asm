; Passe 74 — PERSONNAGES_ET_INVENTAIRE
; PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions atteignables statiquement depuis les entrées définies, vérifiées octet par octet.
; NOP/INT3 exclues du comptage, zones data non traversées; branches indirectes non résolues.

; [0041D330] Character::?MoveUnit@Character ; instruction=230 ; plage_limite=0041D5C0 ; issues=0
  0041d330: 55                                             push   ebp
  0041d331: 8b ec                                          mov    ebp,esp
  0041d333: 83 ec 2c                                       sub    esp,0x2c
  0041d336: 53                                             push   ebx
  0041d337: 56                                             push   esi
  0041d338: 57                                             push   edi
  0041d339: 8b f1                                          mov    esi,ecx
  0041d33b: e8 40 29 00 00                                 call   0x41fc80
  0041d340: 8b 8e 78 01 00 00                              mov    ecx,DWORD PTR [esi+0x178]
  0041d346: 33 db                                          xor    ebx,ebx
  0041d348: 85 c9                                          test   ecx,ecx
  0041d34a: 89 4d f8                                       mov    DWORD PTR [ebp-0x8],ecx
  0041d34d: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  0041d350: 74 16                                          je     0x41d368
  0041d352: e8 89 77 03 00                                 call   0x454ae0
  0041d357: 83 e0 01                                       and    eax,0x1
  0041d35a: 33 c9                                          xor    ecx,ecx
  0041d35c: 0b c1                                          or     eax,ecx
  0041d35e: 74 08                                          je     0x41d368
  0041d360: bb 01 00 00 00                                 mov    ebx,0x1
  0041d365: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  0041d368: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  0041d36b: 85 c0                                          test   eax,eax
  0041d36d: 74 08                                          je     0x41d377
  0041d36f: bb 01 00 00 00                                 mov    ebx,0x1
  0041d374: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  0041d377: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041d379: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  0041d37c: 51                                             push   ecx
  0041d37d: 8b ce                                          mov    ecx,esi
  0041d37f: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  0041d382: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  0041d385: 83 ff 01                                       cmp    edi,0x1
  0041d388: 0f 85 e7 00 00 00                              jne    0x41d475
  0041d38e: c7 45 10 08 00 00 00                           mov    DWORD PTR [ebp+0x10],0x8
  0041d395: 8d 47 01                                       lea    eax,[edi+0x1]
  0041d398: 89 45 0c                                       mov    DWORD PTR [ebp+0xc],eax
  0041d39b: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  0041d39e: 8b 55 14                                       mov    edx,DWORD PTR [ebp+0x14]
  0041d3a1: 51                                             push   ecx
  0041d3a2: 52                                             push   edx
  0041d3a3: 53                                             push   ebx
  0041d3a4: 57                                             push   edi
  0041d3a5: 8d 45 d4                                       lea    eax,[ebp-0x2c]
  0041d3a8: 50                                             push   eax
  0041d3a9: 8b ce                                          mov    ecx,esi
  0041d3ab: e8 a0 e6 06 00                                 call   0x48ba50
  0041d3b0: 8b 5d ec                                       mov    ebx,DWORD PTR [ebp-0x14]
  0041d3b3: 8b d0                                          mov    edx,eax
  0041d3b5: 8b 02                                          mov    eax,DWORD PTR [edx]
  0041d3b7: 3b c3                                          cmp    eax,ebx
  0041d3b9: 89 45 e0                                       mov    DWORD PTR [ebp-0x20],eax
  0041d3bc: 8b 4a 04                                       mov    ecx,DWORD PTR [edx+0x4]
  0041d3bf: 89 4d e4                                       mov    DWORD PTR [ebp-0x1c],ecx
  0041d3c2: 8b 52 08                                       mov    edx,DWORD PTR [edx+0x8]
  0041d3c5: 89 55 e8                                       mov    DWORD PTR [ebp-0x18],edx
  0041d3c8: 0f 85 86 00 00 00                              jne    0x41d454
  0041d3ce: 3b 4d f0                                       cmp    ecx,DWORD PTR [ebp-0x10]
  0041d3d1: 75 72                                          jne    0x41d445
  0041d3d3: 3b 55 f4                                       cmp    edx,DWORD PTR [ebp-0xc]
  0041d3d6: 75 6d                                          jne    0x41d445
  0041d3d8: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  0041d3db: 8b 4d 14                                       mov    ecx,DWORD PTR [ebp+0x14]
  0041d3de: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  0041d3e1: 8b 7d 10                                       mov    edi,DWORD PTR [ebp+0x10]
  0041d3e4: 50                                             push   eax
  0041d3e5: 51                                             push   ecx
  0041d3e6: 52                                             push   edx
  0041d3e7: 57                                             push   edi
  0041d3e8: 8d 45 d4                                       lea    eax,[ebp-0x2c]
  0041d3eb: 50                                             push   eax
  0041d3ec: 8b ce                                          mov    ecx,esi
  0041d3ee: e8 5d e6 06 00                                 call   0x48ba50
  0041d3f3: 8b 5d ec                                       mov    ebx,DWORD PTR [ebp-0x14]
  0041d3f6: 8b d0                                          mov    edx,eax
  0041d3f8: 8b 02                                          mov    eax,DWORD PTR [edx]
  0041d3fa: 3b c3                                          cmp    eax,ebx
  0041d3fc: 89 45 e0                                       mov    DWORD PTR [ebp-0x20],eax
  0041d3ff: 8b 4a 04                                       mov    ecx,DWORD PTR [edx+0x4]
  0041d402: 89 4d e4                                       mov    DWORD PTR [ebp-0x1c],ecx
  0041d405: 8b 52 08                                       mov    edx,DWORD PTR [edx+0x8]
  0041d408: 89 55 e8                                       mov    DWORD PTR [ebp-0x18],edx
  0041d40b: 75 47                                          jne    0x41d454
  0041d40d: 3b 4d f0                                       cmp    ecx,DWORD PTR [ebp-0x10]
  0041d410: 75 33                                          jne    0x41d445
  0041d412: 3b 55 f4                                       cmp    edx,DWORD PTR [ebp-0xc]
  0041d415: 75 2e                                          jne    0x41d445
  0041d417: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  0041d41a: 8b 4d 14                                       mov    ecx,DWORD PTR [ebp+0x14]
  0041d41d: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  0041d420: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  0041d423: 50                                             push   eax
  0041d424: 51                                             push   ecx
  0041d425: 52                                             push   edx
  0041d426: 57                                             push   edi
  0041d427: 8d 45 d4                                       lea    eax,[ebp-0x2c]
  0041d42a: 50                                             push   eax
  0041d42b: 8b ce                                          mov    ecx,esi
  0041d42d: e8 1e e6 06 00                                 call   0x48ba50
  0041d432: 8b d0                                          mov    edx,eax
  0041d434: 8b 02                                          mov    eax,DWORD PTR [edx]
  0041d436: 89 45 e0                                       mov    DWORD PTR [ebp-0x20],eax
  0041d439: 8b 4a 04                                       mov    ecx,DWORD PTR [edx+0x4]
  0041d43c: 89 4d e4                                       mov    DWORD PTR [ebp-0x1c],ecx
  0041d43f: 8b 52 08                                       mov    edx,DWORD PTR [edx+0x8]
  0041d442: 89 55 e8                                       mov    DWORD PTR [ebp-0x18],edx
  0041d445: 3b 45 ec                                       cmp    eax,DWORD PTR [ebp-0x14]
  0041d448: 75 0a                                          jne    0x41d454
  0041d44a: 3b 4d f0                                       cmp    ecx,DWORD PTR [ebp-0x10]
  0041d44d: 75 05                                          jne    0x41d454
  0041d44f: 3b 55 f4                                       cmp    edx,DWORD PTR [ebp-0xc]
  0041d452: 74 74                                          je     0x41d4c8
  0041d454: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  0041d457: e8 84 76 03 00                                 call   0x454ae0
  0041d45c: 83 e0 02                                       and    eax,0x2
  0041d45f: 33 c9                                          xor    ecx,ecx
  0041d461: 0b c1                                          or     eax,ecx
  0041d463: 75 63                                          jne    0x41d4c8
  0041d465: 85 ff                                          test   edi,edi
  0041d467: 74 5f                                          je     0x41d4c8
  0041d469: 83 ff 08                                       cmp    edi,0x8
  0041d46c: 7e 22                                          jle    0x41d490
  0041d46e: bf 08 00 00 00                                 mov    edi,0x8
  0041d473: eb 25                                          jmp    0x41d49a
  0041d475: 83 ff 08                                       cmp    edi,0x8
  0041d478: 8d 57 ff                                       lea    edx,[edi-0x1]
  0041d47b: 89 55 10                                       mov    DWORD PTR [ebp+0x10],edx
  0041d47e: 0f 85 11 ff ff ff                              jne    0x41d395
  0041d484: c7 45 0c 01 00 00 00                           mov    DWORD PTR [ebp+0xc],0x1
  0041d48b: e9 0b ff ff ff                                 jmp    0x41d39b
  0041d490: 83 ff 01                                       cmp    edi,0x1
  0041d493: 7d 05                                          jge    0x41d49a
  0041d495: bf 01 00 00 00                                 mov    edi,0x1
  0041d49a: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  0041d49d: 50                                             push   eax
  0041d49e: e8 1d 4a 05 00                                 call   0x471ec0
  0041d4a3: 83 c4 04                                       add    esp,0x4
  0041d4a6: 85 c0                                          test   eax,eax
  0041d4a8: 74 1e                                          je     0x41d4c8
  0041d4aa: 8b 55 ec                                       mov    edx,DWORD PTR [ebp-0x14]
  0041d4ad: 57                                             push   edi
  0041d4ae: 83 ec 0c                                       sub    esp,0xc
  0041d4b1: 8b cc                                          mov    ecx,esp
  0041d4b3: 89 11                                          mov    DWORD PTR [ecx],edx
  0041d4b5: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  0041d4b8: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  0041d4bb: 8b 55 f4                                       mov    edx,DWORD PTR [ebp-0xc]
  0041d4be: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  0041d4c1: 8b c8                                          mov    ecx,eax
  0041d4c3: e8 f8 4e 09 00                                 call   0x4b23c0
  0041d4c8: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041d4ca: 6a 10                                          push   0x10
  0041d4cc: 8b ce                                          mov    ecx,esi
  0041d4ce: ff 90 70 01 00 00                              call   DWORD PTR [eax+0x170]
  0041d4d4: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041d4d6: 33 db                                          xor    ebx,ebx
  0041d4d8: 53                                             push   ebx
  0041d4d9: 68 53 4e 00 00                                 push   0x4e53
  0041d4de: 8b ce                                          mov    ecx,esi
  0041d4e0: 8b f8                                          mov    edi,eax
  0041d4e2: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  0041d4e5: 85 c0                                          test   eax,eax
  0041d4e7: 74 34                                          je     0x41d51d
  0041d4e9: 3b fb                                          cmp    edi,ebx
  0041d4eb: 74 26                                          je     0x41d513
  0041d4ed: 33 c0                                          xor    eax,eax
  0041d4ef: 66 8b 07                                       mov    ax,WORD PTR [edi]
  0041d4f2: 66 05 10 27                                    add    ax,0x2710
  0041d4f6: 8b ce                                          mov    ecx,esi
  0041d4f8: 50                                             push   eax
  0041d4f9: e8 62 09 07 00                                 call   0x48de60
  0041d4fe: 8b 4f 04                                       mov    ecx,DWORD PTR [edi+0x4]
  0041d501: f7 d8                                          neg    eax
  0041d503: 3b c1                                          cmp    eax,ecx
  0041d505: 7e 05                                          jle    0x41d50c
  0041d507: 89 5f 04                                       mov    DWORD PTR [edi+0x4],ebx
  0041d50a: eb 07                                          jmp    0x41d513
  0041d50c: 2b c8                                          sub    ecx,eax
  0041d50e: 89 4d 18                                       mov    DWORD PTR [ebp+0x18],ecx
  0041d511: 75 0a                                          jne    0x41d51d
  0041d513: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041d515: 8b ce                                          mov    ecx,esi
  0041d517: ff 92 d4 01 00 00                              call   DWORD PTR [edx+0x1d4]
  0041d51d: 8b 86 18 03 00 00                              mov    eax,DWORD PTR [esi+0x318]
  0041d523: 89 86 14 03 00 00                              mov    DWORD PTR [esi+0x314],eax
  0041d529: 89 9e 34 03 00 00                              mov    DWORD PTR [esi+0x334],ebx
  0041d52f: c6 86 28 03 00 00 08                           mov    BYTE PTR [esi+0x328],0x8
  0041d536: bf 01 00 00 00                                 mov    edi,0x1
  0041d53b: 39 9e 34 03 00 00                              cmp    DWORD PTR [esi+0x334],ebx
  0041d541: 74 10                                          je     0x41d553
  0041d543: 8b 8e 14 03 00 00                              mov    ecx,DWORD PTR [esi+0x314]
  0041d549: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0041d54b: 89 96 14 03 00 00                              mov    DWORD PTR [esi+0x314],edx
  0041d551: eb 06                                          jmp    0x41d559
  0041d553: 89 be 34 03 00 00                              mov    DWORD PTR [esi+0x334],edi
  0041d559: 8b 86 14 03 00 00                              mov    eax,DWORD PTR [esi+0x314]
  0041d55f: 3b c3                                          cmp    eax,ebx
  0041d561: 74 1b                                          je     0x41d57e
  0041d563: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  0041d566: 8b 10                                          mov    edx,DWORD PTR [eax]
  0041d568: 50                                             push   eax
  0041d569: 53                                             push   ebx
  0041d56a: 8d 4d e0                                       lea    ecx,[ebp-0x20]
  0041d56d: 51                                             push   ecx
  0041d56e: 53                                             push   ebx
  0041d56f: 53                                             push   ebx
  0041d570: 56                                             push   esi
  0041d571: 6a 10                                          push   0x10
  0041d573: 52                                             push   edx
  0041d574: e8 87 2a 04 00                                 call   0x460000
  0041d579: 83 c4 20                                       add    esp,0x20
  0041d57c: eb bd                                          jmp    0x41d53b
  0041d57e: 39 9e 34 03 00 00                              cmp    DWORD PTR [esi+0x334],ebx
  0041d584: 74 07                                          je     0x41d58d
  0041d586: c6 86 28 03 00 00 07                           mov    BYTE PTR [esi+0x328],0x7
  0041d58d: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0041d590: 8b 55 e0                                       mov    edx,DWORD PTR [ebp-0x20]
  0041d593: 89 9e 34 03 00 00                              mov    DWORD PTR [esi+0x334],ebx
  0041d599: 8b c8                                          mov    ecx,eax
  0041d59b: 89 11                                          mov    DWORD PTR [ecx],edx
  0041d59d: 8b 55 e4                                       mov    edx,DWORD PTR [ebp-0x1c]
  0041d5a0: 5f                                             pop    edi
  0041d5a1: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  0041d5a4: 8b 55 e8                                       mov    edx,DWORD PTR [ebp-0x18]
  0041d5a7: 5e                                             pop    esi
  0041d5a8: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  0041d5ab: 5b                                             pop    ebx
  0041d5ac: 8b e5                                          mov    esp,ebp
  0041d5ae: 5d                                             pop    ebp
  0041d5af: c2 14 00                                       ret    0x14

; [00417BE0] Character::?CanEquip@Character ; instruction=552 ; plage_limite=00418340 ; issues=0
  00417be0: 55                                             push   ebp
  00417be1: 8b ec                                          mov    ebp,esp
  00417be3: 6a ff                                          push   0xffffffff
  00417be5: 68 60 3d 4d 00                                 push   0x4d3d60
  00417bea: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00417bf0: 50                                             push   eax
  00417bf1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00417bf8: 81 ec 30 08 00 00                              sub    esp,0x830
  00417bfe: 53                                             push   ebx
  00417bff: 56                                             push   esi
  00417c00: 57                                             push   edi
  00417c01: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  00417c04: 8b f1                                          mov    esi,ecx
  00417c06: 8b cf                                          mov    ecx,edi
  00417c08: bb 01 00 00 00                                 mov    ebx,0x1
  00417c0d: e8 5e 3a 07 00                                 call   0x48b670
  00417c12: 3c 03                                          cmp    al,0x3
  00417c14: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  00417c17: 74 0a                                          je     0x417c23
  00417c19: 85 c0                                          test   eax,eax
  00417c1b: 0f 84 ff 06 00 00                              je     0x418320
  00417c21: eb 19                                          jmp    0x417c3c
  00417c23: 85 c0                                          test   eax,eax
  00417c25: 75 15                                          jne    0x417c3c
  00417c27: 8b 07                                          mov    eax,DWORD PTR [edi]
  00417c29: 8d 4d 0c                                       lea    ecx,[ebp+0xc]
  00417c2c: 51                                             push   ecx
  00417c2d: 6a 00                                          push   0x0
  00417c2f: 6a 00                                          push   0x0
  00417c31: 6a 00                                          push   0x0
  00417c33: 6a 00                                          push   0x0
  00417c35: 6a 14                                          push   0x14
  00417c37: 8b cf                                          mov    ecx,edi
  00417c39: ff 50 24                                       call   DWORD PTR [eax+0x24]
  00417c3c: 8b 7d 14                                       mov    edi,DWORD PTR [ebp+0x14]
  00417c3f: 85 ff                                          test   edi,edi
  00417c41: c6 85 c4 f7 ff ff 00                           mov    BYTE PTR [ebp-0x83c],0x0
  00417c48: c6 45 0b 00                                    mov    BYTE PTR [ebp+0xb],0x0
  00417c4c: 74 72                                          je     0x417cc0
  00417c4e: 8b 16                                          mov    edx,DWORD PTR [esi]
  00417c50: 68 58 13 51 00                                 push   0x511358
  00417c55: 8b ce                                          mov    ecx,esi
  00417c57: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  00417c5d: 50                                             push   eax
  00417c5e: 68 6d 1c 00 00                                 push   0x1c6d
  00417c63: e8 88 5d 02 00                                 call   0x43d9f0
  00417c68: 83 c4 0c                                       add    esp,0xc
  00417c6b: 50                                             push   eax
  00417c6c: 8b cf                                          mov    ecx,edi
  00417c6e: e8 e5 9d 0b 00                                 call   0x4d1a58
  00417c73: 33 c0                                          xor    eax,eax
  00417c75: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  00417c78: 66 8b 40 3a                                    mov    ax,WORD PTR [eax+0x3a]
  00417c7c: 66 85 c0                                       test   ax,ax
  00417c7f: 74 3f                                          je     0x417cc0
  00417c81: 8b 16                                          mov    edx,DWORD PTR [esi]
  00417c83: 25 ff ff 00 00                                 and    eax,0xffff
  00417c88: 50                                             push   eax
  00417c89: 68 58 13 51 00                                 push   0x511358
  00417c8e: 8b ce                                          mov    ecx,esi
  00417c90: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  00417c96: 50                                             push   eax
  00417c97: 68 70 1c 00 00                                 push   0x1c70
  00417c9c: e8 4f 5d 02 00                                 call   0x43d9f0
  00417ca1: 83 c4 0c                                       add    esp,0xc
  00417ca4: 50                                             push   eax
  00417ca5: 8d 85 c4 f7 ff ff                              lea    eax,[ebp-0x83c]
  00417cab: 50                                             push   eax
  00417cac: e8 8f bc fe ff                                 call   0x403940
  00417cb1: 83 c4 0c                                       add    esp,0xc
  00417cb4: 50                                             push   eax
  00417cb5: 8b cf                                          mov    ecx,edi
  00417cb7: e8 96 9d 0b 00                                 call   0x4d1a52
  00417cbc: c6 45 0b 01                                    mov    BYTE PTR [ebp+0xb],0x1
  00417cc0: 8b ce                                          mov    ecx,esi
  00417cc2: e8 79 65 07 00                                 call   0x48e240
  00417cc7: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00417cca: 66 3b 41 3a                                    cmp    ax,WORD PTR [ecx+0x3a]
  00417cce: 0f 83 98 00 00 00                              jae    0x417d6c
  00417cd4: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  00417cd7: 33 db                                          xor    ebx,ebx
  00417cd9: 3b c3                                          cmp    eax,ebx
  00417cdb: 0f 84 8b 00 00 00                              je     0x417d6c
  00417ce1: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417ce4: e8 07 e1 06 00                                 call   0x485df0
  00417ce9: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417cec: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00417cef: e8 6a 9d 0b 00                                 call   0x4d1a5e
  00417cf4: 33 d2                                          xor    edx,edx
  00417cf6: 66 8b 96 1c 01 00 00                           mov    dx,WORD PTR [esi+0x11c]
  00417cfd: 68 58 13 51 00                                 push   0x511358
  00417d02: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00417d06: 52                                             push   edx
  00417d07: 6a 08                                          push   0x8
  00417d09: e8 e2 5c 02 00                                 call   0x43d9f0
  00417d0e: 83 c4 0c                                       add    esp,0xc
  00417d11: 50                                             push   eax
  00417d12: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417d15: e8 3e 9d 0b 00                                 call   0x4d1a58
  00417d1a: 6a 3f                                          push   0x3f
  00417d1c: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417d1f: e8 2c e4 06 00                                 call   0x486150
  00417d24: 6a 1e                                          push   0x1e
  00417d26: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417d29: e8 22 e4 06 00                                 call   0x486150
  00417d2e: 6a 03                                          push   0x3
  00417d30: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417d33: e8 18 e4 06 00                                 call   0x486150
  00417d38: 8d 45 14                                       lea    eax,[ebp+0x14]
  00417d3b: 50                                             push   eax
  00417d3c: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417d3f: e8 0c e6 06 00                                 call   0x486350
  00417d44: 8b 16                                          mov    edx,DWORD PTR [esi]
  00417d46: 8d 45 dc                                       lea    eax,[ebp-0x24]
  00417d49: 50                                             push   eax
  00417d4a: 8b ce                                          mov    ecx,esi
  00417d4c: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00417d52: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417d55: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00417d58: e8 e3 9c 0b 00                                 call   0x4d1a40
  00417d5d: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417d60: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00417d67: e8 14 e1 06 00                                 call   0x485e80
  00417d6c: 85 ff                                          test   edi,edi
  00417d6e: 74 50                                          je     0x417dc0
  00417d70: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00417d73: 33 c0                                          xor    eax,eax
  00417d75: 66 8b 81 22 01 00 00                           mov    ax,WORD PTR [ecx+0x122]
  00417d7c: 66 85 c0                                       test   ax,ax
  00417d7f: 74 3f                                          je     0x417dc0
  00417d81: 8b 16                                          mov    edx,DWORD PTR [esi]
  00417d83: 25 ff ff 00 00                                 and    eax,0xffff
  00417d88: 50                                             push   eax
  00417d89: 68 58 13 51 00                                 push   0x511358
  00417d8e: 8b ce                                          mov    ecx,esi
  00417d90: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  00417d96: 50                                             push   eax
  00417d97: 68 6f 1c 00 00                                 push   0x1c6f
  00417d9c: e8 4f 5c 02 00                                 call   0x43d9f0
  00417da1: 83 c4 0c                                       add    esp,0xc
  00417da4: 50                                             push   eax
  00417da5: 8d 85 c4 f7 ff ff                              lea    eax,[ebp-0x83c]
  00417dab: 50                                             push   eax
  00417dac: e8 8f bb fe ff                                 call   0x403940
  00417db1: 83 c4 0c                                       add    esp,0xc
  00417db4: 50                                             push   eax
  00417db5: 8b cf                                          mov    ecx,edi
  00417db7: e8 96 9c 0b 00                                 call   0x4d1a52
  00417dbc: c6 45 0b 01                                    mov    BYTE PTR [ebp+0xb],0x1
  00417dc0: 8b ce                                          mov    ecx,esi
  00417dc2: e8 89 64 07 00                                 call   0x48e250
  00417dc7: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00417dca: 66 3b 81 22 01 00 00                           cmp    ax,WORD PTR [ecx+0x122]
  00417dd1: 0f 83 9d 00 00 00                              jae    0x417e74
  00417dd7: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  00417dda: 85 c0                                          test   eax,eax
  00417ddc: 0f 84 90 00 00 00                              je     0x417e72
  00417de2: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417de5: e8 06 e0 06 00                                 call   0x485df0
  00417dea: bb 02 00 00 00                                 mov    ebx,0x2
  00417def: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417df2: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00417df5: e8 64 9c 0b 00                                 call   0x4d1a5e
  00417dfa: 33 d2                                          xor    edx,edx
  00417dfc: 66 8b 96 1c 01 00 00                           mov    dx,WORD PTR [esi+0x11c]
  00417e03: 68 58 13 51 00                                 push   0x511358
  00417e08: c6 45 fc 03                                    mov    BYTE PTR [ebp-0x4],0x3
  00417e0c: 52                                             push   edx
  00417e0d: 6a 01                                          push   0x1
  00417e0f: e8 dc 5b 02 00                                 call   0x43d9f0
  00417e14: 83 c4 0c                                       add    esp,0xc
  00417e17: 50                                             push   eax
  00417e18: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417e1b: e8 38 9c 0b 00                                 call   0x4d1a58
  00417e20: 6a 3f                                          push   0x3f
  00417e22: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417e25: e8 26 e3 06 00                                 call   0x486150
  00417e2a: 6a 1e                                          push   0x1e
  00417e2c: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417e2f: e8 1c e3 06 00                                 call   0x486150
  00417e34: 6a 03                                          push   0x3
  00417e36: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417e39: e8 12 e3 06 00                                 call   0x486150
  00417e3e: 8d 45 14                                       lea    eax,[ebp+0x14]
  00417e41: 50                                             push   eax
  00417e42: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417e45: e8 06 e5 06 00                                 call   0x486350
  00417e4a: 8b 16                                          mov    edx,DWORD PTR [esi]
  00417e4c: 8d 45 dc                                       lea    eax,[ebp-0x24]
  00417e4f: 50                                             push   eax
  00417e50: 8b ce                                          mov    ecx,esi
  00417e52: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00417e58: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417e5b: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00417e5e: e8 dd 9b 0b 00                                 call   0x4d1a40
  00417e63: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417e66: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00417e6d: e8 0e e0 06 00                                 call   0x485e80
  00417e72: 33 db                                          xor    ebx,ebx
  00417e74: 85 ff                                          test   edi,edi
  00417e76: 74 4c                                          je     0x417ec4
  00417e78: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00417e7b: 33 c0                                          xor    eax,eax
  00417e7d: 66 8b 81 20 01 00 00                           mov    ax,WORD PTR [ecx+0x120]
  00417e84: 66 85 c0                                       test   ax,ax
  00417e87: 74 3b                                          je     0x417ec4
  00417e89: 8b 16                                          mov    edx,DWORD PTR [esi]
  00417e8b: 25 ff ff 00 00                                 and    eax,0xffff
  00417e90: 50                                             push   eax
  00417e91: 68 58 13 51 00                                 push   0x511358
  00417e96: 8b ce                                          mov    ecx,esi
  00417e98: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  00417e9e: 50                                             push   eax
  00417e9f: 68 8e 2c 00 00                                 push   0x2c8e
  00417ea4: e8 47 5b 02 00                                 call   0x43d9f0
  00417ea9: 83 c4 0c                                       add    esp,0xc
  00417eac: 50                                             push   eax
  00417ead: 8d 85 c4 f7 ff ff                              lea    eax,[ebp-0x83c]
  00417eb3: 50                                             push   eax
  00417eb4: e8 87 ba fe ff                                 call   0x403940
  00417eb9: 83 c4 0c                                       add    esp,0xc
  00417ebc: 50                                             push   eax
  00417ebd: 8b cf                                          mov    ecx,edi
  00417ebf: e8 8e 9b 0b 00                                 call   0x4d1a52
  00417ec4: 8b ce                                          mov    ecx,esi
  00417ec6: e8 b5 63 07 00                                 call   0x48e280
  00417ecb: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00417ece: 66 3b 81 20 01 00 00                           cmp    ax,WORD PTR [ecx+0x120]
  00417ed5: 0f 83 a0 00 00 00                              jae    0x417f7b
  00417edb: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  00417ede: 85 c0                                          test   eax,eax
  00417ee0: 0f 84 93 00 00 00                              je     0x417f79
  00417ee6: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417ee9: e8 02 df 06 00                                 call   0x485df0
  00417eee: bb 04 00 00 00                                 mov    ebx,0x4
  00417ef3: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417ef6: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00417ef9: e8 60 9b 0b 00                                 call   0x4d1a5e
  00417efe: 33 d2                                          xor    edx,edx
  00417f00: 66 8b 96 1c 01 00 00                           mov    dx,WORD PTR [esi+0x11c]
  00417f07: 68 58 13 51 00                                 push   0x511358
  00417f0c: c6 45 fc 05                                    mov    BYTE PTR [ebp-0x4],0x5
  00417f10: 52                                             push   edx
  00417f11: 68 8d 2c 00 00                                 push   0x2c8d
  00417f16: e8 d5 5a 02 00                                 call   0x43d9f0
  00417f1b: 83 c4 0c                                       add    esp,0xc
  00417f1e: 50                                             push   eax
  00417f1f: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417f22: e8 31 9b 0b 00                                 call   0x4d1a58
  00417f27: 6a 3f                                          push   0x3f
  00417f29: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417f2c: e8 1f e2 06 00                                 call   0x486150
  00417f31: 6a 1e                                          push   0x1e
  00417f33: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417f36: e8 15 e2 06 00                                 call   0x486150
  00417f3b: 6a 03                                          push   0x3
  00417f3d: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417f40: e8 0b e2 06 00                                 call   0x486150
  00417f45: 8d 45 14                                       lea    eax,[ebp+0x14]
  00417f48: 50                                             push   eax
  00417f49: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417f4c: e8 ff e3 06 00                                 call   0x486350
  00417f51: 8b 16                                          mov    edx,DWORD PTR [esi]
  00417f53: 8d 45 dc                                       lea    eax,[ebp-0x24]
  00417f56: 50                                             push   eax
  00417f57: 8b ce                                          mov    ecx,esi
  00417f59: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00417f5f: 8d 4d 14                                       lea    ecx,[ebp+0x14]
  00417f62: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00417f65: e8 d6 9a 0b 00                                 call   0x4d1a40
  00417f6a: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00417f6d: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00417f74: e8 07 df 06 00                                 call   0x485e80
  00417f79: 33 db                                          xor    ebx,ebx
  00417f7b: 85 ff                                          test   edi,edi
  00417f7d: 0f 84 5f 01 00 00                              je     0x4180e2
  00417f83: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00417f86: 8b 81 34 01 00 00                              mov    eax,DWORD PTR [ecx+0x134]
  00417f8c: 85 c0                                          test   eax,eax
  00417f8e: 74 56                                          je     0x417fe6
  00417f90: 8a 45 0b                                       mov    al,BYTE PTR [ebp+0xb]
  00417f93: 84 c0                                          test   al,al
  00417f95: 74 0c                                          je     0x417fa3
  00417f97: 68 00 20 50 00                                 push   0x502000
  00417f9c: 8b cf                                          mov    ecx,edi
  00417f9e: e8 af 9a 0b 00                                 call   0x4d1a52
  00417fa3: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  00417fa6: 8b 82 34 01 00 00                              mov    eax,DWORD PTR [edx+0x134]
  00417fac: 8b 16                                          mov    edx,DWORD PTR [esi]
  00417fae: 50                                             push   eax
  00417faf: 68 58 13 51 00                                 push   0x511358
  00417fb4: 8b ce                                          mov    ecx,esi
  00417fb6: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  00417fbc: 50                                             push   eax
  00417fbd: 68 72 1c 00 00                                 push   0x1c72
  00417fc2: e8 29 5a 02 00                                 call   0x43d9f0
  00417fc7: 83 c4 0c                                       add    esp,0xc
  00417fca: 50                                             push   eax
  00417fcb: 8d 85 c4 f7 ff ff                              lea    eax,[ebp-0x83c]
  00417fd1: 50                                             push   eax
  00417fd2: e8 69 b9 fe ff                                 call   0x403940
  00417fd7: 83 c4 0c                                       add    esp,0xc
  00417fda: 50                                             push   eax
  00417fdb: 8b cf                                          mov    ecx,edi
  00417fdd: e8 70 9a 0b 00                                 call   0x4d1a52
  00417fe2: c6 45 0b 01                                    mov    BYTE PTR [ebp+0xb],0x1
  00417fe6: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00417fe9: 8b 81 30 01 00 00                              mov    eax,DWORD PTR [ecx+0x130]
  00417fef: 85 c0                                          test   eax,eax
  00417ff1: 74 56                                          je     0x418049
  00417ff3: 8a 45 0b                                       mov    al,BYTE PTR [ebp+0xb]
  00417ff6: 84 c0                                          test   al,al
  00417ff8: 74 0c                                          je     0x418006
  00417ffa: 68 00 20 50 00                                 push   0x502000
  00417fff: 8b cf                                          mov    ecx,edi
  00418001: e8 4c 9a 0b 00                                 call   0x4d1a52
  00418006: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  00418009: 8b 82 30 01 00 00                              mov    eax,DWORD PTR [edx+0x130]
  0041800f: 8b 16                                          mov    edx,DWORD PTR [esi]
  00418011: 50                                             push   eax
  00418012: 68 58 13 51 00                                 push   0x511358
  00418017: 8b ce                                          mov    ecx,esi
  00418019: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  0041801f: 50                                             push   eax
  00418020: 68 73 1c 00 00                                 push   0x1c73
  00418025: e8 c6 59 02 00                                 call   0x43d9f0
  0041802a: 83 c4 0c                                       add    esp,0xc
  0041802d: 50                                             push   eax
  0041802e: 8d 85 c4 f7 ff ff                              lea    eax,[ebp-0x83c]
  00418034: 50                                             push   eax
  00418035: e8 06 b9 fe ff                                 call   0x403940
  0041803a: 83 c4 0c                                       add    esp,0xc
  0041803d: 50                                             push   eax
  0041803e: 8b cf                                          mov    ecx,edi
  00418040: e8 0d 9a 0b 00                                 call   0x4d1a52
  00418045: c6 45 0b 01                                    mov    BYTE PTR [ebp+0xb],0x1
  00418049: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  0041804c: 66 83 b9 24 01 00 00 00                        cmp    WORD PTR [ecx+0x124],0x0
  00418054: 8a 45 0b                                       mov    al,BYTE PTR [ebp+0xb]
  00418057: 74 59                                          je     0x4180b2
  00418059: 84 c0                                          test   al,al
  0041805b: 74 0c                                          je     0x418069
  0041805d: 68 00 20 50 00                                 push   0x502000
  00418062: 8b cf                                          mov    ecx,edi
  00418064: e8 e9 99 0b 00                                 call   0x4d1a52
  00418069: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  0041806c: 33 d2                                          xor    edx,edx
  0041806e: 66 8b 90 24 01 00 00                           mov    dx,WORD PTR [eax+0x124]
  00418075: 8b ce                                          mov    ecx,esi
  00418077: 52                                             push   edx
  00418078: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041807a: 68 58 13 51 00                                 push   0x511358
  0041807f: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  00418085: 50                                             push   eax
  00418086: 68 71 1c 00 00                                 push   0x1c71
  0041808b: e8 60 59 02 00                                 call   0x43d9f0
  00418090: 83 c4 0c                                       add    esp,0xc
  00418093: 50                                             push   eax
  00418094: 8d 85 c4 f7 ff ff                              lea    eax,[ebp-0x83c]
  0041809a: 50                                             push   eax
  0041809b: e8 a0 b8 fe ff                                 call   0x403940
  004180a0: 83 c4 0c                                       add    esp,0xc
  004180a3: 50                                             push   eax
  004180a4: 8b cf                                          mov    ecx,edi
  004180a6: e8 a7 99 0b 00                                 call   0x4d1a52
  004180ab: 68 48 04 50 00                                 push   0x500448
  004180b0: eb 29                                          jmp    0x4180db
  004180b2: 84 c0                                          test   al,al
  004180b4: 74 07                                          je     0x4180bd
  004180b6: 68 48 04 50 00                                 push   0x500448
  004180bb: eb 1e                                          jmp    0x4180db
  004180bd: 8b 16                                          mov    edx,DWORD PTR [esi]
  004180bf: 68 58 13 51 00                                 push   0x511358
  004180c4: 8b ce                                          mov    ecx,esi
  004180c6: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  004180cc: 50                                             push   eax
  004180cd: 68 76 1c 00 00                                 push   0x1c76
  004180d2: e8 19 59 02 00                                 call   0x43d9f0
  004180d7: 83 c4 0c                                       add    esp,0xc
  004180da: 50                                             push   eax
  004180db: 8b cf                                          mov    ecx,edi
  004180dd: e8 70 99 0b 00                                 call   0x4d1a52
  004180e2: 8b ce                                          mov    ecx,esi
  004180e4: e8 47 61 07 00                                 call   0x48e230
  004180e9: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004180ec: 8b 91 34 01 00 00                              mov    edx,DWORD PTR [ecx+0x134]
  004180f2: 25 ff ff 00 00                                 and    eax,0xffff
  004180f7: 3b d0                                          cmp    edx,eax
  004180f9: 0f 8e 9d 00 00 00                              jle    0x41819c
  004180ff: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  00418102: 85 c0                                          test   eax,eax
  00418104: 0f 84 90 00 00 00                              je     0x41819a
  0041810a: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041810d: e8 de dc 06 00                                 call   0x485df0
  00418112: bb 06 00 00 00                                 mov    ebx,0x6
  00418117: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0041811a: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  0041811d: e8 3c 99 0b 00                                 call   0x4d1a5e
  00418122: 33 d2                                          xor    edx,edx
  00418124: 66 8b 96 1c 01 00 00                           mov    dx,WORD PTR [esi+0x11c]
  0041812b: 68 58 13 51 00                                 push   0x511358
  00418130: c6 45 fc 07                                    mov    BYTE PTR [ebp-0x4],0x7
  00418134: 52                                             push   edx
  00418135: 6a 0f                                          push   0xf
  00418137: e8 b4 58 02 00                                 call   0x43d9f0
  0041813c: 83 c4 0c                                       add    esp,0xc
  0041813f: 50                                             push   eax
  00418140: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  00418143: e8 10 99 0b 00                                 call   0x4d1a58
  00418148: 6a 3f                                          push   0x3f
  0041814a: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041814d: e8 fe df 06 00                                 call   0x486150
  00418152: 6a 1e                                          push   0x1e
  00418154: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00418157: e8 f4 df 06 00                                 call   0x486150
  0041815c: 6a 03                                          push   0x3
  0041815e: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00418161: e8 ea df 06 00                                 call   0x486150
  00418166: 8d 45 08                                       lea    eax,[ebp+0x8]
  00418169: 50                                             push   eax
  0041816a: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041816d: e8 de e1 06 00                                 call   0x486350
  00418172: 8b 16                                          mov    edx,DWORD PTR [esi]
  00418174: 8d 45 dc                                       lea    eax,[ebp-0x24]
  00418177: 50                                             push   eax
  00418178: 8b ce                                          mov    ecx,esi
  0041817a: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00418180: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  00418183: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00418186: e8 b5 98 0b 00                                 call   0x4d1a40
  0041818b: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041818e: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00418195: e8 e6 dc 06 00                                 call   0x485e80
  0041819a: 33 db                                          xor    ebx,ebx
  0041819c: 8b ce                                          mov    ecx,esi
  0041819e: e8 cd 60 07 00                                 call   0x48e270
  004181a3: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004181a6: 8b 91 30 01 00 00                              mov    edx,DWORD PTR [ecx+0x130]
  004181ac: 25 ff ff 00 00                                 and    eax,0xffff
  004181b1: 3b d0                                          cmp    edx,eax
  004181b3: 0f 8e 9d 00 00 00                              jle    0x418256
  004181b9: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004181bc: 85 c0                                          test   eax,eax
  004181be: 0f 84 90 00 00 00                              je     0x418254
  004181c4: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  004181c7: e8 24 dc 06 00                                 call   0x485df0
  004181cc: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  004181cf: c7 45 fc 08 00 00 00                           mov    DWORD PTR [ebp-0x4],0x8
  004181d6: e8 83 98 0b 00                                 call   0x4d1a5e
  004181db: 33 d2                                          xor    edx,edx
  004181dd: 66 8b 96 1c 01 00 00                           mov    dx,WORD PTR [esi+0x11c]
  004181e4: 68 58 13 51 00                                 push   0x511358
  004181e9: c6 45 fc 09                                    mov    BYTE PTR [ebp-0x4],0x9
  004181ed: 52                                             push   edx
  004181ee: 6a 15                                          push   0x15
  004181f0: e8 fb 57 02 00                                 call   0x43d9f0
  004181f5: 83 c4 0c                                       add    esp,0xc
  004181f8: 50                                             push   eax
  004181f9: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  004181fc: e8 57 98 0b 00                                 call   0x4d1a58
  00418201: 6a 3f                                          push   0x3f
  00418203: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00418206: e8 45 df 06 00                                 call   0x486150
  0041820b: 6a 1e                                          push   0x1e
  0041820d: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00418210: e8 3b df 06 00                                 call   0x486150
  00418215: 6a 03                                          push   0x3
  00418217: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041821a: e8 31 df 06 00                                 call   0x486150
  0041821f: 8d 45 08                                       lea    eax,[ebp+0x8]
  00418222: 50                                             push   eax
  00418223: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00418226: e8 25 e1 06 00                                 call   0x486350
  0041822b: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041822d: 8d 45 dc                                       lea    eax,[ebp-0x24]
  00418230: 50                                             push   eax
  00418231: 8b ce                                          mov    ecx,esi
  00418233: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00418239: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0041823c: c6 45 fc 08                                    mov    BYTE PTR [ebp-0x4],0x8
  00418240: e8 fb 97 0b 00                                 call   0x4d1a40
  00418245: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  00418248: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0041824f: e8 2c dc 06 00                                 call   0x485e80
  00418254: 33 db                                          xor    ebx,ebx
  00418256: 8b ce                                          mov    ecx,esi
  00418258: e8 03 60 07 00                                 call   0x48e260
  0041825d: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  00418260: 66 3b 81 24 01 00 00                           cmp    ax,WORD PTR [ecx+0x124]
  00418267: 0f 83 b3 00 00 00                              jae    0x418320
  0041826d: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  00418270: 85 c0                                          test   eax,eax
  00418272: 0f 84 93 00 00 00                              je     0x41830b
  00418278: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041827b: e8 70 db 06 00                                 call   0x485df0
  00418280: bb 0a 00 00 00                                 mov    ebx,0xa
  00418285: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  00418288: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  0041828b: e8 ce 97 0b 00                                 call   0x4d1a5e
  00418290: 33 d2                                          xor    edx,edx
  00418292: 66 8b 96 1c 01 00 00                           mov    dx,WORD PTR [esi+0x11c]
  00418299: 68 58 13 51 00                                 push   0x511358
  0041829e: c6 45 fc 0b                                    mov    BYTE PTR [ebp-0x4],0xb
  004182a2: 52                                             push   edx
  004182a3: 68 a7 1e 00 00                                 push   0x1ea7
  004182a8: e8 43 57 02 00                                 call   0x43d9f0
  004182ad: 83 c4 0c                                       add    esp,0xc
  004182b0: 50                                             push   eax
  004182b1: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  004182b4: e8 9f 97 0b 00                                 call   0x4d1a58
  004182b9: 6a 3f                                          push   0x3f
  004182bb: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004182be: e8 8d de 06 00                                 call   0x486150
  004182c3: 6a 1e                                          push   0x1e
  004182c5: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004182c8: e8 83 de 06 00                                 call   0x486150
  004182cd: 6a 03                                          push   0x3
  004182cf: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004182d2: e8 79 de 06 00                                 call   0x486150
  004182d7: 8d 45 10                                       lea    eax,[ebp+0x10]
  004182da: 50                                             push   eax
  004182db: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004182de: e8 6d e0 06 00                                 call   0x486350
  004182e3: 8b 16                                          mov    edx,DWORD PTR [esi]
  004182e5: 8d 45 c4                                       lea    eax,[ebp-0x3c]
  004182e8: 50                                             push   eax
  004182e9: 8b ce                                          mov    ecx,esi
  004182eb: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  004182f1: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  004182f4: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  004182f7: e8 44 97 0b 00                                 call   0x4d1a40
  004182fc: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  004182ff: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00418306: e8 75 db 06 00                                 call   0x485e80
  0041830b: 5f                                             pop    edi
  0041830c: 5e                                             pop    esi
  0041830d: 33 c0                                          xor    eax,eax
  0041830f: 5b                                             pop    ebx
  00418310: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00418313: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0041831a: 8b e5                                          mov    esp,ebp
  0041831c: 5d                                             pop    ebp
  0041831d: c2 10 00                                       ret    0x10
  00418320: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00418323: 5f                                             pop    edi
  00418324: 5e                                             pop    esi
  00418325: 8b c3                                          mov    eax,ebx
  00418327: 5b                                             pop    ebx
  00418328: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0041832f: 8b e5                                          mov    esp,ebp
  00418331: 5d                                             pop    ebp
  00418332: c2 10 00                                       ret    0x10

; [00418340] Character::?QueryEquip@Character ; instruction=78 ; plage_limite=00418590 ; issues=0
  00418340: 55                                             push   ebp
  00418341: 8b ec                                          mov    ebp,esp
  00418343: 53                                             push   ebx
  00418344: 8a 5d 0c                                       mov    bl,BYTE PTR [ebp+0xc]
  00418347: 80 fb 01                                       cmp    bl,0x1
  0041834a: 56                                             push   esi
  0041834b: 57                                             push   edi
  0041834c: 8b f1                                          mov    esi,ecx
  0041834e: bf 01 00 00 00                                 mov    edi,0x1
  00418353: 0f 84 92 01 00 00                              je     0x4184eb
  00418359: 80 fb 02                                       cmp    bl,0x2
  0041835c: 0f 84 89 01 00 00                              je     0x4184eb
  00418362: 80 fb 03                                       cmp    bl,0x3
  00418365: 0f 85 b4 01 00 00                              jne    0x41851f
  0041836b: 8b 5d 14                                       mov    ebx,DWORD PTR [ebp+0x14]
  0041836e: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00418371: 6a 00                                          push   0x0
  00418373: 57                                             push   edi
  00418374: 53                                             push   ebx
  00418375: 50                                             push   eax
  00418376: e8 65 f8 ff ff                                 call   0x417be0
  0041837b: 85 c0                                          test   eax,eax
  0041837d: 0f 84 5d 01 00 00                              je     0x4184e0
  00418383: 33 c0                                          xor    eax,eax
  00418385: 66 8b 43 38                                    mov    ax,WORD PTR [ebx+0x38]
  00418389: f7 d8                                          neg    eax
  0041838b: 0f 84 b1 00 00 00                              je     0x418442
  00418391: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  00418394: 81 e1 ff 00 00 00                              and    ecx,0xff
  0041839a: 83 f9 0f                                       cmp    ecx,0xf
  0041839d: 0f 87 7c 01 00 00                              ja     0x41851f
  004183a3: 33 d2                                          xor    edx,edx
  004183a5: 8a 91 50 85 41 00                              mov    dl,BYTE PTR [ecx+0x418550]
  004183ab: ff 24 95 34 85 41 00                           jmp    DWORD PTR [edx*4+0x418534]
  00418442: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  00418445: 25 ff 00 00 00                                 and    eax,0xff
  0041844a: 83 f8 0f                                       cmp    eax,0xf
  0041844d: 0f 87 cc 00 00 00                              ja     0x41851f
  00418453: 33 c9                                          xor    ecx,ecx
  00418455: 8a 88 7c 85 41 00                              mov    cl,BYTE PTR [eax+0x41857c]
  0041845b: ff 24 8d 60 85 41 00                           jmp    DWORD PTR [ecx*4+0x418560]
  004184e0: 33 ff                                          xor    edi,edi
  004184e2: 8b c7                                          mov    eax,edi
  004184e4: 5f                                             pop    edi
  004184e5: 5e                                             pop    esi
  004184e6: 5b                                             pop    ebx
  004184e7: 5d                                             pop    ebp
  004184e8: c2 10 00                                       ret    0x10
  004184eb: 8b ce                                          mov    ecx,esi
  004184ed: e8 5e 5c 07 00                                 call   0x48e150
  004184f2: 8b ce                                          mov    ecx,esi
  004184f4: e8 b7 5c 07 00                                 call   0x48e1b0
  004184f9: 8b 55 14                                       mov    edx,DWORD PTR [ebp+0x14]
  004184fc: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004184ff: 6a 00                                          push   0x0
  00418501: 6a 01                                          push   0x1
  00418503: 52                                             push   edx
  00418504: 50                                             push   eax
  00418505: 8b ce                                          mov    ecx,esi
  00418507: e8 d4 f6 ff ff                                 call   0x417be0
  0041850c: 85 c0                                          test   eax,eax
  0041850e: 74 18                                          je     0x418528
  00418510: 68 05 00 00 0f                                 push   0xf000005
  00418515: 8b ce                                          mov    ecx,esi
  00418517: 80 fb 01                                       cmp    bl,0x1
  0041851a: e8 d1 55 07 00                                 call   0x48daf0
  0041851f: 8b c7                                          mov    eax,edi
  00418521: 5f                                             pop    edi
  00418522: 5e                                             pop    esi
  00418523: 5b                                             pop    ebx
  00418524: 5d                                             pop    ebp
  00418525: c2 10 00                                       ret    0x10
  00418528: 5f                                             pop    edi
  00418529: 5e                                             pop    esi
  0041852a: 33 c0                                          xor    eax,eax
  0041852c: 5b                                             pop    ebx
  0041852d: 5d                                             pop    ebp
  0041852e: c2 10 00                                       ret    0x10

; [00418590] Character::?equip_object@Character ; instruction=817 ; plage_limite=004194D0 ; issues=0
  00418590: 55                                             push   ebp
  00418591: 8b ec                                          mov    ebp,esp
  00418593: 6a ff                                          push   0xffffffff
  00418595: 68 33 3e 4d 00                                 push   0x4d3e33
  0041859a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004185a0: 50                                             push   eax
  004185a1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004185a8: 83 ec 44                                       sub    esp,0x44
  004185ab: 53                                             push   ebx
  004185ac: 56                                             push   esi
  004185ad: 57                                             push   edi
  004185ae: 8b f1                                          mov    esi,ecx
  004185b0: e8 cb 76 00 00                                 call   0x41fc80
  004185b5: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004185b8: 33 ff                                          xor    edi,edi
  004185ba: 3b c7                                          cmp    eax,edi
  004185bc: 0f 84 d1 0e 00 00                              je     0x419493
  004185c2: 8b 8e 9c 01 00 00                              mov    ecx,DWORD PTR [esi+0x19c]
  004185c8: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004185ca: 89 7d f0                                       mov    DWORD PTR [ebp-0x10],edi
  004185cd: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004185d0: 8b 86 9c 01 00 00                              mov    eax,DWORD PTR [esi+0x19c]
  004185d6: 8b 48 24                                       mov    ecx,DWORD PTR [eax+0x24]
  004185d9: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  004185dc: 89 78 40                                       mov    DWORD PTR [eax+0x40],edi
  004185df: c6 40 34 08                                    mov    BYTE PTR [eax+0x34],0x8
  004185e3: 8b 86 9c 01 00 00                              mov    eax,DWORD PTR [esi+0x19c]
  004185e9: 8b 48 40                                       mov    ecx,DWORD PTR [eax+0x40]
  004185ec: 85 c9                                          test   ecx,ecx
  004185ee: 74 0a                                          je     0x4185fa
  004185f0: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  004185f3: 8b 0a                                          mov    ecx,DWORD PTR [edx]
  004185f5: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  004185f8: eb 07                                          jmp    0x418601
  004185fa: c7 40 40 01 00 00 00                           mov    DWORD PTR [eax+0x40],0x1
  00418601: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00418604: 85 c9                                          test   ecx,ecx
  00418606: 0f 84 d5 02 00 00                              je     0x4188e1
  0041860c: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  0041860f: 85 c0                                          test   eax,eax
  00418611: 0f 85 e7 02 00 00                              jne    0x4188fe
  00418617: 8b 96 9c 01 00 00                              mov    edx,DWORD PTR [esi+0x19c]
  0041861d: 8b 42 20                                       mov    eax,DWORD PTR [edx+0x20]
  00418620: 8b 58 08                                       mov    ebx,DWORD PTR [eax+0x8]
  00418623: 8b cb                                          mov    ecx,ebx
  00418625: e8 d6 30 07 00                                 call   0x48b700
  0041862a: 3b 45 08                                       cmp    eax,DWORD PTR [ebp+0x8]
  0041862d: 75 b4                                          jne    0x4185e3
  0041862f: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00418631: 8d 45 e4                                       lea    eax,[ebp-0x1c]
  00418634: 50                                             push   eax
  00418635: 6a 00                                          push   0x0
  00418637: 6a 00                                          push   0x0
  00418639: 6a 00                                          push   0x0
  0041863b: 6a 00                                          push   0x0
  0041863d: 6a 14                                          push   0x14
  0041863f: 8b cb                                          mov    ecx,ebx
  00418641: c7 45 e4 00 00 00 00                           mov    DWORD PTR [ebp-0x1c],0x0
  00418648: ff 52 24                                       call   DWORD PTR [edx+0x24]
  0041864b: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  0041864e: 85 c0                                          test   eax,eax
  00418650: 74 91                                          je     0x4185e3
  00418652: 66 83 78 0a 0c                                 cmp    WORD PTR [eax+0xa],0xc
  00418657: 0f 85 2c 01 00 00                              jne    0x418789
  0041865d: 8b 86 9c 01 00 00                              mov    eax,DWORD PTR [esi+0x19c]
  00418663: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00418666: 8b 50 28                                       mov    edx,DWORD PTR [eax+0x28]
  00418669: 89 48 2c                                       mov    DWORD PTR [eax+0x2c],ecx
  0041866c: ff 48 38                                       dec    DWORD PTR [eax+0x38]
  0041866f: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00418672: 3b ca                                          cmp    ecx,edx
  00418674: 8b fb                                          mov    edi,ebx
  00418676: 74 6d                                          je     0x4186e5
  00418678: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  0041867b: 74 64                                          je     0x4186e1
  0041867d: 8b 11                                          mov    edx,DWORD PTR [ecx]
  0041867f: 8b 49 04                                       mov    ecx,DWORD PTR [ecx+0x4]
  00418682: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  00418685: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00418688: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  0041868b: 8b 09                                          mov    ecx,DWORD PTR [ecx]
  0041868d: 89 0a                                          mov    DWORD PTR [edx],ecx
  0041868f: 8b 48 40                                       mov    ecx,DWORD PTR [eax+0x40]
  00418692: 83 f9 01                                       cmp    ecx,0x1
  00418695: 75 21                                          jne    0x4186b8
  00418697: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  0041869a: 8b 4a 04                                       mov    ecx,DWORD PTR [edx+0x4]
  0041869d: 8b 50 2c                                       mov    edx,DWORD PTR [eax+0x2c]
  004186a0: 52                                             push   edx
  004186a1: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  004186a4: e8 b7 99 02 00                                 call   0x442060
  004186a9: 83 c4 04                                       add    esp,0x4
  004186ac: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  004186b3: e9 2b ff ff ff                                 jmp    0x4185e3
  004186b8: 83 f9 02                                       cmp    ecx,0x2
  004186bb: 0f 85 b0 00 00 00                              jne    0x418771
  004186c1: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  004186c4: 8b 0a                                          mov    ecx,DWORD PTR [edx]
  004186c6: 8b 50 2c                                       mov    edx,DWORD PTR [eax+0x2c]
  004186c9: 52                                             push   edx
  004186ca: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  004186cd: e8 8e 99 02 00                                 call   0x442060
  004186d2: 83 c4 04                                       add    esp,0x4
  004186d5: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  004186dc: e9 02 ff ff ff                                 jmp    0x4185e3
  004186e1: 3b ca                                          cmp    ecx,edx
  004186e3: 75 42                                          jne    0x418727
  004186e5: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  004186e8: 74 42                                          je     0x41872c
  004186ea: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  004186ed: c7 02 00 00 00 00                              mov    DWORD PTR [edx],0x0
  004186f3: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  004186f6: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  004186f9: 89 50 28                                       mov    DWORD PTR [eax+0x28],edx
  004186fc: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  004186ff: 83 78 40 02                                    cmp    DWORD PTR [eax+0x40],0x2
  00418703: 89 50 20                                       mov    DWORD PTR [eax+0x20],edx
  00418706: 75 69                                          jne    0x418771
  00418708: 8b 50 2c                                       mov    edx,DWORD PTR [eax+0x2c]
  0041870b: 52                                             push   edx
  0041870c: c7 40 40 00 00 00 00                           mov    DWORD PTR [eax+0x40],0x0
  00418713: e8 48 99 02 00                                 call   0x442060
  00418718: 83 c4 04                                       add    esp,0x4
  0041871b: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  00418722: e9 bc fe ff ff                                 jmp    0x4185e3
  00418727: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  0041872a: 75 37                                          jne    0x418763
  0041872c: 3b ca                                          cmp    ecx,edx
  0041872e: 74 33                                          je     0x418763
  00418730: 8b 09                                          mov    ecx,DWORD PTR [ecx]
  00418732: 33 d2                                          xor    edx,edx
  00418734: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00418737: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  0041873a: 8b 09                                          mov    ecx,DWORD PTR [ecx]
  0041873c: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  0041873f: 89 48 24                                       mov    DWORD PTR [eax+0x24],ecx
  00418742: 83 78 40 01                                    cmp    DWORD PTR [eax+0x40],0x1
  00418746: 75 29                                          jne    0x418771
  00418748: 89 50 40                                       mov    DWORD PTR [eax+0x40],edx
  0041874b: 8b 50 2c                                       mov    edx,DWORD PTR [eax+0x2c]
  0041874e: 52                                             push   edx
  0041874f: e8 0c 99 02 00                                 call   0x442060
  00418754: 83 c4 04                                       add    esp,0x4
  00418757: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  0041875e: e9 80 fe ff ff                                 jmp    0x4185e3
  00418763: 33 c9                                          xor    ecx,ecx
  00418765: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00418768: 89 48 24                                       mov    DWORD PTR [eax+0x24],ecx
  0041876b: 89 48 28                                       mov    DWORD PTR [eax+0x28],ecx
  0041876e: 89 48 40                                       mov    DWORD PTR [eax+0x40],ecx
  00418771: 8b 50 2c                                       mov    edx,DWORD PTR [eax+0x2c]
  00418774: 52                                             push   edx
  00418775: e8 e6 98 02 00                                 call   0x442060
  0041877a: 83 c4 04                                       add    esp,0x4
  0041877d: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  00418784: e9 5a fe ff ff                                 jmp    0x4185e3
  00418789: 6a 01                                          push   0x1
  0041878b: 8b cb                                          mov    ecx,ebx
  0041878d: e8 0e 3d 03 00                                 call   0x44c4a0
  00418792: 8b cb                                          mov    ecx,ebx
  00418794: e8 57 3c 03 00                                 call   0x44c3f0
  00418799: 85 c0                                          test   eax,eax
  0041879b: 0f 85 d9 00 00 00                              jne    0x41887a
  004187a1: 8b 86 9c 01 00 00                              mov    eax,DWORD PTR [esi+0x19c]
  004187a7: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  004187aa: 8b 50 28                                       mov    edx,DWORD PTR [eax+0x28]
  004187ad: 89 48 2c                                       mov    DWORD PTR [eax+0x2c],ecx
  004187b0: ff 48 38                                       dec    DWORD PTR [eax+0x38]
  004187b3: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  004187b6: 3b ca                                          cmp    ecx,edx
  004187b8: 74 3d                                          je     0x4187f7
  004187ba: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  004187bd: 74 34                                          je     0x4187f3
  004187bf: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004187c1: 8b 49 04                                       mov    ecx,DWORD PTR [ecx+0x4]
  004187c4: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  004187c7: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  004187ca: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  004187cd: 8b 09                                          mov    ecx,DWORD PTR [ecx]
  004187cf: 89 0a                                          mov    DWORD PTR [edx],ecx
  004187d1: 8b 48 40                                       mov    ecx,DWORD PTR [eax+0x40]
  004187d4: 83 f9 01                                       cmp    ecx,0x1
  004187d7: 75 0b                                          jne    0x4187e4
  004187d9: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  004187dc: 8b 4a 04                                       mov    ecx,DWORD PTR [edx+0x4]
  004187df: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  004187e2: eb 73                                          jmp    0x418857
  004187e4: 83 f9 02                                       cmp    ecx,0x2
  004187e7: 75 6e                                          jne    0x418857
  004187e9: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  004187ec: 8b 0a                                          mov    ecx,DWORD PTR [edx]
  004187ee: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  004187f1: eb 64                                          jmp    0x418857
  004187f3: 3b ca                                          cmp    ecx,edx
  004187f5: 75 2c                                          jne    0x418823
  004187f7: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  004187fa: 74 2c                                          je     0x418828
  004187fc: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  004187ff: c7 02 00 00 00 00                              mov    DWORD PTR [edx],0x0
  00418805: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00418808: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  0041880b: 89 50 28                                       mov    DWORD PTR [eax+0x28],edx
  0041880e: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  00418811: 83 78 40 02                                    cmp    DWORD PTR [eax+0x40],0x2
  00418815: 89 50 20                                       mov    DWORD PTR [eax+0x20],edx
  00418818: 75 3d                                          jne    0x418857
  0041881a: c7 40 40 00 00 00 00                           mov    DWORD PTR [eax+0x40],0x0
  00418821: eb 34                                          jmp    0x418857
  00418823: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  00418826: 75 21                                          jne    0x418849
  00418828: 3b ca                                          cmp    ecx,edx
  0041882a: 74 1d                                          je     0x418849
  0041882c: 8b 09                                          mov    ecx,DWORD PTR [ecx]
  0041882e: 33 d2                                          xor    edx,edx
  00418830: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  00418833: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00418836: 8b 09                                          mov    ecx,DWORD PTR [ecx]
  00418838: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  0041883b: 89 48 24                                       mov    DWORD PTR [eax+0x24],ecx
  0041883e: 83 78 40 01                                    cmp    DWORD PTR [eax+0x40],0x1
  00418842: 75 13                                          jne    0x418857
  00418844: 89 50 40                                       mov    DWORD PTR [eax+0x40],edx
  00418847: eb 0e                                          jmp    0x418857
  00418849: 33 c9                                          xor    ecx,ecx
  0041884b: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  0041884e: 89 48 24                                       mov    DWORD PTR [eax+0x24],ecx
  00418851: 89 48 28                                       mov    DWORD PTR [eax+0x28],ecx
  00418854: 89 48 40                                       mov    DWORD PTR [eax+0x40],ecx
  00418857: 8b 50 2c                                       mov    edx,DWORD PTR [eax+0x2c]
  0041885a: 52                                             push   edx
  0041885b: e8 00 98 02 00                                 call   0x442060
  00418860: 83 c4 04                                       add    esp,0x4
  00418863: 6a 01                                          push   0x1
  00418865: 8b cb                                          mov    ecx,ebx
  00418867: e8 94 3b 03 00                                 call   0x44c400
  0041886c: 8b fb                                          mov    edi,ebx
  0041886e: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  00418875: e9 69 fd ff ff                                 jmp    0x4185e3
  0041887a: 68 20 01 00 00                                 push   0x120
  0041887f: e8 6c 97 02 00                                 call   0x441ff0
  00418884: 83 c4 04                                       add    esp,0x4
  00418887: 89 45 e0                                       mov    DWORD PTR [ebp-0x20],eax
  0041888a: 85 c0                                          test   eax,eax
  0041888c: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  00418893: 74 09                                          je     0x41889e
  00418895: 8b c8                                          mov    ecx,eax
  00418897: e8 e4 34 03 00                                 call   0x44bd80
  0041889c: eb 02                                          jmp    0x4188a0
  0041889e: 33 c0                                          xor    eax,eax
  004188a0: 8b 10                                          mov    edx,DWORD PTR [eax]
  004188a2: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  004188a5: 8b f8                                          mov    edi,eax
  004188a7: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004188a9: 8b cb                                          mov    ecx,ebx
  004188ab: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004188b2: 89 55 e0                                       mov    DWORD PTR [ebp-0x20],edx
  004188b5: ff 50 28                                       call   DWORD PTR [eax+0x28]
  004188b8: 8b 55 e0                                       mov    edx,DWORD PTR [ebp-0x20]
  004188bb: 50                                             push   eax
  004188bc: 8b df                                          mov    ebx,edi
  004188be: 6a 03                                          push   0x3
  004188c0: 8b cb                                          mov    ecx,ebx
  004188c2: ff 52 18                                       call   DWORD PTR [edx+0x18]
  004188c5: 85 c0                                          test   eax,eax
  004188c7: 75 0c                                          jne    0x4188d5
  004188c9: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004188cb: 8b cb                                          mov    ecx,ebx
  004188cd: ff 90 c4 01 00 00                              call   DWORD PTR [eax+0x1c4]
  004188d3: 33 ff                                          xor    edi,edi
  004188d5: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  004188dc: e9 02 fd ff ff                                 jmp    0x4185e3
  004188e1: 8b 48 40                                       mov    ecx,DWORD PTR [eax+0x40]
  004188e4: 85 c9                                          test   ecx,ecx
  004188e6: 74 04                                          je     0x4188ec
  004188e8: c6 40 34 07                                    mov    BYTE PTR [eax+0x34],0x7
  004188ec: c7 40 40 00 00 00 00                           mov    DWORD PTR [eax+0x40],0x0
  004188f3: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  004188f6: 85 c0                                          test   eax,eax
  004188f8: 0f 84 8a 0b 00 00                              je     0x419488
  004188fe: 85 ff                                          test   edi,edi
  00418900: 0f 84 82 0b 00 00                              je     0x419488
  00418906: 8d 8e a0 01 00 00                              lea    ecx,[esi+0x1a0]
  0041890c: c6 45 0b 00                                    mov    BYTE PTR [ebp+0xb],0x0
  00418910: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  00418913: c7 45 e8 10 00 00 00                           mov    DWORD PTR [ebp-0x18],0x10
  0041891a: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  0041891d: 8b 1a                                          mov    ebx,DWORD PTR [edx]
  0041891f: 85 db                                          test   ebx,ebx
  00418921: 74 1e                                          je     0x418941
  00418923: 8b 07                                          mov    eax,DWORD PTR [edi]
  00418925: 8b cf                                          mov    ecx,edi
  00418927: ff 50 28                                       call   DWORD PTR [eax+0x28]
  0041892a: 8b d0                                          mov    edx,eax
  0041892c: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0041892e: 8b cb                                          mov    ecx,ebx
  00418930: 89 55 e0                                       mov    DWORD PTR [ebp-0x20],edx
  00418933: ff 50 28                                       call   DWORD PTR [eax+0x28]
  00418936: 8b 4d e0                                       mov    ecx,DWORD PTR [ebp-0x20]
  00418939: 3b c1                                          cmp    eax,ecx
  0041893b: 75 04                                          jne    0x418941
  0041893d: c6 45 0b 01                                    mov    BYTE PTR [ebp+0xb],0x1
  00418941: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  00418944: 8b 45 e8                                       mov    eax,DWORD PTR [ebp-0x18]
  00418947: 83 c1 04                                       add    ecx,0x4
  0041894a: 48                                             dec    eax
  0041894b: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  0041894e: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  00418951: 75 c7                                          jne    0x41891a
  00418953: 8a 45 0b                                       mov    al,BYTE PTR [ebp+0xb]
  00418956: 84 c0                                          test   al,al
  00418958: 0f 85 8f 0a 00 00                              jne    0x4193ed
  0041895e: 8b 17                                          mov    edx,DWORD PTR [edi]
  00418960: 8d 45 08                                       lea    eax,[ebp+0x8]
  00418963: 50                                             push   eax
  00418964: 6a 00                                          push   0x0
  00418966: 6a 00                                          push   0x0
  00418968: 6a 00                                          push   0x0
  0041896a: 6a 00                                          push   0x0
  0041896c: 6a 14                                          push   0x14
  0041896e: 8b cf                                          mov    ecx,edi
  00418970: c7 45 ec 01 00 00 00                           mov    DWORD PTR [ebp-0x14],0x1
  00418977: c7 45 08 00 00 00 00                           mov    DWORD PTR [ebp+0x8],0x0
  0041897e: ff 52 24                                       call   DWORD PTR [edx+0x24]
  00418981: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00418984: 85 c0                                          test   eax,eax
  00418986: 0f 84 fc 0a 00 00                              je     0x419488
  0041898c: 33 db                                          xor    ebx,ebx
  0041898e: 66 8b 58 06                                    mov    bx,WORD PTR [eax+0x6]
  00418992: 85 db                                          test   ebx,ebx
  00418994: 0f 8c 1f 0a 00 00                              jl     0x4193b9
  0041899a: 83 fb 10                                       cmp    ebx,0x10
  0041899d: 0f 8d 16 0a 00 00                              jge    0x4193b9
  004189a3: c7 45 f0 01 00 00 00                           mov    DWORD PTR [ebp-0x10],0x1
  004189aa: 8a 88 26 01 00 00                              mov    cl,BYTE PTR [eax+0x126]
  004189b0: 84 c9                                          test   cl,cl
  004189b2: 0f 84 d8 00 00 00                              je     0x418a90
  004189b8: 66 83 78 0a 0c                                 cmp    WORD PTR [eax+0xa],0xc
  004189bd: 0f 84 cd 00 00 00                              je     0x418a90
  004189c3: 8b 8e c4 01 00 00                              mov    ecx,DWORD PTR [esi+0x1c4]
  004189c9: 85 c9                                          test   ecx,ecx
  004189cb: 0f 84 9f 01 00 00                              je     0x418b70
  004189d1: 8d 45 e0                                       lea    eax,[ebp-0x20]
  004189d4: 50                                             push   eax
  004189d5: 6a 00                                          push   0x0
  004189d7: 6a 00                                          push   0x0
  004189d9: 6a 00                                          push   0x0
  004189db: 6a 00                                          push   0x0
  004189dd: c7 45 e0 00 00 00 00                           mov    DWORD PTR [ebp-0x20],0x0
  004189e4: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004189e6: 6a 14                                          push   0x14
  004189e8: ff 52 24                                       call   DWORD PTR [edx+0x24]
  004189eb: 8b 45 e0                                       mov    eax,DWORD PTR [ebp-0x20]
  004189ee: 85 c0                                          test   eax,eax
  004189f0: 74 0b                                          je     0x4189fd
  004189f2: 66 83 78 0a 0c                                 cmp    WORD PTR [eax+0xa],0xc
  004189f7: 0f 84 70 01 00 00                              je     0x418b6d
  004189fd: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418a00: e8 eb d3 06 00                                 call   0x485df0
  00418a05: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418a08: c7 45 fc 01 00 00 00                           mov    DWORD PTR [ebp-0x4],0x1
  00418a0f: e8 4a 90 0b 00                                 call   0x4d1a5e
  00418a14: 33 c9                                          xor    ecx,ecx
  00418a16: 66 8b 8e 1c 01 00 00                           mov    cx,WORD PTR [esi+0x11c]
  00418a1d: 68 58 13 51 00                                 push   0x511358
  00418a22: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  00418a26: 51                                             push   ecx
  00418a27: 68 cb 1e 00 00                                 push   0x1ecb
  00418a2c: e8 bf 4f 02 00                                 call   0x43d9f0
  00418a31: 83 c4 0c                                       add    esp,0xc
  00418a34: 50                                             push   eax
  00418a35: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418a38: e8 1b 90 0b 00                                 call   0x4d1a58
  00418a3d: 6a 3f                                          push   0x3f
  00418a3f: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418a42: e8 09 d7 06 00                                 call   0x486150
  00418a47: 6a 1e                                          push   0x1e
  00418a49: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418a4c: e8 ff d6 06 00                                 call   0x486150
  00418a51: 6a 03                                          push   0x3
  00418a53: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418a56: e8 f5 d6 06 00                                 call   0x486150
  00418a5b: 8d 55 ec                                       lea    edx,[ebp-0x14]
  00418a5e: 52                                             push   edx
  00418a5f: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418a62: e8 e9 d8 06 00                                 call   0x486350
  00418a67: 8b 06                                          mov    eax,DWORD PTR [esi]
  00418a69: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418a6c: 51                                             push   ecx
  00418a6d: 8b ce                                          mov    ecx,esi
  00418a6f: ff 90 4c 01 00 00                              call   DWORD PTR [eax+0x14c]
  00418a75: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418a78: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00418a7c: e8 bf 8f 0b 00                                 call   0x4d1a40
  00418a81: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00418a88: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418a8b: e9 d1 00 00 00                                 jmp    0x418b61
  00418a90: 83 fb 08                                       cmp    ebx,0x8
  00418a93: 0f 85 d7 00 00 00                              jne    0x418b70
  00418a99: 8b 8e c4 01 00 00                              mov    ecx,DWORD PTR [esi+0x1c4]
  00418a9f: 85 c9                                          test   ecx,ecx
  00418aa1: 0f 84 c9 00 00 00                              je     0x418b70
  00418aa7: 8d 45 e0                                       lea    eax,[ebp-0x20]
  00418aaa: 50                                             push   eax
  00418aab: 6a 00                                          push   0x0
  00418aad: 6a 00                                          push   0x0
  00418aaf: 6a 00                                          push   0x0
  00418ab1: 6a 00                                          push   0x0
  00418ab3: c7 45 e0 00 00 00 00                           mov    DWORD PTR [ebp-0x20],0x0
  00418aba: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00418abc: 6a 14                                          push   0x14
  00418abe: ff 52 24                                       call   DWORD PTR [edx+0x24]
  00418ac1: 8b 45 e0                                       mov    eax,DWORD PTR [ebp-0x20]
  00418ac4: 85 c0                                          test   eax,eax
  00418ac6: 74 0b                                          je     0x418ad3
  00418ac8: 66 83 78 0a 0c                                 cmp    WORD PTR [eax+0xa],0xc
  00418acd: 0f 85 9a 00 00 00                              jne    0x418b6d
  00418ad3: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418ad6: e8 15 d3 06 00                                 call   0x485df0
  00418adb: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418ade: c7 45 fc 03 00 00 00                           mov    DWORD PTR [ebp-0x4],0x3
  00418ae5: e8 74 8f 0b 00                                 call   0x4d1a5e
  00418aea: 33 c9                                          xor    ecx,ecx
  00418aec: 66 8b 8e 1c 01 00 00                           mov    cx,WORD PTR [esi+0x11c]
  00418af3: 68 58 13 51 00                                 push   0x511358
  00418af8: c6 45 fc 04                                    mov    BYTE PTR [ebp-0x4],0x4
  00418afc: 51                                             push   ecx
  00418afd: 68 cd 1e 00 00                                 push   0x1ecd
  00418b02: e8 e9 4e 02 00                                 call   0x43d9f0
  00418b07: 83 c4 0c                                       add    esp,0xc
  00418b0a: 50                                             push   eax
  00418b0b: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418b0e: e8 45 8f 0b 00                                 call   0x4d1a58
  00418b13: 6a 3f                                          push   0x3f
  00418b15: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418b18: e8 33 d6 06 00                                 call   0x486150
  00418b1d: 6a 1e                                          push   0x1e
  00418b1f: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418b22: e8 29 d6 06 00                                 call   0x486150
  00418b27: 6a 03                                          push   0x3
  00418b29: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418b2c: e8 1f d6 06 00                                 call   0x486150
  00418b31: 8d 55 ec                                       lea    edx,[ebp-0x14]
  00418b34: 52                                             push   edx
  00418b35: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418b38: e8 13 d8 06 00                                 call   0x486350
  00418b3d: 8b 06                                          mov    eax,DWORD PTR [esi]
  00418b3f: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418b42: 51                                             push   ecx
  00418b43: 8b ce                                          mov    ecx,esi
  00418b45: ff 90 4c 01 00 00                              call   DWORD PTR [eax+0x14c]
  00418b4b: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418b4e: c6 45 fc 03                                    mov    BYTE PTR [ebp-0x4],0x3
  00418b52: e8 e9 8e 0b 00                                 call   0x4d1a40
  00418b57: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00418b5e: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418b61: e8 1a d3 06 00                                 call   0x485e80
  00418b66: c7 45 ec 00 00 00 00                           mov    DWORD PTR [ebp-0x14],0x0
  00418b6d: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00418b70: 66 83 78 0a 0c                                 cmp    WORD PTR [eax+0xa],0xc
  00418b75: 0f 85 d0 00 00 00                              jne    0x418c4b
  00418b7b: 8b 8e c0 01 00 00                              mov    ecx,DWORD PTR [esi+0x1c0]
  00418b81: 85 c9                                          test   ecx,ecx
  00418b83: 0f 84 9e 01 00 00                              je     0x418d27
  00418b89: 8d 45 e0                                       lea    eax,[ebp-0x20]
  00418b8c: 50                                             push   eax
  00418b8d: 6a 00                                          push   0x0
  00418b8f: 6a 00                                          push   0x0
  00418b91: 6a 00                                          push   0x0
  00418b93: 6a 00                                          push   0x0
  00418b95: c7 45 e0 00 00 00 00                           mov    DWORD PTR [ebp-0x20],0x0
  00418b9c: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00418b9e: 6a 14                                          push   0x14
  00418ba0: ff 52 24                                       call   DWORD PTR [edx+0x24]
  00418ba3: 8b 45 e0                                       mov    eax,DWORD PTR [ebp-0x20]
  00418ba6: 85 c0                                          test   eax,eax
  00418ba8: 74 0e                                          je     0x418bb8
  00418baa: 8a 88 26 01 00 00                              mov    cl,BYTE PTR [eax+0x126]
  00418bb0: 84 c9                                          test   cl,cl
  00418bb2: 0f 85 6c 01 00 00                              jne    0x418d24
  00418bb8: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418bbb: e8 30 d2 06 00                                 call   0x485df0
  00418bc0: bb 05 00 00 00                                 mov    ebx,0x5
  00418bc5: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418bc8: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00418bcb: e8 8e 8e 0b 00                                 call   0x4d1a5e
  00418bd0: 33 c9                                          xor    ecx,ecx
  00418bd2: 66 8b 8e 1c 01 00 00                           mov    cx,WORD PTR [esi+0x11c]
  00418bd9: 68 58 13 51 00                                 push   0x511358
  00418bde: c6 45 fc 06                                    mov    BYTE PTR [ebp-0x4],0x6
  00418be2: 51                                             push   ecx
  00418be3: 68 cc 1e 00 00                                 push   0x1ecc
  00418be8: e8 03 4e 02 00                                 call   0x43d9f0
  00418bed: 83 c4 0c                                       add    esp,0xc
  00418bf0: 50                                             push   eax
  00418bf1: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418bf4: e8 5f 8e 0b 00                                 call   0x4d1a58
  00418bf9: 6a 3f                                          push   0x3f
  00418bfb: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418bfe: e8 4d d5 06 00                                 call   0x486150
  00418c03: 6a 1e                                          push   0x1e
  00418c05: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418c08: e8 43 d5 06 00                                 call   0x486150
  00418c0d: 6a 03                                          push   0x3
  00418c0f: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418c12: e8 39 d5 06 00                                 call   0x486150
  00418c17: 8d 55 ec                                       lea    edx,[ebp-0x14]
  00418c1a: 52                                             push   edx
  00418c1b: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418c1e: e8 2d d7 06 00                                 call   0x486350
  00418c23: 8b 06                                          mov    eax,DWORD PTR [esi]
  00418c25: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418c28: 51                                             push   ecx
  00418c29: 8b ce                                          mov    ecx,esi
  00418c2b: ff 90 4c 01 00 00                              call   DWORD PTR [eax+0x14c]
  00418c31: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418c34: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00418c37: e8 04 8e 0b 00                                 call   0x4d1a40
  00418c3c: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00418c43: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418c46: e9 30 08 00 00                                 jmp    0x41947b
  00418c4b: 83 fb 09                                       cmp    ebx,0x9
  00418c4e: 0f 85 d3 00 00 00                              jne    0x418d27
  00418c54: 8b 8e c0 01 00 00                              mov    ecx,DWORD PTR [esi+0x1c0]
  00418c5a: 85 c9                                          test   ecx,ecx
  00418c5c: 0f 84 c5 00 00 00                              je     0x418d27
  00418c62: 8d 45 e0                                       lea    eax,[ebp-0x20]
  00418c65: 50                                             push   eax
  00418c66: 6a 00                                          push   0x0
  00418c68: 6a 00                                          push   0x0
  00418c6a: 6a 00                                          push   0x0
  00418c6c: 6a 00                                          push   0x0
  00418c6e: c7 45 e0 00 00 00 00                           mov    DWORD PTR [ebp-0x20],0x0
  00418c75: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00418c77: 6a 14                                          push   0x14
  00418c79: ff 52 24                                       call   DWORD PTR [edx+0x24]
  00418c7c: 8b 45 e0                                       mov    eax,DWORD PTR [ebp-0x20]
  00418c7f: 85 c0                                          test   eax,eax
  00418c81: 74 0e                                          je     0x418c91
  00418c83: 8a 88 26 01 00 00                              mov    cl,BYTE PTR [eax+0x126]
  00418c89: 84 c9                                          test   cl,cl
  00418c8b: 0f 84 93 00 00 00                              je     0x418d24
  00418c91: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418c94: e8 57 d1 06 00                                 call   0x485df0
  00418c99: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418c9c: c7 45 fc 07 00 00 00                           mov    DWORD PTR [ebp-0x4],0x7
  00418ca3: e8 b6 8d 0b 00                                 call   0x4d1a5e
  00418ca8: 33 c9                                          xor    ecx,ecx
  00418caa: 66 8b 8e 1c 01 00 00                           mov    cx,WORD PTR [esi+0x11c]
  00418cb1: 68 58 13 51 00                                 push   0x511358
  00418cb6: c6 45 fc 08                                    mov    BYTE PTR [ebp-0x4],0x8
  00418cba: 51                                             push   ecx
  00418cbb: 68 ce 1e 00 00                                 push   0x1ece
  00418cc0: e8 2b 4d 02 00                                 call   0x43d9f0
  00418cc5: 83 c4 0c                                       add    esp,0xc
  00418cc8: 50                                             push   eax
  00418cc9: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418ccc: e8 87 8d 0b 00                                 call   0x4d1a58
  00418cd1: 6a 3f                                          push   0x3f
  00418cd3: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418cd6: e8 75 d4 06 00                                 call   0x486150
  00418cdb: 6a 1e                                          push   0x1e
  00418cdd: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418ce0: e8 6b d4 06 00                                 call   0x486150
  00418ce5: 6a 03                                          push   0x3
  00418ce7: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418cea: e8 61 d4 06 00                                 call   0x486150
  00418cef: 8d 55 ec                                       lea    edx,[ebp-0x14]
  00418cf2: 52                                             push   edx
  00418cf3: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418cf6: e8 55 d6 06 00                                 call   0x486350
  00418cfb: 8b 06                                          mov    eax,DWORD PTR [esi]
  00418cfd: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418d00: 51                                             push   ecx
  00418d01: 8b ce                                          mov    ecx,esi
  00418d03: ff 90 4c 01 00 00                              call   DWORD PTR [eax+0x14c]
  00418d09: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00418d0c: c6 45 fc 07                                    mov    BYTE PTR [ebp-0x4],0x7
  00418d10: e8 2b 8d 0b 00                                 call   0x4d1a40
  00418d15: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00418d1c: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00418d1f: e9 57 07 00 00                                 jmp    0x41947b
  00418d24: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00418d27: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  00418d2a: 85 c9                                          test   ecx,ecx
  00418d2c: 0f 84 4e 07 00 00                              je     0x419480
  00418d32: 83 fb 0f                                       cmp    ebx,0xf
  00418d35: 0f 87 e3 04 00 00                              ja     0x41921e
  00418d3b: 33 d2                                          xor    edx,edx
  00418d3d: 8a 93 bc 94 41 00                              mov    dl,BYTE PTR [ebx+0x4194bc]
  00418d43: ff 24 95 a8 94 41 00                           jmp    DWORD PTR [edx*4+0x4194a8]
  00419143: 85 c0                                          test   eax,eax
  00419145: 0f 84 35 03 00 00                              je     0x419480
  0041914b: 6a 00                                          push   0x0
  0041914d: 8d 45 f0                                       lea    eax,[ebp-0x10]
  00419150: 50                                             push   eax
  00419151: 56                                             push   esi
  00419152: 6a 00                                          push   0x0
  00419154: 57                                             push   edi
  00419155: 89 bc 9e a0 01 00 00                           mov    DWORD PTR [esi+ebx*4+0x1a0],edi
  0041915c: 8b 17                                          mov    edx,DWORD PTR [edi]
  0041915e: 6a 03                                          push   0x3
  00419160: 8b cf                                          mov    ecx,edi
  00419162: ff 52 24                                       call   DWORD PTR [edx+0x24]
  00419165: 8b cf                                          mov    ecx,edi
  00419167: e8 e4 45 07 00                                 call   0x48d750
  0041916c: a8 01                                          test   al,0x1
  0041916e: 0f 84 57 01 00 00                              je     0x4192cb
  00419174: 8b 17                                          mov    edx,DWORD PTR [edi]
  00419176: 8b cf                                          mov    ecx,edi
  00419178: ff 92 c4 01 00 00                              call   DWORD PTR [edx+0x1c4]
  0041917e: c7 84 9e a0 01 00 00 00 00 00 00               mov    DWORD PTR [esi+ebx*4+0x1a0],0x0
  00419189: e9 f2 02 00 00                                 jmp    0x419480
  0041921e: 8b 8c 9e a0 01 00 00                           mov    ecx,DWORD PTR [esi+ebx*4+0x1a0]
  00419225: 85 c9                                          test   ecx,ecx
  00419227: 75 12                                          jne    0x41923b
  00419229: 6a 00                                          push   0x0
  0041922b: 6a 01                                          push   0x1
  0041922d: 50                                             push   eax
  0041922e: 57                                             push   edi
  0041922f: 8b ce                                          mov    ecx,esi
  00419231: e8 aa e9 ff ff                                 call   0x417be0
  00419236: e9 08 ff ff ff                                 jmp    0x419143
  0041923b: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  0041923e: e8 ad cb 06 00                                 call   0x485df0
  00419243: bb 13 00 00 00                                 mov    ebx,0x13
  00419248: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  0041924b: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  0041924e: e8 0b 88 0b 00                                 call   0x4d1a5e
  00419253: 33 c0                                          xor    eax,eax
  00419255: 66 8b 86 1c 01 00 00                           mov    ax,WORD PTR [esi+0x11c]
  0041925c: 68 58 13 51 00                                 push   0x511358
  00419261: c6 45 fc 14                                    mov    BYTE PTR [ebp-0x4],0x14
  00419265: 50                                             push   eax
  00419266: 6a 0d                                          push   0xd
  00419268: e8 83 47 02 00                                 call   0x43d9f0
  0041926d: 83 c4 0c                                       add    esp,0xc
  00419270: 50                                             push   eax
  00419271: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00419274: e8 df 87 0b 00                                 call   0x4d1a58
  00419279: 6a 3f                                          push   0x3f
  0041927b: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  0041927e: e8 cd ce 06 00                                 call   0x486150
  00419283: 6a 1e                                          push   0x1e
  00419285: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00419288: e8 c3 ce 06 00                                 call   0x486150
  0041928d: 6a 03                                          push   0x3
  0041928f: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00419292: e8 b9 ce 06 00                                 call   0x486150
  00419297: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  0041929a: 51                                             push   ecx
  0041929b: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  0041929e: e8 ad d0 06 00                                 call   0x486350
  004192a3: 8b 16                                          mov    edx,DWORD PTR [esi]
  004192a5: 8d 45 b0                                       lea    eax,[ebp-0x50]
  004192a8: 50                                             push   eax
  004192a9: 8b ce                                          mov    ecx,esi
  004192ab: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  004192b1: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  004192b4: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  004192b7: e8 84 87 0b 00                                 call   0x4d1a40
  004192bc: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004192c3: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  004192c6: e9 b0 01 00 00                                 jmp    0x41947b
  004192cb: 8b 17                                          mov    edx,DWORD PTR [edi]
  004192cd: 6a 00                                          push   0x0
  004192cf: 6a 00                                          push   0x0
  004192d1: 56                                             push   esi
  004192d2: 6a 00                                          push   0x0
  004192d4: 57                                             push   edi
  004192d5: 6a 0f                                          push   0xf
  004192d7: 8b cf                                          mov    ecx,edi
  004192d9: ff 52 24                                       call   DWORD PTR [edx+0x24]
  004192dc: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  004192df: e8 0c cb 06 00                                 call   0x485df0
  004192e4: 6a 00                                          push   0x0
  004192e6: 8d 45 b0                                       lea    eax,[ebp-0x50]
  004192e9: 50                                             push   eax
  004192ea: 8b ce                                          mov    ecx,esi
  004192ec: c7 45 fc 15 00 00 00                           mov    DWORD PTR [ebp-0x4],0x15
  004192f3: e8 a8 62 00 00                                 call   0x41f5a0
  004192f8: 8b 16                                          mov    edx,DWORD PTR [esi]
  004192fa: 8d 45 b0                                       lea    eax,[ebp-0x50]
  004192fd: 50                                             push   eax
  004192fe: 8b ce                                          mov    ecx,esi
  00419300: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00419306: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00419309: e8 b2 cb 06 00                                 call   0x485ec0
  0041930e: 6a 00                                          push   0x0
  00419310: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00419313: 51                                             push   ecx
  00419314: 8b ce                                          mov    ecx,esi
  00419316: e8 25 5a 00 00                                 call   0x41ed40
  0041931b: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041931d: 8d 45 b0                                       lea    eax,[ebp-0x50]
  00419320: 50                                             push   eax
  00419321: 8b ce                                          mov    ecx,esi
  00419323: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00419329: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  0041932c: e8 8f cb 06 00                                 call   0x485ec0
  00419331: 8b 16                                          mov    edx,DWORD PTR [esi]
  00419333: 8b ce                                          mov    ecx,esi
  00419335: ff 52 2c                                       call   DWORD PTR [edx+0x2c]
  00419338: 66 3d 1b 27                                    cmp    ax,0x271b
  0041933c: 74 06                                          je     0x419344
  0041933e: 66 3d 1c 27                                    cmp    ax,0x271c
  00419342: 75 3e                                          jne    0x419382
  00419344: 8b 06                                          mov    eax,DWORD PTR [esi]
  00419346: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00419349: 51                                             push   ecx
  0041934a: 8b ce                                          mov    ecx,esi
  0041934c: ff 90 c0 01 00 00                              call   DWORD PTR [eax+0x1c0]
  00419352: 8b 06                                          mov    eax,DWORD PTR [esi]
  00419354: 6a 00                                          push   0x0
  00419356: 8d 55 b0                                       lea    edx,[ebp-0x50]
  00419359: 52                                             push   edx
  0041935a: 6a 14                                          push   0x14
  0041935c: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  0041935f: 51                                             push   ecx
  00419360: 8b ce                                          mov    ecx,esi
  00419362: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  00419365: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00419367: 83 ec 0c                                       sub    esp,0xc
  0041936a: 8b d4                                          mov    edx,esp
  0041936c: 89 0a                                          mov    DWORD PTR [edx],ecx
  0041936e: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  00419371: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00419374: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  00419377: 89 42 08                                       mov    DWORD PTR [edx+0x8],eax
  0041937a: e8 71 67 ff ff                                 call   0x40faf0
  0041937f: 83 c4 18                                       add    esp,0x18
  00419382: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  00419385: e8 36 cb 06 00                                 call   0x485ec0
  0041938a: 6a 00                                          push   0x0
  0041938c: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  0041938f: 51                                             push   ecx
  00419390: 8b ce                                          mov    ecx,esi
  00419392: e8 d9 04 00 00                                 call   0x419870
  00419397: 8b 16                                          mov    edx,DWORD PTR [esi]
  00419399: 8d 45 b0                                       lea    eax,[ebp-0x50]
  0041939c: 50                                             push   eax
  0041939d: 8b ce                                          mov    ecx,esi
  0041939f: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  004193a5: 8d 4d b0                                       lea    ecx,[ebp-0x50]
  004193a8: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004193af: e8 cc ca 06 00                                 call   0x485e80
  004193b4: e9 cf 00 00 00                                 jmp    0x419488
  004193b9: 8b 16                                          mov    edx,DWORD PTR [esi]
  004193bb: 68 58 13 51 00                                 push   0x511358
  004193c0: 8b ce                                          mov    ecx,esi
  004193c2: ff 92 94 01 00 00                              call   DWORD PTR [edx+0x194]
  004193c8: 50                                             push   eax
  004193c9: 68 4f 1c 00 00                                 push   0x1c4f
  004193ce: e8 1d 46 02 00                                 call   0x43d9f0
  004193d3: 83 c4 08                                       add    esp,0x8
  004193d6: 8b cc                                          mov    ecx,esp
  004193d8: 89 65 e0                                       mov    DWORD PTR [ebp-0x20],esp
  004193db: 50                                             push   eax
  004193dc: e8 83 86 0b 00                                 call   0x4d1a64
  004193e1: 8b ce                                          mov    ecx,esi
  004193e3: e8 a8 9a 00 00                                 call   0x422e90
  004193e8: e9 93 00 00 00                                 jmp    0x419480
  004193ed: 8d 4d c8                                       lea    ecx,[ebp-0x38]
  004193f0: e8 fb c9 06 00                                 call   0x485df0
  004193f5: bb 16 00 00 00                                 mov    ebx,0x16
  004193fa: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  004193fd: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00419400: e8 59 86 0b 00                                 call   0x4d1a5e
  00419405: 33 c0                                          xor    eax,eax
  00419407: 66 8b 86 1c 01 00 00                           mov    ax,WORD PTR [esi+0x11c]
  0041940e: 68 58 13 51 00                                 push   0x511358
  00419413: c6 45 fc 17                                    mov    BYTE PTR [ebp-0x4],0x17
  00419417: 50                                             push   eax
  00419418: 68 d7 01 00 00                                 push   0x1d7
  0041941d: e8 ce 45 02 00                                 call   0x43d9f0
  00419422: 83 c4 0c                                       add    esp,0xc
  00419425: 50                                             push   eax
  00419426: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  00419429: e8 2a 86 0b 00                                 call   0x4d1a58
  0041942e: 6a 3f                                          push   0x3f
  00419430: 8d 4d c8                                       lea    ecx,[ebp-0x38]
  00419433: e8 18 cd 06 00                                 call   0x486150
  00419438: 6a 1e                                          push   0x1e
  0041943a: 8d 4d c8                                       lea    ecx,[ebp-0x38]
  0041943d: e8 0e cd 06 00                                 call   0x486150
  00419442: 6a 03                                          push   0x3
  00419444: 8d 4d c8                                       lea    ecx,[ebp-0x38]
  00419447: e8 04 cd 06 00                                 call   0x486150
  0041944c: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  0041944f: 51                                             push   ecx
  00419450: 8d 4d c8                                       lea    ecx,[ebp-0x38]
  00419453: e8 f8 ce 06 00                                 call   0x486350
  00419458: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041945a: 8d 45 c8                                       lea    eax,[ebp-0x38]
  0041945d: 50                                             push   eax
  0041945e: 8b ce                                          mov    ecx,esi
  00419460: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00419466: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  00419469: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  0041946c: e8 cf 85 0b 00                                 call   0x4d1a40
  00419471: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00419478: 8d 4d c8                                       lea    ecx,[ebp-0x38]
  0041947b: e8 00 ca 06 00                                 call   0x485e80
  00419480: 57                                             push   edi
  00419481: 8b ce                                          mov    ecx,esi
  00419483: e8 98 78 00 00                                 call   0x420d20
  00419488: 8b 8e 9c 01 00 00                              mov    ecx,DWORD PTR [esi+0x19c]
  0041948e: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00419490: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00419493: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00419496: 5f                                             pop    edi
  00419497: 5e                                             pop    esi
  00419498: 32 c0                                          xor    al,al
  0041949a: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004194a1: 5b                                             pop    ebx
  004194a2: 8b e5                                          mov    esp,ebp
  004194a4: 5d                                             pop    ebp
  004194a5: c2 04 00                                       ret    0x4

; [004194D0] Character::?unequip_object@Character ; instruction=135 ; plage_limite=004196F0 ; issues=0
  004194d0: 55                                             push   ebp
  004194d1: 8b ec                                          mov    ebp,esp
  004194d3: 6a ff                                          push   0xffffffff
  004194d5: 68 48 3e 4d 00                                 push   0x4d3e48
  004194da: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004194e0: 50                                             push   eax
  004194e1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004194e8: 83 ec 24                                       sub    esp,0x24
  004194eb: 53                                             push   ebx
  004194ec: 56                                             push   esi
  004194ed: 57                                             push   edi
  004194ee: 8b f1                                          mov    esi,ecx
  004194f0: e8 8b 67 00 00                                 call   0x41fc80
  004194f5: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  004194f8: 80 f9 10                                       cmp    cl,0x10
  004194fb: 0f 83 8e 01 00 00                              jae    0x41968f
  00419501: 80 f9 05                                       cmp    cl,0x5
  00419504: 0f 84 85 01 00 00                              je     0x41968f
  0041950a: 80 f9 0d                                       cmp    cl,0xd
  0041950d: 0f 84 7c 01 00 00                              je     0x41968f
  00419513: 8b c1                                          mov    eax,ecx
  00419515: 25 ff 00 00 00                                 and    eax,0xff
  0041951a: 8b bc 86 a0 01 00 00                           mov    edi,DWORD PTR [esi+eax*4+0x1a0]
  00419521: 33 db                                          xor    ebx,ebx
  00419523: 3b fb                                          cmp    edi,ebx
  00419525: 0f 84 64 01 00 00                              je     0x41968f
  0041952b: 80 f9 08                                       cmp    cl,0x8
  0041952e: 74 05                                          je     0x419535
  00419530: 80 f9 09                                       cmp    cl,0x9
  00419533: 75 1a                                          jne    0x41954f
  00419535: 8b 8e c0 01 00 00                              mov    ecx,DWORD PTR [esi+0x1c0]
  0041953b: 3b 8e c4 01 00 00                              cmp    ecx,DWORD PTR [esi+0x1c4]
  00419541: 75 0c                                          jne    0x41954f
  00419543: 89 9e c4 01 00 00                              mov    DWORD PTR [esi+0x1c4],ebx
  00419549: 89 9e c0 01 00 00                              mov    DWORD PTR [esi+0x1c0],ebx
  0041954f: 83 f8 0f                                       cmp    eax,0xf
  00419552: 89 9c 86 a0 01 00 00                           mov    DWORD PTR [esi+eax*4+0x1a0],ebx
  00419559: 77 49                                          ja     0x4195a4
  0041955b: ff 24 85 a4 96 41 00                           jmp    DWORD PTR [eax*4+0x4196a4]
  004195a4: 8b 17                                          mov    edx,DWORD PTR [edi]
  004195a6: 53                                             push   ebx
  004195a7: 53                                             push   ebx
  004195a8: 56                                             push   esi
  004195a9: 53                                             push   ebx
  004195aa: 57                                             push   edi
  004195ab: 6a 10                                          push   0x10
  004195ad: 8b cf                                          mov    ecx,edi
  004195af: ff 52 24                                       call   DWORD PTR [edx+0x24]
  004195b2: 38 5d 0c                                       cmp    BYTE PTR [ebp+0xc],bl
  004195b5: 75 08                                          jne    0x4195bf
  004195b7: 57                                             push   edi
  004195b8: 8b ce                                          mov    ecx,esi
  004195ba: e8 61 77 00 00                                 call   0x420d20
  004195bf: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  004195c2: e8 29 c8 06 00                                 call   0x485df0
  004195c7: 53                                             push   ebx
  004195c8: 8d 45 d0                                       lea    eax,[ebp-0x30]
  004195cb: 50                                             push   eax
  004195cc: 8b ce                                          mov    ecx,esi
  004195ce: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  004195d1: e8 ca 5f 00 00                                 call   0x41f5a0
  004195d6: 8b 16                                          mov    edx,DWORD PTR [esi]
  004195d8: 8d 45 d0                                       lea    eax,[ebp-0x30]
  004195db: 50                                             push   eax
  004195dc: 8b ce                                          mov    ecx,esi
  004195de: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  004195e4: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  004195e7: e8 d4 c8 06 00                                 call   0x485ec0
  004195ec: 53                                             push   ebx
  004195ed: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  004195f0: 51                                             push   ecx
  004195f1: 8b ce                                          mov    ecx,esi
  004195f3: e8 48 57 00 00                                 call   0x41ed40
  004195f8: 8b 16                                          mov    edx,DWORD PTR [esi]
  004195fa: 8d 45 d0                                       lea    eax,[ebp-0x30]
  004195fd: 50                                             push   eax
  004195fe: 8b ce                                          mov    ecx,esi
  00419600: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00419606: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  00419609: e8 b2 c8 06 00                                 call   0x485ec0
  0041960e: 8b 16                                          mov    edx,DWORD PTR [esi]
  00419610: 8b ce                                          mov    ecx,esi
  00419612: ff 52 2c                                       call   DWORD PTR [edx+0x2c]
  00419615: 66 3d 1b 27                                    cmp    ax,0x271b
  00419619: 74 06                                          je     0x419621
  0041961b: 66 3d 1c 27                                    cmp    ax,0x271c
  0041961f: 75 3d                                          jne    0x41965e
  00419621: 8b 06                                          mov    eax,DWORD PTR [esi]
  00419623: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  00419626: 51                                             push   ecx
  00419627: 8b ce                                          mov    ecx,esi
  00419629: ff 90 c0 01 00 00                              call   DWORD PTR [eax+0x1c0]
  0041962f: 8b 06                                          mov    eax,DWORD PTR [esi]
  00419631: 53                                             push   ebx
  00419632: 8d 55 d0                                       lea    edx,[ebp-0x30]
  00419635: 52                                             push   edx
  00419636: 6a 14                                          push   0x14
  00419638: 8d 4d e8                                       lea    ecx,[ebp-0x18]
  0041963b: 51                                             push   ecx
  0041963c: 8b ce                                          mov    ecx,esi
  0041963e: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  00419641: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00419643: 83 ec 0c                                       sub    esp,0xc
  00419646: 8b d4                                          mov    edx,esp
  00419648: 89 0a                                          mov    DWORD PTR [edx],ecx
  0041964a: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  0041964d: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  00419650: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  00419653: 89 42 08                                       mov    DWORD PTR [edx+0x8],eax
  00419656: e8 95 64 ff ff                                 call   0x40faf0
  0041965b: 83 c4 18                                       add    esp,0x18
  0041965e: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  00419661: e8 5a c8 06 00                                 call   0x485ec0
  00419666: 53                                             push   ebx
  00419667: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  0041966a: 51                                             push   ecx
  0041966b: 8b ce                                          mov    ecx,esi
  0041966d: e8 fe 01 00 00                                 call   0x419870
  00419672: 8b 16                                          mov    edx,DWORD PTR [esi]
  00419674: 8d 45 d0                                       lea    eax,[ebp-0x30]
  00419677: 50                                             push   eax
  00419678: 8b ce                                          mov    ecx,esi
  0041967a: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00419680: 8d 4d d0                                       lea    ecx,[ebp-0x30]
  00419683: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0041968a: e8 f1 c7 06 00                                 call   0x485e80
  0041968f: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00419692: 5f                                             pop    edi
  00419693: 5e                                             pop    esi
  00419694: 32 c0                                          xor    al,al
  00419696: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0041969d: 5b                                             pop    ebx
  0041969e: 8b e5                                          mov    esp,ebp
  004196a0: 5d                                             pop    ebp
  004196a1: c2 08 00                                       ret    0x8

; [004196F0] Character::?PacketSingleEquip@Character ; instruction=124 ; plage_limite=00419870 ; issues=0
  004196f0: 55                                             push   ebp
  004196f1: 8b ec                                          mov    ebp,esp
  004196f3: 6a ff                                          push   0xffffffff
  004196f5: 68 78 3e 4d 00                                 push   0x4d3e78
  004196fa: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00419700: 50                                             push   eax
  00419701: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00419708: 83 ec 08                                       sub    esp,0x8
  0041970b: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0041970e: 53                                             push   ebx
  0041970f: 25 ff 00 00 00                                 and    eax,0xff
  00419714: 8b d9                                          mov    ebx,ecx
  00419716: 56                                             push   esi
  00419717: 8b b4 83 a0 01 00 00                           mov    esi,DWORD PTR [ebx+eax*4+0x1a0]
  0041971e: 85 f6                                          test   esi,esi
  00419720: 0f 84 af 00 00 00                              je     0x4197d5
  00419726: 57                                             push   edi
  00419727: 8b ce                                          mov    ecx,esi
  00419729: e8 d2 1f 07 00                                 call   0x48b700
  0041972e: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  00419731: 50                                             push   eax
  00419732: 8b cf                                          mov    ecx,edi
  00419734: e8 b7 ca 06 00                                 call   0x4861f0
  00419739: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041973b: 8b ce                                          mov    ecx,esi
  0041973d: ff 52 2c                                       call   DWORD PTR [edx+0x2c]
  00419740: 50                                             push   eax
  00419741: 8b cf                                          mov    ecx,edi
  00419743: e8 08 ca 06 00                                 call   0x486150
  00419748: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041974a: 8b ce                                          mov    ecx,esi
  0041974c: ff 50 28                                       call   DWORD PTR [eax+0x28]
  0041974f: 50                                             push   eax
  00419750: 8b cf                                          mov    ecx,edi
  00419752: e8 f9 c9 06 00                                 call   0x486150
  00419757: 8b ce                                          mov    ecx,esi
  00419759: e8 92 2c 03 00                                 call   0x44c3f0
  0041975e: 50                                             push   eax
  0041975f: 8b cf                                          mov    ecx,edi
  00419761: e8 ea c9 06 00                                 call   0x486150
  00419766: 8b ce                                          mov    ecx,esi
  00419768: e8 93 2d 03 00                                 call   0x44c500
  0041976d: 84 c0                                          test   al,al
  0041976f: 74 0e                                          je     0x41977f
  00419771: 8b 16                                          mov    edx,DWORD PTR [esi]
  00419773: 6a 00                                          push   0x0
  00419775: 6a 1b                                          push   0x1b
  00419777: 8b ce                                          mov    ecx,esi
  00419779: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  0041977c: 50                                             push   eax
  0041977d: eb 02                                          jmp    0x419781
  0041977f: 6a 00                                          push   0x0
  00419781: 8b cf                                          mov    ecx,edi
  00419783: e8 68 ca 06 00                                 call   0x4861f0
  00419788: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041978a: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0041978c: 8b cb                                          mov    ecx,ebx
  0041978e: 89 55 0c                                       mov    DWORD PTR [ebp+0xc],edx
  00419791: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  00419797: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  0041979a: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  0041979d: 50                                             push   eax
  0041979e: 51                                             push   ecx
  0041979f: 8b ce                                          mov    ecx,esi
  004197a1: ff 52 48                                       call   DWORD PTR [edx+0x48]
  004197a4: 50                                             push   eax
  004197a5: 8b cf                                          mov    ecx,edi
  004197a7: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004197ae: e8 9d cb 06 00                                 call   0x486350
  004197b3: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  004197b6: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004197bd: e8 7e 82 0b 00                                 call   0x4d1a40
  004197c2: 5f                                             pop    edi
  004197c3: 5e                                             pop    esi
  004197c4: 5b                                             pop    ebx
  004197c5: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004197c8: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004197cf: 8b e5                                          mov    esp,ebp
  004197d1: 5d                                             pop    ebp
  004197d2: c2 08 00                                       ret    0x8
  004197d5: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  004197d8: e8 81 82 0b 00                                 call   0x4d1a5e
  004197dd: bb 01 00 00 00                                 mov    ebx,0x1
  004197e2: 68 58 13 51 00                                 push   0x511358
  004197e7: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  004197ea: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  004197ed: e8 66 82 0b 00                                 call   0x4d1a58
  004197f2: 8b 75 0c                                       mov    esi,DWORD PTR [ebp+0xc]
  004197f5: 6a 00                                          push   0x0
  004197f7: 8b ce                                          mov    ecx,esi
  004197f9: e8 f2 c9 06 00                                 call   0x4861f0
  004197fe: 6a 00                                          push   0x0
  00419800: 8b ce                                          mov    ecx,esi
  00419802: e8 49 c9 06 00                                 call   0x486150
  00419807: 6a 00                                          push   0x0
  00419809: 8b ce                                          mov    ecx,esi
  0041980b: e8 40 c9 06 00                                 call   0x486150
  00419810: 6a 00                                          push   0x0
  00419812: 8b ce                                          mov    ecx,esi
  00419814: e8 37 c9 06 00                                 call   0x486150
  00419819: 6a 00                                          push   0x0
  0041981b: 8b ce                                          mov    ecx,esi
  0041981d: e8 ce c9 06 00                                 call   0x4861f0
  00419822: 8d 45 08                                       lea    eax,[ebp+0x8]
  00419825: 50                                             push   eax
  00419826: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00419829: e8 1e 82 0b 00                                 call   0x4d1a4c
  0041982e: 50                                             push   eax
  0041982f: 8b ce                                          mov    ecx,esi
  00419831: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  00419835: e8 16 cb 06 00                                 call   0x486350
  0041983a: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  0041983d: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00419840: e8 fb 81 0b 00                                 call   0x4d1a40
  00419845: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  00419848: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0041984f: e8 ec 81 0b 00                                 call   0x4d1a40
  00419854: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00419857: 5e                                             pop    esi
  00419858: 5b                                             pop    ebx
  00419859: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00419860: 8b e5                                          mov    esp,ebp
  00419862: 5d                                             pop    ebp
  00419863: c2 08 00                                       ret    0x8

; [00419870] Character::?packet_equiped@Character ; instruction=85 ; plage_limite=00419950 ; issues=0
  00419870: 55                                             push   ebp
  00419871: 8b ec                                          mov    ebp,esp
  00419873: 56                                             push   esi
  00419874: 8b f1                                          mov    esi,ecx
  00419876: 8b 86 28 01 00 00                              mov    eax,DWORD PTR [esi+0x128]
  0041987c: 85 c0                                          test   eax,eax
  0041987e: 57                                             push   edi
  0041987f: 74 15                                          je     0x419896
  00419881: 8a 4d 0c                                       mov    cl,BYTE PTR [ebp+0xc]
  00419884: 84 c9                                          test   cl,cl
  00419886: 75 0e                                          jne    0x419896
  00419888: 8b f0                                          mov    esi,eax
  0041988a: 8b 86 28 01 00 00                              mov    eax,DWORD PTR [esi+0x128]
  00419890: 85 c0                                          test   eax,eax
  00419892: b1 01                                          mov    cl,0x1
  00419894: 75 ee                                          jne    0x419884
  00419896: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  00419899: 6a 13                                          push   0x13
  0041989b: 8b cf                                          mov    ecx,edi
  0041989d: e8 ae c8 06 00                                 call   0x486150
  004198a2: 8b ce                                          mov    ecx,esi
  004198a4: e8 77 7d 00 00                                 call   0x421620
  004198a9: 84 c0                                          test   al,al
  004198ab: 74 04                                          je     0x4198b1
  004198ad: 6a 01                                          push   0x1
  004198af: eb 02                                          jmp    0x4198b3
  004198b1: 6a 00                                          push   0x0
  004198b3: 8b cf                                          mov    ecx,edi
  004198b5: e8 f6 c8 06 00                                 call   0x4861b0
  004198ba: 57                                             push   edi
  004198bb: 6a 00                                          push   0x0
  004198bd: 8b ce                                          mov    ecx,esi
  004198bf: e8 2c fe ff ff                                 call   0x4196f0
  004198c4: 57                                             push   edi
  004198c5: 6a 02                                          push   0x2
  004198c7: 8b ce                                          mov    ecx,esi
  004198c9: e8 22 fe ff ff                                 call   0x4196f0
  004198ce: 57                                             push   edi
  004198cf: 6a 03                                          push   0x3
  004198d1: 8b ce                                          mov    ecx,esi
  004198d3: e8 18 fe ff ff                                 call   0x4196f0
  004198d8: 57                                             push   edi
  004198d9: 6a 04                                          push   0x4
  004198db: 8b ce                                          mov    ecx,esi
  004198dd: e8 0e fe ff ff                                 call   0x4196f0
  004198e2: 57                                             push   edi
  004198e3: 6a 06                                          push   0x6
  004198e5: 8b ce                                          mov    ecx,esi
  004198e7: e8 04 fe ff ff                                 call   0x4196f0
  004198ec: 57                                             push   edi
  004198ed: 6a 07                                          push   0x7
  004198ef: 8b ce                                          mov    ecx,esi
  004198f1: e8 fa fd ff ff                                 call   0x4196f0
  004198f6: 57                                             push   edi
  004198f7: 6a 08                                          push   0x8
  004198f9: 8b ce                                          mov    ecx,esi
  004198fb: e8 f0 fd ff ff                                 call   0x4196f0
  00419900: 57                                             push   edi
  00419901: 6a 09                                          push   0x9
  00419903: 8b ce                                          mov    ecx,esi
  00419905: e8 e6 fd ff ff                                 call   0x4196f0
  0041990a: 57                                             push   edi
  0041990b: 6a 0b                                          push   0xb
  0041990d: 8b ce                                          mov    ecx,esi
  0041990f: e8 dc fd ff ff                                 call   0x4196f0
  00419914: 57                                             push   edi
  00419915: 6a 0c                                          push   0xc
  00419917: 8b ce                                          mov    ecx,esi
  00419919: e8 d2 fd ff ff                                 call   0x4196f0
  0041991e: 57                                             push   edi
  0041991f: 6a 0e                                          push   0xe
  00419921: 8b ce                                          mov    ecx,esi
  00419923: e8 c8 fd ff ff                                 call   0x4196f0
  00419928: 57                                             push   edi
  00419929: 6a 0f                                          push   0xf
  0041992b: 8b ce                                          mov    ecx,esi
  0041992d: e8 be fd ff ff                                 call   0x4196f0
  00419932: 57                                             push   edi
  00419933: 6a 01                                          push   0x1
  00419935: 8b ce                                          mov    ecx,esi
  00419937: e8 b4 fd ff ff                                 call   0x4196f0
  0041993c: 5f                                             pop    edi
  0041993d: 5e                                             pop    esi
  0041993e: 5d                                             pop    ebp
  0041993f: c2 08 00                                       ret    0x8

; [00420760] Character::?PacketBackpack@Character ; instruction=124 ; plage_limite=004208B0 ; issues=0
  00420760: 55                                             push   ebp
  00420761: 8b ec                                          mov    ebp,esp
  00420763: 51                                             push   ecx
  00420764: 56                                             push   esi
  00420765: 8b f1                                          mov    esi,ecx
  00420767: 8b 8e 28 01 00 00                              mov    ecx,DWORD PTR [esi+0x128]
  0042076d: 85 c9                                          test   ecx,ecx
  0042076f: 89 75 fc                                       mov    DWORD PTR [ebp-0x4],esi
  00420772: 74 1c                                          je     0x420790
  00420774: 8a 45 0c                                       mov    al,BYTE PTR [ebp+0xc]
  00420777: 84 c0                                          test   al,al
  00420779: 75 15                                          jne    0x420790
  0042077b: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  0042077e: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00420780: 6a 01                                          push   0x1
  00420782: 52                                             push   edx
  00420783: ff 90 6c 01 00 00                              call   DWORD PTR [eax+0x16c]
  00420789: 5e                                             pop    esi
  0042078a: 8b e5                                          mov    esp,ebp
  0042078c: 5d                                             pop    ebp
  0042078d: c2 08 00                                       ret    0x8
  00420790: 8b 06                                          mov    eax,DWORD PTR [esi]
  00420792: 57                                             push   edi
  00420793: 8b ce                                          mov    ecx,esi
  00420795: ff 50 60                                       call   DWORD PTR [eax+0x60]
  00420798: 8b f8                                          mov    edi,eax
  0042079a: 85 ff                                          test   edi,edi
  0042079c: 0f 84 ea 00 00 00                              je     0x42088c
  004207a2: 8b 17                                          mov    edx,DWORD PTR [edi]
  004207a4: 53                                             push   ebx
  004207a5: 8b cf                                          mov    ecx,edi
  004207a7: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004207aa: 8b 4f 38                                       mov    ecx,DWORD PTR [edi+0x38]
  004207ad: 8b 47 24                                       mov    eax,DWORD PTR [edi+0x24]
  004207b0: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  004207b3: 51                                             push   ecx
  004207b4: 8b cb                                          mov    ecx,ebx
  004207b6: 89 47 20                                       mov    DWORD PTR [edi+0x20],eax
  004207b9: c7 47 40 00 00 00 00                           mov    DWORD PTR [edi+0x40],0x0
  004207c0: c6 47 34 08                                    mov    BYTE PTR [edi+0x34],0x8
  004207c4: e8 87 59 06 00                                 call   0x486150
  004207c9: 8b 47 40                                       mov    eax,DWORD PTR [edi+0x40]
  004207cc: 85 c0                                          test   eax,eax
  004207ce: 74 0a                                          je     0x4207da
  004207d0: 8b 57 20                                       mov    edx,DWORD PTR [edi+0x20]
  004207d3: 8b 02                                          mov    eax,DWORD PTR [edx]
  004207d5: 89 47 20                                       mov    DWORD PTR [edi+0x20],eax
  004207d8: eb 07                                          jmp    0x4207e1
  004207da: c7 47 40 01 00 00 00                           mov    DWORD PTR [edi+0x40],0x1
  004207e1: 8b 47 20                                       mov    eax,DWORD PTR [edi+0x20]
  004207e4: 85 c0                                          test   eax,eax
  004207e6: 74 76                                          je     0x42085e
  004207e8: 8b 70 08                                       mov    esi,DWORD PTR [eax+0x8]
  004207eb: 8b 16                                          mov    edx,DWORD PTR [esi]
  004207ed: 8b ce                                          mov    ecx,esi
  004207ef: ff 52 2c                                       call   DWORD PTR [edx+0x2c]
  004207f2: 50                                             push   eax
  004207f3: 8b cb                                          mov    ecx,ebx
  004207f5: e8 56 59 06 00                                 call   0x486150
  004207fa: 8b ce                                          mov    ecx,esi
  004207fc: e8 ff ae 06 00                                 call   0x48b700
  00420801: 50                                             push   eax
  00420802: 8b cb                                          mov    ecx,ebx
  00420804: e8 e7 59 06 00                                 call   0x4861f0
  00420809: 8b 06                                          mov    eax,DWORD PTR [esi]
  0042080b: 8b ce                                          mov    ecx,esi
  0042080d: ff 50 28                                       call   DWORD PTR [eax+0x28]
  00420810: 50                                             push   eax
  00420811: 8b cb                                          mov    ecx,ebx
  00420813: e8 38 59 06 00                                 call   0x486150
  00420818: 8b ce                                          mov    ecx,esi
  0042081a: e8 d1 bb 02 00                                 call   0x44c3f0
  0042081f: 50                                             push   eax
  00420820: 8b cb                                          mov    ecx,ebx
  00420822: e8 c9 59 06 00                                 call   0x4861f0
  00420827: 8b ce                                          mov    ecx,esi
  00420829: e8 d2 bc 02 00                                 call   0x44c500
  0042082e: 84 c0                                          test   al,al
  00420830: 74 1b                                          je     0x42084d
  00420832: 8b 16                                          mov    edx,DWORD PTR [esi]
  00420834: 6a 00                                          push   0x0
  00420836: 6a 1b                                          push   0x1b
  00420838: 8b ce                                          mov    ecx,esi
  0042083a: ff 52 0c                                       call   DWORD PTR [edx+0xc]
  0042083d: 50                                             push   eax
  0042083e: 8b cb                                          mov    ecx,ebx
  00420840: e8 ab 59 06 00                                 call   0x4861f0
  00420845: 8b 75 fc                                       mov    esi,DWORD PTR [ebp-0x4]
  00420848: e9 7c ff ff ff                                 jmp    0x4207c9
  0042084d: 6a 00                                          push   0x0
  0042084f: 8b cb                                          mov    ecx,ebx
  00420851: e8 9a 59 06 00                                 call   0x4861f0
  00420856: 8b 75 fc                                       mov    esi,DWORD PTR [ebp-0x4]
  00420859: e9 6b ff ff ff                                 jmp    0x4207c9
  0042085e: 8b 47 40                                       mov    eax,DWORD PTR [edi+0x40]
  00420861: 85 c0                                          test   eax,eax
  00420863: 5b                                             pop    ebx
  00420864: 74 04                                          je     0x42086a
  00420866: c6 47 34 07                                    mov    BYTE PTR [edi+0x34],0x7
  0042086a: 8b 07                                          mov    eax,DWORD PTR [edi]
  0042086c: 8b cf                                          mov    ecx,edi
  0042086e: c7 47 40 00 00 00 00                           mov    DWORD PTR [edi+0x40],0x0
  00420875: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00420878: 8b 16                                          mov    edx,DWORD PTR [esi]
  0042087a: 68 42 4e 00 00                                 push   0x4e42
  0042087f: 8b ce                                          mov    ecx,esi
  00420881: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00420884: 5f                                             pop    edi
  00420885: 5e                                             pop    esi
  00420886: 8b e5                                          mov    esp,ebp
  00420888: 5d                                             pop    ebp
  00420889: c2 08 00                                       ret    0x8
  0042088c: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  0042088f: 6a 00                                          push   0x0
  00420891: e8 ba 58 06 00                                 call   0x486150
  00420896: 8b 16                                          mov    edx,DWORD PTR [esi]
  00420898: 68 42 4e 00 00                                 push   0x4e42
  0042089d: 8b ce                                          mov    ecx,esi
  0042089f: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004208a2: 5f                                             pop    edi
  004208a3: 5e                                             pop    esi
  004208a4: 8b e5                                          mov    esp,ebp
  004208a6: 5d                                             pop    ebp
  004208a7: c2 08 00                                       ret    0x8

; [004208B0] Character::?PacketRobBackpack@Character ; instruction=110 ; plage_limite=00420A00 ; issues=0
  004208b0: 55                                             push   ebp
  004208b1: 8b ec                                          mov    ebp,esp
  004208b3: 6a ff                                          push   0xffffffff
  004208b5: 68 c8 42 4d 00                                 push   0x4d42c8
  004208ba: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  004208c0: 50                                             push   eax
  004208c1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  004208c8: 83 ec 08                                       sub    esp,0x8
  004208cb: 8b 01                                          mov    eax,DWORD PTR [ecx]
  004208cd: 56                                             push   esi
  004208ce: ff 50 60                                       call   DWORD PTR [eax+0x60]
  004208d1: 8b f0                                          mov    esi,eax
  004208d3: 85 f6                                          test   esi,esi
  004208d5: 89 75 ec                                       mov    DWORD PTR [ebp-0x14],esi
  004208d8: 0f 84 fe 00 00 00                              je     0x4209dc
  004208de: 8b 16                                          mov    edx,DWORD PTR [esi]
  004208e0: 53                                             push   ebx
  004208e1: 57                                             push   edi
  004208e2: 8b ce                                          mov    ecx,esi
  004208e4: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004208e7: 8b 46 24                                       mov    eax,DWORD PTR [esi+0x24]
  004208ea: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  004208ed: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  004208f0: 8b 46 38                                       mov    eax,DWORD PTR [esi+0x38]
  004208f3: 50                                             push   eax
  004208f4: 8b cf                                          mov    ecx,edi
  004208f6: c7 46 40 00 00 00 00                           mov    DWORD PTR [esi+0x40],0x0
  004208fd: c6 46 34 08                                    mov    BYTE PTR [esi+0x34],0x8
  00420901: e8 4a 58 06 00                                 call   0x486150
  00420906: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  00420909: 8b 46 40                                       mov    eax,DWORD PTR [esi+0x40]
  0042090c: 85 c0                                          test   eax,eax
  0042090e: 74 0a                                          je     0x42091a
  00420910: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00420913: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00420915: 89 56 20                                       mov    DWORD PTR [esi+0x20],edx
  00420918: eb 07                                          jmp    0x420921
  0042091a: c7 46 40 01 00 00 00                           mov    DWORD PTR [esi+0x40],0x1
  00420921: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00420924: 85 c0                                          test   eax,eax
  00420926: 0f 84 84 00 00 00                              je     0x4209b0
  0042092c: 8b 70 08                                       mov    esi,DWORD PTR [eax+0x8]
  0042092f: 8b 06                                          mov    eax,DWORD PTR [esi]
  00420931: 8b ce                                          mov    ecx,esi
  00420933: ff 50 2c                                       call   DWORD PTR [eax+0x2c]
  00420936: 50                                             push   eax
  00420937: 8b cf                                          mov    ecx,edi
  00420939: e8 12 58 06 00                                 call   0x486150
  0042093e: 8b ce                                          mov    ecx,esi
  00420940: e8 bb ad 06 00                                 call   0x48b700
  00420945: 50                                             push   eax
  00420946: 8b cf                                          mov    ecx,edi
  00420948: e8 a3 58 06 00                                 call   0x4861f0
  0042094d: 8b 16                                          mov    edx,DWORD PTR [esi]
  0042094f: 8b ce                                          mov    ecx,esi
  00420951: ff 52 28                                       call   DWORD PTR [edx+0x28]
  00420954: 50                                             push   eax
  00420955: 8b cf                                          mov    ecx,edi
  00420957: e8 f4 57 06 00                                 call   0x486150
  0042095c: 8b ce                                          mov    ecx,esi
  0042095e: e8 8d ba 02 00                                 call   0x44c3f0
  00420963: 50                                             push   eax
  00420964: 8b cf                                          mov    ecx,edi
  00420966: e8 85 58 06 00                                 call   0x4861f0
  0042096b: 8b 16                                          mov    edx,DWORD PTR [esi]
  0042096d: 8b 03                                          mov    eax,DWORD PTR [ebx]
  0042096f: 8b cb                                          mov    ecx,ebx
  00420971: 89 55 0c                                       mov    DWORD PTR [ebp+0xc],edx
  00420974: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0042097a: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  0042097d: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00420980: 50                                             push   eax
  00420981: 51                                             push   ecx
  00420982: 8b ce                                          mov    ecx,esi
  00420984: ff 52 48                                       call   DWORD PTR [edx+0x48]
  00420987: 50                                             push   eax
  00420988: 8b cf                                          mov    ecx,edi
  0042098a: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  00420991: e8 ba 59 06 00                                 call   0x486350
  00420996: 8d 4d f0                                       lea    ecx,[ebp-0x10]
  00420999: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  004209a0: e8 9b 10 0b 00                                 call   0x4d1a40
  004209a5: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  004209a8: 8b 75 ec                                       mov    esi,DWORD PTR [ebp-0x14]
  004209ab: e9 59 ff ff ff                                 jmp    0x420909
  004209b0: 8b 46 40                                       mov    eax,DWORD PTR [esi+0x40]
  004209b3: 85 c0                                          test   eax,eax
  004209b5: 5f                                             pop    edi
  004209b6: 5b                                             pop    ebx
  004209b7: 74 04                                          je     0x4209bd
  004209b9: c6 46 34 07                                    mov    BYTE PTR [esi+0x34],0x7
  004209bd: 8b 06                                          mov    eax,DWORD PTR [esi]
  004209bf: 8b ce                                          mov    ecx,esi
  004209c1: c7 46 40 00 00 00 00                           mov    DWORD PTR [esi+0x40],0x0
  004209c8: ff 50 08                                       call   DWORD PTR [eax+0x8]
  004209cb: 5e                                             pop    esi
  004209cc: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004209cf: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004209d6: 8b e5                                          mov    esp,ebp
  004209d8: 5d                                             pop    ebp
  004209d9: c2 08 00                                       ret    0x8
  004209dc: 8b 4d 0c                                       mov    ecx,DWORD PTR [ebp+0xc]
  004209df: 6a 00                                          push   0x0
  004209e1: e8 6a 57 06 00                                 call   0x486150
  004209e6: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004209e9: 5e                                             pop    esi
  004209ea: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  004209f1: 8b e5                                          mov    esp,ebp
  004209f3: 5d                                             pop    ebp
  004209f4: c2 08 00                                       ret    0x8

; [00420A00] Character::?JunkItems@Character ; instruction=261 ; plage_limite=00420D20 ; issues=0
  00420a00: 55                                             push   ebp
  00420a01: 8b ec                                          mov    ebp,esp
  00420a03: 6a ff                                          push   0xffffffff
  00420a05: 68 f8 42 4d 00                                 push   0x4d42f8
  00420a0a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00420a10: 50                                             push   eax
  00420a11: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00420a18: 81 ec 24 08 00 00                              sub    esp,0x824
  00420a1e: 53                                             push   ebx
  00420a1f: 56                                             push   esi
  00420a20: 8b f1                                          mov    esi,ecx
  00420a22: 8b 86 28 01 00 00                              mov    eax,DWORD PTR [esi+0x128]
  00420a28: 57                                             push   edi
  00420a29: 33 ff                                          xor    edi,edi
  00420a2b: 3b c7                                          cmp    eax,edi
  00420a2d: 74 15                                          je     0x420a44
  00420a2f: 8a 4d 10                                       mov    cl,BYTE PTR [ebp+0x10]
  00420a32: 84 c9                                          test   cl,cl
  00420a34: 75 0e                                          jne    0x420a44
  00420a36: 8b f0                                          mov    esi,eax
  00420a38: 8b 86 28 01 00 00                              mov    eax,DWORD PTR [esi+0x128]
  00420a3e: 3b c7                                          cmp    eax,edi
  00420a40: b1 01                                          mov    cl,0x1
  00420a42: 75 ee                                          jne    0x420a32
  00420a44: 8b 9e 9c 01 00 00                              mov    ebx,DWORD PTR [esi+0x19c]
  00420a4a: 8b 03                                          mov    eax,DWORD PTR [ebx]
  00420a4c: 8b cb                                          mov    ecx,ebx
  00420a4e: 89 5d f0                                       mov    DWORD PTR [ebp-0x10],ebx
  00420a51: 89 5d d0                                       mov    DWORD PTR [ebp-0x30],ebx
  00420a54: ff 50 04                                       call   DWORD PTR [eax+0x4]
  00420a57: 8b 86 9c 01 00 00                              mov    eax,DWORD PTR [esi+0x19c]
  00420a5d: 8b 48 24                                       mov    ecx,DWORD PTR [eax+0x24]
  00420a60: 89 7d fc                                       mov    DWORD PTR [ebp-0x4],edi
  00420a63: c6 45 13 00                                    mov    BYTE PTR [ebp+0x13],0x0
  00420a67: 89 7d ec                                       mov    DWORD PTR [ebp-0x14],edi
  00420a6a: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00420a6d: 89 78 40                                       mov    DWORD PTR [eax+0x40],edi
  00420a70: c6 40 34 08                                    mov    BYTE PTR [eax+0x34],0x8
  00420a74: 8b 86 9c 01 00 00                              mov    eax,DWORD PTR [esi+0x19c]
  00420a7a: 39 78 40                                       cmp    DWORD PTR [eax+0x40],edi
  00420a7d: 74 0a                                          je     0x420a89
  00420a7f: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  00420a82: 8b 0a                                          mov    ecx,DWORD PTR [edx]
  00420a84: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00420a87: eb 07                                          jmp    0x420a90
  00420a89: c7 40 40 01 00 00 00                           mov    DWORD PTR [eax+0x40],0x1
  00420a90: 39 78 20                                       cmp    DWORD PTR [eax+0x20],edi
  00420a93: 74 1c                                          je     0x420ab1
  00420a95: 8b 96 9c 01 00 00                              mov    edx,DWORD PTR [esi+0x19c]
  00420a9b: 8b 42 20                                       mov    eax,DWORD PTR [edx+0x20]
  00420a9e: 8b 78 08                                       mov    edi,DWORD PTR [eax+0x8]
  00420aa1: 8b cf                                          mov    ecx,edi
  00420aa3: e8 58 ac 06 00                                 call   0x48b700
  00420aa8: 3b 45 08                                       cmp    eax,DWORD PTR [ebp+0x8]
  00420aab: 74 15                                          je     0x420ac2
  00420aad: 33 ff                                          xor    edi,edi
  00420aaf: eb c3                                          jmp    0x420a74
  00420ab1: 39 78 40                                       cmp    DWORD PTR [eax+0x40],edi
  00420ab4: 74 04                                          je     0x420aba
  00420ab6: c6 40 34 07                                    mov    BYTE PTR [eax+0x34],0x7
  00420aba: 89 78 40                                       mov    DWORD PTR [eax+0x40],edi
  00420abd: e9 c5 01 00 00                                 jmp    0x420c87
  00420ac2: 8b 17                                          mov    edx,DWORD PTR [edi]
  00420ac4: 8d 45 08                                       lea    eax,[ebp+0x8]
  00420ac7: 50                                             push   eax
  00420ac8: 6a 00                                          push   0x0
  00420aca: 6a 00                                          push   0x0
  00420acc: 6a 00                                          push   0x0
  00420ace: 6a 00                                          push   0x0
  00420ad0: 6a 14                                          push   0x14
  00420ad2: 8b cf                                          mov    ecx,edi
  00420ad4: c7 45 08 00 00 00 00                           mov    DWORD PTR [ebp+0x8],0x0
  00420adb: ff 52 24                                       call   DWORD PTR [edx+0x24]
  00420ade: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  00420ae1: 85 c0                                          test   eax,eax
  00420ae3: 0f 84 bf 01 00 00                              je     0x420ca8
  00420ae9: f6 40 14 08                                    test   BYTE PTR [eax+0x14],0x8
  00420aed: 0f 85 b5 01 00 00                              jne    0x420ca8
  00420af3: 8b 17                                          mov    edx,DWORD PTR [edi]
  00420af5: 8b cf                                          mov    ecx,edi
  00420af7: ff 52 28                                       call   DWORD PTR [edx+0x28]
  00420afa: 8b 0d 5c 05 4e 00                              mov    ecx,DWORD PTR ds:0x4e055c
  00420b00: 3b 01                                          cmp    eax,DWORD PTR [ecx]
  00420b02: 8b 5d 0c                                       mov    ebx,DWORD PTR [ebp+0xc]
  00420b05: 75 21                                          jne    0x420b28
  00420b07: 8b 16                                          mov    edx,DWORD PTR [esi]
  00420b09: 8b ce                                          mov    ecx,esi
  00420b0b: c6 45 13 01                                    mov    BYTE PTR [ebp+0x13],0x1
  00420b0f: ff 92 04 01 00 00                              call   DWORD PTR [edx+0x104]
  00420b15: 3b d8                                          cmp    ebx,eax
  00420b17: 73 0f                                          jae    0x420b28
  00420b19: 8b 06                                          mov    eax,DWORD PTR [esi]
  00420b1b: 8b ce                                          mov    ecx,esi
  00420b1d: ff 90 04 01 00 00                              call   DWORD PTR [eax+0x104]
  00420b23: 2b c3                                          sub    eax,ebx
  00420b25: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  00420b28: 53                                             push   ebx
  00420b29: 8b cf                                          mov    ecx,edi
  00420b2b: e8 70 b9 02 00                                 call   0x44c4a0
  00420b30: 8b cf                                          mov    ecx,edi
  00420b32: e8 b9 b8 02 00                                 call   0x44c3f0
  00420b37: 85 c0                                          test   eax,eax
  00420b39: bb 02 00 00 00                                 mov    ebx,0x2
  00420b3e: 0f 85 d0 00 00 00                              jne    0x420c14
  00420b44: 8b 17                                          mov    edx,DWORD PTR [edi]
  00420b46: 8b cf                                          mov    ecx,edi
  00420b48: ff 92 c4 01 00 00                              call   DWORD PTR [edx+0x1c4]
  00420b4e: 8b 86 9c 01 00 00                              mov    eax,DWORD PTR [esi+0x19c]
  00420b54: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00420b57: 8b 50 28                                       mov    edx,DWORD PTR [eax+0x28]
  00420b5a: 89 48 2c                                       mov    DWORD PTR [eax+0x2c],ecx
  00420b5d: ff 48 38                                       dec    DWORD PTR [eax+0x38]
  00420b60: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00420b63: 3b ca                                          cmp    ecx,edx
  00420b65: 74 3c                                          je     0x420ba3
  00420b67: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  00420b6a: 74 33                                          je     0x420b9f
  00420b6c: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00420b6e: 8b 49 04                                       mov    ecx,DWORD PTR [ecx+0x4]
  00420b71: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  00420b74: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00420b77: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  00420b7a: 8b 09                                          mov    ecx,DWORD PTR [ecx]
  00420b7c: 89 0a                                          mov    DWORD PTR [edx],ecx
  00420b7e: 8b 48 40                                       mov    ecx,DWORD PTR [eax+0x40]
  00420b81: 83 f9 01                                       cmp    ecx,0x1
  00420b84: 75 0b                                          jne    0x420b91
  00420b86: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  00420b89: 8b 4a 04                                       mov    ecx,DWORD PTR [edx+0x4]
  00420b8c: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00420b8f: eb 77                                          jmp    0x420c08
  00420b91: 3b cb                                          cmp    ecx,ebx
  00420b93: 75 73                                          jne    0x420c08
  00420b95: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  00420b98: 8b 0a                                          mov    ecx,DWORD PTR [edx]
  00420b9a: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00420b9d: eb 69                                          jmp    0x420c08
  00420b9f: 3b ca                                          cmp    ecx,edx
  00420ba1: 75 2b                                          jne    0x420bce
  00420ba3: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  00420ba6: 74 2b                                          je     0x420bd3
  00420ba8: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  00420bab: c7 02 00 00 00 00                              mov    DWORD PTR [edx],0x0
  00420bb1: 8b 48 20                                       mov    ecx,DWORD PTR [eax+0x20]
  00420bb4: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  00420bb7: 89 50 28                                       mov    DWORD PTR [eax+0x28],edx
  00420bba: 8b 51 04                                       mov    edx,DWORD PTR [ecx+0x4]
  00420bbd: 39 58 40                                       cmp    DWORD PTR [eax+0x40],ebx
  00420bc0: 89 50 20                                       mov    DWORD PTR [eax+0x20],edx
  00420bc3: 75 43                                          jne    0x420c08
  00420bc5: c7 40 40 00 00 00 00                           mov    DWORD PTR [eax+0x40],0x0
  00420bcc: eb 3a                                          jmp    0x420c08
  00420bce: 3b 48 24                                       cmp    ecx,DWORD PTR [eax+0x24]
  00420bd1: 75 27                                          jne    0x420bfa
  00420bd3: 3b ca                                          cmp    ecx,edx
  00420bd5: 74 23                                          je     0x420bfa
  00420bd7: 8b 09                                          mov    ecx,DWORD PTR [ecx]
  00420bd9: c7 41 04 00 00 00 00                           mov    DWORD PTR [ecx+0x4],0x0
  00420be0: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  00420be3: 8b 0a                                          mov    ecx,DWORD PTR [edx]
  00420be5: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00420be8: 89 48 24                                       mov    DWORD PTR [eax+0x24],ecx
  00420beb: 83 78 40 01                                    cmp    DWORD PTR [eax+0x40],0x1
  00420bef: 75 17                                          jne    0x420c08
  00420bf1: c7 40 40 00 00 00 00                           mov    DWORD PTR [eax+0x40],0x0
  00420bf8: eb 0e                                          jmp    0x420c08
  00420bfa: 33 c9                                          xor    ecx,ecx
  00420bfc: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00420bff: 89 48 24                                       mov    DWORD PTR [eax+0x24],ecx
  00420c02: 89 48 28                                       mov    DWORD PTR [eax+0x28],ecx
  00420c05: 89 48 40                                       mov    DWORD PTR [eax+0x40],ecx
  00420c08: 8b 40 2c                                       mov    eax,DWORD PTR [eax+0x2c]
  00420c0b: 50                                             push   eax
  00420c0c: e8 4f 14 02 00                                 call   0x442060
  00420c11: 83 c4 04                                       add    esp,0x4
  00420c14: 8a 45 13                                       mov    al,BYTE PTR [ebp+0x13]
  00420c17: 84 c0                                          test   al,al
  00420c19: 74 10                                          je     0x420c2b
  00420c1b: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00420c1e: 8b 16                                          mov    edx,DWORD PTR [esi]
  00420c20: 6a 01                                          push   0x1
  00420c22: 50                                             push   eax
  00420c23: 8b ce                                          mov    ecx,esi
  00420c25: ff 92 08 01 00 00                              call   DWORD PTR [edx+0x108]
  00420c2b: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420c2e: e8 bd 51 06 00                                 call   0x485df0
  00420c33: 6a 12                                          push   0x12
  00420c35: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420c38: 88 5d fc                                       mov    BYTE PTR [ebp-0x4],bl
  00420c3b: e8 10 55 06 00                                 call   0x486150
  00420c40: 6a 00                                          push   0x0
  00420c42: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420c45: e8 66 55 06 00                                 call   0x4861b0
  00420c4a: 8b ce                                          mov    ecx,esi
  00420c4c: e8 af aa 06 00                                 call   0x48b700
  00420c51: 50                                             push   eax
  00420c52: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420c55: e8 96 55 06 00                                 call   0x4861f0
  00420c5a: 8b 16                                          mov    edx,DWORD PTR [esi]
  00420c5c: 6a 00                                          push   0x0
  00420c5e: 8d 45 d4                                       lea    eax,[ebp-0x2c]
  00420c61: 50                                             push   eax
  00420c62: 8b ce                                          mov    ecx,esi
  00420c64: ff 92 6c 01 00 00                              call   DWORD PTR [edx+0x16c]
  00420c6a: 8b 16                                          mov    edx,DWORD PTR [esi]
  00420c6c: 8d 45 d4                                       lea    eax,[ebp-0x2c]
  00420c6f: 50                                             push   eax
  00420c70: 8b ce                                          mov    ecx,esi
  00420c72: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  00420c78: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420c7b: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  00420c7f: e8 fc 51 06 00                                 call   0x485e80
  00420c84: 8b 5d f0                                       mov    ebx,DWORD PTR [ebp-0x10]
  00420c87: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00420c89: 8b cb                                          mov    ecx,ebx
  00420c8b: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00420c92: ff 52 08                                       call   DWORD PTR [edx+0x8]
  00420c95: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00420c98: 5f                                             pop    edi
  00420c99: 5e                                             pop    esi
  00420c9a: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00420ca1: 5b                                             pop    ebx
  00420ca2: 8b e5                                          mov    esp,ebp
  00420ca4: 5d                                             pop    ebp
  00420ca5: c2 0c 00                                       ret    0xc
  00420ca8: 8b 06                                          mov    eax,DWORD PTR [esi]
  00420caa: 8b 1f                                          mov    ebx,DWORD PTR [edi]
  00420cac: 8b ce                                          mov    ecx,esi
  00420cae: c6 85 d0 f7 ff ff 00                           mov    BYTE PTR [ebp-0x830],0x0
  00420cb5: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  00420cbb: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  00420cbe: 50                                             push   eax
  00420cbf: 51                                             push   ecx
  00420cc0: 8b cf                                          mov    ecx,edi
  00420cc2: ff 53 48                                       call   DWORD PTR [ebx+0x48]
  00420cc5: 8b 10                                          mov    edx,DWORD PTR [eax]
  00420cc7: 8b 06                                          mov    eax,DWORD PTR [esi]
  00420cc9: 52                                             push   edx
  00420cca: 68 58 13 51 00                                 push   0x511358
  00420ccf: 8b ce                                          mov    ecx,esi
  00420cd1: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  00420cd5: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  00420cdb: 50                                             push   eax
  00420cdc: 68 5c 1c 00 00                                 push   0x1c5c
  00420ce1: e8 0a cd 01 00                                 call   0x43d9f0
  00420ce6: 83 c4 0c                                       add    esp,0xc
  00420ce9: 50                                             push   eax
  00420cea: 8d 8d d0 f7 ff ff                              lea    ecx,[ebp-0x830]
  00420cf0: 51                                             push   ecx
  00420cf1: e8 4a 2c fe ff                                 call   0x403940
  00420cf6: 83 c4 08                                       add    esp,0x8
  00420cf9: 8b cc                                          mov    ecx,esp
  00420cfb: 89 65 0c                                       mov    DWORD PTR [ebp+0xc],esp
  00420cfe: 50                                             push   eax
  00420cff: e8 60 0d 0b 00                                 call   0x4d1a64
  00420d04: 8b ce                                          mov    ecx,esi
  00420d06: e8 85 21 00 00                                 call   0x422e90
  00420d0b: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  00420d0e: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  00420d12: e8 29 0d 0b 00                                 call   0x4d1a40
  00420d17: e9 68 ff ff ff                                 jmp    0x420c84

; [00420D20] Character::?AddToBackpack@Character ; instruction=198 ; plage_limite=00420F60 ; issues=0
  00420d20: 55                                             push   ebp
  00420d21: 8b ec                                          mov    ebp,esp
  00420d23: 6a ff                                          push   0xffffffff
  00420d25: 68 18 43 4d 00                                 push   0x4d4318
  00420d2a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  00420d30: 50                                             push   eax
  00420d31: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  00420d38: 83 ec 20                                       sub    esp,0x20
  00420d3b: 53                                             push   ebx
  00420d3c: 56                                             push   esi
  00420d3d: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  00420d40: 8b 06                                          mov    eax,DWORD PTR [esi]
  00420d42: 57                                             push   edi
  00420d43: 8b f9                                          mov    edi,ecx
  00420d45: 33 db                                          xor    ebx,ebx
  00420d47: 8d 4d ec                                       lea    ecx,[ebp-0x14]
  00420d4a: 51                                             push   ecx
  00420d4b: 53                                             push   ebx
  00420d4c: 53                                             push   ebx
  00420d4d: 53                                             push   ebx
  00420d4e: 53                                             push   ebx
  00420d4f: 6a 14                                          push   0x14
  00420d51: 8b ce                                          mov    ecx,esi
  00420d53: 89 5d ec                                       mov    DWORD PTR [ebp-0x14],ebx
  00420d56: ff 50 24                                       call   DWORD PTR [eax+0x24]
  00420d59: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  00420d5c: 3b c3                                          cmp    eax,ebx
  00420d5e: 74 42                                          je     0x420da2
  00420d60: 66 83 78 0a 0c                                 cmp    WORD PTR [eax+0xa],0xc
  00420d65: 75 3b                                          jne    0x420da2
  00420d67: 8d 97 a0 01 00 00                              lea    edx,[edi+0x1a0]
  00420d6d: 33 f6                                          xor    esi,esi
  00420d6f: 89 55 f0                                       mov    DWORD PTR [ebp-0x10],edx
  00420d72: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  00420d75: 8b 08                                          mov    ecx,DWORD PTR [eax]
  00420d77: 3b cb                                          cmp    ecx,ebx
  00420d79: 74 15                                          je     0x420d90
  00420d7b: 8b 11                                          mov    edx,DWORD PTR [ecx]
  00420d7d: ff 52 28                                       call   DWORD PTR [edx+0x28]
  00420d80: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  00420d83: 8b d8                                          mov    ebx,eax
  00420d85: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00420d87: ff 50 28                                       call   DWORD PTR [eax+0x28]
  00420d8a: 3b d8                                          cmp    ebx,eax
  00420d8c: 74 56                                          je     0x420de4
  00420d8e: 33 db                                          xor    ebx,ebx
  00420d90: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  00420d93: 46                                             inc    esi
  00420d94: 83 c1 04                                       add    ecx,0x4
  00420d97: 83 fe 10                                       cmp    esi,0x10
  00420d9a: 89 4d f0                                       mov    DWORD PTR [ebp-0x10],ecx
  00420d9d: 7c d3                                          jl     0x420d72
  00420d9f: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  00420da2: 8b 8f 9c 01 00 00                              mov    ecx,DWORD PTR [edi+0x19c]
  00420da8: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00420daa: ff 50 04                                       call   DWORD PTR [eax+0x4]
  00420dad: 8b ce                                          mov    ecx,esi
  00420daf: e8 4c b7 02 00                                 call   0x44c500
  00420db4: 84 c0                                          test   al,al
  00420db6: 0f 85 99 00 00 00                              jne    0x420e55
  00420dbc: 8b 87 9c 01 00 00                              mov    eax,DWORD PTR [edi+0x19c]
  00420dc2: 8b 48 24                                       mov    ecx,DWORD PTR [eax+0x24]
  00420dc5: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00420dc8: 89 58 40                                       mov    DWORD PTR [eax+0x40],ebx
  00420dcb: c6 40 34 08                                    mov    BYTE PTR [eax+0x34],0x8
  00420dcf: 8b 87 9c 01 00 00                              mov    eax,DWORD PTR [edi+0x19c]
  00420dd5: 39 58 40                                       cmp    DWORD PTR [eax+0x40],ebx
  00420dd8: 74 3e                                          je     0x420e18
  00420dda: 8b 50 20                                       mov    edx,DWORD PTR [eax+0x20]
  00420ddd: 8b 0a                                          mov    ecx,DWORD PTR [edx]
  00420ddf: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  00420de2: eb 3b                                          jmp    0x420e1f
  00420de4: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  00420de7: 8b cb                                          mov    ecx,ebx
  00420de9: e8 02 b6 02 00                                 call   0x44c3f0
  00420dee: 8b 8c b7 a0 01 00 00                           mov    ecx,DWORD PTR [edi+esi*4+0x1a0]
  00420df5: 50                                             push   eax
  00420df6: e8 65 b6 02 00                                 call   0x44c460
  00420dfb: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00420dfd: 8b cb                                          mov    ecx,ebx
  00420dff: ff 92 c4 01 00 00                              call   DWORD PTR [edx+0x1c4]
  00420e05: 5f                                             pop    edi
  00420e06: 5e                                             pop    esi
  00420e07: 5b                                             pop    ebx
  00420e08: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00420e0b: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00420e12: 8b e5                                          mov    esp,ebp
  00420e14: 5d                                             pop    ebp
  00420e15: c2 04 00                                       ret    0x4
  00420e18: c7 40 40 01 00 00 00                           mov    DWORD PTR [eax+0x40],0x1
  00420e1f: 39 58 20                                       cmp    DWORD PTR [eax+0x20],ebx
  00420e22: 74 25                                          je     0x420e49
  00420e24: 8b 97 9c 01 00 00                              mov    edx,DWORD PTR [edi+0x19c]
  00420e2a: 8b 42 20                                       mov    eax,DWORD PTR [edx+0x20]
  00420e2d: 8b 70 08                                       mov    esi,DWORD PTR [eax+0x8]
  00420e30: 8b 16                                          mov    edx,DWORD PTR [esi]
  00420e32: 8b ce                                          mov    ecx,esi
  00420e34: ff 52 28                                       call   DWORD PTR [edx+0x28]
  00420e37: 8b 4d 08                                       mov    ecx,DWORD PTR [ebp+0x8]
  00420e3a: 8b d8                                          mov    ebx,eax
  00420e3c: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00420e3e: ff 50 28                                       call   DWORD PTR [eax+0x28]
  00420e41: 3b d8                                          cmp    ebx,eax
  00420e43: 74 46                                          je     0x420e8b
  00420e45: 33 db                                          xor    ebx,ebx
  00420e47: eb 86                                          jmp    0x420dcf
  00420e49: 39 58 40                                       cmp    DWORD PTR [eax+0x40],ebx
  00420e4c: 74 04                                          je     0x420e52
  00420e4e: c6 40 34 07                                    mov    BYTE PTR [eax+0x34],0x7
  00420e52: 89 58 40                                       mov    DWORD PTR [eax+0x40],ebx
  00420e55: 8b b7 9c 01 00 00                              mov    esi,DWORD PTR [edi+0x19c]
  00420e5b: 8b 46 28                                       mov    eax,DWORD PTR [esi+0x28]
  00420e5e: 8b 56 38                                       mov    edx,DWORD PTR [esi+0x38]
  00420e61: 42                                             inc    edx
  00420e62: 3b c3                                          cmp    eax,ebx
  00420e64: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00420e67: 89 5e 40                                       mov    DWORD PTR [esi+0x40],ebx
  00420e6a: c6 46 34 08                                    mov    BYTE PTR [esi+0x34],0x8
  00420e6e: 89 46 2c                                       mov    DWORD PTR [esi+0x2c],eax
  00420e71: 89 56 38                                       mov    DWORD PTR [esi+0x38],edx
  00420e74: 6a 0c                                          push   0xc
  00420e76: 75 49                                          jne    0x420ec1
  00420e78: e8 73 11 02 00                                 call   0x441ff0
  00420e7d: 83 c4 04                                       add    esp,0x4
  00420e80: 3b c3                                          cmp    eax,ebx
  00420e82: 74 28                                          je     0x420eac
  00420e84: 89 18                                          mov    DWORD PTR [eax],ebx
  00420e86: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00420e89: eb 23                                          jmp    0x420eae
  00420e8b: 8b 5d 08                                       mov    ebx,DWORD PTR [ebp+0x8]
  00420e8e: 8b cb                                          mov    ecx,ebx
  00420e90: e8 5b b5 02 00                                 call   0x44c3f0
  00420e95: 50                                             push   eax
  00420e96: 8b ce                                          mov    ecx,esi
  00420e98: e8 c3 b5 02 00                                 call   0x44c460
  00420e9d: 8b 13                                          mov    edx,DWORD PTR [ebx]
  00420e9f: 8b cb                                          mov    ecx,ebx
  00420ea1: ff 92 c4 01 00 00                              call   DWORD PTR [edx+0x1c4]
  00420ea7: e9 93 00 00 00                                 jmp    0x420f3f
  00420eac: 33 c0                                          xor    eax,eax
  00420eae: 89 46 28                                       mov    DWORD PTR [esi+0x28],eax
  00420eb1: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00420eb4: 89 46 24                                       mov    DWORD PTR [esi+0x24],eax
  00420eb7: 89 18                                          mov    DWORD PTR [eax],ebx
  00420eb9: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00420ebc: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00420ebf: eb 2b                                          jmp    0x420eec
  00420ec1: e8 2a 11 02 00                                 call   0x441ff0
  00420ec6: 83 c4 04                                       add    esp,0x4
  00420ec9: 3b c3                                          cmp    eax,ebx
  00420ecb: 74 07                                          je     0x420ed4
  00420ecd: 89 18                                          mov    DWORD PTR [eax],ebx
  00420ecf: 89 58 04                                       mov    DWORD PTR [eax+0x4],ebx
  00420ed2: eb 02                                          jmp    0x420ed6
  00420ed4: 33 c0                                          xor    eax,eax
  00420ed6: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00420ed9: 89 01                                          mov    DWORD PTR [ecx],eax
  00420edb: 8b 56 2c                                       mov    edx,DWORD PTR [esi+0x2c]
  00420ede: 89 46 28                                       mov    DWORD PTR [esi+0x28],eax
  00420ee1: 89 46 20                                       mov    DWORD PTR [esi+0x20],eax
  00420ee4: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  00420ee7: 8b 46 20                                       mov    eax,DWORD PTR [esi+0x20]
  00420eea: 89 18                                          mov    DWORD PTR [eax],ebx
  00420eec: 8b 4e 20                                       mov    ecx,DWORD PTR [esi+0x20]
  00420eef: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  00420ef2: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  00420ef5: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420ef8: e8 f3 4e 06 00                                 call   0x485df0
  00420efd: 6a 5c                                          push   0x5c
  00420eff: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420f02: 89 5d fc                                       mov    DWORD PTR [ebp-0x4],ebx
  00420f05: e8 46 52 06 00                                 call   0x486150
  00420f0a: 8b 07                                          mov    eax,DWORD PTR [edi]
  00420f0c: 8b cf                                          mov    ecx,edi
  00420f0e: ff 90 98 01 00 00                              call   DWORD PTR [eax+0x198]
  00420f14: 50                                             push   eax
  00420f15: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420f18: e8 d3 52 06 00                                 call   0x4861f0
  00420f1d: 8b 17                                          mov    edx,DWORD PTR [edi]
  00420f1f: 8b cf                                          mov    ecx,edi
  00420f21: ff 92 9c 01 00 00                              call   DWORD PTR [edx+0x19c]
  00420f27: 50                                             push   eax
  00420f28: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420f2b: e8 c0 52 06 00                                 call   0x4861f0
  00420f30: 8d 4d d4                                       lea    ecx,[ebp-0x2c]
  00420f33: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  00420f3a: e8 41 4f 06 00                                 call   0x485e80
  00420f3f: 8b 8f 9c 01 00 00                              mov    ecx,DWORD PTR [edi+0x19c]
  00420f45: 8b 01                                          mov    eax,DWORD PTR [ecx]
  00420f47: ff 50 08                                       call   DWORD PTR [eax+0x8]
  00420f4a: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  00420f4d: 5f                                             pop    edi
  00420f4e: 5e                                             pop    esi
  00420f4f: 5b                                             pop    ebx
  00420f50: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  00420f57: 8b e5                                          mov    esp,ebp
  00420f59: 5d                                             pop    ebp
  00420f5a: c2 04 00                                       ret    0x4

; [0041D250] Character::?packet_stats@Character ; instruction=76 ; plage_limite=0041D330 ; issues=0
  0041d250: 55                                             push   ebp
  0041d251: 8b ec                                          mov    ebp,esp
  0041d253: 56                                             push   esi
  0041d254: 8b f1                                          mov    esi,ecx
  0041d256: 8b 86 28 01 00 00                              mov    eax,DWORD PTR [esi+0x128]
  0041d25c: 85 c0                                          test   eax,eax
  0041d25e: 57                                             push   edi
  0041d25f: 74 15                                          je     0x41d276
  0041d261: 8a 4d 0c                                       mov    cl,BYTE PTR [ebp+0xc]
  0041d264: 84 c9                                          test   cl,cl
  0041d266: 75 0e                                          jne    0x41d276
  0041d268: 8b f0                                          mov    esi,eax
  0041d26a: 8b 86 28 01 00 00                              mov    eax,DWORD PTR [esi+0x128]
  0041d270: 85 c0                                          test   eax,eax
  0041d272: b1 01                                          mov    cl,0x1
  0041d274: 75 ee                                          jne    0x41d264
  0041d276: 8b ce                                          mov    ecx,esi
  0041d278: e8 33 0f 07 00                                 call   0x48e1b0
  0041d27d: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  0041d280: 8b cf                                          mov    ecx,edi
  0041d282: 50                                             push   eax
  0041d283: e8 28 8f 06 00                                 call   0x4861b0
  0041d288: 8b ce                                          mov    ecx,esi
  0041d28a: e8 01 0f 07 00                                 call   0x48e190
  0041d28f: 8b cf                                          mov    ecx,edi
  0041d291: 50                                             push   eax
  0041d292: e8 19 8f 06 00                                 call   0x4861b0
  0041d297: 8b ce                                          mov    ecx,esi
  0041d299: e8 d2 0e 07 00                                 call   0x48e170
  0041d29e: 8b cf                                          mov    ecx,edi
  0041d2a0: 50                                             push   eax
  0041d2a1: e8 0a 8f 06 00                                 call   0x4861b0
  0041d2a6: 6a 00                                          push   0x0
  0041d2a8: 8b cf                                          mov    ecx,edi
  0041d2aa: e8 01 8f 06 00                                 call   0x4861b0
  0041d2af: 8b ce                                          mov    ecx,esi
  0041d2b1: e8 9a 0e 07 00                                 call   0x48e150
  0041d2b6: 8b cf                                          mov    ecx,edi
  0041d2b8: 50                                             push   eax
  0041d2b9: e8 f2 8e 06 00                                 call   0x4861b0
  0041d2be: 6a 00                                          push   0x0
  0041d2c0: 8b cf                                          mov    ecx,edi
  0041d2c2: e8 e9 8e 06 00                                 call   0x4861b0
  0041d2c7: 8b ce                                          mov    ecx,esi
  0041d2c9: e8 02 0f 07 00                                 call   0x48e1d0
  0041d2ce: 8b cf                                          mov    ecx,edi
  0041d2d0: 50                                             push   eax
  0041d2d1: e8 da 8e 06 00                                 call   0x4861b0
  0041d2d6: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041d2d8: 8b ce                                          mov    ecx,esi
  0041d2da: ff 90 cc 00 00 00                              call   DWORD PTR [eax+0xcc]
  0041d2e0: 50                                             push   eax
  0041d2e1: 8b cf                                          mov    ecx,edi
  0041d2e3: e8 08 8f 06 00                                 call   0x4861f0
  0041d2e8: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041d2ea: 8b ce                                          mov    ecx,esi
  0041d2ec: ff 92 d8 00 00 00                              call   DWORD PTR [edx+0xd8]
  0041d2f2: 50                                             push   eax
  0041d2f3: 8b cf                                          mov    ecx,edi
  0041d2f5: e8 f6 8e 06 00                                 call   0x4861f0
  0041d2fa: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041d2fc: 8b ce                                          mov    ecx,esi
  0041d2fe: ff 90 e0 00 00 00                              call   DWORD PTR [eax+0xe0]
  0041d304: 8b cf                                          mov    ecx,edi
  0041d306: 50                                             push   eax
  0041d307: e8 44 8e 06 00                                 call   0x486150
  0041d30c: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041d30e: 8b ce                                          mov    ecx,esi
  0041d310: ff 92 ec 00 00 00                              call   DWORD PTR [edx+0xec]
  0041d316: 8b cf                                          mov    ecx,edi
  0041d318: 50                                             push   eax
  0041d319: e8 32 8e 06 00                                 call   0x486150
  0041d31e: 5f                                             pop    edi
  0041d31f: 5e                                             pop    esi
  0041d320: 5d                                             pop    ebp
  0041d321: c2 08 00                                       ret    0x8

; [0041D6B0] Character::?SetHP@Character ; instruction=58 ; plage_limite=0041D780 ; issues=0
  0041d6b0: 55                                             push   ebp
  0041d6b1: 8b ec                                          mov    ebp,esp
  0041d6b3: 6a ff                                          push   0xffffffff
  0041d6b5: 68 f8 40 4d 00                                 push   0x4d40f8
  0041d6ba: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0041d6c0: 50                                             push   eax
  0041d6c1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0041d6c8: 83 ec 18                                       sub    esp,0x18
  0041d6cb: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0041d6ce: 56                                             push   esi
  0041d6cf: 8b f1                                          mov    esi,ecx
  0041d6d1: 39 86 3c 01 00 00                              cmp    DWORD PTR [esi+0x13c],eax
  0041d6d7: 0f 84 83 00 00 00                              je     0x41d760
  0041d6dd: 89 86 3c 01 00 00                              mov    DWORD PTR [esi+0x13c],eax
  0041d6e3: 8a 45 0c                                       mov    al,BYTE PTR [ebp+0xc]
  0041d6e6: 84 c0                                          test   al,al
  0041d6e8: 74 76                                          je     0x41d760
  0041d6ea: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d6ed: e8 fe 86 06 00                                 call   0x485df0
  0041d6f2: 6a 21                                          push   0x21
  0041d6f4: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d6f7: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0041d6fe: e8 4d 8a 06 00                                 call   0x486150
  0041d703: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041d705: 8b ce                                          mov    ecx,esi
  0041d707: ff 90 d8 00 00 00                              call   DWORD PTR [eax+0xd8]
  0041d70d: 50                                             push   eax
  0041d70e: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d711: e8 da 8a 06 00                                 call   0x4861f0
  0041d716: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041d718: 8b ce                                          mov    ecx,esi
  0041d71a: ff 92 cc 00 00 00                              call   DWORD PTR [edx+0xcc]
  0041d720: 50                                             push   eax
  0041d721: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d724: e8 c7 8a 06 00                                 call   0x4861f0
  0041d729: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041d72b: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d72e: 51                                             push   ecx
  0041d72f: 8b ce                                          mov    ecx,esi
  0041d731: ff 90 4c 01 00 00                              call   DWORD PTR [eax+0x14c]
  0041d737: 8b ce                                          mov    ecx,esi
  0041d739: e8 82 25 00 00                                 call   0x41fcc0
  0041d73e: 85 c0                                          test   eax,eax
  0041d740: 74 0f                                          je     0x41d751
  0041d742: 56                                             push   esi
  0041d743: 8b ce                                          mov    ecx,esi
  0041d745: e8 76 25 00 00                                 call   0x41fcc0
  0041d74a: 8b c8                                          mov    ecx,eax
  0041d74c: e8 2f d9 01 00                                 call   0x43b080
  0041d751: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d754: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0041d75b: e8 20 87 06 00                                 call   0x485e80
  0041d760: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0041d763: 5e                                             pop    esi
  0041d764: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0041d76b: 8b e5                                          mov    esp,ebp
  0041d76d: 5d                                             pop    ebp
  0041d76e: c2 08 00                                       ret    0x8

; [0041D7C0] Character::?SetMana@Character ; instruction=40 ; plage_limite=0041D850 ; issues=0
  0041d7c0: 55                                             push   ebp
  0041d7c1: 8b ec                                          mov    ebp,esp
  0041d7c3: 6a ff                                          push   0xffffffff
  0041d7c5: 68 18 41 4d 00                                 push   0x4d4118
  0041d7ca: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0041d7d0: 50                                             push   eax
  0041d7d1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0041d7d8: 83 ec 18                                       sub    esp,0x18
  0041d7db: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  0041d7de: 85 c0                                          test   eax,eax
  0041d7e0: 56                                             push   esi
  0041d7e1: 57                                             push   edi
  0041d7e2: 8b 7d 08                                       mov    edi,DWORD PTR [ebp+0x8]
  0041d7e5: 8b f1                                          mov    esi,ecx
  0041d7e7: 66 89 be 42 01 00 00                           mov    WORD PTR [esi+0x142],di
  0041d7ee: 74 3f                                          je     0x41d82f
  0041d7f0: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d7f3: e8 f8 85 06 00                                 call   0x485df0
  0041d7f8: 6a 43                                          push   0x43
  0041d7fa: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d7fd: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0041d804: e8 47 89 06 00                                 call   0x486150
  0041d809: 57                                             push   edi
  0041d80a: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d80d: e8 3e 89 06 00                                 call   0x486150
  0041d812: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041d814: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d817: 51                                             push   ecx
  0041d818: 8b ce                                          mov    ecx,esi
  0041d81a: ff 90 4c 01 00 00                              call   DWORD PTR [eax+0x14c]
  0041d820: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d823: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0041d82a: e8 51 86 06 00                                 call   0x485e80
  0041d82f: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0041d832: 5f                                             pop    edi
  0041d833: 5e                                             pop    esi
  0041d834: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0041d83b: 8b e5                                          mov    esp,ebp
  0041d83d: 5d                                             pop    ebp
  0041d83e: c2 08 00                                       ret    0x8

; [0041D880] Character::?SetGold@Character ; instruction=92 ; plage_limite=0041D9B0 ; issues=0
  0041d880: 55                                             push   ebp
  0041d881: 8b ec                                          mov    ebp,esp
  0041d883: 6a ff                                          push   0xffffffff
  0041d885: 68 40 41 4d 00                                 push   0x4d4140
  0041d88a: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0041d890: 50                                             push   eax
  0041d891: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0041d898: 81 ec 1c 04 00 00                              sub    esp,0x41c
  0041d89e: a1 58 14 51 00                                 mov    eax,ds:0x511458
  0041d8a3: 53                                             push   ebx
  0041d8a4: 56                                             push   esi
  0041d8a5: 8b f1                                          mov    esi,ecx
  0041d8a7: b9 58 14 51 00                                 mov    ecx,0x511458
  0041d8ac: 57                                             push   edi
  0041d8ad: 89 4d d8                                       mov    DWORD PTR [ebp-0x28],ecx
  0041d8b0: ff 50 04                                       call   DWORD PTR [eax+0x4]
  0041d8b3: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0041d8b6: 8b 9e 98 01 00 00                              mov    ebx,DWORD PTR [esi+0x198]
  0041d8bc: 33 c9                                          xor    ecx,ecx
  0041d8be: 85 c0                                          test   eax,eax
  0041d8c0: 0f 9c c1                                       setl   cl
  0041d8c3: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0041d8ca: 49                                             dec    ecx
  0041d8cb: 23 c8                                          and    ecx,eax
  0041d8cd: 8b f9                                          mov    edi,ecx
  0041d8cf: 8b ce                                          mov    ecx,esi
  0041d8d1: 89 be 98 01 00 00                              mov    DWORD PTR [esi+0x198],edi
  0041d8d7: e8 84 36 00 00                                 call   0x420f60
  0041d8dc: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  0041d8df: 85 c0                                          test   eax,eax
  0041d8e1: 74 53                                          je     0x41d936
  0041d8e3: 3b fb                                          cmp    edi,ebx
  0041d8e5: 76 4f                                          jbe    0x41d936
  0041d8e7: 8b 96 98 01 00 00                              mov    edx,DWORD PTR [esi+0x198]
  0041d8ed: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041d8ef: 2b d3                                          sub    edx,ebx
  0041d8f1: 52                                             push   edx
  0041d8f2: 68 58 13 51 00                                 push   0x511358
  0041d8f7: 8b ce                                          mov    ecx,esi
  0041d8f9: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0041d8ff: 50                                             push   eax
  0041d900: 68 54 1d 00 00                                 push   0x1d54
  0041d905: e8 e6 00 02 00                                 call   0x43d9f0
  0041d90a: 83 c4 0c                                       add    esp,0xc
  0041d90d: 50                                             push   eax
  0041d90e: 8d 8d d8 fb ff ff                              lea    ecx,[ebp-0x428]
  0041d914: 51                                             push   ecx
  0041d915: ff 15 44 e3 4d 00                              call   DWORD PTR ds:0x4de344
  0041d91b: 83 c4 08                                       add    esp,0x8
  0041d91e: 8d 95 d8 fb ff ff                              lea    edx,[ebp-0x428]
  0041d924: 8b cc                                          mov    ecx,esp
  0041d926: 89 65 08                                       mov    DWORD PTR [ebp+0x8],esp
  0041d929: 52                                             push   edx
  0041d92a: e8 35 41 0b 00                                 call   0x4d1a64
  0041d92f: 8b ce                                          mov    ecx,esi
  0041d931: e8 5a 55 00 00                                 call   0x422e90
  0041d936: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d939: e8 b2 84 06 00                                 call   0x485df0
  0041d93e: 6a 35                                          push   0x35
  0041d940: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d943: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0041d947: e8 04 88 06 00                                 call   0x486150
  0041d94c: 8b 8e 28 01 00 00                              mov    ecx,DWORD PTR [esi+0x128]
  0041d952: 85 c9                                          test   ecx,ecx
  0041d954: 74 0b                                          je     0x41d961
  0041d956: 8b 01                                          mov    eax,DWORD PTR [ecx]
  0041d958: ff 90 04 01 00 00                              call   DWORD PTR [eax+0x104]
  0041d95e: 50                                             push   eax
  0041d95f: eb 01                                          jmp    0x41d962
  0041d961: 57                                             push   edi
  0041d962: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d965: e8 86 88 06 00                                 call   0x4861f0
  0041d96a: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041d96c: 8d 45 dc                                       lea    eax,[ebp-0x24]
  0041d96f: 50                                             push   eax
  0041d970: 8b ce                                          mov    ecx,esi
  0041d972: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  0041d978: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041d97b: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0041d97f: e8 fc 84 06 00                                 call   0x485e80
  0041d984: 8b 15 58 14 51 00                              mov    edx,DWORD PTR ds:0x511458
  0041d98a: b9 58 14 51 00                                 mov    ecx,0x511458
  0041d98f: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0041d996: ff 52 08                                       call   DWORD PTR [edx+0x8]
  0041d999: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0041d99c: 5f                                             pop    edi
  0041d99d: 5e                                             pop    esi
  0041d99e: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0041d9a5: 5b                                             pop    ebx
  0041d9a6: 8b e5                                          mov    esp,ebp
  0041d9a8: 5d                                             pop    ebp
  0041d9a9: c2 08 00                                       ret    0x8

; [004B21A0] WorldMap::?FindValidSpot@WorldMap ; instruction=185 ; plage_limite=004B2380 ; issues=0
  004b21a0: 55                                             push   ebp
  004b21a1: 8b ec                                          mov    ebp,esp
  004b21a3: 83 ec 34                                       sub    esp,0x34
  004b21a6: 53                                             push   ebx
  004b21a7: 83 c8 ff                                       or     eax,0xffffffff
  004b21aa: 8b d9                                          mov    ebx,ecx
  004b21ac: 56                                             push   esi
  004b21ad: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  004b21b0: 89 45 dc                                       mov    DWORD PTR [ebp-0x24],eax
  004b21b3: 89 45 e0                                       mov    DWORD PTR [ebp-0x20],eax
  004b21b6: 8b 03                                          mov    eax,DWORD PTR [ebx]
  004b21b8: 57                                             push   edi
  004b21b9: 89 5d f8                                       mov    DWORD PTR [ebp-0x8],ebx
  004b21bc: 33 ff                                          xor    edi,edi
  004b21be: ff 50 04                                       call   DWORD PTR [eax+0x4]
  004b21c1: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  004b21c4: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  004b21c7: 8b 73 28                                       mov    esi,DWORD PTR [ebx+0x28]
  004b21ca: 25 ff ff 00 00                                 and    eax,0xffff
  004b21cf: 89 45 e8                                       mov    DWORD PTR [ebp-0x18],eax
  004b21d2: 8b 45 10                                       mov    eax,DWORD PTR [ebp+0x10]
  004b21d5: 8d 48 01                                       lea    ecx,[eax+0x1]
  004b21d8: 89 4d 18                                       mov    DWORD PTR [ebp+0x18],ecx
  004b21db: 8d 4a ff                                       lea    ecx,[edx-0x1]
  004b21de: c7 45 ec 01 00 00 00                           mov    DWORD PTR [ebp-0x14],0x1
  004b21e5: 83 c2 02                                       add    edx,0x2
  004b21e8: 89 45 f0                                       mov    DWORD PTR [ebp-0x10],eax
  004b21eb: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b21ee: 89 7d cc                                       mov    DWORD PTR [ebp-0x34],edi
  004b21f1: 89 7d d0                                       mov    DWORD PTR [ebp-0x30],edi
  004b21f4: 89 4d f4                                       mov    DWORD PTR [ebp-0xc],ecx
  004b21f7: 89 55 fc                                       mov    DWORD PTR [ebp-0x4],edx
  004b21fa: 3b 45 e8                                       cmp    eax,DWORD PTR [ebp-0x18]
  004b21fd: 0f 8d 51 01 00 00                              jge    0x4b2354
  004b2203: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  004b2206: 8d 44 02 01                                    lea    eax,[edx+eax*1+0x1]
  004b220a: 3b c8                                          cmp    ecx,eax
  004b220c: 8b d9                                          mov    ebx,ecx
  004b220e: 89 45 e4                                       mov    DWORD PTR [ebp-0x1c],eax
  004b2211: 7d 3c                                          jge    0x4b224f
  004b2213: 85 ff                                          test   edi,edi
  004b2215: 75 38                                          jne    0x4b224f
  004b2217: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b221a: 57                                             push   edi
  004b221b: 57                                             push   edi
  004b221c: 57                                             push   edi
  004b221d: 83 ec 0c                                       sub    esp,0xc
  004b2220: 8b c4                                          mov    eax,esp
  004b2222: 89 18                                          mov    DWORD PTR [eax],ebx
  004b2224: 89 48 04                                       mov    DWORD PTR [eax+0x4],ecx
  004b2227: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b222a: 89 70 08                                       mov    DWORD PTR [eax+0x8],esi
  004b222d: e8 1e d0 ff ff                                 call   0x4af250
  004b2232: 85 c0                                          test   eax,eax
  004b2234: 75 11                                          jne    0x4b2247
  004b2236: 8b 55 18                                       mov    edx,DWORD PTR [ebp+0x18]
  004b2239: 89 5d d8                                       mov    DWORD PTR [ebp-0x28],ebx
  004b223c: 89 55 dc                                       mov    DWORD PTR [ebp-0x24],edx
  004b223f: 89 75 e0                                       mov    DWORD PTR [ebp-0x20],esi
  004b2242: bf 01 00 00 00                                 mov    edi,0x1
  004b2247: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b224a: 43                                             inc    ebx
  004b224b: 3b d8                                          cmp    ebx,eax
  004b224d: 7c c4                                          jl     0x4b2213
  004b224f: 8b 45 f0                                       mov    eax,DWORD PTR [ebp-0x10]
  004b2252: 8b 5d f4                                       mov    ebx,DWORD PTR [ebp-0xc]
  004b2255: 48                                             dec    eax
  004b2256: 89 45 d0                                       mov    DWORD PTR [ebp-0x30],eax
  004b2259: 3b 5d e4                                       cmp    ebx,DWORD PTR [ebp-0x1c]
  004b225c: 7d 3c                                          jge    0x4b229a
  004b225e: 85 ff                                          test   edi,edi
  004b2260: 75 38                                          jne    0x4b229a
  004b2262: 8b 55 d0                                       mov    edx,DWORD PTR [ebp-0x30]
  004b2265: 57                                             push   edi
  004b2266: 57                                             push   edi
  004b2267: 57                                             push   edi
  004b2268: 83 ec 0c                                       sub    esp,0xc
  004b226b: 8b cc                                          mov    ecx,esp
  004b226d: 89 19                                          mov    DWORD PTR [ecx],ebx
  004b226f: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b2272: 89 71 08                                       mov    DWORD PTR [ecx+0x8],esi
  004b2275: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b2278: e8 d3 cf ff ff                                 call   0x4af250
  004b227d: 85 c0                                          test   eax,eax
  004b227f: 75 11                                          jne    0x4b2292
  004b2281: 8b 45 d0                                       mov    eax,DWORD PTR [ebp-0x30]
  004b2284: 89 5d d8                                       mov    DWORD PTR [ebp-0x28],ebx
  004b2287: 89 45 dc                                       mov    DWORD PTR [ebp-0x24],eax
  004b228a: 89 75 e0                                       mov    DWORD PTR [ebp-0x20],esi
  004b228d: bf 01 00 00 00                                 mov    edi,0x1
  004b2292: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b2295: 43                                             inc    ebx
  004b2296: 3b d8                                          cmp    ebx,eax
  004b2298: 7c c4                                          jl     0x4b225e
  004b229a: 8b 5d f0                                       mov    ebx,DWORD PTR [ebp-0x10]
  004b229d: 3b 5d 18                                       cmp    ebx,DWORD PTR [ebp+0x18]
  004b22a0: 7d 3c                                          jge    0x4b22de
  004b22a2: 85 ff                                          test   edi,edi
  004b22a4: 75 38                                          jne    0x4b22de
  004b22a6: 8b 55 f4                                       mov    edx,DWORD PTR [ebp-0xc]
  004b22a9: 57                                             push   edi
  004b22aa: 57                                             push   edi
  004b22ab: 57                                             push   edi
  004b22ac: 83 ec 0c                                       sub    esp,0xc
  004b22af: 8b cc                                          mov    ecx,esp
  004b22b1: 89 11                                          mov    DWORD PTR [ecx],edx
  004b22b3: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004b22b6: 89 71 08                                       mov    DWORD PTR [ecx+0x8],esi
  004b22b9: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b22bc: e8 8f cf ff ff                                 call   0x4af250
  004b22c1: 85 c0                                          test   eax,eax
  004b22c3: 75 11                                          jne    0x4b22d6
  004b22c5: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004b22c8: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  004b22cb: 89 5d dc                                       mov    DWORD PTR [ebp-0x24],ebx
  004b22ce: 89 75 e0                                       mov    DWORD PTR [ebp-0x20],esi
  004b22d1: bf 01 00 00 00                                 mov    edi,0x1
  004b22d6: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  004b22d9: 43                                             inc    ebx
  004b22da: 3b d8                                          cmp    ebx,eax
  004b22dc: 7c c4                                          jl     0x4b22a2
  004b22de: 8b 5d f0                                       mov    ebx,DWORD PTR [ebp-0x10]
  004b22e1: 3b 5d 18                                       cmp    ebx,DWORD PTR [ebp+0x18]
  004b22e4: 7d 40                                          jge    0x4b2326
  004b22e6: 85 ff                                          test   edi,edi
  004b22e8: 75 3c                                          jne    0x4b2326
  004b22ea: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  004b22ed: 57                                             push   edi
  004b22ee: 57                                             push   edi
  004b22ef: 57                                             push   edi
  004b22f0: 83 ec 0c                                       sub    esp,0xc
  004b22f3: 8b cc                                          mov    ecx,esp
  004b22f5: 8d 42 ff                                       lea    eax,[edx-0x1]
  004b22f8: 89 01                                          mov    DWORD PTR [ecx],eax
  004b22fa: 89 59 04                                       mov    DWORD PTR [ecx+0x4],ebx
  004b22fd: 89 71 08                                       mov    DWORD PTR [ecx+0x8],esi
  004b2300: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b2303: e8 48 cf ff ff                                 call   0x4af250
  004b2308: 85 c0                                          test   eax,eax
  004b230a: 75 12                                          jne    0x4b231e
  004b230c: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b230f: 48                                             dec    eax
  004b2310: 89 45 d8                                       mov    DWORD PTR [ebp-0x28],eax
  004b2313: 89 5d dc                                       mov    DWORD PTR [ebp-0x24],ebx
  004b2316: 89 75 e0                                       mov    DWORD PTR [ebp-0x20],esi
  004b2319: bf 01 00 00 00                                 mov    edi,0x1
  004b231e: 8b 45 18                                       mov    eax,DWORD PTR [ebp+0x18]
  004b2321: 43                                             inc    ebx
  004b2322: 3b d8                                          cmp    ebx,eax
  004b2324: 7c c0                                          jl     0x4b22e6
  004b2326: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b2329: 8b 4d fc                                       mov    ecx,DWORD PTR [ebp-0x4]
  004b232c: 8b 55 f0                                       mov    edx,DWORD PTR [ebp-0x10]
  004b232f: 8b 5d 18                                       mov    ebx,DWORD PTR [ebp+0x18]
  004b2332: 40                                             inc    eax
  004b2333: 41                                             inc    ecx
  004b2334: 89 4d fc                                       mov    DWORD PTR [ebp-0x4],ecx
  004b2337: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b233a: 49                                             dec    ecx
  004b233b: 4a                                             dec    edx
  004b233c: 43                                             inc    ebx
  004b233d: 85 ff                                          test   edi,edi
  004b233f: 89 5d 18                                       mov    DWORD PTR [ebp+0x18],ebx
  004b2342: 8b 5d f8                                       mov    ebx,DWORD PTR [ebp-0x8]
  004b2345: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  004b2348: 89 4d f4                                       mov    DWORD PTR [ebp-0xc],ecx
  004b234b: 89 55 f0                                       mov    DWORD PTR [ebp-0x10],edx
  004b234e: 0f 84 a6 fe ff ff                              je     0x4b21fa
  004b2354: 8b 13                                          mov    edx,DWORD PTR [ebx]
  004b2356: 8b cb                                          mov    ecx,ebx
  004b2358: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004b235b: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004b235e: 8b 55 d8                                       mov    edx,DWORD PTR [ebp-0x28]
  004b2361: 8b c8                                          mov    ecx,eax
  004b2363: 89 11                                          mov    DWORD PTR [ecx],edx
  004b2365: 8b 55 dc                                       mov    edx,DWORD PTR [ebp-0x24]
  004b2368: 5f                                             pop    edi
  004b2369: 89 51 04                                       mov    DWORD PTR [ecx+0x4],edx
  004b236c: 8b 55 e0                                       mov    edx,DWORD PTR [ebp-0x20]
  004b236f: 5e                                             pop    esi
  004b2370: 89 51 08                                       mov    DWORD PTR [ecx+0x8],edx
  004b2373: 5b                                             pop    ebx
  004b2374: 8b e5                                          mov    esp,ebp
  004b2376: 5d                                             pop    ebp
  004b2377: c2 14 00                                       ret    0x14

; [004B26D0] WorldMap::?IsCollideArea@WorldMap ; instruction=16 ; plage_limite=004B2700 ; issues=0
  004b26d0: 55                                             push   ebp
  004b26d1: 8b ec                                          mov    ebp,esp
  004b26d3: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004b26d6: 25 ff 00 00 00                                 and    eax,0xff
  004b26db: 48                                             dec    eax
  004b26dc: 74 0e                                          je     0x4b26ec
  004b26de: 48                                             dec    eax
  004b26df: 74 0b                                          je     0x4b26ec
  004b26e1: 83 e8 07                                       sub    eax,0x7
  004b26e4: 74 06                                          je     0x4b26ec
  004b26e6: 33 c0                                          xor    eax,eax
  004b26e8: 5d                                             pop    ebp
  004b26e9: c2 04 00                                       ret    0x4
  004b26ec: b8 01 00 00 00                                 mov    eax,0x1
  004b26f1: 5d                                             pop    ebp
  004b26f2: c2 04 00                                       ret    0x4

; [004B2700] WorldMap::?GetCollisionPos@WorldMap ; instruction=260 ; plage_limite=004B7700 ; issues=0
  004b2700: 55                                             push   ebp
  004b2701: 8b ec                                          mov    ebp,esp
  004b2703: 83 ec 28                                       sub    esp,0x28
  004b2706: 8b 55 20                                       mov    edx,DWORD PTR [ebp+0x20]
  004b2709: 8b 45 14                                       mov    eax,DWORD PTR [ebp+0x14]
  004b270c: 53                                             push   ebx
  004b270d: 56                                             push   esi
  004b270e: 8b 75 1c                                       mov    esi,DWORD PTR [ebp+0x1c]
  004b2711: 89 02                                          mov    DWORD PTR [edx],eax
  004b2713: 57                                             push   edi
  004b2714: 8b f9                                          mov    edi,ecx
  004b2716: 8b 4d 18                                       mov    ecx,DWORD PTR [ebp+0x18]
  004b2719: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  004b271c: 89 72 08                                       mov    DWORD PTR [edx+0x8],esi
  004b271f: 8b 55 24                                       mov    edx,DWORD PTR [ebp+0x24]
  004b2722: 8b 75 08                                       mov    esi,DWORD PTR [ebp+0x8]
  004b2725: c7 02 00 00 00 00                              mov    DWORD PTR [edx],0x0
  004b272b: 33 d2                                          xor    edx,edx
  004b272d: 66 8b 57 2c                                    mov    dx,WORD PTR [edi+0x2c]
  004b2731: 89 7d f8                                       mov    DWORD PTR [ebp-0x8],edi
  004b2734: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b273b: 3b f2                                          cmp    esi,edx
  004b273d: 0f 8d a9 02 00 00                              jge    0x4b29ec
  004b2743: 33 db                                          xor    ebx,ebx
  004b2745: 66 8b 5f 2e                                    mov    bx,WORD PTR [edi+0x2e]
  004b2749: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  004b274c: 3b fb                                          cmp    edi,ebx
  004b274e: 0f 8d 98 02 00 00                              jge    0x4b29ec
  004b2754: 85 f6                                          test   esi,esi
  004b2756: 0f 8c 90 02 00 00                              jl     0x4b29ec
  004b275c: 85 ff                                          test   edi,edi
  004b275e: 0f 8c 88 02 00 00                              jl     0x4b29ec
  004b2764: 3b c2                                          cmp    eax,edx
  004b2766: 0f 8d 80 02 00 00                              jge    0x4b29ec
  004b276c: 3b cb                                          cmp    ecx,ebx
  004b276e: 0f 8d 78 02 00 00                              jge    0x4b29ec
  004b2774: 33 db                                          xor    ebx,ebx
  004b2776: 3b c3                                          cmp    eax,ebx
  004b2778: 0f 8c 6e 02 00 00                              jl     0x4b29ec
  004b277e: 3b cb                                          cmp    ecx,ebx
  004b2780: 0f 8c 66 02 00 00                              jl     0x4b29ec
  004b2786: 2b cf                                          sub    ecx,edi
  004b2788: 2b c6                                          sub    eax,esi
  004b278a: 3b cb                                          cmp    ecx,ebx
  004b278c: 89 4d 1c                                       mov    DWORD PTR [ebp+0x1c],ecx
  004b278f: 89 45 f4                                       mov    DWORD PTR [ebp-0xc],eax
  004b2792: 7d 0e                                          jge    0x4b27a2
  004b2794: f7 d9                                          neg    ecx
  004b2796: 89 4d 1c                                       mov    DWORD PTR [ebp+0x1c],ecx
  004b2799: c7 45 e8 ff ff ff ff                           mov    DWORD PTR [ebp-0x18],0xffffffff
  004b27a0: eb 07                                          jmp    0x4b27a9
  004b27a2: c7 45 e8 01 00 00 00                           mov    DWORD PTR [ebp-0x18],0x1
  004b27a9: 3b c3                                          cmp    eax,ebx
  004b27ab: 7d 0e                                          jge    0x4b27bb
  004b27ad: f7 d8                                          neg    eax
  004b27af: 89 45 f4                                       mov    DWORD PTR [ebp-0xc],eax
  004b27b2: c7 45 e4 ff ff ff ff                           mov    DWORD PTR [ebp-0x1c],0xffffffff
  004b27b9: eb 07                                          jmp    0x4b27c2
  004b27bb: c7 45 e4 01 00 00 00                           mov    DWORD PTR [ebp-0x1c],0x1
  004b27c2: 3b c1                                          cmp    eax,ecx
  004b27c4: 0f 8e 09 01 00 00                              jle    0x4b28d3
  004b27ca: 41                                             inc    ecx
  004b27cb: 3b c3                                          cmp    eax,ebx
  004b27cd: 89 4d 1c                                       mov    DWORD PTR [ebp+0x1c],ecx
  004b27d0: 89 5d ec                                       mov    DWORD PTR [ebp-0x14],ebx
  004b27d3: 0f 8e 13 02 00 00                              jle    0x4b29ec
  004b27d9: eb 06                                          jmp    0x4b27e1
  004b27db: 8b 4d 1c                                       mov    ecx,DWORD PTR [ebp+0x1c]
  004b27de: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004b27e1: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  004b27e4: 85 d2                                          test   edx,edx
  004b27e6: 0f 85 ec 01 00 00                              jne    0x4b29d8
  004b27ec: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004b27ef: 03 d9                                          add    ebx,ecx
  004b27f1: 8b 4d e4                                       mov    ecx,DWORD PTR [ebp-0x1c]
  004b27f4: 89 75 d8                                       mov    DWORD PTR [ebp-0x28],esi
  004b27f7: 03 f1                                          add    esi,ecx
  004b27f9: 3b d8                                          cmp    ebx,eax
  004b27fb: 89 7d dc                                       mov    DWORD PTR [ebp-0x24],edi
  004b27fe: 89 55 e0                                       mov    DWORD PTR [ebp-0x20],edx
  004b2801: 89 5d f0                                       mov    DWORD PTR [ebp-0x10],ebx
  004b2804: 7e 0a                                          jle    0x4b2810
  004b2806: 2b d8                                          sub    ebx,eax
  004b2808: 8b 45 e8                                       mov    eax,DWORD PTR [ebp-0x18]
  004b280b: 89 5d f0                                       mov    DWORD PTR [ebp-0x10],ebx
  004b280e: 03 f8                                          add    edi,eax
  004b2810: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b2813: 83 ec 0c                                       sub    esp,0xc
  004b2816: 8b c4                                          mov    eax,esp
  004b2818: 89 30                                          mov    DWORD PTR [eax],esi
  004b281a: 89 78 04                                       mov    DWORD PTR [eax+0x4],edi
  004b281d: 89 50 08                                       mov    DWORD PTR [eax+0x8],edx
  004b2820: e8 3b f4 ff ff                                 call   0x4b1c60
  004b2825: 25 ff 00 00 00                                 and    eax,0xff
  004b282a: 48                                             dec    eax
  004b282b: 74 11                                          je     0x4b283e
  004b282d: 48                                             dec    eax
  004b282e: 74 0e                                          je     0x4b283e
  004b2830: 83 e8 07                                       sub    eax,0x7
  004b2833: 74 09                                          je     0x4b283e
  004b2835: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b283c: eb 7e                                          jmp    0x4b28bc
  004b283e: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b2841: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b2843: c7 45 fc 01 00 00 00                           mov    DWORD PTR [ebp-0x4],0x1
  004b284a: 33 db                                          xor    ebx,ebx
  004b284c: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004b284f: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b2852: 8b 51 24                                       mov    edx,DWORD PTR [ecx+0x24]
  004b2855: 8b c6                                          mov    eax,esi
  004b2857: c1 f8 02                                       sar    eax,0x2
  004b285a: 8b 14 82                                       mov    edx,DWORD PTR [edx+eax*4]
  004b285d: 8b cf                                          mov    ecx,edi
  004b285f: c1 f9 02                                       sar    ecx,0x2
  004b2862: 8b 0c 8a                                       mov    ecx,DWORD PTR [edx+ecx*4]
  004b2865: 85 c9                                          test   ecx,ecx
  004b2867: 74 43                                          je     0x4b28ac
  004b2869: 57                                             push   edi
  004b286a: 56                                             push   esi
  004b286b: e8 90 e0 f5 ff                                 call   0x410900
  004b2870: 8b d8                                          mov    ebx,eax
  004b2872: 85 db                                          test   ebx,ebx
  004b2874: 74 36                                          je     0x4b28ac
  004b2876: 8a 45 28                                       mov    al,BYTE PTR [ebp+0x28]
  004b2879: 84 c0                                          test   al,al
  004b287b: 75 14                                          jne    0x4b2891
  004b287d: 8b cb                                          mov    ecx,ebx
  004b287f: e8 ec 8d fd ff                                 call   0x48b670
  004b2884: 3c 01                                          cmp    al,0x1
  004b2886: 75 09                                          jne    0x4b2891
  004b2888: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b288f: eb 20                                          jmp    0x4b28b1
  004b2891: 8a 45 2c                                       mov    al,BYTE PTR [ebp+0x2c]
  004b2894: 84 c0                                          test   al,al
  004b2896: 75 14                                          jne    0x4b28ac
  004b2898: 8b cb                                          mov    ecx,ebx
  004b289a: e8 d1 8d fd ff                                 call   0x48b670
  004b289f: 3c 02                                          cmp    al,0x2
  004b28a1: 75 09                                          jne    0x4b28ac
  004b28a3: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b28aa: eb 05                                          jmp    0x4b28b1
  004b28ac: 8b 45 24                                       mov    eax,DWORD PTR [ebp+0x24]
  004b28af: 89 18                                          mov    DWORD PTR [eax],ebx
  004b28b1: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b28b4: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b28b6: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004b28b9: 8b 5d f0                                       mov    ebx,DWORD PTR [ebp-0x10]
  004b28bc: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b28bf: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  004b28c2: 40                                             inc    eax
  004b28c3: 3b c1                                          cmp    eax,ecx
  004b28c5: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  004b28c8: 0f 8c 0d ff ff ff                              jl     0x4b27db
  004b28ce: e9 fe 00 00 00                                 jmp    0x4b29d1
  004b28d3: 3b cb                                          cmp    ecx,ebx
  004b28d5: 89 5d ec                                       mov    DWORD PTR [ebp-0x14],ebx
  004b28d8: 0f 8e 0e 01 00 00                              jle    0x4b29ec
  004b28de: eb 06                                          jmp    0x4b28e6
  004b28e0: 8b 4d 1c                                       mov    ecx,DWORD PTR [ebp+0x1c]
  004b28e3: 8b 45 f4                                       mov    eax,DWORD PTR [ebp-0xc]
  004b28e6: 8b 55 fc                                       mov    edx,DWORD PTR [ebp-0x4]
  004b28e9: 85 d2                                          test   edx,edx
  004b28eb: 0f 85 e7 00 00 00                              jne    0x4b29d8
  004b28f1: 8b 55 10                                       mov    edx,DWORD PTR [ebp+0x10]
  004b28f4: 03 d8                                          add    ebx,eax
  004b28f6: 89 7d dc                                       mov    DWORD PTR [ebp-0x24],edi
  004b28f9: 03 7d e8                                       add    edi,DWORD PTR [ebp-0x18]
  004b28fc: 85 db                                          test   ebx,ebx
  004b28fe: 89 75 d8                                       mov    DWORD PTR [ebp-0x28],esi
  004b2901: 89 55 e0                                       mov    DWORD PTR [ebp-0x20],edx
  004b2904: 89 5d f0                                       mov    DWORD PTR [ebp-0x10],ebx
  004b2907: 7e 0a                                          jle    0x4b2913
  004b2909: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  004b290c: 2b d9                                          sub    ebx,ecx
  004b290e: 89 5d f0                                       mov    DWORD PTR [ebp-0x10],ebx
  004b2911: 03 f0                                          add    esi,eax
  004b2913: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b2916: 83 ec 0c                                       sub    esp,0xc
  004b2919: 8b c4                                          mov    eax,esp
  004b291b: 89 30                                          mov    DWORD PTR [eax],esi
  004b291d: 89 78 04                                       mov    DWORD PTR [eax+0x4],edi
  004b2920: 89 50 08                                       mov    DWORD PTR [eax+0x8],edx
  004b2923: e8 38 f3 ff ff                                 call   0x4b1c60
  004b2928: 25 ff 00 00 00                                 and    eax,0xff
  004b292d: 48                                             dec    eax
  004b292e: 74 11                                          je     0x4b2941
  004b2930: 48                                             dec    eax
  004b2931: 74 0e                                          je     0x4b2941
  004b2933: 83 e8 07                                       sub    eax,0x7
  004b2936: 74 09                                          je     0x4b2941
  004b2938: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b293f: eb 7e                                          jmp    0x4b29bf
  004b2941: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b2944: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b2946: c7 45 fc 01 00 00 00                           mov    DWORD PTR [ebp-0x4],0x1
  004b294d: 33 db                                          xor    ebx,ebx
  004b294f: ff 52 04                                       call   DWORD PTR [edx+0x4]
  004b2952: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b2955: 8b 51 24                                       mov    edx,DWORD PTR [ecx+0x24]
  004b2958: 8b c6                                          mov    eax,esi
  004b295a: c1 f8 02                                       sar    eax,0x2
  004b295d: 8b 14 82                                       mov    edx,DWORD PTR [edx+eax*4]
  004b2960: 8b cf                                          mov    ecx,edi
  004b2962: c1 f9 02                                       sar    ecx,0x2
  004b2965: 8b 0c 8a                                       mov    ecx,DWORD PTR [edx+ecx*4]
  004b2968: 85 c9                                          test   ecx,ecx
  004b296a: 74 43                                          je     0x4b29af
  004b296c: 57                                             push   edi
  004b296d: 56                                             push   esi
  004b296e: e8 8d df f5 ff                                 call   0x410900
  004b2973: 8b d8                                          mov    ebx,eax
  004b2975: 85 db                                          test   ebx,ebx
  004b2977: 74 36                                          je     0x4b29af
  004b2979: 8a 45 28                                       mov    al,BYTE PTR [ebp+0x28]
  004b297c: 84 c0                                          test   al,al
  004b297e: 75 14                                          jne    0x4b2994
  004b2980: 8b cb                                          mov    ecx,ebx
  004b2982: e8 e9 8c fd ff                                 call   0x48b670
  004b2987: 3c 01                                          cmp    al,0x1
  004b2989: 75 09                                          jne    0x4b2994
  004b298b: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b2992: eb 20                                          jmp    0x4b29b4
  004b2994: 8a 45 2c                                       mov    al,BYTE PTR [ebp+0x2c]
  004b2997: 84 c0                                          test   al,al
  004b2999: 75 14                                          jne    0x4b29af
  004b299b: 8b cb                                          mov    ecx,ebx
  004b299d: e8 ce 8c fd ff                                 call   0x48b670
  004b29a2: 3c 02                                          cmp    al,0x2
  004b29a4: 75 09                                          jne    0x4b29af
  004b29a6: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  004b29ad: eb 05                                          jmp    0x4b29b4
  004b29af: 8b 45 24                                       mov    eax,DWORD PTR [ebp+0x24]
  004b29b2: 89 18                                          mov    DWORD PTR [eax],ebx
  004b29b4: 8b 4d f8                                       mov    ecx,DWORD PTR [ebp-0x8]
  004b29b7: 8b 11                                          mov    edx,DWORD PTR [ecx]
  004b29b9: ff 52 08                                       call   DWORD PTR [edx+0x8]
  004b29bc: 8b 5d f0                                       mov    ebx,DWORD PTR [ebp-0x10]
  004b29bf: 8b 45 ec                                       mov    eax,DWORD PTR [ebp-0x14]
  004b29c2: 8b 4d 1c                                       mov    ecx,DWORD PTR [ebp+0x1c]
  004b29c5: 40                                             inc    eax
  004b29c6: 3b c1                                          cmp    eax,ecx
  004b29c8: 89 45 ec                                       mov    DWORD PTR [ebp-0x14],eax
  004b29cb: 0f 8c 0f ff ff ff                              jl     0x4b28e0
  004b29d1: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b29d4: 85 c0                                          test   eax,eax
  004b29d6: 74 14                                          je     0x4b29ec
  004b29d8: 8b 45 20                                       mov    eax,DWORD PTR [ebp+0x20]
  004b29db: 8b 4d d8                                       mov    ecx,DWORD PTR [ebp-0x28]
  004b29de: 8b 55 dc                                       mov    edx,DWORD PTR [ebp-0x24]
  004b29e1: 89 08                                          mov    DWORD PTR [eax],ecx
  004b29e3: 8b 4d e0                                       mov    ecx,DWORD PTR [ebp-0x20]
  004b29e6: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  004b29e9: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  004b29ec: 8b 45 fc                                       mov    eax,DWORD PTR [ebp-0x4]
  004b29ef: 5f                                             pop    edi
  004b29f0: 5e                                             pop    esi
  004b29f1: 5b                                             pop    ebx
  004b29f2: 8b e5                                          mov    esp,ebp
  004b29f4: 5d                                             pop    ebp
  004b29f5: c2 28 00                                       ret    0x28
