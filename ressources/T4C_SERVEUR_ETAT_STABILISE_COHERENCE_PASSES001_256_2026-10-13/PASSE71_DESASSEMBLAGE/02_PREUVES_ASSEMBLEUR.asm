; Passe 71 — ALLOCATION_ET_MESSAGES
; PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions atteignables statiquement depuis les entrées définies, vérifiées octet par octet.
; NOP/INT3 exclues du comptage, zones data non traversées; branches indirectes non résolues.

; [004420B0] fonction_non_exportee_004420B0 ; instruction=14 ; plage_limite=00442490 ; issues=0
  004420b0: 8a 0d 44 43 51 00                              mov    cl,BYTE PTR ds:0x514344
  004420b6: b0 01                                          mov    al,0x1
  004420b8: 84 c8                                          test   al,cl
  004420ba: 75 21                                          jne    0x4420dd
  004420bc: 8a d1                                          mov    dl,cl
  004420be: 0a d0                                          or     dl,al
  004420c0: b9 08 43 51 00                                 mov    ecx,0x514308
  004420c5: 88 15 44 43 51 00                              mov    BYTE PTR ds:0x514344,dl
  004420cb: e8 30 00 00 00                                 call   0x442100
  004420d0: 68 f0 20 44 00                                 push   0x4420f0
  004420d5: e8 31 fc 08 00                                 call   0x4d1d0b
  004420da: 83 c4 04                                       add    esp,0x4
  004420dd: b8 08 43 51 00                                 mov    eax,0x514308
  004420e2: c3                                             ret

; [004422C0] fonction_non_exportee_004422C0 ; instruction=7 ; plage_limite=00442490 ; issues=0
  004422c0: 55                                             push   ebp
  004422c1: 8b ec                                          mov    ebp,esp
  004422c3: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  004422c6: c1 e8 06                                       shr    eax,0x6
  004422c9: 25 ff 03 00 00                                 and    eax,0x3ff
  004422ce: 5d                                             pop    ebp
  004422cf: c2 04 00                                       ret    0x4

; [00442490] MonsterStructure::??0MonsterStructure ; instruction=96 ; plage_limite=004427C0 ; issues=0
  00442490: 55                                             push   ebp
  00442491: 8b ec                                          mov    ebp,esp
  00442493: 51                                             push   ecx
  00442494: 8b c1                                          mov    eax,ecx
  00442496: 33 c9                                          xor    ecx,ecx
  00442498: 66 89 08                                       mov    WORD PTR [eax],cx
  0044249b: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  0044249e: 89 48 0c                                       mov    DWORD PTR [eax+0xc],ecx
  004424a1: 89 48 10                                       mov    DWORD PTR [eax+0x10],ecx
  004424a4: 66 89 48 14                                    mov    WORD PTR [eax+0x14],cx
  004424a8: 89 48 18                                       mov    DWORD PTR [eax+0x18],ecx
  004424ab: 89 48 1c                                       mov    DWORD PTR [eax+0x1c],ecx
  004424ae: 89 48 20                                       mov    DWORD PTR [eax+0x20],ecx
  004424b1: ba 01 00 00 00                                 mov    edx,0x1
  004424b6: 89 50 24                                       mov    DWORD PTR [eax+0x24],edx
  004424b9: 89 50 28                                       mov    DWORD PTR [eax+0x28],edx
  004424bc: 89 48 2c                                       mov    DWORD PTR [eax+0x2c],ecx
  004424bf: 88 48 30                                       mov    BYTE PTR [eax+0x30],cl
  004424c2: 89 48 34                                       mov    DWORD PTR [eax+0x34],ecx
  004424c5: 89 48 38                                       mov    DWORD PTR [eax+0x38],ecx
  004424c8: 89 48 3c                                       mov    DWORD PTR [eax+0x3c],ecx
  004424cb: 89 48 44                                       mov    DWORD PTR [eax+0x44],ecx
  004424ce: 89 48 48                                       mov    DWORD PTR [eax+0x48],ecx
  004424d1: 89 48 4c                                       mov    DWORD PTR [eax+0x4c],ecx
  004424d4: 88 48 50                                       mov    BYTE PTR [eax+0x50],cl
  004424d7: 66 89 48 52                                    mov    WORD PTR [eax+0x52],cx
  004424db: ba 19 00 00 00                                 mov    edx,0x19
  004424e0: 66 89 50 60                                    mov    WORD PTR [eax+0x60],dx
  004424e4: 66 89 50 62                                    mov    WORD PTR [eax+0x62],dx
  004424e8: 66 89 50 64                                    mov    WORD PTR [eax+0x64],dx
  004424ec: 66 89 50 66                                    mov    WORD PTR [eax+0x66],dx
  004424f0: 89 48 68                                       mov    DWORD PTR [eax+0x68],ecx
  004424f3: 8a 55 ff                                       mov    dl,BYTE PTR [ebp-0x1]
  004424f6: 89 48 6c                                       mov    DWORD PTR [eax+0x6c],ecx
  004424f9: 89 48 70                                       mov    DWORD PTR [eax+0x70],ecx
  004424fc: 89 48 74                                       mov    DWORD PTR [eax+0x74],ecx
  004424ff: 89 48 78                                       mov    DWORD PTR [eax+0x78],ecx
  00442502: 89 48 7c                                       mov    DWORD PTR [eax+0x7c],ecx
  00442505: 89 88 80 00 00 00                              mov    DWORD PTR [eax+0x80],ecx
  0044250b: 89 88 84 00 00 00                              mov    DWORD PTR [eax+0x84],ecx
  00442511: 89 88 88 00 00 00                              mov    DWORD PTR [eax+0x88],ecx
  00442517: 89 88 8c 00 00 00                              mov    DWORD PTR [eax+0x8c],ecx
  0044251d: 88 90 90 00 00 00                              mov    BYTE PTR [eax+0x90],dl
  00442523: 89 88 94 00 00 00                              mov    DWORD PTR [eax+0x94],ecx
  00442529: 89 88 98 00 00 00                              mov    DWORD PTR [eax+0x98],ecx
  0044252f: 89 88 9c 00 00 00                              mov    DWORD PTR [eax+0x9c],ecx
  00442535: 8a 55 ff                                       mov    dl,BYTE PTR [ebp-0x1]
  00442538: 88 90 a0 00 00 00                              mov    BYTE PTR [eax+0xa0],dl
  0044253e: 8a 55 ff                                       mov    dl,BYTE PTR [ebp-0x1]
  00442541: 89 88 a4 00 00 00                              mov    DWORD PTR [eax+0xa4],ecx
  00442547: 89 88 a8 00 00 00                              mov    DWORD PTR [eax+0xa8],ecx
  0044254d: 89 88 ac 00 00 00                              mov    DWORD PTR [eax+0xac],ecx
  00442553: 88 90 b0 00 00 00                              mov    BYTE PTR [eax+0xb0],dl
  00442559: 89 88 b4 00 00 00                              mov    DWORD PTR [eax+0xb4],ecx
  0044255f: 89 88 b8 00 00 00                              mov    DWORD PTR [eax+0xb8],ecx
  00442565: 89 88 bc 00 00 00                              mov    DWORD PTR [eax+0xbc],ecx
  0044256b: 89 88 c0 00 00 00                              mov    DWORD PTR [eax+0xc0],ecx
  00442571: 89 88 c4 00 00 00                              mov    DWORD PTR [eax+0xc4],ecx
  00442577: 89 88 c8 00 00 00                              mov    DWORD PTR [eax+0xc8],ecx
  0044257d: 89 88 cc 00 00 00                              mov    DWORD PTR [eax+0xcc],ecx
  00442583: 89 88 d0 00 00 00                              mov    DWORD PTR [eax+0xd0],ecx
  00442589: 89 88 d4 00 00 00                              mov    DWORD PTR [eax+0xd4],ecx
  0044258f: 89 88 d8 00 00 00                              mov    DWORD PTR [eax+0xd8],ecx
  00442595: 89 88 dc 00 00 00                              mov    DWORD PTR [eax+0xdc],ecx
  0044259b: 89 88 e0 00 00 00                              mov    DWORD PTR [eax+0xe0],ecx
  004425a1: 89 88 e4 00 00 00                              mov    DWORD PTR [eax+0xe4],ecx
  004425a7: 89 88 e8 00 00 00                              mov    DWORD PTR [eax+0xe8],ecx
  004425ad: 89 88 ec 00 00 00                              mov    DWORD PTR [eax+0xec],ecx
  004425b3: 89 88 f0 00 00 00                              mov    DWORD PTR [eax+0xf0],ecx
  004425b9: 89 88 f4 00 00 00                              mov    DWORD PTR [eax+0xf4],ecx
  004425bf: 89 88 f8 00 00 00                              mov    DWORD PTR [eax+0xf8],ecx
  004425c5: 89 88 fc 00 00 00                              mov    DWORD PTR [eax+0xfc],ecx
  004425cb: 89 88 00 01 00 00                              mov    DWORD PTR [eax+0x100],ecx
  004425d1: 89 88 04 01 00 00                              mov    DWORD PTR [eax+0x104],ecx
  004425d7: 89 88 08 01 00 00                              mov    DWORD PTR [eax+0x108],ecx
  004425dd: 66 89 88 0c 01 00 00                           mov    WORD PTR [eax+0x10c],cx
  004425e4: 66 89 88 0e 01 00 00                           mov    WORD PTR [eax+0x10e],cx
  004425eb: 66 89 88 10 01 00 00                           mov    WORD PTR [eax+0x110],cx
  004425f2: 66 89 88 12 01 00 00                           mov    WORD PTR [eax+0x112],cx
  004425f9: 66 89 88 14 01 00 00                           mov    WORD PTR [eax+0x114],cx
  00442600: 66 89 88 16 01 00 00                           mov    WORD PTR [eax+0x116],cx
  00442607: 66 89 88 18 01 00 00                           mov    WORD PTR [eax+0x118],cx
  0044260e: 66 89 88 1a 01 00 00                           mov    WORD PTR [eax+0x11a],cx
  00442615: 89 88 1c 01 00 00                              mov    DWORD PTR [eax+0x11c],ecx
  0044261b: 89 88 20 01 00 00                              mov    DWORD PTR [eax+0x120],ecx
  00442621: 89 88 24 01 00 00                              mov    DWORD PTR [eax+0x124],ecx
  00442627: 89 88 28 01 00 00                              mov    DWORD PTR [eax+0x128],ecx
  0044262d: 89 88 2c 01 00 00                              mov    DWORD PTR [eax+0x12c],ecx
  00442633: 88 88 30 01 00 00                              mov    BYTE PTR [eax+0x130],cl
  00442639: 83 c9 ff                                       or     ecx,0xffffffff
  0044263c: 89 48 5c                                       mov    DWORD PTR [eax+0x5c],ecx
  0044263f: 89 48 58                                       mov    DWORD PTR [eax+0x58],ecx
  00442642: 89 48 54                                       mov    DWORD PTR [eax+0x54],ecx
  00442645: 8b e5                                          mov    esp,ebp
  00442647: 5d                                             pop    ebp
  00442648: c3                                             ret

; [0041F8E0] Character::?SendPrivateMessage@Character ; instruction=156 ; plage_limite=0041FAA0 ; issues=0
  0041f8e0: 55                                             push   ebp
  0041f8e1: 8b ec                                          mov    ebp,esp
  0041f8e3: 6a ff                                          push   0xffffffff
  0041f8e5: 68 50 42 4d 00                                 push   0x4d4250
  0041f8ea: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0041f8f0: 50                                             push   eax
  0041f8f1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0041f8f8: 83 ec 30                                       sub    esp,0x30
  0041f8fb: 53                                             push   ebx
  0041f8fc: 56                                             push   esi
  0041f8fd: 8b f1                                          mov    esi,ecx
  0041f8ff: 57                                             push   edi
  0041f900: 8b 7d 0c                                       mov    edi,DWORD PTR [ebp+0xc]
  0041f903: 8b 07                                          mov    eax,DWORD PTR [edi]
  0041f905: 8d 4d dc                                       lea    ecx,[ebp-0x24]
  0041f908: 51                                             push   ecx
  0041f909: 8b cf                                          mov    ecx,edi
  0041f90b: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  0041f90e: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041f910: 8d 45 e8                                       lea    eax,[ebp-0x18]
  0041f913: 50                                             push   eax
  0041f914: 8b ce                                          mov    ecx,esi
  0041f916: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  0041f919: 8b 4d ec                                       mov    ecx,DWORD PTR [ebp-0x14]
  0041f91c: 8b 5d e0                                       mov    ebx,DWORD PTR [ebp-0x20]
  0041f91f: 8b 45 e8                                       mov    eax,DWORD PTR [ebp-0x18]
  0041f922: 2b 45 dc                                       sub    eax,DWORD PTR [ebp-0x24]
  0041f925: 2b cb                                          sub    ecx,ebx
  0041f927: 83 c0 0b                                       add    eax,0xb
  0041f92a: 8d 4c 09 20                                    lea    ecx,[ecx+ecx*1+0x20]
  0041f92e: 83 f9 1e                                       cmp    ecx,0x1e
  0041f931: 8d 04 40                                       lea    eax,[eax+eax*2]
  0041f934: 7e 4e                                          jle    0x41f984
  0041f936: 83 f8 1e                                       cmp    eax,0x1e
  0041f939: 7e 25                                          jle    0x41f960
  0041f93b: 83 e9 1e                                       sub    ecx,0x1e
  0041f93e: 83 e8 1e                                       sub    eax,0x1e
  0041f941: 8d 14 09                                       lea    edx,[ecx+ecx*1]
  0041f944: 3b c2                                          cmp    eax,edx
  0041f946: 7e 09                                          jle    0x41f951
  0041f948: c6 45 0c 06                                    mov    BYTE PTR [ebp+0xc],0x6
  0041f94c: e9 86 00 00 00                                 jmp    0x41f9d7
  0041f951: 03 c0                                          add    eax,eax
  0041f953: 3b c8                                          cmp    ecx,eax
  0041f955: 0f 9e c1                                       setle  cl
  0041f958: 83 c1 02                                       add    ecx,0x2
  0041f95b: 88 4d 0c                                       mov    BYTE PTR [ebp+0xc],cl
  0041f95e: eb 77                                          jmp    0x41f9d7
  0041f960: 83 e9 1e                                       sub    ecx,0x1e
  0041f963: ba 1e 00 00 00                                 mov    edx,0x1e
  0041f968: 2b d0                                          sub    edx,eax
  0041f96a: 8d 04 09                                       lea    eax,[ecx+ecx*1]
  0041f96d: 3b d0                                          cmp    edx,eax
  0041f96f: 7e 06                                          jle    0x41f977
  0041f971: c6 45 0c 04                                    mov    BYTE PTR [ebp+0xc],0x4
  0041f975: eb 60                                          jmp    0x41f9d7
  0041f977: 03 d2                                          add    edx,edx
  0041f979: 3b ca                                          cmp    ecx,edx
  0041f97b: 0f 9f c0                                       setg   al
  0041f97e: 40                                             inc    eax
  0041f97f: 88 45 0c                                       mov    BYTE PTR [ebp+0xc],al
  0041f982: eb 53                                          jmp    0x41f9d7
  0041f984: 83 f8 1e                                       cmp    eax,0x1e
  0041f987: 7e 26                                          jle    0x41f9af
  0041f989: ba 1e 00 00 00                                 mov    edx,0x1e
  0041f98e: 2b d1                                          sub    edx,ecx
  0041f990: 83 e8 1e                                       sub    eax,0x1e
  0041f993: 8d 0c 12                                       lea    ecx,[edx+edx*1]
  0041f996: 3b c1                                          cmp    eax,ecx
  0041f998: 7e 06                                          jle    0x41f9a0
  0041f99a: c6 45 0c 06                                    mov    BYTE PTR [ebp+0xc],0x6
  0041f99e: eb 37                                          jmp    0x41f9d7
  0041f9a0: 03 c0                                          add    eax,eax
  0041f9a2: 3b d0                                          cmp    edx,eax
  0041f9a4: 0f 9e c1                                       setle  cl
  0041f9a7: 83 c1 08                                       add    ecx,0x8
  0041f9aa: 88 4d 0c                                       mov    BYTE PTR [ebp+0xc],cl
  0041f9ad: eb 28                                          jmp    0x41f9d7
  0041f9af: ba 1e 00 00 00                                 mov    edx,0x1e
  0041f9b4: 2b d1                                          sub    edx,ecx
  0041f9b6: b9 1e 00 00 00                                 mov    ecx,0x1e
  0041f9bb: 2b c8                                          sub    ecx,eax
  0041f9bd: 8d 04 12                                       lea    eax,[edx+edx*1]
  0041f9c0: 3b c8                                          cmp    ecx,eax
  0041f9c2: 7e 06                                          jle    0x41f9ca
  0041f9c4: c6 45 0c 04                                    mov    BYTE PTR [ebp+0xc],0x4
  0041f9c8: eb 0d                                          jmp    0x41f9d7
  0041f9ca: 03 c9                                          add    ecx,ecx
  0041f9cc: 3b d1                                          cmp    edx,ecx
  0041f9ce: 0f 9f c2                                       setg   dl
  0041f9d1: 83 c2 07                                       add    edx,0x7
  0041f9d4: 88 55 0c                                       mov    BYTE PTR [ebp+0xc],dl
  0041f9d7: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041f9da: e8 11 64 06 00                                 call   0x485df0
  0041f9df: 6a 1b                                          push   0x1b
  0041f9e1: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041f9e4: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0041f9eb: e8 60 67 06 00                                 call   0x486150
  0041f9f0: 8b cf                                          mov    ecx,edi
  0041f9f2: e8 09 bd 06 00                                 call   0x48b700
  0041f9f7: 50                                             push   eax
  0041f9f8: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041f9fb: e8 f0 67 06 00                                 call   0x4861f0
  0041fa00: 8b 45 0c                                       mov    eax,DWORD PTR [ebp+0xc]
  0041fa03: 50                                             push   eax
  0041fa04: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041fa07: e8 a4 67 06 00                                 call   0x4861b0
  0041fa0c: 8b 4d 10                                       mov    ecx,DWORD PTR [ebp+0x10]
  0041fa0f: 51                                             push   ecx
  0041fa10: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041fa13: e8 d8 67 06 00                                 call   0x4861f0
  0041fa18: 8b cf                                          mov    ecx,edi
  0041fa1a: e8 51 bc 06 00                                 call   0x48b670
  0041fa1f: 3c 01                                          cmp    al,0x1
  0041fa21: 74 04                                          je     0x41fa27
  0041fa23: 6a 01                                          push   0x1
  0041fa25: eb 02                                          jmp    0x41fa29
  0041fa27: 6a 00                                          push   0x0
  0041fa29: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041fa2c: e8 7f 67 06 00                                 call   0x4861b0
  0041fa31: 8b 55 08                                       mov    edx,DWORD PTR [ebp+0x8]
  0041fa34: 52                                             push   edx
  0041fa35: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041fa38: e8 13 69 06 00                                 call   0x486350
  0041fa3d: 8b 06                                          mov    eax,DWORD PTR [esi]
  0041fa3f: 8b 1f                                          mov    ebx,DWORD PTR [edi]
  0041fa41: 8b ce                                          mov    ecx,esi
  0041fa43: ff 90 94 01 00 00                              call   DWORD PTR [eax+0x194]
  0041fa49: 8d 4d 0c                                       lea    ecx,[ebp+0xc]
  0041fa4c: 50                                             push   eax
  0041fa4d: 51                                             push   ecx
  0041fa4e: 8b cf                                          mov    ecx,edi
  0041fa50: ff 53 48                                       call   DWORD PTR [ebx+0x48]
  0041fa53: 50                                             push   eax
  0041fa54: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041fa57: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0041fa5b: e8 f0 68 06 00                                 call   0x486350
  0041fa60: 8d 4d 0c                                       lea    ecx,[ebp+0xc]
  0041fa63: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0041fa67: e8 d4 1f 0b 00                                 call   0x4d1a40
  0041fa6c: 8b 16                                          mov    edx,DWORD PTR [esi]
  0041fa6e: 8d 45 c4                                       lea    eax,[ebp-0x3c]
  0041fa71: 50                                             push   eax
  0041fa72: 8b ce                                          mov    ecx,esi
  0041fa74: ff 92 4c 01 00 00                              call   DWORD PTR [edx+0x14c]
  0041fa7a: 8d 4d c4                                       lea    ecx,[ebp-0x3c]
  0041fa7d: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0041fa84: e8 f7 63 06 00                                 call   0x485e80
  0041fa89: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0041fa8c: 5f                                             pop    edi
  0041fa8d: 5e                                             pop    esi
  0041fa8e: 5b                                             pop    ebx
  0041fa8f: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0041fa96: 8b e5                                          mov    esp,ebp
  0041fa98: 5d                                             pop    ebp
  0041fa99: c2 0c 00                                       ret    0xc

; [0048C3E0] Unit::?Talk@Unit ; instruction=175 ; plage_limite=0048C5E0 ; issues=0
  0048c3e0: 55                                             push   ebp
  0048c3e1: 8b ec                                          mov    ebp,esp
  0048c3e3: 6a ff                                          push   0xffffffff
  0048c3e5: 68 d8 a6 4d 00                                 push   0x4da6d8
  0048c3ea: 64 a1 00 00 00 00                              mov    eax,fs:0x0
  0048c3f0: 50                                             push   eax
  0048c3f1: 64 89 25 00 00 00 00                           mov    DWORD PTR fs:0x0,esp
  0048c3f8: 83 ec 40                                       sub    esp,0x40
  0048c3fb: 56                                             push   esi
  0048c3fc: 57                                             push   edi
  0048c3fd: 8b 7d 10                                       mov    edi,DWORD PTR [ebp+0x10]
  0048c400: 85 ff                                          test   edi,edi
  0048c402: 8b f1                                          mov    esi,ecx
  0048c404: c6 45 f0 00                                    mov    BYTE PTR [ebp-0x10],0x0
  0048c408: 0f 84 d4 00 00 00                              je     0x48c4e2
  0048c40e: 8b 06                                          mov    eax,DWORD PTR [esi]
  0048c410: 8d 4d d8                                       lea    ecx,[ebp-0x28]
  0048c413: 51                                             push   ecx
  0048c414: 8b ce                                          mov    ecx,esi
  0048c416: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  0048c419: 8b 17                                          mov    edx,DWORD PTR [edi]
  0048c41b: 8d 45 e4                                       lea    eax,[ebp-0x1c]
  0048c41e: 50                                             push   eax
  0048c41f: 8b cf                                          mov    ecx,edi
  0048c421: ff 52 1c                                       call   DWORD PTR [edx+0x1c]
  0048c424: 8b 4d e8                                       mov    ecx,DWORD PTR [ebp-0x18]
  0048c427: 8b 7d dc                                       mov    edi,DWORD PTR [ebp-0x24]
  0048c42a: 8b 45 e4                                       mov    eax,DWORD PTR [ebp-0x1c]
  0048c42d: 2b 45 d8                                       sub    eax,DWORD PTR [ebp-0x28]
  0048c430: 2b cf                                          sub    ecx,edi
  0048c432: 83 c0 0b                                       add    eax,0xb
  0048c435: 8d 4c 09 20                                    lea    ecx,[ecx+ecx*1+0x20]
  0048c439: 83 f9 1e                                       cmp    ecx,0x1e
  0048c43c: 8d 04 40                                       lea    eax,[eax+eax*2]
  0048c43f: 7e 4e                                          jle    0x48c48f
  0048c441: 83 f8 1e                                       cmp    eax,0x1e
  0048c444: 7e 25                                          jle    0x48c46b
  0048c446: 83 e9 1e                                       sub    ecx,0x1e
  0048c449: 83 e8 1e                                       sub    eax,0x1e
  0048c44c: 8d 14 09                                       lea    edx,[ecx+ecx*1]
  0048c44f: 3b c2                                          cmp    eax,edx
  0048c451: 7e 09                                          jle    0x48c45c
  0048c453: c6 45 f0 06                                    mov    BYTE PTR [ebp-0x10],0x6
  0048c457: e9 86 00 00 00                                 jmp    0x48c4e2
  0048c45c: 03 c0                                          add    eax,eax
  0048c45e: 3b c8                                          cmp    ecx,eax
  0048c460: 0f 9e c1                                       setle  cl
  0048c463: 83 c1 02                                       add    ecx,0x2
  0048c466: 88 4d f0                                       mov    BYTE PTR [ebp-0x10],cl
  0048c469: eb 77                                          jmp    0x48c4e2
  0048c46b: 83 e9 1e                                       sub    ecx,0x1e
  0048c46e: ba 1e 00 00 00                                 mov    edx,0x1e
  0048c473: 2b d0                                          sub    edx,eax
  0048c475: 8d 04 09                                       lea    eax,[ecx+ecx*1]
  0048c478: 3b d0                                          cmp    edx,eax
  0048c47a: 7e 06                                          jle    0x48c482
  0048c47c: c6 45 f0 04                                    mov    BYTE PTR [ebp-0x10],0x4
  0048c480: eb 60                                          jmp    0x48c4e2
  0048c482: 03 d2                                          add    edx,edx
  0048c484: 3b ca                                          cmp    ecx,edx
  0048c486: 0f 9f c0                                       setg   al
  0048c489: 40                                             inc    eax
  0048c48a: 88 45 f0                                       mov    BYTE PTR [ebp-0x10],al
  0048c48d: eb 53                                          jmp    0x48c4e2
  0048c48f: 83 f8 1e                                       cmp    eax,0x1e
  0048c492: 7e 26                                          jle    0x48c4ba
  0048c494: ba 1e 00 00 00                                 mov    edx,0x1e
  0048c499: 2b d1                                          sub    edx,ecx
  0048c49b: 83 e8 1e                                       sub    eax,0x1e
  0048c49e: 8d 0c 12                                       lea    ecx,[edx+edx*1]
  0048c4a1: 3b c1                                          cmp    eax,ecx
  0048c4a3: 7e 06                                          jle    0x48c4ab
  0048c4a5: c6 45 f0 06                                    mov    BYTE PTR [ebp-0x10],0x6
  0048c4a9: eb 37                                          jmp    0x48c4e2
  0048c4ab: 03 c0                                          add    eax,eax
  0048c4ad: 3b d0                                          cmp    edx,eax
  0048c4af: 0f 9e c1                                       setle  cl
  0048c4b2: 83 c1 08                                       add    ecx,0x8
  0048c4b5: 88 4d f0                                       mov    BYTE PTR [ebp-0x10],cl
  0048c4b8: eb 28                                          jmp    0x48c4e2
  0048c4ba: ba 1e 00 00 00                                 mov    edx,0x1e
  0048c4bf: 2b d1                                          sub    edx,ecx
  0048c4c1: b9 1e 00 00 00                                 mov    ecx,0x1e
  0048c4c6: 2b c8                                          sub    ecx,eax
  0048c4c8: 8d 04 12                                       lea    eax,[edx+edx*1]
  0048c4cb: 3b c8                                          cmp    ecx,eax
  0048c4cd: 7e 06                                          jle    0x48c4d5
  0048c4cf: c6 45 f0 04                                    mov    BYTE PTR [ebp-0x10],0x4
  0048c4d3: eb 0d                                          jmp    0x48c4e2
  0048c4d5: 03 c9                                          add    ecx,ecx
  0048c4d7: 3b d1                                          cmp    edx,ecx
  0048c4d9: 0f 9f c2                                       setg   dl
  0048c4dc: 83 c2 07                                       add    edx,0x7
  0048c4df: 88 55 f0                                       mov    BYTE PTR [ebp-0x10],dl
  0048c4e2: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0048c4e5: 50                                             push   eax
  0048c4e6: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  0048c4e9: e8 76 55 04 00                                 call   0x4d1a64
  0048c4ee: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c4f1: c7 45 fc 00 00 00 00                           mov    DWORD PTR [ebp-0x4],0x0
  0048c4f8: e8 f3 98 ff ff                                 call   0x485df0
  0048c4fd: 6a 1b                                          push   0x1b
  0048c4ff: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c502: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0048c506: e8 45 9c ff ff                                 call   0x486150
  0048c50b: 8b 46 78                                       mov    eax,DWORD PTR [esi+0x78]
  0048c50e: 50                                             push   eax
  0048c50f: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c512: e8 d9 9c ff ff                                 call   0x4861f0
  0048c517: 8b 4d f0                                       mov    ecx,DWORD PTR [ebp-0x10]
  0048c51a: 51                                             push   ecx
  0048c51b: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c51e: e8 8d 9c ff ff                                 call   0x4861b0
  0048c523: 8b 55 0c                                       mov    edx,DWORD PTR [ebp+0xc]
  0048c526: 52                                             push   edx
  0048c527: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c52a: e8 c1 9c ff ff                                 call   0x4861f0
  0048c52f: 80 7e 73 01                                    cmp    BYTE PTR [esi+0x73],0x1
  0048c533: 74 04                                          je     0x48c539
  0048c535: 6a 01                                          push   0x1
  0048c537: eb 02                                          jmp    0x48c53b
  0048c539: 6a 00                                          push   0x0
  0048c53b: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c53e: e8 6d 9c ff ff                                 call   0x4861b0
  0048c543: 8d 45 10                                       lea    eax,[ebp+0x10]
  0048c546: 50                                             push   eax
  0048c547: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c54a: e8 01 9e ff ff                                 call   0x486350
  0048c54f: 8b 3e                                          mov    edi,DWORD PTR [esi]
  0048c551: 8b ce                                          mov    ecx,esi
  0048c553: ff 97 94 01 00 00                              call   DWORD PTR [edi+0x194]
  0048c559: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0048c55c: 50                                             push   eax
  0048c55d: 51                                             push   ecx
  0048c55e: 8b ce                                          mov    ecx,esi
  0048c560: ff 57 48                                       call   DWORD PTR [edi+0x48]
  0048c563: 50                                             push   eax
  0048c564: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c567: c6 45 fc 02                                    mov    BYTE PTR [ebp-0x4],0x2
  0048c56b: e8 e0 9d ff ff                                 call   0x486350
  0048c570: 8d 4d 08                                       lea    ecx,[ebp+0x8]
  0048c573: c6 45 fc 01                                    mov    BYTE PTR [ebp-0x4],0x1
  0048c577: e8 c4 54 04 00                                 call   0x4d1a40
  0048c57c: 8b 06                                          mov    eax,DWORD PTR [esi]
  0048c57e: 6a 00                                          push   0x0
  0048c580: 8d 55 b4                                       lea    edx,[ebp-0x4c]
  0048c583: 52                                             push   edx
  0048c584: 6a 14                                          push   0x14
  0048c586: 8d 4d cc                                       lea    ecx,[ebp-0x34]
  0048c589: 51                                             push   ecx
  0048c58a: 8b ce                                          mov    ecx,esi
  0048c58c: ff 50 1c                                       call   DWORD PTR [eax+0x1c]
  0048c58f: 8b 08                                          mov    ecx,DWORD PTR [eax]
  0048c591: 83 ec 0c                                       sub    esp,0xc
  0048c594: 8b d4                                          mov    edx,esp
  0048c596: 89 0a                                          mov    DWORD PTR [edx],ecx
  0048c598: 8b 48 04                                       mov    ecx,DWORD PTR [eax+0x4]
  0048c59b: 8b 40 08                                       mov    eax,DWORD PTR [eax+0x8]
  0048c59e: 89 4a 04                                       mov    DWORD PTR [edx+0x4],ecx
  0048c5a1: 89 42 08                                       mov    DWORD PTR [edx+0x8],eax
  0048c5a4: e8 47 35 f8 ff                                 call   0x40faf0
  0048c5a9: 83 c4 18                                       add    esp,0x18
  0048c5ac: 8d 4d b4                                       lea    ecx,[ebp-0x4c]
  0048c5af: c6 45 fc 00                                    mov    BYTE PTR [ebp-0x4],0x0
  0048c5b3: e8 c8 98 ff ff                                 call   0x485e80
  0048c5b8: 8d 4d 10                                       lea    ecx,[ebp+0x10]
  0048c5bb: c7 45 fc ff ff ff ff                           mov    DWORD PTR [ebp-0x4],0xffffffff
  0048c5c2: e8 79 54 04 00                                 call   0x4d1a40
  0048c5c7: 8b 4d f4                                       mov    ecx,DWORD PTR [ebp-0xc]
  0048c5ca: 5f                                             pop    edi
  0048c5cb: 64 89 0d 00 00 00 00                           mov    DWORD PTR fs:0x0,ecx
  0048c5d2: 5e                                             pop    esi
  0048c5d3: 8b e5                                          mov    esp,ebp
  0048c5d5: 5d                                             pop    ebp
  0048c5d6: c2 0c 00                                       ret    0xc

; [0041DD80] Character::?SendPlayerMessage@Character ; instruction=38 ; plage_limite=0041DDE0 ; issues=0
  0041dd80: 55                                             push   ebp
  0041dd81: 8b ec                                          mov    ebp,esp
  0041dd83: 56                                             push   esi
  0041dd84: 8b b1 78 01 00 00                              mov    esi,DWORD PTR [ecx+0x178]
  0041dd8a: 85 f6                                          test   esi,esi
  0041dd8c: 57                                             push   edi
  0041dd8d: 74 48                                          je     0x41ddd7
  0041dd8f: 6a 01                                          push   0x1
  0041dd91: 6a 00                                          push   0x0
  0041dd93: 6a 00                                          push   0x0
  0041dd95: 83 c8 ff                                       or     eax,0xffffffff
  0041dd98: 83 ec 0c                                       sub    esp,0xc
  0041dd9b: 8b fc                                          mov    edi,esp
  0041dd9d: 89 07                                          mov    DWORD PTR [edi],eax
  0041dd9f: 83 c9 ff                                       or     ecx,0xffffffff
  0041dda2: 89 4f 04                                       mov    DWORD PTR [edi+0x4],ecx
  0041dda5: 6a ff                                          push   0xffffffff
  0041dda7: 83 ca ff                                       or     edx,0xffffffff
  0041ddaa: 89 57 08                                       mov    DWORD PTR [edi+0x8],edx
  0041ddad: 83 c6 24                                       add    esi,0x24
  0041ddb0: 8b 0e                                          mov    ecx,DWORD PTR [esi]
  0041ddb2: 8b 56 04                                       mov    edx,DWORD PTR [esi+0x4]
  0041ddb5: 83 ec 10                                       sub    esp,0x10
  0041ddb8: 8b c4                                          mov    eax,esp
  0041ddba: 89 08                                          mov    DWORD PTR [eax],ecx
  0041ddbc: 8b 4e 08                                       mov    ecx,DWORD PTR [esi+0x8]
  0041ddbf: 89 50 04                                       mov    DWORD PTR [eax+0x4],edx
  0041ddc2: 8b 56 0c                                       mov    edx,DWORD PTR [esi+0xc]
  0041ddc5: 89 48 08                                       mov    DWORD PTR [eax+0x8],ecx
  0041ddc8: 89 50 0c                                       mov    DWORD PTR [eax+0xc],edx
  0041ddcb: 8b 45 08                                       mov    eax,DWORD PTR [ebp+0x8]
  0041ddce: 50                                             push   eax
  0041ddcf: e8 ac 35 03 00                                 call   0x451380
  0041ddd4: 83 c4 30                                       add    esp,0x30
  0041ddd7: 5f                                             pop    edi
  0041ddd8: 5e                                             pop    esi
  0041ddd9: 5d                                             pop    ebp
  0041ddda: c2 04 00                                       ret    0x4

; [0048F540] Unit::?IsPrivateTalk@Unit ; instruction=2 ; plage_limite=0048F550 ; issues=0
  0048f540: 33 c0                                          xor    eax,eax
  0048f542: c3                                             ret

; [0048F550] Unit::?SendPrivateMessage@Unit ; instruction=1 ; plage_limite=0048F560 ; issues=0
  0048f550: c2 0c 00                                       ret    0xc

; [00432EA0] Creatures::?IsPrivateTalk@Creatures ; instruction=2 ; plage_limite=00432EB0 ; issues=0
  00432ea0: 8b 81 04 01 00 00                              mov    eax,DWORD PTR [ecx+0x104]
  00432ea6: c3                                             ret

; [0048B670] Unit::?GetType@Unit ; instruction=2 ; plage_limite=0048B680 ; issues=0
  0048b670: 8a 41 73                                       mov    al,BYTE PTR [ecx+0x73]
  0048b673: c3                                             ret

; [0048B700] Unit::?GetID@Unit ; instruction=2 ; plage_limite=0048B710 ; issues=0
  0048b700: 8b 41 78                                       mov    eax,DWORD PTR [ecx+0x78]
  0048b703: c3                                             ret
