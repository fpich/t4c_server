; T4C Server(1).exe — preuves machine-code pour la passe 41
; Instructions copiees de objdump Intel et verifiees byte par byte contre le PE original.
; Les adresses sont des VA et tous les commentaires sont des annotations statiques, sans execution du serveur.

; Transformation de la collection WDA en objets runtime, contrôles, branche active/inactive et destruction temporaire — [0x473610,0x473F19)
  473610: 55                                          push   ebp
  473611: 8b ec                                       mov    ebp,esp
  473613: 6a ff                                       push   0xffffffff
  473615: 68 17 8e 4d 00                              push   0x4d8e17
  47361a: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  473620: 50                                          push   eax
  473621: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  473628: 83 ec 18                                    sub    esp,0x18
  47362b: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  47362e: 8b 01                                       mov    eax,DWORD PTR [ecx]
  473630: 53                                          push   ebx
  473631: 56                                          push   esi
  473632: 57                                          push   edi
  473633: ff 50 20                                    call   DWORD PTR [eax+0x20]
  473636: 8b 78 04                                    mov    edi,DWORD PTR [eax+0x4]
  473639: 3b 78 08                                    cmp    edi,DWORD PTR [eax+0x8]
  47363c: 89 45 dc                                    mov    DWORD PTR [ebp-0x24],eax
  47363f: 89 7d f0                                    mov    DWORD PTR [ebp-0x10],edi
  473642: 0f 84 be 08 00 00                           je     0x473f06
  473648: eb 03                                       jmp    0x47364d
  47364a: 8b 7d f0                                    mov    edi,DWORD PTR [ebp-0x10]
  47364d: 33 db                                       xor    ebx,ebx
  47364f: 68 18 04 00 00                              push   0x418
  473654: 89 5d 08                                    mov    DWORD PTR [ebp+0x8],ebx
  473657: e8 94 e9 fc ff                              call   0x441ff0
  47365c: 8b f0                                       mov    esi,eax
  47365e: 83 c4 04                                    add    esp,0x4
  473661: 89 75 e0                                    mov    DWORD PTR [ebp-0x20],esi
  473664: 3b f3                                       cmp    esi,ebx
  473666: 89 5d fc                                    mov    DWORD PTR [ebp-0x4],ebx
  473669: 0f 84 87 00 00 00                           je     0x4736f6
  47366f: 8d 4e 08                                    lea    ecx,[esi+0x8]
  473672: e8 49 60 f9 ff                              call   0x4096c0
  473677: 8d 4e 78                                    lea    ecx,[esi+0x78]
  47367a: c6 45 fc 01                                 mov    BYTE PTR [ebp-0x4],0x1
  47367e: e8 3d 60 f9 ff                              call   0x4096c0
  473683: 8d 8e e8 00 00 00                           lea    ecx,[esi+0xe8]
  473689: c6 45 fc 02                                 mov    BYTE PTR [ebp-0x4],0x2
  47368d: e8 8e 08 00 00                              call   0x473f20
  473692: 8d 8e 48 02 00 00                           lea    ecx,[esi+0x248]
  473698: c6 45 fc 03                                 mov    BYTE PTR [ebp-0x4],0x3
  47369c: e8 1f 60 f9 ff                              call   0x4096c0
  4736a1: 8d 8e b8 02 00 00                           lea    ecx,[esi+0x2b8]
  4736a7: c6 45 fc 04                                 mov    BYTE PTR [ebp-0x4],0x4
  4736ab: e8 10 60 f9 ff                              call   0x4096c0
  4736b0: 8d 8e 68 03 00 00                           lea    ecx,[esi+0x368]
  4736b6: c6 45 fc 05                                 mov    BYTE PTR [ebp-0x4],0x5
  4736ba: e8 01 0d fb ff                              call   0x4243c0
  4736bf: 8d 8e b0 03 00 00                           lea    ecx,[esi+0x3b0]
  4736c5: c6 45 fc 06                                 mov    BYTE PTR [ebp-0x4],0x6
  4736c9: e8 c2 41 00 00                              call   0x477890
  4736ce: 8d 8e f8 03 00 00                           lea    ecx,[esi+0x3f8]
  4736d4: c6 45 fc 07                                 mov    BYTE PTR [ebp-0x4],0x7
  4736d8: ff 15 f8 e4 4d 00                           call   DWORD PTR ds:0x4de4f8
  4736de: 8d 8e 08 04 00 00                           lea    ecx,[esi+0x408]
  4736e4: c6 45 fc 08                                 mov    BYTE PTR [ebp-0x4],0x8
  4736e8: ff 15 f8 e4 4d 00                           call   DWORD PTR ds:0x4de4f8
  4736ee: 88 9e 2c 03 00 00                           mov    BYTE PTR [esi+0x32c],bl
  4736f4: 8b de                                       mov    ebx,esi
  4736f6: 8b 57 2c                                    mov    edx,DWORD PTR [edi+0x2c]
  4736f9: 85 d2                                       test   edx,edx
  4736fb: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  473702: 75 06                                       jne    0x47370a
  473704: 8b 15 d8 e4 4d 00                           mov    edx,DWORD PTR ds:0x4de4d8
  47370a: 83 c9 ff                                    or     ecx,0xffffffff
  47370d: 33 c0                                       xor    eax,eax
  47370f: 8b fa                                       mov    edi,edx
  473711: f2 ae                                       repnz scas al,BYTE PTR es:[edi]
  473713: f7 d1                                       not    ecx
  473715: 49                                          dec    ecx
  473716: 51                                          push   ecx
  473717: 8d b3 f8 03 00 00                           lea    esi,[ebx+0x3f8]
  47371d: 52                                          push   edx
  47371e: 8b ce                                       mov    ecx,esi
  473720: ff 15 f4 e4 4d 00                           call   DWORD PTR ds:0x4de4f4
  473726: 8b 75 f0                                    mov    esi,DWORD PTR [ebp-0x10]
  473729: 66 8b 4e 24                                 mov    cx,WORD PTR [esi+0x24]
  47372d: 66 89 0b                                    mov    WORD PTR [ebx],cx
  473730: 8d 8e 8c 00 00 00                           lea    ecx,[esi+0x8c]
  473736: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  47373c: 51                                          push   ecx
  47373d: 8b cc                                       mov    ecx,esp
  47373f: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  473742: 50                                          push   eax
  473743: e8 1c e3 05 00                              call   0x4d1a64
  473748: 8d 4b 08                                    lea    ecx,[ebx+0x8]
  47374b: e8 b0 61 f9 ff                              call   0x409900
  473750: 85 c0                                       test   eax,eax
  473752: 75 07                                       jne    0x47375b
  473754: c7 45 08 01 00 00 00                        mov    DWORD PTR [ebp+0x8],0x1
  47375b: 8d 4e 68                                    lea    ecx,[esi+0x68]
  47375e: bf 01 00 00 00                              mov    edi,0x1
  473763: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  473769: 51                                          push   ecx
  47376a: 8b cc                                       mov    ecx,esp
  47376c: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  47376f: 50                                          push   eax
  473770: e8 ef e2 05 00                              call   0x4d1a64
  473775: 8d 4b 78                                    lea    ecx,[ebx+0x78]
  473778: e8 83 61 f9 ff                              call   0x409900
  47377d: 85 c0                                       test   eax,eax
  47377f: 75 03                                       jne    0x473784
  473781: 89 7d 08                                    mov    DWORD PTR [ebp+0x8],edi
  473784: 8d 4e 78                                    lea    ecx,[esi+0x78]
  473787: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  47378d: 51                                          push   ecx
  47378e: 8b cc                                       mov    ecx,esp
  473790: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  473793: 50                                          push   eax
  473794: e8 cb e2 05 00                              call   0x4d1a64
  473799: 8d 8b b8 02 00 00                           lea    ecx,[ebx+0x2b8]
  47379f: e8 5c 61 f9 ff                              call   0x409900
  4737a4: 85 c0                                       test   eax,eax
  4737a6: 75 03                                       jne    0x4737ab
  4737a8: 89 7d 08                                    mov    DWORD PTR [ebp+0x8],edi
  4737ab: 8d 4e 58                                    lea    ecx,[esi+0x58]
  4737ae: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  4737b4: 51                                          push   ecx
  4737b5: 8b cc                                       mov    ecx,esp
  4737b7: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  4737ba: 50                                          push   eax
  4737bb: e8 a4 e2 05 00                              call   0x4d1a64
  4737c0: 8d 8b e8 00 00 00                           lea    ecx,[ebx+0xe8]
  4737c6: e8 35 61 f9 ff                              call   0x409900
  4737cb: 85 c0                                       test   eax,eax
  4737cd: 75 03                                       jne    0x4737d2
  4737cf: 89 7d 08                                    mov    DWORD PTR [ebp+0x8],edi
  4737d2: 8d 4e 48                                    lea    ecx,[esi+0x48]
  4737d5: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  4737db: 51                                          push   ecx
  4737dc: 8b cc                                       mov    ecx,esp
  4737de: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  4737e1: 50                                          push   eax
  4737e2: e8 7d e2 05 00                              call   0x4d1a64
  4737e7: 8d 8b 58 01 00 00                           lea    ecx,[ebx+0x158]
  4737ed: e8 0e 61 f9 ff                              call   0x409900
  4737f2: 85 c0                                       test   eax,eax
  4737f4: 75 03                                       jne    0x4737f9
  4737f6: 89 7d 08                                    mov    DWORD PTR [ebp+0x8],edi
  4737f9: 8d 4e 38                                    lea    ecx,[esi+0x38]
  4737fc: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  473802: 51                                          push   ecx
  473803: 8b cc                                       mov    ecx,esp
  473805: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  473808: 50                                          push   eax
  473809: e8 56 e2 05 00                              call   0x4d1a64
  47380e: 8d 8b c8 01 00 00                           lea    ecx,[ebx+0x1c8]
  473814: e8 e7 60 f9 ff                              call   0x409900
  473819: 85 c0                                       test   eax,eax
  47381b: 75 03                                       jne    0x473820
  47381d: 89 7d 08                                    mov    DWORD PTR [ebp+0x8],edi
  473820: 8a 96 be 00 00 00                           mov    dl,BYTE PTR [esi+0xbe]
  473826: 88 93 40 02 00 00                           mov    BYTE PTR [ebx+0x240],dl
  47382c: 8a 86 88 00 00 00                           mov    al,BYTE PTR [esi+0x88]
  473832: 88 83 38 02 00 00                           mov    BYTE PTR [ebx+0x238],al
  473838: 8a 8e ac 00 00 00                           mov    cl,BYTE PTR [esi+0xac]
  47383e: 88 8b 39 02 00 00                           mov    BYTE PTR [ebx+0x239],cl
  473844: 8a 96 a8 00 00 00                           mov    dl,BYTE PTR [esi+0xa8]
  47384a: 88 93 3a 02 00 00                           mov    BYTE PTR [ebx+0x23a],dl
  473850: 8a 86 9c 00 00 00                           mov    al,BYTE PTR [esi+0x9c]
  473856: 88 83 3b 02 00 00                           mov    BYTE PTR [ebx+0x23b],al
  47385c: 66 8b 8e a0 00 00 00                        mov    cx,WORD PTR [esi+0xa0]
  473863: 66 89 8b 3c 02 00 00                        mov    WORD PTR [ebx+0x23c],cx
  47386a: 66 8b 96 a4 00 00 00                        mov    dx,WORD PTR [esi+0xa4]
  473871: 66 89 93 3e 02 00 00                        mov    WORD PTR [ebx+0x23e],dx
  473878: 8b 46 24                                    mov    eax,DWORD PTR [esi+0x24]
  47387b: 8d 04 80                                    lea    eax,[eax+eax*4]
  47387e: 8d 04 80                                    lea    eax,[eax+eax*4]
  473881: 8d 04 80                                    lea    eax,[eax+eax*4]
  473884: c1 e0 03                                    shl    eax,0x3
  473887: 89 83 ac 03 00 00                           mov    DWORD PTR [ebx+0x3ac],eax
  47388d: 8b 8e b0 00 00 00                           mov    ecx,DWORD PTR [esi+0xb0]
  473893: 89 8b 4c 03 00 00                           mov    DWORD PTR [ebx+0x34c],ecx
  473899: 8b 96 b4 00 00 00                           mov    edx,DWORD PTR [esi+0xb4]
  47389f: 89 93 48 03 00 00                           mov    DWORD PTR [ebx+0x348],edx
  4738a5: 8b 86 b8 00 00 00                           mov    eax,DWORD PTR [esi+0xb8]
  4738ab: 89 83 38 03 00 00                           mov    DWORD PTR [ebx+0x338],eax
  4738b1: 33 c9                                       xor    ecx,ecx
  4738b3: 8a 8e bc 00 00 00                           mov    cl,BYTE PTR [esi+0xbc]
  4738b9: 89 8b 28 03 00 00                           mov    DWORD PTR [ebx+0x328],ecx
  4738bf: 8a 96 bd 00 00 00                           mov    dl,BYTE PTR [esi+0xbd]
  4738c5: 88 93 2c 03 00 00                           mov    BYTE PTR [ebx+0x32c],dl
  4738cb: a1 ec e4 4d 00                              mov    eax,ds:0x4de4ec
  4738d0: 8b 10                                       mov    edx,DWORD PTR [eax]
  4738d2: 52                                          push   edx
  4738d3: 6a 00                                       push   0x0
  4738d5: 8d 86 d4 00 00 00                           lea    eax,[esi+0xd4]
  4738db: 8d 8b 08 04 00 00                           lea    ecx,[ebx+0x408]
  4738e1: 50                                          push   eax
  4738e2: ff 15 fc e4 4d 00                           call   DWORD PTR ds:0x4de4fc
  4738e8: 8b 8e c0 00 00 00                           mov    ecx,DWORD PTR [esi+0xc0]
  4738ee: 89 8b 44 02 00 00                           mov    DWORD PTR [ebx+0x244],ecx
  4738f4: 8d 8e c4 00 00 00                           lea    ecx,[esi+0xc4]
  4738fa: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  473900: 51                                          push   ecx
  473901: 8b cc                                       mov    ecx,esp
  473903: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  473906: 50                                          push   eax
  473907: e8 58 e1 05 00                              call   0x4d1a64
  47390c: 8d bb 48 02 00 00                           lea    edi,[ebx+0x248]
  473912: 8b cf                                       mov    ecx,edi
  473914: e8 e7 5f f9 ff                              call   0x409900
  473919: 85 c0                                       test   eax,eax
  47391b: 75 36                                       jne    0x473953
  47391d: 8b 46 2c                                    mov    eax,DWORD PTR [esi+0x2c]
  473920: 85 c0                                       test   eax,eax
  473922: 75 05                                       jne    0x473929
  473924: a1 d8 e4 4d 00                              mov    eax,ds:0x4de4d8
  473929: 8b 56 24                                    mov    edx,DWORD PTR [esi+0x24]
  47392c: 52                                          push   edx
  47392d: 50                                          push   eax
  47392e: 68 0c a0 50 00                              push   0x50a00c
  473933: 6a 08                                       push   0x8
  473935: e8 06 e4 ff ff                              call   0x471d40
  47393a: 83 c4 0c                                    add    esp,0xc
  47393d: 8b cc                                       mov    ecx,esp
  47393f: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  473942: 68 08 a0 50 00                              push   0x50a008
  473947: e8 18 e1 05 00                              call   0x4d1a64
  47394c: 8b cf                                       mov    ecx,edi
  47394e: e8 ad 5f f9 ff                              call   0x409900
  473953: 8b 46 14                                    mov    eax,DWORD PTR [esi+0x14]
  473956: 3b 46 18                                    cmp    eax,DWORD PTR [esi+0x18]
  473959: 89 45 ec                                    mov    DWORD PTR [ebp-0x14],eax
  47395c: 74 39                                       je     0x473997
  47395e: 6a 08                                       push   0x8
  473960: e8 8b e6 fc ff                              call   0x441ff0
  473965: 8b 4d ec                                    mov    ecx,DWORD PTR [ebp-0x14]
  473968: 83 c4 04                                    add    esp,0x4
  47396b: 8b f8                                       mov    edi,eax
  47396d: e8 3e 48 03 00                              call   0x4a81b0
  473972: 57                                          push   edi
  473973: 8d 8b 68 03 00 00                           lea    ecx,[ebx+0x368]
  473979: 89 07                                       mov    DWORD PTR [edi],eax
  47397b: c7 47 04 00 00 00 00                        mov    DWORD PTR [edi+0x4],0x0
  473982: e8 79 18 fb ff                              call   0x425200
  473987: 8b 45 ec                                    mov    eax,DWORD PTR [ebp-0x14]
  47398a: 8b 4e 18                                    mov    ecx,DWORD PTR [esi+0x18]
  47398d: 83 c0 1c                                    add    eax,0x1c
  473990: 3b c1                                       cmp    eax,ecx
  473992: 89 45 ec                                    mov    DWORD PTR [ebp-0x14],eax
  473995: 75 c7                                       jne    0x47395e
  473997: 8b 7e 04                                    mov    edi,DWORD PTR [esi+0x4]
  47399a: 3b 7e 08                                    cmp    edi,DWORD PTR [esi+0x8]
  47399d: 89 7d ec                                    mov    DWORD PTR [ebp-0x14],edi
  4739a0: 0f 84 1c 02 00 00                           je     0x473bc2
  4739a6: 53                                          push   ebx
  4739a7: 8b cf                                       mov    ecx,edi
  4739a9: e8 32 39 03 00                              call   0x4a72e0
  4739ae: 50                                          push   eax
  4739af: e8 4c d2 fe ff                              call   0x460c00
  4739b4: 83 c4 08                                    add    esp,0x8
  4739b7: 85 c0                                       test   eax,eax
  4739b9: 89 45 e8                                    mov    DWORD PTR [ebp-0x18],eax
  4739bc: 0f 84 1b 02 00 00                           je     0x473bdd
  4739c2: 8b cf                                       mov    ecx,edi
  4739c4: e8 27 39 03 00                              call   0x4a72f0
  4739c9: 8b 48 04                                    mov    ecx,DWORD PTR [eax+0x4]
  4739cc: 85 c9                                       test   ecx,ecx
  4739ce: 89 45 e0                                    mov    DWORD PTR [ebp-0x20],eax
  4739d1: 0f 84 16 01 00 00                           je     0x473aed
  4739d7: 8b 40 08                                    mov    eax,DWORD PTR [eax+0x8]
  4739da: 8b d0                                       mov    edx,eax
  4739dc: 89 45 e4                                    mov    DWORD PTR [ebp-0x1c],eax
  4739df: 2b d1                                       sub    edx,ecx
  4739e1: b8 e9 a2 8b 2e                              mov    eax,0x2e8ba2e9
  4739e6: f7 ea                                       imul   edx
  4739e8: c1 fa 03                                    sar    edx,0x3
  4739eb: 8b c2                                       mov    eax,edx
  4739ed: c1 e8 1f                                    shr    eax,0x1f
  4739f0: 03 d0                                       add    edx,eax
  4739f2: 0f 84 f5 00 00 00                           je     0x473aed
  4739f8: 8b 45 e4                                    mov    eax,DWORD PTR [ebp-0x1c]
  4739fb: 8b f9                                       mov    edi,ecx
  4739fd: 3b f8                                       cmp    edi,eax
  4739ff: 0f 84 92 00 00 00                           je     0x473a97
  473a05: 8b cf                                       mov    ecx,edi
  473a07: e8 04 35 03 00                              call   0x4a6f10
  473a0c: 50                                          push   eax
  473a0d: 8b cf                                       mov    ecx,edi
  473a0f: e8 ec 34 03 00                              call   0x4a6f00
  473a14: 8b c8                                       mov    ecx,eax
  473a16: ff 15 24 e5 4d 00                           call   DWORD PTR ds:0x4de524
  473a1c: 51                                          push   ecx
  473a1d: 8b cc                                       mov    ecx,esp
  473a1f: 89 65 e4                                    mov    DWORD PTR [ebp-0x1c],esp
  473a22: 50                                          push   eax
  473a23: e8 3c e0 05 00                              call   0x4d1a64
  473a28: 8b 4d e8                                    mov    ecx,DWORD PTR [ebp-0x18]
  473a2b: 8b 11                                       mov    edx,DWORD PTR [ecx]
  473a2d: ff 12                                       call   DWORD PTR [edx]
  473a2f: 85 c0                                       test   eax,eax
  473a31: 75 53                                       jne    0x473a86
  473a33: 8b cf                                       mov    ecx,edi
  473a35: c7 45 08 01 00 00 00                        mov    DWORD PTR [ebp+0x8],0x1
  473a3c: e8 bf 34 03 00                              call   0x4a6f00
  473a41: 8b 40 04                                    mov    eax,DWORD PTR [eax+0x4]
  473a44: 85 c0                                       test   eax,eax
  473a46: 8b 15 d8 e4 4d 00                           mov    edx,DWORD PTR ds:0x4de4d8
  473a4c: 75 02                                       jne    0x473a50
  473a4e: 8b c2                                       mov    eax,edx
  473a50: 8b 4e 2c                                    mov    ecx,DWORD PTR [esi+0x2c]
  473a53: 85 c9                                       test   ecx,ecx
  473a55: 89 55 e4                                    mov    DWORD PTR [ebp-0x1c],edx
  473a58: 74 03                                       je     0x473a5d
  473a5a: 89 4d e4                                    mov    DWORD PTR [ebp-0x1c],ecx
  473a5d: 50                                          push   eax
  473a5e: 8b cf                                       mov    ecx,edi
  473a60: e8 ab 34 03 00                              call   0x4a6f10
  473a65: 8b 4d ec                                    mov    ecx,DWORD PTR [ebp-0x14]
  473a68: 50                                          push   eax
  473a69: e8 72 38 03 00                              call   0x4a72e0
  473a6e: 8b 4d e4                                    mov    ecx,DWORD PTR [ebp-0x1c]
  473a71: 50                                          push   eax
  473a72: 8b 46 24                                    mov    eax,DWORD PTR [esi+0x24]
  473a75: 50                                          push   eax
  473a76: 51                                          push   ecx
  473a77: 68 98 9f 50 00                              push   0x509f98
  473a7c: 6a 08                                       push   0x8
  473a7e: e8 bd e2 ff ff                              call   0x471d40
  473a83: 83 c4 1c                                    add    esp,0x1c
  473a86: 8b 55 e0                                    mov    edx,DWORD PTR [ebp-0x20]
  473a89: 8b 42 08                                    mov    eax,DWORD PTR [edx+0x8]
  473a8c: 83 c7 2c                                    add    edi,0x2c
  473a8f: 3b f8                                       cmp    edi,eax
  473a91: 0f 85 6e ff ff ff                           jne    0x473a05
  473a97: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  473a9a: 33 ff                                       xor    edi,edi
  473a9c: 3b c7                                       cmp    eax,edi
  473a9e: 0f 85 0a 01 00 00                           jne    0x473bae
  473aa4: 8b 83 d8 03 00 00                           mov    eax,DWORD PTR [ebx+0x3d8]
  473aaa: 8b 93 e8 03 00 00                           mov    edx,DWORD PTR [ebx+0x3e8]
  473ab0: 42                                          inc    edx
  473ab1: 3b c7                                       cmp    eax,edi
  473ab3: 89 83 d0 03 00 00                           mov    DWORD PTR [ebx+0x3d0],eax
  473ab9: 89 bb f0 03 00 00                           mov    DWORD PTR [ebx+0x3f0],edi
  473abf: c6 83 e4 03 00 00 08                        mov    BYTE PTR [ebx+0x3e4],0x8
  473ac6: 89 83 dc 03 00 00                           mov    DWORD PTR [ebx+0x3dc],eax
  473acc: 89 93 e8 03 00 00                           mov    DWORD PTR [ebx+0x3e8],edx
  473ad2: 6a 0c                                       push   0xc
  473ad4: 0f 85 8e 00 00 00                           jne    0x473b68
  473ada: e8 11 e5 fc ff                              call   0x441ff0
  473adf: 83 c4 04                                    add    esp,0x4
  473ae2: 3b c7                                       cmp    eax,edi
  473ae4: 74 61                                       je     0x473b47
  473ae6: 89 38                                       mov    DWORD PTR [eax],edi
  473ae8: 89 78 04                                    mov    DWORD PTR [eax+0x4],edi
  473aeb: eb 5c                                       jmp    0x473b49
  473aed: 6a 00                                       push   0x0
  473aef: 51                                          push   ecx
  473af0: 8b cc                                       mov    ecx,esp
  473af2: 89 65 e0                                    mov    DWORD PTR [ebp-0x20],esp
  473af5: 68 58 13 51 00                              push   0x511358
  473afa: e8 65 df 05 00                              call   0x4d1a64
  473aff: 8b 4d e8                                    mov    ecx,DWORD PTR [ebp-0x18]
  473b02: 8b 01                                       mov    eax,DWORD PTR [ecx]
  473b04: ff 10                                       call   DWORD PTR [eax]
  473b06: 85 c0                                       test   eax,eax
  473b08: 75 8d                                       jne    0x473a97
  473b0a: 8b 46 2c                                    mov    eax,DWORD PTR [esi+0x2c]
  473b0d: 85 c0                                       test   eax,eax
  473b0f: c7 45 08 01 00 00 00                        mov    DWORD PTR [ebp+0x8],0x1
  473b16: 75 0b                                       jne    0x473b23
  473b18: 8b 0d d8 e4 4d 00                           mov    ecx,DWORD PTR ds:0x4de4d8
  473b1e: 89 4d e4                                    mov    DWORD PTR [ebp-0x1c],ecx
  473b21: eb 03                                       jmp    0x473b26
  473b23: 89 45 e4                                    mov    DWORD PTR [ebp-0x1c],eax
  473b26: 8b cf                                       mov    ecx,edi
  473b28: e8 b3 37 03 00                              call   0x4a72e0
  473b2d: 8b 56 24                                    mov    edx,DWORD PTR [esi+0x24]
  473b30: 50                                          push   eax
  473b31: 8b 45 e4                                    mov    eax,DWORD PTR [ebp-0x1c]
  473b34: 52                                          push   edx
  473b35: 50                                          push   eax
  473b36: 68 38 9f 50 00                              push   0x509f38
  473b3b: 6a 08                                       push   0x8
  473b3d: e8 fe e1 ff ff                              call   0x471d40
  473b42: 83 c4 14                                    add    esp,0x14
  473b45: eb 6a                                       jmp    0x473bb1
  473b47: 33 c0                                       xor    eax,eax
  473b49: 89 83 d0 03 00 00                           mov    DWORD PTR [ebx+0x3d0],eax
  473b4f: 89 83 d8 03 00 00                           mov    DWORD PTR [ebx+0x3d8],eax
  473b55: 89 83 d4 03 00 00                           mov    DWORD PTR [ebx+0x3d4],eax
  473b5b: 89 38                                       mov    DWORD PTR [eax],edi
  473b5d: 8b 8b d0 03 00 00                           mov    ecx,DWORD PTR [ebx+0x3d0]
  473b63: 89 79 04                                    mov    DWORD PTR [ecx+0x4],edi
  473b66: eb 3a                                       jmp    0x473ba2
  473b68: e8 83 e4 fc ff                              call   0x441ff0
  473b6d: 83 c4 04                                    add    esp,0x4
  473b70: 3b c7                                       cmp    eax,edi
  473b72: 74 07                                       je     0x473b7b
  473b74: 89 38                                       mov    DWORD PTR [eax],edi
  473b76: 89 78 04                                    mov    DWORD PTR [eax+0x4],edi
  473b79: eb 02                                       jmp    0x473b7d
  473b7b: 33 c0                                       xor    eax,eax
  473b7d: 8b 93 d0 03 00 00                           mov    edx,DWORD PTR [ebx+0x3d0]
  473b83: 89 02                                       mov    DWORD PTR [edx],eax
  473b85: 8b 8b dc 03 00 00                           mov    ecx,DWORD PTR [ebx+0x3dc]
  473b8b: 89 83 d0 03 00 00                           mov    DWORD PTR [ebx+0x3d0],eax
  473b91: 89 83 d8 03 00 00                           mov    DWORD PTR [ebx+0x3d8],eax
  473b97: 89 48 04                                    mov    DWORD PTR [eax+0x4],ecx
  473b9a: 8b 93 d0 03 00 00                           mov    edx,DWORD PTR [ebx+0x3d0]
  473ba0: 89 3a                                       mov    DWORD PTR [edx],edi
  473ba2: 8b 83 d0 03 00 00                           mov    eax,DWORD PTR [ebx+0x3d0]
  473ba8: 8b 4d e8                                    mov    ecx,DWORD PTR [ebp-0x18]
  473bab: 89 48 08                                    mov    DWORD PTR [eax+0x8],ecx
  473bae: 8b 7d ec                                    mov    edi,DWORD PTR [ebp-0x14]
  473bb1: 8b 46 08                                    mov    eax,DWORD PTR [esi+0x8]
  473bb4: 83 c7 2c                                    add    edi,0x2c
  473bb7: 3b f8                                       cmp    edi,eax
  473bb9: 89 7d ec                                    mov    DWORD PTR [ebp-0x14],edi
  473bbc: 0f 85 e4 fd ff ff                           jne    0x4739a6
  473bc2: 8b 45 08                                    mov    eax,DWORD PTR [ebp+0x8]
  473bc5: 85 c0                                       test   eax,eax
  473bc7: 75 51                                       jne    0x473c1a
  473bc9: 33 d2                                       xor    edx,edx
  473bcb: 66 8b 13                                    mov    dx,WORD PTR [ebx]
  473bce: 53                                          push   ebx
  473bcf: 52                                          push   edx
  473bd0: e8 8b d7 fe ff                              call   0x461360
  473bd5: 83 c4 08                                    add    esp,0x8
  473bd8: e9 10 03 00 00                              jmp    0x473eed
  473bdd: 8b 46 2c                                    mov    eax,DWORD PTR [esi+0x2c]
  473be0: 85 c0                                       test   eax,eax
  473be2: c7 45 08 01 00 00 00                        mov    DWORD PTR [ebp+0x8],0x1
  473be9: 75 0b                                       jne    0x473bf6
  473beb: 8b 15 d8 e4 4d 00                           mov    edx,DWORD PTR ds:0x4de4d8
  473bf1: 89 55 e4                                    mov    DWORD PTR [ebp-0x1c],edx
  473bf4: eb 03                                       jmp    0x473bf9
  473bf6: 89 45 e4                                    mov    DWORD PTR [ebp-0x1c],eax
  473bf9: 8b cf                                       mov    ecx,edi
  473bfb: e8 e0 36 03 00                              call   0x4a72e0
  473c00: 8b 4d e4                                    mov    ecx,DWORD PTR [ebp-0x1c]
  473c03: 50                                          push   eax
  473c04: 8b 46 24                                    mov    eax,DWORD PTR [esi+0x24]
  473c07: 50                                          push   eax
  473c08: 51                                          push   ecx
  473c09: 68 04 9f 50 00                              push   0x509f04
  473c0e: 6a 08                                       push   0x8
  473c10: e8 2b e1 ff ff                              call   0x471d40
  473c15: 83 c4 14                                    add    esp,0x14
  473c18: eb 97                                       jmp    0x473bb1
  473c1a: 8b 76 2c                                    mov    esi,DWORD PTR [esi+0x2c]
  473c1d: 85 f6                                       test   esi,esi
  473c1f: a1 d8 e4 4d 00                              mov    eax,ds:0x4de4d8
  473c24: 74 02                                       je     0x473c28
  473c26: 8b c6                                       mov    eax,esi
  473c28: 8b 4d f0                                    mov    ecx,DWORD PTR [ebp-0x10]
  473c2b: 8b 51 24                                    mov    edx,DWORD PTR [ecx+0x24]
  473c2e: 52                                          push   edx
  473c2f: 50                                          push   eax
  473c30: 68 bc 9e 50 00                              push   0x509ebc
  473c35: 6a 08                                       push   0x8
  473c37: e8 04 e1 ff ff                              call   0x471d40
  473c3c: 8b 83 d4 03 00 00                           mov    eax,DWORD PTR [ebx+0x3d4]
  473c42: 8d b3 b0 03 00 00                           lea    esi,[ebx+0x3b0]
  473c48: 83 c4 10                                    add    esp,0x10
  473c4b: 33 ff                                       xor    edi,edi
  473c4d: 89 46 20                                    mov    DWORD PTR [esi+0x20],eax
  473c50: 89 7e 40                                    mov    DWORD PTR [esi+0x40],edi
  473c53: c6 46 34 08                                 mov    BYTE PTR [esi+0x34],0x8
  473c57: 39 7e 40                                    cmp    DWORD PTR [esi+0x40],edi
  473c5a: 74 0a                                       je     0x473c66
  473c5c: 8b 4e 20                                    mov    ecx,DWORD PTR [esi+0x20]
  473c5f: 8b 11                                       mov    edx,DWORD PTR [ecx]
  473c61: 89 56 20                                    mov    DWORD PTR [esi+0x20],edx
  473c64: eb 07                                       jmp    0x473c6d
  473c66: c7 46 40 01 00 00 00                        mov    DWORD PTR [esi+0x40],0x1
  473c6d: 8b 46 20                                    mov    eax,DWORD PTR [esi+0x20]
  473c70: 3b c7                                       cmp    eax,edi
  473c72: 0f 84 ba 00 00 00                           je     0x473d32
  473c78: 8b 4e 28                                    mov    ecx,DWORD PTR [esi+0x28]
  473c7b: 89 46 2c                                    mov    DWORD PTR [esi+0x2c],eax
  473c7e: ff 4e 38                                    dec    DWORD PTR [esi+0x38]
  473c81: 8b 46 20                                    mov    eax,DWORD PTR [esi+0x20]
  473c84: 3b c1                                       cmp    eax,ecx
  473c86: 74 3d                                       je     0x473cc5
  473c88: 3b 46 24                                    cmp    eax,DWORD PTR [esi+0x24]
  473c8b: 74 34                                       je     0x473cc1
  473c8d: 8b 08                                       mov    ecx,DWORD PTR [eax]
  473c8f: 8b 50 04                                    mov    edx,DWORD PTR [eax+0x4]
  473c92: 89 51 04                                    mov    DWORD PTR [ecx+0x4],edx
  473c95: 8b 46 20                                    mov    eax,DWORD PTR [esi+0x20]
  473c98: 8b 48 04                                    mov    ecx,DWORD PTR [eax+0x4]
  473c9b: 8b 10                                       mov    edx,DWORD PTR [eax]
  473c9d: 89 11                                       mov    DWORD PTR [ecx],edx
  473c9f: 8b 46 40                                    mov    eax,DWORD PTR [esi+0x40]
  473ca2: 83 f8 01                                    cmp    eax,0x1
  473ca5: 75 0b                                       jne    0x473cb2
  473ca7: 8b 46 20                                    mov    eax,DWORD PTR [esi+0x20]
  473caa: 8b 48 04                                    mov    ecx,DWORD PTR [eax+0x4]
  473cad: 89 4e 20                                    mov    DWORD PTR [esi+0x20],ecx
  473cb0: eb 63                                       jmp    0x473d15
  473cb2: 83 f8 02                                    cmp    eax,0x2
  473cb5: 75 5e                                       jne    0x473d15
  473cb7: 8b 56 20                                    mov    edx,DWORD PTR [esi+0x20]
  473cba: 8b 02                                       mov    eax,DWORD PTR [edx]
  473cbc: 89 46 20                                    mov    DWORD PTR [esi+0x20],eax
  473cbf: eb 54                                       jmp    0x473d15
  473cc1: 3b c1                                       cmp    eax,ecx
  473cc3: 75 23                                       jne    0x473ce8
  473cc5: 3b 46 24                                    cmp    eax,DWORD PTR [esi+0x24]
  473cc8: 74 23                                       je     0x473ced
  473cca: 8b 48 04                                    mov    ecx,DWORD PTR [eax+0x4]
  473ccd: 89 39                                       mov    DWORD PTR [ecx],edi
  473ccf: 8b 56 20                                    mov    edx,DWORD PTR [esi+0x20]
  473cd2: 8b 42 04                                    mov    eax,DWORD PTR [edx+0x4]
  473cd5: 89 46 28                                    mov    DWORD PTR [esi+0x28],eax
  473cd8: 83 7e 40 02                                 cmp    DWORD PTR [esi+0x40],0x2
  473cdc: 8b ca                                       mov    ecx,edx
  473cde: 8b 51 04                                    mov    edx,DWORD PTR [ecx+0x4]
  473ce1: 89 56 20                                    mov    DWORD PTR [esi+0x20],edx
  473ce4: 75 2f                                       jne    0x473d15
  473ce6: eb 2a                                       jmp    0x473d12
  473ce8: 3b 46 24                                    cmp    eax,DWORD PTR [esi+0x24]
  473ceb: 75 1c                                       jne    0x473d09
  473ced: 3b c1                                       cmp    eax,ecx
  473cef: 74 18                                       je     0x473d09
  473cf1: 8b 00                                       mov    eax,DWORD PTR [eax]
  473cf3: 89 78 04                                    mov    DWORD PTR [eax+0x4],edi
  473cf6: 8b 4e 20                                    mov    ecx,DWORD PTR [esi+0x20]
  473cf9: 8b 01                                       mov    eax,DWORD PTR [ecx]
  473cfb: 89 46 20                                    mov    DWORD PTR [esi+0x20],eax
  473cfe: 89 46 24                                    mov    DWORD PTR [esi+0x24],eax
  473d01: 83 7e 40 01                                 cmp    DWORD PTR [esi+0x40],0x1
  473d05: 75 0e                                       jne    0x473d15
  473d07: eb 09                                       jmp    0x473d12
  473d09: 89 7e 20                                    mov    DWORD PTR [esi+0x20],edi
  473d0c: 89 7e 24                                    mov    DWORD PTR [esi+0x24],edi
  473d0f: 89 7e 28                                    mov    DWORD PTR [esi+0x28],edi
  473d12: 89 7e 40                                    mov    DWORD PTR [esi+0x40],edi
  473d15: 8b 56 2c                                    mov    edx,DWORD PTR [esi+0x2c]
  473d18: 8b 42 08                                    mov    eax,DWORD PTR [edx+0x8]
  473d1b: 50                                          push   eax
  473d1c: e8 3f e3 fc ff                              call   0x442060
  473d21: 8b 4e 2c                                    mov    ecx,DWORD PTR [esi+0x2c]
  473d24: 51                                          push   ecx
  473d25: e8 36 e3 fc ff                              call   0x442060
  473d2a: 83 c4 08                                    add    esp,0x8
  473d2d: e9 25 ff ff ff                              jmp    0x473c57
  473d32: 39 7e 40                                    cmp    DWORD PTR [esi+0x40],edi
  473d35: 74 04                                       je     0x473d3b
  473d37: c6 46 34 07                                 mov    BYTE PTR [esi+0x34],0x7
  473d3b: 3b df                                       cmp    ebx,edi
  473d3d: 89 7e 40                                    mov    DWORD PTR [esi+0x40],edi
  473d40: 89 5d 08                                    mov    DWORD PTR [ebp+0x8],ebx
  473d43: 0f 84 a4 01 00 00                           je     0x473eed
  473d49: c7 45 fc 09 00 00 00                        mov    DWORD PTR [ebp-0x4],0x9
  473d50: 8b 83 0c 04 00 00                           mov    eax,DWORD PTR [ebx+0x40c]
  473d56: 33 ff                                       xor    edi,edi
  473d58: 3b c7                                       cmp    eax,edi
  473d5a: 74 1c                                       je     0x473d78
  473d5c: 8d 48 ff                                    lea    ecx,[eax-0x1]
  473d5f: 8a 01                                       mov    al,BYTE PTR [ecx]
  473d61: 84 c0                                       test   al,al
  473d63: 74 0a                                       je     0x473d6f
  473d65: 3c ff                                       cmp    al,0xff
  473d67: 74 06                                       je     0x473d6f
  473d69: fe c8                                       dec    al
  473d6b: 88 01                                       mov    BYTE PTR [ecx],al
  473d6d: eb 09                                       jmp    0x473d78
  473d6f: 51                                          push   ecx
  473d70: e8 eb e2 fc ff                              call   0x442060
  473d75: 83 c4 04                                    add    esp,0x4
  473d78: 89 bb 0c 04 00 00                           mov    DWORD PTR [ebx+0x40c],edi
  473d7e: 89 bb 10 04 00 00                           mov    DWORD PTR [ebx+0x410],edi
  473d84: 89 bb 14 04 00 00                           mov    DWORD PTR [ebx+0x414],edi
  473d8a: 8b 83 fc 03 00 00                           mov    eax,DWORD PTR [ebx+0x3fc]
  473d90: 3b c7                                       cmp    eax,edi
  473d92: 74 1c                                       je     0x473db0
  473d94: 8d 48 ff                                    lea    ecx,[eax-0x1]
  473d97: 8a 01                                       mov    al,BYTE PTR [ecx]
  473d99: 84 c0                                       test   al,al
  473d9b: 74 0a                                       je     0x473da7
  473d9d: 3c ff                                       cmp    al,0xff
  473d9f: 74 06                                       je     0x473da7
  473da1: fe c8                                       dec    al
  473da3: 88 01                                       mov    BYTE PTR [ecx],al
  473da5: eb 09                                       jmp    0x473db0
  473da7: 51                                          push   ecx
  473da8: e8 b3 e2 fc ff                              call   0x442060
  473dad: 83 c4 04                                    add    esp,0x4
  473db0: 89 bb fc 03 00 00                           mov    DWORD PTR [ebx+0x3fc],edi
  473db6: 89 bb 00 04 00 00                           mov    DWORD PTR [ebx+0x400],edi
  473dbc: 89 bb 04 04 00 00                           mov    DWORD PTR [ebx+0x404],edi
  473dc2: 89 75 e0                                    mov    DWORD PTR [ebp-0x20],esi
  473dc5: c7 06 04 f5 4d 00                           mov    DWORD PTR [esi],0x4df504
  473dcb: 8b 56 24                                    mov    edx,DWORD PTR [esi+0x24]
  473dce: c6 45 fc 0f                                 mov    BYTE PTR [ebp-0x4],0xf
  473dd2: 89 56 20                                    mov    DWORD PTR [esi+0x20],edx
  473dd5: 89 7e 40                                    mov    DWORD PTR [esi+0x40],edi
  473dd8: c6 46 34 08                                 mov    BYTE PTR [esi+0x34],0x8
  473ddc: 39 7e 40                                    cmp    DWORD PTR [esi+0x40],edi
  473ddf: 74 0a                                       je     0x473deb
  473de1: 8b 46 20                                    mov    eax,DWORD PTR [esi+0x20]
  473de4: 8b 08                                       mov    ecx,DWORD PTR [eax]
  473de6: 89 4e 20                                    mov    DWORD PTR [esi+0x20],ecx
  473de9: eb 07                                       jmp    0x473df2
  473deb: c7 46 40 01 00 00 00                        mov    DWORD PTR [esi+0x40],0x1
  473df2: 39 7e 20                                    cmp    DWORD PTR [esi+0x20],edi
  473df5: 74 09                                       je     0x473e00
  473df7: 8b ce                                       mov    ecx,esi
  473df9: e8 12 ec fe ff                              call   0x462a10
  473dfe: eb dc                                       jmp    0x473ddc
  473e00: 39 7e 40                                    cmp    DWORD PTR [esi+0x40],edi
  473e03: 74 04                                       je     0x473e09
  473e05: c6 46 34 07                                 mov    BYTE PTR [esi+0x34],0x7
  473e09: 89 7e 40                                    mov    DWORD PTR [esi+0x40],edi
  473e0c: c7 06 8c e5 4d 00                           mov    DWORD PTR [esi],0x4de58c
  473e12: 83 c6 08                                    add    esi,0x8
  473e15: 56                                          push   esi
  473e16: ff 15 e0 e0 4d 00                           call   DWORD PTR ds:0x4de0e0
  473e1c: 8d b3 68 03 00 00                           lea    esi,[ebx+0x368]
  473e22: 89 75 e0                                    mov    DWORD PTR [ebp-0x20],esi
  473e25: c7 06 6c e8 4d 00                           mov    DWORD PTR [esi],0x4de86c
  473e2b: 8b 56 24                                    mov    edx,DWORD PTR [esi+0x24]
  473e2e: c6 45 fc 10                                 mov    BYTE PTR [ebp-0x4],0x10
  473e32: 89 56 20                                    mov    DWORD PTR [esi+0x20],edx
  473e35: 89 7e 40                                    mov    DWORD PTR [esi+0x40],edi
  473e38: c6 46 34 08                                 mov    BYTE PTR [esi+0x34],0x8
  473e3c: 39 7e 40                                    cmp    DWORD PTR [esi+0x40],edi
  473e3f: 74 0a                                       je     0x473e4b
  473e41: 8b 46 20                                    mov    eax,DWORD PTR [esi+0x20]
  473e44: 8b 08                                       mov    ecx,DWORD PTR [eax]
  473e46: 89 4e 20                                    mov    DWORD PTR [esi+0x20],ecx
  473e49: eb 07                                       jmp    0x473e52
  473e4b: c7 46 40 01 00 00 00                        mov    DWORD PTR [esi+0x40],0x1
  473e52: 39 7e 20                                    cmp    DWORD PTR [esi+0x20],edi
  473e55: 74 09                                       je     0x473e60
  473e57: 8b ce                                       mov    ecx,esi
  473e59: e8 f2 06 fb ff                              call   0x424550
  473e5e: eb dc                                       jmp    0x473e3c
  473e60: 39 7e 40                                    cmp    DWORD PTR [esi+0x40],edi
  473e63: 74 04                                       je     0x473e69
  473e65: c6 46 34 07                                 mov    BYTE PTR [esi+0x34],0x7
  473e69: 89 7e 40                                    mov    DWORD PTR [esi+0x40],edi
  473e6c: c7 06 8c e5 4d 00                           mov    DWORD PTR [esi],0x4de58c
  473e72: 83 c6 08                                    add    esi,0x8
  473e75: 56                                          push   esi
  473e76: ff 15 e0 e0 4d 00                           call   DWORD PTR ds:0x4de0e0
  473e7c: 8d 8b b8 02 00 00                           lea    ecx,[ebx+0x2b8]
  473e82: c6 45 fc 0c                                 mov    BYTE PTR [ebp-0x4],0xc
  473e86: e8 d5 58 f9 ff                              call   0x409760
  473e8b: 8d 8b 48 02 00 00                           lea    ecx,[ebx+0x248]
  473e91: c6 45 fc 0b                                 mov    BYTE PTR [ebp-0x4],0xb
  473e95: e8 c6 58 f9 ff                              call   0x409760
  473e9a: 8d b3 e8 00 00 00                           lea    esi,[ebx+0xe8]
  473ea0: 89 75 e0                                    mov    DWORD PTR [ebp-0x20],esi
  473ea3: 8d 8e e0 00 00 00                           lea    ecx,[esi+0xe0]
  473ea9: c6 45 fc 12                                 mov    BYTE PTR [ebp-0x4],0x12
  473ead: e8 ae 58 f9 ff                              call   0x409760
  473eb2: 8d 4e 70                                    lea    ecx,[esi+0x70]
  473eb5: c6 45 fc 11                                 mov    BYTE PTR [ebp-0x4],0x11
  473eb9: e8 a2 58 f9 ff                              call   0x409760
  473ebe: 8b ce                                       mov    ecx,esi
  473ec0: c6 45 fc 0a                                 mov    BYTE PTR [ebp-0x4],0xa
  473ec4: e8 97 58 f9 ff                              call   0x409760
  473ec9: 8d 4b 78                                    lea    ecx,[ebx+0x78]
  473ecc: c6 45 fc 09                                 mov    BYTE PTR [ebp-0x4],0x9
  473ed0: e8 8b 58 f9 ff                              call   0x409760
  473ed5: 8d 4b 08                                    lea    ecx,[ebx+0x8]
  473ed8: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  473edf: e8 7c 58 f9 ff                              call   0x409760
  473ee4: 53                                          push   ebx
  473ee5: e8 76 e1 fc ff                              call   0x442060
  473eea: 83 c4 04                                    add    esp,0x4
  473eed: 8b 45 f0                                    mov    eax,DWORD PTR [ebp-0x10]
  473ef0: 8b 55 dc                                    mov    edx,DWORD PTR [ebp-0x24]
  473ef3: 8b 4a 08                                    mov    ecx,DWORD PTR [edx+0x8]
  473ef6: 05 e4 00 00 00                              add    eax,0xe4
  473efb: 3b c1                                       cmp    eax,ecx
  473efd: 89 45 f0                                    mov    DWORD PTR [ebp-0x10],eax
  473f00: 0f 85 44 f7 ff ff                           jne    0x47364a
  473f06: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  473f09: 5f                                          pop    edi
  473f0a: 5e                                          pop    esi
  473f0b: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  473f12: 5b                                          pop    ebx
  473f13: 8b e5                                       mov    esp,ebp
  473f15: 5d                                          pop    ebp
  473f16: c2 04 00                                    ret    0x4

; Enregistrement et remplacement de SpellMessageHandler par identifiant de sort — [0x461360,0x461555)
  461360: 55                                          push   ebp
  461361: 8b ec                                       mov    ebp,esp
  461363: 6a ff                                       push   0xffffffff
  461365: 68 b3 7a 4d 00                              push   0x4d7ab3
  46136a: 64 a1 00 00 00 00                           mov    eax,fs:0x0
  461370: 50                                          push   eax
  461371: 64 89 25 00 00 00 00                        mov    DWORD PTR fs:0x0,esp
  461378: 51                                          push   ecx
  461379: 53                                          push   ebx
  46137a: 56                                          push   esi
  46137b: 8b 75 08                                    mov    esi,DWORD PTR [ebp+0x8]
  46137e: 66 81 fe 10 27                              cmp    si,0x2710
  461383: 0f 82 73 01 00 00                           jb     0x4614fc
  461389: 81 e6 ff ff 00 00                           and    esi,0xffff
  46138f: 8d 9e f0 d8 ff ff                           lea    ebx,[esi-0x2710]
  461395: 81 fb 00 04 00 00                           cmp    ebx,0x400
  46139b: 0f 8d 1b 01 00 00                           jge    0x4614bc
  4613a1: 8b 04 9d a4 4d 51 00                        mov    eax,DWORD PTR [ebx*4+0x514da4]
  4613a8: 85 c0                                       test   eax,eax
  4613aa: 0f 84 f2 00 00 00                           je     0x4614a2
  4613b0: 56                                          push   esi
  4613b1: 68 34 6e 50 00                              push   0x506e34
  4613b6: 6a 04                                       push   0x4
  4613b8: e8 83 09 01 00                              call   0x471d40
  4613bd: 8b 34 9d a4 4d 51 00                        mov    esi,DWORD PTR [ebx*4+0x514da4]
  4613c4: 83 c4 0c                                    add    esp,0xc
  4613c7: 85 f6                                       test   esi,esi
  4613c9: 89 75 08                                    mov    DWORD PTR [ebp+0x8],esi
  4613cc: 0f 84 d0 00 00 00                           je     0x4614a2
  4613d2: 57                                          push   edi
  4613d3: 6a 01                                       push   0x1
  4613d5: 8d 8e 08 04 00 00                           lea    ecx,[esi+0x408]
  4613db: c7 45 fc 07 00 00 00                        mov    DWORD PTR [ebp-0x4],0x7
  4613e2: ff 15 14 e5 4d 00                           call   DWORD PTR ds:0x4de514
  4613e8: 6a 01                                       push   0x1
  4613ea: 8d 8e f8 03 00 00                           lea    ecx,[esi+0x3f8]
  4613f0: c6 45 fc 06                                 mov    BYTE PTR [ebp-0x4],0x6
  4613f4: ff 15 14 e5 4d 00                           call   DWORD PTR ds:0x4de514
  4613fa: 8d be b0 03 00 00                           lea    edi,[esi+0x3b0]
  461400: 89 7d f0                                    mov    DWORD PTR [ebp-0x10],edi
  461403: c7 07 04 f5 4d 00                           mov    DWORD PTR [edi],0x4df504
  461409: 8b cf                                       mov    ecx,edi
  46140b: c6 45 fc 08                                 mov    BYTE PTR [ebp-0x4],0x8
  46140f: e8 6c 15 00 00                              call   0x462980
  461414: 8b cf                                       mov    ecx,edi
  461416: e8 85 15 00 00                              call   0x4629a0
  46141b: 85 c0                                       test   eax,eax
  46141d: 74 12                                       je     0x461431
  46141f: 8b cf                                       mov    ecx,edi
  461421: e8 ea 15 00 00                              call   0x462a10
  461426: 8b cf                                       mov    ecx,edi
  461428: e8 73 15 00 00                              call   0x4629a0
  46142d: 85 c0                                       test   eax,eax
  46142f: 75 ee                                       jne    0x46141f
  461431: c7 07 8c e5 4d 00                           mov    DWORD PTR [edi],0x4de58c
  461437: 83 c7 08                                    add    edi,0x8
  46143a: 57                                          push   edi
  46143b: ff 15 e0 e0 4d 00                           call   DWORD PTR ds:0x4de0e0
  461441: 8d 8e 68 03 00 00                           lea    ecx,[esi+0x368]
  461447: c6 45 fc 04                                 mov    BYTE PTR [ebp-0x4],0x4
  46144b: e8 b0 2f fc ff                              call   0x424400
  461450: 8d 8e b8 02 00 00                           lea    ecx,[esi+0x2b8]
  461456: c6 45 fc 03                                 mov    BYTE PTR [ebp-0x4],0x3
  46145a: e8 01 83 fa ff                              call   0x409760
  46145f: 8d 8e 48 02 00 00                           lea    ecx,[esi+0x248]
  461465: c6 45 fc 02                                 mov    BYTE PTR [ebp-0x4],0x2
  461469: e8 f2 82 fa ff                              call   0x409760
  46146e: 8d 8e e8 00 00 00                           lea    ecx,[esi+0xe8]
  461474: c6 45 fc 01                                 mov    BYTE PTR [ebp-0x4],0x1
  461478: e8 33 fd ff ff                              call   0x4611b0
  46147d: 8d 4e 78                                    lea    ecx,[esi+0x78]
  461480: c6 45 fc 00                                 mov    BYTE PTR [ebp-0x4],0x0
  461484: e8 d7 82 fa ff                              call   0x409760
  461489: 8d 4e 08                                    lea    ecx,[esi+0x8]
  46148c: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  461493: e8 c8 82 fa ff                              call   0x409760
  461498: 56                                          push   esi
  461499: e8 c2 0b fe ff                              call   0x442060
  46149e: 83 c4 04                                    add    esp,0x4
  4614a1: 5f                                          pop    edi
  4614a2: 8b 45 0c                                    mov    eax,DWORD PTR [ebp+0xc]
  4614a5: 5e                                          pop    esi
  4614a6: 89 04 9d a4 4d 51 00                        mov    DWORD PTR [ebx*4+0x514da4],eax
  4614ad: 5b                                          pop    ebx
  4614ae: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  4614b1: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  4614b8: 8b e5                                       mov    esp,ebp
  4614ba: 5d                                          pop    ebp
  4614bb: c3                                          ret
  4614bc: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4614bf: e8 9a 05 07 00                              call   0x4d1a5e
  4614c4: 56                                          push   esi
  4614c5: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4614c8: 68 e4 6d 50 00                              push   0x506de4
  4614cd: 51                                          push   ecx
  4614ce: c7 45 fc 09 00 00 00                        mov    DWORD PTR [ebp-0x4],0x9
  4614d5: e8 ba 05 07 00                              call   0x4d1a94
  4614da: 8b 55 08                                    mov    edx,DWORD PTR [ebp+0x8]
  4614dd: 83 c4 0c                                    add    esp,0xc
  4614e0: 6a 00                                       push   0x0
  4614e2: 68 d8 6d 50 00                              push   0x506dd8
  4614e7: 52                                          push   edx
  4614e8: 6a 00                                       push   0x0
  4614ea: ff 15 64 e4 4d 00                           call   DWORD PTR ds:0x4de464
  4614f0: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  4614f7: 8d 4d 08                                    lea    ecx,[ebp+0x8]
  4614fa: eb 44                                       jmp    0x461540
  4614fc: 8d 4d 0c                                    lea    ecx,[ebp+0xc]
  4614ff: e8 5a 05 07 00                              call   0x4d1a5e
  461504: 81 e6 ff ff 00 00                           and    esi,0xffff
  46150a: 56                                          push   esi
  46150b: 8d 45 0c                                    lea    eax,[ebp+0xc]
  46150e: 68 88 6d 50 00                              push   0x506d88
  461513: 50                                          push   eax
  461514: c7 45 fc 0a 00 00 00                        mov    DWORD PTR [ebp-0x4],0xa
  46151b: e8 74 05 07 00                              call   0x4d1a94
  461520: 8b 4d 0c                                    mov    ecx,DWORD PTR [ebp+0xc]
  461523: 83 c4 0c                                    add    esp,0xc
  461526: 6a 00                                       push   0x0
  461528: 68 d8 6d 50 00                              push   0x506dd8
  46152d: 51                                          push   ecx
  46152e: 6a 00                                       push   0x0
  461530: ff 15 64 e4 4d 00                           call   DWORD PTR ds:0x4de464
  461536: c7 45 fc ff ff ff ff                        mov    DWORD PTR [ebp-0x4],0xffffffff
  46153d: 8d 4d 0c                                    lea    ecx,[ebp+0xc]
  461540: e8 fb 04 07 00                              call   0x4d1a40
  461545: 8b 4d f4                                    mov    ecx,DWORD PTR [ebp-0xc]
  461548: 5e                                          pop    esi
  461549: 5b                                          pop    ebx
  46154a: 64 89 0d 00 00 00 00                        mov    DWORD PTR fs:0x0,ecx
  461551: 8b e5                                       mov    esp,ebp
  461553: 5d                                          pop    ebp
  461554: c3                                          ret

; Lookup direct dans la table des sorts avec bornes — [0x462230,0x46225C)
  462230: 55                                          push   ebp
  462231: 8b ec                                       mov    ebp,esp
  462233: 8b 4d 08                                    mov    ecx,DWORD PTR [ebp+0x8]
  462236: 33 c0                                       xor    eax,eax
  462238: 66 81 f9 10 27                              cmp    cx,0x2710
  46223d: 72 1b                                       jb     0x46225a
  46223f: 81 e1 ff ff 00 00                           and    ecx,0xffff
  462245: 81 c1 f0 d8 ff ff                           add    ecx,0xffffd8f0
  46224b: 81 f9 00 04 00 00                           cmp    ecx,0x400
  462251: 7d 07                                       jge    0x46225a
  462253: 8b 04 8d a4 4d 51 00                        mov    eax,DWORD PTR [ecx*4+0x514da4]
  46225a: 5d                                          pop    ebp
  46225b: c3                                          ret

; Initialisation du tableau de 1024 slots — [0x460EF0,0x460F01)
  460ef0: 57                                          push   edi
  460ef1: b9 00 04 00 00                              mov    ecx,0x400
  460ef6: 33 c0                                       xor    eax,eax
  460ef8: bf a4 4d 51 00                              mov    edi,0x514da4
  460efd: f3 ab                                       rep stos DWORD PTR es:[edi],eax
  460eff: 5f                                          pop    edi
  460f00: c3                                          ret

