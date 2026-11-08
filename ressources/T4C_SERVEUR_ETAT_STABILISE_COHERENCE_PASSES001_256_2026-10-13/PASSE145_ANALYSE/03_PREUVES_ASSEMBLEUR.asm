; PASSE 145  PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les lignes sont des instructions et non du code source modifié
  004100a0: 8b c1                                            mov eax,ecx
  004100a2: 33 c9                                            xor ecx,ecx
  004100a4: ba 88 13 00 00                                   mov edx,0x1388
  004100a9: 89 08                                            mov DWORD PTR [eax],ecx
  004100ab: 89 48 04                                         mov DWORD PTR [eax+0x4],ecx
  004100ae: 89 48 0c                                         mov DWORD PTR [eax+0xc],ecx
  004100b1: 89 48 10                                         mov DWORD PTR [eax+0x10],ecx
  004100b4: 89 48 14                                         mov DWORD PTR [eax+0x14],ecx
  004100b7: 89 48 18                                         mov DWORD PTR [eax+0x18],ecx
  004100ba: 89 48 1c                                         mov DWORD PTR [eax+0x1c],ecx
  004100bd: 89 48 20                                         mov DWORD PTR [eax+0x20],ecx
  004100c0: 89 48 24                                         mov DWORD PTR [eax+0x24],ecx
  004100c3: c7 40 28 10 27 00 00                             mov DWORD PTR [eax+0x28],0x2710
  004100ca: c7 40 2c 98 3a 00 00                             mov DWORD PTR [eax+0x2c],0x3a98
  004100d1: 89 50 30                                         mov DWORD PTR [eax+0x30],edx
  004100d4: 89 50 34                                         mov DWORD PTR [eax+0x34],edx
  004100d7: c7 40 38 ff 01 0f 00                             mov DWORD PTR [eax+0x38],0xf01ff
  004100de: c7 40 3c 10 00 00 00                             mov DWORD PTR [eax+0x3c],0x10
  004100e5: c7 40 40 02 00 00 00                             mov DWORD PTR [eax+0x40],0x2
  004100ec: c7 40 44 01 00 00 00                             mov DWORD PTR [eax+0x44],0x1
  004100f3: 89 48 48                                         mov DWORD PTR [eax+0x48],ecx
  004100f6: 89 48 4c                                         mov DWORD PTR [eax+0x4c],ecx
  004100f9: 89 48 50                                         mov DWORD PTR [eax+0x50],ecx
  004100fc: c3                                               ret 
  004414c0: 55                                               push ebp
  004414c1: 8b ec                                            mov ebp,esp
  004414c3: 8b 41 04                                         mov eax,DWORD PTR [ecx+0x4]
  004414c6: 85 c0                                            test eax,eax
  004414c8: 75 0b                                            jne 0x4414d5
  004414ca: 8b 45 08                                         mov eax,DWORD PTR [ebp+0x8]
  004414cd: 33 c9                                            xor ecx,ecx
  004414cf: 89 08                                            mov DWORD PTR [eax],ecx
  004414d1: 5d                                               pop ebp
  004414d2: c2 04 00                                         ret 0x4
  004414d5: 8b 00                                            mov eax,DWORD PTR [eax]
  004414d7: 8b 4d 08                                         mov ecx,DWORD PTR [ebp+0x8]
  004414da: 89 01                                            mov DWORD PTR [ecx],eax
  004414dc: 8b c1                                            mov eax,ecx
  004414de: 5d                                               pop ebp
  004414df: c2 04 00                                         ret 0x4
  004414f0: 55                                               push ebp
  004414f1: 8b ec                                            mov ebp,esp
  004414f3: 8b 11                                            mov edx,DWORD PTR [ecx]
  004414f5: 8b 02                                            mov eax,DWORD PTR [edx]
  004414f7: 89 01                                            mov DWORD PTR [ecx],eax
  004414f9: 8b 45 08                                         mov eax,DWORD PTR [ebp+0x8]
  004414fc: 89 10                                            mov DWORD PTR [eax],edx
  004414fe: 5d                                               pop ebp
  004414ff: c2 08 00                                         ret 0x8
  00441520: 55                                               push ebp
  00441521: 8b ec                                            mov ebp,esp
  00441523: 6a ff                                            push 0xffffffff
  00441525: 68 f9 60 4d 00                                   push 0x4d60f9
  0044152a: 64 a1 00 00 00 00                                mov eax,fs:0x0
  00441530: 50                                               push eax
  00441531: 64 89 25 00 00 00 00                             mov DWORD PTR fs:0x0,esp
  00441538: 83 ec 30                                         sub esp,0x30
  0044153b: 53                                               push ebx
  0044153c: 8b 5d 08                                         mov ebx,DWORD PTR [ebp+0x8]
  0044153f: 56                                               push esi
  00441540: 8b 73 04                                         mov esi,DWORD PTR [ebx+0x4]
  00441543: 57                                               push edi
  00441544: 6a 0c                                            push 0xc
  00441546: 8b f9                                            mov edi,ecx
  00441548: e8 a3 0a 00 00                                   call 0x441ff0
  0044154d: 83 c4 04                                         add esp,0x4
  00441550: 85 db                                            test ebx,ebx
  00441552: 8b cb                                            mov ecx,ebx
  00441554: 75 02                                            jne 0x441558
  00441556: 8b c8                                            mov ecx,eax
  00441558: 85 f6                                            test esi,esi
  0044155a: 89 08                                            mov DWORD PTR [eax],ecx
  0044155c: 75 02                                            jne 0x441560
  0044155e: 8b f0                                            mov esi,eax
  00441560: 89 70 04                                         mov DWORD PTR [eax+0x4],esi
  00441563: 8b 4f 08                                         mov ecx,DWORD PTR [edi+0x8]
  00441566: ba ff ff ff 3f                                   mov edx,0x3fffffff
  0044156b: 2b d1                                            sub edx,ecx
  0044156d: 83 fa 01                                         cmp edx,0x1
  00441570: 73 50                                            jae 0x4415c2
  00441572: 8a 45 0b                                         mov al,BYTE PTR [ebp+0xb]
  00441575: 6a 00                                            push 0x0
  00441577: 8d 4d e0                                         lea ecx,[ebp-0x20]
  0044157a: 88 45 e0                                         mov BYTE PTR [ebp-0x20],al
  0044157d: ff 15 14 e5 4d 00                                call DWORD PTR ds:0x4de514
  00441583: 83 c9 ff                                         or ecx,0xffffffff
  00441586: 33 c0                                            xor eax,eax
  00441588: bf ec 2a 50 00                                   mov edi,0x502aec
  0044158d: f2 ae                                            repnz scas al,BYTE PTR es:[edi]
  0044158f: f7 d1                                            not ecx
  00441591: 49                                               dec ecx
  00441592: 51                                               push ecx
  00441593: 68 ec 2a 50 00                                   push 0x502aec
  00441598: 8d 4d e0                                         lea ecx,[ebp-0x20]
  0044159b: ff 15 f4 e4 4d 00                                call DWORD PTR ds:0x4de4f4
  004415a1: 8d 4d e0                                         lea ecx,[ebp-0x20]
  004415a4: 51                                               push ecx
  004415a5: 8d 4d c4                                         lea ecx,[ebp-0x3c]
  004415a8: c7 45 fc 00 00 00 00                             mov DWORD PTR [ebp-0x4],0x0
  004415af: e8 6c 3e fc ff                                   call 0x405420
  004415b4: 68 e8 0a 4e 00                                   push 0x4e0ae8
  004415b9: 8d 55 c4                                         lea edx,[ebp-0x3c]
  004415bc: 52                                               push edx
  004415bd: e8 94 07 09 00                                   call 0x4d1d56
  004415c2: 41                                               inc ecx
  004415c3: 89 4f 08                                         mov DWORD PTR [edi+0x8],ecx
  004415c6: 8d 48 08                                         lea ecx,[eax+0x8]
  004415c9: 85 c9                                            test ecx,ecx
  004415cb: 74 07                                            je 0x4415d4
  004415cd: 8b 55 0c                                         mov edx,DWORD PTR [ebp+0xc]
  004415d0: 8b 12                                            mov edx,DWORD PTR [edx]
  004415d2: 89 11                                            mov DWORD PTR [ecx],edx
  004415d4: 89 43 04                                         mov DWORD PTR [ebx+0x4],eax
  004415d7: 8b 48 04                                         mov ecx,DWORD PTR [eax+0x4]
  004415da: 5f                                               pop edi
  004415db: 89 01                                            mov DWORD PTR [ecx],eax
  004415dd: 8b 4d f4                                         mov ecx,DWORD PTR [ebp-0xc]
  004415e0: 5e                                               pop esi
  004415e1: 5b                                               pop ebx
  004415e2: 64 89 0d 00 00 00 00                             mov DWORD PTR fs:0x0,ecx
  004415e9: 8b e5                                            mov esp,ebp
  004415eb: 5d                                               pop ebp
  004415ec: c2 08 00                                         ret 0x8
  004d1adc: ff 25 20 e2 4d 00                                jmp DWORD PTR ds:0x4de220
  004d21ec: ff 25 a4 e2 4d 00                                jmp DWORD PTR ds:0x4de2a4
  004d21f2: 68 00 00 03 00                                   push 0x30000
  004d21f7: 68 00 00 01 00                                   push 0x10000
  004d21fc: e8 1f 00 00 00                                   call 0x4d2220
  004d2201: 59                                               pop ecx
  004d2202: 59                                               pop ecx
  004d2203: c3                                               ret 
  004d220d: c3                                               ret 
  004d2556: ff 25 98 e4 4d 00                                jmp DWORD PTR ds:0x4de498
