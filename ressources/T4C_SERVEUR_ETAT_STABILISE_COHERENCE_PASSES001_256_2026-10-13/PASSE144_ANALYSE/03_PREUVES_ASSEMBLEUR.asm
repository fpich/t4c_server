; PASSE 144  PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les lignes sont des instructions et non du code source modifié
  0043efa0: 55                                               push ebp
  0043efa1: 8b ec                                            mov ebp,esp
  0043efa3: 6a ff                                            push 0xffffffff
  0043efa5: 68 88 60 4d 00                                   push 0x4d6088
  0043efaa: 64 a1 00 00 00 00                                mov eax,fs:0x0
  0043efb0: 50                                               push eax
  0043efb1: 64 89 25 00 00 00 00                             mov DWORD PTR fs:0x0,esp
  0043efb8: 51                                               push ecx
  0043efb9: b8 c8 12 00 00                                   mov eax,0x12c8
  0043efbe: e8 ed 2c 09 00                                   call 0x4d1cb0
  0043efc3: 53                                               push ebx
  0043efc4: 56                                               push esi
  0043efc5: 57                                               push edi
  0043efc6: 89 65 f0                                         mov DWORD PTR [ebp-0x10],esp
  0043efc9: 68 03 80 00 00                                   push 0x8003
  0043efce: ff 15 a8 e1 4d 00                                call DWORD PTR ds:0x4de1a8
  0043efd4: 68 f0 ee 43 00                                   push 0x43eef0
  0043efd9: 6a 16                                            push 0x16
  0043efdb: ff 15 18 e3 4d 00                                call DWORD PTR ds:0x4de318
  0043efe1: 83 c4 08                                         add esp,0x8
  0043efe4: 68 70 ea 43 00                                   push 0x43ea70
  0043efe9: ff 15 34 e1 4d 00                                call DWORD PTR ds:0x4de134
  0043efef: a3 f8 42 51 00                                   mov ds:0x5142f8,eax
  0043eff4: a1 00 60 56 00                                   mov eax,ds:0x566000
  0043eff9: 33 ff                                            xor edi,edi
  0043effb: 3b c7                                            cmp eax,edi
  0043effd: 0f 85 1b 1e 00 00                                jne 0x440e1e
  0043f003: 8d 85 28 ed ff ff                                lea eax,[ebp-0x12d8]
  0043f009: 50                                               push eax
  0043f00a: 6a 02                                            push 0x2
  0043f00c: c7 05 00 60 56 00 01 00 00 00                    mov DWORD PTR ds:0x566000,0x1
  0043f016: e8 3b 35 09 00                                   call 0x4d2556
  0043f01b: 85 c0                                            test eax,eax
  0043f01d: 74 25                                            je 0x43f044
  0043f01f: 57                                               push edi
  0043f020: 68 ec 10 50 00                                   push 0x5010ec
  0043f025: 68 24 46 50 00                                   push 0x504624
  0043f02a: 57                                               push edi
  0043f02b: ff 15 64 e4 4d 00                                call DWORD PTR ds:0x4de464
  0043f031: 33 c0                                            xor eax,eax
  0043f033: 8b 4d f4                                         mov ecx,DWORD PTR [ebp-0xc]
  0043f036: 64 89 0d 00 00 00 00                             mov DWORD PTR fs:0x0,ecx
  0043f03d: 5f                                               pop edi
  0043f03e: 5e                                               pop esi
  0043f03f: 5b                                               pop ebx
  0043f040: 8b e5                                            mov esp,ebp
  0043f042: 5d                                               pop ebp
  0043f043: c3                                               ret 
  0043f044: 8d 4d d8                                         lea ecx,[ebp-0x28]
  0043f047: 51                                               push ecx
  0043f048: 8d 95 b8 f8 ff ff                                lea edx,[ebp-0x748]
  0043f04e: 52                                               push edx
  0043f04f: c7 45 d8 00 01 00 00                             mov DWORD PTR [ebp-0x28],0x100
  0043f056: ff 15 a4 e1 4d 00                                call DWORD PTR ds:0x4de1a4
  0043f05c: 8d 85 b8 f8 ff ff                                lea eax,[ebp-0x748]
  0043f062: 50                                               push eax
  0043f063: b9 20 42 51 00                                   mov ecx,0x514220
  0043f068: e8 eb 29 09 00                                   call 0x4d1a58
  0043f06d: 68 20 ee 43 00                                   push 0x43ee20
  0043f072: 89 7d fc                                         mov DWORD PTR [ebp-0x4],edi
  0043f075: e8 91 2c 09 00                                   call 0x4d1d0b
  0043f07a: 83 c4 04                                         add esp,0x4
  0043f07d: 8d 8d d0 fc ff ff                                lea ecx,[ebp-0x330]
  0043f083: e8 18 10 fd ff                                   call 0x4100a0
  0043f088: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f08e: c6 45 fc 01                                      mov BYTE PTR [ebp-0x4],0x1
  0043f092: e8 f9 a0 01 00                                   call 0x459190
  0043f097: 68 fc 45 50 00                                   push 0x5045fc
  0043f09c: 68 02 00 00 80                                   push 0x80000002
  0043f0a1: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f0a7: c6 45 fc 02                                      mov BYTE PTR [ebp-0x4],0x2
  0043f0ab: e8 60 a1 01 00                                   call 0x459210
  0043f0b0: 68 f0 45 50 00                                   push 0x5045f0
  0043f0b5: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f0bb: e8 20 a3 01 00                                   call 0x4593e0
  0043f0c0: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f0c6: e8 f5 a2 01 00                                   call 0x4593c0
  0043f0cb: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f0d1: c6 45 fc 01                                      mov BYTE PTR [ebp-0x4],0x1
  0043f0d5: e8 c6 a0 01 00                                   call 0x4591a0
  0043f0da: 68 08 02 00 00                                   push 0x208
  0043f0df: 8d 8d b8 f9 ff ff                                lea ecx,[ebp-0x648]
  0043f0e5: 51                                               push ecx
  0043f0e6: 57                                               push edi
  0043f0e7: ff 15 a0 e1 4d 00                                call DWORD PTR ds:0x4de1a0
  0043f0ed: 50                                               push eax
  0043f0ee: ff 15 ac e1 4d 00                                call DWORD PTR ds:0x4de1ac
  0043f0f4: bb 5c 00 00 00                                   mov ebx,0x5c
  0043f0f9: 8a 8c 05 b7 f9 ff ff                             mov cl,BYTE PTR [ebp+eax*1-0x649]
  0043f100: 48                                               dec eax
  0043f101: 3a cb                                            cmp cl,bl
  0043f103: 74 04                                            je 0x43f109
  0043f105: 3b c7                                            cmp eax,edi
  0043f107: 7d f0                                            jge 0x43f0f9
  0043f109: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f10f: c6 84 05 b9 f9 ff ff 00                          mov BYTE PTR [ebp+eax*1-0x647],0x0
  0043f117: e8 74 a0 01 00                                   call 0x459190
  0043f11c: 68 c4 45 50 00                                   push 0x5045c4
  0043f121: 68 02 00 00 80                                   push 0x80000002
  0043f126: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f12c: c6 45 fc 03                                      mov BYTE PTR [ebp-0x4],0x3
  0043f130: e8 db a0 01 00                                   call 0x459210
  0043f135: 3b c7                                            cmp eax,edi
  0043f137: 8d 95 b8 f9 ff ff                                lea edx,[ebp-0x648]
  0043f13d: 52                                               push edx
  0043f13e: 0f 84 9e 00 00 00                                je 0x43f1e2
  0043f144: 68 b8 45 50 00                                   push 0x5045b8
  0043f149: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f14f: e8 5c a1 01 00                                   call 0x4592b0
  0043f154: 50                                               push eax
  0043f155: b9 a4 42 51 00                                   mov ecx,0x5142a4
  0043f15a: e8 f9 28 09 00                                   call 0x4d1a58
  0043f15f: 8d 85 b8 f9 ff ff                                lea eax,[ebp-0x648]
  0043f165: 50                                               push eax
  0043f166: 68 ac 45 50 00                                   push 0x5045ac
  0043f16b: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f171: e8 3a a1 01 00                                   call 0x4592b0
  0043f176: 50                                               push eax
  0043f177: b9 a0 42 51 00                                   mov ecx,0x5142a0
  0043f17c: e8 d7 28 09 00                                   call 0x4d1a58
  0043f181: b9 a4 42 51 00                                   mov ecx,0x5142a4
  0043f186: e8 f1 28 09 00                                   call 0x4d1a7c
  0043f18b: a1 a4 42 51 00                                   mov eax,ds:0x5142a4
  0043f190: 8b 48 f8                                         mov ecx,DWORD PTR [eax-0x8]
  0043f193: 38 5c 01 ff                                      cmp BYTE PTR [ecx+eax*1-0x1],bl
  0043f197: 74 0b                                            je 0x43f1a4
  0043f199: 53                                               push ebx
  0043f19a: b9 a4 42 51 00                                   mov ecx,0x5142a4
  0043f19f: e8 ea 28 09 00                                   call 0x4d1a8e
  0043f1a4: b9 a0 42 51 00                                   mov ecx,0x5142a0
  0043f1a9: e8 ce 28 09 00                                   call 0x4d1a7c
  0043f1ae: a1 a0 42 51 00                                   mov eax,ds:0x5142a0
  0043f1b3: 8b 48 f8                                         mov ecx,DWORD PTR [eax-0x8]
  0043f1b6: 38 5c 01 ff                                      cmp BYTE PTR [ecx+eax*1-0x1],bl
  0043f1ba: 74 0b                                            je 0x43f1c7
  0043f1bc: 53                                               push ebx
  0043f1bd: b9 a0 42 51 00                                   mov ecx,0x5142a0
  0043f1c2: e8 c7 28 09 00                                   call 0x4d1a8e
  0043f1c7: 8b 0d a4 42 51 00                                mov ecx,DWORD PTR ds:0x5142a4
  0043f1cd: 57                                               push edi
  0043f1ce: 51                                               push ecx
  0043f1cf: ff 15 98 e1 4d 00                                call DWORD PTR ds:0x4de198
  0043f1d5: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f1db: e8 e0 a1 01 00                                   call 0x4593c0
  0043f1e0: eb 61                                            jmp 0x43f243
  0043f1e2: b9 a4 42 51 00                                   mov ecx,0x5142a4
  0043f1e7: e8 6c 28 09 00                                   call 0x4d1a58
  0043f1ec: 8d 85 b8 f9 ff ff                                lea eax,[ebp-0x648]
  0043f1f2: 50                                               push eax
  0043f1f3: b9 a0 42 51 00                                   mov ecx,0x5142a0
  0043f1f8: e8 5b 28 09 00                                   call 0x4d1a58
  0043f1fd: b9 a4 42 51 00                                   mov ecx,0x5142a4
  0043f202: e8 75 28 09 00                                   call 0x4d1a7c
  0043f207: a1 a4 42 51 00                                   mov eax,ds:0x5142a4
  0043f20c: 8b 48 f8                                         mov ecx,DWORD PTR [eax-0x8]
  0043f20f: 38 5c 01 ff                                      cmp BYTE PTR [ecx+eax*1-0x1],bl
  0043f213: 74 0b                                            je 0x43f220
  0043f215: 53                                               push ebx
  0043f216: b9 a4 42 51 00                                   mov ecx,0x5142a4
  0043f21b: e8 6e 28 09 00                                   call 0x4d1a8e
  0043f220: b9 a0 42 51 00                                   mov ecx,0x5142a0
  0043f225: e8 52 28 09 00                                   call 0x4d1a7c
  0043f22a: a1 a0 42 51 00                                   mov eax,ds:0x5142a0
  0043f22f: 8b 48 f8                                         mov ecx,DWORD PTR [eax-0x8]
  0043f232: 38 5c 01 ff                                      cmp BYTE PTR [ecx+eax*1-0x1],bl
  0043f236: 74 0b                                            je 0x43f243
  0043f238: 53                                               push ebx
  0043f239: b9 a0 42 51 00                                   mov ecx,0x5142a0
  0043f23e: e8 4b 28 09 00                                   call 0x4d1a8e
  0043f243: 68 a0 42 51 00                                   push 0x5142a0
  0043f248: b9 f0 42 51 00                                   mov ecx,0x5142f0
  0043f24d: e8 f4 27 09 00                                   call 0x4d1a46
  0043f252: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043f258: 66 c7 05 7e 42 51 00 33 00                       mov WORD PTR ds:0x51427e,0x33
  0043f261: e8 2a 9f 01 00                                   call 0x459190
  0043f266: 68 90 30 50 00                                   push 0x503090
  0043f26b: 68 02 00 00 80                                   push 0x80000002
  0043f270: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043f276: c6 45 fc 04                                      mov BYTE PTR [ebp-0x4],0x4
  0043f27a: e8 91 9f 01 00                                   call 0x459210
  0043f27f: 57                                               push edi
  0043f280: 68 98 45 50 00                                   push 0x504598
  0043f285: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043f28b: e8 70 a0 01 00                                   call 0x459300
  0043f290: 3b c7                                            cmp eax,edi
  0043f292: 74 07                                            je 0x43f29b
  0043f294: 80 0d 7e 42 51 00 0c                             or BYTE PTR ds:0x51427e,0xc
  0043f29b: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043f2a1: c6 45 fc 03                                      mov BYTE PTR [ebp-0x4],0x3
  0043f2a5: e8 f6 9e 01 00                                   call 0x4591a0
  0043f2aa: 68 a4 42 51 00                                   push 0x5142a4
  0043f2af: 8d 4d ec                                         lea ecx,[ebp-0x14]
  0043f2b2: e8 95 27 09 00                                   call 0x4d1a4c
  0043f2b7: bb 05 00 00 00                                   mov ebx,0x5
  0043f2bc: 68 8c 45 50 00                                   push 0x50458c
  0043f2c1: 8d 4d ec                                         lea ecx,[ebp-0x14]
  0043f2c4: 88 5d fc                                         mov BYTE PTR [ebp-0x4],bl
  0043f2c7: e8 86 27 09 00                                   call 0x4d1a52
  0043f2cc: 8d 4d ec                                         lea ecx,[ebp-0x14]
  0043f2cf: 51                                               push ecx
  0043f2d0: b9 80 42 51 00                                   mov ecx,0x514280
  0043f2d5: e8 6c 27 09 00                                   call 0x4d1a46
  0043f2da: 8d 4d ec                                         lea ecx,[ebp-0x14]
  0043f2dd: c6 45 fc 03                                      mov BYTE PTR [ebp-0x4],0x3
  0043f2e1: e8 5a 27 09 00                                   call 0x4d1a40
  0043f2e6: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f2ec: e8 9f 9e 01 00                                   call 0x459190
  0043f2f1: 68 5c 45 50 00                                   push 0x50455c
  0043f2f6: 68 02 00 00 80                                   push 0x80000002
  0043f2fb: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f301: c6 45 fc 06                                      mov BYTE PTR [ebp-0x4],0x6
  0043f305: e8 06 9f 01 00                                   call 0x459210
  0043f30a: 68 6c 34 50 00                                   push 0x50346c
  0043f30f: 68 50 45 50 00                                   push 0x504550
  0043f314: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f31a: e8 91 9f 01 00                                   call 0x4592b0
  0043f31f: 50                                               push eax
  0043f320: b9 ac 42 51 00                                   mov ecx,0x5142ac
  0043f325: e8 2e 27 09 00                                   call 0x4d1a58
  0043f32a: 68 38 45 50 00                                   push 0x504538
  0043f32f: 68 2c 45 50 00                                   push 0x50452c
  0043f334: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f33a: e8 71 9f 01 00                                   call 0x4592b0
  0043f33f: 50                                               push eax
  0043f340: b9 b0 42 51 00                                   mov ecx,0x5142b0
  0043f345: e8 0e 27 09 00                                   call 0x4d1a58
  0043f34a: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f350: c6 45 fc 03                                      mov BYTE PTR [ebp-0x4],0x3
  0043f354: e8 47 9e 01 00                                   call 0x4591a0
  0043f359: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f35f: e8 2c 9e 01 00                                   call 0x459190
  0043f364: 68 f4 44 50 00                                   push 0x5044f4
  0043f369: 68 02 00 00 80                                   push 0x80000002
  0043f36e: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f374: c6 45 fc 07                                      mov BYTE PTR [ebp-0x4],0x7
  0043f378: e8 93 9e 01 00                                   call 0x459210
  0043f37d: 3b c7                                            cmp eax,edi
  0043f37f: 74 31                                            je 0x43f3b2
  0043f381: 6a 02                                            push 0x2
  0043f383: 68 e4 44 50 00                                   push 0x5044e4
  0043f388: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f38e: e8 6d 9f 01 00                                   call 0x459300
  0043f393: 57                                               push edi
  0043f394: 68 dc 44 50 00                                   push 0x5044dc
  0043f399: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f39f: 66 a3 b4 42 51 00                                mov ds:0x5142b4,ax
  0043f3a5: e8 56 9f 01 00                                   call 0x459300
  0043f3aa: 66 a3 b6 42 51 00                                mov ds:0x5142b6,ax
  0043f3b0: eb 0e                                            jmp 0x43f3c0
  0043f3b2: 66 89 3d b4 42 51 00                             mov WORD PTR ds:0x5142b4,di
  0043f3b9: 66 89 3d b6 42 51 00                             mov WORD PTR ds:0x5142b6,di
  0043f3c0: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f3c6: c6 45 fc 03                                      mov BYTE PTR [ebp-0x4],0x3
  0043f3ca: e8 d1 9d 01 00                                   call 0x4591a0
  0043f3cf: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f3d5: e8 b6 9d 01 00                                   call 0x459190
  0043f3da: 68 a8 44 50 00                                   push 0x5044a8
  0043f3df: 68 02 00 00 80                                   push 0x80000002
  0043f3e4: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f3ea: c6 45 fc 08                                      mov BYTE PTR [ebp-0x4],0x8
  0043f3ee: e8 1d 9e 01 00                                   call 0x459210
  0043f3f3: 3b c7                                            cmp eax,edi
  0043f3f5: 74 18                                            je 0x43f40f
  0043f3f7: 57                                               push edi
  0043f3f8: 68 98 44 50 00                                   push 0x504498
  0043f3fd: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f403: e8 f8 9e 01 00                                   call 0x459300
  0043f408: a3 d4 42 51 00                                   mov ds:0x5142d4,eax
  0043f40d: eb 06                                            jmp 0x43f415
  0043f40f: 89 3d d4 42 51 00                                mov DWORD PTR ds:0x5142d4,edi
  0043f415: 68 a8 44 50 00                                   push 0x5044a8
  0043f41a: 68 02 00 00 80                                   push 0x80000002
  0043f41f: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f425: e8 e6 9d 01 00                                   call 0x459210
  0043f42a: 3b c7                                            cmp eax,edi
  0043f42c: 74 18                                            je 0x43f446
  0043f42e: 57                                               push edi
  0043f42f: 68 84 44 50 00                                   push 0x504484
  0043f434: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f43a: e8 c1 9e 01 00                                   call 0x459300
  0043f43f: a3 d8 42 51 00                                   mov ds:0x5142d8,eax
  0043f444: eb 06                                            jmp 0x43f44c
  0043f446: 89 3d d8 42 51 00                                mov DWORD PTR ds:0x5142d8,edi
  0043f44c: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043f452: c6 45 fc 03                                      mov BYTE PTR [ebp-0x4],0x3
  0043f456: e8 45 9d 01 00                                   call 0x4591a0
  0043f45b: e8 70 21 03 00                                   call 0x4715d0
  0043f460: 68 6c 44 50 00                                   push 0x50446c
  0043f465: 68 80 00 00 00                                   push 0x80
  0043f46a: e8 d1 28 03 00                                   call 0x471d40
  0043f46f: 83 c4 08                                         add esp,0x8
  0043f472: 68 54 44 50 00                                   push 0x504454
  0043f477: 68 80 00 00 00                                   push 0x80
  0043f47c: e8 bf 28 03 00                                   call 0x471d40
  0043f481: 83 c4 08                                         add esp,0x8
  0043f484: 66 39 3d b6 42 51 00                             cmp WORD PTR ds:0x5142b6,di
  0043f48b: 74 3a                                            je 0x43f4c7
  0043f48d: 8b 15 b4 42 51 00                                mov edx,DWORD PTR ds:0x5142b4
  0043f493: 81 e2 ff ff 00 00                                and edx,0xffff
  0043f499: 52                                               push edx
  0043f49a: 68 38 44 50 00                                   push 0x504438
  0043f49f: 68 00 04 00 00                                   push 0x400
  0043f4a4: e8 97 28 03 00                                   call 0x471d40
  0043f4a9: 33 c0                                            xor eax,eax
  0043f4ab: 66 a1 b6 42 51 00                                mov ax,ds:0x5142b6
  0043f4b1: 83 c4 0c                                         add esp,0xc
  0043f4b4: 50                                               push eax
  0043f4b5: 68 1c 44 50 00                                   push 0x50441c
  0043f4ba: 68 00 04 00 00                                   push 0x400
  0043f4bf: e8 7c 28 03 00                                   call 0x471d40
  0043f4c4: 83 c4 0c                                         add esp,0xc
  0043f4c7: 57                                               push edi
  0043f4c8: e8 43 28 03 00                                   call 0x471d10
  0043f4cd: 83 c4 04                                         add esp,0x4
  0043f4d0: 3b c7                                            cmp eax,edi
  0043f4d2: 74 1c                                            je 0x43f4f0
  0043f4d4: 57                                               push edi
  0043f4d5: e8 36 28 03 00                                   call 0x471d10
  0043f4da: 83 c4 04                                         add esp,0x4
  0043f4dd: 68 6c 44 50 00                                   push 0x50446c
  0043f4e2: 68 80 00 00 00                                   push 0x80
  0043f4e7: 50                                               push eax
  0043f4e8: e8 03 f6 08 00                                   call 0x4ceaf0
  0043f4ed: 83 c4 0c                                         add esp,0xc
  0043f4f0: 57                                               push edi
  0043f4f1: e8 1a 28 03 00                                   call 0x471d10
  0043f4f6: 83 c4 04                                         add esp,0x4
  0043f4f9: 3b c7                                            cmp eax,edi
  0043f4fb: 74 1c                                            je 0x43f519
  0043f4fd: 57                                               push edi
  0043f4fe: e8 0d 28 03 00                                   call 0x471d10
  0043f503: 83 c4 04                                         add esp,0x4
  0043f506: 68 54 44 50 00                                   push 0x504454
  0043f50b: 68 80 00 00 00                                   push 0x80
  0043f510: 50                                               push eax
  0043f511: e8 da f5 08 00                                   call 0x4ceaf0
  0043f516: 83 c4 0c                                         add esp,0xc
  0043f519: 6a 01                                            push 0x1
  0043f51b: e8 f0 27 03 00                                   call 0x471d10
  0043f520: 83 c4 04                                         add esp,0x4
  0043f523: 3b c7                                            cmp eax,edi
  0043f525: 74 1d                                            je 0x43f544
  0043f527: 6a 01                                            push 0x1
  0043f529: e8 e2 27 03 00                                   call 0x471d10
  0043f52e: 83 c4 04                                         add esp,0x4
  0043f531: 68 6c 44 50 00                                   push 0x50446c
  0043f536: 68 80 00 00 00                                   push 0x80
  0043f53b: 50                                               push eax
  0043f53c: e8 af f5 08 00                                   call 0x4ceaf0
  0043f541: 83 c4 0c                                         add esp,0xc
  0043f544: 6a 01                                            push 0x1
  0043f546: e8 c5 27 03 00                                   call 0x471d10
  0043f54b: 83 c4 04                                         add esp,0x4
  0043f54e: 3b c7                                            cmp eax,edi
  0043f550: 74 1d                                            je 0x43f56f
  0043f552: 6a 01                                            push 0x1
  0043f554: e8 b7 27 03 00                                   call 0x471d10
  0043f559: 83 c4 04                                         add esp,0x4
  0043f55c: 68 54 44 50 00                                   push 0x504454
  0043f561: 68 80 00 00 00                                   push 0x80
  0043f566: 50                                               push eax
  0043f567: e8 84 f5 08 00                                   call 0x4ceaf0
  0043f56c: 83 c4 0c                                         add esp,0xc
  0043f56f: 6a 02                                            push 0x2
  0043f571: e8 9a 27 03 00                                   call 0x471d10
  0043f576: 83 c4 04                                         add esp,0x4
  0043f579: 3b c7                                            cmp eax,edi
  0043f57b: 74 1d                                            je 0x43f59a
  0043f57d: 6a 02                                            push 0x2
  0043f57f: e8 8c 27 03 00                                   call 0x471d10
  0043f584: 83 c4 04                                         add esp,0x4
  0043f587: 68 6c 44 50 00                                   push 0x50446c
  0043f58c: 68 80 00 00 00                                   push 0x80
  0043f591: 50                                               push eax
  0043f592: e8 59 f5 08 00                                   call 0x4ceaf0
  0043f597: 83 c4 0c                                         add esp,0xc
  0043f59a: 6a 02                                            push 0x2
  0043f59c: e8 6f 27 03 00                                   call 0x471d10
  0043f5a1: 83 c4 04                                         add esp,0x4
  0043f5a4: 3b c7                                            cmp eax,edi
  0043f5a6: 74 1d                                            je 0x43f5c5
  0043f5a8: 6a 02                                            push 0x2
  0043f5aa: e8 61 27 03 00                                   call 0x471d10
  0043f5af: 83 c4 04                                         add esp,0x4
  0043f5b2: 68 54 44 50 00                                   push 0x504454
  0043f5b7: 68 80 00 00 00                                   push 0x80
  0043f5bc: 50                                               push eax
  0043f5bd: e8 2e f5 08 00                                   call 0x4ceaf0
  0043f5c2: 83 c4 0c                                         add esp,0xc
  0043f5c5: 6a 03                                            push 0x3
  0043f5c7: e8 44 27 03 00                                   call 0x471d10
  0043f5cc: 83 c4 04                                         add esp,0x4
  0043f5cf: 3b c7                                            cmp eax,edi
  0043f5d1: 74 1d                                            je 0x43f5f0
  0043f5d3: 6a 03                                            push 0x3
  0043f5d5: e8 36 27 03 00                                   call 0x471d10
  0043f5da: 83 c4 04                                         add esp,0x4
  0043f5dd: 68 6c 44 50 00                                   push 0x50446c
  0043f5e2: 68 80 00 00 00                                   push 0x80
  0043f5e7: 50                                               push eax
  0043f5e8: e8 03 f5 08 00                                   call 0x4ceaf0
  0043f5ed: 83 c4 0c                                         add esp,0xc
  0043f5f0: 6a 03                                            push 0x3
  0043f5f2: e8 19 27 03 00                                   call 0x471d10
  0043f5f7: 83 c4 04                                         add esp,0x4
  0043f5fa: 3b c7                                            cmp eax,edi
  0043f5fc: 74 1d                                            je 0x43f61b
  0043f5fe: 6a 03                                            push 0x3
  0043f600: e8 0b 27 03 00                                   call 0x471d10
  0043f605: 83 c4 04                                         add esp,0x4
  0043f608: 68 54 44 50 00                                   push 0x504454
  0043f60d: 68 80 00 00 00                                   push 0x80
  0043f612: 50                                               push eax
  0043f613: e8 d8 f4 08 00                                   call 0x4ceaf0
  0043f618: 83 c4 0c                                         add esp,0xc
  0043f61b: 6a 04                                            push 0x4
  0043f61d: e8 ee 26 03 00                                   call 0x471d10
  0043f622: 83 c4 04                                         add esp,0x4
  0043f625: 3b c7                                            cmp eax,edi
  0043f627: 74 1d                                            je 0x43f646
  0043f629: 6a 04                                            push 0x4
  0043f62b: e8 e0 26 03 00                                   call 0x471d10
  0043f630: 83 c4 04                                         add esp,0x4
  0043f633: 68 6c 44 50 00                                   push 0x50446c
  0043f638: 68 80 00 00 00                                   push 0x80
  0043f63d: 50                                               push eax
  0043f63e: e8 ad f4 08 00                                   call 0x4ceaf0
  0043f643: 83 c4 0c                                         add esp,0xc
  0043f646: 6a 04                                            push 0x4
  0043f648: e8 c3 26 03 00                                   call 0x471d10
  0043f64d: 83 c4 04                                         add esp,0x4
  0043f650: 3b c7                                            cmp eax,edi
  0043f652: 74 1d                                            je 0x43f671
  0043f654: 6a 04                                            push 0x4
  0043f656: e8 b5 26 03 00                                   call 0x471d10
  0043f65b: 83 c4 04                                         add esp,0x4
  0043f65e: 68 54 44 50 00                                   push 0x504454
  0043f663: 68 80 00 00 00                                   push 0x80
  0043f668: 50                                               push eax
  0043f669: e8 82 f4 08 00                                   call 0x4ceaf0
  0043f66e: 83 c4 0c                                         add esp,0xc
  0043f671: 53                                               push ebx
  0043f672: e8 99 26 03 00                                   call 0x471d10
  0043f677: 83 c4 04                                         add esp,0x4
  0043f67a: 3b c7                                            cmp eax,edi
  0043f67c: 74 1c                                            je 0x43f69a
  0043f67e: 53                                               push ebx
  0043f67f: e8 8c 26 03 00                                   call 0x471d10
  0043f684: 83 c4 04                                         add esp,0x4
  0043f687: 68 6c 44 50 00                                   push 0x50446c
  0043f68c: 68 80 00 00 00                                   push 0x80
  0043f691: 50                                               push eax
  0043f692: e8 59 f4 08 00                                   call 0x4ceaf0
  0043f697: 83 c4 0c                                         add esp,0xc
  0043f69a: 53                                               push ebx
  0043f69b: e8 70 26 03 00                                   call 0x471d10
  0043f6a0: 83 c4 04                                         add esp,0x4
  0043f6a3: 3b c7                                            cmp eax,edi
  0043f6a5: 74 1c                                            je 0x43f6c3
  0043f6a7: 53                                               push ebx
  0043f6a8: e8 63 26 03 00                                   call 0x471d10
  0043f6ad: 83 c4 04                                         add esp,0x4
  0043f6b0: 68 54 44 50 00                                   push 0x504454
  0043f6b5: 68 80 00 00 00                                   push 0x80
  0043f6ba: 50                                               push eax
  0043f6bb: e8 30 f4 08 00                                   call 0x4ceaf0
  0043f6c0: 83 c4 0c                                         add esp,0xc
  0043f6c3: 8d 8d 6c ff ff ff                                lea ecx,[ebp-0x94]
  0043f6c9: e8 90 23 09 00                                   call 0x4d1a5e
  0043f6ce: 68 ec 43 50 00                                   push 0x5043ec
  0043f6d3: 68 02 00 00 80                                   push 0x80000002
  0043f6d8: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f6de: c6 45 fc 09                                      mov BYTE PTR [ebp-0x4],0x9
  0043f6e2: e8 29 9b 01 00                                   call 0x459210
  0043f6e7: 3b c7                                            cmp eax,edi
  0043f6e9: 0f 84 ad 00 00 00                                je 0x43f79c
  0043f6ef: 68 58 13 51 00                                   push 0x511358
  0043f6f4: 68 e4 43 50 00                                   push 0x5043e4
  0043f6f9: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f6ff: e8 ac 9b 01 00                                   call 0x4592b0
  0043f704: 50                                               push eax
  0043f705: b9 88 42 51 00                                   mov ecx,0x514288
  0043f70a: e8 49 23 09 00                                   call 0x4d1a58
  0043f70f: 8b 0d 88 42 51 00                                mov ecx,DWORD PTR ds:0x514288
  0043f715: 51                                               push ecx
  0043f716: 68 dc 43 50 00                                   push 0x5043dc
  0043f71b: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f721: e8 8a 9b 01 00                                   call 0x4592b0
  0043f726: 50                                               push eax
  0043f727: b9 8c 42 51 00                                   mov ecx,0x51428c
  0043f72c: e8 27 23 09 00                                   call 0x4d1a58
  0043f731: b9 88 42 51 00                                   mov ecx,0x514288
  0043f736: e8 47 23 09 00                                   call 0x4d1a82
  0043f73b: b9 88 42 51 00                                   mov ecx,0x514288
  0043f740: e8 37 23 09 00                                   call 0x4d1a7c
  0043f745: b9 8c 42 51 00                                   mov ecx,0x51428c
  0043f74a: e8 33 23 09 00                                   call 0x4d1a82
  0043f74f: b9 8c 42 51 00                                   mov ecx,0x51428c
  0043f754: e8 23 23 09 00                                   call 0x4d1a7c
  0043f759: 68 9d 2d 00 00                                   push 0x2d9d
  0043f75e: 68 d0 43 50 00                                   push 0x5043d0
  0043f763: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f769: e8 92 9b 01 00                                   call 0x459300
  0043f76e: 68 9d 2d 00 00                                   push 0x2d9d
  0043f773: 68 c4 43 50 00                                   push 0x5043c4
  0043f778: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f77e: 66 a3 90 42 51 00                                mov ds:0x514290,ax
  0043f784: e8 77 9b 01 00                                   call 0x459300
  0043f789: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f78f: 66 a3 92 42 51 00                                mov ds:0x514292,ax
  0043f795: e8 26 9c 01 00                                   call 0x4593c0
  0043f79a: eb 21                                            jmp 0x43f7bd
  0043f79c: 68 f4 42 50 00                                   push 0x5042f4
  0043f7a1: 6a 01                                            push 0x1
  0043f7a3: 66 c7 05 90 42 51 00 9d 2d                       mov WORD PTR ds:0x514290,0x2d9d
  0043f7ac: 66 c7 05 92 42 51 00 9e 2d                       mov WORD PTR ds:0x514292,0x2d9e
  0043f7b5: e8 86 25 03 00                                   call 0x471d40
  0043f7ba: 83 c4 08                                         add esp,0x8
  0043f7bd: 68 a8 44 50 00                                   push 0x5044a8
  0043f7c2: 68 02 00 00 80                                   push 0x80000002
  0043f7c7: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f7cd: e8 3e 9a 01 00                                   call 0x459210
  0043f7d2: 3b c7                                            cmp eax,edi
  0043f7d4: 0f 84 47 0d 00 00                                je 0x440521
  0043f7da: 53                                               push ebx
  0043f7db: 68 e8 42 50 00                                   push 0x5042e8
  0043f7e0: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f7e6: e8 15 9b 01 00                                   call 0x459300
  0043f7eb: 68 c4 09 00 00                                   push 0x9c4
  0043f7f0: 68 d4 42 50 00                                   push 0x5042d4
  0043f7f5: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f7fb: 66 a3 94 42 51 00                                mov ds:0x514294,ax
  0043f801: e8 fa 9a 01 00                                   call 0x459300
  0043f806: a3 98 42 51 00                                   mov ds:0x514298,eax
  0043f80b: ff 15 80 e1 4d 00                                call DWORD PTR ds:0x4de180
  0043f811: 8b f0                                            mov esi,eax
  0043f813: 8d 95 60 ff ff ff                                lea edx,[ebp-0xa0]
  0043f819: 52                                               push edx
  0043f81a: 8d 85 68 ff ff ff                                lea eax,[ebp-0x98]
  0043f820: 50                                               push eax
  0043f821: 56                                               push esi
  0043f822: ff 15 94 e1 4d 00                                call DWORD PTR ds:0x4de194
  0043f828: 6a ff                                            push 0xffffffff
  0043f82a: 68 c4 42 50 00                                   push 0x5042c4
  0043f82f: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f835: e8 c6 9a 01 00                                   call 0x459300
  0043f83a: 23 85 68 ff ff ff                                and eax,DWORD PTR [ebp-0x98]
  0043f840: 50                                               push eax
  0043f841: 56                                               push esi
  0043f842: ff 15 90 e1 4d 00                                call DWORD PTR ds:0x4de190
  0043f848: 68 58 11 50 00                                   push 0x501158
  0043f84d: 68 bc 42 50 00                                   push 0x5042bc
  0043f852: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f858: c6 85 b8 f0 ff ff 00                             mov BYTE PTR [ebp-0xf48],0x0
  0043f85f: bf 01 00 00 00                                   mov edi,0x1
  0043f864: e8 47 9a 01 00                                   call 0x4592b0
  0043f869: 50                                               push eax
  0043f86a: 8d 4d a0                                         lea ecx,[ebp-0x60]
  0043f86d: e8 f2 21 09 00                                   call 0x4d1a64
  0043f872: c6 45 fc 0a                                      mov BYTE PTR [ebp-0x4],0xa
  0043f876: 8b 45 a0                                         mov eax,DWORD PTR [ebp-0x60]
  0043f879: be 58 11 50 00                                   mov esi,0x501158
  0043f87e: 8a 10                                            mov dl,BYTE PTR [eax]
  0043f880: 8a 1e                                            mov bl,BYTE PTR [esi]
  0043f882: 8a ca                                            mov cl,dl
  0043f884: 3a d3                                            cmp dl,bl
  0043f886: 75 1e                                            jne 0x43f8a6
  0043f888: 84 c9                                            test cl,cl
  0043f88a: 74 16                                            je 0x43f8a2
  0043f88c: 8a 50 01                                         mov dl,BYTE PTR [eax+0x1]
  0043f88f: 8a 5e 01                                         mov bl,BYTE PTR [esi+0x1]
  0043f892: 8a ca                                            mov cl,dl
  0043f894: 3a d3                                            cmp dl,bl
  0043f896: 75 0e                                            jne 0x43f8a6
  0043f898: 83 c0 02                                         add eax,0x2
  0043f89b: 83 c6 02                                         add esi,0x2
  0043f89e: 84 c9                                            test cl,cl
  0043f8a0: 75 dc                                            jne 0x43f87e
  0043f8a2: 33 c0                                            xor eax,eax
  0043f8a4: eb 05                                            jmp 0x43f8ab
  0043f8a6: 1b c0                                            sbb eax,eax
  0043f8a8: 83 d8 ff                                         sbb eax,0xffffffff
  0043f8ab: 85 c0                                            test eax,eax
  0043f8ad: 74 5f                                            je 0x43f90e
  0043f8af: 8d 4d a0                                         lea ecx,[ebp-0x60]
  0043f8b2: e8 b9 24 fe ff                                   call 0x421d70
  0043f8b7: 51                                               push ecx
  0043f8b8: 8b cc                                            mov ecx,esp
  0043f8ba: 89 65 a4                                         mov DWORD PTR [ebp-0x5c],esp
  0043f8bd: 50                                               push eax
  0043f8be: e8 a1 21 09 00                                   call 0x4d1a64
  0043f8c3: e8 98 d9 ff ff                                   call 0x43d260
  0043f8c8: 83 c4 04                                         add esp,0x4
  0043f8cb: 8d 45 a0                                         lea eax,[ebp-0x60]
  0043f8ce: 50                                               push eax
  0043f8cf: b9 9c 42 51 00                                   mov ecx,0x51429c
  0043f8d4: e8 6d 21 09 00                                   call 0x4d1a46
  0043f8d9: 47                                               inc edi
  0043f8da: 57                                               push edi
  0043f8db: 8d 8d b8 f0 ff ff                                lea ecx,[ebp-0xf48]
  0043f8e1: 68 b0 42 50 00                                   push 0x5042b0
  0043f8e6: 51                                               push ecx
  0043f8e7: e8 54 40 fc ff                                   call 0x403940
  0043f8ec: 83 c4 0c                                         add esp,0xc
  0043f8ef: 68 58 11 50 00                                   push 0x501158
  0043f8f4: 50                                               push eax
  0043f8f5: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f8fb: e8 b0 99 01 00                                   call 0x4592b0
  0043f900: 50                                               push eax
  0043f901: 8d 4d a0                                         lea ecx,[ebp-0x60]
  0043f904: e8 4f 21 09 00                                   call 0x4d1a58
  0043f909: e9 68 ff ff ff                                   jmp 0x43f876
  0043f90e: e8 9d df ff ff                                   call 0x43d8b0
  0043f913: 85 c0                                            test eax,eax
  0043f915: 75 23                                            jne 0x43f93a
  0043f917: 68 68 42 50 00                                   push 0x504268
  0043f91c: 6a 01                                            push 0x1
  0043f91e: e8 1d 24 03 00                                   call 0x471d40
  0043f923: 83 c4 08                                         add esp,0x8
  0043f926: 6a ff                                            push 0xffffffff
  0043f928: ff 15 60 e4 4d 00                                call DWORD PTR ds:0x4de460
  0043f92e: c6 45 fc 09                                      mov BYTE PTR [ebp-0x4],0x9
  0043f932: 8d 4d a0                                         lea ecx,[ebp-0x60]
  0043f935: e9 b2 14 00 00                                   jmp 0x440dec
  0043f93a: 6a 00                                            push 0x0
  0043f93c: 68 5c 42 50 00                                   push 0x50425c
  0043f941: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f947: e8 b4 99 01 00                                   call 0x459300
  0043f94c: 85 c0                                            test eax,eax
  0043f94e: 0f 84 9a 0b 00 00                                je 0x4404ee
  0043f954: 68 5c 42 50 00                                   push 0x50425c
  0043f959: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f95f: e8 7c 9a 01 00                                   call 0x4593e0
  0043f964: 6a 00                                            push 0x0
  0043f966: 68 54 42 50 00                                   push 0x504254
  0043f96b: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0043f971: e8 8a 99 01 00                                   call 0x459300
  0043f976: 85 c0                                            test eax,eax
  0043f978: 0f 85 70 0b 00 00                                jne 0x4404ee
  0043f97e: 8d 95 70 ff ff ff                                lea edx,[ebp-0x90]
  0043f984: 52                                               push edx
  0043f985: ff 15 e4 e0 4d 00                                call DWORD PTR ds:0x4de0e4
  0043f98b: 68 a4 42 51 00                                   push 0x5142a4
  0043f990: 8d 4d 90                                         lea ecx,[ebp-0x70]
  0043f993: c6 45 fc 0b                                      mov BYTE PTR [ebp-0x4],0xb
  0043f997: e8 b0 20 09 00                                   call 0x4d1a4c
  0043f99c: 68 44 42 50 00                                   push 0x504244
  0043f9a1: 8d 4d 90                                         lea ecx,[ebp-0x70]
  0043f9a4: c6 45 fc 0c                                      mov BYTE PTR [ebp-0x4],0xc
  0043f9a8: e8 a5 20 09 00                                   call 0x4d1a52
  0043f9ad: 8d 4d 98                                         lea ecx,[ebp-0x68]
  0043f9b0: e8 a9 20 09 00                                   call 0x4d1a5e
  0043f9b5: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0043f9b8: c6 45 fc 0d                                      mov BYTE PTR [ebp-0x4],0xd
  0043f9bc: e8 9d 20 09 00                                   call 0x4d1a5e
  0043f9c1: 68 00 01 00 00                                   push 0x100
  0043f9c6: 8d 85 b8 f8 ff ff                                lea eax,[ebp-0x748]
  0043f9cc: 50                                               push eax
  0043f9cd: c6 45 fc 0e                                      mov BYTE PTR [ebp-0x4],0xe
  0043f9d1: e8 32 2b 09 00                                   call 0x4d2508
  0043f9d6: 8d 8d b8 f8 ff ff                                lea ecx,[ebp-0x748]
  0043f9dc: 51                                               push ecx
  0043f9dd: 8d 4d 98                                         lea ecx,[ebp-0x68]
  0043f9e0: e8 73 20 09 00                                   call 0x4d1a58
  0043f9e5: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043f9eb: e8 a0 97 01 00                                   call 0x459190
  0043f9f0: 68 a8 44 50 00                                   push 0x5044a8
  0043f9f5: 68 02 00 00 80                                   push 0x80000002
  0043f9fa: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043fa00: c6 45 fc 0f                                      mov BYTE PTR [ebp-0x4],0xf
  0043fa04: e8 07 98 01 00                                   call 0x459210
  0043fa09: 6a 0e                                            push 0xe
  0043fa0b: 68 3c 42 50 00                                   push 0x50423c
  0043fa10: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043fa16: e8 e5 98 01 00                                   call 0x459300
  0043fa1b: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043fa21: 8b f0                                            mov esi,eax
  0043fa23: e8 98 99 01 00                                   call 0x4593c0
  0043fa28: 8d 8d c0 fb ff ff                                lea ecx,[ebp-0x440]
  0043fa2e: c6 45 fc 0e                                      mov BYTE PTR [ebp-0x4],0xe
  0043fa32: e8 69 97 01 00                                   call 0x4591a0
  0043fa37: 8d 55 ec                                         lea edx,[ebp-0x14]
  0043fa3a: 6a 01                                            push 0x1
  0043fa3c: 52                                               push edx
  0043fa3d: e8 3e e7 ff ff                                   call 0x43e180
  0043fa42: 83 c4 08                                         add esp,0x8
  0043fa45: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043fa4b: e8 40 97 01 00                                   call 0x459190
  0043fa50: 68 4c 04 50 00                                   push 0x50044c
  0043fa55: b3 10                                            mov bl,0x10
  0043fa57: 68 02 00 00 80                                   push 0x80000002
  0043fa5c: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043fa62: 88 5d fc                                         mov BYTE PTR [ebp-0x4],bl
  0043fa65: e8 a6 97 01 00                                   call 0x459210
  0043fa6a: 68 48 04 50 00                                   push 0x500448
  0043fa6f: 8d 4d 98                                         lea ecx,[ebp-0x68]
  0043fa72: e8 db 1f 09 00                                   call 0x4d1a52
  0043fa77: 68 58 13 51 00                                   push 0x511358
  0043fa7c: 68 40 04 50 00                                   push 0x500440
  0043fa81: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043fa87: e8 24 98 01 00                                   call 0x4592b0
  0043fa8c: 50                                               push eax
  0043fa8d: 8d 4d 98                                         lea ecx,[ebp-0x68]
  0043fa90: e8 bd 1f 09 00                                   call 0x4d1a52
  0043fa95: 68 30 42 50 00                                   push 0x504230
  0043fa9a: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0043fa9d: e8 b6 1f 09 00                                   call 0x4d1a58
  0043faa2: 68 e0 31 50 00                                   push 0x5031e0
  0043faa7: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0043faaa: e8 a3 1f 09 00                                   call 0x4d1a52
  0043faaf: 56                                               push esi
  0043fab0: 8d 85 b8 f0 ff ff                                lea eax,[ebp-0xf48]
  0043fab6: 68 18 42 50 00                                   push 0x504218
  0043fabb: 50                                               push eax
  0043fabc: e8 7f 3e fc ff                                   call 0x403940
  0043fac1: 83 c4 0c                                         add esp,0xc
  0043fac4: 50                                               push eax
  0043fac5: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0043fac8: e8 85 1f 09 00                                   call 0x4d1a52
  0043facd: 8b 0d ac 42 51 00                                mov ecx,DWORD PTR ds:0x5142ac
  0043fad3: 51                                               push ecx
  0043fad4: 8d 95 b8 f0 ff ff                                lea edx,[ebp-0xf48]
  0043fada: 68 04 42 50 00                                   push 0x504204
  0043fadf: 52                                               push edx
  0043fae0: e8 5b 3e fc ff                                   call 0x403940
  0043fae5: 83 c4 0c                                         add esp,0xc
  0043fae8: 50                                               push eax
  0043fae9: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0043faec: e8 61 1f 09 00                                   call 0x4d1a52
  0043faf1: a1 b0 42 51 00                                   mov eax,ds:0x5142b0
  0043faf6: 50                                               push eax
  0043faf7: 8d 8d b8 f0 ff ff                                lea ecx,[ebp-0xf48]
  0043fafd: 68 e8 41 50 00                                   push 0x5041e8
  0043fb02: 51                                               push ecx
  0043fb03: e8 38 3e fc ff                                   call 0x403940
  0043fb08: 83 c4 0c                                         add esp,0xc
  0043fb0b: 50                                               push eax
  0043fb0c: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0043fb0f: e8 3e 1f 09 00                                   call 0x4d1a52
  0043fb14: 8b 55 98                                         mov edx,DWORD PTR [ebp-0x68]
  0043fb17: 8b 45 ec                                         mov eax,DWORD PTR [ebp-0x14]
  0043fb1a: 52                                               push edx
  0043fb1b: 50                                               push eax
  0043fb1c: e8 e1 29 09 00                                   call 0x4d2502
  0043fb21: 50                                               push eax
  0043fb22: 8d 8d b8 f0 ff ff                                lea ecx,[ebp-0xf48]
  0043fb28: 68 c4 41 50 00                                   push 0x5041c4
  0043fb2d: 51                                               push ecx
  0043fb2e: e8 0d 3e fc ff                                   call 0x403940
  0043fb33: 83 c4 10                                         add esp,0x10
  0043fb36: 50                                               push eax
  0043fb37: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0043fb3a: e8 13 1f 09 00                                   call 0x4d1a52
  0043fb3f: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043fb45: e8 76 98 01 00                                   call 0x4593c0
  0043fb4a: 8d 4d e8                                         lea ecx,[ebp-0x18]
  0043fb4d: e8 0c 1f 09 00                                   call 0x4d1a5e
  0043fb52: 68 8c 34 50 00                                   push 0x50348c
  0043fb57: 68 02 00 00 80                                   push 0x80000002
  0043fb5c: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043fb62: c6 45 fc 11                                      mov BYTE PTR [ebp-0x4],0x11
  0043fb66: e8 a5 96 01 00                                   call 0x459210
  0043fb6b: 68 58 13 51 00                                   push 0x511358
  0043fb70: 68 64 34 50 00                                   push 0x503464
  0043fb75: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043fb7b: e8 30 97 01 00                                   call 0x4592b0
  0043fb80: 8b d0                                            mov edx,eax
  0043fb82: 83 c9 ff                                         or ecx,0xffffffff
  0043fb85: 33 c0                                            xor eax,eax
  0043fb87: 8b fa                                            mov edi,edx
  0043fb89: f2 ae                                            repnz scas al,BYTE PTR es:[edi]
  0043fb8b: f7 d1                                            not ecx
  0043fb8d: 49                                               dec ecx
  0043fb8e: 83 f9 16                                         cmp ecx,0x16
  0043fb91: 72 06                                            jb 0x43fb99
  0043fb93: 83 c2 16                                         add edx,0x16
  0043fb96: 52                                               push edx
  0043fb97: eb 05                                            jmp 0x43fb9e
  0043fb99: 68 58 34 50 00                                   push 0x503458
  0043fb9e: 8d 4d e8                                         lea ecx,[ebp-0x18]
  0043fba1: e8 b2 1e 09 00                                   call 0x4d1a58
  0043fba6: 8b 55 e8                                         mov edx,DWORD PTR [ebp-0x18]
  0043fba9: 52                                               push edx
  0043fbaa: 8d 85 b8 f0 ff ff                                lea eax,[ebp-0xf48]
  0043fbb0: 68 b4 41 50 00                                   push 0x5041b4
  0043fbb5: 50                                               push eax
  0043fbb6: e8 85 3d fc ff                                   call 0x403940
  0043fbbb: 83 c4 0c                                         add esp,0xc
  0043fbbe: 50                                               push eax
  0043fbbf: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0043fbc2: e8 8b 1e 09 00                                   call 0x4d1a52
  0043fbc7: 8d 4d e8                                         lea ecx,[ebp-0x18]
  0043fbca: 88 5d fc                                         mov BYTE PTR [ebp-0x4],bl
  0043fbcd: e8 6e 1e 09 00                                   call 0x4d1a40
  0043fbd2: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  0043fbd8: c6 45 fc 0e                                      mov BYTE PTR [ebp-0x4],0xe
  0043fbdc: e8 bf 95 01 00                                   call 0x4591a0
  0043fbe1: 8a 4d e3                                         mov cl,BYTE PTR [ebp-0x1d]
  0043fbe4: 8b 35 a4 42 51 00                                mov esi,DWORD PTR ds:0x5142a4
  0043fbea: 88 4d c8                                         mov BYTE PTR [ebp-0x38],cl
  0043fbed: 33 c0                                            xor eax,eax
  0043fbef: 89 45 cc                                         mov DWORD PTR [ebp-0x34],eax
  0043fbf2: 89 45 d0                                         mov DWORD PTR [ebp-0x30],eax
  0043fbf5: 89 45 d4                                         mov DWORD PTR [ebp-0x2c],eax
  0043fbf8: 83 c9 ff                                         or ecx,0xffffffff
  0043fbfb: 8b fe                                            mov edi,esi
  0043fbfd: f2 ae                                            repnz scas al,BYTE PTR es:[edi]
  0043fbff: f7 d1                                            not ecx
  0043fc01: 49                                               dec ecx
  0043fc02: 8b d9                                            mov ebx,ecx
  0043fc04: 56                                               push esi
  0043fc05: 8d 4d c8                                         lea ecx,[ebp-0x38]
  0043fc08: ff 15 00 e5 4d 00                                call DWORD PTR ds:0x4de500
  0043fc0e: 84 c0                                            test al,al
  0043fc10: 74 16                                            je 0x43fc28
  0043fc12: 8b 55 cc                                         mov edx,DWORD PTR [ebp-0x34]
  0043fc15: 53                                               push ebx
  0043fc16: 2b f2                                            sub esi,edx
  0043fc18: 56                                               push esi
  0043fc19: 8d 55 c8                                         lea edx,[ebp-0x38]
  0043fc1c: 52                                               push edx
  0043fc1d: 8d 4d c8                                         lea ecx,[ebp-0x38]
  0043fc20: ff 15 fc e4 4d 00                                call DWORD PTR ds:0x4de4fc
  0043fc26: eb 2d                                            jmp 0x43fc55
  0043fc28: 6a 01                                            push 0x1
  0043fc2a: 53                                               push ebx
  0043fc2b: 8d 4d c8                                         lea ecx,[ebp-0x38]
  0043fc2e: ff 15 e0 e4 4d 00                                call DWORD PTR ds:0x4de4e0
  0043fc34: 84 c0                                            test al,al
  0043fc36: 74 1d                                            je 0x43fc55
  0043fc38: 8b 7d cc                                         mov edi,DWORD PTR [ebp-0x34]
  0043fc3b: 8b cb                                            mov ecx,ebx
  0043fc3d: 8b c1                                            mov eax,ecx
  0043fc3f: c1 e9 02                                         shr ecx,0x2
  0043fc42: f3 a5                                            rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043fc44: 8b c8                                            mov ecx,eax
  0043fc46: 83 e1 03                                         and ecx,0x3
  0043fc49: f3 a4                                            rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0043fc4b: 53                                               push ebx
  0043fc4c: 8d 4d c8                                         lea ecx,[ebp-0x38]
  0043fc4f: ff 15 dc e4 4d 00                                call DWORD PTR ds:0x4de4dc
  0043fc55: 83 c9 ff                                         or ecx,0xffffffff
  0043fc58: 33 c0                                            xor eax,eax
  0043fc5a: bf c8 2f 50 00                                   mov edi,0x502fc8
  0043fc5f: f2 ae                                            repnz scas al,BYTE PTR es:[edi]
  0043fc61: 8b 45 cc                                         mov eax,DWORD PTR [ebp-0x34]
  0043fc64: f7 d1                                            not ecx
  0043fc66: 49                                               dec ecx
  0043fc67: 85 c0                                            test eax,eax
  0043fc69: c6 45 fc 12                                      mov BYTE PTR [ebp-0x4],0x12
  0043fc6d: 8b f1                                            mov esi,ecx
  0043fc6f: 74 2c                                            je 0x43fc9d
  0043fc71: 3d c8 2f 50 00                                   cmp eax,0x502fc8
  0043fc76: 77 25                                            ja 0x43fc9d
  0043fc78: 8b 4d d0                                         mov ecx,DWORD PTR [ebp-0x30]
  0043fc7b: 03 c8                                            add ecx,eax
  0043fc7d: 81 f9 c8 2f 50 00                                cmp ecx,0x502fc8
  0043fc83: 72 18                                            jb 0x43fc9d
  0043fc85: 56                                               push esi
  0043fc86: ba c8 2f 50 00                                   mov edx,0x502fc8
  0043fc8b: 2b d0                                            sub edx,eax
  0043fc8d: 52                                               push edx
  0043fc8e: 8d 45 c8                                         lea eax,[ebp-0x38]
  0043fc91: 50                                               push eax
  0043fc92: 8d 4d c8                                         lea ecx,[ebp-0x38]
  0043fc95: ff 15 04 e5 4d 00                                call DWORD PTR ds:0x4de504
  0043fc9b: eb 5a                                            jmp 0x43fcf7
  0043fc9d: 8b 0d ec e4 4d 00                                mov ecx,DWORD PTR ds:0x4de4ec
  0043fca3: 8b 11                                            mov edx,DWORD PTR [ecx]
  0043fca5: 2b 55 d0                                         sub edx,DWORD PTR [ebp-0x30]
  0043fca8: 3b d6                                            cmp edx,esi
  0043fcaa: 77 09                                            ja 0x43fcb5
  0043fcac: 8d 4d c8                                         lea ecx,[ebp-0x38]
  0043fcaf: ff 15 30 e5 4d 00                                call DWORD PTR ds:0x4de530
  0043fcb5: 85 f6                                            test esi,esi
  0043fcb7: 76 3e                                            jbe 0x43fcf7
  0043fcb9: 8b 45 d0                                         mov eax,DWORD PTR [ebp-0x30]
  0043fcbc: 8d 1c 06                                         lea ebx,[esi+eax*1]
  0043fcbf: 6a 00                                            push 0x0
  0043fcc1: 53                                               push ebx
  0043fcc2: 8d 4d c8                                         lea ecx,[ebp-0x38]
  0043fcc5: ff 15 e0 e4 4d 00                                call DWORD PTR ds:0x4de4e0
  0043fccb: 84 c0                                            test al,al
  0043fccd: 74 28                                            je 0x43fcf7
  0043fccf: 8b 4d d0                                         mov ecx,DWORD PTR [ebp-0x30]
  0043fcd2: 8b 55 cc                                         mov edx,DWORD PTR [ebp-0x34]
  0043fcd5: 8d 3c 11                                         lea edi,[ecx+edx*1]
  0043fcd8: 8b ce                                            mov ecx,esi
  0043fcda: 8b c1                                            mov eax,ecx
  0043fcdc: c1 e9 02                                         shr ecx,0x2
  0043fcdf: be c8 2f 50 00                                   mov esi,0x502fc8
  0043fce4: f3 a5                                            rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043fce6: 8b c8                                            mov ecx,eax
  0043fce8: 83 e1 03                                         and ecx,0x3
  0043fceb: f3 a4                                            rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0043fced: 8b 4d cc                                         mov ecx,DWORD PTR [ebp-0x34]
  0043fcf0: 89 5d d0                                         mov DWORD PTR [ebp-0x30],ebx
  0043fcf3: c6 04 0b 00                                      mov BYTE PTR [ebx+ecx*1],0x0
  0043fcf7: 8b 35 a4 42 51 00                                mov esi,DWORD PTR ds:0x5142a4
  0043fcfd: 8a 55 e3                                         mov dl,BYTE PTR [ebp-0x1d]
  0043fd00: 33 c0                                            xor eax,eax
  0043fd02: 83 c9 ff                                         or ecx,0xffffffff
  0043fd05: 88 55 a8                                         mov BYTE PTR [ebp-0x58],dl
  0043fd08: 89 45 ac                                         mov DWORD PTR [ebp-0x54],eax
  0043fd0b: 89 45 b0                                         mov DWORD PTR [ebp-0x50],eax
  0043fd0e: 89 45 b4                                         mov DWORD PTR [ebp-0x4c],eax
  0043fd11: 8b fe                                            mov edi,esi
  0043fd13: f2 ae                                            repnz scas al,BYTE PTR es:[edi]
  0043fd15: f7 d1                                            not ecx
  0043fd17: 49                                               dec ecx
  0043fd18: 8b d9                                            mov ebx,ecx
  0043fd1a: 56                                               push esi
  0043fd1b: 8d 4d a8                                         lea ecx,[ebp-0x58]
  0043fd1e: ff 15 00 e5 4d 00                                call DWORD PTR ds:0x4de500
  0043fd24: 84 c0                                            test al,al
  0043fd26: 74 16                                            je 0x43fd3e
  0043fd28: 8b 7d ac                                         mov edi,DWORD PTR [ebp-0x54]
  0043fd2b: 53                                               push ebx
  0043fd2c: 2b f7                                            sub esi,edi
  0043fd2e: 56                                               push esi
  0043fd2f: 8d 45 a8                                         lea eax,[ebp-0x58]
  0043fd32: 50                                               push eax
  0043fd33: 8d 4d a8                                         lea ecx,[ebp-0x58]
  0043fd36: ff 15 fc e4 4d 00                                call DWORD PTR ds:0x4de4fc
  0043fd3c: eb 2d                                            jmp 0x43fd6b
  0043fd3e: 6a 01                                            push 0x1
  0043fd40: 53                                               push ebx
  0043fd41: 8d 4d a8                                         lea ecx,[ebp-0x58]
  0043fd44: ff 15 e0 e4 4d 00                                call DWORD PTR ds:0x4de4e0
  0043fd4a: 84 c0                                            test al,al
  0043fd4c: 74 1d                                            je 0x43fd6b
  0043fd4e: 8b 7d ac                                         mov edi,DWORD PTR [ebp-0x54]
  0043fd51: 8b cb                                            mov ecx,ebx
  0043fd53: 8b d1                                            mov edx,ecx
  0043fd55: c1 e9 02                                         shr ecx,0x2
  0043fd58: f3 a5                                            rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043fd5a: 8b ca                                            mov ecx,edx
  0043fd5c: 83 e1 03                                         and ecx,0x3
  0043fd5f: f3 a4                                            rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0043fd61: 53                                               push ebx
  0043fd62: 8d 4d a8                                         lea ecx,[ebp-0x58]
  0043fd65: ff 15 dc e4 4d 00                                call DWORD PTR ds:0x4de4dc
  0043fd6b: 83 c9 ff                                         or ecx,0xffffffff
  0043fd6e: 33 c0                                            xor eax,eax
  0043fd70: bf a4 41 50 00                                   mov edi,0x5041a4
  0043fd75: f2 ae                                            repnz scas al,BYTE PTR es:[edi]
  0043fd77: 8b 45 ac                                         mov eax,DWORD PTR [ebp-0x54]
  0043fd7a: f7 d1                                            not ecx
  0043fd7c: 49                                               dec ecx
  0043fd7d: 85 c0                                            test eax,eax
  0043fd7f: c6 45 fc 13                                      mov BYTE PTR [ebp-0x4],0x13
  0043fd83: 8b f1                                            mov esi,ecx
  0043fd85: 74 2c                                            je 0x43fdb3
  0043fd87: 3d a4 41 50 00                                   cmp eax,0x5041a4
  0043fd8c: 77 25                                            ja 0x43fdb3
  0043fd8e: 8b 4d b0                                         mov ecx,DWORD PTR [ebp-0x50]
  0043fd91: 03 c8                                            add ecx,eax
  0043fd93: 81 f9 a4 41 50 00                                cmp ecx,0x5041a4
  0043fd99: 72 18                                            jb 0x43fdb3
  0043fd9b: 56                                               push esi
  0043fd9c: ba a4 41 50 00                                   mov edx,0x5041a4
  0043fda1: 2b d0                                            sub edx,eax
  0043fda3: 52                                               push edx
  0043fda4: 8d 45 a8                                         lea eax,[ebp-0x58]
  0043fda7: 50                                               push eax
  0043fda8: 8d 4d a8                                         lea ecx,[ebp-0x58]
  0043fdab: ff 15 04 e5 4d 00                                call DWORD PTR ds:0x4de504
  0043fdb1: eb 5a                                            jmp 0x43fe0d
  0043fdb3: 8b 0d ec e4 4d 00                                mov ecx,DWORD PTR ds:0x4de4ec
  0043fdb9: 8b 11                                            mov edx,DWORD PTR [ecx]
  0043fdbb: 2b 55 b0                                         sub edx,DWORD PTR [ebp-0x50]
  0043fdbe: 3b d6                                            cmp edx,esi
  0043fdc0: 77 09                                            ja 0x43fdcb
  0043fdc2: 8d 4d a8                                         lea ecx,[ebp-0x58]
  0043fdc5: ff 15 30 e5 4d 00                                call DWORD PTR ds:0x4de530
  0043fdcb: 85 f6                                            test esi,esi
  0043fdcd: 76 3e                                            jbe 0x43fe0d
  0043fdcf: 8b 45 b0                                         mov eax,DWORD PTR [ebp-0x50]
  0043fdd2: 8d 1c 06                                         lea ebx,[esi+eax*1]
  0043fdd5: 6a 00                                            push 0x0
  0043fdd7: 53                                               push ebx
  0043fdd8: 8d 4d a8                                         lea ecx,[ebp-0x58]
  0043fddb: ff 15 e0 e4 4d 00                                call DWORD PTR ds:0x4de4e0
  0043fde1: 84 c0                                            test al,al
  0043fde3: 74 28                                            je 0x43fe0d
  0043fde5: 8b 4d b0                                         mov ecx,DWORD PTR [ebp-0x50]
  0043fde8: 8b 55 ac                                         mov edx,DWORD PTR [ebp-0x54]
  0043fdeb: 8d 3c 11                                         lea edi,[ecx+edx*1]
  0043fdee: 8b ce                                            mov ecx,esi
  0043fdf0: 8b c1                                            mov eax,ecx
  0043fdf2: c1 e9 02                                         shr ecx,0x2
  0043fdf5: be a4 41 50 00                                   mov esi,0x5041a4
  0043fdfa: f3 a5                                            rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043fdfc: 8b c8                                            mov ecx,eax
  0043fdfe: 83 e1 03                                         and ecx,0x3
  0043fe01: f3 a4                                            rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0043fe03: 8b 4d ac                                         mov ecx,DWORD PTR [ebp-0x54]
  0043fe06: 89 5d b0                                         mov DWORD PTR [ebp-0x50],ebx
  0043fe09: c6 04 0b 00                                      mov BYTE PTR [ebx+ecx*1],0x0
  0043fe0d: 8b 35 a4 42 51 00                                mov esi,DWORD PTR ds:0x5142a4
  0043fe13: 8a 55 e3                                         mov dl,BYTE PTR [ebp-0x1d]
  0043fe16: 33 c0                                            xor eax,eax
  0043fe18: 83 c9 ff                                         or ecx,0xffffffff
  0043fe1b: 88 55 b8                                         mov BYTE PTR [ebp-0x48],dl
  0043fe1e: 89 45 bc                                         mov DWORD PTR [ebp-0x44],eax
  0043fe21: 89 45 c0                                         mov DWORD PTR [ebp-0x40],eax
  0043fe24: 89 45 c4                                         mov DWORD PTR [ebp-0x3c],eax
  0043fe27: 8b fe                                            mov edi,esi
  0043fe29: f2 ae                                            repnz scas al,BYTE PTR es:[edi]
  0043fe2b: f7 d1                                            not ecx
  0043fe2d: 49                                               dec ecx
  0043fe2e: 8b d9                                            mov ebx,ecx
  0043fe30: 56                                               push esi
  0043fe31: 8d 4d b8                                         lea ecx,[ebp-0x48]
  0043fe34: ff 15 00 e5 4d 00                                call DWORD PTR ds:0x4de500
  0043fe3a: 84 c0                                            test al,al
  0043fe3c: 74 16                                            je 0x43fe54
  0043fe3e: 8b 7d bc                                         mov edi,DWORD PTR [ebp-0x44]
  0043fe41: 53                                               push ebx
  0043fe42: 2b f7                                            sub esi,edi
  0043fe44: 56                                               push esi
  0043fe45: 8d 45 b8                                         lea eax,[ebp-0x48]
  0043fe48: 50                                               push eax
  0043fe49: 8d 4d b8                                         lea ecx,[ebp-0x48]
  0043fe4c: ff 15 fc e4 4d 00                                call DWORD PTR ds:0x4de4fc
  0043fe52: eb 2d                                            jmp 0x43fe81
  0043fe54: 6a 01                                            push 0x1
  0043fe56: 53                                               push ebx
  0043fe57: 8d 4d b8                                         lea ecx,[ebp-0x48]
  0043fe5a: ff 15 e0 e4 4d 00                                call DWORD PTR ds:0x4de4e0
  0043fe60: 84 c0                                            test al,al
  0043fe62: 74 1d                                            je 0x43fe81
  0043fe64: 8b 7d bc                                         mov edi,DWORD PTR [ebp-0x44]
  0043fe67: 8b cb                                            mov ecx,ebx
  0043fe69: 8b d1                                            mov edx,ecx
  0043fe6b: c1 e9 02                                         shr ecx,0x2
  0043fe6e: f3 a5                                            rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043fe70: 8b ca                                            mov ecx,edx
  0043fe72: 83 e1 03                                         and ecx,0x3
  0043fe75: f3 a4                                            rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0043fe77: 53                                               push ebx
  0043fe78: 8d 4d b8                                         lea ecx,[ebp-0x48]
  0043fe7b: ff 15 dc e4 4d 00                                call DWORD PTR ds:0x4de4dc
  0043fe81: 83 c9 ff                                         or ecx,0xffffffff
  0043fe84: 33 c0                                            xor eax,eax
  0043fe86: bf 54 39 50 00                                   mov edi,0x503954
  0043fe8b: f2 ae                                            repnz scas al,BYTE PTR es:[edi]
  0043fe8d: 8b 45 bc                                         mov eax,DWORD PTR [ebp-0x44]
  0043fe90: f7 d1                                            not ecx
  0043fe92: 49                                               dec ecx
  0043fe93: 85 c0                                            test eax,eax
  0043fe95: c6 45 fc 14                                      mov BYTE PTR [ebp-0x4],0x14
  0043fe99: 8b f1                                            mov esi,ecx
  0043fe9b: 74 2c                                            je 0x43fec9
  0043fe9d: 3d 54 39 50 00                                   cmp eax,0x503954
  0043fea2: 77 25                                            ja 0x43fec9
  0043fea4: 8b 4d c0                                         mov ecx,DWORD PTR [ebp-0x40]
  0043fea7: 03 c8                                            add ecx,eax
  0043fea9: 81 f9 54 39 50 00                                cmp ecx,0x503954
  0043feaf: 72 18                                            jb 0x43fec9
  0043feb1: 56                                               push esi
  0043feb2: ba 54 39 50 00                                   mov edx,0x503954
  0043feb7: 2b d0                                            sub edx,eax
  0043feb9: 52                                               push edx
  0043feba: 8d 45 b8                                         lea eax,[ebp-0x48]
  0043febd: 50                                               push eax
  0043febe: 8d 4d b8                                         lea ecx,[ebp-0x48]
  0043fec1: ff 15 04 e5 4d 00                                call DWORD PTR ds:0x4de504
  0043fec7: eb 5a                                            jmp 0x43ff23
  0043fec9: 8b 0d ec e4 4d 00                                mov ecx,DWORD PTR ds:0x4de4ec
  0043fecf: 8b 11                                            mov edx,DWORD PTR [ecx]
  0043fed1: 2b 55 c0                                         sub edx,DWORD PTR [ebp-0x40]
  0043fed4: 3b d6                                            cmp edx,esi
  0043fed6: 77 09                                            ja 0x43fee1
  0043fed8: 8d 4d b8                                         lea ecx,[ebp-0x48]
  0043fedb: ff 15 30 e5 4d 00                                call DWORD PTR ds:0x4de530
  0043fee1: 85 f6                                            test esi,esi
  0043fee3: 76 3e                                            jbe 0x43ff23
  0043fee5: 8b 45 c0                                         mov eax,DWORD PTR [ebp-0x40]
  0043fee8: 8d 1c 06                                         lea ebx,[esi+eax*1]
  0043feeb: 6a 00                                            push 0x0
  0043feed: 53                                               push ebx
  0043feee: 8d 4d b8                                         lea ecx,[ebp-0x48]
  0043fef1: ff 15 e0 e4 4d 00                                call DWORD PTR ds:0x4de4e0
  0043fef7: 84 c0                                            test al,al
  0043fef9: 74 28                                            je 0x43ff23
  0043fefb: 8b 4d c0                                         mov ecx,DWORD PTR [ebp-0x40]
  0043fefe: 8b 55 bc                                         mov edx,DWORD PTR [ebp-0x44]
  0043ff01: 8d 3c 11                                         lea edi,[ecx+edx*1]
  0043ff04: 8b ce                                            mov ecx,esi
  0043ff06: 8b c1                                            mov eax,ecx
  0043ff08: c1 e9 02                                         shr ecx,0x2
  0043ff0b: be 54 39 50 00                                   mov esi,0x503954
  0043ff10: f3 a5                                            rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0043ff12: 8b c8                                            mov ecx,eax
  0043ff14: 83 e1 03                                         and ecx,0x3
  0043ff17: f3 a4                                            rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0043ff19: 8b 4d bc                                         mov ecx,DWORD PTR [ebp-0x44]
  0043ff1c: 89 5d c0                                         mov DWORD PTR [ebp-0x40],ebx
  0043ff1f: c6 04 0b 00                                      mov BYTE PTR [ebx+ecx*1],0x0
  0043ff23: 8a 55 e3                                         mov dl,BYTE PTR [ebp-0x1d]
  0043ff26: 6a 0c                                            push 0xc
  0043ff28: 88 55 84                                         mov BYTE PTR [ebp-0x7c],dl
  0043ff2b: e8 c0 20 00 00                                   call 0x441ff0
  0043ff30: 89 00                                            mov DWORD PTR [eax],eax
  0043ff32: 89 40 04                                         mov DWORD PTR [eax+0x4],eax
  0043ff35: 83 c4 04                                         add esp,0x4
  0043ff38: 89 45 88                                         mov DWORD PTR [ebp-0x78],eax
  0043ff3b: c7 45 8c 00 00 00 00                             mov DWORD PTR [ebp-0x74],0x0
  0043ff42: 8b 4d cc                                         mov ecx,DWORD PTR [ebp-0x34]
  0043ff45: 85 c9                                            test ecx,ecx
  0043ff47: c6 45 fc 15                                      mov BYTE PTR [ebp-0x4],0x15
  0043ff4b: 75 06                                            jne 0x43ff53
  0043ff4d: 8b 0d d8 e4 4d 00                                mov ecx,DWORD PTR ds:0x4de4d8
  0043ff53: 8d 55 ec                                         lea edx,[ebp-0x14]
  0043ff56: 52                                               push edx
  0043ff57: 89 4d ec                                         mov DWORD PTR [ebp-0x14],ecx
  0043ff5a: 50                                               push eax
  0043ff5b: 8d 4d 84                                         lea ecx,[ebp-0x7c]
  0043ff5e: e8 bd 15 00 00                                   call 0x441520
  0043ff63: 8b 45 ac                                         mov eax,DWORD PTR [ebp-0x54]
  0043ff66: 85 c0                                            test eax,eax
  0043ff68: 75 05                                            jne 0x43ff6f
  0043ff6a: a1 d8 e4 4d 00                                   mov eax,ds:0x4de4d8
  0043ff6f: 8b 55 88                                         mov edx,DWORD PTR [ebp-0x78]
  0043ff72: 8d 4d ec                                         lea ecx,[ebp-0x14]
  0043ff75: 51                                               push ecx
  0043ff76: 52                                               push edx
  0043ff77: 8d 4d 84                                         lea ecx,[ebp-0x7c]
  0043ff7a: 89 45 ec                                         mov DWORD PTR [ebp-0x14],eax
  0043ff7d: e8 9e 15 00 00                                   call 0x441520
  0043ff82: 8b 45 bc                                         mov eax,DWORD PTR [ebp-0x44]
  0043ff85: 85 c0                                            test eax,eax
  0043ff87: 75 05                                            jne 0x43ff8e
  0043ff89: a1 d8 e4 4d 00                                   mov eax,ds:0x4de4d8
  0043ff8e: 8b 55 88                                         mov edx,DWORD PTR [ebp-0x78]
  0043ff91: 8d 4d ec                                         lea ecx,[ebp-0x14]
  0043ff94: 51                                               push ecx
  0043ff95: 52                                               push edx
  0043ff96: 8d 4d 84                                         lea ecx,[ebp-0x7c]
  0043ff99: 89 45 ec                                         mov DWORD PTR [ebp-0x14],eax
  0043ff9c: e8 7f 15 00 00                                   call 0x441520
  0043ffa1: 8b 45 90                                         mov eax,DWORD PTR [ebp-0x70]
  0043ffa4: 8b 4d e4                                         mov ecx,DWORD PTR [ebp-0x1c]
  0043ffa7: 8b 95 7c ff ff ff                                mov edx,DWORD PTR [ebp-0x84]
  0043ffad: 8b 3d b0 42 51 00                                mov edi,DWORD PTR ds:0x5142b0
  0043ffb3: 89 45 a4                                         mov DWORD PTR [ebp-0x5c],eax
  0043ffb6: 8b 85 7a ff ff ff                                mov eax,DWORD PTR [ebp-0x86]
  0043ffbc: 89 4d ec                                         mov DWORD PTR [ebp-0x14],ecx
  0043ffbf: 8b 8d 78 ff ff ff                                mov ecx,DWORD PTR [ebp-0x88]
  0043ffc5: 81 e2 ff ff 00 00                                and edx,0xffff
  0043ffcb: 52                                               push edx
  0043ffcc: 8b 95 70 ff ff ff                                mov edx,DWORD PTR [ebp-0x90]
  0043ffd2: 25 ff ff 00 00                                   and eax,0xffff
  0043ffd7: 50                                               push eax
  0043ffd8: 8b 85 76 ff ff ff                                mov eax,DWORD PTR [ebp-0x8a]
  0043ffde: 81 e1 ff ff 00 00                                and ecx,0xffff
  0043ffe4: 51                                               push ecx
  0043ffe5: 8b 8d 72 ff ff ff                                mov ecx,DWORD PTR [ebp-0x8e]
  0043ffeb: 81 e2 ff ff 00 00                                and edx,0xffff
  0043fff1: 52                                               push edx
  0043fff2: 8b 55 98                                         mov edx,DWORD PTR [ebp-0x68]
  0043fff5: 25 ff ff 00 00                                   and eax,0xffff
  0043fffa: 50                                               push eax
  0043fffb: a1 ac 42 51 00                                   mov eax,ds:0x5142ac
  00440000: 81 e1 ff ff 00 00                                and ecx,0xffff
  00440006: 51                                               push ecx
  00440007: 52                                               push edx
  00440008: 50                                               push eax
  00440009: 8d 8d b8 f0 ff ff                                lea ecx,[ebp-0xf48]
  0044000f: 68 6c 41 50 00                                   push 0x50416c
  00440014: 51                                               push ecx
  00440015: e8 26 39 fc ff                                   call 0x403940
  0044001a: 83 c4 28                                         add esp,0x28
  0044001d: 6a 00                                            push 0x0
  0044001f: 8b d8                                            mov ebx,eax
  00440021: ff 15 bc e4 4d 00                                call DWORD PTR ds:0x4de4bc
  00440027: 85 c0                                            test eax,eax
  00440029: 74 09                                            je 0x440034
  0044002b: 83 f8 01                                         cmp eax,0x1
  0044002e: 0f 85 e2 02 00 00                                jne 0x440316
  00440034: 6a 17                                            push 0x17
  00440036: 6a 00                                            push 0x0
  00440038: 68 c8 04 50 00                                   push 0x5004c8
  0044003d: 8d 4d e8                                         lea ecx,[ebp-0x18]
  00440040: c7 45 e8 00 00 00 00                             mov DWORD PTR [ebp-0x18],0x0
  00440047: e8 14 39 fc ff                                   call 0x403960
  0044004c: 85 c0                                            test eax,eax
  0044004e: 7d 0d                                            jge 0x44005d
  00440050: 3d 02 40 00 80                                   cmp eax,0x80004002
  00440055: 74 06                                            je 0x44005d
  00440057: 50                                               push eax
  00440058: e8 ff 24 09 00                                   call 0x4d255c
  0044005d: 51                                               push ecx
  0044005e: 89 65 80                                         mov DWORD PTR [ebp-0x80],esp
  00440061: 8b f4                                            mov esi,esp
  00440063: 6a 0c                                            push 0xc
  00440065: e8 86 1f 00 00                                   call 0x441ff0
  0044006a: 83 c4 04                                         add esp,0x4
  0044006d: 89 45 dc                                         mov DWORD PTR [ebp-0x24],eax
  00440070: 85 c0                                            test eax,eax
  00440072: c6 45 fc 17                                      mov BYTE PTR [ebp-0x4],0x17
  00440076: 74 0e                                            je 0x440086
  00440078: 68 3c 03 50 00                                   push 0x50033c
  0044007d: 8b c8                                            mov ecx,eax
  0044007f: e8 dc 31 fc ff                                   call 0x403260
  00440084: eb 02                                            jmp 0x440088
  00440086: 33 c0                                            xor eax,eax
  00440088: 85 c0                                            test eax,eax
  0044008a: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  0044008e: 89 06                                            mov DWORD PTR [esi],eax
  00440090: 75 0a                                            jne 0x44009c
  00440092: 68 0e 00 07 80                                   push 0x8007000e
  00440097: e8 c0 24 09 00                                   call 0x4d255c
  0044009c: 8d 4d e8                                         lea ecx,[ebp-0x18]
  0044009f: c6 45 fc 18                                      mov BYTE PTR [ebp-0x4],0x18
  004400a3: e8 48 38 fc ff                                   call 0x4038f0
  004400a8: 8b c8                                            mov ecx,eax
  004400aa: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  004400ae: e8 cd 33 fc ff                                   call 0x403480
  004400b3: 51                                               push ecx
  004400b4: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  004400b7: 8b f4                                            mov esi,esp
  004400b9: 6a 0c                                            push 0xc
  004400bb: e8 30 1f 00 00                                   call 0x441ff0
  004400c0: 83 c4 04                                         add esp,0x4
  004400c3: 89 45 80                                         mov DWORD PTR [ebp-0x80],eax
  004400c6: 85 c0                                            test eax,eax
  004400c8: c6 45 fc 19                                      mov BYTE PTR [ebp-0x4],0x19
  004400cc: 74 0a                                            je 0x4400d8
  004400ce: 57                                               push edi
  004400cf: 8b c8                                            mov ecx,eax
  004400d1: e8 8a 31 fc ff                                   call 0x403260
  004400d6: eb 02                                            jmp 0x4400da
  004400d8: 33 c0                                            xor eax,eax
  004400da: 85 c0                                            test eax,eax
  004400dc: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  004400e0: 89 06                                            mov DWORD PTR [esi],eax
  004400e2: 75 0a                                            jne 0x4400ee
  004400e4: 68 0e 00 07 80                                   push 0x8007000e
  004400e9: e8 6e 24 09 00                                   call 0x4d255c
  004400ee: 8d 4d e8                                         lea ecx,[ebp-0x18]
  004400f1: c6 45 fc 1a                                      mov BYTE PTR [ebp-0x4],0x1a
  004400f5: e8 f6 37 fc ff                                   call 0x4038f0
  004400fa: 8b c8                                            mov ecx,eax
  004400fc: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  00440100: e8 db 32 fc ff                                   call 0x4033e0
  00440105: 6a 01                                            push 0x1
  00440107: 51                                               push ecx
  00440108: 8b cc                                            mov ecx,esp
  0044010a: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  0044010d: 68 4c 03 50 00                                   push 0x50034c
  00440112: e8 69 30 fc ff                                   call 0x403180
  00440117: 51                                               push ecx
  00440118: 8b cc                                            mov ecx,esp
  0044011a: 89 65 80                                         mov DWORD PTR [ebp-0x80],esp
  0044011d: 68 58 13 51 00                                   push 0x511358
  00440122: c6 45 fc 1b                                      mov BYTE PTR [ebp-0x4],0x1b
  00440126: e8 55 30 fc ff                                   call 0x403180
  0044012b: 8d 4d e8                                         lea ecx,[ebp-0x18]
  0044012e: c6 45 fc 1c                                      mov BYTE PTR [ebp-0x4],0x1c
  00440132: e8 b9 37 fc ff                                   call 0x4038f0
  00440137: 8b c8                                            mov ecx,eax
  00440139: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  0044013d: e8 7e 34 fc ff                                   call 0x4035c0
  00440142: 51                                               push ecx
  00440143: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  00440146: 8b f4                                            mov esi,esp
  00440148: 6a 0c                                            push 0xc
  0044014a: e8 a1 1e 00 00                                   call 0x441ff0
  0044014f: 83 c4 04                                         add esp,0x4
  00440152: 89 45 80                                         mov DWORD PTR [ebp-0x80],eax
  00440155: 85 c0                                            test eax,eax
  00440157: c6 45 fc 1d                                      mov BYTE PTR [ebp-0x4],0x1d
  0044015b: 74 0a                                            je 0x440167
  0044015d: 53                                               push ebx
  0044015e: 8b c8                                            mov ecx,eax
  00440160: e8 fb 30 fc ff                                   call 0x403260
  00440165: eb 02                                            jmp 0x440169
  00440167: 33 c0                                            xor eax,eax
  00440169: 85 c0                                            test eax,eax
  0044016b: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  0044016f: 89 06                                            mov DWORD PTR [esi],eax
  00440171: 75 0a                                            jne 0x44017d
  00440173: 68 0e 00 07 80                                   push 0x8007000e
  00440178: e8 df 23 09 00                                   call 0x4d255c
  0044017d: 8d 4d e8                                         lea ecx,[ebp-0x18]
  00440180: c6 45 fc 1e                                      mov BYTE PTR [ebp-0x4],0x1e
  00440184: e8 67 37 fc ff                                   call 0x4038f0
  00440189: 8b c8                                            mov ecx,eax
  0044018b: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  0044018f: e8 0c 31 fc ff                                   call 0x4032a0
  00440194: 8b 55 ec                                         mov edx,DWORD PTR [ebp-0x14]
  00440197: 51                                               push ecx
  00440198: 8b cc                                            mov ecx,esp
  0044019a: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  0044019d: 52                                               push edx
  0044019e: e8 dd 2f fc ff                                   call 0x403180
  004401a3: 8d 4d e8                                         lea ecx,[ebp-0x18]
  004401a6: c6 45 fc 1f                                      mov BYTE PTR [ebp-0x4],0x1f
  004401aa: e8 41 37 fc ff                                   call 0x4038f0
  004401af: 8b c8                                            mov ecx,eax
  004401b1: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  004401b5: e8 86 31 fc ff                                   call 0x403340
  004401ba: 51                                               push ecx
  004401bb: 8b cc                                            mov ecx,esp
  004401bd: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  004401c0: 68 90 04 50 00                                   push 0x500490
  004401c5: e8 b6 2f fc ff                                   call 0x403180
  004401ca: 8d 4d e8                                         lea ecx,[ebp-0x18]
  004401cd: c6 45 fc 20                                      mov BYTE PTR [ebp-0x4],0x20
  004401d1: e8 1a 37 fc ff                                   call 0x4038f0
  004401d6: 8b c8                                            mov ecx,eax
  004401d8: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  004401dc: e8 cf 34 fc ff                                   call 0x4036b0
  004401e1: b8 a0 03 50 00                                   mov eax,0x5003a0
  004401e6: 85 c0                                            test eax,eax
  004401e8: 75 09                                            jne 0x4401f3
  004401ea: b9 c0 03 50 00                                   mov ecx,0x5003c0
  004401ef: 85 c9                                            test ecx,ecx
  004401f1: 74 1b                                            je 0x44020e
  004401f3: 8b 45 e8                                         mov eax,DWORD PTR [ebp-0x18]
  004401f6: 85 c0                                            test eax,eax
  004401f8: 75 0a                                            jne 0x440204
  004401fa: 68 03 40 00 80                                   push 0x80004003
  004401ff: e8 58 23 09 00                                   call 0x4d255c
  00440204: 8b 4d e8                                         mov ecx,DWORD PTR [ebp-0x18]
  00440207: 6a 02                                            push 0x2
  00440209: e8 d2 0c 00 00                                   call 0x440ee0
  0044020e: ba a0 03 50 00                                   mov edx,0x5003a0
  00440213: 85 d2                                            test edx,edx
  00440215: 74 23                                            je 0x44023a
  00440217: 51                                               push ecx
  00440218: 8b cc                                            mov ecx,esp
  0044021a: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  0044021d: 52                                               push edx
  0044021e: e8 5d 2f fc ff                                   call 0x403180
  00440223: 8d 4d e8                                         lea ecx,[ebp-0x18]
  00440226: c6 45 fc 21                                      mov BYTE PTR [ebp-0x4],0x21
  0044022a: e8 c1 36 fc ff                                   call 0x4038f0
  0044022f: 8b c8                                            mov ecx,eax
  00440231: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  00440235: e8 16 35 fc ff                                   call 0x403750
  0044023a: b8 c0 03 50 00                                   mov eax,0x5003c0
  0044023f: 85 c0                                            test eax,eax
  00440241: 74 23                                            je 0x440266
  00440243: 51                                               push ecx
  00440244: 8b cc                                            mov ecx,esp
  00440246: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  00440249: 50                                               push eax
  0044024a: e8 31 2f fc ff                                   call 0x403180
  0044024f: 8d 4d e8                                         lea ecx,[ebp-0x18]
  00440252: c6 45 fc 22                                      mov BYTE PTR [ebp-0x4],0x22
  00440256: e8 95 36 fc ff                                   call 0x4038f0
  0044025b: 8b c8                                            mov ecx,eax
  0044025d: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  00440261: e8 8a 35 fc ff                                   call 0x4037f0
  00440266: 8b 45 a4                                         mov eax,DWORD PTR [ebp-0x5c]
  00440269: 85 c0                                            test eax,eax
  0044026b: 74 25                                            je 0x440292
  0044026d: 6a 00                                            push 0x0
  0044026f: 51                                               push ecx
  00440270: 8b cc                                            mov ecx,esp
  00440272: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  00440275: 50                                               push eax
  00440276: e8 05 2f fc ff                                   call 0x403180
  0044027b: 8d 4d e8                                         lea ecx,[ebp-0x18]
  0044027e: c6 45 fc 23                                      mov BYTE PTR [ebp-0x4],0x23
  00440282: e8 69 36 fc ff                                   call 0x4038f0
  00440287: 8b c8                                            mov ecx,eax
  00440289: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  0044028d: e8 8e 32 fc ff                                   call 0x403520
  00440292: 8d 4d 84                                         lea ecx,[ebp-0x7c]
  00440295: 85 c9                                            test ecx,ecx
  00440297: 74 60                                            je 0x4402f9
  00440299: 8d 55 dc                                         lea edx,[ebp-0x24]
  0044029c: 52                                               push edx
  0044029d: 8d 4d 84                                         lea ecx,[ebp-0x7c]
  004402a0: c7 45 ec 00 00 00 00                             mov DWORD PTR [ebp-0x14],0x0
  004402a7: e8 14 12 00 00                                   call 0x4414c0
  004402ac: 8b 00                                            mov eax,DWORD PTR [eax]
  004402ae: 89 45 ec                                         mov DWORD PTR [ebp-0x14],eax
  004402b1: b3 24                                            mov bl,0x24
  004402b3: 8b 4d ec                                         mov ecx,DWORD PTR [ebp-0x14]
  004402b6: 3b 4d 88                                         cmp ecx,DWORD PTR [ebp-0x78]
  004402b9: 74 3e                                            je 0x4402f9
  004402bb: 6a 00                                            push 0x0
  004402bd: 8d 4d ec                                         lea ecx,[ebp-0x14]
  004402c0: e8 4b 36 fc ff                                   call 0x403910
  004402c5: 8b 10                                            mov edx,DWORD PTR [eax]
  004402c7: 51                                               push ecx
  004402c8: 8b cc                                            mov ecx,esp
  004402ca: 89 65 dc                                         mov DWORD PTR [ebp-0x24],esp
  004402cd: 52                                               push edx
  004402ce: e8 ad 2e fc ff                                   call 0x403180
  004402d3: 8d 4d e8                                         lea ecx,[ebp-0x18]
  004402d6: 88 5d fc                                         mov BYTE PTR [ebp-0x4],bl
  004402d9: e8 12 36 fc ff                                   call 0x4038f0
  004402de: 8b c8                                            mov ecx,eax
  004402e0: c6 45 fc 16                                      mov BYTE PTR [ebp-0x4],0x16
  004402e4: e8 37 32 fc ff                                   call 0x403520
  004402e9: 6a 00                                            push 0x0
  004402eb: 8d 45 80                                         lea eax,[ebp-0x80]
  004402ee: 50                                               push eax
  004402ef: 8d 4d ec                                         lea ecx,[ebp-0x14]
  004402f2: e8 f9 11 00 00                                   call 0x4414f0
  004402f7: eb ba                                            jmp 0x4402b3
  004402f9: 8d 4d e8                                         lea ecx,[ebp-0x18]
  004402fc: e8 ef 35 fc ff                                   call 0x4038f0
  00440301: 8b c8                                            mov ecx,eax
  00440303: e8 a8 0b 00 00                                   call 0x440eb0
  00440308: 8d 4d e8                                         lea ecx,[ebp-0x18]
  0044030b: 85 c0                                            test eax,eax
  0044030d: c6 45 fc 15                                      mov BYTE PTR [ebp-0x4],0x15
  00440311: e8 fa 11 00 00                                   call 0x441510
  00440316: 8d 4d 90                                         lea ecx,[ebp-0x70]
  00440319: 51                                               push ecx
  0044031a: 8d 4d d8                                         lea ecx,[ebp-0x28]
  0044031d: e8 2a 17 09 00                                   call 0x4d1a4c
  00440322: 8b 95 70 ff ff ff                                mov edx,DWORD PTR [ebp-0x90]
  00440328: 8b 85 72 ff ff ff                                mov eax,DWORD PTR [ebp-0x8e]
  0044032e: 8b 8d 76 ff ff ff                                mov ecx,DWORD PTR [ebp-0x8a]
  00440334: 81 e2 ff ff 00 00                                and edx,0xffff
  0044033a: 52                                               push edx
  0044033b: 8b 95 78 ff ff ff                                mov edx,DWORD PTR [ebp-0x88]
  00440341: 25 ff ff 00 00                                   and eax,0xffff
  00440346: 50                                               push eax
  00440347: 8b 85 7a ff ff ff                                mov eax,DWORD PTR [ebp-0x86]
  0044034d: 81 e1 ff ff 00 00                                and ecx,0xffff
  00440353: 51                                               push ecx
  00440354: 8b 8d 7c ff ff ff                                mov ecx,DWORD PTR [ebp-0x84]
  0044035a: 81 e2 ff ff 00 00                                and edx,0xffff
  00440360: 52                                               push edx
  00440361: 25 ff ff 00 00                                   and eax,0xffff
  00440366: 50                                               push eax
  00440367: 81 e1 ff ff 00 00                                and ecx,0xffff
  0044036d: 51                                               push ecx
  0044036e: 8d 95 b8 f0 ff ff                                lea edx,[ebp-0xf48]
  00440374: 68 50 41 50 00                                   push 0x504150
  00440379: 52                                               push edx
  0044037a: c6 45 fc 25                                      mov BYTE PTR [ebp-0x4],0x25
  0044037e: e8 bd 35 fc ff                                   call 0x403940
  00440383: 83 c4 20                                         add esp,0x20
  00440386: 50                                               push eax
  00440387: 8d 4d d8                                         lea ecx,[ebp-0x28]
  0044038a: e8 c3 16 09 00                                   call 0x4d1a52
  0044038f: 8b 45 cc                                         mov eax,DWORD PTR [ebp-0x34]
  00440392: 85 c0                                            test eax,eax
  00440394: 75 05                                            jne 0x44039b
  00440396: a1 d8 e4 4d 00                                   mov eax,ds:0x4de4d8
  0044039b: 8b 35 8c e1 4d 00                                mov esi,DWORD PTR ds:0x4de18c
  004403a1: 50                                               push eax
  004403a2: ff d6                                            call esi
  004403a4: 8b 45 ac                                         mov eax,DWORD PTR [ebp-0x54]
  004403a7: 85 c0                                            test eax,eax
  004403a9: 75 05                                            jne 0x4403b0
  004403ab: a1 d8 e4 4d 00                                   mov eax,ds:0x4de4d8
  004403b0: 50                                               push eax
  004403b1: ff d6                                            call esi
  004403b3: 8b 45 bc                                         mov eax,DWORD PTR [ebp-0x44]
  004403b6: 85 c0                                            test eax,eax
  004403b8: 75 05                                            jne 0x4403bf
  004403ba: a1 d8 e4 4d 00                                   mov eax,ds:0x4de4d8
  004403bf: 50                                               push eax
  004403c0: ff d6                                            call esi
  004403c2: 8b 45 d8                                         mov eax,DWORD PTR [ebp-0x28]
  004403c5: 8b 4d 90                                         mov ecx,DWORD PTR [ebp-0x70]
  004403c8: 50                                               push eax
  004403c9: 51                                               push ecx
  004403ca: e8 0d 17 09 00                                   call 0x4d1adc
  004403cf: 8d 4d d8                                         lea ecx,[ebp-0x28]
  004403d2: c6 45 fc 15                                      mov BYTE PTR [ebp-0x4],0x15
  004403d6: e8 65 16 09 00                                   call 0x4d1a40
  004403db: 8b 45 88                                         mov eax,DWORD PTR [ebp-0x78]
  004403de: 33 db                                            xor ebx,ebx
  004403e0: 3b c3                                            cmp eax,ebx
  004403e2: c6 45 fc 14                                      mov BYTE PTR [ebp-0x4],0x14
  004403e6: 75 04                                            jne 0x4403ec
  004403e8: 33 f6                                            xor esi,esi
  004403ea: eb 02                                            jmp 0x4403ee
  004403ec: 8b 30                                            mov esi,DWORD PTR [eax]
  004403ee: 8b f8                                            mov edi,eax
  004403f0: 3b f7                                            cmp esi,edi
  004403f2: 74 3c                                            je 0x440430
  004403f4: 8b c6                                            mov eax,esi
  004403f6: 8b 36                                            mov esi,DWORD PTR [esi]
  004403f8: 53                                               push ebx
  004403f9: 8d 55 dc                                         lea edx,[ebp-0x24]
  004403fc: 52                                               push edx
  004403fd: 8d 4d a4                                         lea ecx,[ebp-0x5c]
  00440400: 89 45 a4                                         mov DWORD PTR [ebp-0x5c],eax
  00440403: e8 e8 10 00 00                                   call 0x4414f0
  00440408: 8b 00                                            mov eax,DWORD PTR [eax]
  0044040a: 8b 48 04                                         mov ecx,DWORD PTR [eax+0x4]
  0044040d: 8b 10                                            mov edx,DWORD PTR [eax]
  0044040f: 89 11                                            mov DWORD PTR [ecx],edx
  00440411: 8b 08                                            mov ecx,DWORD PTR [eax]
  00440413: 8b 50 04                                         mov edx,DWORD PTR [eax+0x4]
  00440416: 50                                               push eax
  00440417: 89 51 04                                         mov DWORD PTR [ecx+0x4],edx
  0044041a: e8 41 1c 00 00                                   call 0x442060
  0044041f: 8b 45 8c                                         mov eax,DWORD PTR [ebp-0x74]
  00440422: 83 c4 04                                         add esp,0x4
  00440425: 48                                               dec eax
  00440426: 89 45 8c                                         mov DWORD PTR [ebp-0x74],eax
  00440429: 8b 45 88                                         mov eax,DWORD PTR [ebp-0x78]
  0044042c: 33 db                                            xor ebx,ebx
  0044042e: eb c0                                            jmp 0x4403f0
  00440430: 50                                               push eax
  00440431: e8 2a 1c 00 00                                   call 0x442060
  00440436: 8b 45 bc                                         mov eax,DWORD PTR [ebp-0x44]
  00440439: 83 c4 04                                         add esp,0x4
  0044043c: 3b c3                                            cmp eax,ebx
  0044043e: 89 5d 88                                         mov DWORD PTR [ebp-0x78],ebx
  00440441: 89 5d 8c                                         mov DWORD PTR [ebp-0x74],ebx
  00440444: 74 1c                                            je 0x440462
  00440446: 8d 48 ff                                         lea ecx,[eax-0x1]
  00440449: 8a 01                                            mov al,BYTE PTR [ecx]
  0044044b: 84 c0                                            test al,al
  0044044d: 74 0a                                            je 0x440459
  0044044f: 3c ff                                            cmp al,0xff
  00440451: 74 06                                            je 0x440459
  00440453: fe c8                                            dec al
  00440455: 88 01                                            mov BYTE PTR [ecx],al
  00440457: eb 09                                            jmp 0x440462
  00440459: 51                                               push ecx
  0044045a: e8 01 1c 00 00                                   call 0x442060
  0044045f: 83 c4 04                                         add esp,0x4
  00440462: 8b 45 ac                                         mov eax,DWORD PTR [ebp-0x54]
  00440465: 3b c3                                            cmp eax,ebx
  00440467: 89 5d bc                                         mov DWORD PTR [ebp-0x44],ebx
  0044046a: 89 5d c0                                         mov DWORD PTR [ebp-0x40],ebx
  0044046d: 89 5d c4                                         mov DWORD PTR [ebp-0x3c],ebx
  00440470: 74 1c                                            je 0x44048e
  00440472: 8d 48 ff                                         lea ecx,[eax-0x1]
  00440475: 8a 01                                            mov al,BYTE PTR [ecx]
  00440477: 84 c0                                            test al,al
  00440479: 74 0a                                            je 0x440485
  0044047b: 3c ff                                            cmp al,0xff
  0044047d: 74 06                                            je 0x440485
  0044047f: fe c8                                            dec al
  00440481: 88 01                                            mov BYTE PTR [ecx],al
  00440483: eb 09                                            jmp 0x44048e
  00440485: 51                                               push ecx
  00440486: e8 d5 1b 00 00                                   call 0x442060
  0044048b: 83 c4 04                                         add esp,0x4
  0044048e: 8b 45 cc                                         mov eax,DWORD PTR [ebp-0x34]
  00440491: 3b c3                                            cmp eax,ebx
  00440493: 89 5d ac                                         mov DWORD PTR [ebp-0x54],ebx
  00440496: 89 5d b0                                         mov DWORD PTR [ebp-0x50],ebx
  00440499: 89 5d b4                                         mov DWORD PTR [ebp-0x4c],ebx
  0044049c: 74 1c                                            je 0x4404ba
  0044049e: 8d 48 ff                                         lea ecx,[eax-0x1]
  004404a1: 8a 01                                            mov al,BYTE PTR [ecx]
  004404a3: 84 c0                                            test al,al
  004404a5: 74 0a                                            je 0x4404b1
  004404a7: 3c ff                                            cmp al,0xff
  004404a9: 74 06                                            je 0x4404b1
  004404ab: fe c8                                            dec al
  004404ad: 88 01                                            mov BYTE PTR [ecx],al
  004404af: eb 09                                            jmp 0x4404ba
  004404b1: 51                                               push ecx
  004404b2: e8 a9 1b 00 00                                   call 0x442060
  004404b7: 83 c4 04                                         add esp,0x4
  004404ba: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  004404bd: 89 5d cc                                         mov DWORD PTR [ebp-0x34],ebx
  004404c0: 89 5d d0                                         mov DWORD PTR [ebp-0x30],ebx
  004404c3: 89 5d d4                                         mov DWORD PTR [ebp-0x2c],ebx
  004404c6: c6 45 fc 0d                                      mov BYTE PTR [ebp-0x4],0xd
  004404ca: e8 71 15 09 00                                   call 0x4d1a40
  004404cf: 8d 4d 98                                         lea ecx,[ebp-0x68]
  004404d2: c6 45 fc 0c                                      mov BYTE PTR [ebp-0x4],0xc
  004404d6: e8 65 15 09 00                                   call 0x4d1a40
  004404db: 8d 4d 90                                         lea ecx,[ebp-0x70]
  004404de: c6 45 fc 0b                                      mov BYTE PTR [ebp-0x4],0xb
  004404e2: e8 59 15 09 00                                   call 0x4d1a40
  004404e7: c7 45 fc 0a 00 00 00                             mov DWORD PTR [ebp-0x4],0xa
  004404ee: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004404f4: e8 c7 8e 01 00                                   call 0x4593c0
  004404f9: 8d 4d a0                                         lea ecx,[ebp-0x60]
  004404fc: c6 45 fc 09                                      mov BYTE PTR [ebp-0x4],0x9
  00440500: e8 3b 15 09 00                                   call 0x4d1a40
  00440505: 33 ff                                            xor edi,edi
  00440507: eb 38                                            jmp 0x440541
  00440521: 68 58 40 50 00                                   push 0x504058
  00440526: 6a 01                                            push 0x1
  00440528: 66 89 1d 94 42 51 00                             mov WORD PTR ds:0x514294,bx
  0044052f: c7 05 98 42 51 00 c4 09 00 00                    mov DWORD PTR ds:0x514298,0x9c4
  00440539: e8 02 18 03 00                                   call 0x471d40
  0044053e: 83 c4 08                                         add esp,0x8
  00440541: 8d 85 70 ff ff ff                                lea eax,[ebp-0x90]
  00440547: 50                                               push eax
  00440548: ff 15 e4 e0 4d 00                                call DWORD PTR ds:0x4de0e4
  0044054e: 68 a4 42 51 00                                   push 0x5142a4
  00440553: 8d 4d d8                                         lea ecx,[ebp-0x28]
  00440556: e8 f1 14 09 00                                   call 0x4d1a4c
  0044055b: 68 54 39 50 00                                   push 0x503954
  00440560: 8d 4d d8                                         lea ecx,[ebp-0x28]
  00440563: c6 45 fc 27                                      mov BYTE PTR [ebp-0x4],0x27
  00440567: e8 e6 14 09 00                                   call 0x4d1a52
  0044056c: 8b 4d d8                                         mov ecx,DWORD PTR [ebp-0x28]
  0044056f: 68 50 39 50 00                                   push 0x503950
  00440574: 51                                               push ecx
  00440575: ff 15 34 e3 4d 00                                call DWORD PTR ds:0x4de334
  0044057b: 8b f0                                            mov esi,eax
  0044057d: 83 c4 08                                         add esp,0x8
  00440580: 3b f7                                            cmp esi,edi
  00440582: 74 62                                            je 0x4405e6
  00440584: 8b 95 7c ff ff ff                                mov edx,DWORD PTR [ebp-0x84]
  0044058a: 8b 85 7a ff ff ff                                mov eax,DWORD PTR [ebp-0x86]
  00440590: 8b 8d 78 ff ff ff                                mov ecx,DWORD PTR [ebp-0x88]
  00440596: 81 e2 ff ff 00 00                                and edx,0xffff
  0044059c: 52                                               push edx
  0044059d: 8b 95 70 ff ff ff                                mov edx,DWORD PTR [ebp-0x90]
  004405a3: 25 ff ff 00 00                                   and eax,0xffff
  004405a8: 50                                               push eax
  004405a9: 8b 85 76 ff ff ff                                mov eax,DWORD PTR [ebp-0x8a]
  004405af: 81 e1 ff ff 00 00                                and ecx,0xffff
  004405b5: 51                                               push ecx
  004405b6: 8b 8d 72 ff ff ff                                mov ecx,DWORD PTR [ebp-0x8e]
  004405bc: 81 e2 ff ff 00 00                                and edx,0xffff
  004405c2: 52                                               push edx
  004405c3: 25 ff ff 00 00                                   and eax,0xffff
  004405c8: 50                                               push eax
  004405c9: 81 e1 ff ff 00 00                                and ecx,0xffff
  004405cf: 51                                               push ecx
  004405d0: 68 2c 40 50 00                                   push 0x50402c
  004405d5: 56                                               push esi
  004405d6: ff 15 38 e3 4d 00                                call DWORD PTR ds:0x4de338
  004405dc: 56                                               push esi
  004405dd: ff 15 3c e3 4d 00                                call DWORD PTR ds:0x4de33c
  004405e3: 83 c4 24                                         add esp,0x24
  004405e6: 8d 4d d8                                         lea ecx,[ebp-0x28]
  004405e9: c6 45 fc 09                                      mov BYTE PTR [ebp-0x4],0x9
  004405ed: e8 4e 14 09 00                                   call 0x4d1a40
  004405f2: 68 f4 3f 50 00                                   push 0x503ff4
  004405f7: 68 02 00 00 80                                   push 0x80000002
  004405fc: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440602: e8 09 8c 01 00                                   call 0x459210
  00440607: 3b c7                                            cmp eax,edi
  00440609: 0f 84 72 04 00 00                                je 0x440a81
  0044060f: 6a 01                                            push 0x1
  00440611: 68 dc 3f 50 00                                   push 0x503fdc
  00440616: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044061c: e8 df 8c 01 00                                   call 0x459300
  00440621: 3c 02                                            cmp al,0x2
  00440623: a2 24 42 51 00                                   mov ds:0x514224,al
  00440628: 75 20                                            jne 0x44064a
  0044062a: e8 21 80 03 00                                   call 0x478650
  0044062f: 84 c0                                            test al,al
  00440631: 75 17                                            jne 0x44064a
  00440633: 68 a0 3f 50 00                                   push 0x503fa0
  00440638: 6a 01                                            push 0x1
  0044063a: e8 01 17 03 00                                   call 0x471d40
  0044063f: 83 c4 08                                         add esp,0x8
  00440642: 6a 7f                                            push 0x7f
  00440644: ff 15 40 e3 4d 00                                call DWORD PTR ds:0x4de340
  0044064a: 68 58 13 51 00                                   push 0x511358
  0044064f: 68 8c 3f 50 00                                   push 0x503f8c
  00440654: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044065a: e8 51 8c 01 00                                   call 0x4592b0
  0044065f: 50                                               push eax
  00440660: b9 2c 42 51 00                                   mov ecx,0x51422c
  00440665: e8 ee 13 09 00                                   call 0x4d1a58
  0044066a: b9 2c 42 51 00                                   mov ecx,0x51422c
  0044066f: e8 0e 14 09 00                                   call 0x4d1a82
  00440674: b9 2c 42 51 00                                   mov ecx,0x51422c
  00440679: e8 fe 13 09 00                                   call 0x4d1a7c
  0044067e: 68 58 13 51 00                                   push 0x511358
  00440683: 68 80 3f 50 00                                   push 0x503f80
  00440688: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044068e: e8 1d 8c 01 00                                   call 0x4592b0
  00440693: 50                                               push eax
  00440694: b9 30 42 51 00                                   mov ecx,0x514230
  00440699: e8 ba 13 09 00                                   call 0x4d1a58
  0044069e: b9 30 42 51 00                                   mov ecx,0x514230
  004406a3: e8 da 13 09 00                                   call 0x4d1a82
  004406a8: b9 30 42 51 00                                   mov ecx,0x514230
  004406ad: e8 ca 13 09 00                                   call 0x4d1a7c
  004406b2: 68 64 3f 50 00                                   push 0x503f64
  004406b7: 68 58 3f 50 00                                   push 0x503f58
  004406bc: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004406c2: e8 e9 8b 01 00                                   call 0x4592b0
  004406c7: 50                                               push eax
  004406c8: b9 38 42 51 00                                   mov ecx,0x514238
  004406cd: e8 86 13 09 00                                   call 0x4d1a58
  004406d2: b9 38 42 51 00                                   mov ecx,0x514238
  004406d7: e8 a6 13 09 00                                   call 0x4d1a82
  004406dc: b9 38 42 51 00                                   mov ecx,0x514238
  004406e1: e8 96 13 09 00                                   call 0x4d1a7c
  004406e6: 68 58 13 51 00                                   push 0x511358
  004406eb: 68 4c 3f 50 00                                   push 0x503f4c
  004406f0: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004406f6: e8 b5 8b 01 00                                   call 0x4592b0
  004406fb: 50                                               push eax
  004406fc: b9 3c 42 51 00                                   mov ecx,0x51423c
  00440701: e8 52 13 09 00                                   call 0x4d1a58
  00440706: b9 3c 42 51 00                                   mov ecx,0x51423c
  0044070b: e8 72 13 09 00                                   call 0x4d1a82
  00440710: b9 3c 42 51 00                                   mov ecx,0x51423c
  00440715: e8 62 13 09 00                                   call 0x4d1a7c
  0044071a: 68 40 3f 50 00                                   push 0x503f40
  0044071f: 68 30 3f 50 00                                   push 0x503f30
  00440724: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044072a: e8 81 8b 01 00                                   call 0x4592b0
  0044072f: 50                                               push eax
  00440730: b9 40 42 51 00                                   mov ecx,0x514240
  00440735: e8 1e 13 09 00                                   call 0x4d1a58
  0044073a: b9 40 42 51 00                                   mov ecx,0x514240
  0044073f: e8 3e 13 09 00                                   call 0x4d1a82
  00440744: b9 40 42 51 00                                   mov ecx,0x514240
  00440749: e8 2e 13 09 00                                   call 0x4d1a7c
  0044074e: 68 24 3f 50 00                                   push 0x503f24
  00440753: 68 18 3f 50 00                                   push 0x503f18
  00440758: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044075e: e8 4d 8b 01 00                                   call 0x4592b0
  00440763: 50                                               push eax
  00440764: b9 44 42 51 00                                   mov ecx,0x514244
  00440769: e8 ea 12 09 00                                   call 0x4d1a58
  0044076e: b9 44 42 51 00                                   mov ecx,0x514244
  00440773: e8 0a 13 09 00                                   call 0x4d1a82
  00440778: b9 44 42 51 00                                   mov ecx,0x514244
  0044077d: e8 fa 12 09 00                                   call 0x4d1a7c
  00440782: 68 10 3f 50 00                                   push 0x503f10
  00440787: 68 00 3f 50 00                                   push 0x503f00
  0044078c: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440792: e8 19 8b 01 00                                   call 0x4592b0
  00440797: 50                                               push eax
  00440798: b9 28 42 51 00                                   mov ecx,0x514228
  0044079d: e8 b6 12 09 00                                   call 0x4d1a58
  004407a2: b9 28 42 51 00                                   mov ecx,0x514228
  004407a7: e8 d6 12 09 00                                   call 0x4d1a82
  004407ac: b9 28 42 51 00                                   mov ecx,0x514228
  004407b1: e8 c6 12 09 00                                   call 0x4d1a7c
  004407b6: 68 58 13 51 00                                   push 0x511358
  004407bb: 68 f0 3e 50 00                                   push 0x503ef0
  004407c0: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004407c6: e8 e5 8a 01 00                                   call 0x4592b0
  004407cb: 50                                               push eax
  004407cc: b9 34 42 51 00                                   mov ecx,0x514234
  004407d1: e8 82 12 09 00                                   call 0x4d1a58
  004407d6: b9 34 42 51 00                                   mov ecx,0x514234
  004407db: e8 a2 12 09 00                                   call 0x4d1a82
  004407e0: b9 34 42 51 00                                   mov ecx,0x514234
  004407e5: e8 92 12 09 00                                   call 0x4d1a7c
  004407ea: 6a 01                                            push 0x1
  004407ec: 68 dc 3e 50 00                                   push 0x503edc
  004407f1: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004407f7: e8 04 8b 01 00                                   call 0x459300
  004407fc: 33 d2                                            xor edx,edx
  004407fe: 66 3b c7                                         cmp ax,di
  00440801: 0f 95 c2                                         setne dl
  00440804: b9 3c 42 51 00                                   mov ecx,0x51423c
  00440809: 89 15 48 42 51 00                                mov DWORD PTR ds:0x514248,edx
  0044080f: e8 6e 12 09 00                                   call 0x4d1a82
  00440814: b9 3c 42 51 00                                   mov ecx,0x51423c
  00440819: e8 5e 12 09 00                                   call 0x4d1a7c
  0044081e: 68 d4 3e 50 00                                   push 0x503ed4
  00440823: 68 c8 3e 50 00                                   push 0x503ec8
  00440828: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044082e: e8 7d 8a 01 00                                   call 0x4592b0
  00440833: 50                                               push eax
  00440834: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  00440837: e8 28 12 09 00                                   call 0x4d1a64
  0044083c: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0044083f: c6 45 fc 28                                      mov BYTE PTR [ebp-0x4],0x28
  00440843: e8 3a 12 09 00                                   call 0x4d1a82
  00440848: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0044084b: e8 2c 12 09 00                                   call 0x4d1a7c
  00440850: 8d 45 e4                                         lea eax,[ebp-0x1c]
  00440853: 50                                               push eax
  00440854: b9 50 42 51 00                                   mov ecx,0x514250
  00440859: e8 e8 11 09 00                                   call 0x4d1a46
  0044085e: 68 d4 3e 50 00                                   push 0x503ed4
  00440863: 68 bc 3e 50 00                                   push 0x503ebc
  00440868: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044086e: e8 3d 8a 01 00                                   call 0x4592b0
  00440873: 50                                               push eax
  00440874: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  00440877: e8 dc 11 09 00                                   call 0x4d1a58
  0044087c: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0044087f: e8 fe 11 09 00                                   call 0x4d1a82
  00440884: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  00440887: e8 f0 11 09 00                                   call 0x4d1a7c
  0044088c: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  0044088f: 51                                               push ecx
  00440890: b9 4c 42 51 00                                   mov ecx,0x51424c
  00440895: e8 ac 11 09 00                                   call 0x4d1a46
  0044089a: 68 58 13 51 00                                   push 0x511358
  0044089f: 68 b0 3e 50 00                                   push 0x503eb0
  004408a4: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004408aa: e8 01 8a 01 00                                   call 0x4592b0
  004408af: 50                                               push eax
  004408b0: b9 74 42 51 00                                   mov ecx,0x514274
  004408b5: e8 9e 11 09 00                                   call 0x4d1a58
  004408ba: b9 74 42 51 00                                   mov ecx,0x514274
  004408bf: e8 be 11 09 00                                   call 0x4d1a82
  004408c4: b9 74 42 51 00                                   mov ecx,0x514274
  004408c9: e8 ae 11 09 00                                   call 0x4d1a7c
  004408ce: 68 58 13 51 00                                   push 0x511358
  004408d3: 68 9c 3e 50 00                                   push 0x503e9c
  004408d8: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004408de: e8 cd 89 01 00                                   call 0x4592b0
  004408e3: 50                                               push eax
  004408e4: b9 78 42 51 00                                   mov ecx,0x514278
  004408e9: e8 6a 11 09 00                                   call 0x4d1a58
  004408ee: b9 78 42 51 00                                   mov ecx,0x514278
  004408f3: e8 8a 11 09 00                                   call 0x4d1a82
  004408f8: b9 78 42 51 00                                   mov ecx,0x514278
  004408fd: e8 7a 11 09 00                                   call 0x4d1a7c
  00440902: 57                                               push edi
  00440903: 68 8c 3e 50 00                                   push 0x503e8c
  00440908: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044090e: e8 ed 89 01 00                                   call 0x459300
  00440913: 68 80 3e 50 00                                   push 0x503e80
  00440918: 66 a3 54 42 51 00                                mov ds:0x514254,ax
  0044091e: 68 74 3e 50 00                                   push 0x503e74
  00440923: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440929: e8 82 89 01 00                                   call 0x4592b0
  0044092e: 50                                               push eax
  0044092f: b9 6c 42 51 00                                   mov ecx,0x51426c
  00440934: e8 1f 11 09 00                                   call 0x4d1a58
  00440939: 57                                               push edi
  0044093a: 68 64 3e 50 00                                   push 0x503e64
  0044093f: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440945: e8 b6 89 01 00                                   call 0x459300
  0044094a: 3b c7                                            cmp eax,edi
  0044094c: 57                                               push edi
  0044094d: 0f 95 c2                                         setne dl
  00440950: 68 54 3e 50 00                                   push 0x503e54
  00440955: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  0044095b: 88 15 7c 42 51 00                                mov BYTE PTR ds:0x51427c,dl
  00440961: e8 9a 89 01 00                                   call 0x459300
  00440966: 68 58 13 51 00                                   push 0x511358
  0044096b: 68 48 3e 50 00                                   push 0x503e48
  00440970: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440976: 66 a3 56 42 51 00                                mov ds:0x514256,ax
  0044097c: e8 2f 89 01 00                                   call 0x4592b0
  00440981: 50                                               push eax
  00440982: b9 58 42 51 00                                   mov ecx,0x514258
  00440987: e8 cc 10 09 00                                   call 0x4d1a58
  0044098c: 57                                               push edi
  0044098d: 68 34 3e 50 00                                   push 0x503e34
  00440992: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440998: e8 63 89 01 00                                   call 0x459300
  0044099d: 68 58 13 51 00                                   push 0x511358
  004409a2: 68 24 3e 50 00                                   push 0x503e24
  004409a7: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004409ad: 66 a3 5c 42 51 00                                mov ds:0x51425c,ax
  004409b3: e8 f8 88 01 00                                   call 0x4592b0
  004409b8: 50                                               push eax
  004409b9: b9 60 42 51 00                                   mov ecx,0x514260
  004409be: e8 95 10 09 00                                   call 0x4d1a58
  004409c3: 57                                               push edi
  004409c4: 68 10 3e 50 00                                   push 0x503e10
  004409c9: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004409cf: e8 2c 89 01 00                                   call 0x459300
  004409d4: 68 58 13 51 00                                   push 0x511358
  004409d9: 68 00 3e 50 00                                   push 0x503e00
  004409de: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  004409e4: 66 a3 64 42 51 00                                mov ds:0x514264,ax
  004409ea: e8 c1 88 01 00                                   call 0x4592b0
  004409ef: 50                                               push eax
  004409f0: b9 68 42 51 00                                   mov ecx,0x514268
  004409f5: e8 5e 10 09 00                                   call 0x4d1a58
  004409fa: 68 58 13 51 00                                   push 0x511358
  004409ff: 68 f4 3d 50 00                                   push 0x503df4
  00440a04: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440a0a: e8 a1 88 01 00                                   call 0x4592b0
  00440a0f: 50                                               push eax
  00440a10: b9 70 42 51 00                                   mov ecx,0x514270
  00440a15: e8 3e 10 09 00                                   call 0x4d1a58
  00440a1a: 57                                               push edi
  00440a1b: 68 ec 3d 50 00                                   push 0x503dec
  00440a20: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440a26: e8 d5 88 01 00                                   call 0x459300
  00440a2b: 66 3b c7                                         cmp ax,di
  00440a2e: 66 a3 84 42 51 00                                mov ds:0x514284,ax
  00440a34: 74 28                                            je 0x440a5e
  00440a36: a1 84 42 51 00                                   mov eax,ds:0x514284
  00440a3b: 25 ff ff 00 00                                   and eax,0xffff
  00440a40: 50                                               push eax
  00440a41: 68 b0 3d 50 00                                   push 0x503db0
  00440a46: 68 00 04 00 00                                   push 0x400
  00440a4b: e8 f0 12 03 00                                   call 0x471d40
  00440a50: 83 c4 0c                                         add esp,0xc
  00440a53: 66 c7 05 86 42 51 00 01 00                       mov WORD PTR ds:0x514286,0x1
  00440a5c: eb 07                                            jmp 0x440a65
  00440a5e: 66 89 3d 86 42 51 00                             mov WORD PTR ds:0x514286,di
  00440a65: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440a6b: e8 50 89 01 00                                   call 0x4593c0
  00440a70: 8d 4d e4                                         lea ecx,[ebp-0x1c]
  00440a73: c6 45 fc 09                                      mov BYTE PTR [ebp-0x4],0x9
  00440a77: e8 c4 0f 09 00                                   call 0x4d1a40
  00440a7c: e9 85 00 00 00                                   jmp 0x440b06
  00440a81: 68 58 13 51 00                                   push 0x511358
  00440a86: b9 2c 42 51 00                                   mov ecx,0x51422c
  00440a8b: e8 c8 0f 09 00                                   call 0x4d1a58
  00440a90: 68 58 13 51 00                                   push 0x511358
  00440a95: b9 30 42 51 00                                   mov ecx,0x514230
  00440a9a: e8 b9 0f 09 00                                   call 0x4d1a58
  00440a9f: 68 64 3f 50 00                                   push 0x503f64
  00440aa4: b9 38 42 51 00                                   mov ecx,0x514238
  00440aa9: e8 aa 0f 09 00                                   call 0x4d1a58
  00440aae: 68 58 13 51 00                                   push 0x511358
  00440ab3: b9 3c 42 51 00                                   mov ecx,0x51423c
  00440ab8: e8 9b 0f 09 00                                   call 0x4d1a58
  00440abd: 68 40 3f 50 00                                   push 0x503f40
  00440ac2: b9 40 42 51 00                                   mov ecx,0x514240
  00440ac7: e8 8c 0f 09 00                                   call 0x4d1a58
  00440acc: 68 10 3f 50 00                                   push 0x503f10
  00440ad1: b9 28 42 51 00                                   mov ecx,0x514228
  00440ad6: e8 7d 0f 09 00                                   call 0x4d1a58
  00440adb: 68 80 3e 50 00                                   push 0x503e80
  00440ae0: b9 6c 42 51 00                                   mov ecx,0x51426c
  00440ae5: 89 3d 48 42 51 00                                mov DWORD PTR ds:0x514248,edi
  00440aeb: 66 89 3d 54 42 51 00                             mov WORD PTR ds:0x514254,di
  00440af2: e8 61 0f 09 00                                   call 0x4d1a58
  00440af7: 68 d8 3c 50 00                                   push 0x503cd8
  00440afc: 6a 01                                            push 0x1
  00440afe: e8 3d 12 03 00                                   call 0x471d40
  00440b03: 83 c4 08                                         add esp,0x8
  00440b06: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440b0c: e8 af 88 01 00                                   call 0x4593c0
  00440b11: 68 60 11 50 00                                   push 0x501160
  00440b16: 68 02 00 00 80                                   push 0x80000002
  00440b1b: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440b21: e8 ea 86 01 00                                   call 0x459210
  00440b26: 68 58 13 51 00                                   push 0x511358
  00440b2b: 68 d0 3c 50 00                                   push 0x503cd0
  00440b30: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440b36: e8 75 87 01 00                                   call 0x4592b0
  00440b3b: 50                                               push eax
  00440b3c: b9 c0 42 51 00                                   mov ecx,0x5142c0
  00440b41: e8 12 0f 09 00                                   call 0x4d1a58
  00440b46: 68 58 13 51 00                                   push 0x511358
  00440b4b: 68 c8 3c 50 00                                   push 0x503cc8
  00440b50: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440b56: e8 55 87 01 00                                   call 0x4592b0
  00440b5b: 50                                               push eax
  00440b5c: b9 c4 42 51 00                                   mov ecx,0x5142c4
  00440b61: e8 f2 0e 09 00                                   call 0x4d1a58
  00440b66: 68 f0 42 51 00                                   push 0x5142f0
  00440b6b: 8d 4d 94                                         lea ecx,[ebp-0x6c]
  00440b6e: 89 3d cc 42 51 00                                mov DWORD PTR ds:0x5142cc,edi
  00440b74: e8 d3 0e 09 00                                   call 0x4d1a4c
  00440b79: 68 44 42 50 00                                   push 0x504244
  00440b7e: 8d 4d 94                                         lea ecx,[ebp-0x6c]
  00440b81: c6 45 fc 29                                      mov BYTE PTR [ebp-0x4],0x29
  00440b85: e8 c8 0e 09 00                                   call 0x4d1a52
  00440b8a: 8b 4d 94                                         mov ecx,DWORD PTR [ebp-0x6c]
  00440b8d: 51                                               push ecx
  00440b8e: e8 9d 09 09 00                                   call 0x4d1530
  00440b93: 83 c4 04                                         add esp,0x4
  00440b96: 68 d4 11 50 00                                   push 0x5011d4
  00440b9b: e8 10 0a 09 00                                   call 0x4d15b0
  00440ba0: 83 c4 04                                         add esp,0x4
  00440ba3: 68 b4 3c 50 00                                   push 0x503cb4
  00440ba8: 68 f0 42 51 00                                   push 0x5142f0
  00440bad: 8d 55 9c                                         lea edx,[ebp-0x64]
  00440bb0: 52                                               push edx
  00440bb1: e8 20 0f 09 00                                   call 0x4d1ad6
  00440bb6: 8d 8d 34 fe ff ff                                lea ecx,[ebp-0x1cc]
  00440bbc: c6 45 fc 2a                                      mov BYTE PTR [ebp-0x4],0x2a
  00440bc0: e8 0b 0f 09 00                                   call 0x4d1ad0
  00440bc5: 68 48 04 50 00                                   push 0x500448
  00440bca: 68 f0 42 51 00                                   push 0x5142f0
  00440bcf: 8d 45 a4                                         lea eax,[ebp-0x5c]
  00440bd2: 50                                               push eax
  00440bd3: c6 45 fc 2b                                      mov BYTE PTR [ebp-0x4],0x2b
  00440bd7: e8 fa 0e 09 00                                   call 0x4d1ad6
  00440bdc: 8b 00                                            mov eax,DWORD PTR [eax]
  00440bde: 57                                               push edi
  00440bdf: 50                                               push eax
  00440be0: 8d 8d 34 fe ff ff                                lea ecx,[ebp-0x1cc]
  00440be6: c6 45 fc 2c                                      mov BYTE PTR [ebp-0x4],0x2c
  00440bea: e8 db 0e 09 00                                   call 0x4d1aca
  00440bef: 85 c0                                            test eax,eax
  00440bf1: 8d 4d a4                                         lea ecx,[ebp-0x5c]
  00440bf4: 0f 94 c3                                         sete bl
  00440bf7: c6 45 fc 2b                                      mov BYTE PTR [ebp-0x4],0x2b
  00440bfb: e8 40 0e 09 00                                   call 0x4d1a40
  00440c00: 84 db                                            test bl,bl
  00440c02: 74 35                                            je 0x440c39
  00440c04: 8b 0d f0 42 51 00                                mov ecx,DWORD PTR ds:0x5142f0
  00440c0a: 51                                               push ecx
  00440c0b: 68 98 3c 50 00                                   push 0x503c98
  00440c10: 68 80 00 00 00                                   push 0x80
  00440c15: e8 26 11 03 00                                   call 0x471d40
  00440c1a: 83 c4 0c                                         add esp,0xc
  00440c1d: 8d 95 b8 f9 ff ff                                lea edx,[ebp-0x648]
  00440c23: 52                                               push edx
  00440c24: 8d 4d 9c                                         lea ecx,[ebp-0x64]
  00440c27: e8 2c 0e 09 00                                   call 0x4d1a58
  00440c2c: 68 b4 3c 50 00                                   push 0x503cb4
  00440c31: 8d 4d 9c                                         lea ecx,[ebp-0x64]
  00440c34: e8 19 0e 09 00                                   call 0x4d1a52
  00440c39: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  00440c3f: e8 4c 85 01 00                                   call 0x459190
  00440c44: 68 54 3c 50 00                                   push 0x503c54
  00440c49: 68 02 00 00 80                                   push 0x80000002
  00440c4e: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  00440c54: c6 45 fc 2d                                      mov BYTE PTR [ebp-0x4],0x2d
  00440c58: e8 b3 85 01 00                                   call 0x459210
  00440c5d: 85 c0                                            test eax,eax
  00440c5f: 75 4a                                            jne 0x440cab
  00440c61: 68 18 3c 50 00                                   push 0x503c18
  00440c66: 6a 40                                            push 0x40
  00440c68: e8 d3 10 03 00                                   call 0x471d40
  00440c6d: 83 c4 08                                         add esp,0x8
  00440c70: 68 54 3c 50 00                                   push 0x503c54
  00440c75: 68 02 00 00 80                                   push 0x80000002
  00440c7a: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  00440c80: e8 3b 85 01 00                                   call 0x4591c0
  00440c85: 8b 45 9c                                         mov eax,DWORD PTR [ebp-0x64]
  00440c88: 50                                               push eax
  00440c89: 68 04 3c 50 00                                   push 0x503c04
  00440c8e: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  00440c94: e8 c7 85 01 00                                   call 0x459260
  00440c99: 6a 07                                            push 0x7
  00440c9b: 68 f4 3b 50 00                                   push 0x503bf4
  00440ca0: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  00440ca6: e8 e5 85 01 00                                   call 0x459290
  00440cab: 8d 8d 24 fd ff ff                                lea ecx,[ebp-0x2dc]
  00440cb1: c6 45 fc 2b                                      mov BYTE PTR [ebp-0x4],0x2b
  00440cb5: e8 e6 84 01 00                                   call 0x4591a0
  00440cba: ff 15 88 e1 4d 00                                call DWORD PTR ds:0x4de188
  00440cc0: 50                                               push eax
  00440cc1: 8d 8d b8 f9 ff ff                                lea ecx,[ebp-0x648]
  00440cc7: 51                                               push ecx
  00440cc8: ff 15 24 e1 4d 00                                call DWORD PTR ds:0x4de124
  00440cce: 68 00 01 00 00                                   push 0x100
  00440cd3: 8d 95 b8 ee ff ff                                lea edx,[ebp-0x1148]
  00440cd9: 52                                               push edx
  00440cda: 6a ff                                            push 0xffffffff
  00440cdc: 8d 85 b8 f9 ff ff                                lea eax,[ebp-0x648]
  00440ce2: 50                                               push eax
  00440ce3: 6a 00                                            push 0x0
  00440ce5: 6a 00                                            push 0x0
  00440ce7: ff 15 f0 e0 4d 00                                call DWORD PTR ds:0x4de0f0
  00440ced: 8d 8d 64 ff ff ff                                lea ecx,[ebp-0x9c]
  00440cf3: 51                                               push ecx
  00440cf4: 8d 95 b8 ee ff ff                                lea edx,[ebp-0x1148]
  00440cfa: 52                                               push edx
  00440cfb: ff 15 38 e4 4d 00                                call DWORD PTR ds:0x4de438
  00440d01: 8b f8                                            mov edi,eax
  00440d03: 83 bd 64 ff ff ff 02                             cmp DWORD PTR [ebp-0x9c],0x2
  00440d0a: be 01 00 00 00                                   mov esi,0x1
  00440d0f: 75 40                                            jne 0x440d51
  00440d11: 8b 47 04                                         mov eax,DWORD PTR [edi+0x4]
  00440d14: 8b 1d 1c e3 4d 00                                mov ebx,DWORD PTR ds:0x4de31c
  00440d1a: 68 ec 3b 50 00                                   push 0x503bec
  00440d1f: 50                                               push eax
  00440d20: ff d3                                            call ebx
  00440d22: 83 c4 08                                         add esp,0x8
  00440d25: 85 c0                                            test eax,eax
  00440d27: 75 0a                                            jne 0x440d33
  00440d29: 33 f6                                            xor esi,esi
  00440d2b: 89 35 cc 42 51 00                                mov DWORD PTR ds:0x5142cc,esi
  00440d31: eb 1e                                            jmp 0x440d51
  00440d33: 8b 4f 04                                         mov ecx,DWORD PTR [edi+0x4]
  00440d36: 68 cc 3b 50 00                                   push 0x503bcc
  00440d3b: 51                                               push ecx
  00440d3c: ff d3                                            call ebx
  00440d3e: 83 c4 08                                         add esp,0x8
  00440d41: 85 c0                                            test eax,eax
  00440d43: 75 0c                                            jne 0x440d51
  00440d45: c7 05 cc 42 51 00 01 00 00 00                    mov DWORD PTR ds:0x5142cc,0x1
  00440d4f: 33 f6                                            xor esi,esi
  00440d51: 57                                               push edi
  00440d52: ff 15 84 e1 4d 00                                call DWORD PTR ds:0x4de184
  00440d58: 85 f6                                            test esi,esi
  00440d5a: 0f 84 d1 00 00 00                                je 0x440e31
  00440d60: 68 20 bf 02 00                                   push 0x2bf20
  00440d65: 8d 8d d0 fc ff ff                                lea ecx,[ebp-0x330]
  00440d6b: c7 05 cc 42 51 00 01 00 00 00                    mov DWORD PTR ds:0x5142cc,0x1
  00440d75: e8 f6 f7 fc ff                                   call 0x410570
  00440d7a: 68 50 14 44 00                                   push 0x441450
  00440d7f: 6a 00                                            push 0x0
  00440d81: 6a 00                                            push 0x0
  00440d83: 8d 8d d0 fc ff ff                                lea ecx,[ebp-0x330]
  00440d89: e8 e2 f3 fc ff                                   call 0x410170
  00440d8e: 68 10 0f 44 00                                   push 0x440f10
  00440d93: 68 c0 3b 50 00                                   push 0x503bc0
  00440d98: 8d 8d d0 fc ff ff                                lea ecx,[ebp-0x330]
  00440d9e: e8 6d f3 fc ff                                   call 0x410110
  00440da3: 83 f8 01                                         cmp eax,0x1
  00440da6: 0f 84 8f 00 00 00                                je 0x440e3b
  00440dac: 6a 00                                            push 0x0
  00440dae: 68 ec 10 50 00                                   push 0x5010ec
  00440db3: 68 1c 3b 50 00                                   push 0x503b1c
  00440db8: 6a 00                                            push 0x0
  00440dba: c7 05 cc 42 51 00 00 00 00 00                    mov DWORD PTR ds:0x5142cc,0x0
  00440dc4: ff 15 64 e4 4d 00                                call DWORD PTR ds:0x4de464
  00440dca: 8d 8d 34 fe ff ff                                lea ecx,[ebp-0x1cc]
  00440dd0: c6 45 fc 2a                                      mov BYTE PTR [ebp-0x4],0x2a
  00440dd4: e8 eb 0c 09 00                                   call 0x4d1ac4
  00440dd9: 8d 4d 9c                                         lea ecx,[ebp-0x64]
  00440ddc: c6 45 fc 29                                      mov BYTE PTR [ebp-0x4],0x29
  00440de0: e8 5b 0c 09 00                                   call 0x4d1a40
  00440de5: c6 45 fc 09                                      mov BYTE PTR [ebp-0x4],0x9
  00440de9: 8d 4d 94                                         lea ecx,[ebp-0x6c]
  00440dec: e8 4f 0c 09 00                                   call 0x4d1a40
  00440df1: 8d 8d 6c ff ff ff                                lea ecx,[ebp-0x94]
  00440df7: c6 45 fc 03                                      mov BYTE PTR [ebp-0x4],0x3
  00440dfb: e8 40 0c 09 00                                   call 0x4d1a40
  00440e00: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440e06: c6 45 fc 01                                      mov BYTE PTR [ebp-0x4],0x1
  00440e0a: e8 91 83 01 00                                   call 0x4591a0
  00440e0f: 8d 8d d0 fc ff ff                                lea ecx,[ebp-0x330]
  00440e15: c6 45 fc 00                                      mov BYTE PTR [ebp-0x4],0x0
  00440e19: e8 e2 f2 fc ff                                   call 0x410100
  00440e1e: 33 c0                                            xor eax,eax
  00440e20: 8b 4d f4                                         mov ecx,DWORD PTR [ebp-0xc]
  00440e23: 64 89 0d 00 00 00 00                             mov DWORD PTR fs:0x0,ecx
  00440e2a: 5f                                               pop edi
  00440e2b: 5e                                               pop esi
  00440e2c: 5b                                               pop ebx
  00440e2d: 8b e5                                            mov esp,ebp
  00440e2f: 5d                                               pop ebp
  00440e30: c3                                               ret 
  00440e31: 6a 00                                            push 0x0
  00440e33: e8 d8 00 00 00                                   call 0x440f10
  00440e38: 83 c4 04                                         add esp,0x4
  00440e3b: 8d 8d 34 fe ff ff                                lea ecx,[ebp-0x1cc]
  00440e41: c6 45 fc 2a                                      mov BYTE PTR [ebp-0x4],0x2a
  00440e45: e8 7a 0c 09 00                                   call 0x4d1ac4
  00440e4a: 8d 4d 9c                                         lea ecx,[ebp-0x64]
  00440e4d: c6 45 fc 29                                      mov BYTE PTR [ebp-0x4],0x29
  00440e51: e8 ea 0b 09 00                                   call 0x4d1a40
  00440e56: 8d 4d 94                                         lea ecx,[ebp-0x6c]
  00440e59: c6 45 fc 09                                      mov BYTE PTR [ebp-0x4],0x9
  00440e5d: e8 de 0b 09 00                                   call 0x4d1a40
  00440e62: 8d 8d 6c ff ff ff                                lea ecx,[ebp-0x94]
  00440e68: c6 45 fc 03                                      mov BYTE PTR [ebp-0x4],0x3
  00440e6c: e8 cf 0b 09 00                                   call 0x4d1a40
  00440e71: 8d 8d 50 fe ff ff                                lea ecx,[ebp-0x1b0]
  00440e77: c6 45 fc 01                                      mov BYTE PTR [ebp-0x4],0x1
  00440e7b: e8 20 83 01 00                                   call 0x4591a0
  00440e80: 8d 8d d0 fc ff ff                                lea ecx,[ebp-0x330]
  00440e86: c6 45 fc 00                                      mov BYTE PTR [ebp-0x4],0x0
  00440e8a: e8 71 f2 fc ff                                   call 0x410100
  00440e8f: 8b 4d f4                                         mov ecx,DWORD PTR [ebp-0xc]
  00440e92: 5f                                               pop edi
  00440e93: 5e                                               pop esi
  00440e94: b8 01 00 00 00                                   mov eax,0x1
  00440e99: 64 89 0d 00 00 00 00                             mov DWORD PTR fs:0x0,ecx
  00440ea0: 5b                                               pop ebx
  00440ea1: 8b e5                                            mov esp,ebp
  00440ea3: 5d                                               pop ebp
  00440ea4: c3                                               ret 
