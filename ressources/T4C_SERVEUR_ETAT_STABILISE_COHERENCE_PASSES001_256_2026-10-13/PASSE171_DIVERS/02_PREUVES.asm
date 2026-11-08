; Assembleur statique : instructions validees GNU + LLVM et octets PE
; SHA-256 du PE : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
  0040fbaf: 8b 4d 14                                         mov    ecx,DWORD PTR [ebp+0x14]  ; fallthrough_source ; source initiale 0x40fbac
  0040fbb2: 52                                               push   edx  ; 0x40fbaf+3 ; source initiale 0x40fbac
  0040fbb3: 8d 45 dc                                         lea    eax,[ebp-0x24]  ; 0x40fbb2+1 ; source initiale 0x40fbac
  0040fbb6: 50                                               push   eax  ; 0x40fbb3+3 ; source initiale 0x40fbac
  0040fbb7: 8b 45 08                                         mov    eax,DWORD PTR [ebp+0x8]  ; 0x40fbb6+1 ; source initiale 0x40fbac
  0040fbba: 51                                               push   ecx  ; 0x40fbb7+3 ; source initiale 0x40fbac
  0040fbbb: 8b 4d 0c                                         mov    ecx,DWORD PTR [ebp+0xc]  ; 0x40fbba+1 ; source initiale 0x40fbac
  0040fbbe: 83 ec 0c                                         sub    esp,0xc  ; 0x40fbbb+3 ; source initiale 0x40fbac
  0040fbc1: 8b d4                                            mov    edx,esp  ; 0x40fbbe+3 ; source initiale 0x40fbac
  0040fbc3: 89 02                                            mov    DWORD PTR [edx],eax  ; 0x40fbc1+2 ; source initiale 0x40fbac
  0040fbc5: 8b 45 10                                         mov    eax,DWORD PTR [ebp+0x10]  ; 0x40fbc3+2 ; source initiale 0x40fbac
  0040fbc8: 89 4a 04                                         mov    DWORD PTR [edx+0x4],ecx  ; 0x40fbc5+3 ; source initiale 0x40fbac
  0040fbcb: 89 42 08                                         mov    DWORD PTR [edx+0x8],eax  ; 0x40fbc8+3 ; source initiale 0x40fbac
  0040fbce: e8 1d ff ff ff                                   call   0x40faf0  ; 0x40fbcb+3 ; source initiale 0x40fbac
  0040fbd3: 83 c4 18                                         add    esp,0x18  ; 0x40fbce+5 ; source initiale 0x40fbac
  0040fbd6: 8d 4d dc                                         lea    ecx,[ebp-0x24]  ; 0x40fbd3+3 ; source initiale 0x40fbac
  0040fbd9: c7 45 fc ff ff ff ff                             mov    DWORD PTR [ebp-0x4],0xffffffff  ; 0x40fbd6+3 ; source initiale 0x40fbac
  0040fbe0: e8 9b 62 07 00                                   call   0x485e80  ; 0x40fbd9+7 ; source initiale 0x40fbac
  0040fbe5: 8b 4d f4                                         mov    ecx,DWORD PTR [ebp-0xc]  ; 0x40fbe0+5 ; source initiale 0x40fbac
  0040fbe8: 64 89 0d 00 00 00 00                             mov    DWORD PTR fs:0x0,ecx  ; 0x40fbe5+3 ; source initiale 0x40fbac
  0040fbef: 8b e5                                            mov    esp,ebp  ; 0x40fbe8+7 ; source initiale 0x40fbac
  0040fbf1: 5d                                               pop    ebp  ; 0x40fbef+2 ; source initiale 0x40fbac
  0040fbf2: c3                                               ret  ; 0x40fbf1+1 ; source initiale 0x40fbac
  0041a5b9: 5d                                               pop    ebp  ; fallthrough_source ; source initiale 0x41a5b7
  0041a5ba: c2 08 00                                         ret    0x8  ; 0x41a5b9+1 ; source initiale 0x41a5b7
  00462300: 5e                                               pop    esi  ; fallthrough_source ; source initiale 0x4622ff
  00462301: 33 c0                                            xor    eax,eax  ; 0x462300+1 ; source initiale 0x4622ff
  00462303: 5b                                               pop    ebx  ; 0x462301+2 ; source initiale 0x4622ff
  00462304: 8b 4d f4                                         mov    ecx,DWORD PTR [ebp-0xc]  ; 0x462303+1 ; source initiale 0x4622ff
  00462307: 64 89 0d 00 00 00 00                             mov    DWORD PTR fs:0x0,ecx  ; 0x462304+3 ; source initiale 0x4622ff
  0046230e: 8b e5                                            mov    esp,ebp  ; 0x462307+7 ; source initiale 0x4622ff
  00462310: 5d                                               pop    ebp  ; 0x46230e+2 ; source initiale 0x4622ff
  00462311: c3                                               ret  ; 0x462310+1 ; source initiale 0x4622ff
  0048ba25: 08 56 57                                         or     BYTE PTR [esi+0x57],dl  ; fallthrough_source ; source initiale 0x48ba24
  0048ba28: 33 c9                                            xor    ecx,ecx  ; 0x48ba25+3 ; source initiale 0x48ba24
  0048ba2a: 8b f8                                            mov    edi,eax  ; 0x48ba28+2 ; source initiale 0x48ba24
  0048ba2c: 89 0f                                            mov    DWORD PTR [edi],ecx  ; 0x48ba2a+2 ; source initiale 0x48ba24
  0048ba2e: 33 d2                                            xor    edx,edx  ; 0x48ba2c+2 ; source initiale 0x48ba24
  0048ba30: 33 f6                                            xor    esi,esi  ; 0x48ba2e+2 ; source initiale 0x48ba24
  0048ba32: 89 57 04                                         mov    DWORD PTR [edi+0x4],edx  ; 0x48ba30+2 ; source initiale 0x48ba24
  0048ba35: 89 77 08                                         mov    DWORD PTR [edi+0x8],esi  ; 0x48ba32+3 ; source initiale 0x48ba24
  0048ba38: 5f                                               pop    edi  ; 0x48ba35+3 ; source initiale 0x48ba24
  0048ba39: 5e                                               pop    esi  ; 0x48ba38+1 ; source initiale 0x48ba24
  0048ba3a: 5d                                               pop    ebp  ; 0x48ba39+1 ; source initiale 0x48ba24
  0048ba3b: c2 04 00                                         ret    0x4  ; 0x48ba3a+1 ; source initiale 0x48ba24
  0048ed40: 8b 46 20                                         mov    eax,DWORD PTR [esi+0x20]  ; fallthrough_source ; source initiale 0x48ed3d
  0048ed43: c7 00 00 00 00 00                                mov    DWORD PTR [eax],0x0  ; 0x48ed40+3 ; source initiale 0x48ed3d
  0048ed49: 8b 4e 20                                         mov    ecx,DWORD PTR [esi+0x20]  ; 0x48ed43+6 ; source initiale 0x48ed3d
  0048ed4c: 89 59 08                                         mov    DWORD PTR [ecx+0x8],ebx  ; 0x48ed49+3 ; source initiale 0x48ed3d
  0048ed4f: eb 14                                            jmp    0x48ed65  ; 0x48ed4c+3 ; source initiale 0x48ed3d
  004a7310: 8b 46 18                                         mov    eax,DWORD PTR [esi+0x18]  ; fallthrough_source ; source initiale 0x4a730e
  004a7313: 57                                               push   edi  ; 0x4a7310+3 ; source initiale 0x4a730e
  004a7314: 50                                               push   eax  ; 0x4a7313+1 ; source initiale 0x4a730e
  004a7315: 8b cb                                            mov    ecx,ebx  ; 0x4a7314+1 ; source initiale 0x4a730e
  004a7317: e8 b4 25 ff ff                                   call   0x4998d0  ; 0x4a7315+2 ; source initiale 0x4a730e
  004a731c: 8b 56 18                                         mov    edx,DWORD PTR [esi+0x18]  ; 0x4a7317+5 ; source initiale 0x4a730e
  004a731f: 8b 4e 10                                         mov    ecx,DWORD PTR [esi+0x10]  ; 0x4a731c+3 ; source initiale 0x4a730e
  004a7322: 52                                               push   edx  ; 0x4a731f+3 ; source initiale 0x4a730e
  004a7323: 8d 85 00 f8 ff ff                                lea    eax,[ebp-0x800]  ; 0x4a7322+1 ; source initiale 0x4a730e
  004a7329: 68 8c f5 50 00                                   push   0x50f58c  ; 0x4a7323+6 ; source initiale 0x4a730e
  004a732e: c6 85 00 f8 ff ff 00                             mov    BYTE PTR [ebp-0x800],0x0  ; 0x4a7329+5 ; source initiale 0x4a730e
  004a7335: 8b 39                                            mov    edi,DWORD PTR [ecx]  ; 0x4a732e+7 ; source initiale 0x4a730e
  004a7337: 50                                               push   eax  ; 0x4a7335+2 ; source initiale 0x4a730e
  004a7338: e8 03 c6 f5 ff                                   call   0x403940  ; 0x4a7337+1 ; source initiale 0x4a730e
  004a733d: 8b 4e 0c                                         mov    ecx,DWORD PTR [esi+0xc]  ; 0x4a7338+5 ; source initiale 0x4a730e
  004a7340: 83 c4 0c                                         add    esp,0xc  ; 0x4a733d+3 ; source initiale 0x4a730e
  004a7343: 50                                               push   eax  ; 0x4a7340+3 ; source initiale 0x4a730e
  004a7344: 51                                               push   ecx  ; 0x4a7343+1 ; source initiale 0x4a730e
  004a7345: 8b 4e 10                                         mov    ecx,DWORD PTR [esi+0x10]  ; 0x4a7344+1 ; source initiale 0x4a730e
  004a7348: ff 57 04                                         call   DWORD PTR [edi+0x4]  ; 0x4a7345+3 ; source initiale 0x4a730e
  004a734b: 8b 46 20                                         mov    eax,DWORD PTR [esi+0x20]  ; 0x4a7348+3 ; source initiale 0x4a730e
  004a734e: 85 c0                                            test   eax,eax  ; 0x4a734b+3 ; source initiale 0x4a730e
  004a7350: 75 04                                            jne    0x4a7356  ; 0x4a734e+2 ; source initiale 0x4a730e
  004a7352: 33 d2                                            xor    edx,edx  ; 0x4a7350+2 ; source initiale 0x4a730e
  004a7354: eb 16                                            jmp    0x4a736c  ; 0x4a7352+2 ; source initiale 0x4a730e
  004a7356: 8b 4e 24                                         mov    ecx,DWORD PTR [esi+0x24]  ; 0x4a7350:jne ; source initiale 0x4a730e
  004a7359: 2b c8                                            sub    ecx,eax  ; 0x4a7356+3 ; source initiale 0x4a730e
  004a735b: b8 e9 a2 8b 2e                                   mov    eax,0x2e8ba2e9  ; 0x4a7359+2 ; source initiale 0x4a730e
  004a7360: f7 e9                                            imul   ecx  ; 0x4a735b+5 ; source initiale 0x4a730e
  004a7362: c1 fa 03                                         sar    edx,0x3  ; 0x4a7360+2 ; source initiale 0x4a730e
  004a7365: 8b c2                                            mov    eax,edx  ; 0x4a7362+3 ; source initiale 0x4a730e
  004a7367: c1 e8 1f                                         shr    eax,0x1f  ; 0x4a7365+2 ; source initiale 0x4a730e
  004a736a: 03 d0                                            add    edx,eax  ; 0x4a7367+3 ; source initiale 0x4a730e
  004a736c: 52                                               push   edx  ; 0x4a7354:jmp ; source initiale 0x4a730e
  004a736d: 8b cb                                            mov    ecx,ebx  ; 0x4a736c+1 ; source initiale 0x4a730e
  004a736f: e8 5c 25 ff ff                                   call   0x4998d0  ; 0x4a736d+2 ; source initiale 0x4a730e
  004a7374: 8b 7e 20                                         mov    edi,DWORD PTR [esi+0x20]  ; 0x4a736f+5 ; source initiale 0x4a730e
  004a7377: 3b 7e 24                                         cmp    edi,DWORD PTR [esi+0x24]  ; 0x4a7374+3 ; source initiale 0x4a730e
  004a737a: 74 12                                            je     0x4a738e  ; 0x4a7377+3 ; source initiale 0x4a730e
  004a737c: 8b 17                                            mov    edx,DWORD PTR [edi]  ; 0x4a737a+2 ; source initiale 0x4a730e
  004a737e: 53                                               push   ebx  ; 0x4a737c+2 ; source initiale 0x4a730e
  004a737f: 8b cf                                            mov    ecx,edi  ; 0x4a737e+1 ; source initiale 0x4a730e
  004a7381: ff 52 04                                         call   DWORD PTR [edx+0x4]  ; 0x4a737f+2 ; source initiale 0x4a730e
  004a7384: 8b 46 24                                         mov    eax,DWORD PTR [esi+0x24]  ; 0x4a7381+3 ; source initiale 0x4a730e
  004a7387: 83 c7 2c                                         add    edi,0x2c  ; 0x4a7384+3 ; source initiale 0x4a730e
  004a738a: 3b f8                                            cmp    edi,eax  ; 0x4a7387+3 ; source initiale 0x4a730e
  004a738c: 75 ee                                            jne    0x4a737c  ; 0x4a738a+2 ; source initiale 0x4a730e
  004a738e: 5f                                               pop    edi  ; 0x4a737a:je ; source initiale 0x4a730e
  004a738f: 5e                                               pop    esi  ; 0x4a738e+1 ; source initiale 0x4a730e
  004a7390: 5b                                               pop    ebx  ; 0x4a738f+1 ; source initiale 0x4a730e
  004a7391: 8b e5                                            mov    esp,ebp  ; 0x4a7390+1 ; source initiale 0x4a730e
  004a7393: 5d                                               pop    ebp  ; 0x4a7391+2 ; source initiale 0x4a730e
  004a7394: c2 04 00                                         ret    0x4  ; 0x4a7393+1 ; source initiale 0x4a730e
  004a88a5: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; fallthrough_source ; source initiale 0x4a889f
  004a88ab: 8d 8d 20 ff ff ff                                lea    ecx,[ebp-0xe0]  ; 0x4a88a5+6 ; source initiale 0x4a889f
  004a88b1: c6 45 fc 02                                      mov    BYTE PTR [ebp-0x4],0x2  ; 0x4a88ab+6 ; source initiale 0x4a889f
  004a88b5: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; 0x4a88b1+4 ; source initiale 0x4a889f
  004a88bb: 8d 8d 30 ff ff ff                                lea    ecx,[ebp-0xd0]  ; 0x4a88b5+6 ; source initiale 0x4a889f
  004a88c1: c6 45 fc 03                                      mov    BYTE PTR [ebp-0x4],0x3  ; 0x4a88bb+6 ; source initiale 0x4a889f
  004a88c5: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; 0x4a88c1+4 ; source initiale 0x4a889f
  004a88cb: 8d 8d 40 ff ff ff                                lea    ecx,[ebp-0xc0]  ; 0x4a88c5+6 ; source initiale 0x4a889f
  004a88d1: c6 45 fc 04                                      mov    BYTE PTR [ebp-0x4],0x4  ; 0x4a88cb+6 ; source initiale 0x4a889f
  004a88d5: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; 0x4a88d1+4 ; source initiale 0x4a889f
  004a88db: 8d 8d 50 ff ff ff                                lea    ecx,[ebp-0xb0]  ; 0x4a88d5+6 ; source initiale 0x4a889f
  004a88e1: c6 45 fc 05                                      mov    BYTE PTR [ebp-0x4],0x5  ; 0x4a88db+6 ; source initiale 0x4a889f
  004a88e5: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; 0x4a88e1+4 ; source initiale 0x4a889f
  004a88eb: 8d 8d 60 ff ff ff                                lea    ecx,[ebp-0xa0]  ; 0x4a88e5+6 ; source initiale 0x4a889f
  004a88f1: c6 45 fc 06                                      mov    BYTE PTR [ebp-0x4],0x6  ; 0x4a88eb+6 ; source initiale 0x4a889f
  004a88f5: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; 0x4a88f1+4 ; source initiale 0x4a889f
  004a88fb: 8d 8d 74 ff ff ff                                lea    ecx,[ebp-0x8c]  ; 0x4a88f5+6 ; source initiale 0x4a889f
  004a8901: c6 45 fc 07                                      mov    BYTE PTR [ebp-0x4],0x7  ; 0x4a88fb+6 ; source initiale 0x4a889f
  004a8905: 89 9d 70 ff ff ff                                mov    DWORD PTR [ebp-0x90],ebx  ; 0x4a8901+4 ; source initiale 0x4a889f
  004a890b: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; 0x4a8905+6 ; source initiale 0x4a889f
  004a8911: 8d 4d ac                                         lea    ecx,[ebp-0x54]  ; 0x4a890b+6 ; source initiale 0x4a889f
  004a8914: c6 45 fc 08                                      mov    BYTE PTR [ebp-0x4],0x8  ; 0x4a8911+3 ; source initiale 0x4a889f
  004a8918: 89 5d 84                                         mov    DWORD PTR [ebp-0x7c],ebx  ; 0x4a8914+4 ; source initiale 0x4a889f
  004a891b: 89 5d 88                                         mov    DWORD PTR [ebp-0x78],ebx  ; 0x4a8918+3 ; source initiale 0x4a889f
  004a891e: 89 5d 8c                                         mov    DWORD PTR [ebp-0x74],ebx  ; 0x4a891b+3 ; source initiale 0x4a889f
  004a8921: 89 5d 90                                         mov    DWORD PTR [ebp-0x70],ebx  ; 0x4a891e+3 ; source initiale 0x4a889f
  004a8924: 89 5d 94                                         mov    DWORD PTR [ebp-0x6c],ebx  ; 0x4a8921+3 ; source initiale 0x4a889f
  004a8927: 89 5d 98                                         mov    DWORD PTR [ebp-0x68],ebx  ; 0x4a8924+3 ; source initiale 0x4a889f
  004a892a: 89 5d 9c                                         mov    DWORD PTR [ebp-0x64],ebx  ; 0x4a8927+3 ; source initiale 0x4a889f
  004a892d: 89 5d a0                                         mov    DWORD PTR [ebp-0x60],ebx  ; 0x4a892a+3 ; source initiale 0x4a889f
  004a8930: 88 5d a4                                         mov    BYTE PTR [ebp-0x5c],bl  ; 0x4a892d+3 ; source initiale 0x4a889f
  004a8933: 88 5d a5                                         mov    BYTE PTR [ebp-0x5b],bl  ; 0x4a8930+3 ; source initiale 0x4a889f
  004a8936: 88 5d a6                                         mov    BYTE PTR [ebp-0x5a],bl  ; 0x4a8933+3 ; source initiale 0x4a889f
  004a8939: 89 5d a8                                         mov    DWORD PTR [ebp-0x58],ebx  ; 0x4a8936+3 ; source initiale 0x4a889f
  004a893c: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; 0x4a8939+3 ; source initiale 0x4a889f
  004a8942: 8d 4d bc                                         lea    ecx,[ebp-0x44]  ; 0x4a893c+6 ; source initiale 0x4a889f
  004a8945: c6 45 fc 09                                      mov    BYTE PTR [ebp-0x4],0x9  ; 0x4a8942+3 ; source initiale 0x4a889f
  004a8949: ff 15 f8 e4 4d 00                                call   DWORD PTR ds:0x4de4f8  ; 0x4a8945+4 ; source initiale 0x4a889f
  004c4380: 52                                               push   edx  ; fallthrough_source ; source initiale 0x4c437d
  004c4381: e8 c6 d6 00 00                                   call   0x4d1a4c  ; 0x4c4380+1 ; source initiale 0x4c437d
  004c4386: 8d 4e 10                                         lea    ecx,[esi+0x10]  ; 0x4c4381+5 ; source initiale 0x4c437d
  004c4389: e8 72 55 f4 ff                                   call   0x409900  ; 0x4c4386+3 ; source initiale 0x4c437d
  004c438e: 85 c0                                            test   eax,eax  ; 0x4c4389+5 ; source initiale 0x4c437d
  004c4390: 75 c0                                            jne    0x4c4352  ; 0x4c438e+2 ; source initiale 0x4c437d
  004c4392: 8d 4d 08                                         lea    ecx,[ebp+0x8]  ; 0x4c4390+2 ; source initiale 0x4c437d
  004c4395: c7 45 fc ff ff ff ff                             mov    DWORD PTR [ebp-0x4],0xffffffff  ; 0x4c4392+3 ; source initiale 0x4c437d
  004c439c: e8 9f d6 00 00                                   call   0x4d1a40  ; 0x4c4395+7 ; source initiale 0x4c437d
  004c43a1: 8b 4d f4                                         mov    ecx,DWORD PTR [ebp-0xc]  ; 0x4c439c+5 ; source initiale 0x4c437d
  004c43a4: 33 c0                                            xor    eax,eax  ; 0x4c43a1+3 ; source initiale 0x4c437d
  004c43a6: 64 89 0d 00 00 00 00                             mov    DWORD PTR fs:0x0,ecx  ; 0x4c43a4+2 ; source initiale 0x4c437d
  004c43ad: 5e                                               pop    esi  ; 0x4c43a6+7 ; source initiale 0x4c437d
  004c43ae: 8b e5                                            mov    esp,ebp  ; 0x4c43ad+1 ; source initiale 0x4c437d
  004c43b0: 5d                                               pop    ebp  ; 0x4c43ae+2 ; source initiale 0x4c437d
  004c43b1: c2 08 00                                         ret    0x8  ; 0x4c43b0+1 ; source initiale 0x4c437d
  004c4850: 5d                                               pop    ebp  ; fallthrough_source ; source initiale 0x4c484e
  004c4851: c2 08 00                                         ret    0x8  ; 0x4c4850+1 ; source initiale 0x4c484e
  004c70de: c2 04 00                                         ret    0x4  ; fallthrough_source ; source initiale 0x4c70dd
  004c7210: 8b c6                                            mov    eax,esi  ; fallthrough_source ; source initiale 0x4c720d
  004c7212: 64 89 0d 00 00 00 00                             mov    DWORD PTR fs:0x0,ecx  ; 0x4c7210+2 ; source initiale 0x4c720d
  004c7219: 5e                                               pop    esi  ; 0x4c7212+7 ; source initiale 0x4c720d
  004c721a: 8b e5                                            mov    esp,ebp  ; 0x4c7219+1 ; source initiale 0x4c720d
  004c721c: 5d                                               pop    ebp  ; 0x4c721a+2 ; source initiale 0x4c720d
  004c721d: c2 08 00                                         ret    0x8  ; 0x4c721c+1 ; source initiale 0x4c720d
