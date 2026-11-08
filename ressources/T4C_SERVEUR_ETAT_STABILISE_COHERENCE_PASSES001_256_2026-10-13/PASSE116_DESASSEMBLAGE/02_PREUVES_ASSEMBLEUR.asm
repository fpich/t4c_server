; PASSE 116, Appels et destinations de branchements révélés par les passes 113 à 115
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 43 distinct instructions; 2 graph entry points

  00410110: 55                                              push   ebp
  00410111: 8b ec                                           mov    ebp,esp
  00410113: 83 ec 10                                        sub    esp,0x10
  00410116: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00410119: 56                                              push   esi
  0041011a: 57                                              push   edi
  0041011b: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0041011e: 8b f1                                           mov    esi,ecx
  00410120: 89 35 50 14 51 00                               mov    DWORD PTR ds:0x511450,esi
  00410126: 57                                              push   edi
  00410127: 89 46 18                                        mov    DWORD PTR [esi+0x18],eax
  0041012a: ff 15 f4 e0 4d 00                               call   DWORD PTR ds:0x4de0f4
  00410130: 40                                              inc    eax
  00410131: 50                                              push   eax
  00410132: e8 c9 e3 0b 00                                  call   0x4ce500
  00410137: 83 c4 04                                        add    esp,0x4
  0041013a: 57                                              push   edi
  0041013b: 50                                              push   eax
  0041013c: 89 06                                           mov    DWORD PTR [esi],eax
  0041013e: ff 15 24 e1 4d 00                               call   DWORD PTR ds:0x4de124
  00410144: 33 c0                                           xor    eax,eax
  00410146: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  00410149: 51                                              push   ecx
  0041014a: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0041014d: c7 45 f4 90 01 41 00                            mov    DWORD PTR [ebp-0xc],0x410190
  00410154: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00410157: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  0041015a: ff 15 04 e0 4d 00                               call   DWORD PTR ds:0x4de004
  00410160: 5f                                              pop    edi
  00410161: 5e                                              pop    esi
  00410162: 8b e5                                           mov    esp,ebp
  00410164: 5d                                              pop    ebp
  00410165: c2 08 00                                        ret    0x8
  00410170: 55                                              push   ebp
  00410171: 8b ec                                           mov    ebp,esp
  00410173: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00410176: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00410179: 89 41 1c                                        mov    DWORD PTR [ecx+0x1c],eax
  0041017c: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0041017f: 89 51 20                                        mov    DWORD PTR [ecx+0x20],edx
  00410182: 89 41 24                                        mov    DWORD PTR [ecx+0x24],eax
  00410185: 5d                                              pop    ebp
  00410186: c2 0c 00                                        ret    0xc
