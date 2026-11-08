; PASSE 96, Première moitié des entrées de pointeurs de code vérifiés en .rdata
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 5803 distinct instructions; 181 graph entry points

  00401390: 55                                              push   ebp
  00401391: 8b ec                                           mov    ebp,esp
  00401393: 53                                              push   ebx
  00401394: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00401397: f6 c3 02                                        test   bl,0x2
  0040139a: 56                                              push   esi
  0040139b: 8b f1                                           mov    esi,ecx
  0040139d: 74 2c                                           je     0x4013cb
  0040139f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  004013a2: 57                                              push   edi
  004013a3: 68 f0 9d 43 00                                  push   0x439df0
  004013a8: 8d 7e fc                                        lea    edi,[esi-0x4]
  004013ab: 50                                              push   eax
  004013ac: 6a 40                                           push   0x40
  004013ae: 56                                              push   esi
  004013af: e8 dc 07 0d 00                                  call   0x4d1b90
  004013b4: f6 c3 01                                        test   bl,0x1
  004013b7: 74 09                                           je     0x4013c2
  004013b9: 57                                              push   edi
  004013ba: e8 d1 d0 0c 00                                  call   0x4ce490
  004013bf: 83 c4 04                                        add    esp,0x4
  004013c2: 8b c7                                           mov    eax,edi
  004013c4: 5f                                              pop    edi
  004013c5: 5e                                              pop    esi
  004013c6: 5b                                              pop    ebx
  004013c7: 5d                                              pop    ebp
  004013c8: c2 04 00                                        ret    0x4
  004013cb: 8b ce                                           mov    ecx,esi
  004013cd: e8 1e 8a 03 00                                  call   0x439df0
  004013d2: f6 c3 01                                        test   bl,0x1
  004013d5: 74 09                                           je     0x4013e0
  004013d7: 56                                              push   esi
  004013d8: e8 03 9b 03 00                                  call   0x43aee0
  004013dd: 83 c4 04                                        add    esp,0x4
  004013e0: 8b c6                                           mov    eax,esi
  004013e2: 5e                                              pop    esi
  004013e3: 5b                                              pop    ebx
  004013e4: 5d                                              pop    ebp
  004013e5: c2 04 00                                        ret    0x4
  00401b60: 55                                              push   ebp
  00401b61: 8b ec                                           mov    ebp,esp
  00401b63: 53                                              push   ebx
  00401b64: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00401b67: f6 c3 02                                        test   bl,0x2
  00401b6a: 56                                              push   esi
  00401b6b: 8b f1                                           mov    esi,ecx
  00401b6d: 74 2f                                           je     0x401b9e
  00401b6f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00401b72: 57                                              push   edi
  00401b73: 68 50 47 45 00                                  push   0x454750
  00401b78: 8d 7e fc                                        lea    edi,[esi-0x4]
  00401b7b: 50                                              push   eax
  00401b7c: 68 20 01 00 00                                  push   0x120
  00401b81: 56                                              push   esi
  00401b82: e8 09 00 0d 00                                  call   0x4d1b90
  00401b87: f6 c3 01                                        test   bl,0x1
  00401b8a: 74 09                                           je     0x401b95
  00401b8c: 57                                              push   edi
  00401b8d: e8 fe c8 0c 00                                  call   0x4ce490
  00401b92: 83 c4 04                                        add    esp,0x4
  00401b95: 8b c7                                           mov    eax,edi
  00401b97: 5f                                              pop    edi
  00401b98: 5e                                              pop    esi
  00401b99: 5b                                              pop    ebx
  00401b9a: 5d                                              pop    ebp
  00401b9b: c2 04 00                                        ret    0x4
  00401b9e: 8b ce                                           mov    ecx,esi
  00401ba0: e8 ab 2b 05 00                                  call   0x454750
  00401ba5: f6 c3 01                                        test   bl,0x1
  00401ba8: 74 09                                           je     0x401bb3
  00401baa: 56                                              push   esi
  00401bab: e8 b0 04 04 00                                  call   0x442060
  00401bb0: 83 c4 04                                        add    esp,0x4
  00401bb3: 8b c6                                           mov    eax,esi
  00401bb5: 5e                                              pop    esi
  00401bb6: 5b                                              pop    ebx
  00401bb7: 5d                                              pop    ebp
  00401bb8: c2 04 00                                        ret    0x4
  00401bc0: 55                                              push   ebp
  00401bc1: 8b ec                                           mov    ebp,esp
  00401bc3: 56                                              push   esi
  00401bc4: 8b f1                                           mov    esi,ecx
  00401bc6: e8 a5 2c 00 00                                  call   0x404870
  00401bcb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00401bcf: 74 09                                           je     0x401bda
  00401bd1: 56                                              push   esi
  00401bd2: e8 89 04 04 00                                  call   0x442060
  00401bd7: 83 c4 04                                        add    esp,0x4
  00401bda: 8b c6                                           mov    eax,esi
  00401bdc: 5e                                              pop    esi
  00401bdd: 5d                                              pop    ebp
  00401bde: c2 04 00                                        ret    0x4
  00401cb0: 55                                              push   ebp
  00401cb1: 8b ec                                           mov    ebp,esp
  00401cb3: 53                                              push   ebx
  00401cb4: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00401cb7: f6 c3 02                                        test   bl,0x2
  00401cba: 56                                              push   esi
  00401cbb: 8b f1                                           mov    esi,ecx
  00401cbd: 74 2c                                           je     0x401ceb
  00401cbf: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00401cc2: 57                                              push   edi
  00401cc3: 68 80 5c 40 00                                  push   0x405c80
  00401cc8: 8d 7e fc                                        lea    edi,[esi-0x4]
  00401ccb: 50                                              push   eax
  00401ccc: 6a 14                                           push   0x14
  00401cce: 56                                              push   esi
  00401ccf: e8 bc fe 0c 00                                  call   0x4d1b90
  00401cd4: f6 c3 01                                        test   bl,0x1
  00401cd7: 74 09                                           je     0x401ce2
  00401cd9: 57                                              push   edi
  00401cda: e8 b1 c7 0c 00                                  call   0x4ce490
  00401cdf: 83 c4 04                                        add    esp,0x4
  00401ce2: 8b c7                                           mov    eax,edi
  00401ce4: 5f                                              pop    edi
  00401ce5: 5e                                              pop    esi
  00401ce6: 5b                                              pop    ebx
  00401ce7: 5d                                              pop    ebp
  00401ce8: c2 04 00                                        ret    0x4
  00401ceb: 8b ce                                           mov    ecx,esi
  00401ced: e8 8e 3f 00 00                                  call   0x405c80
  00401cf2: f6 c3 01                                        test   bl,0x1
  00401cf5: 74 09                                           je     0x401d00
  00401cf7: 56                                              push   esi
  00401cf8: e8 63 03 04 00                                  call   0x442060
  00401cfd: 83 c4 04                                        add    esp,0x4
  00401d00: 8b c6                                           mov    eax,esi
  00401d02: 5e                                              pop    esi
  00401d03: 5b                                              pop    ebx
  00401d04: 5d                                              pop    ebp
  00401d05: c2 04 00                                        ret    0x4
  00401e30: 55                                              push   ebp
  00401e31: 8b ec                                           mov    ebp,esp
  00401e33: 53                                              push   ebx
  00401e34: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00401e37: f6 c3 02                                        test   bl,0x2
  00401e3a: 56                                              push   esi
  00401e3b: 8b f1                                           mov    esi,ecx
  00401e3d: 74 2c                                           je     0x401e6b
  00401e3f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00401e42: 57                                              push   edi
  00401e43: 68 a0 ec 4a 00                                  push   0x4aeca0
  00401e48: 8d 7e fc                                        lea    edi,[esi-0x4]
  00401e4b: 50                                              push   eax
  00401e4c: 6a 34                                           push   0x34
  00401e4e: 56                                              push   esi
  00401e4f: e8 3c fd 0c 00                                  call   0x4d1b90
  00401e54: f6 c3 01                                        test   bl,0x1
  00401e57: 74 09                                           je     0x401e62
  00401e59: 57                                              push   edi
  00401e5a: e8 31 c6 0c 00                                  call   0x4ce490
  00401e5f: 83 c4 04                                        add    esp,0x4
  00401e62: 8b c7                                           mov    eax,edi
  00401e64: 5f                                              pop    edi
  00401e65: 5e                                              pop    esi
  00401e66: 5b                                              pop    ebx
  00401e67: 5d                                              pop    ebp
  00401e68: c2 04 00                                        ret    0x4
  00401e6b: 8b ce                                           mov    ecx,esi
  00401e6d: e8 2e ce 0a 00                                  call   0x4aeca0
  00401e72: f6 c3 01                                        test   bl,0x1
  00401e75: 74 09                                           je     0x401e80
  00401e77: 56                                              push   esi
  00401e78: e8 e3 01 04 00                                  call   0x442060
  00401e7d: 83 c4 04                                        add    esp,0x4
  00401e80: 8b c6                                           mov    eax,esi
  00401e82: 5e                                              pop    esi
  00401e83: 5b                                              pop    ebx
  00401e84: 5d                                              pop    ebp
  00401e85: c2 04 00                                        ret    0x4
  00401ee0: 55                                              push   ebp
  00401ee1: 8b ec                                           mov    ebp,esp
  00401ee3: 53                                              push   ebx
  00401ee4: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00401ee7: f6 c3 02                                        test   bl,0x2
  00401eea: 56                                              push   esi
  00401eeb: 8b f1                                           mov    esi,ecx
  00401eed: 74 2c                                           je     0x401f1b
  00401eef: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00401ef2: 57                                              push   edi
  00401ef3: 68 10 85 43 00                                  push   0x438510
  00401ef8: 8d 7e fc                                        lea    edi,[esi-0x4]
  00401efb: 50                                              push   eax
  00401efc: 6a 04                                           push   0x4
  00401efe: 56                                              push   esi
  00401eff: e8 8c fc 0c 00                                  call   0x4d1b90
  00401f04: f6 c3 01                                        test   bl,0x1
  00401f07: 74 09                                           je     0x401f12
  00401f09: 57                                              push   edi
  00401f0a: e8 81 c5 0c 00                                  call   0x4ce490
  00401f0f: 83 c4 04                                        add    esp,0x4
  00401f12: 8b c7                                           mov    eax,edi
  00401f14: 5f                                              pop    edi
  00401f15: 5e                                              pop    esi
  00401f16: 5b                                              pop    ebx
  00401f17: 5d                                              pop    ebp
  00401f18: c2 04 00                                        ret    0x4
  00401f1b: 8b ce                                           mov    ecx,esi
  00401f1d: e8 ee 65 03 00                                  call   0x438510
  00401f22: f6 c3 01                                        test   bl,0x1
  00401f25: 74 09                                           je     0x401f30
  00401f27: 56                                              push   esi
  00401f28: e8 33 01 04 00                                  call   0x442060
  00401f2d: 83 c4 04                                        add    esp,0x4
  00401f30: 8b c6                                           mov    eax,esi
  00401f32: 5e                                              pop    esi
  00401f33: 5b                                              pop    ebx
  00401f34: 5d                                              pop    ebp
  00401f35: c2 04 00                                        ret    0x4
  00402650: 55                                              push   ebp
  00402651: 8b ec                                           mov    ebp,esp
  00402653: 53                                              push   ebx
  00402654: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00402657: f6 c3 02                                        test   bl,0x2
  0040265a: 56                                              push   esi
  0040265b: 8b f1                                           mov    esi,ecx
  0040265d: 74 2f                                           je     0x40268e
  0040265f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00402662: 57                                              push   edi
  00402663: 68 a0 91 45 00                                  push   0x4591a0
  00402668: 8d 7e fc                                        lea    edi,[esi-0x4]
  0040266b: 50                                              push   eax
  0040266c: 68 10 01 00 00                                  push   0x110
  00402671: 56                                              push   esi
  00402672: e8 19 f5 0c 00                                  call   0x4d1b90
  00402677: f6 c3 01                                        test   bl,0x1
  0040267a: 74 09                                           je     0x402685
  0040267c: 57                                              push   edi
  0040267d: e8 0e be 0c 00                                  call   0x4ce490
  00402682: 83 c4 04                                        add    esp,0x4
  00402685: 8b c7                                           mov    eax,edi
  00402687: 5f                                              pop    edi
  00402688: 5e                                              pop    esi
  00402689: 5b                                              pop    ebx
  0040268a: 5d                                              pop    ebp
  0040268b: c2 04 00                                        ret    0x4
  0040268e: 8b ce                                           mov    ecx,esi
  00402690: e8 0b 6b 05 00                                  call   0x4591a0
  00402695: f6 c3 01                                        test   bl,0x1
  00402698: 74 09                                           je     0x4026a3
  0040269a: 56                                              push   esi
  0040269b: e8 c0 f9 03 00                                  call   0x442060
  004026a0: 83 c4 04                                        add    esp,0x4
  004026a3: 8b c6                                           mov    eax,esi
  004026a5: 5e                                              pop    esi
  004026a6: 5b                                              pop    ebx
  004026a7: 5d                                              pop    ebp
  004026a8: c2 04 00                                        ret    0x4
  00405200: 8b 41 10                                        mov    eax,DWORD PTR [ecx+0x10]
  00405203: 85 c0                                           test   eax,eax
  00405205: 75 05                                           jne    0x40520c
  00405207: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0040520c: c3                                              ret
  00405210: 55                                              push   ebp
  00405211: 8b ec                                           mov    ebp,esp
  00405213: 83 ec 1c                                        sub    esp,0x1c
  00405216: 51                                              push   ecx
  00405217: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  0040521a: e8 91 00 00 00                                  call   0x4052b0
  0040521f: 68 a0 0c 4e 00                                  push   0x4e0ca0
  00405224: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00405227: 50                                              push   eax
  00405228: e8 29 cb 0c 00                                  call   0x4d1d56
  00405280: 55                                              push   ebp
  00405281: 8b ec                                           mov    ebp,esp
  00405283: 56                                              push   esi
  00405284: 8b f1                                           mov    esi,ecx
  00405286: e8 a5 ff ff ff                                  call   0x405230
  0040528b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0040528f: 74 09                                           je     0x40529a
  00405291: 56                                              push   esi
  00405292: e8 c9 cd 03 00                                  call   0x442060
  00405297: 83 c4 04                                        add    esp,0x4
  0040529a: 8b c6                                           mov    eax,esi
  0040529c: 5e                                              pop    esi
  0040529d: 5d                                              pop    ebp
  0040529e: c2 04 00                                        ret    0x4
  004055e0: 55                                              push   ebp
  004055e1: 8b ec                                           mov    ebp,esp
  004055e3: 83 ec 1c                                        sub    esp,0x1c
  004055e6: 51                                              push   ecx
  004055e7: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004055ea: e8 41 00 00 00                                  call   0x405630
  004055ef: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004055f4: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004055f7: 50                                              push   eax
  004055f8: e8 59 c7 0c 00                                  call   0x4d1d56
  00405600: 55                                              push   ebp
  00405601: 8b ec                                           mov    ebp,esp
  00405603: 56                                              push   esi
  00405604: 8b f1                                           mov    esi,ecx
  00405606: e8 85 ff ff ff                                  call   0x405590
  0040560b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0040560f: 74 09                                           je     0x40561a
  00405611: 56                                              push   esi
  00405612: e8 49 ca 03 00                                  call   0x442060
  00405617: 83 c4 04                                        add    esp,0x4
  0040561a: 8b c6                                           mov    eax,esi
  0040561c: 5e                                              pop    esi
  0040561d: 5d                                              pop    ebp
  0040561e: c2 04 00                                        ret    0x4
  004057e0: 55                                              push   ebp
  004057e1: 8b ec                                           mov    ebp,esp
  004057e3: 83 ec 1c                                        sub    esp,0x1c
  004057e6: 51                                              push   ecx
  004057e7: 8d 4d e4                                        lea    ecx,[ebp-0x1c]
  004057ea: e8 41 00 00 00                                  call   0x405830
  004057ef: 68 18 0a 4e 00                                  push   0x4e0a18
  004057f4: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004057f7: 50                                              push   eax
  004057f8: e8 59 c5 0c 00                                  call   0x4d1d56
  00405800: 55                                              push   ebp
  00405801: 8b ec                                           mov    ebp,esp
  00405803: 56                                              push   esi
  00405804: 8b f1                                           mov    esi,ecx
  00405806: e8 85 ff ff ff                                  call   0x405790
  0040580b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0040580f: 74 09                                           je     0x40581a
  00405811: 56                                              push   esi
  00405812: e8 49 c8 03 00                                  call   0x442060
  00405817: 83 c4 04                                        add    esp,0x4
  0040581a: 8b c6                                           mov    eax,esi
  0040581c: 5e                                              pop    esi
  0040581d: 5d                                              pop    ebp
  0040581e: c2 04 00                                        ret    0x4
  004059c0: 55                                              push   ebp
  004059c1: 8b ec                                           mov    ebp,esp
  004059c3: 53                                              push   ebx
  004059c4: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  004059c7: f6 c3 02                                        test   bl,0x2
  004059ca: 56                                              push   esi
  004059cb: 8b f1                                           mov    esi,ecx
  004059cd: 74 2c                                           je     0x4059fb
  004059cf: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  004059d2: 57                                              push   edi
  004059d3: 68 80 5e 48 00                                  push   0x485e80
  004059d8: 8d 7e fc                                        lea    edi,[esi-0x4]
  004059db: 50                                              push   eax
  004059dc: 6a 18                                           push   0x18
  004059de: 56                                              push   esi
  004059df: e8 ac c1 0c 00                                  call   0x4d1b90
  004059e4: f6 c3 01                                        test   bl,0x1
  004059e7: 74 09                                           je     0x4059f2
  004059e9: 57                                              push   edi
  004059ea: e8 a1 8a 0c 00                                  call   0x4ce490
  004059ef: 83 c4 04                                        add    esp,0x4
  004059f2: 8b c7                                           mov    eax,edi
  004059f4: 5f                                              pop    edi
  004059f5: 5e                                              pop    esi
  004059f6: 5b                                              pop    ebx
  004059f7: 5d                                              pop    ebp
  004059f8: c2 04 00                                        ret    0x4
  004059fb: 8b ce                                           mov    ecx,esi
  004059fd: e8 7e 04 08 00                                  call   0x485e80
  00405a02: f6 c3 01                                        test   bl,0x1
  00405a05: 74 09                                           je     0x405a10
  00405a07: 56                                              push   esi
  00405a08: e8 53 c6 03 00                                  call   0x442060
  00405a0d: 83 c4 04                                        add    esp,0x4
  00405a10: 8b c6                                           mov    eax,esi
  00405a12: 5e                                              pop    esi
  00405a13: 5b                                              pop    ebx
  00405a14: 5d                                              pop    ebp
  00405a15: c2 04 00                                        ret    0x4
  00405a40: 55                                              push   ebp
  00405a41: 8b ec                                           mov    ebp,esp
  00405a43: 83 ec 08                                        sub    esp,0x8
  00405a46: 56                                              push   esi
  00405a47: 8b f1                                           mov    esi,ecx
  00405a49: 50                                              push   eax
  00405a4a: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00405a4d: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  00405a50: 58                                              pop    eax
  00405a51: e8 aa e7 02 00                                  call   0x434200
  00405a56: 8b 10                                           mov    edx,DWORD PTR [eax]
  00405a58: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00405a5b: 51                                              push   ecx
  00405a5c: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  00405a5f: 56                                              push   esi
  00405a60: 51                                              push   ecx
  00405a61: 8b c8                                           mov    ecx,eax
  00405a63: ff 12                                           call   DWORD PTR [edx]
  00405a65: 8d 56 08                                        lea    edx,[esi+0x8]
  00405a68: 52                                              push   edx
  00405a69: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00405a6f: e8 8c e7 02 00                                  call   0x434200
  00405a74: 8b 10                                           mov    edx,DWORD PTR [eax]
  00405a76: 83 c6 04                                        add    esi,0x4
  00405a79: 56                                              push   esi
  00405a7a: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00405a7d: 51                                              push   ecx
  00405a7e: 8b c8                                           mov    ecx,eax
  00405a80: ff 52 04                                        call   DWORD PTR [edx+0x4]
  00405a83: 5e                                              pop    esi
  00405a84: 8b e5                                           mov    esp,ebp
  00405a86: 5d                                              pop    ebp
  00405a87: c3                                              ret
  00405ab0: 55                                              push   ebp
  00405ab1: 8b ec                                           mov    ebp,esp
  00405ab3: 51                                              push   ecx
  00405ab4: 56                                              push   esi
  00405ab5: 8b f1                                           mov    esi,ecx
  00405ab7: 8d 46 08                                        lea    eax,[esi+0x8]
  00405aba: 50                                              push   eax
  00405abb: ff 15 00 e1 4d 00                               call   DWORD PTR ds:0x4de100
  00405ac1: 85 c0                                           test   eax,eax
  00405ac3: 74 27                                           je     0x405aec
  00405ac5: 50                                              push   eax
  00405ac6: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00405ac9: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00405acc: 58                                              pop    eax
  00405acd: e8 2e e7 02 00                                  call   0x434200
  00405ad2: 8b 10                                           mov    edx,DWORD PTR [eax]
  00405ad4: 8d 4e 04                                        lea    ecx,[esi+0x4]
  00405ad7: 51                                              push   ecx
  00405ad8: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00405adb: 56                                              push   esi
  00405adc: 51                                              push   ecx
  00405add: 8b c8                                           mov    ecx,eax
  00405adf: ff 52 08                                        call   DWORD PTR [edx+0x8]
  00405ae2: b8 01 00 00 00                                  mov    eax,0x1
  00405ae7: 5e                                              pop    esi
  00405ae8: 8b e5                                           mov    esp,ebp
  00405aea: 5d                                              pop    ebp
  00405aeb: c3                                              ret
  00405aec: 33 c0                                           xor    eax,eax
  00405aee: 5e                                              pop    esi
  00405aef: 8b e5                                           mov    esp,ebp
  00405af1: 5d                                              pop    ebp
  00405af2: c3                                              ret
  00405b00: 55                                              push   ebp
  00405b01: 8b ec                                           mov    ebp,esp
  00405b03: 56                                              push   esi
  00405b04: 8b f1                                           mov    esi,ecx
  00405b06: 8d 46 08                                        lea    eax,[esi+0x8]
  00405b09: 50                                              push   eax
  00405b0a: c7 06 8c e5 4d 00                               mov    DWORD PTR [esi],0x4de58c
  00405b10: ff 15 e0 e0 4d 00                               call   DWORD PTR ds:0x4de0e0
  00405b16: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00405b1a: 74 09                                           je     0x405b25
  00405b1c: 56                                              push   esi
  00405b1d: e8 3e c5 03 00                                  call   0x442060
  00405b22: 83 c4 04                                        add    esp,0x4
  00405b25: 8b c6                                           mov    eax,esi
  00405b27: 5e                                              pop    esi
  00405b28: 5d                                              pop    ebp
  00405b29: c2 04 00                                        ret    0x4
  00405b70: 55                                              push   ebp
  00405b71: 8b ec                                           mov    ebp,esp
  00405b73: 53                                              push   ebx
  00405b74: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00405b77: f6 c3 02                                        test   bl,0x2
  00405b7a: 56                                              push   esi
  00405b7b: 8b f1                                           mov    esi,ecx
  00405b7d: 74 2c                                           je     0x405bab
  00405b7f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00405b82: 57                                              push   edi
  00405b83: 68 40 56 43 00                                  push   0x435640
  00405b88: 8d 7e fc                                        lea    edi,[esi-0x4]
  00405b8b: 50                                              push   eax
  00405b8c: 6a 30                                           push   0x30
  00405b8e: 56                                              push   esi
  00405b8f: e8 fc bf 0c 00                                  call   0x4d1b90
  00405b94: f6 c3 01                                        test   bl,0x1
  00405b97: 74 09                                           je     0x405ba2
  00405b99: 57                                              push   edi
  00405b9a: e8 f1 88 0c 00                                  call   0x4ce490
  00405b9f: 83 c4 04                                        add    esp,0x4
  00405ba2: 8b c7                                           mov    eax,edi
  00405ba4: 5f                                              pop    edi
  00405ba5: 5e                                              pop    esi
  00405ba6: 5b                                              pop    ebx
  00405ba7: 5d                                              pop    ebp
  00405ba8: c2 04 00                                        ret    0x4
  00405bab: 8b ce                                           mov    ecx,esi
  00405bad: e8 8e fa 02 00                                  call   0x435640
  00405bb2: f6 c3 01                                        test   bl,0x1
  00405bb5: 74 09                                           je     0x405bc0
  00405bb7: 56                                              push   esi
  00405bb8: e8 a3 c4 03 00                                  call   0x442060
  00405bbd: 83 c4 04                                        add    esp,0x4
  00405bc0: 8b c6                                           mov    eax,esi
  00405bc2: 5e                                              pop    esi
  00405bc3: 5b                                              pop    ebx
  00405bc4: 5d                                              pop    ebp
  00405bc5: c2 04 00                                        ret    0x4
  00405c00: 55                                              push   ebp
  00405c01: 8b ec                                           mov    ebp,esp
  00405c03: 53                                              push   ebx
  00405c04: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00405c07: f6 c3 02                                        test   bl,0x2
  00405c0a: 56                                              push   esi
  00405c0b: 8b f1                                           mov    esi,ecx
  00405c0d: 74 2c                                           je     0x405c3b
  00405c0f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00405c12: 57                                              push   edi
  00405c13: 68 60 97 40 00                                  push   0x409760
  00405c18: 8d 7e fc                                        lea    edi,[esi-0x4]
  00405c1b: 50                                              push   eax
  00405c1c: 6a 70                                           push   0x70
  00405c1e: 56                                              push   esi
  00405c1f: e8 6c bf 0c 00                                  call   0x4d1b90
  00405c24: f6 c3 01                                        test   bl,0x1
  00405c27: 74 09                                           je     0x405c32
  00405c29: 57                                              push   edi
  00405c2a: e8 61 88 0c 00                                  call   0x4ce490
  00405c2f: 83 c4 04                                        add    esp,0x4
  00405c32: 8b c7                                           mov    eax,edi
  00405c34: 5f                                              pop    edi
  00405c35: 5e                                              pop    esi
  00405c36: 5b                                              pop    ebx
  00405c37: 5d                                              pop    ebp
  00405c38: c2 04 00                                        ret    0x4
  00405c3b: 8b ce                                           mov    ecx,esi
  00405c3d: e8 1e 3b 00 00                                  call   0x409760
  00405c42: f6 c3 01                                        test   bl,0x1
  00405c45: 74 09                                           je     0x405c50
  00405c47: 56                                              push   esi
  00405c48: e8 13 c4 03 00                                  call   0x442060
  00405c4d: 83 c4 04                                        add    esp,0x4
  00405c50: 8b c6                                           mov    eax,esi
  00405c52: 5e                                              pop    esi
  00405c53: 5b                                              pop    ebx
  00405c54: 5d                                              pop    ebp
  00405c55: c2 04 00                                        ret    0x4
  00405dc0: 55                                              push   ebp
  00405dc1: 8b ec                                           mov    ebp,esp
  00405dc3: 6a ff                                           push   0xffffffff
  00405dc5: 68 4c 33 4d 00                                  push   0x4d334c
  00405dca: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00405dd0: 50                                              push   eax
  00405dd1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00405dd8: 83 ec 24                                        sub    esp,0x24
  00405ddb: 56                                              push   esi
  00405ddc: 57                                              push   edi
  00405ddd: 33 ff                                           xor    edi,edi
  00405ddf: 6a 1c                                           push   0x1c
  00405de1: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00405de4: e8 07 c2 03 00                                  call   0x441ff0
  00405de9: 8b f0                                           mov    esi,eax
  00405deb: 83 c4 04                                        add    esp,0x4
  00405dee: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00405df1: 3b f7                                           cmp    esi,edi
  00405df3: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00405df6: 0f 84 d8 00 00 00                               je     0x405ed4
  00405dfc: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  00405dff: 83 c9 ff                                        or     ecx,0xffffffff
  00405e02: 89 7d d4                                        mov    DWORD PTR [ebp-0x2c],edi
  00405e05: 89 7d d8                                        mov    DWORD PTR [ebp-0x28],edi
  00405e08: 89 7d dc                                        mov    DWORD PTR [ebp-0x24],edi
  00405e0b: 88 45 d0                                        mov    BYTE PTR [ebp-0x30],al
  00405e0e: 33 c0                                           xor    eax,eax
  00405e10: bf e0 05 50 00                                  mov    edi,0x5005e0
  00405e15: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00405e17: f7 d1                                           not    ecx
  00405e19: 49                                              dec    ecx
  00405e1a: 53                                              push   ebx
  00405e1b: 8b d9                                           mov    ebx,ecx
  00405e1d: 68 e0 05 50 00                                  push   0x5005e0
  00405e22: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00405e25: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  00405e2b: 84 c0                                           test   al,al
  00405e2d: 74 1b                                           je     0x405e4a
  00405e2f: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  00405e32: 53                                              push   ebx
  00405e33: b9 e0 05 50 00                                  mov    ecx,0x5005e0
  00405e38: 2b cf                                           sub    ecx,edi
  00405e3a: 51                                              push   ecx
  00405e3b: 8d 55 d0                                        lea    edx,[ebp-0x30]
  00405e3e: 52                                              push   edx
  00405e3f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00405e42: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00405e48: eb 35                                           jmp    0x405e7f
  00405e4a: 6a 01                                           push   0x1
  00405e4c: 53                                              push   ebx
  00405e4d: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00405e50: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00405e56: 84 c0                                           test   al,al
  00405e58: 74 25                                           je     0x405e7f
  00405e5a: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  00405e5d: 8b cb                                           mov    ecx,ebx
  00405e5f: 8b c1                                           mov    eax,ecx
  00405e61: c1 e9 02                                        shr    ecx,0x2
  00405e64: be e0 05 50 00                                  mov    esi,0x5005e0
  00405e69: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00405e6b: 8b c8                                           mov    ecx,eax
  00405e6d: 83 e1 03                                        and    ecx,0x3
  00405e70: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00405e72: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  00405e75: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  00405e78: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  00405e7b: c6 04 19 00                                     mov    BYTE PTR [ecx+ebx*1],0x0
  00405e7f: c7 45 e8 01 00 00 00                            mov    DWORD PTR [ebp-0x18],0x1
  00405e86: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  00405e89: 52                                              push   edx
  00405e8a: 8b ce                                           mov    ecx,esi
  00405e8c: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00405e90: c7 45 e4 58 13 51 00                            mov    DWORD PTR [ebp-0x1c],0x511358
  00405e97: ff 15 60 e3 4d 00                               call   DWORD PTR ds:0x4de360
  00405e9d: 8a 45 d0                                        mov    al,BYTE PTR [ebp-0x30]
  00405ea0: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  00405ea3: 88 01                                           mov    BYTE PTR [ecx],al
  00405ea5: 33 c0                                           xor    eax,eax
  00405ea7: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  00405eaa: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00405ead: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  00405eb0: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00405eb6: 8b 12                                           mov    edx,DWORD PTR [edx]
  00405eb8: 52                                              push   edx
  00405eb9: 50                                              push   eax
  00405eba: 8d 45 d0                                        lea    eax,[ebp-0x30]
  00405ebd: 50                                              push   eax
  00405ebe: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00405ec5: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00405ecb: c7 06 ec e5 4d 00                               mov    DWORD PTR [esi],0x4de5ec
  00405ed1: 5b                                              pop    ebx
  00405ed2: eb 02                                           jmp    0x405ed6
  00405ed4: 33 f6                                           xor    esi,esi
  00405ed6: 68 c0 0d 4e 00                                  push   0x4e0dc0
  00405edb: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  00405ede: 51                                              push   ecx
  00405edf: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00405ee6: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  00405ee9: e8 68 be 0c 00                                  call   0x4d1d56
  00405eee: 5f                                              pop    edi
  00405eef: 5e                                              pop    esi
  00405ef0: 55                                              push   ebp
  00405ef1: 8b ec                                           mov    ebp,esp
  00405ef3: 6a ff                                           push   0xffffffff
  00405ef5: 68 8c 33 4d 00                                  push   0x4d338c
  00405efa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00405f00: 50                                              push   eax
  00405f01: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00405f08: 83 ec 24                                        sub    esp,0x24
  00405f0b: 56                                              push   esi
  00405f0c: 57                                              push   edi
  00405f0d: 33 ff                                           xor    edi,edi
  00405f0f: 6a 1c                                           push   0x1c
  00405f11: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  00405f14: e8 d7 c0 03 00                                  call   0x441ff0
  00405f19: 8b f0                                           mov    esi,eax
  00405f1b: 83 c4 04                                        add    esp,0x4
  00405f1e: 89 75 ec                                        mov    DWORD PTR [ebp-0x14],esi
  00405f21: 3b f7                                           cmp    esi,edi
  00405f23: 89 7d fc                                        mov    DWORD PTR [ebp-0x4],edi
  00405f26: 0f 84 d8 00 00 00                               je     0x406004
  00405f2c: 8a 45 f3                                        mov    al,BYTE PTR [ebp-0xd]
  00405f2f: 83 c9 ff                                        or     ecx,0xffffffff
  00405f32: 89 7d d4                                        mov    DWORD PTR [ebp-0x2c],edi
  00405f35: 89 7d d8                                        mov    DWORD PTR [ebp-0x28],edi
  00405f38: 89 7d dc                                        mov    DWORD PTR [ebp-0x24],edi
  00405f3b: 88 45 d0                                        mov    BYTE PTR [ebp-0x30],al
  00405f3e: 33 c0                                           xor    eax,eax
  00405f40: bf f4 05 50 00                                  mov    edi,0x5005f4
  00405f45: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  00405f47: f7 d1                                           not    ecx
  00405f49: 49                                              dec    ecx
  00405f4a: 53                                              push   ebx
  00405f4b: 8b d9                                           mov    ebx,ecx
  00405f4d: 68 f4 05 50 00                                  push   0x5005f4
  00405f52: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00405f55: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  00405f5b: 84 c0                                           test   al,al
  00405f5d: 74 1b                                           je     0x405f7a
  00405f5f: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  00405f62: 53                                              push   ebx
  00405f63: b9 f4 05 50 00                                  mov    ecx,0x5005f4
  00405f68: 2b cf                                           sub    ecx,edi
  00405f6a: 51                                              push   ecx
  00405f6b: 8d 55 d0                                        lea    edx,[ebp-0x30]
  00405f6e: 52                                              push   edx
  00405f6f: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00405f72: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00405f78: eb 35                                           jmp    0x405faf
  00405f7a: 6a 01                                           push   0x1
  00405f7c: 53                                              push   ebx
  00405f7d: 8d 4d d0                                        lea    ecx,[ebp-0x30]
  00405f80: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00405f86: 84 c0                                           test   al,al
  00405f88: 74 25                                           je     0x405faf
  00405f8a: 8b 7d d4                                        mov    edi,DWORD PTR [ebp-0x2c]
  00405f8d: 8b cb                                           mov    ecx,ebx
  00405f8f: 8b c1                                           mov    eax,ecx
  00405f91: c1 e9 02                                        shr    ecx,0x2
  00405f94: be f4 05 50 00                                  mov    esi,0x5005f4
  00405f99: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00405f9b: 8b c8                                           mov    ecx,eax
  00405f9d: 83 e1 03                                        and    ecx,0x3
  00405fa0: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00405fa2: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  00405fa5: 8b 75 ec                                        mov    esi,DWORD PTR [ebp-0x14]
  00405fa8: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  00405fab: c6 04 19 00                                     mov    BYTE PTR [ecx+ebx*1],0x0
  00405faf: c7 45 e8 01 00 00 00                            mov    DWORD PTR [ebp-0x18],0x1
  00405fb6: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  00405fb9: 52                                              push   edx
  00405fba: 8b ce                                           mov    ecx,esi
  00405fbc: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  00405fc0: c7 45 e4 58 13 51 00                            mov    DWORD PTR [ebp-0x1c],0x511358
  00405fc7: ff 15 60 e3 4d 00                               call   DWORD PTR ds:0x4de360
  00405fcd: 8a 45 d0                                        mov    al,BYTE PTR [ebp-0x30]
  00405fd0: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  00405fd3: 88 01                                           mov    BYTE PTR [ecx],al
  00405fd5: 33 c0                                           xor    eax,eax
  00405fd7: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  00405fda: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  00405fdd: 89 41 0c                                        mov    DWORD PTR [ecx+0xc],eax
  00405fe0: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  00405fe6: 8b 12                                           mov    edx,DWORD PTR [edx]
  00405fe8: 52                                              push   edx
  00405fe9: 50                                              push   eax
  00405fea: 8d 45 d0                                        lea    eax,[ebp-0x30]
  00405fed: 50                                              push   eax
  00405fee: c7 45 fc 02 00 00 00                            mov    DWORD PTR [ebp-0x4],0x2
  00405ff5: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  00405ffb: c7 06 ec e5 4d 00                               mov    DWORD PTR [esi],0x4de5ec
  00406001: 5b                                              pop    ebx
  00406002: eb 02                                           jmp    0x406006
  00406004: 33 f6                                           xor    esi,esi
  00406006: 68 c0 0d 4e 00                                  push   0x4e0dc0
  0040600b: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0040600e: 51                                              push   ecx
  0040600f: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00406016: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  00406019: e8 38 bd 0c 00                                  call   0x4d1d56
  0040601e: 5f                                              pop    edi
  0040601f: 5e                                              pop    esi
  00406020: c3                                              ret
  0040fa70: 55                                              push   ebp
  0040fa71: 8b ec                                           mov    ebp,esp
  0040fa73: 56                                              push   esi
  0040fa74: 8b f1                                           mov    esi,ecx
  0040fa76: e8 c5 fb ff ff                                  call   0x40f640
  0040fa7b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0040fa7f: 74 09                                           je     0x40fa8a
  0040fa81: 56                                              push   esi
  0040fa82: e8 d9 25 03 00                                  call   0x442060
  0040fa87: 83 c4 04                                        add    esp,0x4
  0040fa8a: 8b c6                                           mov    eax,esi
  0040fa8c: 5e                                              pop    esi
  0040fa8d: 5d                                              pop    ebp
  0040fa8e: c2 04 00                                        ret    0x4
  004122a0: 55                                              push   ebp
  004122a1: 8b ec                                           mov    ebp,esp
  004122a3: 56                                              push   esi
  004122a4: 8b f1                                           mov    esi,ecx
  004122a6: e8 f5 fe ff ff                                  call   0x4121a0
  004122ab: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004122af: 74 09                                           je     0x4122ba
  004122b1: 56                                              push   esi
  004122b2: e8 a9 fd 02 00                                  call   0x442060
  004122b7: 83 c4 04                                        add    esp,0x4
  004122ba: 8b c6                                           mov    eax,esi
  004122bc: 5e                                              pop    esi
  004122bd: 5d                                              pop    ebp
  004122be: c2 04 00                                        ret    0x4
  00412a80: 55                                              push   ebp
  00412a81: 8b ec                                           mov    ebp,esp
  00412a83: 53                                              push   ebx
  00412a84: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00412a87: f6 c3 02                                        test   bl,0x2
  00412a8a: 56                                              push   esi
  00412a8b: 8b f1                                           mov    esi,ecx
  00412a8d: 74 2f                                           je     0x412abe
  00412a8f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00412a92: 57                                              push   edi
  00412a93: 68 90 2b 41 00                                  push   0x412b90
  00412a98: 8d 7e fc                                        lea    edi,[esi-0x4]
  00412a9b: 50                                              push   eax
  00412a9c: 68 28 04 00 00                                  push   0x428
  00412aa1: 56                                              push   esi
  00412aa2: e8 e9 f0 0b 00                                  call   0x4d1b90
  00412aa7: f6 c3 01                                        test   bl,0x1
  00412aaa: 74 09                                           je     0x412ab5
  00412aac: 57                                              push   edi
  00412aad: e8 de b9 0b 00                                  call   0x4ce490
  00412ab2: 83 c4 04                                        add    esp,0x4
  00412ab5: 8b c7                                           mov    eax,edi
  00412ab7: 5f                                              pop    edi
  00412ab8: 5e                                              pop    esi
  00412ab9: 5b                                              pop    ebx
  00412aba: 5d                                              pop    ebp
  00412abb: c2 04 00                                        ret    0x4
  00412abe: 8b ce                                           mov    ecx,esi
  00412ac0: e8 cb 00 00 00                                  call   0x412b90
  00412ac5: f6 c3 01                                        test   bl,0x1
  00412ac8: 74 09                                           je     0x412ad3
  00412aca: 56                                              push   esi
  00412acb: e8 90 f5 02 00                                  call   0x442060
  00412ad0: 83 c4 04                                        add    esp,0x4
  00412ad3: 8b c6                                           mov    eax,esi
  00412ad5: 5e                                              pop    esi
  00412ad6: 5b                                              pop    ebx
  00412ad7: 5d                                              pop    ebp
  00412ad8: c2 04 00                                        ret    0x4
  00424fc0: 55                                              push   ebp
  00424fc1: 8b ec                                           mov    ebp,esp
  00424fc3: 56                                              push   esi
  00424fc4: 8b f1                                           mov    esi,ecx
  00424fc6: e8 a5 f2 ff ff                                  call   0x424270
  00424fcb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00424fcf: 74 09                                           je     0x424fda
  00424fd1: 56                                              push   esi
  00424fd2: e8 89 d0 01 00                                  call   0x442060
  00424fd7: 83 c4 04                                        add    esp,0x4
  00424fda: 8b c6                                           mov    eax,esi
  00424fdc: 5e                                              pop    esi
  00424fdd: 5d                                              pop    ebp
  00424fde: c2 04 00                                        ret    0x4
  00424ff0: 55                                              push   ebp
  00424ff1: 8b ec                                           mov    ebp,esp
  00424ff3: 56                                              push   esi
  00424ff4: 8b f1                                           mov    esi,ecx
  00424ff6: e8 05 f4 ff ff                                  call   0x424400
  00424ffb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00424fff: 74 09                                           je     0x42500a
  00425001: 56                                              push   esi
  00425002: e8 59 d0 01 00                                  call   0x442060
  00425007: 83 c4 04                                        add    esp,0x4
  0042500a: 8b c6                                           mov    eax,esi
  0042500c: 5e                                              pop    esi
  0042500d: 5d                                              pop    ebp
  0042500e: c2 04 00                                        ret    0x4
  00425020: 55                                              push   ebp
  00425021: 8b ec                                           mov    ebp,esp
  00425023: 56                                              push   esi
  00425024: 8b f1                                           mov    esi,ecx
  00425026: e8 25 00 00 00                                  call   0x425050
  0042502b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042502f: 74 09                                           je     0x42503a
  00425031: 56                                              push   esi
  00425032: e8 29 d0 01 00                                  call   0x442060
  00425037: 83 c4 04                                        add    esp,0x4
  0042503a: 8b c6                                           mov    eax,esi
  0042503c: 5e                                              pop    esi
  0042503d: 5d                                              pop    ebp
  0042503e: c2 04 00                                        ret    0x4
  004251a0: 55                                              push   ebp
  004251a1: 8b ec                                           mov    ebp,esp
  004251a3: 56                                              push   esi
  004251a4: 8b f1                                           mov    esi,ecx
  004251a6: e8 a5 f5 ff ff                                  call   0x424750
  004251ab: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004251af: 74 09                                           je     0x4251ba
  004251b1: 56                                              push   esi
  004251b2: e8 a9 ce 01 00                                  call   0x442060
  004251b7: 83 c4 04                                        add    esp,0x4
  004251ba: 8b c6                                           mov    eax,esi
  004251bc: 5e                                              pop    esi
  004251bd: 5d                                              pop    ebp
  004251be: c2 04 00                                        ret    0x4
  00425470: 83 e9 30                                        sub    ecx,0x30
  00425473: e9 08 d6 fe ff                                  jmp    0x412a80
  00425670: 55                                              push   ebp
  00425671: 8b ec                                           mov    ebp,esp
  00425673: 56                                              push   esi
  00425674: 8b f1                                           mov    esi,ecx
  00425676: e8 d5 00 00 00                                  call   0x425750
  0042567b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042567f: 74 09                                           je     0x42568a
  00425681: 56                                              push   esi
  00425682: e8 d9 c9 01 00                                  call   0x442060
  00425687: 83 c4 04                                        add    esp,0x4
  0042568a: 8b c6                                           mov    eax,esi
  0042568c: 5e                                              pop    esi
  0042568d: 5d                                              pop    ebp
  0042568e: c2 04 00                                        ret    0x4
  0042acb0: 55                                              push   ebp
  0042acb1: 8b ec                                           mov    ebp,esp
  0042acb3: 53                                              push   ebx
  0042acb4: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  0042acb7: f6 c3 02                                        test   bl,0x2
  0042acba: 56                                              push   esi
  0042acbb: 8b f1                                           mov    esi,ecx
  0042acbd: 74 2c                                           je     0x42aceb
  0042acbf: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  0042acc2: 57                                              push   edi
  0042acc3: 68 f0 aa 42 00                                  push   0x42aaf0
  0042acc8: 8d 7e fc                                        lea    edi,[esi-0x4]
  0042accb: 50                                              push   eax
  0042accc: 6a 38                                           push   0x38
  0042acce: 56                                              push   esi
  0042accf: e8 bc 6e 0a 00                                  call   0x4d1b90
  0042acd4: f6 c3 01                                        test   bl,0x1
  0042acd7: 74 09                                           je     0x42ace2
  0042acd9: 57                                              push   edi
  0042acda: e8 b1 37 0a 00                                  call   0x4ce490
  0042acdf: 83 c4 04                                        add    esp,0x4
  0042ace2: 8b c7                                           mov    eax,edi
  0042ace4: 5f                                              pop    edi
  0042ace5: 5e                                              pop    esi
  0042ace6: 5b                                              pop    ebx
  0042ace7: 5d                                              pop    ebp
  0042ace8: c2 04 00                                        ret    0x4
  0042aceb: 8b ce                                           mov    ecx,esi
  0042aced: e8 fe fd ff ff                                  call   0x42aaf0
  0042acf2: f6 c3 01                                        test   bl,0x1
  0042acf5: 74 09                                           je     0x42ad00
  0042acf7: 56                                              push   esi
  0042acf8: e8 63 73 01 00                                  call   0x442060
  0042acfd: 83 c4 04                                        add    esp,0x4
  0042ad00: 8b c6                                           mov    eax,esi
  0042ad02: 5e                                              pop    esi
  0042ad03: 5b                                              pop    ebx
  0042ad04: 5d                                              pop    ebp
  0042ad05: c2 04 00                                        ret    0x4
  0042ad50: 55                                              push   ebp
  0042ad51: 8b ec                                           mov    ebp,esp
  0042ad53: 56                                              push   esi
  0042ad54: 8b f1                                           mov    esi,ecx
  0042ad56: e8 25 00 00 00                                  call   0x42ad80
  0042ad5b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042ad5f: 74 09                                           je     0x42ad6a
  0042ad61: 56                                              push   esi
  0042ad62: e8 f9 72 01 00                                  call   0x442060
  0042ad67: 83 c4 04                                        add    esp,0x4
  0042ad6a: 8b c6                                           mov    eax,esi
  0042ad6c: 5e                                              pop    esi
  0042ad6d: 5d                                              pop    ebp
  0042ad6e: c2 04 00                                        ret    0x4
  0042b600: 55                                              push   ebp
  0042b601: 8b ec                                           mov    ebp,esp
  0042b603: 51                                              push   ecx
  0042b604: 8a 41 2c                                        mov    al,BYTE PTR [ecx+0x2c]
  0042b607: 53                                              push   ebx
  0042b608: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042b60b: 56                                              push   esi
  0042b60c: 33 d2                                           xor    edx,edx
  0042b60e: 8d 71 2c                                        lea    esi,[ecx+0x2c]
  0042b611: 88 03                                           mov    BYTE PTR [ebx],al
  0042b613: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0042b616: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0042b619: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0042b61c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042b621: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042b624: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042b626: 57                                              push   edi
  0042b627: 8b f9                                           mov    edi,ecx
  0042b629: 3b c7                                           cmp    eax,edi
  0042b62b: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0042b62e: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0042b631: 73 05                                           jae    0x42b638
  0042b633: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0042b636: 8b f8                                           mov    edi,eax
  0042b638: 3b de                                           cmp    ebx,esi
  0042b63a: 75 73                                           jne    0x42b6af
  0042b63c: 3b fa                                           cmp    edi,edx
  0042b63e: 8b f0                                           mov    esi,eax
  0042b640: 76 0a                                           jbe    0x42b64c
  0042b642: 8b cb                                           mov    ecx,ebx
  0042b644: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0042b64a: 33 d2                                           xor    edx,edx
  0042b64c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0042b64f: 2b c7                                           sub    eax,edi
  0042b651: 3b c6                                           cmp    eax,esi
  0042b653: 73 02                                           jae    0x42b657
  0042b655: 8b f0                                           mov    esi,eax
  0042b657: 3b f2                                           cmp    esi,edx
  0042b659: 0f 86 de 00 00 00                               jbe    0x42b73d
  0042b65f: 8b cb                                           mov    ecx,ebx
  0042b661: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0042b667: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0042b66a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0042b66d: 2b d6                                           sub    edx,esi
  0042b66f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0042b672: 2b d7                                           sub    edx,edi
  0042b674: 52                                              push   edx
  0042b675: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  0042b678: 51                                              push   ecx
  0042b679: 50                                              push   eax
  0042b67a: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0042b680: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0042b683: 83 c4 0c                                        add    esp,0xc
  0042b686: 6a 00                                           push   0x0
  0042b688: 2b fe                                           sub    edi,esi
  0042b68a: 57                                              push   edi
  0042b68b: 8b cb                                           mov    ecx,ebx
  0042b68d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042b693: 84 c0                                           test   al,al
  0042b695: 0f 84 a2 00 00 00                               je     0x42b73d
  0042b69b: 57                                              push   edi
  0042b69c: 8b cb                                           mov    ecx,ebx
  0042b69e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042b6a4: 5f                                              pop    edi
  0042b6a5: 5e                                              pop    esi
  0042b6a6: 8b c3                                           mov    eax,ebx
  0042b6a8: 5b                                              pop    ebx
  0042b6a9: 8b e5                                           mov    esp,ebp
  0042b6ab: 5d                                              pop    ebp
  0042b6ac: c2 04 00                                        ret    0x4
  0042b6af: 3b fa                                           cmp    edi,edx
  0042b6b1: 76 4e                                           jbe    0x42b701
  0042b6b3: 3b f9                                           cmp    edi,ecx
  0042b6b5: 75 4a                                           jne    0x42b701
  0042b6b7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042b6ba: 3b c2                                           cmp    eax,edx
  0042b6bc: 75 05                                           jne    0x42b6c3
  0042b6be: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042b6c3: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0042b6c7: 73 38                                           jae    0x42b701
  0042b6c9: 6a 01                                           push   0x1
  0042b6cb: 8b cb                                           mov    ecx,ebx
  0042b6cd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042b6d3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042b6d6: 85 c0                                           test   eax,eax
  0042b6d8: 75 05                                           jne    0x42b6df
  0042b6da: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042b6df: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0042b6e2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0042b6e5: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0042b6e8: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0042b6eb: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0042b6ee: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  0042b6f1: 5f                                              pop    edi
  0042b6f2: fe c1                                           inc    cl
  0042b6f4: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  0042b6f7: 5e                                              pop    esi
  0042b6f8: 8b c3                                           mov    eax,ebx
  0042b6fa: 5b                                              pop    ebx
  0042b6fb: 8b e5                                           mov    esp,ebp
  0042b6fd: 5d                                              pop    ebp
  0042b6fe: c2 04 00                                        ret    0x4
  0042b701: 6a 01                                           push   0x1
  0042b703: 57                                              push   edi
  0042b704: 8b cb                                           mov    ecx,ebx
  0042b706: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042b70c: 84 c0                                           test   al,al
  0042b70e: 74 2d                                           je     0x42b73d
  0042b710: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0042b713: 85 f6                                           test   esi,esi
  0042b715: 75 06                                           jne    0x42b71d
  0042b717: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0042b71d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042b720: 8b cf                                           mov    ecx,edi
  0042b722: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0042b725: 8b d1                                           mov    edx,ecx
  0042b727: c1 e9 02                                        shr    ecx,0x2
  0042b72a: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042b72c: 8b ca                                           mov    ecx,edx
  0042b72e: 83 e1 03                                        and    ecx,0x3
  0042b731: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042b733: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0042b736: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0042b739: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0042b73d: 5f                                              pop    edi
  0042b73e: 5e                                              pop    esi
  0042b73f: 8b c3                                           mov    eax,ebx
  0042b741: 5b                                              pop    ebx
  0042b742: 8b e5                                           mov    esp,ebp
  0042b744: 5d                                              pop    ebp
  0042b745: c2 04 00                                        ret    0x4
  0042b750: 55                                              push   ebp
  0042b751: 8b ec                                           mov    ebp,esp
  0042b753: 6a ff                                           push   0xffffffff
  0042b755: 68 99 4d 4d 00                                  push   0x4d4d99
  0042b75a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042b760: 50                                              push   eax
  0042b761: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042b768: 51                                              push   ecx
  0042b769: 53                                              push   ebx
  0042b76a: 56                                              push   esi
  0042b76b: 57                                              push   edi
  0042b76c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042b771: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042b773: 8d 59 2c                                        lea    ebx,[ecx+0x2c]
  0042b776: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0042b779: 8b f9                                           mov    edi,ecx
  0042b77b: 3b c7                                           cmp    eax,edi
  0042b77d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0042b784: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0042b787: 73 05                                           jae    0x42b78e
  0042b789: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0042b78c: 8b f8                                           mov    edi,eax
  0042b78e: 8d 55 08                                        lea    edx,[ebp+0x8]
  0042b791: 3b da                                           cmp    ebx,edx
  0042b793: 75 6f                                           jne    0x42b804
  0042b795: 8b f0                                           mov    esi,eax
  0042b797: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  0042b79a: 73 08                                           jae    0x42b7a4
  0042b79c: 8b cb                                           mov    ecx,ebx
  0042b79e: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0042b7a4: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0042b7a7: 2b c7                                           sub    eax,edi
  0042b7a9: 3b c6                                           cmp    eax,esi
  0042b7ab: 73 02                                           jae    0x42b7af
  0042b7ad: 8b f0                                           mov    esi,eax
  0042b7af: 85 f6                                           test   esi,esi
  0042b7b1: 76 40                                           jbe    0x42b7f3
  0042b7b3: 8b cb                                           mov    ecx,ebx
  0042b7b5: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0042b7bb: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0042b7be: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0042b7c1: 2b ce                                           sub    ecx,esi
  0042b7c3: 03 c7                                           add    eax,edi
  0042b7c5: 2b cf                                           sub    ecx,edi
  0042b7c7: 51                                              push   ecx
  0042b7c8: 8d 14 30                                        lea    edx,[eax+esi*1]
  0042b7cb: 52                                              push   edx
  0042b7cc: 50                                              push   eax
  0042b7cd: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0042b7d3: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0042b7d6: 83 c4 0c                                        add    esp,0xc
  0042b7d9: 6a 00                                           push   0x0
  0042b7db: 2b fe                                           sub    edi,esi
  0042b7dd: 57                                              push   edi
  0042b7de: 8b cb                                           mov    ecx,ebx
  0042b7e0: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042b7e6: 84 c0                                           test   al,al
  0042b7e8: 74 09                                           je     0x42b7f3
  0042b7ea: 57                                              push   edi
  0042b7eb: 8b cb                                           mov    ecx,ebx
  0042b7ed: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042b7f3: 6a 00                                           push   0x0
  0042b7f5: 6a 00                                           push   0x0
  0042b7f7: 8b cb                                           mov    ecx,ebx
  0042b7f9: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0042b7ff: e9 80 00 00 00                                  jmp    0x42b884
  0042b804: 85 ff                                           test   edi,edi
  0042b806: 76 41                                           jbe    0x42b849
  0042b808: 3b f9                                           cmp    edi,ecx
  0042b80a: 75 3d                                           jne    0x42b849
  0042b80c: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042b80f: 85 f6                                           test   esi,esi
  0042b811: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042b816: 74 02                                           je     0x42b81a
  0042b818: 8b c6                                           mov    eax,esi
  0042b81a: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0042b81e: 73 2c                                           jae    0x42b84c
  0042b820: 6a 01                                           push   0x1
  0042b822: 8b cb                                           mov    ecx,ebx
  0042b824: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042b82a: 85 f6                                           test   esi,esi
  0042b82c: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042b831: 74 02                                           je     0x42b835
  0042b833: 8b c6                                           mov    eax,esi
  0042b835: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0042b838: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0042b83b: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0042b83e: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0042b841: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0042b844: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0042b847: eb 3e                                           jmp    0x42b887
  0042b849: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042b84c: 6a 01                                           push   0x1
  0042b84e: 57                                              push   edi
  0042b84f: 8b cb                                           mov    ecx,ebx
  0042b851: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042b857: 84 c0                                           test   al,al
  0042b859: 74 2c                                           je     0x42b887
  0042b85b: 85 f6                                           test   esi,esi
  0042b85d: 75 06                                           jne    0x42b865
  0042b85f: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0042b865: 8b cf                                           mov    ecx,edi
  0042b867: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0042b86a: 8b c1                                           mov    eax,ecx
  0042b86c: c1 e9 02                                        shr    ecx,0x2
  0042b86f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042b871: 8b c8                                           mov    ecx,eax
  0042b873: 83 e1 03                                        and    ecx,0x3
  0042b876: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042b878: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0042b87b: 51                                              push   ecx
  0042b87c: 8b cb                                           mov    ecx,ebx
  0042b87e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042b884: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042b887: 85 f6                                           test   esi,esi
  0042b889: 74 2d                                           je     0x42b8b8
  0042b88b: 8a 46 ff                                        mov    al,BYTE PTR [esi-0x1]
  0042b88e: 84 c0                                           test   al,al
  0042b890: 74 1c                                           je     0x42b8ae
  0042b892: 3c ff                                           cmp    al,0xff
  0042b894: 74 18                                           je     0x42b8ae
  0042b896: fe c8                                           dec    al
  0042b898: 5f                                              pop    edi
  0042b899: 88 46 ff                                        mov    BYTE PTR [esi-0x1],al
  0042b89c: 5e                                              pop    esi
  0042b89d: 5b                                              pop    ebx
  0042b89e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042b8a1: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042b8a8: 8b e5                                           mov    esp,ebp
  0042b8aa: 5d                                              pop    ebp
  0042b8ab: c2 10 00                                        ret    0x10
  0042b8ae: 4e                                              dec    esi
  0042b8af: 56                                              push   esi
  0042b8b0: e8 ab 67 01 00                                  call   0x442060
  0042b8b5: 83 c4 04                                        add    esp,0x4
  0042b8b8: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042b8bb: 5f                                              pop    edi
  0042b8bc: 5e                                              pop    esi
  0042b8bd: 5b                                              pop    ebx
  0042b8be: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042b8c5: 8b e5                                           mov    esp,ebp
  0042b8c7: 5d                                              pop    ebp
  0042b8c8: c2 10 00                                        ret    0x10
  0042b8d0: 8b 41 3c                                        mov    eax,DWORD PTR [ecx+0x3c]
  0042b8d3: c3                                              ret
  0042b8e0: 8b 41 40                                        mov    eax,DWORD PTR [ecx+0x40]
  0042b8e3: c3                                              ret
  0042b8f0: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042b8f3: c3                                              ret
  0042b900: 8b 41 08                                        mov    eax,DWORD PTR [ecx+0x8]
  0042b903: c3                                              ret
  0042b910: 55                                              push   ebp
  0042b911: 8b ec                                           mov    ebp,esp
  0042b913: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042b916: 89 41 08                                        mov    DWORD PTR [ecx+0x8],eax
  0042b919: 5d                                              pop    ebp
  0042b91a: c2 04 00                                        ret    0x4
  0042b920: 55                                              push   ebp
  0042b921: 8b ec                                           mov    ebp,esp
  0042b923: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042b926: 89 41 3c                                        mov    DWORD PTR [ecx+0x3c],eax
  0042b929: 5d                                              pop    ebp
  0042b92a: c2 04 00                                        ret    0x4
  0042b930: 55                                              push   ebp
  0042b931: 8b ec                                           mov    ebp,esp
  0042b933: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042b936: 89 41 40                                        mov    DWORD PTR [ecx+0x40],eax
  0042b939: 5d                                              pop    ebp
  0042b93a: c2 04 00                                        ret    0x4
  0042b940: 55                                              push   ebp
  0042b941: 8b ec                                           mov    ebp,esp
  0042b943: 6a ff                                           push   0xffffffff
  0042b945: 68 b9 4d 4d 00                                  push   0x4d4db9
  0042b94a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042b950: 50                                              push   eax
  0042b951: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042b958: 51                                              push   ecx
  0042b959: 53                                              push   ebx
  0042b95a: 56                                              push   esi
  0042b95b: 57                                              push   edi
  0042b95c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042b961: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042b963: 8d 59 1c                                        lea    ebx,[ecx+0x1c]
  0042b966: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0042b969: 8b f9                                           mov    edi,ecx
  0042b96b: 3b c7                                           cmp    eax,edi
  0042b96d: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0042b974: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0042b977: 73 05                                           jae    0x42b97e
  0042b979: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0042b97c: 8b f8                                           mov    edi,eax
  0042b97e: 8d 55 08                                        lea    edx,[ebp+0x8]
  0042b981: 3b da                                           cmp    ebx,edx
  0042b983: 75 6f                                           jne    0x42b9f4
  0042b985: 8b f0                                           mov    esi,eax
  0042b987: 39 7b 08                                        cmp    DWORD PTR [ebx+0x8],edi
  0042b98a: 73 08                                           jae    0x42b994
  0042b98c: 8b cb                                           mov    ecx,ebx
  0042b98e: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0042b994: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0042b997: 2b c7                                           sub    eax,edi
  0042b999: 3b c6                                           cmp    eax,esi
  0042b99b: 73 02                                           jae    0x42b99f
  0042b99d: 8b f0                                           mov    esi,eax
  0042b99f: 85 f6                                           test   esi,esi
  0042b9a1: 76 40                                           jbe    0x42b9e3
  0042b9a3: 8b cb                                           mov    ecx,ebx
  0042b9a5: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0042b9ab: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  0042b9ae: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0042b9b1: 2b ce                                           sub    ecx,esi
  0042b9b3: 03 c7                                           add    eax,edi
  0042b9b5: 2b cf                                           sub    ecx,edi
  0042b9b7: 51                                              push   ecx
  0042b9b8: 8d 14 30                                        lea    edx,[eax+esi*1]
  0042b9bb: 52                                              push   edx
  0042b9bc: 50                                              push   eax
  0042b9bd: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0042b9c3: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0042b9c6: 83 c4 0c                                        add    esp,0xc
  0042b9c9: 6a 00                                           push   0x0
  0042b9cb: 2b fe                                           sub    edi,esi
  0042b9cd: 57                                              push   edi
  0042b9ce: 8b cb                                           mov    ecx,ebx
  0042b9d0: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042b9d6: 84 c0                                           test   al,al
  0042b9d8: 74 09                                           je     0x42b9e3
  0042b9da: 57                                              push   edi
  0042b9db: 8b cb                                           mov    ecx,ebx
  0042b9dd: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042b9e3: 6a 00                                           push   0x0
  0042b9e5: 6a 00                                           push   0x0
  0042b9e7: 8b cb                                           mov    ecx,ebx
  0042b9e9: ff 15 d4 e4 4d 00                               call   DWORD PTR ds:0x4de4d4
  0042b9ef: e9 80 00 00 00                                  jmp    0x42ba74
  0042b9f4: 85 ff                                           test   edi,edi
  0042b9f6: 76 41                                           jbe    0x42ba39
  0042b9f8: 3b f9                                           cmp    edi,ecx
  0042b9fa: 75 3d                                           jne    0x42ba39
  0042b9fc: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042b9ff: 85 f6                                           test   esi,esi
  0042ba01: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042ba06: 74 02                                           je     0x42ba0a
  0042ba08: 8b c6                                           mov    eax,esi
  0042ba0a: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0042ba0e: 73 2c                                           jae    0x42ba3c
  0042ba10: 6a 01                                           push   0x1
  0042ba12: 8b cb                                           mov    ecx,ebx
  0042ba14: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042ba1a: 85 f6                                           test   esi,esi
  0042ba1c: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042ba21: 74 02                                           je     0x42ba25
  0042ba23: 8b c6                                           mov    eax,esi
  0042ba25: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0042ba28: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0042ba2b: 89 4b 08                                        mov    DWORD PTR [ebx+0x8],ecx
  0042ba2e: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0042ba31: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0042ba34: fe 40 ff                                        inc    BYTE PTR [eax-0x1]
  0042ba37: eb 3e                                           jmp    0x42ba77
  0042ba39: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042ba3c: 6a 01                                           push   0x1
  0042ba3e: 57                                              push   edi
  0042ba3f: 8b cb                                           mov    ecx,ebx
  0042ba41: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042ba47: 84 c0                                           test   al,al
  0042ba49: 74 2c                                           je     0x42ba77
  0042ba4b: 85 f6                                           test   esi,esi
  0042ba4d: 75 06                                           jne    0x42ba55
  0042ba4f: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0042ba55: 8b cf                                           mov    ecx,edi
  0042ba57: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0042ba5a: 8b c1                                           mov    eax,ecx
  0042ba5c: c1 e9 02                                        shr    ecx,0x2
  0042ba5f: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042ba61: 8b c8                                           mov    ecx,eax
  0042ba63: 83 e1 03                                        and    ecx,0x3
  0042ba66: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042ba68: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0042ba6b: 51                                              push   ecx
  0042ba6c: 8b cb                                           mov    ecx,ebx
  0042ba6e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042ba74: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042ba77: 85 f6                                           test   esi,esi
  0042ba79: 74 2d                                           je     0x42baa8
  0042ba7b: 8a 46 ff                                        mov    al,BYTE PTR [esi-0x1]
  0042ba7e: 84 c0                                           test   al,al
  0042ba80: 74 1c                                           je     0x42ba9e
  0042ba82: 3c ff                                           cmp    al,0xff
  0042ba84: 74 18                                           je     0x42ba9e
  0042ba86: fe c8                                           dec    al
  0042ba88: 5f                                              pop    edi
  0042ba89: 88 46 ff                                        mov    BYTE PTR [esi-0x1],al
  0042ba8c: 5e                                              pop    esi
  0042ba8d: 5b                                              pop    ebx
  0042ba8e: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042ba91: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042ba98: 8b e5                                           mov    esp,ebp
  0042ba9a: 5d                                              pop    ebp
  0042ba9b: c2 10 00                                        ret    0x10
  0042ba9e: 4e                                              dec    esi
  0042ba9f: 56                                              push   esi
  0042baa0: e8 bb 65 01 00                                  call   0x442060
  0042baa5: 83 c4 04                                        add    esp,0x4
  0042baa8: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042baab: 5f                                              pop    edi
  0042baac: 5e                                              pop    esi
  0042baad: 5b                                              pop    ebx
  0042baae: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042bab5: 8b e5                                           mov    esp,ebp
  0042bab7: 5d                                              pop    ebp
  0042bab8: c2 10 00                                        ret    0x10
  0042bac0: 55                                              push   ebp
  0042bac1: 8b ec                                           mov    ebp,esp
  0042bac3: 51                                              push   ecx
  0042bac4: 8a 41 1c                                        mov    al,BYTE PTR [ecx+0x1c]
  0042bac7: 53                                              push   ebx
  0042bac8: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042bacb: 56                                              push   esi
  0042bacc: 33 d2                                           xor    edx,edx
  0042bace: 8d 71 1c                                        lea    esi,[ecx+0x1c]
  0042bad1: 88 03                                           mov    BYTE PTR [ebx],al
  0042bad3: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0042bad6: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0042bad9: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0042badc: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042bae1: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042bae4: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042bae6: 57                                              push   edi
  0042bae7: 8b f9                                           mov    edi,ecx
  0042bae9: 3b c7                                           cmp    eax,edi
  0042baeb: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0042baee: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0042baf1: 73 05                                           jae    0x42baf8
  0042baf3: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0042baf6: 8b f8                                           mov    edi,eax
  0042baf8: 3b de                                           cmp    ebx,esi
  0042bafa: 75 73                                           jne    0x42bb6f
  0042bafc: 3b fa                                           cmp    edi,edx
  0042bafe: 8b f0                                           mov    esi,eax
  0042bb00: 76 0a                                           jbe    0x42bb0c
  0042bb02: 8b cb                                           mov    ecx,ebx
  0042bb04: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0042bb0a: 33 d2                                           xor    edx,edx
  0042bb0c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0042bb0f: 2b c7                                           sub    eax,edi
  0042bb11: 3b c6                                           cmp    eax,esi
  0042bb13: 73 02                                           jae    0x42bb17
  0042bb15: 8b f0                                           mov    esi,eax
  0042bb17: 3b f2                                           cmp    esi,edx
  0042bb19: 0f 86 de 00 00 00                               jbe    0x42bbfd
  0042bb1f: 8b cb                                           mov    ecx,ebx
  0042bb21: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0042bb27: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0042bb2a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0042bb2d: 2b d6                                           sub    edx,esi
  0042bb2f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0042bb32: 2b d7                                           sub    edx,edi
  0042bb34: 52                                              push   edx
  0042bb35: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  0042bb38: 51                                              push   ecx
  0042bb39: 50                                              push   eax
  0042bb3a: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0042bb40: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0042bb43: 83 c4 0c                                        add    esp,0xc
  0042bb46: 6a 00                                           push   0x0
  0042bb48: 2b fe                                           sub    edi,esi
  0042bb4a: 57                                              push   edi
  0042bb4b: 8b cb                                           mov    ecx,ebx
  0042bb4d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042bb53: 84 c0                                           test   al,al
  0042bb55: 0f 84 a2 00 00 00                               je     0x42bbfd
  0042bb5b: 57                                              push   edi
  0042bb5c: 8b cb                                           mov    ecx,ebx
  0042bb5e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042bb64: 5f                                              pop    edi
  0042bb65: 5e                                              pop    esi
  0042bb66: 8b c3                                           mov    eax,ebx
  0042bb68: 5b                                              pop    ebx
  0042bb69: 8b e5                                           mov    esp,ebp
  0042bb6b: 5d                                              pop    ebp
  0042bb6c: c2 04 00                                        ret    0x4
  0042bb6f: 3b fa                                           cmp    edi,edx
  0042bb71: 76 4e                                           jbe    0x42bbc1
  0042bb73: 3b f9                                           cmp    edi,ecx
  0042bb75: 75 4a                                           jne    0x42bbc1
  0042bb77: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042bb7a: 3b c2                                           cmp    eax,edx
  0042bb7c: 75 05                                           jne    0x42bb83
  0042bb7e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042bb83: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0042bb87: 73 38                                           jae    0x42bbc1
  0042bb89: 6a 01                                           push   0x1
  0042bb8b: 8b cb                                           mov    ecx,ebx
  0042bb8d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042bb93: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042bb96: 85 c0                                           test   eax,eax
  0042bb98: 75 05                                           jne    0x42bb9f
  0042bb9a: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042bb9f: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0042bba2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0042bba5: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0042bba8: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0042bbab: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0042bbae: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  0042bbb1: 5f                                              pop    edi
  0042bbb2: fe c1                                           inc    cl
  0042bbb4: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  0042bbb7: 5e                                              pop    esi
  0042bbb8: 8b c3                                           mov    eax,ebx
  0042bbba: 5b                                              pop    ebx
  0042bbbb: 8b e5                                           mov    esp,ebp
  0042bbbd: 5d                                              pop    ebp
  0042bbbe: c2 04 00                                        ret    0x4
  0042bbc1: 6a 01                                           push   0x1
  0042bbc3: 57                                              push   edi
  0042bbc4: 8b cb                                           mov    ecx,ebx
  0042bbc6: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042bbcc: 84 c0                                           test   al,al
  0042bbce: 74 2d                                           je     0x42bbfd
  0042bbd0: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0042bbd3: 85 f6                                           test   esi,esi
  0042bbd5: 75 06                                           jne    0x42bbdd
  0042bbd7: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0042bbdd: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042bbe0: 8b cf                                           mov    ecx,edi
  0042bbe2: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0042bbe5: 8b d1                                           mov    edx,ecx
  0042bbe7: c1 e9 02                                        shr    ecx,0x2
  0042bbea: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042bbec: 8b ca                                           mov    ecx,edx
  0042bbee: 83 e1 03                                        and    ecx,0x3
  0042bbf1: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042bbf3: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0042bbf6: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0042bbf9: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0042bbfd: 5f                                              pop    edi
  0042bbfe: 5e                                              pop    esi
  0042bbff: 8b c3                                           mov    eax,ebx
  0042bc01: 5b                                              pop    ebx
  0042bc02: 8b e5                                           mov    esp,ebp
  0042bc04: 5d                                              pop    ebp
  0042bc05: c2 04 00                                        ret    0x4
  0042bc10: 55                                              push   ebp
  0042bc11: 8b ec                                           mov    ebp,esp
  0042bc13: 51                                              push   ecx
  0042bc14: 8a 41 0c                                        mov    al,BYTE PTR [ecx+0xc]
  0042bc17: 53                                              push   ebx
  0042bc18: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042bc1b: 56                                              push   esi
  0042bc1c: 33 d2                                           xor    edx,edx
  0042bc1e: 8d 71 0c                                        lea    esi,[ecx+0xc]
  0042bc21: 88 03                                           mov    BYTE PTR [ebx],al
  0042bc23: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  0042bc26: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0042bc29: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  0042bc2c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042bc31: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042bc34: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042bc36: 57                                              push   edi
  0042bc37: 8b f9                                           mov    edi,ecx
  0042bc39: 3b c7                                           cmp    eax,edi
  0042bc3b: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  0042bc3e: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  0042bc41: 73 05                                           jae    0x42bc48
  0042bc43: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0042bc46: 8b f8                                           mov    edi,eax
  0042bc48: 3b de                                           cmp    ebx,esi
  0042bc4a: 75 73                                           jne    0x42bcbf
  0042bc4c: 3b fa                                           cmp    edi,edx
  0042bc4e: 8b f0                                           mov    esi,eax
  0042bc50: 76 0a                                           jbe    0x42bc5c
  0042bc52: 8b cb                                           mov    ecx,ebx
  0042bc54: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  0042bc5a: 33 d2                                           xor    edx,edx
  0042bc5c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  0042bc5f: 2b c7                                           sub    eax,edi
  0042bc61: 3b c6                                           cmp    eax,esi
  0042bc63: 73 02                                           jae    0x42bc67
  0042bc65: 8b f0                                           mov    esi,eax
  0042bc67: 3b f2                                           cmp    esi,edx
  0042bc69: 0f 86 de 00 00 00                               jbe    0x42bd4d
  0042bc6f: 8b cb                                           mov    ecx,ebx
  0042bc71: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  0042bc77: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  0042bc7a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0042bc7d: 2b d6                                           sub    edx,esi
  0042bc7f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0042bc82: 2b d7                                           sub    edx,edi
  0042bc84: 52                                              push   edx
  0042bc85: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  0042bc88: 51                                              push   ecx
  0042bc89: 50                                              push   eax
  0042bc8a: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  0042bc90: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  0042bc93: 83 c4 0c                                        add    esp,0xc
  0042bc96: 6a 00                                           push   0x0
  0042bc98: 2b fe                                           sub    edi,esi
  0042bc9a: 57                                              push   edi
  0042bc9b: 8b cb                                           mov    ecx,ebx
  0042bc9d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042bca3: 84 c0                                           test   al,al
  0042bca5: 0f 84 a2 00 00 00                               je     0x42bd4d
  0042bcab: 57                                              push   edi
  0042bcac: 8b cb                                           mov    ecx,ebx
  0042bcae: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042bcb4: 5f                                              pop    edi
  0042bcb5: 5e                                              pop    esi
  0042bcb6: 8b c3                                           mov    eax,ebx
  0042bcb8: 5b                                              pop    ebx
  0042bcb9: 8b e5                                           mov    esp,ebp
  0042bcbb: 5d                                              pop    ebp
  0042bcbc: c2 04 00                                        ret    0x4
  0042bcbf: 3b fa                                           cmp    edi,edx
  0042bcc1: 76 4e                                           jbe    0x42bd11
  0042bcc3: 3b f9                                           cmp    edi,ecx
  0042bcc5: 75 4a                                           jne    0x42bd11
  0042bcc7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042bcca: 3b c2                                           cmp    eax,edx
  0042bccc: 75 05                                           jne    0x42bcd3
  0042bcce: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042bcd3: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  0042bcd7: 73 38                                           jae    0x42bd11
  0042bcd9: 6a 01                                           push   0x1
  0042bcdb: 8b cb                                           mov    ecx,ebx
  0042bcdd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042bce3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042bce6: 85 c0                                           test   eax,eax
  0042bce8: 75 05                                           jne    0x42bcef
  0042bcea: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042bcef: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  0042bcf2: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  0042bcf5: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  0042bcf8: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  0042bcfb: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  0042bcfe: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  0042bd01: 5f                                              pop    edi
  0042bd02: fe c1                                           inc    cl
  0042bd04: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  0042bd07: 5e                                              pop    esi
  0042bd08: 8b c3                                           mov    eax,ebx
  0042bd0a: 5b                                              pop    ebx
  0042bd0b: 8b e5                                           mov    esp,ebp
  0042bd0d: 5d                                              pop    ebp
  0042bd0e: c2 04 00                                        ret    0x4
  0042bd11: 6a 01                                           push   0x1
  0042bd13: 57                                              push   edi
  0042bd14: 8b cb                                           mov    ecx,ebx
  0042bd16: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042bd1c: 84 c0                                           test   al,al
  0042bd1e: 74 2d                                           je     0x42bd4d
  0042bd20: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0042bd23: 85 f6                                           test   esi,esi
  0042bd25: 75 06                                           jne    0x42bd2d
  0042bd27: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  0042bd2d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042bd30: 8b cf                                           mov    ecx,edi
  0042bd32: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  0042bd35: 8b d1                                           mov    edx,ecx
  0042bd37: c1 e9 02                                        shr    ecx,0x2
  0042bd3a: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042bd3c: 8b ca                                           mov    ecx,edx
  0042bd3e: 83 e1 03                                        and    ecx,0x3
  0042bd41: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042bd43: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  0042bd46: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  0042bd49: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  0042bd4d: 5f                                              pop    edi
  0042bd4e: 5e                                              pop    esi
  0042bd4f: 8b c3                                           mov    eax,ebx
  0042bd51: 5b                                              pop    ebx
  0042bd52: 8b e5                                           mov    esp,ebp
  0042bd54: 5d                                              pop    ebp
  0042bd55: c2 04 00                                        ret    0x4
  0042bd60: 8a 41 44                                        mov    al,BYTE PTR [ecx+0x44]
  0042bd63: c3                                              ret
  0042bd70: b0 01                                           mov    al,0x1
  0042bd72: c3                                              ret
  0042bd80: 55                                              push   ebp
  0042bd81: 8b ec                                           mov    ebp,esp
  0042bd83: 56                                              push   esi
  0042bd84: 8b f1                                           mov    esi,ecx
  0042bd86: e8 25 00 00 00                                  call   0x42bdb0
  0042bd8b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042bd8f: 74 09                                           je     0x42bd9a
  0042bd91: 56                                              push   esi
  0042bd92: e8 c9 62 01 00                                  call   0x442060
  0042bd97: 83 c4 04                                        add    esp,0x4
  0042bd9a: 8b c6                                           mov    eax,esi
  0042bd9c: 5e                                              pop    esi
  0042bd9d: 5d                                              pop    ebp
  0042bd9e: c2 04 00                                        ret    0x4
  0042bdc0: b0 01                                           mov    al,0x1
  0042bdc2: c3                                              ret
  0042bdd0: 55                                              push   ebp
  0042bdd1: 8b ec                                           mov    ebp,esp
  0042bdd3: 56                                              push   esi
  0042bdd4: 8b f1                                           mov    esi,ecx
  0042bdd6: e8 25 00 00 00                                  call   0x42be00
  0042bddb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042bddf: 74 09                                           je     0x42bdea
  0042bde1: 56                                              push   esi
  0042bde2: e8 79 62 01 00                                  call   0x442060
  0042bde7: 83 c4 04                                        add    esp,0x4
  0042bdea: 8b c6                                           mov    eax,esi
  0042bdec: 5e                                              pop    esi
  0042bded: 5d                                              pop    ebp
  0042bdee: c2 04 00                                        ret    0x4
  0042be10: b0 01                                           mov    al,0x1
  0042be12: c3                                              ret
  0042be20: 55                                              push   ebp
  0042be21: 8b ec                                           mov    ebp,esp
  0042be23: 56                                              push   esi
  0042be24: 8b f1                                           mov    esi,ecx
  0042be26: e8 25 00 00 00                                  call   0x42be50
  0042be2b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042be2f: 74 09                                           je     0x42be3a
  0042be31: 56                                              push   esi
  0042be32: e8 29 62 01 00                                  call   0x442060
  0042be37: 83 c4 04                                        add    esp,0x4
  0042be3a: 8b c6                                           mov    eax,esi
  0042be3c: 5e                                              pop    esi
  0042be3d: 5d                                              pop    ebp
  0042be3e: c2 04 00                                        ret    0x4
  0042bea0: b0 01                                           mov    al,0x1
  0042bea2: c3                                              ret
  0042beb0: 55                                              push   ebp
  0042beb1: 8b ec                                           mov    ebp,esp
  0042beb3: 56                                              push   esi
  0042beb4: 8b f1                                           mov    esi,ecx
  0042beb6: e8 25 00 00 00                                  call   0x42bee0
  0042bebb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042bebf: 74 09                                           je     0x42beca
  0042bec1: 56                                              push   esi
  0042bec2: e8 99 61 01 00                                  call   0x442060
  0042bec7: 83 c4 04                                        add    esp,0x4
  0042beca: 8b c6                                           mov    eax,esi
  0042becc: 5e                                              pop    esi
  0042becd: 5d                                              pop    ebp
  0042bece: c2 04 00                                        ret    0x4
  0042c110: b0 01                                           mov    al,0x1
  0042c112: c3                                              ret
  0042c120: 55                                              push   ebp
  0042c121: 8b ec                                           mov    ebp,esp
  0042c123: 56                                              push   esi
  0042c124: 8b f1                                           mov    esi,ecx
  0042c126: e8 d5 0b 00 00                                  call   0x42cd00
  0042c12b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042c12f: 74 09                                           je     0x42c13a
  0042c131: 56                                              push   esi
  0042c132: e8 29 5f 01 00                                  call   0x442060
  0042c137: 83 c4 04                                        add    esp,0x4
  0042c13a: 8b c6                                           mov    eax,esi
  0042c13c: 5e                                              pop    esi
  0042c13d: 5d                                              pop    ebp
  0042c13e: c2 04 00                                        ret    0x4
  0042c150: 8b 41 68                                        mov    eax,DWORD PTR [ecx+0x68]
  0042c153: 85 c0                                           test   eax,eax
  0042c155: 0f 94 c0                                        sete   al
  0042c158: c3                                              ret
  0042c160: 55                                              push   ebp
  0042c161: 8b ec                                           mov    ebp,esp
  0042c163: 56                                              push   esi
  0042c164: 8b f1                                           mov    esi,ecx
  0042c166: e8 25 00 00 00                                  call   0x42c190
  0042c16b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042c16f: 74 09                                           je     0x42c17a
  0042c171: 56                                              push   esi
  0042c172: e8 e9 5e 01 00                                  call   0x442060
  0042c177: 83 c4 04                                        add    esp,0x4
  0042c17a: 8b c6                                           mov    eax,esi
  0042c17c: 5e                                              pop    esi
  0042c17d: 5d                                              pop    ebp
  0042c17e: c2 04 00                                        ret    0x4
  0042c3c0: 55                                              push   ebp
  0042c3c1: 8b ec                                           mov    ebp,esp
  0042c3c3: 8b 41 10                                        mov    eax,DWORD PTR [ecx+0x10]
  0042c3c6: 85 c0                                           test   eax,eax
  0042c3c8: 75 05                                           jne    0x42c3cf
  0042c3ca: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  0042c3cf: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042c3d2: 50                                              push   eax
  0042c3d3: e8 e6 56 0a 00                                  call   0x4d1abe
  0042c3d8: 5d                                              pop    ebp
  0042c3d9: c2 04 00                                        ret    0x4
  0042c3e0: 55                                              push   ebp
  0042c3e1: 8b ec                                           mov    ebp,esp
  0042c3e3: 83 ec 08                                        sub    esp,0x8
  0042c3e6: 53                                              push   ebx
  0042c3e7: 56                                              push   esi
  0042c3e8: 57                                              push   edi
  0042c3e9: 6a 0c                                           push   0xc
  0042c3eb: 8b f9                                           mov    edi,ecx
  0042c3ed: e8 fe 5b 01 00                                  call   0x441ff0
  0042c3f2: 8b f0                                           mov    esi,eax
  0042c3f4: 33 db                                           xor    ebx,ebx
  0042c3f6: 83 c4 04                                        add    esp,0x4
  0042c3f9: 3b f3                                           cmp    esi,ebx
  0042c3fb: 74 1c                                           je     0x42c419
  0042c3fd: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  0042c400: 6a 0c                                           push   0xc
  0042c402: 88 06                                           mov    BYTE PTR [esi],al
  0042c404: e8 e7 5b 01 00                                  call   0x441ff0
  0042c409: 89 00                                           mov    DWORD PTR [eax],eax
  0042c40b: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042c40e: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042c411: 83 c4 04                                        add    esp,0x4
  0042c414: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042c417: 8b de                                           mov    ebx,esi
  0042c419: 6a 4c                                           push   0x4c
  0042c41b: e8 d0 5b 01 00                                  call   0x441ff0
  0042c420: 8b f0                                           mov    esi,eax
  0042c422: 83 c4 04                                        add    esp,0x4
  0042c425: 85 f6                                           test   esi,esi
  0042c427: 74 11                                           je     0x42c43a
  0042c429: 6a 01                                           push   0x1
  0042c42b: 8b ce                                           mov    ecx,esi
  0042c42d: e8 9e fe ff ff                                  call   0x42c2d0
  0042c432: c7 06 50 e9 4d 00                               mov    DWORD PTR [esi],0x4de950
  0042c438: eb 02                                           jmp    0x42c43c
  0042c43a: 33 f6                                           xor    esi,esi
  0042c43c: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0042c43f: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0042c442: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0042c445: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0042c448: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c44d: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c44f: 51                                              push   ecx
  0042c450: 6a 00                                           push   0x0
  0042c452: 8d 57 0c                                        lea    edx,[edi+0xc]
  0042c455: 52                                              push   edx
  0042c456: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  0042c459: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c45f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c464: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c466: 51                                              push   ecx
  0042c467: 6a 00                                           push   0x0
  0042c469: 8d 57 1c                                        lea    edx,[edi+0x1c]
  0042c46c: 52                                              push   edx
  0042c46d: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  0042c470: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c476: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c47b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c47d: 51                                              push   ecx
  0042c47e: 6a 00                                           push   0x0
  0042c480: 8d 57 2c                                        lea    edx,[edi+0x2c]
  0042c483: 52                                              push   edx
  0042c484: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  0042c487: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c48d: 8b 47 3c                                        mov    eax,DWORD PTR [edi+0x3c]
  0042c490: 89 46 3c                                        mov    DWORD PTR [esi+0x3c],eax
  0042c493: 8b 4f 40                                        mov    ecx,DWORD PTR [edi+0x40]
  0042c496: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  0042c499: 8a 57 44                                        mov    dl,BYTE PTR [edi+0x44]
  0042c49c: 88 56 44                                        mov    BYTE PTR [esi+0x44],dl
  0042c49f: 8b 47 48                                        mov    eax,DWORD PTR [edi+0x48]
  0042c4a2: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0042c4a5: 89 46 48                                        mov    DWORD PTR [esi+0x48],eax
  0042c4a8: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0042c4ab: 51                                              push   ecx
  0042c4ac: 50                                              push   eax
  0042c4ad: 8b cb                                           mov    ecx,ebx
  0042c4af: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  0042c4b2: e8 79 16 00 00                                  call   0x42db30
  0042c4b7: 5f                                              pop    edi
  0042c4b8: 5e                                              pop    esi
  0042c4b9: 8b c3                                           mov    eax,ebx
  0042c4bb: 5b                                              pop    ebx
  0042c4bc: 8b e5                                           mov    esp,ebp
  0042c4be: 5d                                              pop    ebp
  0042c4bf: c2 04 00                                        ret    0x4
  0042c4d0: 55                                              push   ebp
  0042c4d1: 8b ec                                           mov    ebp,esp
  0042c4d3: 83 ec 08                                        sub    esp,0x8
  0042c4d6: 53                                              push   ebx
  0042c4d7: 56                                              push   esi
  0042c4d8: 57                                              push   edi
  0042c4d9: 6a 0c                                           push   0xc
  0042c4db: 8b f9                                           mov    edi,ecx
  0042c4dd: e8 0e 5b 01 00                                  call   0x441ff0
  0042c4e2: 8b f0                                           mov    esi,eax
  0042c4e4: 33 db                                           xor    ebx,ebx
  0042c4e6: 83 c4 04                                        add    esp,0x4
  0042c4e9: 3b f3                                           cmp    esi,ebx
  0042c4eb: 74 1c                                           je     0x42c509
  0042c4ed: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  0042c4f0: 6a 0c                                           push   0xc
  0042c4f2: 88 06                                           mov    BYTE PTR [esi],al
  0042c4f4: e8 f7 5a 01 00                                  call   0x441ff0
  0042c4f9: 89 00                                           mov    DWORD PTR [eax],eax
  0042c4fb: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042c4fe: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042c501: 83 c4 04                                        add    esp,0x4
  0042c504: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042c507: 8b de                                           mov    ebx,esi
  0042c509: 6a 70                                           push   0x70
  0042c50b: e8 e0 5a 01 00                                  call   0x441ff0
  0042c510: 8b f0                                           mov    esi,eax
  0042c512: 83 c4 04                                        add    esp,0x4
  0042c515: 85 f6                                           test   esi,esi
  0042c517: 74 28                                           je     0x42c541
  0042c519: 6a 03                                           push   0x3
  0042c51b: 8b ce                                           mov    ecx,esi
  0042c51d: e8 ae fd ff ff                                  call   0x42c2d0
  0042c522: 33 c0                                           xor    eax,eax
  0042c524: c7 06 00 ea 4d 00                               mov    DWORD PTR [esi],0x4dea00
  0042c52a: 89 46 6c                                        mov    DWORD PTR [esi+0x6c],eax
  0042c52d: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  0042c530: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  0042c533: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  0042c536: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  0042c539: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  0042c53c: 89 46 54                                        mov    DWORD PTR [esi+0x54],eax
  0042c53f: eb 02                                           jmp    0x42c543
  0042c541: 33 f6                                           xor    esi,esi
  0042c543: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0042c546: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0042c549: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0042c54c: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0042c54f: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c554: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c556: 51                                              push   ecx
  0042c557: 6a 00                                           push   0x0
  0042c559: 8d 57 0c                                        lea    edx,[edi+0xc]
  0042c55c: 52                                              push   edx
  0042c55d: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  0042c560: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c566: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c56b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c56d: 51                                              push   ecx
  0042c56e: 6a 00                                           push   0x0
  0042c570: 8d 57 1c                                        lea    edx,[edi+0x1c]
  0042c573: 52                                              push   edx
  0042c574: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  0042c577: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c57d: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c582: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c584: 51                                              push   ecx
  0042c585: 6a 00                                           push   0x0
  0042c587: 8d 57 2c                                        lea    edx,[edi+0x2c]
  0042c58a: 52                                              push   edx
  0042c58b: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  0042c58e: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c594: 8b 47 3c                                        mov    eax,DWORD PTR [edi+0x3c]
  0042c597: 89 46 3c                                        mov    DWORD PTR [esi+0x3c],eax
  0042c59a: 8b 4f 40                                        mov    ecx,DWORD PTR [edi+0x40]
  0042c59d: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  0042c5a0: 8a 57 44                                        mov    dl,BYTE PTR [edi+0x44]
  0042c5a3: 88 56 44                                        mov    BYTE PTR [esi+0x44],dl
  0042c5a6: 8b 47 48                                        mov    eax,DWORD PTR [edi+0x48]
  0042c5a9: 89 46 48                                        mov    DWORD PTR [esi+0x48],eax
  0042c5ac: 8b 4f 4c                                        mov    ecx,DWORD PTR [edi+0x4c]
  0042c5af: 89 4e 4c                                        mov    DWORD PTR [esi+0x4c],ecx
  0042c5b2: 8a 57 50                                        mov    dl,BYTE PTR [edi+0x50]
  0042c5b5: 88 56 50                                        mov    BYTE PTR [esi+0x50],dl
  0042c5b8: 8b 47 54                                        mov    eax,DWORD PTR [edi+0x54]
  0042c5bb: 89 46 54                                        mov    DWORD PTR [esi+0x54],eax
  0042c5be: 8b 4f 58                                        mov    ecx,DWORD PTR [edi+0x58]
  0042c5c1: 89 4e 58                                        mov    DWORD PTR [esi+0x58],ecx
  0042c5c4: 8b 57 5c                                        mov    edx,DWORD PTR [edi+0x5c]
  0042c5c7: 89 56 5c                                        mov    DWORD PTR [esi+0x5c],edx
  0042c5ca: 8b 47 60                                        mov    eax,DWORD PTR [edi+0x60]
  0042c5cd: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  0042c5d0: 8b 4f 64                                        mov    ecx,DWORD PTR [edi+0x64]
  0042c5d3: 89 4e 64                                        mov    DWORD PTR [esi+0x64],ecx
  0042c5d6: 8b 57 68                                        mov    edx,DWORD PTR [edi+0x68]
  0042c5d9: 89 56 68                                        mov    DWORD PTR [esi+0x68],edx
  0042c5dc: 8b 47 6c                                        mov    eax,DWORD PTR [edi+0x6c]
  0042c5df: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0042c5e2: 89 46 6c                                        mov    DWORD PTR [esi+0x6c],eax
  0042c5e5: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0042c5e8: 51                                              push   ecx
  0042c5e9: 50                                              push   eax
  0042c5ea: 8b cb                                           mov    ecx,ebx
  0042c5ec: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  0042c5ef: e8 3c 15 00 00                                  call   0x42db30
  0042c5f4: 5f                                              pop    edi
  0042c5f5: 5e                                              pop    esi
  0042c5f6: 8b c3                                           mov    eax,ebx
  0042c5f8: 5b                                              pop    ebx
  0042c5f9: 8b e5                                           mov    esp,ebp
  0042c5fb: 5d                                              pop    ebp
  0042c5fc: c2 04 00                                        ret    0x4
  0042c600: 55                                              push   ebp
  0042c601: 8b ec                                           mov    ebp,esp
  0042c603: 83 ec 08                                        sub    esp,0x8
  0042c606: 53                                              push   ebx
  0042c607: 56                                              push   esi
  0042c608: 57                                              push   edi
  0042c609: 6a 0c                                           push   0xc
  0042c60b: 8b f9                                           mov    edi,ecx
  0042c60d: e8 de 59 01 00                                  call   0x441ff0
  0042c612: 8b f0                                           mov    esi,eax
  0042c614: 33 db                                           xor    ebx,ebx
  0042c616: 83 c4 04                                        add    esp,0x4
  0042c619: 3b f3                                           cmp    esi,ebx
  0042c61b: 74 1c                                           je     0x42c639
  0042c61d: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  0042c620: 6a 0c                                           push   0xc
  0042c622: 88 06                                           mov    BYTE PTR [esi],al
  0042c624: e8 c7 59 01 00                                  call   0x441ff0
  0042c629: 89 00                                           mov    DWORD PTR [eax],eax
  0042c62b: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042c62e: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042c631: 83 c4 04                                        add    esp,0x4
  0042c634: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042c637: 8b de                                           mov    ebx,esi
  0042c639: 6a 70                                           push   0x70
  0042c63b: e8 b0 59 01 00                                  call   0x441ff0
  0042c640: 8b f0                                           mov    esi,eax
  0042c642: 83 c4 04                                        add    esp,0x4
  0042c645: 85 f6                                           test   esi,esi
  0042c647: 74 31                                           je     0x42c67a
  0042c649: 6a 04                                           push   0x4
  0042c64b: 8b ce                                           mov    ecx,esi
  0042c64d: e8 7e fc ff ff                                  call   0x42c2d0
  0042c652: 8a 4d ff                                        mov    cl,BYTE PTR [ebp-0x1]
  0042c655: 33 c0                                           xor    eax,eax
  0042c657: 88 4e 60                                        mov    BYTE PTR [esi+0x60],cl
  0042c65a: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  0042c65d: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  0042c660: 89 46 6c                                        mov    DWORD PTR [esi+0x6c],eax
  0042c663: c7 06 a8 e9 4d 00                               mov    DWORD PTR [esi],0x4de9a8
  0042c669: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  0042c66c: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  0042c66f: 89 46 54                                        mov    DWORD PTR [esi+0x54],eax
  0042c672: 89 46 50                                        mov    DWORD PTR [esi+0x50],eax
  0042c675: 89 46 4c                                        mov    DWORD PTR [esi+0x4c],eax
  0042c678: eb 02                                           jmp    0x42c67c
  0042c67a: 33 f6                                           xor    esi,esi
  0042c67c: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  0042c67f: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0042c682: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  0042c685: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0042c688: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0042c68e: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042c690: 52                                              push   edx
  0042c691: 6a 00                                           push   0x0
  0042c693: 8d 47 0c                                        lea    eax,[edi+0xc]
  0042c696: 50                                              push   eax
  0042c697: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  0042c69a: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c6a0: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0042c6a6: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042c6a8: 52                                              push   edx
  0042c6a9: 6a 00                                           push   0x0
  0042c6ab: 8d 47 1c                                        lea    eax,[edi+0x1c]
  0042c6ae: 50                                              push   eax
  0042c6af: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  0042c6b2: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c6b8: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0042c6be: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042c6c0: 52                                              push   edx
  0042c6c1: 6a 00                                           push   0x0
  0042c6c3: 8d 47 2c                                        lea    eax,[edi+0x2c]
  0042c6c6: 50                                              push   eax
  0042c6c7: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  0042c6ca: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c6d0: 8b 4f 3c                                        mov    ecx,DWORD PTR [edi+0x3c]
  0042c6d3: 89 4e 3c                                        mov    DWORD PTR [esi+0x3c],ecx
  0042c6d6: 8b 57 40                                        mov    edx,DWORD PTR [edi+0x40]
  0042c6d9: 89 56 40                                        mov    DWORD PTR [esi+0x40],edx
  0042c6dc: 8a 47 44                                        mov    al,BYTE PTR [edi+0x44]
  0042c6df: 88 46 44                                        mov    BYTE PTR [esi+0x44],al
  0042c6e2: 8b 4f 48                                        mov    ecx,DWORD PTR [edi+0x48]
  0042c6e5: 89 4e 48                                        mov    DWORD PTR [esi+0x48],ecx
  0042c6e8: 8b 57 4c                                        mov    edx,DWORD PTR [edi+0x4c]
  0042c6eb: 89 56 4c                                        mov    DWORD PTR [esi+0x4c],edx
  0042c6ee: 8b 47 50                                        mov    eax,DWORD PTR [edi+0x50]
  0042c6f1: 89 46 50                                        mov    DWORD PTR [esi+0x50],eax
  0042c6f4: 8b 4f 54                                        mov    ecx,DWORD PTR [edi+0x54]
  0042c6f7: 89 4e 54                                        mov    DWORD PTR [esi+0x54],ecx
  0042c6fa: 8b 57 58                                        mov    edx,DWORD PTR [edi+0x58]
  0042c6fd: 89 56 58                                        mov    DWORD PTR [esi+0x58],edx
  0042c700: 8b 47 5c                                        mov    eax,DWORD PTR [edi+0x5c]
  0042c703: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  0042c706: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0042c70c: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042c70e: 52                                              push   edx
  0042c70f: 6a 00                                           push   0x0
  0042c711: 83 c7 60                                        add    edi,0x60
  0042c714: 57                                              push   edi
  0042c715: 8d 4e 60                                        lea    ecx,[esi+0x60]
  0042c718: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c71e: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0042c721: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0042c724: 51                                              push   ecx
  0042c725: 50                                              push   eax
  0042c726: 8b cb                                           mov    ecx,ebx
  0042c728: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  0042c72b: e8 00 14 00 00                                  call   0x42db30
  0042c730: 5f                                              pop    edi
  0042c731: 5e                                              pop    esi
  0042c732: 8b c3                                           mov    eax,ebx
  0042c734: 5b                                              pop    ebx
  0042c735: 8b e5                                           mov    esp,ebp
  0042c737: 5d                                              pop    ebp
  0042c738: c2 04 00                                        ret    0x4
  0042c740: 55                                              push   ebp
  0042c741: 8b ec                                           mov    ebp,esp
  0042c743: 83 ec 08                                        sub    esp,0x8
  0042c746: 53                                              push   ebx
  0042c747: 56                                              push   esi
  0042c748: 57                                              push   edi
  0042c749: 6a 0c                                           push   0xc
  0042c74b: 8b f9                                           mov    edi,ecx
  0042c74d: e8 9e 58 01 00                                  call   0x441ff0
  0042c752: 8b f0                                           mov    esi,eax
  0042c754: 33 db                                           xor    ebx,ebx
  0042c756: 83 c4 04                                        add    esp,0x4
  0042c759: 3b f3                                           cmp    esi,ebx
  0042c75b: 74 1c                                           je     0x42c779
  0042c75d: 8a 45 ff                                        mov    al,BYTE PTR [ebp-0x1]
  0042c760: 6a 0c                                           push   0xc
  0042c762: 88 06                                           mov    BYTE PTR [esi],al
  0042c764: e8 87 58 01 00                                  call   0x441ff0
  0042c769: 89 00                                           mov    DWORD PTR [eax],eax
  0042c76b: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042c76e: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042c771: 83 c4 04                                        add    esp,0x4
  0042c774: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042c777: 8b de                                           mov    ebx,esi
  0042c779: 6a 6c                                           push   0x6c
  0042c77b: e8 70 58 01 00                                  call   0x441ff0
  0042c780: 8b f0                                           mov    esi,eax
  0042c782: 83 c4 04                                        add    esp,0x4
  0042c785: 85 f6                                           test   esi,esi
  0042c787: 74 2b                                           je     0x42c7b4
  0042c789: 6a 07                                           push   0x7
  0042c78b: 8b ce                                           mov    ecx,esi
  0042c78d: e8 3e fb ff ff                                  call   0x42c2d0
  0042c792: 33 c0                                           xor    eax,eax
  0042c794: c7 06 f8 e8 4d 00                               mov    DWORD PTR [esi],0x4de8f8
  0042c79a: 89 46 68                                        mov    DWORD PTR [esi+0x68],eax
  0042c79d: 89 46 64                                        mov    DWORD PTR [esi+0x64],eax
  0042c7a0: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  0042c7a3: 89 46 5c                                        mov    DWORD PTR [esi+0x5c],eax
  0042c7a6: 89 46 58                                        mov    DWORD PTR [esi+0x58],eax
  0042c7a9: 89 46 54                                        mov    DWORD PTR [esi+0x54],eax
  0042c7ac: 89 46 50                                        mov    DWORD PTR [esi+0x50],eax
  0042c7af: 89 46 4c                                        mov    DWORD PTR [esi+0x4c],eax
  0042c7b2: eb 02                                           jmp    0x42c7b6
  0042c7b4: 33 f6                                           xor    esi,esi
  0042c7b6: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0042c7b9: 89 4e 04                                        mov    DWORD PTR [esi+0x4],ecx
  0042c7bc: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0042c7bf: 89 56 08                                        mov    DWORD PTR [esi+0x8],edx
  0042c7c2: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c7c7: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c7c9: 51                                              push   ecx
  0042c7ca: 6a 00                                           push   0x0
  0042c7cc: 8d 57 0c                                        lea    edx,[edi+0xc]
  0042c7cf: 52                                              push   edx
  0042c7d0: 8d 4e 0c                                        lea    ecx,[esi+0xc]
  0042c7d3: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c7d9: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c7de: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c7e0: 51                                              push   ecx
  0042c7e1: 6a 00                                           push   0x0
  0042c7e3: 8d 57 1c                                        lea    edx,[edi+0x1c]
  0042c7e6: 52                                              push   edx
  0042c7e7: 8d 4e 1c                                        lea    ecx,[esi+0x1c]
  0042c7ea: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c7f0: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  0042c7f5: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042c7f7: 51                                              push   ecx
  0042c7f8: 6a 00                                           push   0x0
  0042c7fa: 8d 57 2c                                        lea    edx,[edi+0x2c]
  0042c7fd: 52                                              push   edx
  0042c7fe: 8d 4e 2c                                        lea    ecx,[esi+0x2c]
  0042c801: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c807: 8b 47 3c                                        mov    eax,DWORD PTR [edi+0x3c]
  0042c80a: 89 46 3c                                        mov    DWORD PTR [esi+0x3c],eax
  0042c80d: 8b 4f 40                                        mov    ecx,DWORD PTR [edi+0x40]
  0042c810: 89 4e 40                                        mov    DWORD PTR [esi+0x40],ecx
  0042c813: 8a 57 44                                        mov    dl,BYTE PTR [edi+0x44]
  0042c816: 88 56 44                                        mov    BYTE PTR [esi+0x44],dl
  0042c819: 8b 47 48                                        mov    eax,DWORD PTR [edi+0x48]
  0042c81c: 89 46 48                                        mov    DWORD PTR [esi+0x48],eax
  0042c81f: 8b 4f 4c                                        mov    ecx,DWORD PTR [edi+0x4c]
  0042c822: 89 4e 4c                                        mov    DWORD PTR [esi+0x4c],ecx
  0042c825: 8b 57 50                                        mov    edx,DWORD PTR [edi+0x50]
  0042c828: 89 56 50                                        mov    DWORD PTR [esi+0x50],edx
  0042c82b: 8b 47 54                                        mov    eax,DWORD PTR [edi+0x54]
  0042c82e: 89 46 54                                        mov    DWORD PTR [esi+0x54],eax
  0042c831: 8b 4f 58                                        mov    ecx,DWORD PTR [edi+0x58]
  0042c834: 89 4e 58                                        mov    DWORD PTR [esi+0x58],ecx
  0042c837: 8b 57 5c                                        mov    edx,DWORD PTR [edi+0x5c]
  0042c83a: 89 56 5c                                        mov    DWORD PTR [esi+0x5c],edx
  0042c83d: 8b 47 60                                        mov    eax,DWORD PTR [edi+0x60]
  0042c840: 89 46 60                                        mov    DWORD PTR [esi+0x60],eax
  0042c843: 8b 4f 64                                        mov    ecx,DWORD PTR [edi+0x64]
  0042c846: 89 4e 64                                        mov    DWORD PTR [esi+0x64],ecx
  0042c849: 8b 57 68                                        mov    edx,DWORD PTR [edi+0x68]
  0042c84c: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  0042c84f: 89 56 68                                        mov    DWORD PTR [esi+0x68],edx
  0042c852: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  0042c855: 51                                              push   ecx
  0042c856: 50                                              push   eax
  0042c857: 8b cb                                           mov    ecx,ebx
  0042c859: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  0042c85c: e8 cf 12 00 00                                  call   0x42db30
  0042c861: 5f                                              pop    edi
  0042c862: 5e                                              pop    esi
  0042c863: 8b c3                                           mov    eax,ebx
  0042c865: 5b                                              pop    ebx
  0042c866: 8b e5                                           mov    esp,ebp
  0042c868: 5d                                              pop    ebp
  0042c869: c2 04 00                                        ret    0x4
  0042c880: 55                                              push   ebp
  0042c881: 8b ec                                           mov    ebp,esp
  0042c883: 6a ff                                           push   0xffffffff
  0042c885: 68 77 4e 4d 00                                  push   0x4d4e77
  0042c88a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042c890: 50                                              push   eax
  0042c891: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042c898: 83 ec 08                                        sub    esp,0x8
  0042c89b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0042c89e: 53                                              push   ebx
  0042c89f: 56                                              push   esi
  0042c8a0: 57                                              push   edi
  0042c8a1: 8b f9                                           mov    edi,ecx
  0042c8a3: 6a 0c                                           push   0xc
  0042c8a5: 89 7d ec                                        mov    DWORD PTR [ebp-0x14],edi
  0042c8a8: c6 00 01                                        mov    BYTE PTR [eax],0x1
  0042c8ab: e8 40 57 01 00                                  call   0x441ff0
  0042c8b0: 8b f0                                           mov    esi,eax
  0042c8b2: 33 db                                           xor    ebx,ebx
  0042c8b4: 83 c4 04                                        add    esp,0x4
  0042c8b7: 3b f3                                           cmp    esi,ebx
  0042c8b9: 74 1f                                           je     0x42c8da
  0042c8bb: 8a 4d 0b                                        mov    cl,BYTE PTR [ebp+0xb]
  0042c8be: 6a 0c                                           push   0xc
  0042c8c0: 88 0e                                           mov    BYTE PTR [esi],cl
  0042c8c2: e8 29 57 01 00                                  call   0x441ff0
  0042c8c7: 89 00                                           mov    DWORD PTR [eax],eax
  0042c8c9: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  0042c8cc: 83 c4 04                                        add    esp,0x4
  0042c8cf: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  0042c8d2: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0042c8d5: 89 75 08                                        mov    DWORD PTR [ebp+0x8],esi
  0042c8d8: eb 03                                           jmp    0x42c8dd
  0042c8da: 89 5d 08                                        mov    DWORD PTR [ebp+0x8],ebx
  0042c8dd: 6a 7c                                           push   0x7c
  0042c8df: e8 0c 57 01 00                                  call   0x441ff0
  0042c8e4: 8b f0                                           mov    esi,eax
  0042c8e6: 83 c4 04                                        add    esp,0x4
  0042c8e9: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0042c8ec: 3b f3                                           cmp    esi,ebx
  0042c8ee: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0042c8f1: 74 53                                           je     0x42c946
  0042c8f3: 6a 05                                           push   0x5
  0042c8f5: 8b ce                                           mov    ecx,esi
  0042c8f7: e8 d4 f9 ff ff                                  call   0x42c2d0
  0042c8fc: 8d 4e 4c                                        lea    ecx,[esi+0x4c]
  0042c8ff: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0042c903: e8 d8 10 00 00                                  call   0x42d9e0
  0042c908: c7 06 c0 ea 4d 00                               mov    DWORD PTR [esi],0x4deac0
  0042c90e: c6 46 44 01                                     mov    BYTE PTR [esi+0x44],0x1
  0042c912: 8a 55 0b                                        mov    dl,BYTE PTR [ebp+0xb]
  0042c915: 8d 4e 58                                        lea    ecx,[esi+0x58]
  0042c918: 53                                              push   ebx
  0042c919: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0042c91d: 88 11                                           mov    BYTE PTR [ecx],dl
  0042c91f: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042c925: 8d 4e 6c                                        lea    ecx,[esi+0x6c]
  0042c928: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0042c92c: 89 5e 68                                        mov    DWORD PTR [esi+0x68],ebx
  0042c92f: e8 cc 11 00 00                                  call   0x42db00
  0042c934: 89 5e 78                                        mov    DWORD PTR [esi+0x78],ebx
  0042c937: c7 06 58 ea 4d 00                               mov    DWORD PTR [esi],0x4dea58
  0042c93d: c7 46 04 06 00 00 00                            mov    DWORD PTR [esi+0x4],0x6
  0042c944: 8b de                                           mov    ebx,esi
  0042c946: 57                                              push   edi
  0042c947: 8b cb                                           mov    ecx,ebx
  0042c949: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0042c950: e8 0b 01 00 00                                  call   0x42ca60
  0042c955: 8d 47 4c                                        lea    eax,[edi+0x4c]
  0042c958: 50                                              push   eax
  0042c959: 8d 4b 4c                                        lea    ecx,[ebx+0x4c]
  0042c95c: e8 0f 11 00 00                                  call   0x42da70
  0042c961: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  0042c967: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042c969: 52                                              push   edx
  0042c96a: 6a 00                                           push   0x0
  0042c96c: 8d 47 58                                        lea    eax,[edi+0x58]
  0042c96f: 50                                              push   eax
  0042c970: 8d 4b 58                                        lea    ecx,[ebx+0x58]
  0042c973: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c979: 8b 4f 68                                        mov    ecx,DWORD PTR [edi+0x68]
  0042c97c: 89 4b 68                                        mov    DWORD PTR [ebx+0x68],ecx
  0042c97f: 8d 4f 6c                                        lea    ecx,[edi+0x6c]
  0042c982: 8d 73 6c                                        lea    esi,[ebx+0x6c]
  0042c985: 3b f1                                           cmp    esi,ecx
  0042c987: 74 17                                           je     0x42c9a0
  0042c989: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042c98c: 50                                              push   eax
  0042c98d: 8d 55 f0                                        lea    edx,[ebp-0x10]
  0042c990: 52                                              push   edx
  0042c991: e8 9a 12 00 00                                  call   0x42dc30
  0042c996: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042c998: 50                                              push   eax
  0042c999: 8b ce                                           mov    ecx,esi
  0042c99b: e8 90 14 00 00                                  call   0x42de30
  0042c9a0: 8b 4f 78                                        mov    ecx,DWORD PTR [edi+0x78]
  0042c9a3: 89 4b 78                                        mov    DWORD PTR [ebx+0x78],ecx
  0042c9a6: 83 c9 ff                                        or     ecx,0xffffffff
  0042c9a9: 33 c0                                           xor    eax,eax
  0042c9ab: bf 64 2a 50 00                                  mov    edi,0x502a64
  0042c9b0: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0042c9b2: f7 d1                                           not    ecx
  0042c9b4: 49                                              dec    ecx
  0042c9b5: 8b f9                                           mov    edi,ecx
  0042c9b7: 8d 73 1c                                        lea    esi,[ebx+0x1c]
  0042c9ba: 68 64 2a 50 00                                  push   0x502a64
  0042c9bf: 8b ce                                           mov    ecx,esi
  0042c9c1: 89 7d f0                                        mov    DWORD PTR [ebp-0x10],edi
  0042c9c4: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  0042c9ca: 84 c0                                           test   al,al
  0042c9cc: 74 17                                           je     0x42c9e5
  0042c9ce: 57                                              push   edi
  0042c9cf: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  0042c9d2: ba 64 2a 50 00                                  mov    edx,0x502a64
  0042c9d7: 2b d7                                           sub    edx,edi
  0042c9d9: 52                                              push   edx
  0042c9da: 56                                              push   esi
  0042c9db: 8b ce                                           mov    ecx,esi
  0042c9dd: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042c9e3: eb 36                                           jmp    0x42ca1b
  0042c9e5: 6a 01                                           push   0x1
  0042c9e7: 57                                              push   edi
  0042c9e8: 8b ce                                           mov    ecx,esi
  0042c9ea: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042c9f0: 84 c0                                           test   al,al
  0042c9f2: 74 27                                           je     0x42ca1b
  0042c9f4: 8b cf                                           mov    ecx,edi
  0042c9f6: 8b 7b 20                                        mov    edi,DWORD PTR [ebx+0x20]
  0042c9f9: 8b d1                                           mov    edx,ecx
  0042c9fb: c1 e9 02                                        shr    ecx,0x2
  0042c9fe: 8d 43 1c                                        lea    eax,[ebx+0x1c]
  0042ca01: be 64 2a 50 00                                  mov    esi,0x502a64
  0042ca06: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042ca08: 8b ca                                           mov    ecx,edx
  0042ca0a: 83 e1 03                                        and    ecx,0x3
  0042ca0d: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042ca0f: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0042ca12: 51                                              push   ecx
  0042ca13: 8b c8                                           mov    ecx,eax
  0042ca15: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042ca1b: 8b 15 ec e4 4d 00                               mov    edx,DWORD PTR ds:0x4de4ec
  0042ca21: 8b 02                                           mov    eax,DWORD PTR [edx]
  0042ca23: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0042ca26: 50                                              push   eax
  0042ca27: 83 c1 1c                                        add    ecx,0x1c
  0042ca2a: 6a 00                                           push   0x0
  0042ca2c: 51                                              push   ecx
  0042ca2d: 8d 4b 2c                                        lea    ecx,[ebx+0x2c]
  0042ca30: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042ca36: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0042ca39: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042ca3c: 8d 55 ec                                        lea    edx,[ebp-0x14]
  0042ca3f: 52                                              push   edx
  0042ca40: 50                                              push   eax
  0042ca41: 8b ce                                           mov    ecx,esi
  0042ca43: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0042ca46: e8 e5 10 00 00                                  call   0x42db30
  0042ca4b: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042ca4e: 5f                                              pop    edi
  0042ca4f: 8b c6                                           mov    eax,esi
  0042ca51: 5e                                              pop    esi
  0042ca52: 5b                                              pop    ebx
  0042ca53: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042ca5a: 8b e5                                           mov    esp,ebp
  0042ca5c: 5d                                              pop    ebp
  0042ca5d: c2 04 00                                        ret    0x4
  0042ccf0: 33 c0                                           xor    eax,eax
  0042ccf2: c2 04 00                                        ret    0x4
  0042cdc0: 55                                              push   ebp
  0042cdc1: 8b ec                                           mov    ebp,esp
  0042cdc3: 8b d1                                           mov    edx,ecx
  0042cdc5: 8b 42 50                                        mov    eax,DWORD PTR [edx+0x50]
  0042cdc8: 85 c0                                           test   eax,eax
  0042cdca: 8d 4a 4c                                        lea    ecx,[edx+0x4c]
  0042cdcd: 74 02                                           je     0x42cdd1
  0042cdcf: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042cdd1: 8b 52 50                                        mov    edx,DWORD PTR [edx+0x50]
  0042cdd4: 3b c2                                           cmp    eax,edx
  0042cdd6: 56                                              push   esi
  0042cdd7: 74 0e                                           je     0x42cde7
  0042cdd9: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  0042cddc: 39 70 08                                        cmp    DWORD PTR [eax+0x8],esi
  0042cddf: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042cde1: 74 07                                           je     0x42cdea
  0042cde3: 3b c2                                           cmp    eax,edx
  0042cde5: 75 f5                                           jne    0x42cddc
  0042cde7: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042cdea: 8d 55 08                                        lea    edx,[ebp+0x8]
  0042cded: 52                                              push   edx
  0042cdee: 50                                              push   eax
  0042cdef: e8 3c 0d 00 00                                  call   0x42db30
  0042cdf4: 5e                                              pop    esi
  0042cdf5: 5d                                              pop    ebp
  0042cdf6: c2 08 00                                        ret    0x8
  0042ce00: 55                                              push   ebp
  0042ce01: 8b ec                                           mov    ebp,esp
  0042ce03: 8b 41 50                                        mov    eax,DWORD PTR [ecx+0x50]
  0042ce06: 85 c0                                           test   eax,eax
  0042ce08: 56                                              push   esi
  0042ce09: 57                                              push   edi
  0042ce0a: 8d 79 4c                                        lea    edi,[ecx+0x4c]
  0042ce0d: 74 02                                           je     0x42ce11
  0042ce0f: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042ce11: 8b 49 50                                        mov    ecx,DWORD PTR [ecx+0x50]
  0042ce14: 3b c1                                           cmp    eax,ecx
  0042ce16: 74 0e                                           je     0x42ce26
  0042ce18: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0042ce1b: 39 50 08                                        cmp    DWORD PTR [eax+0x8],edx
  0042ce1e: 74 0e                                           je     0x42ce2e
  0042ce20: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042ce22: 3b c1                                           cmp    eax,ecx
  0042ce24: 75 f5                                           jne    0x42ce1b
  0042ce26: 5f                                              pop    edi
  0042ce27: 32 c0                                           xor    al,al
  0042ce29: 5e                                              pop    esi
  0042ce2a: 5d                                              pop    ebp
  0042ce2b: c2 04 00                                        ret    0x4
  0042ce2e: 8b 4f 04                                        mov    ecx,DWORD PTR [edi+0x4]
  0042ce31: 85 c9                                           test   ecx,ecx
  0042ce33: 74 02                                           je     0x42ce37
  0042ce35: 8b 09                                           mov    ecx,DWORD PTR [ecx]
  0042ce37: 3b c1                                           cmp    eax,ecx
  0042ce39: 74 eb                                           je     0x42ce26
  0042ce3b: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042ce3e: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042ce41: 8b 30                                           mov    esi,DWORD PTR [eax]
  0042ce43: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  0042ce46: 89 32                                           mov    DWORD PTR [edx],esi
  0042ce48: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042ce4a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042ce4d: 50                                              push   eax
  0042ce4e: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042ce51: e8 0a 52 01 00                                  call   0x442060
  0042ce56: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0042ce59: 83 c4 04                                        add    esp,0x4
  0042ce5c: 4a                                              dec    edx
  0042ce5d: 8d 45 08                                        lea    eax,[ebp+0x8]
  0042ce60: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0042ce63: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  0042ce66: 50                                              push   eax
  0042ce67: 56                                              push   esi
  0042ce68: 8b cf                                           mov    ecx,edi
  0042ce6a: e8 c1 0c 00 00                                  call   0x42db30
  0042ce6f: 5f                                              pop    edi
  0042ce70: b0 01                                           mov    al,0x1
  0042ce72: 5e                                              pop    esi
  0042ce73: 5d                                              pop    ebp
  0042ce74: c2 04 00                                        ret    0x4
  0042ce80: 55                                              push   ebp
  0042ce81: 8b ec                                           mov    ebp,esp
  0042ce83: 8b 41 50                                        mov    eax,DWORD PTR [ecx+0x50]
  0042ce86: 85 c0                                           test   eax,eax
  0042ce88: 56                                              push   esi
  0042ce89: 57                                              push   edi
  0042ce8a: 8d 79 4c                                        lea    edi,[ecx+0x4c]
  0042ce8d: 74 02                                           je     0x42ce91
  0042ce8f: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042ce91: 8b 49 50                                        mov    ecx,DWORD PTR [ecx+0x50]
  0042ce94: 3b c1                                           cmp    eax,ecx
  0042ce96: 74 0e                                           je     0x42cea6
  0042ce98: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0042ce9b: 39 50 08                                        cmp    DWORD PTR [eax+0x8],edx
  0042ce9e: 74 0e                                           je     0x42ceae
  0042cea0: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042cea2: 3b c1                                           cmp    eax,ecx
  0042cea4: 75 f5                                           jne    0x42ce9b
  0042cea6: 5f                                              pop    edi
  0042cea7: 32 c0                                           xor    al,al
  0042cea9: 5e                                              pop    esi
  0042ceaa: 5d                                              pop    ebp
  0042ceab: c2 04 00                                        ret    0x4
  0042ceae: 8b 30                                           mov    esi,DWORD PTR [eax]
  0042ceb0: 3b f1                                           cmp    esi,ecx
  0042ceb2: 74 f2                                           je     0x42cea6
  0042ceb4: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042ceb7: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042ceba: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  0042cebd: 89 32                                           mov    DWORD PTR [edx],esi
  0042cebf: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042cec1: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042cec4: 50                                              push   eax
  0042cec5: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042cec8: e8 93 51 01 00                                  call   0x442060
  0042cecd: 8b 57 08                                        mov    edx,DWORD PTR [edi+0x8]
  0042ced0: 83 c4 04                                        add    esp,0x4
  0042ced3: 4a                                              dec    edx
  0042ced4: 8d 45 08                                        lea    eax,[ebp+0x8]
  0042ced7: 89 57 08                                        mov    DWORD PTR [edi+0x8],edx
  0042ceda: 8b 36                                           mov    esi,DWORD PTR [esi]
  0042cedc: 50                                              push   eax
  0042cedd: 56                                              push   esi
  0042cede: 8b cf                                           mov    ecx,edi
  0042cee0: e8 4b 0c 00 00                                  call   0x42db30
  0042cee5: 5f                                              pop    edi
  0042cee6: b0 01                                           mov    al,0x1
  0042cee8: 5e                                              pop    esi
  0042cee9: 5d                                              pop    ebp
  0042ceea: c2 04 00                                        ret    0x4
  0042cef0: 55                                              push   ebp
  0042cef1: 8b ec                                           mov    ebp,esp
  0042cef3: 56                                              push   esi
  0042cef4: 57                                              push   edi
  0042cef5: 8b f9                                           mov    edi,ecx
  0042cef7: 8b 47 50                                        mov    eax,DWORD PTR [edi+0x50]
  0042cefa: 85 c0                                           test   eax,eax
  0042cefc: 75 04                                           jne    0x42cf02
  0042cefe: 33 f6                                           xor    esi,esi
  0042cf00: eb 02                                           jmp    0x42cf04
  0042cf02: 8b 30                                           mov    esi,DWORD PTR [eax]
  0042cf04: 8b 47 50                                        mov    eax,DWORD PTR [edi+0x50]
  0042cf07: 3b f0                                           cmp    esi,eax
  0042cf09: 74 40                                           je     0x42cf4b
  0042cf0b: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0042cf0e: 39 4e 08                                        cmp    DWORD PTR [esi+0x8],ecx
  0042cf11: 74 0c                                           je     0x42cf1f
  0042cf13: 8b 36                                           mov    esi,DWORD PTR [esi]
  0042cf15: 3b f0                                           cmp    esi,eax
  0042cf17: 75 f5                                           jne    0x42cf0e
  0042cf19: 5f                                              pop    edi
  0042cf1a: 5e                                              pop    esi
  0042cf1b: 5d                                              pop    ebp
  0042cf1c: c2 04 00                                        ret    0x4
  0042cf1f: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042cf22: 85 c9                                           test   ecx,ecx
  0042cf24: 74 06                                           je     0x42cf2c
  0042cf26: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042cf28: 6a 01                                           push   0x1
  0042cf2a: ff 10                                           call   DWORD PTR [eax]
  0042cf2c: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0042cf2f: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042cf31: 89 11                                           mov    DWORD PTR [ecx],edx
  0042cf33: 8b 06                                           mov    eax,DWORD PTR [esi]
  0042cf35: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0042cf38: 56                                              push   esi
  0042cf39: 89 48 04                                        mov    DWORD PTR [eax+0x4],ecx
  0042cf3c: e8 1f 51 01 00                                  call   0x442060
  0042cf41: 8b 47 54                                        mov    eax,DWORD PTR [edi+0x54]
  0042cf44: 83 c4 04                                        add    esp,0x4
  0042cf47: 48                                              dec    eax
  0042cf48: 89 47 54                                        mov    DWORD PTR [edi+0x54],eax
  0042cf4b: 5f                                              pop    edi
  0042cf4c: 5e                                              pop    esi
  0042cf4d: 5d                                              pop    ebp
  0042cf4e: c2 04 00                                        ret    0x4
  0042cf60: c2 08 00                                        ret    0x8
  0042cf70: c2 08 00                                        ret    0x8
  0042cf80: c2 08 00                                        ret    0x8
  0042cf90: c2 08 00                                        ret    0x8
  0042cfa0: c2 08 00                                        ret    0x8
  0042d290: c2 08 00                                        ret    0x8
  0042d2b0: 55                                              push   ebp
  0042d2b1: 8b ec                                           mov    ebp,esp
  0042d2b3: 56                                              push   esi
  0042d2b4: 8b f1                                           mov    esi,ecx
  0042d2b6: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0042d2b9: 57                                              push   edi
  0042d2ba: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d2bd: 50                                              push   eax
  0042d2be: 8b cf                                           mov    ecx,edi
  0042d2c0: e8 0b c6 06 00                                  call   0x4998d0
  0042d2c5: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042d2c8: 51                                              push   ecx
  0042d2c9: 8b cf                                           mov    ecx,edi
  0042d2cb: e8 00 c6 06 00                                  call   0x4998d0
  0042d2d0: 8b 16                                           mov    edx,DWORD PTR [esi]
  0042d2d2: 57                                              push   edi
  0042d2d3: 8b ce                                           mov    ecx,esi
  0042d2d5: ff 52 54                                        call   DWORD PTR [edx+0x54]
  0042d2d8: 5f                                              pop    edi
  0042d2d9: 5e                                              pop    esi
  0042d2da: 5d                                              pop    ebp
  0042d2db: c2 04 00                                        ret    0x4
  0042d2e0: 55                                              push   ebp
  0042d2e1: 8b ec                                           mov    ebp,esp
  0042d2e3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0042d2e6: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042d2e8: 52                                              push   edx
  0042d2e9: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0042d2ec: 52                                              push   edx
  0042d2ed: ff 50 50                                        call   DWORD PTR [eax+0x50]
  0042d2f0: 5d                                              pop    ebp
  0042d2f1: c2 08 00                                        ret    0x8
  0042d300: c2 04 00                                        ret    0x4
  0042d310: c2 08 00                                        ret    0x8
  0042d320: 55                                              push   ebp
  0042d321: 8b ec                                           mov    ebp,esp
  0042d323: 56                                              push   esi
  0042d324: 8b f1                                           mov    esi,ecx
  0042d326: 8b 46 54                                        mov    eax,DWORD PTR [esi+0x54]
  0042d329: 57                                              push   edi
  0042d32a: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d32d: 50                                              push   eax
  0042d32e: 8b cf                                           mov    ecx,edi
  0042d330: e8 9b c5 06 00                                  call   0x4998d0
  0042d335: 8b 4e 58                                        mov    ecx,DWORD PTR [esi+0x58]
  0042d338: 51                                              push   ecx
  0042d339: 8b cf                                           mov    ecx,edi
  0042d33b: e8 90 c5 06 00                                  call   0x4998d0
  0042d340: 8b 56 5c                                        mov    edx,DWORD PTR [esi+0x5c]
  0042d343: 52                                              push   edx
  0042d344: 8b cf                                           mov    ecx,edi
  0042d346: e8 85 c5 06 00                                  call   0x4998d0
  0042d34b: 8b 46 60                                        mov    eax,DWORD PTR [esi+0x60]
  0042d34e: 50                                              push   eax
  0042d34f: 8b cf                                           mov    ecx,edi
  0042d351: e8 7a c5 06 00                                  call   0x4998d0
  0042d356: 8b 4e 64                                        mov    ecx,DWORD PTR [esi+0x64]
  0042d359: 51                                              push   ecx
  0042d35a: 8b cf                                           mov    ecx,edi
  0042d35c: e8 6f c5 06 00                                  call   0x4998d0
  0042d361: 8b 56 68                                        mov    edx,DWORD PTR [esi+0x68]
  0042d364: 52                                              push   edx
  0042d365: 8b cf                                           mov    ecx,edi
  0042d367: e8 64 c5 06 00                                  call   0x4998d0
  0042d36c: 8b 46 6c                                        mov    eax,DWORD PTR [esi+0x6c]
  0042d36f: 50                                              push   eax
  0042d370: 8b cf                                           mov    ecx,edi
  0042d372: e8 59 c5 06 00                                  call   0x4998d0
  0042d377: 5f                                              pop    edi
  0042d378: 5e                                              pop    esi
  0042d379: 5d                                              pop    ebp
  0042d37a: c2 04 00                                        ret    0x4
  0042d380: 55                                              push   ebp
  0042d381: 8b ec                                           mov    ebp,esp
  0042d383: 56                                              push   esi
  0042d384: 8b f1                                           mov    esi,ecx
  0042d386: 57                                              push   edi
  0042d387: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d38a: 8d 46 54                                        lea    eax,[esi+0x54]
  0042d38d: 50                                              push   eax
  0042d38e: 8b cf                                           mov    ecx,edi
  0042d390: e8 eb c7 06 00                                  call   0x499b80
  0042d395: 8d 4e 58                                        lea    ecx,[esi+0x58]
  0042d398: 51                                              push   ecx
  0042d399: 8b cf                                           mov    ecx,edi
  0042d39b: e8 e0 c7 06 00                                  call   0x499b80
  0042d3a0: 8d 56 5c                                        lea    edx,[esi+0x5c]
  0042d3a3: 52                                              push   edx
  0042d3a4: 8b cf                                           mov    ecx,edi
  0042d3a6: e8 d5 c7 06 00                                  call   0x499b80
  0042d3ab: 8d 46 60                                        lea    eax,[esi+0x60]
  0042d3ae: 50                                              push   eax
  0042d3af: 8b cf                                           mov    ecx,edi
  0042d3b1: e8 ca c7 06 00                                  call   0x499b80
  0042d3b6: 8d 4e 64                                        lea    ecx,[esi+0x64]
  0042d3b9: 51                                              push   ecx
  0042d3ba: 8b cf                                           mov    ecx,edi
  0042d3bc: e8 bf c7 06 00                                  call   0x499b80
  0042d3c1: 8d 56 68                                        lea    edx,[esi+0x68]
  0042d3c4: 52                                              push   edx
  0042d3c5: 8b cf                                           mov    ecx,edi
  0042d3c7: e8 b4 c7 06 00                                  call   0x499b80
  0042d3cc: 83 c6 6c                                        add    esi,0x6c
  0042d3cf: 56                                              push   esi
  0042d3d0: 8b cf                                           mov    ecx,edi
  0042d3d2: e8 a9 c7 06 00                                  call   0x499b80
  0042d3d7: 5f                                              pop    edi
  0042d3d8: 5e                                              pop    esi
  0042d3d9: 5d                                              pop    ebp
  0042d3da: c2 08 00                                        ret    0x8
  0042d3e0: 55                                              push   ebp
  0042d3e1: 8b ec                                           mov    ebp,esp
  0042d3e3: 56                                              push   esi
  0042d3e4: 8b f1                                           mov    esi,ecx
  0042d3e6: 8b 46 4c                                        mov    eax,DWORD PTR [esi+0x4c]
  0042d3e9: 57                                              push   edi
  0042d3ea: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d3ed: 50                                              push   eax
  0042d3ee: 8b cf                                           mov    ecx,edi
  0042d3f0: e8 db c4 06 00                                  call   0x4998d0
  0042d3f5: 8b 4e 50                                        mov    ecx,DWORD PTR [esi+0x50]
  0042d3f8: 51                                              push   ecx
  0042d3f9: 8b cf                                           mov    ecx,edi
  0042d3fb: e8 d0 c4 06 00                                  call   0x4998d0
  0042d400: 8b 56 54                                        mov    edx,DWORD PTR [esi+0x54]
  0042d403: 52                                              push   edx
  0042d404: 8b cf                                           mov    ecx,edi
  0042d406: e8 c5 c4 06 00                                  call   0x4998d0
  0042d40b: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  0042d40e: 50                                              push   eax
  0042d40f: 8b cf                                           mov    ecx,edi
  0042d411: e8 ba c4 06 00                                  call   0x4998d0
  0042d416: 8b 4e 5c                                        mov    ecx,DWORD PTR [esi+0x5c]
  0042d419: 51                                              push   ecx
  0042d41a: 8b cf                                           mov    ecx,edi
  0042d41c: e8 af c4 06 00                                  call   0x4998d0
  0042d421: 83 c6 60                                        add    esi,0x60
  0042d424: 56                                              push   esi
  0042d425: 8b cf                                           mov    ecx,edi
  0042d427: e8 e4 c4 06 00                                  call   0x499910
  0042d42c: 5f                                              pop    edi
  0042d42d: 5e                                              pop    esi
  0042d42e: 5d                                              pop    ebp
  0042d42f: c2 04 00                                        ret    0x4
  0042d440: 55                                              push   ebp
  0042d441: 8b ec                                           mov    ebp,esp
  0042d443: 56                                              push   esi
  0042d444: 8b f1                                           mov    esi,ecx
  0042d446: 57                                              push   edi
  0042d447: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d44a: 8d 46 4c                                        lea    eax,[esi+0x4c]
  0042d44d: 50                                              push   eax
  0042d44e: 8b cf                                           mov    ecx,edi
  0042d450: e8 2b c7 06 00                                  call   0x499b80
  0042d455: 8d 4e 50                                        lea    ecx,[esi+0x50]
  0042d458: 51                                              push   ecx
  0042d459: 8b cf                                           mov    ecx,edi
  0042d45b: e8 20 c7 06 00                                  call   0x499b80
  0042d460: 8d 56 54                                        lea    edx,[esi+0x54]
  0042d463: 52                                              push   edx
  0042d464: 8b cf                                           mov    ecx,edi
  0042d466: e8 15 c7 06 00                                  call   0x499b80
  0042d46b: 8d 46 58                                        lea    eax,[esi+0x58]
  0042d46e: 50                                              push   eax
  0042d46f: 8b cf                                           mov    ecx,edi
  0042d471: e8 0a c7 06 00                                  call   0x499b80
  0042d476: 8d 4e 5c                                        lea    ecx,[esi+0x5c]
  0042d479: 51                                              push   ecx
  0042d47a: 8b cf                                           mov    ecx,edi
  0042d47c: e8 ff c6 06 00                                  call   0x499b80
  0042d481: 83 c6 60                                        add    esi,0x60
  0042d484: 56                                              push   esi
  0042d485: 8b cf                                           mov    ecx,edi
  0042d487: e8 34 c7 06 00                                  call   0x499bc0
  0042d48c: 5f                                              pop    edi
  0042d48d: 5e                                              pop    esi
  0042d48e: 5d                                              pop    ebp
  0042d48f: c2 08 00                                        ret    0x8
  0042d4a0: 55                                              push   ebp
  0042d4a1: 8b ec                                           mov    ebp,esp
  0042d4a3: 56                                              push   esi
  0042d4a4: 8b f1                                           mov    esi,ecx
  0042d4a6: 8b 46 4c                                        mov    eax,DWORD PTR [esi+0x4c]
  0042d4a9: 57                                              push   edi
  0042d4aa: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d4ad: 50                                              push   eax
  0042d4ae: 8b cf                                           mov    ecx,edi
  0042d4b0: e8 1b c4 06 00                                  call   0x4998d0
  0042d4b5: 8b 4e 50                                        mov    ecx,DWORD PTR [esi+0x50]
  0042d4b8: 51                                              push   ecx
  0042d4b9: 8b cf                                           mov    ecx,edi
  0042d4bb: e8 10 c4 06 00                                  call   0x4998d0
  0042d4c0: 8b 56 54                                        mov    edx,DWORD PTR [esi+0x54]
  0042d4c3: 52                                              push   edx
  0042d4c4: 8b cf                                           mov    ecx,edi
  0042d4c6: e8 05 c4 06 00                                  call   0x4998d0
  0042d4cb: 8b 46 58                                        mov    eax,DWORD PTR [esi+0x58]
  0042d4ce: 50                                              push   eax
  0042d4cf: 8b cf                                           mov    ecx,edi
  0042d4d1: e8 fa c3 06 00                                  call   0x4998d0
  0042d4d6: 8b 4e 5c                                        mov    ecx,DWORD PTR [esi+0x5c]
  0042d4d9: 51                                              push   ecx
  0042d4da: 8b cf                                           mov    ecx,edi
  0042d4dc: e8 ef c3 06 00                                  call   0x4998d0
  0042d4e1: 8b 56 60                                        mov    edx,DWORD PTR [esi+0x60]
  0042d4e4: 52                                              push   edx
  0042d4e5: 8b cf                                           mov    ecx,edi
  0042d4e7: e8 e4 c3 06 00                                  call   0x4998d0
  0042d4ec: 8b 46 64                                        mov    eax,DWORD PTR [esi+0x64]
  0042d4ef: 50                                              push   eax
  0042d4f0: 8b cf                                           mov    ecx,edi
  0042d4f2: e8 d9 c3 06 00                                  call   0x4998d0
  0042d4f7: 8b 4e 68                                        mov    ecx,DWORD PTR [esi+0x68]
  0042d4fa: 51                                              push   ecx
  0042d4fb: 8b cf                                           mov    ecx,edi
  0042d4fd: e8 ce c3 06 00                                  call   0x4998d0
  0042d502: 5f                                              pop    edi
  0042d503: 5e                                              pop    esi
  0042d504: 5d                                              pop    ebp
  0042d505: c2 04 00                                        ret    0x4
  0042d510: 55                                              push   ebp
  0042d511: 8b ec                                           mov    ebp,esp
  0042d513: 56                                              push   esi
  0042d514: 8b f1                                           mov    esi,ecx
  0042d516: 57                                              push   edi
  0042d517: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d51a: 8d 46 4c                                        lea    eax,[esi+0x4c]
  0042d51d: 50                                              push   eax
  0042d51e: 8b cf                                           mov    ecx,edi
  0042d520: e8 5b c6 06 00                                  call   0x499b80
  0042d525: 8d 4e 50                                        lea    ecx,[esi+0x50]
  0042d528: 51                                              push   ecx
  0042d529: 8b cf                                           mov    ecx,edi
  0042d52b: e8 50 c6 06 00                                  call   0x499b80
  0042d530: 8d 56 54                                        lea    edx,[esi+0x54]
  0042d533: 52                                              push   edx
  0042d534: 8b cf                                           mov    ecx,edi
  0042d536: e8 45 c6 06 00                                  call   0x499b80
  0042d53b: 8d 46 58                                        lea    eax,[esi+0x58]
  0042d53e: 50                                              push   eax
  0042d53f: 8b cf                                           mov    ecx,edi
  0042d541: e8 3a c6 06 00                                  call   0x499b80
  0042d546: 8d 4e 5c                                        lea    ecx,[esi+0x5c]
  0042d549: 51                                              push   ecx
  0042d54a: 8b cf                                           mov    ecx,edi
  0042d54c: e8 2f c6 06 00                                  call   0x499b80
  0042d551: 8d 56 60                                        lea    edx,[esi+0x60]
  0042d554: 52                                              push   edx
  0042d555: 8b cf                                           mov    ecx,edi
  0042d557: e8 24 c6 06 00                                  call   0x499b80
  0042d55c: 8d 46 64                                        lea    eax,[esi+0x64]
  0042d55f: 50                                              push   eax
  0042d560: 8b cf                                           mov    ecx,edi
  0042d562: e8 19 c6 06 00                                  call   0x499b80
  0042d567: 83 c6 68                                        add    esi,0x68
  0042d56a: 56                                              push   esi
  0042d56b: 8b cf                                           mov    ecx,edi
  0042d56d: e8 0e c6 06 00                                  call   0x499b80
  0042d572: 5f                                              pop    edi
  0042d573: 5e                                              pop    esi
  0042d574: 5d                                              pop    ebp
  0042d575: c2 08 00                                        ret    0x8
  0042d580: 55                                              push   ebp
  0042d581: 8b ec                                           mov    ebp,esp
  0042d583: 53                                              push   ebx
  0042d584: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042d587: 56                                              push   esi
  0042d588: 8b f1                                           mov    esi,ecx
  0042d58a: 8b 46 68                                        mov    eax,DWORD PTR [esi+0x68]
  0042d58d: 57                                              push   edi
  0042d58e: 50                                              push   eax
  0042d58f: 8b cb                                           mov    ecx,ebx
  0042d591: e8 3a c3 06 00                                  call   0x4998d0
  0042d596: 8b 4e 78                                        mov    ecx,DWORD PTR [esi+0x78]
  0042d599: 51                                              push   ecx
  0042d59a: 8b cb                                           mov    ecx,ebx
  0042d59c: e8 2f c3 06 00                                  call   0x4998d0
  0042d5a1: 8d 56 58                                        lea    edx,[esi+0x58]
  0042d5a4: 52                                              push   edx
  0042d5a5: 8b cb                                           mov    ecx,ebx
  0042d5a7: e8 64 c3 06 00                                  call   0x499910
  0042d5ac: 8b 46 74                                        mov    eax,DWORD PTR [esi+0x74]
  0042d5af: 50                                              push   eax
  0042d5b0: 8b cb                                           mov    ecx,ebx
  0042d5b2: e8 19 c3 06 00                                  call   0x4998d0
  0042d5b7: 8b 46 70                                        mov    eax,DWORD PTR [esi+0x70]
  0042d5ba: 85 c0                                           test   eax,eax
  0042d5bc: 75 04                                           jne    0x42d5c2
  0042d5be: 33 ff                                           xor    edi,edi
  0042d5c0: eb 02                                           jmp    0x42d5c4
  0042d5c2: 8b 38                                           mov    edi,DWORD PTR [eax]
  0042d5c4: 3b 7e 70                                        cmp    edi,DWORD PTR [esi+0x70]
  0042d5c7: 74 12                                           je     0x42d5db
  0042d5c9: 8d 4f 08                                        lea    ecx,[edi+0x8]
  0042d5cc: 51                                              push   ecx
  0042d5cd: 8b cb                                           mov    ecx,ebx
  0042d5cf: e8 3c c3 06 00                                  call   0x499910
  0042d5d4: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0042d5d6: 3b 7e 70                                        cmp    edi,DWORD PTR [esi+0x70]
  0042d5d9: 75 ee                                           jne    0x42d5c9
  0042d5db: 53                                              push   ebx
  0042d5dc: 8b ce                                           mov    ecx,esi
  0042d5de: e8 9d 02 00 00                                  call   0x42d880
  0042d5e3: 5f                                              pop    edi
  0042d5e4: 5e                                              pop    esi
  0042d5e5: 5b                                              pop    ebx
  0042d5e6: 5d                                              pop    ebp
  0042d5e7: c2 04 00                                        ret    0x4
  0042d5f0: 55                                              push   ebp
  0042d5f1: 8b ec                                           mov    ebp,esp
  0042d5f3: 6a ff                                           push   0xffffffff
  0042d5f5: 68 b9 4e 4d 00                                  push   0x4d4eb9
  0042d5fa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0042d600: 50                                              push   eax
  0042d601: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0042d608: 83 ec 1c                                        sub    esp,0x1c
  0042d60b: 53                                              push   ebx
  0042d60c: 56                                              push   esi
  0042d60d: 8b d9                                           mov    ebx,ecx
  0042d60f: 57                                              push   edi
  0042d610: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d613: 8d 43 68                                        lea    eax,[ebx+0x68]
  0042d616: 50                                              push   eax
  0042d617: 8b cf                                           mov    ecx,edi
  0042d619: e8 62 c5 06 00                                  call   0x499b80
  0042d61e: 8d 43 78                                        lea    eax,[ebx+0x78]
  0042d621: 50                                              push   eax
  0042d622: 8b cf                                           mov    ecx,edi
  0042d624: e8 57 c5 06 00                                  call   0x499b80
  0042d629: 8d 4b 58                                        lea    ecx,[ebx+0x58]
  0042d62c: 51                                              push   ecx
  0042d62d: 8b cf                                           mov    ecx,edi
  0042d62f: e8 8c c5 06 00                                  call   0x499bc0
  0042d634: 8d 55 ec                                        lea    edx,[ebp-0x14]
  0042d637: 52                                              push   edx
  0042d638: 8b cf                                           mov    ecx,edi
  0042d63a: e8 41 c5 06 00                                  call   0x499b80
  0042d63f: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0042d642: 33 f6                                           xor    esi,esi
  0042d644: 3b c6                                           cmp    eax,esi
  0042d646: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0042d649: 74 6f                                           je     0x42d6ba
  0042d64b: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0042d64e: 56                                              push   esi
  0042d64f: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0042d652: 88 45 d8                                        mov    BYTE PTR [ebp-0x28],al
  0042d655: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042d65b: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  0042d65e: 51                                              push   ecx
  0042d65f: 8b cf                                           mov    ecx,edi
  0042d661: 89 75 fc                                        mov    DWORD PTR [ebp-0x4],esi
  0042d664: e8 57 c5 06 00                                  call   0x499bc0
  0042d669: 8b 43 70                                        mov    eax,DWORD PTR [ebx+0x70]
  0042d66c: 8d 4b 6c                                        lea    ecx,[ebx+0x6c]
  0042d66f: 8d 55 d8                                        lea    edx,[ebp-0x28]
  0042d672: 52                                              push   edx
  0042d673: 50                                              push   eax
  0042d674: e8 e7 05 00 00                                  call   0x42dc60
  0042d679: 8b 4d dc                                        mov    ecx,DWORD PTR [ebp-0x24]
  0042d67c: 3b ce                                           cmp    ecx,esi
  0042d67e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0042d685: 74 1c                                           je     0x42d6a3
  0042d687: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  0042d68a: 84 c0                                           test   al,al
  0042d68c: 74 0b                                           je     0x42d699
  0042d68e: 3c ff                                           cmp    al,0xff
  0042d690: 74 07                                           je     0x42d699
  0042d692: fe c8                                           dec    al
  0042d694: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  0042d697: eb 0a                                           jmp    0x42d6a3
  0042d699: 49                                              dec    ecx
  0042d69a: 51                                              push   ecx
  0042d69b: e8 c0 49 01 00                                  call   0x442060
  0042d6a0: 83 c4 04                                        add    esp,0x4
  0042d6a3: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042d6a6: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0042d6a9: 40                                              inc    eax
  0042d6aa: 3b c1                                           cmp    eax,ecx
  0042d6ac: 89 75 dc                                        mov    DWORD PTR [ebp-0x24],esi
  0042d6af: 89 75 e0                                        mov    DWORD PTR [ebp-0x20],esi
  0042d6b2: 89 75 e4                                        mov    DWORD PTR [ebp-0x1c],esi
  0042d6b5: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0042d6b8: 75 91                                           jne    0x42d64b
  0042d6ba: 8b 43 68                                        mov    eax,DWORD PTR [ebx+0x68]
  0042d6bd: 83 f8 01                                        cmp    eax,0x1
  0042d6c0: 75 7c                                           jne    0x42d73e
  0042d6c2: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0042d6c5: 83 ec 10                                        sub    esp,0x10
  0042d6c8: 8b d4                                           mov    edx,esp
  0042d6ca: 83 c9 ff                                        or     ecx,0xffffffff
  0042d6cd: 88 02                                           mov    BYTE PTR [edx],al
  0042d6cf: 33 c0                                           xor    eax,eax
  0042d6d1: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  0042d6d4: 89 72 08                                        mov    DWORD PTR [edx+0x8],esi
  0042d6d7: 89 72 0c                                        mov    DWORD PTR [edx+0xc],esi
  0042d6da: bf 80 2a 50 00                                  mov    edi,0x502a80
  0042d6df: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0042d6e1: f7 d1                                           not    ecx
  0042d6e3: 49                                              dec    ecx
  0042d6e4: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0042d6e7: 51                                              push   ecx
  0042d6e8: 68 80 2a 50 00                                  push   0x502a80
  0042d6ed: 8b ca                                           mov    ecx,edx
  0042d6ef: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0042d6f5: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0042d6f7: 8b cb                                           mov    ecx,ebx
  0042d6f9: ff 52 40                                        call   DWORD PTR [edx+0x40]
  0042d6fc: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0042d6ff: 83 ec 10                                        sub    esp,0x10
  0042d702: 8b d4                                           mov    edx,esp
  0042d704: 83 c9 ff                                        or     ecx,0xffffffff
  0042d707: 88 02                                           mov    BYTE PTR [edx],al
  0042d709: 33 c0                                           xor    eax,eax
  0042d70b: bf 80 2a 50 00                                  mov    edi,0x502a80
  0042d710: 89 72 04                                        mov    DWORD PTR [edx+0x4],esi
  0042d713: 89 72 08                                        mov    DWORD PTR [edx+0x8],esi
  0042d716: 89 72 0c                                        mov    DWORD PTR [edx+0xc],esi
  0042d719: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0042d71b: f7 d1                                           not    ecx
  0042d71d: 49                                              dec    ecx
  0042d71e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0042d721: 51                                              push   ecx
  0042d722: 68 80 2a 50 00                                  push   0x502a80
  0042d727: 8b ca                                           mov    ecx,edx
  0042d729: ff 15 f4 e4 4d 00                               call   DWORD PTR ds:0x4de4f4
  0042d72f: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0042d731: 8b cb                                           mov    ecx,ebx
  0042d733: ff 52 20                                        call   DWORD PTR [edx+0x20]
  0042d736: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0042d739: e9 d6 00 00 00                                  jmp    0x42d814
  0042d73e: 83 f8 02                                        cmp    eax,0x2
  0042d741: 0f 85 c6 00 00 00                               jne    0x42d80d
  0042d747: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0042d74a: 83 ec 10                                        sub    esp,0x10
  0042d74d: 8b f4                                           mov    esi,esp
  0042d74f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0042d752: 6a 00                                           push   0x0
  0042d754: 8b ce                                           mov    ecx,esi
  0042d756: 89 75 f0                                        mov    DWORD PTR [ebp-0x10],esi
  0042d759: 88 06                                           mov    BYTE PTR [esi],al
  0042d75b: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042d761: 83 c9 ff                                        or     ecx,0xffffffff
  0042d764: 33 c0                                           xor    eax,eax
  0042d766: bf 70 2a 50 00                                  mov    edi,0x502a70
  0042d76b: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0042d76d: f7 d1                                           not    ecx
  0042d76f: 49                                              dec    ecx
  0042d770: 8b f9                                           mov    edi,ecx
  0042d772: 68 70 2a 50 00                                  push   0x502a70
  0042d777: 8b ce                                           mov    ecx,esi
  0042d779: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  0042d77c: ff 15 00 e5 4d 00                               call   DWORD PTR ds:0x4de500
  0042d782: 84 c0                                           test   al,al
  0042d784: 74 17                                           je     0x42d79d
  0042d786: 57                                              push   edi
  0042d787: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  0042d78a: b9 70 2a 50 00                                  mov    ecx,0x502a70
  0042d78f: 2b cf                                           sub    ecx,edi
  0042d791: 51                                              push   ecx
  0042d792: 56                                              push   esi
  0042d793: 8b ce                                           mov    ecx,esi
  0042d795: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  0042d79b: eb 36                                           jmp    0x42d7d3
  0042d79d: 6a 01                                           push   0x1
  0042d79f: 57                                              push   edi
  0042d7a0: 8b ce                                           mov    ecx,esi
  0042d7a2: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  0042d7a8: 84 c0                                           test   al,al
  0042d7aa: 74 27                                           je     0x42d7d3
  0042d7ac: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0042d7af: 8b cf                                           mov    ecx,edi
  0042d7b1: 8b 78 04                                        mov    edi,DWORD PTR [eax+0x4]
  0042d7b4: 8b d1                                           mov    edx,ecx
  0042d7b6: c1 e9 02                                        shr    ecx,0x2
  0042d7b9: be 70 2a 50 00                                  mov    esi,0x502a70
  0042d7be: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0042d7c0: 8b ca                                           mov    ecx,edx
  0042d7c2: 83 e1 03                                        and    ecx,0x3
  0042d7c5: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0042d7c7: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  0042d7ca: 51                                              push   ecx
  0042d7cb: 8b c8                                           mov    ecx,eax
  0042d7cd: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  0042d7d3: 8b 13                                           mov    edx,DWORD PTR [ebx]
  0042d7d5: 8b cb                                           mov    ecx,ebx
  0042d7d7: ff 52 40                                        call   DWORD PTR [edx+0x40]
  0042d7da: 8a 45 0b                                        mov    al,BYTE PTR [ebp+0xb]
  0042d7dd: 83 ec 10                                        sub    esp,0x10
  0042d7e0: 8b f4                                           mov    esi,esp
  0042d7e2: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0042d7e5: 6a 00                                           push   0x0
  0042d7e7: 8b ce                                           mov    ecx,esi
  0042d7e9: 88 06                                           mov    BYTE PTR [esi],al
  0042d7eb: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  0042d7f1: 83 c9 ff                                        or     ecx,0xffffffff
  0042d7f4: 33 c0                                           xor    eax,eax
  0042d7f6: bf 70 2a 50 00                                  mov    edi,0x502a70
  0042d7fb: f2 ae                                           repnz scas al,BYTE PTR es:[edi]
  0042d7fd: f7 d1                                           not    ecx
  0042d7ff: 49                                              dec    ecx
  0042d800: 51                                              push   ecx
  0042d801: 68 70 2a 50 00                                  push   0x502a70
  0042d806: 8b ce                                           mov    ecx,esi
  0042d808: e9 1c ff ff ff                                  jmp    0x42d729
  0042d80d: 8b cb                                           mov    ecx,ebx
  0042d80f: e8 9c f7 ff ff                                  call   0x42cfb0
  0042d814: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0042d817: 50                                              push   eax
  0042d818: 57                                              push   edi
  0042d819: 8b cb                                           mov    ecx,ebx
  0042d81b: e8 a0 00 00 00                                  call   0x42d8c0
  0042d820: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042d823: 5f                                              pop    edi
  0042d824: 5e                                              pop    esi
  0042d825: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0042d82c: 5b                                              pop    ebx
  0042d82d: 8b e5                                           mov    esp,ebp
  0042d82f: 5d                                              pop    ebp
  0042d830: c2 08 00                                        ret    0x8
  0042d880: 55                                              push   ebp
  0042d881: 8b ec                                           mov    ebp,esp
  0042d883: 53                                              push   ebx
  0042d884: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  0042d887: 56                                              push   esi
  0042d888: 57                                              push   edi
  0042d889: 8b f9                                           mov    edi,ecx
  0042d88b: 8b 47 54                                        mov    eax,DWORD PTR [edi+0x54]
  0042d88e: 50                                              push   eax
  0042d88f: 8b cb                                           mov    ecx,ebx
  0042d891: e8 3a c0 06 00                                  call   0x4998d0
  0042d896: 8b 47 50                                        mov    eax,DWORD PTR [edi+0x50]
  0042d899: 85 c0                                           test   eax,eax
  0042d89b: 75 04                                           jne    0x42d8a1
  0042d89d: 33 f6                                           xor    esi,esi
  0042d89f: eb 02                                           jmp    0x42d8a3
  0042d8a1: 8b 30                                           mov    esi,DWORD PTR [eax]
  0042d8a3: 3b 77 50                                        cmp    esi,DWORD PTR [edi+0x50]
  0042d8a6: 74 10                                           je     0x42d8b8
  0042d8a8: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0042d8ab: 8b 11                                           mov    edx,DWORD PTR [ecx]
  0042d8ad: 53                                              push   ebx
  0042d8ae: ff 52 14                                        call   DWORD PTR [edx+0x14]
  0042d8b1: 8b 36                                           mov    esi,DWORD PTR [esi]
  0042d8b3: 3b 77 50                                        cmp    esi,DWORD PTR [edi+0x50]
  0042d8b6: 75 f0                                           jne    0x42d8a8
  0042d8b8: 5f                                              pop    edi
  0042d8b9: 5e                                              pop    esi
  0042d8ba: 5b                                              pop    ebx
  0042d8bb: 5d                                              pop    ebp
  0042d8bc: c2 04 00                                        ret    0x4
  0042d8c0: 55                                              push   ebp
  0042d8c1: 8b ec                                           mov    ebp,esp
  0042d8c3: 83 ec 18                                        sub    esp,0x18
  0042d8c6: 56                                              push   esi
  0042d8c7: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0042d8ca: 8d 45 f4                                        lea    eax,[ebp-0xc]
  0042d8cd: 89 4d e8                                        mov    DWORD PTR [ebp-0x18],ecx
  0042d8d0: 50                                              push   eax
  0042d8d1: 8b ce                                           mov    ecx,esi
  0042d8d3: e8 a8 c2 06 00                                  call   0x499b80
  0042d8d8: 8b 45 f4                                        mov    eax,DWORD PTR [ebp-0xc]
  0042d8db: 85 c0                                           test   eax,eax
  0042d8dd: c7 45 f8 00 00 00 00                            mov    DWORD PTR [ebp-0x8],0x0
  0042d8e4: 0f 84 eb 00 00 00                               je     0x42d9d5
  0042d8ea: 53                                              push   ebx
  0042d8eb: 57                                              push   edi
  0042d8ec: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0042d8ef: 51                                              push   ecx
  0042d8f0: 8b ce                                           mov    ecx,esi
  0042d8f2: e8 89 c2 06 00                                  call   0x499b80
  0042d8f7: 8d 55 ec                                        lea    edx,[ebp-0x14]
  0042d8fa: 52                                              push   edx
  0042d8fb: 8b ce                                           mov    ecx,esi
  0042d8fd: e8 7e c2 06 00                                  call   0x499b80
  0042d902: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0042d905: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  0042d908: 8d 45 ff                                        lea    eax,[ebp-0x1]
  0042d90b: 50                                              push   eax
  0042d90c: 51                                              push   ecx
  0042d90d: 52                                              push   edx
  0042d90e: c6 45 ff 01                                     mov    BYTE PTR [ebp-0x1],0x1
  0042d912: e8 19 d5 ff ff                                  call   0x42ae30
  0042d917: 8b c8                                           mov    ecx,eax
  0042d919: e8 52 e9 ff ff                                  call   0x42c270
  0042d91e: 8b f8                                           mov    edi,eax
  0042d920: 85 ff                                           test   edi,edi
  0042d922: 0f 84 99 00 00 00                               je     0x42d9c1
  0042d928: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0042d92b: 85 c0                                           test   eax,eax
  0042d92d: 75 04                                           jne    0x42d933
  0042d92f: 33 c9                                           xor    ecx,ecx
  0042d931: eb 02                                           jmp    0x42d935
  0042d933: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042d935: 3b c8                                           cmp    ecx,eax
  0042d937: 74 13                                           je     0x42d94c
  0042d939: 85 c0                                           test   eax,eax
  0042d93b: 74 02                                           je     0x42d93f
  0042d93d: 8b 00                                           mov    eax,DWORD PTR [eax]
  0042d93f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  0042d942: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0042d945: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0042d947: 52                                              push   edx
  0042d948: 56                                              push   esi
  0042d949: ff 50 18                                        call   DWORD PTR [eax+0x18]
  0042d94c: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0042d94f: 85 c0                                           test   eax,eax
  0042d951: 75 04                                           jne    0x42d957
  0042d953: 33 d2                                           xor    edx,edx
  0042d955: eb 02                                           jmp    0x42d959
  0042d957: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042d959: 8b 45 e8                                        mov    eax,DWORD PTR [ebp-0x18]
  0042d95c: 8d 48 4c                                        lea    ecx,[eax+0x4c]
  0042d95f: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  0042d962: 83 c2 08                                        add    edx,0x8
  0042d965: 52                                              push   edx
  0042d966: 50                                              push   eax
  0042d967: e8 c4 01 00 00                                  call   0x42db30
  0042d96c: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  0042d96f: 85 db                                           test   ebx,ebx
  0042d971: 75 04                                           jne    0x42d977
  0042d973: 33 f6                                           xor    esi,esi
  0042d975: eb 02                                           jmp    0x42d979
  0042d977: 8b 33                                           mov    esi,DWORD PTR [ebx]
  0042d979: 3b f3                                           cmp    esi,ebx
  0042d97b: 74 27                                           je     0x42d9a4
  0042d97d: 8b c6                                           mov    eax,esi
  0042d97f: 8b 48 04                                        mov    ecx,DWORD PTR [eax+0x4]
  0042d982: 8b 10                                           mov    edx,DWORD PTR [eax]
  0042d984: 8b 36                                           mov    esi,DWORD PTR [esi]
  0042d986: 89 11                                           mov    DWORD PTR [ecx],edx
  0042d988: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0042d98a: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  0042d98d: 50                                              push   eax
  0042d98e: 89 51 04                                        mov    DWORD PTR [ecx+0x4],edx
  0042d991: e8 ca 46 01 00                                  call   0x442060
  0042d996: 8b 4f 08                                        mov    ecx,DWORD PTR [edi+0x8]
  0042d999: 83 c4 04                                        add    esp,0x4
  0042d99c: 49                                              dec    ecx
  0042d99d: 3b f3                                           cmp    esi,ebx
  0042d99f: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  0042d9a2: 75 d9                                           jne    0x42d97d
  0042d9a4: 8b 47 04                                        mov    eax,DWORD PTR [edi+0x4]
  0042d9a7: 50                                              push   eax
  0042d9a8: e8 b3 46 01 00                                  call   0x442060
  0042d9ad: 33 c0                                           xor    eax,eax
  0042d9af: 57                                              push   edi
  0042d9b0: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  0042d9b3: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  0042d9b6: e8 a5 46 01 00                                  call   0x442060
  0042d9bb: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  0042d9be: 83 c4 08                                        add    esp,0x8
  0042d9c1: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  0042d9c4: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0042d9c7: 40                                              inc    eax
  0042d9c8: 3b c1                                           cmp    eax,ecx
  0042d9ca: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  0042d9cd: 0f 85 19 ff ff ff                               jne    0x42d8ec
  0042d9d3: 5f                                              pop    edi
  0042d9d4: 5b                                              pop    ebx
  0042d9d5: 5e                                              pop    esi
  0042d9d6: 8b e5                                           mov    esp,ebp
  0042d9d8: 5d                                              pop    ebp
  0042d9d9: c2 08 00                                        ret    0x8
  0042e300: 55                                              push   ebp
  0042e301: 8b ec                                           mov    ebp,esp
  0042e303: 56                                              push   esi
  0042e304: 8b f1                                           mov    esi,ecx
  0042e306: e8 75 ff ff ff                                  call   0x42e280
  0042e30b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0042e30f: 74 09                                           je     0x42e31a
  0042e311: 56                                              push   esi
  0042e312: e8 49 3d 01 00                                  call   0x442060
  0042e317: 83 c4 04                                        add    esp,0x4
  0042e31a: 8b c6                                           mov    eax,esi
  0042e31c: 5e                                              pop    esi
  0042e31d: 5d                                              pop    ebp
  0042e31e: c2 04 00                                        ret    0x4
  00432230: 55                                              push   ebp
  00432231: 8b ec                                           mov    ebp,esp
  00432233: 56                                              push   esi
  00432234: 8b f1                                           mov    esi,ecx
  00432236: e8 35 fb ff ff                                  call   0x431d70
  0043223b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043223f: 74 09                                           je     0x43224a
  00432241: 56                                              push   esi
  00432242: e8 19 fe 00 00                                  call   0x442060
  00432247: 83 c4 04                                        add    esp,0x4
  0043224a: 8b c6                                           mov    eax,esi
  0043224c: 5e                                              pop    esi
  0043224d: 5d                                              pop    ebp
  0043224e: c2 04 00                                        ret    0x4
  004323f0: 55                                              push   ebp
  004323f1: 8b ec                                           mov    ebp,esp
  004323f3: 53                                              push   ebx
  004323f4: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  004323f7: f6 c3 02                                        test   bl,0x2
  004323fa: 56                                              push   esi
  004323fb: 8b f1                                           mov    esi,ecx
  004323fd: 74 2f                                           je     0x43242e
  004323ff: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00432402: 57                                              push   edi
  00432403: 68 50 24 43 00                                  push   0x432450
  00432408: 8d 7e fc                                        lea    edi,[esi-0x4]
  0043240b: 50                                              push   eax
  0043240c: 68 54 01 00 00                                  push   0x154
  00432411: 56                                              push   esi
  00432412: e8 79 f7 09 00                                  call   0x4d1b90
  00432417: f6 c3 01                                        test   bl,0x1
  0043241a: 74 09                                           je     0x432425
  0043241c: 57                                              push   edi
  0043241d: e8 6e c0 09 00                                  call   0x4ce490
  00432422: 83 c4 04                                        add    esp,0x4
  00432425: 8b c7                                           mov    eax,edi
  00432427: 5f                                              pop    edi
  00432428: 5e                                              pop    esi
  00432429: 5b                                              pop    ebx
  0043242a: 5d                                              pop    ebp
  0043242b: c2 04 00                                        ret    0x4
  0043242e: 8b ce                                           mov    ecx,esi
  00432430: e8 1b 00 00 00                                  call   0x432450
  00432435: f6 c3 01                                        test   bl,0x1
  00432438: 74 09                                           je     0x432443
  0043243a: 56                                              push   esi
  0043243b: e8 20 fc 00 00                                  call   0x442060
  00432440: 83 c4 04                                        add    esp,0x4
  00432443: 8b c6                                           mov    eax,esi
  00432445: 5e                                              pop    esi
  00432446: 5b                                              pop    ebx
  00432447: 5d                                              pop    ebp
  00432448: c2 04 00                                        ret    0x4
  00433200: 83 e9 30                                        sub    ecx,0x30
  00433203: e9 e8 f1 ff ff                                  jmp    0x4323f0
  00433cc0: 55                                              push   ebp
  00433cc1: 8b ec                                           mov    ebp,esp
  00433cc3: 51                                              push   ecx
  00433cc4: 53                                              push   ebx
  00433cc5: 56                                              push   esi
  00433cc6: 57                                              push   edi
  00433cc7: 8b f1                                           mov    esi,ecx
  00433cc9: 50                                              push   eax
  00433cca: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00433ccd: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00433cd0: 58                                              pop    eax
  00433cd1: 8d 5e 04                                        lea    ebx,[esi+0x4]
  00433cd4: 53                                              push   ebx
  00433cd5: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00433cdb: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00433cde: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00433ce1: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433ce4: 40                                              inc    eax
  00433ce5: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00433ce8: bf 03 00 00 00                                  mov    edi,0x3
  00433ced: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433cf0: 40                                              inc    eax
  00433cf1: 3b c2                                           cmp    eax,edx
  00433cf3: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  00433cf6: 72 07                                           jb     0x433cff
  00433cf8: c7 46 1c 00 00 00 00                            mov    DWORD PTR [esi+0x1c],0x0
  00433cff: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433d02: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00433d05: 39 7c 81 20                                     cmp    DWORD PTR [ecx+eax*4+0x20],edi
  00433d09: 75 e2                                           jne    0x433ced
  00433d0b: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433d0e: 8d 14 c0                                        lea    edx,[eax+eax*8]
  00433d11: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00433d14: 89 04 91                                        mov    DWORD PTR [ecx+edx*4],eax
  00433d17: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433d1a: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  00433d1d: 8d 0c c0                                        lea    ecx,[eax+eax*8]
  00433d20: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00433d23: 89 44 8a 04                                     mov    DWORD PTR [edx+ecx*4+0x4],eax
  00433d27: ff 15 14 e1 4d 00                               call   DWORD PTR ds:0x4de114
  00433d2d: 8b 4e 1c                                        mov    ecx,DWORD PTR [esi+0x1c]
  00433d30: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  00433d33: 8d 0c c9                                        lea    ecx,[ecx+ecx*8]
  00433d36: 89 44 8a 08                                     mov    DWORD PTR [edx+ecx*4+0x8],eax
  00433d3a: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433d3d: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433d40: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00433d43: c7 44 81 20 01 00 00 00                         mov    DWORD PTR [ecx+eax*4+0x20],0x1
  00433d4b: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433d4e: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00433d51: 8d 14 c0                                        lea    edx,[eax+eax*8]
  00433d54: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  00433d57: 89 4c 90 10                                     mov    DWORD PTR [eax+edx*4+0x10],ecx
  00433d5b: e8 90 5e 05 00                                  call   0x489bf0
  00433d60: 8b 4e 1c                                        mov    ecx,DWORD PTR [esi+0x1c]
  00433d63: 8d 14 c9                                        lea    edx,[ecx+ecx*8]
  00433d66: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433d69: 89 44 91 18                                     mov    DWORD PTR [ecx+edx*4+0x18],eax
  00433d6d: 8b 7e 1c                                        mov    edi,DWORD PTR [esi+0x1c]
  00433d70: 53                                              push   ebx
  00433d71: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00433d77: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00433d7a: 89 3a                                           mov    DWORD PTR [edx],edi
  00433d7c: 8d 7e 2c                                        lea    edi,[esi+0x2c]
  00433d7f: 57                                              push   edi
  00433d80: ff 15 50 e1 4d 00                               call   DWORD PTR ds:0x4de150
  00433d86: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00433d88: 3b 7e 30                                        cmp    edi,DWORD PTR [esi+0x30]
  00433d8b: 7e 03                                           jle    0x433d90
  00433d8d: 89 7e 30                                        mov    DWORD PTR [esi+0x30],edi
  00433d90: 5f                                              pop    edi
  00433d91: 5e                                              pop    esi
  00433d92: 5b                                              pop    ebx
  00433d93: 8b e5                                           mov    esp,ebp
  00433d95: 5d                                              pop    ebp
  00433d96: c2 0c 00                                        ret    0xc
  00433da0: 55                                              push   ebp
  00433da1: 8b ec                                           mov    ebp,esp
  00433da3: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00433da6: 8b 12                                           mov    edx,DWORD PTR [edx]
  00433da8: 53                                              push   ebx
  00433da9: 56                                              push   esi
  00433daa: 57                                              push   edi
  00433dab: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  00433dae: 8b 07                                           mov    eax,DWORD PTR [edi]
  00433db0: 8b f1                                           mov    esi,ecx
  00433db2: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433db5: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00433db8: 89 54 81 0c                                     mov    DWORD PTR [ecx+eax*4+0xc],edx
  00433dbc: 8b 07                                           mov    eax,DWORD PTR [edi]
  00433dbe: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433dc1: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00433dc4: c7 44 81 20 02 00 00 00                         mov    DWORD PTR [ecx+eax*4+0x20],0x2
  00433dcc: e8 1f 5e 05 00                                  call   0x489bf0
  00433dd1: 8b 17                                           mov    edx,DWORD PTR [edi]
  00433dd3: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433dd6: 8d 14 d2                                        lea    edx,[edx+edx*8]
  00433dd9: 8b 5c 91 18                                     mov    ebx,DWORD PTR [ecx+edx*4+0x18]
  00433ddd: 8b 56 1c                                        mov    edx,DWORD PTR [esi+0x1c]
  00433de0: 2b d8                                           sub    ebx,eax
  00433de2: 8d 14 d2                                        lea    edx,[edx+edx*8]
  00433de5: 89 5c 91 1c                                     mov    DWORD PTR [ecx+edx*4+0x1c],ebx
  00433de9: 8b 0f                                           mov    ecx,DWORD PTR [edi]
  00433deb: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  00433dee: 8d 0c c9                                        lea    ecx,[ecx+ecx*8]
  00433df1: 89 44 8a 18                                     mov    DWORD PTR [edx+ecx*4+0x18],eax
  00433df5: 8b 07                                           mov    eax,DWORD PTR [edi]
  00433df7: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00433dfa: 5f                                              pop    edi
  00433dfb: 5e                                              pop    esi
  00433dfc: 89 01                                           mov    DWORD PTR [ecx],eax
  00433dfe: 5b                                              pop    ebx
  00433dff: 5d                                              pop    ebp
  00433e00: c2 08 00                                        ret    0x8
  00433e10: 55                                              push   ebp
  00433e11: 8b ec                                           mov    ebp,esp
  00433e13: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  00433e16: 8b 02                                           mov    eax,DWORD PTR [edx]
  00433e18: 83 f8 ff                                        cmp    eax,0xffffffff
  00433e1b: 75 15                                           jne    0x433e32
  00433e1d: 68 10 33 4e 00                                  push   0x4e3310
  00433e22: 8d 45 08                                        lea    eax,[ebp+0x8]
  00433e25: 50                                              push   eax
  00433e26: c7 45 08 c0 30 50 00                            mov    DWORD PTR [ebp+0x8],0x5030c0
  00433e2d: e8 24 df 09 00                                  call   0x4d1d56
  00433e32: 56                                              push   esi
  00433e33: 8b 71 24                                        mov    esi,DWORD PTR [ecx+0x24]
  00433e36: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00433e39: c1 e0 02                                        shl    eax,0x2
  00433e3c: 8b 74 30 0c                                     mov    esi,DWORD PTR [eax+esi*1+0xc]
  00433e40: 89 32                                           mov    DWORD PTR [edx],esi
  00433e42: 8b 51 24                                        mov    edx,DWORD PTR [ecx+0x24]
  00433e45: 83 c1 2c                                        add    ecx,0x2c
  00433e48: 51                                              push   ecx
  00433e49: c7 44 10 20 03 00 00 00                         mov    DWORD PTR [eax+edx*1+0x20],0x3
  00433e51: ff 15 e8 e0 4d 00                               call   DWORD PTR ds:0x4de0e8
  00433e57: 5e                                              pop    esi
  00433e58: 5d                                              pop    ebp
  00433e59: c2 04 00                                        ret    0x4
  00433e60: 55                                              push   ebp
  00433e61: 8b ec                                           mov    ebp,esp
  00433e63: 51                                              push   ecx
  00433e64: 53                                              push   ebx
  00433e65: 56                                              push   esi
  00433e66: 57                                              push   edi
  00433e67: 8b f1                                           mov    esi,ecx
  00433e69: 50                                              push   eax
  00433e6a: 8b 45 04                                        mov    eax,DWORD PTR [ebp+0x4]
  00433e6d: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00433e70: 58                                              pop    eax
  00433e71: 8d 5e 04                                        lea    ebx,[esi+0x4]
  00433e74: 53                                              push   ebx
  00433e75: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00433e7b: 8b 46 28                                        mov    eax,DWORD PTR [esi+0x28]
  00433e7e: 8b 56 20                                        mov    edx,DWORD PTR [esi+0x20]
  00433e81: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433e84: 40                                              inc    eax
  00433e85: 89 46 28                                        mov    DWORD PTR [esi+0x28],eax
  00433e88: bf 03 00 00 00                                  mov    edi,0x3
  00433e8d: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433e90: 40                                              inc    eax
  00433e91: 3b c2                                           cmp    eax,edx
  00433e93: 89 46 1c                                        mov    DWORD PTR [esi+0x1c],eax
  00433e96: 72 07                                           jb     0x433e9f
  00433e98: c7 46 1c 00 00 00 00                            mov    DWORD PTR [esi+0x1c],0x0
  00433e9f: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433ea2: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00433ea5: 39 7c 81 20                                     cmp    DWORD PTR [ecx+eax*4+0x20],edi
  00433ea9: 75 e2                                           jne    0x433e8d
  00433eab: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433eae: 8d 14 c0                                        lea    edx,[eax+eax*8]
  00433eb1: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00433eb4: 89 04 91                                        mov    DWORD PTR [ecx+edx*4],eax
  00433eb7: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433eba: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  00433ebd: 8d 0c c0                                        lea    ecx,[eax+eax*8]
  00433ec0: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00433ec3: 89 44 8a 04                                     mov    DWORD PTR [edx+ecx*4+0x4],eax
  00433ec7: ff 15 14 e1 4d 00                               call   DWORD PTR ds:0x4de114
  00433ecd: 8b 4e 1c                                        mov    ecx,DWORD PTR [esi+0x1c]
  00433ed0: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  00433ed3: 8d 0c c9                                        lea    ecx,[ecx+ecx*8]
  00433ed6: 89 44 8a 08                                     mov    DWORD PTR [edx+ecx*4+0x8],eax
  00433eda: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433edd: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433ee0: 8d 04 c0                                        lea    eax,[eax+eax*8]
  00433ee3: c7 44 81 20 04 00 00 00                         mov    DWORD PTR [ecx+eax*4+0x20],0x4
  00433eeb: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433eee: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00433ef1: 8d 14 c0                                        lea    edx,[eax+eax*8]
  00433ef4: 8b 46 24                                        mov    eax,DWORD PTR [esi+0x24]
  00433ef7: 89 4c 90 10                                     mov    DWORD PTR [eax+edx*4+0x10],ecx
  00433efb: e8 f0 5c 05 00                                  call   0x489bf0
  00433f00: 8b 4e 1c                                        mov    ecx,DWORD PTR [esi+0x1c]
  00433f03: 8d 14 c9                                        lea    edx,[ecx+ecx*8]
  00433f06: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433f09: 89 44 91 18                                     mov    DWORD PTR [ecx+edx*4+0x18],eax
  00433f0d: 8b 7e 1c                                        mov    edi,DWORD PTR [esi+0x1c]
  00433f10: 53                                              push   ebx
  00433f11: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  00433f17: 8b 4e 24                                        mov    ecx,DWORD PTR [esi+0x24]
  00433f1a: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  00433f1d: 8b 30                                           mov    esi,DWORD PTR [eax]
  00433f1f: 8d 14 ff                                        lea    edx,[edi+edi*8]
  00433f22: 89 74 91 0c                                     mov    DWORD PTR [ecx+edx*4+0xc],esi
  00433f26: 89 38                                           mov    DWORD PTR [eax],edi
  00433f28: 5f                                              pop    edi
  00433f29: 5e                                              pop    esi
  00433f2a: 5b                                              pop    ebx
  00433f2b: 8b e5                                           mov    esp,ebp
  00433f2d: 5d                                              pop    ebp
  00433f2e: c2 0c 00                                        ret    0xc
  00433f40: 55                                              push   ebp
  00433f41: 8b ec                                           mov    ebp,esp
  00433f43: 83 ec 1c                                        sub    esp,0x1c
  00433f46: 53                                              push   ebx
  00433f47: 56                                              push   esi
  00433f48: 8b f1                                           mov    esi,ecx
  00433f4a: 8d 46 04                                        lea    eax,[esi+0x4]
  00433f4d: 57                                              push   edi
  00433f4e: 50                                              push   eax
  00433f4f: 89 75 f8                                        mov    DWORD PTR [ebp-0x8],esi
  00433f52: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  00433f55: ff 15 f8 e0 4d 00                               call   DWORD PTR ds:0x4de0f8
  00433f5b: 8b 46 1c                                        mov    eax,DWORD PTR [esi+0x1c]
  00433f5e: 3b 46 20                                        cmp    eax,DWORD PTR [esi+0x20]
  00433f61: 72 09                                           jb     0x433f6c
  00433f63: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00433f6a: eb 04                                           jmp    0x433f70
  00433f6c: 40                                              inc    eax
  00433f6d: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00433f70: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00433f73: 85 db                                           test   ebx,ebx
  00433f75: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00433f7a: 74 02                                           je     0x433f7e
  00433f7c: 8b c3                                           mov    eax,ebx
  00433f7e: 68 44 32 50 00                                  push   0x503244
  00433f83: 50                                              push   eax
  00433f84: ff 15 34 e3 4d 00                               call   DWORD PTR ds:0x4de334
  00433f8a: 8b f8                                           mov    edi,eax
  00433f8c: 83 c4 08                                        add    esp,0x8
  00433f8f: 85 ff                                           test   edi,edi
  00433f91: 75 34                                           jne    0x433fc7
  00433f93: 85 db                                           test   ebx,ebx
  00433f95: 74 25                                           je     0x433fbc
  00433f97: 8a 43 ff                                        mov    al,BYTE PTR [ebx-0x1]
  00433f9a: 84 c0                                           test   al,al
  00433f9c: 74 14                                           je     0x433fb2
  00433f9e: 3c ff                                           cmp    al,0xff
  00433fa0: 74 10                                           je     0x433fb2
  00433fa2: 5f                                              pop    edi
  00433fa3: fe c8                                           dec    al
  00433fa5: 88 43 ff                                        mov    BYTE PTR [ebx-0x1],al
  00433fa8: 5e                                              pop    esi
  00433fa9: 32 c0                                           xor    al,al
  00433fab: 5b                                              pop    ebx
  00433fac: 8b e5                                           mov    esp,ebp
  00433fae: 5d                                              pop    ebp
  00433faf: c2 10 00                                        ret    0x10
  00433fb2: 4b                                              dec    ebx
  00433fb3: 53                                              push   ebx
  00433fb4: e8 a7 e0 00 00                                  call   0x442060
  00433fb9: 83 c4 04                                        add    esp,0x4
  00433fbc: 5f                                              pop    edi
  00433fbd: 5e                                              pop    esi
  00433fbe: 32 c0                                           xor    al,al
  00433fc0: 5b                                              pop    ebx
  00433fc1: 8b e5                                           mov    esp,ebp
  00433fc3: 5d                                              pop    ebp
  00433fc4: c2 10 00                                        ret    0x10
  00433fc7: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00433fca: 50                                              push   eax
  00433fcb: ff 15 e4 e0 4d 00                               call   DWORD PTR ds:0x4de0e4
  00433fd1: 8b 1d 38 e3 4d 00                               mov    ebx,DWORD PTR ds:0x4de338
  00433fd7: 68 14 32 50 00                                  push   0x503214
  00433fdc: 57                                              push   edi
  00433fdd: ff d3                                           call   ebx
  00433fdf: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  00433fe2: 8b 55 ee                                        mov    edx,DWORD PTR [ebp-0x12]
  00433fe5: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00433fe8: 83 c4 08                                        add    esp,0x8
  00433feb: 81 e1 ff ff 00 00                               and    ecx,0xffff
  00433ff1: 51                                              push   ecx
  00433ff2: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  00433ff5: 81 e2 ff ff 00 00                               and    edx,0xffff
  00433ffb: 52                                              push   edx
  00433ffc: 8b 55 ea                                        mov    edx,DWORD PTR [ebp-0x16]
  00433fff: 25 ff ff 00 00                                  and    eax,0xffff
  00434004: 50                                              push   eax
  00434005: 8b 45 e6                                        mov    eax,DWORD PTR [ebp-0x1a]
  00434008: 81 e1 ff ff 00 00                               and    ecx,0xffff
  0043400e: 51                                              push   ecx
  0043400f: 81 e2 ff ff 00 00                               and    edx,0xffff
  00434015: 52                                              push   edx
  00434016: 25 ff ff 00 00                                  and    eax,0xffff
  0043401b: 50                                              push   eax
  0043401c: 68 e4 31 50 00                                  push   0x5031e4
  00434021: 57                                              push   edi
  00434022: ff d3                                           call   ebx
  00434024: 83 c4 20                                        add    esp,0x20
  00434027: 68 e0 31 50 00                                  push   0x5031e0
  0043402c: 57                                              push   edi
  0043402d: ff d3                                           call   ebx
  0043402f: 83 c4 08                                        add    esp,0x8
  00434032: eb 03                                           jmp    0x434037
  00434034: 8b 75 f8                                        mov    esi,DWORD PTR [ebp-0x8]
  00434037: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  0043403a: 8b 56 24                                        mov    edx,DWORD PTR [esi+0x24]
  0043403d: 8d 0c c0                                        lea    ecx,[eax+eax*8]
  00434040: 8b 44 8a 20                                     mov    eax,DWORD PTR [edx+ecx*4+0x20]
  00434044: 48                                              dec    eax
  00434045: 8d 34 8a                                        lea    esi,[edx+ecx*4]
  00434048: 74 57                                           je     0x4340a1
  0043404a: 48                                              dec    eax
  0043404b: 74 25                                           je     0x434072
  0043404d: 83 e8 02                                        sub    eax,0x2
  00434050: 75 78                                           jne    0x4340ca
  00434052: 68 c0 31 50 00                                  push   0x5031c0
  00434057: 57                                              push   edi
  00434058: ff d3                                           call   ebx
  0043405a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0043405d: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00434060: 8b 16                                           mov    edx,DWORD PTR [esi]
  00434062: 83 c4 08                                        add    esp,0x8
  00434065: 50                                              push   eax
  00434066: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  00434069: 51                                              push   ecx
  0043406a: 8b 4e 18                                        mov    ecx,DWORD PTR [esi+0x18]
  0043406d: 52                                              push   edx
  0043406e: 50                                              push   eax
  0043406f: 51                                              push   ecx
  00434070: eb 4d                                           jmp    0x4340bf
  00434072: 68 a4 31 50 00                                  push   0x5031a4
  00434077: 57                                              push   edi
  00434078: ff d3                                           call   ebx
  0043407a: 8b 56 1c                                        mov    edx,DWORD PTR [esi+0x1c]
  0043407d: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00434080: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00434083: 83 c4 08                                        add    esp,0x8
  00434086: 52                                              push   edx
  00434087: 8b 16                                           mov    edx,DWORD PTR [esi]
  00434089: 50                                              push   eax
  0043408a: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  0043408d: 51                                              push   ecx
  0043408e: 8b 4e 18                                        mov    ecx,DWORD PTR [esi+0x18]
  00434091: 52                                              push   edx
  00434092: 50                                              push   eax
  00434093: 51                                              push   ecx
  00434094: 68 44 31 50 00                                  push   0x503144
  00434099: 57                                              push   edi
  0043409a: ff d3                                           call   ebx
  0043409c: 83 c4 20                                        add    esp,0x20
  0043409f: eb 29                                           jmp    0x4340ca
  004340a1: 68 28 31 50 00                                  push   0x503128
  004340a6: 57                                              push   edi
  004340a7: ff d3                                           call   ebx
  004340a9: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004340ac: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004340af: 8b 0e                                           mov    ecx,DWORD PTR [esi]
  004340b1: 83 c4 08                                        add    esp,0x8
  004340b4: 52                                              push   edx
  004340b5: 8b 56 10                                        mov    edx,DWORD PTR [esi+0x10]
  004340b8: 50                                              push   eax
  004340b9: 8b 46 18                                        mov    eax,DWORD PTR [esi+0x18]
  004340bc: 51                                              push   ecx
  004340bd: 52                                              push   edx
  004340be: 50                                              push   eax
  004340bf: 68 d8 30 50 00                                  push   0x5030d8
  004340c4: 57                                              push   edi
  004340c5: ff d3                                           call   ebx
  004340c7: 83 c4 1c                                        add    esp,0x1c
  004340ca: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004340cd: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004340d0: 3b 41 1c                                        cmp    eax,DWORD PTR [ecx+0x1c]
  004340d3: 74 1b                                           je     0x4340f0
  004340d5: 8b 51 20                                        mov    edx,DWORD PTR [ecx+0x20]
  004340d8: 40                                              inc    eax
  004340d9: 3b c2                                           cmp    eax,edx
  004340db: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004340de: 0f 82 50 ff ff ff                               jb     0x434034
  004340e4: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004340eb: e9 44 ff ff ff                                  jmp    0x434034
  004340f0: 68 d0 30 50 00                                  push   0x5030d0
  004340f5: 57                                              push   edi
  004340f6: ff d3                                           call   ebx
  004340f8: 57                                              push   edi
  004340f9: ff 15 3c e3 4d 00                               call   DWORD PTR ds:0x4de33c
  004340ff: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00434102: 83 c4 0c                                        add    esp,0xc
  00434105: 51                                              push   ecx
  00434106: ff 15 fc e0 4d 00                               call   DWORD PTR ds:0x4de0fc
  0043410c: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0043410f: 85 c9                                           test   ecx,ecx
  00434111: 74 25                                           je     0x434138
  00434113: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  00434116: 84 c0                                           test   al,al
  00434118: 74 14                                           je     0x43412e
  0043411a: 3c ff                                           cmp    al,0xff
  0043411c: 74 10                                           je     0x43412e
  0043411e: 5f                                              pop    edi
  0043411f: fe c8                                           dec    al
  00434121: 5e                                              pop    esi
  00434122: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  00434125: b0 01                                           mov    al,0x1
  00434127: 5b                                              pop    ebx
  00434128: 8b e5                                           mov    esp,ebp
  0043412a: 5d                                              pop    ebp
  0043412b: c2 10 00                                        ret    0x10
  0043412e: 49                                              dec    ecx
  0043412f: 51                                              push   ecx
  00434130: e8 2b df 00 00                                  call   0x442060
  00434135: 83 c4 04                                        add    esp,0x4
  00434138: 5f                                              pop    edi
  00434139: 5e                                              pop    esi
  0043413a: b0 01                                           mov    al,0x1
  0043413c: 5b                                              pop    ebx
  0043413d: 8b e5                                           mov    esp,ebp
  0043413f: 5d                                              pop    ebp
  00434140: c2 10 00                                        ret    0x10
  00434150: c2 0c 00                                        ret    0xc
  00434160: c2 08 00                                        ret    0x8
  00434170: c2 0c 00                                        ret    0xc
  00434180: c2 04 00                                        ret    0x4
  00434190: 55                                              push   ebp
  00434191: 8b ec                                           mov    ebp,esp
  00434193: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  00434196: 85 c9                                           test   ecx,ecx
  00434198: 74 20                                           je     0x4341ba
  0043419a: 8a 41 ff                                        mov    al,BYTE PTR [ecx-0x1]
  0043419d: 84 c0                                           test   al,al
  0043419f: 74 0f                                           je     0x4341b0
  004341a1: 3c ff                                           cmp    al,0xff
  004341a3: 74 0b                                           je     0x4341b0
  004341a5: fe c8                                           dec    al
  004341a7: 88 41 ff                                        mov    BYTE PTR [ecx-0x1],al
  004341aa: 32 c0                                           xor    al,al
  004341ac: 5d                                              pop    ebp
  004341ad: c2 10 00                                        ret    0x10
  004341b0: 49                                              dec    ecx
  004341b1: 51                                              push   ecx
  004341b2: e8 a9 de 00 00                                  call   0x442060
  004341b7: 83 c4 04                                        add    esp,0x4
  004341ba: 32 c0                                           xor    al,al
  004341bc: 5d                                              pop    ebp
  004341bd: c2 10 00                                        ret    0x10
  00434280: 55                                              push   ebp
  00434281: 8b ec                                           mov    ebp,esp
  00434283: 56                                              push   esi
  00434284: 8b f1                                           mov    esi,ecx
  00434286: e8 25 00 00 00                                  call   0x4342b0
  0043428b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043428f: 74 09                                           je     0x43429a
  00434291: 56                                              push   esi
  00434292: e8 c9 dd 00 00                                  call   0x442060
  00434297: 83 c4 04                                        add    esp,0x4
  0043429a: 8b c6                                           mov    eax,esi
  0043429c: 5e                                              pop    esi
  0043429d: 5d                                              pop    ebp
  0043429e: c2 04 00                                        ret    0x4
  00435420: 55                                              push   ebp
  00435421: 8b ec                                           mov    ebp,esp
  00435423: 56                                              push   esi
  00435424: 8b f1                                           mov    esi,ecx
  00435426: e8 25 00 00 00                                  call   0x435450
  0043542b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043542f: 74 09                                           je     0x43543a
  00435431: 56                                              push   esi
  00435432: e8 29 cc 00 00                                  call   0x442060
  00435437: 83 c4 04                                        add    esp,0x4
  0043543a: 8b c6                                           mov    eax,esi
  0043543c: 5e                                              pop    esi
  0043543d: 5d                                              pop    ebp
  0043543e: c2 04 00                                        ret    0x4
  00436f20: 55                                              push   ebp
  00436f21: 8b ec                                           mov    ebp,esp
  00436f23: 53                                              push   ebx
  00436f24: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00436f27: f6 c3 02                                        test   bl,0x2
  00436f2a: 56                                              push   esi
  00436f2b: 8b f1                                           mov    esi,ecx
  00436f2d: 74 32                                           je     0x436f61
  00436f2f: 8b 46 f4                                        mov    eax,DWORD PTR [esi-0xc]
  00436f32: 57                                              push   edi
  00436f33: 8d 7e f4                                        lea    edi,[esi-0xc]
  00436f36: 68 e0 c8 44 00                                  push   0x44c8e0
  00436f3b: 50                                              push   eax
  00436f3c: 68 50 02 00 00                                  push   0x250
  00436f41: 83 c6 f8                                        add    esi,0xfffffff8
  00436f44: 56                                              push   esi
  00436f45: e8 46 ac 09 00                                  call   0x4d1b90
  00436f4a: f6 c3 01                                        test   bl,0x1
  00436f4d: 74 09                                           je     0x436f58
  00436f4f: 57                                              push   edi
  00436f50: e8 3b 75 09 00                                  call   0x4ce490
  00436f55: 83 c4 04                                        add    esp,0x4
  00436f58: 8b c7                                           mov    eax,edi
  00436f5a: 5f                                              pop    edi
  00436f5b: 5e                                              pop    esi
  00436f5c: 5b                                              pop    ebx
  00436f5d: 5d                                              pop    ebp
  00436f5e: c2 04 00                                        ret    0x4
  00436f61: 8b ce                                           mov    ecx,esi
  00436f63: e8 78 59 01 00                                  call   0x44c8e0
  00436f68: f6 c3 01                                        test   bl,0x1
  00436f6b: 74 0c                                           je     0x436f79
  00436f6d: 8d 4e f8                                        lea    ecx,[esi-0x8]
  00436f70: 51                                              push   ecx
  00436f71: e8 ea b0 00 00                                  call   0x442060
  00436f76: 83 c4 04                                        add    esp,0x4
  00436f79: 8d 46 f8                                        lea    eax,[esi-0x8]
  00436f7c: 5e                                              pop    esi
  00436f7d: 5b                                              pop    ebx
  00436f7e: 5d                                              pop    ebp
  00436f7f: c2 04 00                                        ret    0x4
  00437380: 55                                              push   ebp
  00437381: 8b ec                                           mov    ebp,esp
  00437383: 56                                              push   esi
  00437384: 8b f1                                           mov    esi,ecx
  00437386: e8 95 06 00 00                                  call   0x437a20
  0043738b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043738f: 74 09                                           je     0x43739a
  00437391: 56                                              push   esi
  00437392: e8 c9 ac 00 00                                  call   0x442060
  00437397: 83 c4 04                                        add    esp,0x4
  0043739a: 8b c6                                           mov    eax,esi
  0043739c: 5e                                              pop    esi
  0043739d: 5d                                              pop    ebp
  0043739e: c2 04 00                                        ret    0x4
  004373b0: 55                                              push   ebp
  004373b1: 8b ec                                           mov    ebp,esp
  004373b3: 56                                              push   esi
  004373b4: 8b f1                                           mov    esi,ecx
  004373b6: e8 b5 07 00 00                                  call   0x437b70
  004373bb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004373bf: 74 09                                           je     0x4373ca
  004373c1: 56                                              push   esi
  004373c2: e8 99 ac 00 00                                  call   0x442060
  004373c7: 83 c4 04                                        add    esp,0x4
  004373ca: 8b c6                                           mov    eax,esi
  004373cc: 5e                                              pop    esi
  004373cd: 5d                                              pop    ebp
  004373ce: c2 04 00                                        ret    0x4
  00437440: 55                                              push   ebp
  00437441: 8b ec                                           mov    ebp,esp
  00437443: 56                                              push   esi
  00437444: 8b f1                                           mov    esi,ecx
  00437446: e8 85 04 00 00                                  call   0x4378d0
  0043744b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043744f: 74 09                                           je     0x43745a
  00437451: 56                                              push   esi
  00437452: e8 09 ac 00 00                                  call   0x442060
  00437457: 83 c4 04                                        add    esp,0x4
  0043745a: 8b c6                                           mov    eax,esi
  0043745c: 5e                                              pop    esi
  0043745d: 5d                                              pop    ebp
  0043745e: c2 04 00                                        ret    0x4
  00437fe0: 55                                              push   ebp
  00437fe1: 8b ec                                           mov    ebp,esp
  00437fe3: 56                                              push   esi
  00437fe4: 8b f1                                           mov    esi,ecx
  00437fe6: e8 15 fd ff ff                                  call   0x437d00
  00437feb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00437fef: 74 09                                           je     0x437ffa
  00437ff1: 56                                              push   esi
  00437ff2: e8 69 a0 00 00                                  call   0x442060
  00437ff7: 83 c4 04                                        add    esp,0x4
  00437ffa: 8b c6                                           mov    eax,esi
  00437ffc: 5e                                              pop    esi
  00437ffd: 5d                                              pop    ebp
  00437ffe: c2 04 00                                        ret    0x4
  00438010: 55                                              push   ebp
  00438011: 8b ec                                           mov    ebp,esp
  00438013: 56                                              push   esi
  00438014: 8b f1                                           mov    esi,ecx
  00438016: e8 75 fe ff ff                                  call   0x437e90
  0043801b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043801f: 74 09                                           je     0x43802a
  00438021: 56                                              push   esi
  00438022: e8 39 a0 00 00                                  call   0x442060
  00438027: 83 c4 04                                        add    esp,0x4
  0043802a: 8b c6                                           mov    eax,esi
  0043802c: 5e                                              pop    esi
  0043802d: 5d                                              pop    ebp
  0043802e: c2 04 00                                        ret    0x4
  004382a0: c3                                              ret
  004382b0: 55                                              push   ebp
  004382b1: 8b ec                                           mov    ebp,esp
  004382b3: 56                                              push   esi
  004382b4: 8b f1                                           mov    esi,ecx
  004382b6: e8 d5 ff ff ff                                  call   0x438290
  004382bb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004382bf: 74 09                                           je     0x4382ca
  004382c1: 56                                              push   esi
  004382c2: e8 99 9d 00 00                                  call   0x442060
  004382c7: 83 c4 04                                        add    esp,0x4
  004382ca: 8b c6                                           mov    eax,esi
  004382cc: 5e                                              pop    esi
  004382cd: 5d                                              pop    ebp
  004382ce: c2 04 00                                        ret    0x4
  004383a0: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004383a3: 69 c0 91 6a 73 00                               imul   eax,eax,0x736a91
  004383a9: 40                                              inc    eax
  004383aa: 56                                              push   esi
  004383ab: 8b 71 0c                                        mov    esi,DWORD PTR [ecx+0xc]
  004383ae: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  004383b1: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004383b4: 3b f1                                           cmp    esi,ecx
  004383b6: 75 04                                           jne    0x4383bc
  004383b8: 8b c1                                           mov    eax,ecx
  004383ba: 5e                                              pop    esi
  004383bb: c3                                              ret
  004383bc: 2b f1                                           sub    esi,ecx
  004383be: 33 d2                                           xor    edx,edx
  004383c0: f7 f6                                           div    esi
  004383c2: 5e                                              pop    esi
  004383c3: 8b c2                                           mov    eax,edx
  004383c5: 03 c1                                           add    eax,ecx
  004383c7: c3                                              ret
  00439260: 55                                              push   ebp
  00439261: 8b ec                                           mov    ebp,esp
  00439263: 56                                              push   esi
  00439264: 8b f1                                           mov    esi,ecx
  00439266: e8 25 00 00 00                                  call   0x439290
  0043926b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043926f: 74 09                                           je     0x43927a
  00439271: 56                                              push   esi
  00439272: e8 e9 8d 00 00                                  call   0x442060
  00439277: 83 c4 04                                        add    esp,0x4
  0043927a: 8b c6                                           mov    eax,esi
  0043927c: 5e                                              pop    esi
  0043927d: 5d                                              pop    ebp
  0043927e: c2 04 00                                        ret    0x4
  0043bd80: 33 c0                                           xor    eax,eax
  0043bd82: c2 08 00                                        ret    0x8
  0043bd90: c3                                              ret
  0043bda0: 55                                              push   ebp
  0043bda1: 8b ec                                           mov    ebp,esp
  0043bda3: 56                                              push   esi
  0043bda4: 8b f1                                           mov    esi,ecx
  0043bda6: e8 25 00 00 00                                  call   0x43bdd0
  0043bdab: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043bdaf: 74 09                                           je     0x43bdba
  0043bdb1: 56                                              push   esi
  0043bdb2: e8 a9 62 00 00                                  call   0x442060
  0043bdb7: 83 c4 04                                        add    esp,0x4
  0043bdba: 8b c6                                           mov    eax,esi
  0043bdbc: 5e                                              pop    esi
  0043bdbd: 5d                                              pop    ebp
  0043bdbe: c2 04 00                                        ret    0x4
  0043c4b0: 55                                              push   ebp
  0043c4b1: 8b ec                                           mov    ebp,esp
  0043c4b3: 56                                              push   esi
  0043c4b4: 8b f1                                           mov    esi,ecx
  0043c4b6: e8 a5 fe ff ff                                  call   0x43c360
  0043c4bb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043c4bf: 74 09                                           je     0x43c4ca
  0043c4c1: 56                                              push   esi
  0043c4c2: e8 99 5b 00 00                                  call   0x442060
  0043c4c7: 83 c4 04                                        add    esp,0x4
  0043c4ca: 8b c6                                           mov    eax,esi
  0043c4cc: 5e                                              pop    esi
  0043c4cd: 5d                                              pop    ebp
  0043c4ce: c2 04 00                                        ret    0x4
  0043c650: 83 e9 30                                        sub    ecx,0x30
  0043c653: e9 48 f7 ff ff                                  jmp    0x43bda0
  0043dd30: 55                                              push   ebp
  0043dd31: 8b ec                                           mov    ebp,esp
  0043dd33: 56                                              push   esi
  0043dd34: 8b f1                                           mov    esi,ecx
  0043dd36: e8 a5 fe ff ff                                  call   0x43dbe0
  0043dd3b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0043dd3f: 74 09                                           je     0x43dd4a
  0043dd41: 56                                              push   esi
  0043dd42: e8 19 43 00 00                                  call   0x442060
  0043dd47: 83 c4 04                                        add    esp,0x4
  0043dd4a: 8b c6                                           mov    eax,esi
  0043dd4c: 5e                                              pop    esi
  0043dd4d: 5d                                              pop    ebp
  0043dd4e: c2 04 00                                        ret    0x4
  004419a0: 55                                              push   ebp
  004419a1: 8b ec                                           mov    ebp,esp
  004419a3: 56                                              push   esi
  004419a4: 8b f1                                           mov    esi,ecx
  004419a6: e8 25 00 00 00                                  call   0x4419d0
  004419ab: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004419af: 74 09                                           je     0x4419ba
  004419b1: 56                                              push   esi
  004419b2: e8 a9 06 00 00                                  call   0x442060
  004419b7: 83 c4 04                                        add    esp,0x4
  004419ba: 8b c6                                           mov    eax,esi
  004419bc: 5e                                              pop    esi
  004419bd: 5d                                              pop    ebp
  004419be: c2 04 00                                        ret    0x4
  00445810: 55                                              push   ebp
  00445811: 8b ec                                           mov    ebp,esp
  00445813: 56                                              push   esi
  00445814: 8b f1                                           mov    esi,ecx
  00445816: e8 15 fd ff ff                                  call   0x445530
  0044581b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0044581f: 74 09                                           je     0x44582a
  00445821: 56                                              push   esi
  00445822: e8 39 c8 ff ff                                  call   0x442060
  00445827: 83 c4 04                                        add    esp,0x4
  0044582a: 8b c6                                           mov    eax,esi
  0044582c: 5e                                              pop    esi
  0044582d: 5d                                              pop    ebp
  0044582e: c2 04 00                                        ret    0x4
  00445840: 55                                              push   ebp
  00445841: 8b ec                                           mov    ebp,esp
  00445843: 56                                              push   esi
  00445844: 8b f1                                           mov    esi,ecx
  00445846: e8 75 fe ff ff                                  call   0x4456c0
  0044584b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0044584f: 74 09                                           je     0x44585a
  00445851: 56                                              push   esi
  00445852: e8 09 c8 ff ff                                  call   0x442060
  00445857: 83 c4 04                                        add    esp,0x4
  0044585a: 8b c6                                           mov    eax,esi
  0044585c: 5e                                              pop    esi
  0044585d: 5d                                              pop    ebp
  0044585e: c2 04 00                                        ret    0x4
  00449a10: 55                                              push   ebp
  00449a11: 8b ec                                           mov    ebp,esp
  00449a13: 53                                              push   ebx
  00449a14: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  00449a17: f6 c3 02                                        test   bl,0x2
  00449a1a: 56                                              push   esi
  00449a1b: 8b f1                                           mov    esi,ecx
  00449a1d: 74 2f                                           je     0x449a4e
  00449a1f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  00449a22: 57                                              push   edi
  00449a23: 68 20 9b 44 00                                  push   0x449b20
  00449a28: 8d 7e fc                                        lea    edi,[esi-0x4]
  00449a2b: 50                                              push   eax
  00449a2c: 68 90 01 00 00                                  push   0x190
  00449a31: 56                                              push   esi
  00449a32: e8 59 81 08 00                                  call   0x4d1b90
  00449a37: f6 c3 01                                        test   bl,0x1
  00449a3a: 74 09                                           je     0x449a45
  00449a3c: 57                                              push   edi
  00449a3d: e8 4e 4a 08 00                                  call   0x4ce490
  00449a42: 83 c4 04                                        add    esp,0x4
  00449a45: 8b c7                                           mov    eax,edi
  00449a47: 5f                                              pop    edi
  00449a48: 5e                                              pop    esi
  00449a49: 5b                                              pop    ebx
  00449a4a: 5d                                              pop    ebp
  00449a4b: c2 04 00                                        ret    0x4
  00449a4e: 8b ce                                           mov    ecx,esi
  00449a50: e8 cb 00 00 00                                  call   0x449b20
  00449a55: f6 c3 01                                        test   bl,0x1
  00449a58: 74 09                                           je     0x449a63
  00449a5a: 56                                              push   esi
  00449a5b: e8 00 86 ff ff                                  call   0x442060
  00449a60: 83 c4 04                                        add    esp,0x4
  00449a63: 8b c6                                           mov    eax,esi
  00449a65: 5e                                              pop    esi
  00449a66: 5b                                              pop    ebx
  00449a67: 5d                                              pop    ebp
  00449a68: c2 04 00                                        ret    0x4
  00449a70: 55                                              push   ebp
  00449a71: 8b ec                                           mov    ebp,esp
  00449a73: 56                                              push   esi
  00449a74: 8b f1                                           mov    esi,ecx
  00449a76: e8 f5 13 00 00                                  call   0x44ae70
  00449a7b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00449a7f: 74 09                                           je     0x449a8a
  00449a81: 56                                              push   esi
  00449a82: e8 d9 85 ff ff                                  call   0x442060
  00449a87: 83 c4 04                                        add    esp,0x4
  00449a8a: 8b c6                                           mov    eax,esi
  00449a8c: 5e                                              pop    esi
  00449a8d: 5d                                              pop    ebp
  00449a8e: c2 04 00                                        ret    0x4
  0044be10: 55                                              push   ebp
  0044be11: 8b ec                                           mov    ebp,esp
  0044be13: 53                                              push   ebx
  0044be14: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  0044be17: f6 c3 02                                        test   bl,0x2
  0044be1a: 56                                              push   esi
  0044be1b: 8b f1                                           mov    esi,ecx
  0044be1d: 74 2f                                           je     0x44be4e
  0044be1f: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  0044be22: 57                                              push   edi
  0044be23: 68 70 be 44 00                                  push   0x44be70
  0044be28: 8d 7e fc                                        lea    edi,[esi-0x4]
  0044be2b: 50                                              push   eax
  0044be2c: 68 20 01 00 00                                  push   0x120
  0044be31: 56                                              push   esi
  0044be32: e8 59 5d 08 00                                  call   0x4d1b90
  0044be37: f6 c3 01                                        test   bl,0x1
  0044be3a: 74 09                                           je     0x44be45
  0044be3c: 57                                              push   edi
  0044be3d: e8 4e 26 08 00                                  call   0x4ce490
  0044be42: 83 c4 04                                        add    esp,0x4
  0044be45: 8b c7                                           mov    eax,edi
  0044be47: 5f                                              pop    edi
  0044be48: 5e                                              pop    esi
  0044be49: 5b                                              pop    ebx
  0044be4a: 5d                                              pop    ebp
  0044be4b: c2 04 00                                        ret    0x4
  0044be4e: 8b ce                                           mov    ecx,esi
  0044be50: e8 1b 00 00 00                                  call   0x44be70
  0044be55: f6 c3 01                                        test   bl,0x1
  0044be58: 74 09                                           je     0x44be63
  0044be5a: 56                                              push   esi
  0044be5b: e8 00 62 ff ff                                  call   0x442060
  0044be60: 83 c4 04                                        add    esp,0x4
  0044be63: 8b c6                                           mov    eax,esi
  0044be65: 5e                                              pop    esi
  0044be66: 5b                                              pop    ebx
  0044be67: 5d                                              pop    ebp
  0044be68: c2 04 00                                        ret    0x4
  0044c580: 83 e9 30                                        sub    ecx,0x30
  0044c583: e9 88 f8 ff ff                                  jmp    0x44be10
  0044f820: 55                                              push   ebp
  0044f821: 8b ec                                           mov    ebp,esp
  0044f823: 56                                              push   esi
  0044f824: 8b f1                                           mov    esi,ecx
  0044f826: e8 25 00 00 00                                  call   0x44f850
  0044f82b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0044f82f: 74 09                                           je     0x44f83a
  0044f831: 56                                              push   esi
  0044f832: e8 29 28 ff ff                                  call   0x442060
  0044f837: 83 c4 04                                        add    esp,0x4
  0044f83a: 8b c6                                           mov    eax,esi
  0044f83c: 5e                                              pop    esi
  0044f83d: 5d                                              pop    ebp
  0044f83e: c2 04 00                                        ret    0x4
  00450830: 55                                              push   ebp
  00450831: 8b ec                                           mov    ebp,esp
  00450833: 6a 00                                           push   0x0
  00450835: 68 cb 00 00 00                                  push   0xcb
  0045083a: e8 3f dd 07 00                                  call   0x4ce57e
  0045083f: 8b c8                                           mov    ecx,eax
  00450841: e8 32 dd 07 00                                  call   0x4ce578
  00450846: 8b 10                                           mov    edx,DWORD PTR [eax]
  00450848: 42                                              inc    edx
  00450849: 6a 00                                           push   0x0
  0045084b: 68 cc 00 00 00                                  push   0xcc
  00450850: 89 10                                           mov    DWORD PTR [eax],edx
  00450852: e8 27 dd 07 00                                  call   0x4ce57e
  00450857: 8b c8                                           mov    ecx,eax
  00450859: e8 1a dd 07 00                                  call   0x4ce578
  0045085e: 8b 10                                           mov    edx,DWORD PTR [eax]
  00450860: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00450863: 03 d1                                           add    edx,ecx
  00450865: 89 10                                           mov    DWORD PTR [eax],edx
  00450867: 5d                                              pop    ebp
  00450868: c2 04 00                                        ret    0x4
  00450870: 55                                              push   ebp
  00450871: 8b ec                                           mov    ebp,esp
  00450873: 6a 00                                           push   0x0
  00450875: 68 c9 00 00 00                                  push   0xc9
  0045087a: e8 ff dc 07 00                                  call   0x4ce57e
  0045087f: 8b c8                                           mov    ecx,eax
  00450881: e8 f2 dc 07 00                                  call   0x4ce578
  00450886: 8b 10                                           mov    edx,DWORD PTR [eax]
  00450888: 42                                              inc    edx
  00450889: 6a 00                                           push   0x0
  0045088b: 68 ca 00 00 00                                  push   0xca
  00450890: 89 10                                           mov    DWORD PTR [eax],edx
  00450892: e8 e7 dc 07 00                                  call   0x4ce57e
  00450897: 8b c8                                           mov    ecx,eax
  00450899: e8 da dc 07 00                                  call   0x4ce578
  0045089e: 8b 10                                           mov    edx,DWORD PTR [eax]
  004508a0: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004508a3: 03 d1                                           add    edx,ecx
  004508a5: 89 10                                           mov    DWORD PTR [eax],edx
  004508a7: 5d                                              pop    ebp
  004508a8: c2 04 00                                        ret    0x4
  004508b0: 6a 00                                           push   0x0
  004508b2: 68 d0 00 00 00                                  push   0xd0
  004508b7: e8 c2 dc 07 00                                  call   0x4ce57e
  004508bc: 8b c8                                           mov    ecx,eax
  004508be: e8 b5 dc 07 00                                  call   0x4ce578
  004508c3: ff 00                                           inc    DWORD PTR [eax]
  004508c5: c3                                              ret
  004508d0: 6a 00                                           push   0x0
  004508d2: 68 d1 00 00 00                                  push   0xd1
  004508d7: e8 a2 dc 07 00                                  call   0x4ce57e
  004508dc: 8b c8                                           mov    ecx,eax
  004508de: e8 95 dc 07 00                                  call   0x4ce578
  004508e3: ff 00                                           inc    DWORD PTR [eax]
  004508e5: c3                                              ret
  004508f0: 55                                              push   ebp
  004508f1: 8b ec                                           mov    ebp,esp
  004508f3: 6a 00                                           push   0x0
  004508f5: 68 cf 00 00 00                                  push   0xcf
  004508fa: e8 7f dc 07 00                                  call   0x4ce57e
  004508ff: 8b c8                                           mov    ecx,eax
  00450901: e8 72 dc 07 00                                  call   0x4ce578
  00450906: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00450909: 89 08                                           mov    DWORD PTR [eax],ecx
  0045090b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0045090e: 48                                              dec    eax
  0045090f: 74 0c                                           je     0x45091d
  00450911: 48                                              dec    eax
  00450912: 75 1e                                           jne    0x450932
  00450914: 6a 00                                           push   0x0
  00450916: 68 d8 00 00 00                                  push   0xd8
  0045091b: eb 07                                           jmp    0x450924
  0045091d: 6a 00                                           push   0x0
  0045091f: 68 d4 00 00 00                                  push   0xd4
  00450924: e8 55 dc 07 00                                  call   0x4ce57e
  00450929: 8b c8                                           mov    ecx,eax
  0045092b: e8 48 dc 07 00                                  call   0x4ce578
  00450930: ff 00                                           inc    DWORD PTR [eax]
  00450932: 5d                                              pop    ebp
  00450933: c2 08 00                                        ret    0x8
  00450940: 55                                              push   ebp
  00450941: 8b ec                                           mov    ebp,esp
  00450943: 6a 00                                           push   0x0
  00450945: 68 cd 00 00 00                                  push   0xcd
  0045094a: e8 2f dc 07 00                                  call   0x4ce57e
  0045094f: 8b c8                                           mov    ecx,eax
  00450951: e8 22 dc 07 00                                  call   0x4ce578
  00450956: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00450959: 89 08                                           mov    DWORD PTR [eax],ecx
  0045095b: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0045095e: 48                                              dec    eax
  0045095f: 74 0c                                           je     0x45096d
  00450961: 48                                              dec    eax
  00450962: 75 1e                                           jne    0x450982
  00450964: 6a 00                                           push   0x0
  00450966: 68 d9 00 00 00                                  push   0xd9
  0045096b: eb 07                                           jmp    0x450974
  0045096d: 6a 00                                           push   0x0
  0045096f: 68 d5 00 00 00                                  push   0xd5
  00450974: e8 05 dc 07 00                                  call   0x4ce57e
  00450979: 8b c8                                           mov    ecx,eax
  0045097b: e8 f8 db 07 00                                  call   0x4ce578
  00450980: ff 00                                           inc    DWORD PTR [eax]
  00450982: 5d                                              pop    ebp
  00450983: c2 08 00                                        ret    0x8
  00450990: 55                                              push   ebp
  00450991: 8b ec                                           mov    ebp,esp
  00450993: 6a 00                                           push   0x0
  00450995: 68 ce 00 00 00                                  push   0xce
  0045099a: e8 df db 07 00                                  call   0x4ce57e
  0045099f: 8b c8                                           mov    ecx,eax
  004509a1: e8 d2 db 07 00                                  call   0x4ce578
  004509a6: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004509a9: 89 08                                           mov    DWORD PTR [eax],ecx
  004509ab: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004509ae: 48                                              dec    eax
  004509af: 74 0c                                           je     0x4509bd
  004509b1: 48                                              dec    eax
  004509b2: 75 1e                                           jne    0x4509d2
  004509b4: 6a 00                                           push   0x0
  004509b6: 68 d7 00 00 00                                  push   0xd7
  004509bb: eb 07                                           jmp    0x4509c4
  004509bd: 6a 00                                           push   0x0
  004509bf: 68 d3 00 00 00                                  push   0xd3
  004509c4: e8 b5 db 07 00                                  call   0x4ce57e
  004509c9: 8b c8                                           mov    ecx,eax
  004509cb: e8 a8 db 07 00                                  call   0x4ce578
  004509d0: ff 00                                           inc    DWORD PTR [eax]
  004509d2: 5d                                              pop    ebp
  004509d3: c2 08 00                                        ret    0x8
  004509e0: 55                                              push   ebp
  004509e1: 8b ec                                           mov    ebp,esp
  004509e3: 6a 00                                           push   0x0
  004509e5: 68 d2 00 00 00                                  push   0xd2
  004509ea: e8 8f db 07 00                                  call   0x4ce57e
  004509ef: 8b c8                                           mov    ecx,eax
  004509f1: e8 82 db 07 00                                  call   0x4ce578
  004509f6: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004509f9: 89 08                                           mov    DWORD PTR [eax],ecx
  004509fb: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  004509fe: 48                                              dec    eax
  004509ff: 74 0c                                           je     0x450a0d
  00450a01: 48                                              dec    eax
  00450a02: 75 1e                                           jne    0x450a22
  00450a04: 6a 00                                           push   0x0
  00450a06: 68 da 00 00 00                                  push   0xda
  00450a0b: eb 07                                           jmp    0x450a14
  00450a0d: 6a 00                                           push   0x0
  00450a0f: 68 d6 00 00 00                                  push   0xd6
  00450a14: e8 65 db 07 00                                  call   0x4ce57e
  00450a19: 8b c8                                           mov    ecx,eax
  00450a1b: e8 58 db 07 00                                  call   0x4ce578
  00450a20: ff 00                                           inc    DWORD PTR [eax]
  00450a22: 5d                                              pop    ebp
  00450a23: c2 08 00                                        ret    0x8
  00454440: 55                                              push   ebp
  00454441: 8b ec                                           mov    ebp,esp
  00454443: 56                                              push   esi
  00454444: 8b f1                                           mov    esi,ecx
  00454446: e8 a5 fe ff ff                                  call   0x4542f0
  0045444b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0045444f: 74 09                                           je     0x45445a
  00454451: 56                                              push   esi
  00454452: e8 09 dc fe ff                                  call   0x442060
  00454457: 83 c4 04                                        add    esp,0x4
  0045445a: 8b c6                                           mov    eax,esi
  0045445c: 5e                                              pop    esi
  0045445d: 5d                                              pop    ebp
  0045445e: c2 04 00                                        ret    0x4
  00459590: 55                                              push   ebp
  00459591: 8b ec                                           mov    ebp,esp
  00459593: 56                                              push   esi
  00459594: 8b f1                                           mov    esi,ecx
  00459596: e8 25 00 00 00                                  call   0x4595c0
  0045959b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0045959f: 74 09                                           je     0x4595aa
  004595a1: 56                                              push   esi
  004595a2: e8 b9 8a fe ff                                  call   0x442060
  004595a7: 83 c4 04                                        add    esp,0x4
  004595aa: 8b c6                                           mov    eax,esi
  004595ac: 5e                                              pop    esi
  004595ad: 5d                                              pop    ebp
  004595ae: c2 04 00                                        ret    0x4
  0045a2f0: 55                                              push   ebp
  0045a2f1: 8b ec                                           mov    ebp,esp
  0045a2f3: 53                                              push   ebx
  0045a2f4: 8a 5d 08                                        mov    bl,BYTE PTR [ebp+0x8]
  0045a2f7: f6 c3 02                                        test   bl,0x2
  0045a2fa: 56                                              push   esi
  0045a2fb: 8b f1                                           mov    esi,ecx
  0045a2fd: 74 2f                                           je     0x45a32e
  0045a2ff: 8b 46 fc                                        mov    eax,DWORD PTR [esi-0x4]
  0045a302: 57                                              push   edi
  0045a303: 68 80 a3 45 00                                  push   0x45a380
  0045a308: 8d 7e fc                                        lea    edi,[esi-0x4]
  0045a30b: 50                                              push   eax
  0045a30c: 68 90 01 00 00                                  push   0x190
  0045a311: 56                                              push   esi
  0045a312: e8 79 78 07 00                                  call   0x4d1b90
  0045a317: f6 c3 01                                        test   bl,0x1
  0045a31a: 74 09                                           je     0x45a325
  0045a31c: 57                                              push   edi
  0045a31d: e8 6e 41 07 00                                  call   0x4ce490
  0045a322: 83 c4 04                                        add    esp,0x4
  0045a325: 8b c7                                           mov    eax,edi
  0045a327: 5f                                              pop    edi
  0045a328: 5e                                              pop    esi
  0045a329: 5b                                              pop    ebx
  0045a32a: 5d                                              pop    ebp
  0045a32b: c2 04 00                                        ret    0x4
  0045a32e: 8b ce                                           mov    ecx,esi
  0045a330: e8 4b 00 00 00                                  call   0x45a380
  0045a335: f6 c3 01                                        test   bl,0x1
  0045a338: 74 09                                           je     0x45a343
  0045a33a: 56                                              push   esi
  0045a33b: e8 20 7d fe ff                                  call   0x442060
  0045a340: 83 c4 04                                        add    esp,0x4
  0045a343: 8b c6                                           mov    eax,esi
  0045a345: 5e                                              pop    esi
  0045a346: 5b                                              pop    ebx
  0045a347: 5d                                              pop    ebp
  0045a348: c2 04 00                                        ret    0x4
  0045a760: 55                                              push   ebp
  0045a761: 8b ec                                           mov    ebp,esp
  0045a763: 56                                              push   esi
  0045a764: 8b f1                                           mov    esi,ecx
  0045a766: e8 25 00 00 00                                  call   0x45a790
  0045a76b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0045a76f: 74 09                                           je     0x45a77a
  0045a771: 56                                              push   esi
  0045a772: e8 e9 78 fe ff                                  call   0x442060
  0045a777: 83 c4 04                                        add    esp,0x4
  0045a77a: 8b c6                                           mov    eax,esi
  0045a77c: 5e                                              pop    esi
  0045a77d: 5d                                              pop    ebp
  0045a77e: c2 04 00                                        ret    0x4
  0045d500: 55                                              push   ebp
  0045d501: 8b ec                                           mov    ebp,esp
  0045d503: 6a ff                                           push   0xffffffff
  0045d505: 68 30 78 4d 00                                  push   0x4d7830
  0045d50a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0045d510: 50                                              push   eax
  0045d511: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0045d518: 83 ec 38                                        sub    esp,0x38
  0045d51b: 8a 45 13                                        mov    al,BYTE PTR [ebp+0x13]
  0045d51e: 53                                              push   ebx
  0045d51f: 56                                              push   esi
  0045d520: 57                                              push   edi
  0045d521: 33 db                                           xor    ebx,ebx
  0045d523: 53                                              push   ebx
  0045d524: 8b f1                                           mov    esi,ecx
  0045d526: 53                                              push   ebx
  0045d527: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045d52a: 88 45 bc                                        mov    BYTE PTR [ebp-0x44],al
  0045d52d: e8 5e 10 00 00                                  call   0x45e590
  0045d532: 89 45 c0                                        mov    DWORD PTR [ebp-0x40],eax
  0045d535: 89 5d c4                                        mov    DWORD PTR [ebp-0x3c],ebx
  0045d538: 8b 86 90 01 00 00                               mov    eax,DWORD PTR [esi+0x190]
  0045d53e: 83 c0 64                                        add    eax,0x64
  0045d541: 50                                              push   eax
  0045d542: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045d545: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  0045d548: e8 e3 07 00 00                                  call   0x45dd30
  0045d54d: 8a 4d 13                                        mov    cl,BYTE PTR [ebp+0x13]
  0045d550: 53                                              push   ebx
  0045d551: 88 4d c8                                        mov    BYTE PTR [ebp-0x38],cl
  0045d554: 53                                              push   ebx
  0045d555: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045d558: e8 b3 10 00 00                                  call   0x45e610
  0045d55d: 89 45 cc                                        mov    DWORD PTR [ebp-0x34],eax
  0045d560: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0045d563: 8b 86 90 01 00 00                               mov    eax,DWORD PTR [esi+0x190]
  0045d569: 83 c0 70                                        add    eax,0x70
  0045d56c: 50                                              push   eax
  0045d56d: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045d570: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045d574: e8 17 09 00 00                                  call   0x45de90
  0045d579: 8a 55 13                                        mov    dl,BYTE PTR [ebp+0x13]
  0045d57c: 53                                              push   ebx
  0045d57d: 53                                              push   ebx
  0045d57e: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045d581: 88 55 d4                                        mov    BYTE PTR [ebp-0x2c],dl
  0045d584: e8 07 11 00 00                                  call   0x45e690
  0045d589: 89 45 d8                                        mov    DWORD PTR [ebp-0x28],eax
  0045d58c: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0045d58f: 8b 86 90 01 00 00                               mov    eax,DWORD PTR [esi+0x190]
  0045d595: 83 c0 7c                                        add    eax,0x7c
  0045d598: 50                                              push   eax
  0045d599: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045d59c: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045d5a0: e8 2b 0a 00 00                                  call   0x45dfd0
  0045d5a5: 8a 45 13                                        mov    al,BYTE PTR [ebp+0x13]
  0045d5a8: 53                                              push   ebx
  0045d5a9: 53                                              push   ebx
  0045d5aa: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d5ad: 88 45 e0                                        mov    BYTE PTR [ebp-0x20],al
  0045d5b0: e8 5b 11 00 00                                  call   0x45e710
  0045d5b5: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  0045d5b8: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0045d5bb: 8b b6 90 01 00 00                               mov    esi,DWORD PTR [esi+0x190]
  0045d5c1: 81 c6 88 00 00 00                               add    esi,0x88
  0045d5c7: 56                                              push   esi
  0045d5c8: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d5cb: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0045d5cf: e8 3c 0b 00 00                                  call   0x45e110
  0045d5d4: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0045d5d7: 8a 01                                           mov    al,BYTE PTR [ecx]
  0045d5d9: 3c 01                                           cmp    al,0x1
  0045d5db: 0f 85 be 02 00 00                               jne    0x45d89f
  0045d5e1: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0045d5e4: 8a 01                                           mov    al,BYTE PTR [ecx]
  0045d5e6: 3c 01                                           cmp    al,0x1
  0045d5e8: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  0045d5eb: 0f 85 a4 01 00 00                               jne    0x45d795
  0045d5f1: 8b 4d c0                                        mov    ecx,DWORD PTR [ebp-0x40]
  0045d5f4: 3b cb                                           cmp    ecx,ebx
  0045d5f6: 89 5d 14                                        mov    DWORD PTR [ebp+0x14],ebx
  0045d5f9: 75 04                                           jne    0x45d5ff
  0045d5fb: 33 c0                                           xor    eax,eax
  0045d5fd: eb 02                                           jmp    0x45d601
  0045d5ff: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0045d601: 3b c1                                           cmp    eax,ecx
  0045d603: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  0045d606: 0f 84 d3 01 00 00                               je     0x45d7df
  0045d60c: 6a 01                                           push   0x1
  0045d60e: 6a 03                                           push   0x3
  0045d610: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  0045d613: e8 e8 07 00 00                                  call   0x45de00
  0045d618: 8b c8                                           mov    ecx,eax
  0045d61a: ff 15 24 e5 4d 00                               call   DWORD PTR ds:0x4de524
  0045d620: 51                                              push   ecx
  0045d621: 8b cc                                           mov    ecx,esp
  0045d623: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0045d626: 50                                              push   eax
  0045d627: e8 38 44 07 00                                  call   0x4d1a64
  0045d62c: e8 9f cc 02 00                                  call   0x48a2d0
  0045d631: 83 c4 0c                                        add    esp,0xc
  0045d634: 8b f8                                           mov    edi,eax
  0045d636: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0045d639: 66 39 78 02                                     cmp    WORD PTR [eax+0x2],di
  0045d63d: 74 12                                           je     0x45d651
  0045d63f: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0045d642: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0045d644: 3b 45 c0                                        cmp    eax,DWORD PTR [ebp-0x40]
  0045d647: 89 45 14                                        mov    DWORD PTR [ebp+0x14],eax
  0045d64a: 75 c0                                           jne    0x45d60c
  0045d64c: e9 8e 01 00 00                                  jmp    0x45d7df
  0045d651: 66 39 58 04                                     cmp    WORD PTR [eax+0x4],bx
  0045d655: 89 5d ec                                        mov    DWORD PTR [ebp-0x14],ebx
  0045d658: 76 58                                           jbe    0x45d6b2
  0045d65a: 8b 75 10                                        mov    esi,DWORD PTR [ebp+0x10]
  0045d65d: 8b 55 14                                        mov    edx,DWORD PTR [ebp+0x14]
  0045d660: 8b 06                                           mov    eax,DWORD PTR [esi]
  0045d662: 83 c2 08                                        add    edx,0x8
  0045d665: 8b ce                                           mov    ecx,esi
  0045d667: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0045d66a: ff 90 04 01 00 00                               call   DWORD PTR [eax+0x104]
  0045d670: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0045d673: 3b 41 10                                        cmp    eax,DWORD PTR [ecx+0x10]
  0045d676: 72 26                                           jb     0x45d69e
  0045d678: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  0045d67b: 53                                              push   ebx
  0045d67c: 53                                              push   ebx
  0045d67d: 53                                              push   ebx
  0045d67e: 57                                              push   edi
  0045d67f: 56                                              push   esi
  0045d680: 52                                              push   edx
  0045d681: e8 4a 84 fe ff                                  call   0x445ad0
  0045d686: 83 c4 18                                        add    esp,0x18
  0045d689: 85 c0                                           test   eax,eax
  0045d68b: 74 25                                           je     0x45d6b2
  0045d68d: 8b 45 14                                        mov    eax,DWORD PTR [ebp+0x14]
  0045d690: 8b 48 18                                        mov    ecx,DWORD PTR [eax+0x18]
  0045d693: 53                                              push   ebx
  0045d694: 56                                              push   esi
  0045d695: 51                                              push   ecx
  0045d696: e8 e5 94 fe ff                                  call   0x446b80
  0045d69b: 83 c4 0c                                        add    esp,0xc
  0045d69e: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0045d6a1: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  0045d6a4: 33 d2                                           xor    edx,edx
  0045d6a6: 66 8b 51 04                                     mov    dx,WORD PTR [ecx+0x4]
  0045d6aa: 40                                              inc    eax
  0045d6ab: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0045d6ae: 3b c2                                           cmp    eax,edx
  0045d6b0: 7c ab                                           jl     0x45d65d
  0045d6b2: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  0045d6b5: 52                                              push   edx
  0045d6b6: 8d 45 10                                        lea    eax,[ebp+0x10]
  0045d6b9: 50                                              push   eax
  0045d6ba: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d6bd: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045d6c1: e8 da 0a 00 00                                  call   0x45e1a0
  0045d6c6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045d6c8: 51                                              push   ecx
  0045d6c9: 8d 55 08                                        lea    edx,[ebp+0x8]
  0045d6cc: 52                                              push   edx
  0045d6cd: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d6d0: e8 eb 0f 00 00                                  call   0x45e6c0
  0045d6d5: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0045d6d8: 50                                              push   eax
  0045d6d9: e8 82 49 fe ff                                  call   0x442060
  0045d6de: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0045d6e1: 83 c4 04                                        add    esp,0x4
  0045d6e4: 51                                              push   ecx
  0045d6e5: 8d 55 10                                        lea    edx,[ebp+0x10]
  0045d6e8: 52                                              push   edx
  0045d6e9: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045d6ec: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0045d6ef: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0045d6f2: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045d6f6: e8 65 09 00 00                                  call   0x45e060
  0045d6fb: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045d6fd: 50                                              push   eax
  0045d6fe: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045d701: 51                                              push   ecx
  0045d702: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045d705: e8 36 0f 00 00                                  call   0x45e640
  0045d70a: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0045d70d: 52                                              push   edx
  0045d70e: e8 4d 49 fe ff                                  call   0x442060
  0045d713: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  0045d716: 83 c4 04                                        add    esp,0x4
  0045d719: 50                                              push   eax
  0045d71a: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0045d71d: 51                                              push   ecx
  0045d71e: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045d721: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  0045d724: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0045d727: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0045d72a: e8 f1 07 00 00                                  call   0x45df20
  0045d72f: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045d731: 52                                              push   edx
  0045d732: 8d 45 08                                        lea    eax,[ebp+0x8]
  0045d735: 50                                              push   eax
  0045d736: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045d739: e8 82 0e 00 00                                  call   0x45e5c0
  0045d73e: 8b 4d cc                                        mov    ecx,DWORD PTR [ebp-0x34]
  0045d741: 51                                              push   ecx
  0045d742: e8 19 49 fe ff                                  call   0x442060
  0045d747: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  0045d74a: 83 c4 04                                        add    esp,0x4
  0045d74d: 50                                              push   eax
  0045d74e: 8d 55 10                                        lea    edx,[ebp+0x10]
  0045d751: 52                                              push   edx
  0045d752: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045d755: 89 5d cc                                        mov    DWORD PTR [ebp-0x34],ebx
  0045d758: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0045d75b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045d762: e8 69 06 00 00                                  call   0x45ddd0
  0045d767: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045d769: 50                                              push   eax
  0045d76a: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045d76d: 51                                              push   ecx
  0045d76e: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045d771: e8 ba 0d 00 00                                  call   0x45e530
  0045d776: 8b 55 c0                                        mov    edx,DWORD PTR [ebp-0x40]
  0045d779: 52                                              push   edx
  0045d77a: e8 e1 48 fe ff                                  call   0x442060
  0045d77f: 83 c4 04                                        add    esp,0x4
  0045d782: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045d785: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045d78c: 5f                                              pop    edi
  0045d78d: 5e                                              pop    esi
  0045d78e: 5b                                              pop    ebx
  0045d78f: 8b e5                                           mov    esp,ebp
  0045d791: 5d                                              pop    ebp
  0045d792: c2 14 00                                        ret    0x14
  0045d795: 3c 02                                           cmp    al,0x2
  0045d797: 75 46                                           jne    0x45d7df
  0045d799: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  0045d79c: 3b c3                                           cmp    eax,ebx
  0045d79e: 75 04                                           jne    0x45d7a4
  0045d7a0: 33 f6                                           xor    esi,esi
  0045d7a2: eb 02                                           jmp    0x45d7a6
  0045d7a4: 8b 30                                           mov    esi,DWORD PTR [eax]
  0045d7a6: 3b f0                                           cmp    esi,eax
  0045d7a8: 74 35                                           je     0x45d7df
  0045d7aa: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0045d7ad: eb 03                                           jmp    0x45d7b2
  0045d7af: 8b 4d f0                                        mov    ecx,DWORD PTR [ebp-0x10]
  0045d7b2: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  0045d7b5: 51                                              push   ecx
  0045d7b6: 8b 4e 10                                        mov    ecx,DWORD PTR [esi+0x10]
  0045d7b9: 8d 45 10                                        lea    eax,[ebp+0x10]
  0045d7bc: 50                                              push   eax
  0045d7bd: 33 c0                                           xor    eax,eax
  0045d7bf: 66 8b 46 08                                     mov    ax,WORD PTR [esi+0x8]
  0045d7c3: 51                                              push   ecx
  0045d7c4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0045d7c7: 52                                              push   edx
  0045d7c8: 89 5d 10                                        mov    DWORD PTR [ebp+0x10],ebx
  0045d7cb: 50                                              push   eax
  0045d7cc: 57                                              push   edi
  0045d7cd: 51                                              push   ecx
  0045d7ce: e8 2d ab fe ff                                  call   0x448300
  0045d7d3: 8b 36                                           mov    esi,DWORD PTR [esi]
  0045d7d5: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  0045d7d8: 83 c4 1c                                        add    esp,0x1c
  0045d7db: 3b f0                                           cmp    esi,eax
  0045d7dd: 75 d0                                           jne    0x45d7af
  0045d7df: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  0045d7e2: 52                                              push   edx
  0045d7e3: 8d 45 10                                        lea    eax,[ebp+0x10]
  0045d7e6: 50                                              push   eax
  0045d7e7: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d7ea: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045d7ee: e8 ad 09 00 00                                  call   0x45e1a0
  0045d7f3: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045d7f5: 51                                              push   ecx
  0045d7f6: 8d 55 08                                        lea    edx,[ebp+0x8]
  0045d7f9: 52                                              push   edx
  0045d7fa: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d7fd: e8 be 0e 00 00                                  call   0x45e6c0
  0045d802: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0045d805: 50                                              push   eax
  0045d806: e8 55 48 fe ff                                  call   0x442060
  0045d80b: 8b 4d d8                                        mov    ecx,DWORD PTR [ebp-0x28]
  0045d80e: 83 c4 04                                        add    esp,0x4
  0045d811: 51                                              push   ecx
  0045d812: 8d 55 10                                        lea    edx,[ebp+0x10]
  0045d815: 52                                              push   edx
  0045d816: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045d819: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0045d81c: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0045d81f: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045d823: e8 38 08 00 00                                  call   0x45e060
  0045d828: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045d82a: 50                                              push   eax
  0045d82b: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045d82e: 51                                              push   ecx
  0045d82f: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045d832: e8 09 0e 00 00                                  call   0x45e640
  0045d837: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0045d83a: 52                                              push   edx
  0045d83b: e8 20 48 fe ff                                  call   0x442060
  0045d840: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  0045d843: 83 c4 04                                        add    esp,0x4
  0045d846: 50                                              push   eax
  0045d847: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0045d84a: 51                                              push   ecx
  0045d84b: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045d84e: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  0045d851: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0045d854: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0045d857: e8 c4 06 00 00                                  call   0x45df20
  0045d85c: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045d85e: 52                                              push   edx
  0045d85f: 8d 45 08                                        lea    eax,[ebp+0x8]
  0045d862: 50                                              push   eax
  0045d863: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045d866: e8 55 0d 00 00                                  call   0x45e5c0
  0045d86b: 8b 4d cc                                        mov    ecx,DWORD PTR [ebp-0x34]
  0045d86e: 51                                              push   ecx
  0045d86f: e8 ec 47 fe ff                                  call   0x442060
  0045d874: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  0045d877: 83 c4 04                                        add    esp,0x4
  0045d87a: 50                                              push   eax
  0045d87b: 8d 55 10                                        lea    edx,[ebp+0x10]
  0045d87e: 52                                              push   edx
  0045d87f: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045d882: 89 5d cc                                        mov    DWORD PTR [ebp-0x34],ebx
  0045d885: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0045d888: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045d88f: e8 3c 05 00 00                                  call   0x45ddd0
  0045d894: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045d896: 50                                              push   eax
  0045d897: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045d89a: e9 ce fe ff ff                                  jmp    0x45d76d
  0045d89f: 3c 02                                           cmp    al,0x2
  0045d8a1: 0f 85 b0 02 00 00                               jne    0x45db57
  0045d8a7: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0045d8aa: 3b c3                                           cmp    eax,ebx
  0045d8ac: 8b 49 04                                        mov    ecx,DWORD PTR [ecx+0x4]
  0045d8af: 75 04                                           jne    0x45d8b5
  0045d8b1: 33 ff                                           xor    edi,edi
  0045d8b3: eb 02                                           jmp    0x45d8b7
  0045d8b5: 8b 38                                           mov    edi,DWORD PTR [eax]
  0045d8b7: 3b f8                                           cmp    edi,eax
  0045d8b9: 0f 84 fe 02 00 00                               je     0x45dbbd
  0045d8bf: 33 f6                                           xor    esi,esi
  0045d8c1: 66 8b 31                                        mov    si,WORD PTR [ecx]
  0045d8c4: 39 77 08                                        cmp    DWORD PTR [edi+0x8],esi
  0045d8c7: 74 0b                                           je     0x45d8d4
  0045d8c9: 8b 3f                                           mov    edi,DWORD PTR [edi]
  0045d8cb: 3b f8                                           cmp    edi,eax
  0045d8cd: 75 f5                                           jne    0x45d8c4
  0045d8cf: e9 e9 02 00 00                                  jmp    0x45dbbd
  0045d8d4: 81 fe 10 27 00 00                               cmp    esi,0x2710
  0045d8da: 56                                              push   esi
  0045d8db: 0f 83 e4 01 00 00                               jae    0x45dac5
  0045d8e1: e8 aa 2d 00 00                                  call   0x460690
  0045d8e6: 83 c4 04                                        add    esp,0x4
  0045d8e9: 3b c3                                           cmp    eax,ebx
  0045d8eb: 0f 85 c0 00 00 00                               jne    0x45d9b1
  0045d8f1: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0045d8f4: 50                                              push   eax
  0045d8f5: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0045d8f8: 51                                              push   ecx
  0045d8f9: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d8fc: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045d900: e8 9b 08 00 00                                  call   0x45e1a0
  0045d905: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045d907: 52                                              push   edx
  0045d908: 8d 45 14                                        lea    eax,[ebp+0x14]
  0045d90b: 50                                              push   eax
  0045d90c: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d90f: e8 ac 0d 00 00                                  call   0x45e6c0
  0045d914: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0045d917: 51                                              push   ecx
  0045d918: e8 43 47 fe ff                                  call   0x442060
  0045d91d: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0045d920: 83 c4 04                                        add    esp,0x4
  0045d923: 52                                              push   edx
  0045d924: 8d 45 10                                        lea    eax,[ebp+0x10]
  0045d927: 50                                              push   eax
  0045d928: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045d92b: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0045d92e: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0045d931: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045d935: e8 26 07 00 00                                  call   0x45e060
  0045d93a: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045d93c: 51                                              push   ecx
  0045d93d: 8d 55 14                                        lea    edx,[ebp+0x14]
  0045d940: 52                                              push   edx
  0045d941: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045d944: e8 f7 0c 00 00                                  call   0x45e640
  0045d949: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  0045d94c: 50                                              push   eax
  0045d94d: e8 0e 47 fe ff                                  call   0x442060
  0045d952: 8b 4d cc                                        mov    ecx,DWORD PTR [ebp-0x34]
  0045d955: 83 c4 04                                        add    esp,0x4
  0045d958: 51                                              push   ecx
  0045d959: 8d 55 10                                        lea    edx,[ebp+0x10]
  0045d95c: 52                                              push   edx
  0045d95d: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045d960: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  0045d963: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0045d966: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0045d969: e8 b2 05 00 00                                  call   0x45df20
  0045d96e: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045d970: 50                                              push   eax
  0045d971: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  0045d974: 51                                              push   ecx
  0045d975: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045d978: e8 43 0c 00 00                                  call   0x45e5c0
  0045d97d: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  0045d980: 52                                              push   edx
  0045d981: e8 da 46 fe ff                                  call   0x442060
  0045d986: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  0045d989: 83 c4 04                                        add    esp,0x4
  0045d98c: 50                                              push   eax
  0045d98d: 8d 45 10                                        lea    eax,[ebp+0x10]
  0045d990: 50                                              push   eax
  0045d991: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045d994: 89 5d cc                                        mov    DWORD PTR [ebp-0x34],ebx
  0045d997: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0045d99a: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045d9a1: e8 2a 04 00 00                                  call   0x45ddd0
  0045d9a6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045d9a8: 51                                              push   ecx
  0045d9a9: 8d 55 14                                        lea    edx,[ebp+0x14]
  0045d9ac: e9 ec 00 00 00                                  jmp    0x45da9d
  0045d9b1: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045d9b4: e8 a5 40 07 00                                  call   0x4d1a5e
  0045d9b9: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0045d9bc: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045d9bf: 51                                              push   ecx
  0045d9c0: 52                                              push   edx
  0045d9c1: 56                                              push   esi
  0045d9c2: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0045d9c6: e8 c5 26 00 00                                  call   0x460090
  0045d9cb: 83 c4 0c                                        add    esp,0xc
  0045d9ce: 85 c0                                           test   eax,eax
  0045d9d0: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0045d9d4: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045d9d7: 0f 85 60 01 00 00                               jne    0x45db3d
  0045d9dd: e8 5e 40 07 00                                  call   0x4d1a40
  0045d9e2: 8b 45 e4                                        mov    eax,DWORD PTR [ebp-0x1c]
  0045d9e5: 50                                              push   eax
  0045d9e6: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0045d9e9: 51                                              push   ecx
  0045d9ea: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045d9ed: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045d9f1: e8 aa 07 00 00                                  call   0x45e1a0
  0045d9f6: 8b 10                                           mov    edx,DWORD PTR [eax]
  0045d9f8: 52                                              push   edx
  0045d9f9: 8d 45 14                                        lea    eax,[ebp+0x14]
  0045d9fc: 50                                              push   eax
  0045d9fd: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045da00: e8 bb 0c 00 00                                  call   0x45e6c0
  0045da05: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0045da08: 51                                              push   ecx
  0045da09: e8 52 46 fe ff                                  call   0x442060
  0045da0e: 8b 55 d8                                        mov    edx,DWORD PTR [ebp-0x28]
  0045da11: 83 c4 04                                        add    esp,0x4
  0045da14: 52                                              push   edx
  0045da15: 8d 45 10                                        lea    eax,[ebp+0x10]
  0045da18: 50                                              push   eax
  0045da19: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045da1c: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0045da1f: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0045da22: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045da26: e8 35 06 00 00                                  call   0x45e060
  0045da2b: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045da2d: 51                                              push   ecx
  0045da2e: 8d 55 14                                        lea    edx,[ebp+0x14]
  0045da31: 52                                              push   edx
  0045da32: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045da35: e8 06 0c 00 00                                  call   0x45e640
  0045da3a: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  0045da3d: 50                                              push   eax
  0045da3e: e8 1d 46 fe ff                                  call   0x442060
  0045da43: 8b 4d cc                                        mov    ecx,DWORD PTR [ebp-0x34]
  0045da46: 83 c4 04                                        add    esp,0x4
  0045da49: 51                                              push   ecx
  0045da4a: 8d 55 10                                        lea    edx,[ebp+0x10]
  0045da4d: 52                                              push   edx
  0045da4e: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045da51: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  0045da54: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0045da57: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0045da5a: e8 c1 04 00 00                                  call   0x45df20
  0045da5f: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045da61: 50                                              push   eax
  0045da62: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  0045da65: 51                                              push   ecx
  0045da66: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045da69: e8 52 0b 00 00                                  call   0x45e5c0
  0045da6e: 8b 55 cc                                        mov    edx,DWORD PTR [ebp-0x34]
  0045da71: 52                                              push   edx
  0045da72: e8 e9 45 fe ff                                  call   0x442060
  0045da77: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  0045da7a: 83 c4 04                                        add    esp,0x4
  0045da7d: 50                                              push   eax
  0045da7e: 8d 45 10                                        lea    eax,[ebp+0x10]
  0045da81: 50                                              push   eax
  0045da82: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045da85: 89 5d cc                                        mov    DWORD PTR [ebp-0x34],ebx
  0045da88: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  0045da8b: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045da92: e8 39 03 00 00                                  call   0x45ddd0
  0045da97: 8b 08                                           mov    ecx,DWORD PTR [eax]
  0045da99: 51                                              push   ecx
  0045da9a: 8d 55 14                                        lea    edx,[ebp+0x14]
  0045da9d: 52                                              push   edx
  0045da9e: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045daa1: e8 8a 0a 00 00                                  call   0x45e530
  0045daa6: 8b 45 c0                                        mov    eax,DWORD PTR [ebp-0x40]
  0045daa9: 50                                              push   eax
  0045daaa: e8 b1 45 fe ff                                  call   0x442060
  0045daaf: 83 c4 04                                        add    esp,0x4
  0045dab2: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045dab5: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045dabc: 5f                                              pop    edi
  0045dabd: 5e                                              pop    esi
  0045dabe: 5b                                              pop    ebx
  0045dabf: 8b e5                                           mov    esp,ebp
  0045dac1: 5d                                              pop    ebp
  0045dac2: c2 14 00                                        ret    0x14
  0045dac5: e8 66 47 00 00                                  call   0x462230
  0045daca: 83 c4 04                                        add    esp,0x4
  0045dacd: 3b c3                                           cmp    eax,ebx
  0045dacf: 75 3a                                           jne    0x45db0b
  0045dad1: 8b 4d e4                                        mov    ecx,DWORD PTR [ebp-0x1c]
  0045dad4: 51                                              push   ecx
  0045dad5: 8d 55 10                                        lea    edx,[ebp+0x10]
  0045dad8: 52                                              push   edx
  0045dad9: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045dadc: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045dae0: e8 bb 06 00 00                                  call   0x45e1a0
  0045dae5: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045dae7: 50                                              push   eax
  0045dae8: 8d 4d 14                                        lea    ecx,[ebp+0x14]
  0045daeb: 51                                              push   ecx
  0045daec: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045daef: e8 cc 0b 00 00                                  call   0x45e6c0
  0045daf4: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  0045daf7: 52                                              push   edx
  0045daf8: e8 63 45 fe ff                                  call   0x442060
  0045dafd: 83 c4 04                                        add    esp,0x4
  0045db00: 89 5d e4                                        mov    DWORD PTR [ebp-0x1c],ebx
  0045db03: 89 5d e8                                        mov    DWORD PTR [ebp-0x18],ebx
  0045db06: e9 be 00 00 00                                  jmp    0x45dbc9
  0045db0b: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045db0e: e8 4b 3f 07 00                                  call   0x4d1a5e
  0045db13: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0045db16: 8d 45 08                                        lea    eax,[ebp+0x8]
  0045db19: 50                                              push   eax
  0045db1a: 51                                              push   ecx
  0045db1b: 56                                              push   esi
  0045db1c: c6 45 fc 05                                     mov    BYTE PTR [ebp-0x4],0x5
  0045db20: e8 5b 48 00 00                                  call   0x462380
  0045db25: 83 c4 0c                                        add    esp,0xc
  0045db28: 85 c0                                           test   eax,eax
  0045db2a: c6 45 fc 03                                     mov    BYTE PTR [ebp-0x4],0x3
  0045db2e: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045db31: 75 0a                                           jne    0x45db3d
  0045db33: e8 08 3f 07 00                                  call   0x4d1a40
  0045db38: e9 80 00 00 00                                  jmp    0x45dbbd
  0045db3d: e8 fe 3e 07 00                                  call   0x4d1a40
  0045db42: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  0045db45: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0045db48: 52                                              push   edx
  0045db49: 6a 01                                           push   0x1
  0045db4b: 56                                              push   esi
  0045db4c: 50                                              push   eax
  0045db4d: e8 ce 83 fe ff                                  call   0x445f20
  0045db52: 83 c4 10                                        add    esp,0x10
  0045db55: eb 66                                           jmp    0x45dbbd
  0045db57: 3c 03                                           cmp    al,0x3
  0045db59: 75 62                                           jne    0x45dbbd
  0045db5b: 8b 71 04                                        mov    esi,DWORD PTR [ecx+0x4]
  0045db5e: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  0045db61: 51                                              push   ecx
  0045db62: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045db65: 89 5d f0                                        mov    DWORD PTR [ebp-0x10],ebx
  0045db68: e8 f3 04 00 00                                  call   0x45e060
  0045db6d: 8b 00                                           mov    eax,DWORD PTR [eax]
  0045db6f: 3b 45 d8                                        cmp    eax,DWORD PTR [ebp-0x28]
  0045db72: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  0045db75: 74 46                                           je     0x45dbbd
  0045db77: 8b 7d 10                                        mov    edi,DWORD PTR [ebp+0x10]
  0045db7a: 33 c9                                           xor    ecx,ecx
  0045db7c: 66 8b 0e                                        mov    cx,WORD PTR [esi]
  0045db7f: 8b d1                                           mov    edx,ecx
  0045db81: 81 e2 ff ff 00 00                               and    edx,0xffff
  0045db87: 39 50 08                                        cmp    DWORD PTR [eax+0x8],edx
  0045db8a: 75 1c                                           jne    0x45dba8
  0045db8c: 33 d2                                           xor    edx,edx
  0045db8e: 66 8b 50 0c                                     mov    dx,WORD PTR [eax+0xc]
  0045db92: 8b 40 10                                        mov    eax,DWORD PTR [eax+0x10]
  0045db95: 52                                              push   edx
  0045db96: 33 d2                                           xor    edx,edx
  0045db98: 66 8b 56 02                                     mov    dx,WORD PTR [esi+0x2]
  0045db9c: 50                                              push   eax
  0045db9d: 52                                              push   edx
  0045db9e: 51                                              push   ecx
  0045db9f: 57                                              push   edi
  0045dba0: e8 db 86 fe ff                                  call   0x446280
  0045dba5: 83 c4 14                                        add    esp,0x14
  0045dba8: 53                                              push   ebx
  0045dba9: 8d 45 ec                                        lea    eax,[ebp-0x14]
  0045dbac: 50                                              push   eax
  0045dbad: 8d 4d f0                                        lea    ecx,[ebp-0x10]
  0045dbb0: e8 db 04 00 00                                  call   0x45e090
  0045dbb5: 8b 45 f0                                        mov    eax,DWORD PTR [ebp-0x10]
  0045dbb8: 3b 45 d8                                        cmp    eax,DWORD PTR [ebp-0x28]
  0045dbbb: 75 bd                                           jne    0x45db7a
  0045dbbd: 8d 4d e0                                        lea    ecx,[ebp-0x20]
  0045dbc0: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0045dbc4: e8 e7 04 00 00                                  call   0x45e0b0
  0045dbc9: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045dbcc: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0045dbd0: e8 9b 03 00 00                                  call   0x45df70
  0045dbd5: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0045dbd8: 88 5d fc                                        mov    BYTE PTR [ebp-0x4],bl
  0045dbdb: e8 50 02 00 00                                  call   0x45de30
  0045dbe0: 8d 4d bc                                        lea    ecx,[ebp-0x44]
  0045dbe3: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  0045dbea: e8 d1 00 00 00                                  call   0x45dcc0
  0045dbef: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  0045dbf2: 5f                                              pop    edi
  0045dbf3: 5e                                              pop    esi
  0045dbf4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045dbfb: 5b                                              pop    ebx
  0045dbfc: 8b e5                                           mov    esp,ebp
  0045dbfe: 5d                                              pop    ebp
  0045dbff: c2 14 00                                        ret    0x14
  0045f430: 55                                              push   ebp
  0045f431: 8b ec                                           mov    ebp,esp
  0045f433: 56                                              push   esi
  0045f434: 8b f1                                           mov    esi,ecx
  0045f436: e8 e5 fc ff ff                                  call   0x45f120
  0045f43b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0045f43f: 74 09                                           je     0x45f44a
  0045f441: 56                                              push   esi
  0045f442: e8 19 2c fe ff                                  call   0x442060
  0045f447: 83 c4 04                                        add    esp,0x4
  0045f44a: 8b c6                                           mov    eax,esi
  0045f44c: 5e                                              pop    esi
  0045f44d: 5d                                              pop    ebp
  0045f44e: c2 04 00                                        ret    0x4
  0045f460: 55                                              push   ebp
  0045f461: 8b ec                                           mov    ebp,esp
  0045f463: 56                                              push   esi
  0045f464: 8b f1                                           mov    esi,ecx
  0045f466: e8 05 fe ff ff                                  call   0x45f270
  0045f46b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0045f46f: 74 09                                           je     0x45f47a
  0045f471: 56                                              push   esi
  0045f472: e8 e9 2b fe ff                                  call   0x442060
  0045f477: 83 c4 04                                        add    esp,0x4
  0045f47a: 8b c6                                           mov    eax,esi
  0045f47c: 5e                                              pop    esi
  0045f47d: 5d                                              pop    ebp
  0045f47e: c2 04 00                                        ret    0x4
  00460e20: 55                                              push   ebp
  00460e21: 8b ec                                           mov    ebp,esp
  00460e23: 56                                              push   esi
  00460e24: 8b f1                                           mov    esi,ecx
  00460e26: e8 a5 fe ff ff                                  call   0x460cd0
  00460e2b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00460e2f: 74 09                                           je     0x460e3a
  00460e31: 56                                              push   esi
  00460e32: e8 29 12 fe ff                                  call   0x442060
  00460e37: 83 c4 04                                        add    esp,0x4
  00460e3a: 8b c6                                           mov    eax,esi
  00460e3c: 5e                                              pop    esi
  00460e3d: 5d                                              pop    ebp
  00460e3e: c2 04 00                                        ret    0x4
  004629e0: 55                                              push   ebp
  004629e1: 8b ec                                           mov    ebp,esp
  004629e3: 56                                              push   esi
  004629e4: 8b f1                                           mov    esi,ecx
  004629e6: e8 45 fe ff ff                                  call   0x462830
  004629eb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004629ef: 74 09                                           je     0x4629fa
  004629f1: 56                                              push   esi
  004629f2: e8 69 f6 fd ff                                  call   0x442060
  004629f7: 83 c4 04                                        add    esp,0x4
  004629fa: 8b c6                                           mov    eax,esi
  004629fc: 5e                                              pop    esi
  004629fd: 5d                                              pop    ebp
  004629fe: c2 04 00                                        ret    0x4
  00472f70: 55                                              push   ebp
  00472f71: 8b ec                                           mov    ebp,esp
  00472f73: 56                                              push   esi
  00472f74: 8b f1                                           mov    esi,ecx
  00472f76: e8 25 00 00 00                                  call   0x472fa0
  00472f7b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00472f7f: 74 09                                           je     0x472f8a
  00472f81: 56                                              push   esi
  00472f82: e8 d9 f0 fc ff                                  call   0x442060
  00472f87: 83 c4 04                                        add    esp,0x4
  00472f8a: 8b c6                                           mov    eax,esi
  00472f8c: 5e                                              pop    esi
  00472f8d: 5d                                              pop    ebp
  00472f8e: c2 04 00                                        ret    0x4
  00473410: 55                                              push   ebp
  00473411: 8b ec                                           mov    ebp,esp
  00473413: 56                                              push   esi
  00473414: 8b f1                                           mov    esi,ecx
  00473416: e8 55 fd ff ff                                  call   0x473170
  0047341b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0047341f: 74 09                                           je     0x47342a
  00473421: 56                                              push   esi
  00473422: e8 39 ec fc ff                                  call   0x442060
  00473427: 83 c4 04                                        add    esp,0x4
  0047342a: 8b c6                                           mov    eax,esi
  0047342c: 5e                                              pop    esi
  0047342d: 5d                                              pop    ebp
  0047342e: c2 04 00                                        ret    0x4
  00473440: 55                                              push   ebp
  00473441: 8b ec                                           mov    ebp,esp
  00473443: 56                                              push   esi
  00473444: 8b f1                                           mov    esi,ecx
  00473446: e8 75 fe ff ff                                  call   0x4732c0
  0047344b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0047344f: 74 09                                           je     0x47345a
  00473451: 56                                              push   esi
  00473452: e8 09 ec fc ff                                  call   0x442060
  00473457: 83 c4 04                                        add    esp,0x4
  0047345a: 8b c6                                           mov    eax,esi
  0047345c: 5e                                              pop    esi
  0047345d: 5d                                              pop    ebp
  0047345e: c2 04 00                                        ret    0x4
  00473520: 55                                              push   ebp
  00473521: 8b ec                                           mov    ebp,esp
  00473523: 56                                              push   esi
  00473524: 8b f1                                           mov    esi,ecx
  00473526: e8 25 00 00 00                                  call   0x473550
  0047352b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0047352f: 74 09                                           je     0x47353a
  00473531: 56                                              push   esi
  00473532: e8 29 eb fc ff                                  call   0x442060
  00473537: 83 c4 04                                        add    esp,0x4
  0047353a: 8b c6                                           mov    eax,esi
  0047353c: 5e                                              pop    esi
  0047353d: 5d                                              pop    ebp
  0047353e: c2 04 00                                        ret    0x4
  00475670: b0 01                                           mov    al,0x1
  00475672: c3                                              ret
  00475680: b0 02                                           mov    al,0x2
  00475682: c3                                              ret
  00476190: 55                                              push   ebp
  00476191: 8b ec                                           mov    ebp,esp
  00476193: 6a ff                                           push   0xffffffff
  00476195: 68 f8 8f 4d 00                                  push   0x4d8ff8
  0047619a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004761a0: 50                                              push   eax
  004761a1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004761a8: 51                                              push   ecx
  004761a9: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  004761ac: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004761af: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004761b1: 52                                              push   edx
  004761b2: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004761b5: 52                                              push   edx
  004761b6: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004761bd: ff 50 10                                        call   DWORD PTR [eax+0x10]
  004761c0: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004761c3: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004761ca: 8b e5                                           mov    esp,ebp
  004761cc: 5d                                              pop    ebp
  004761cd: c2 08 00                                        ret    0x8
  004761d0: 55                                              push   ebp
  004761d1: 8b ec                                           mov    ebp,esp
  004761d3: 6a ff                                           push   0xffffffff
  004761d5: 68 18 90 4d 00                                  push   0x4d9018
  004761da: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004761e0: 50                                              push   eax
  004761e1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004761e8: 51                                              push   ecx
  004761e9: 89 4d f0                                        mov    DWORD PTR [ebp-0x10],ecx
  004761ec: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004761ef: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004761f1: 52                                              push   edx
  004761f2: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004761f5: 52                                              push   edx
  004761f6: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004761fd: ff 50 14                                        call   DWORD PTR [eax+0x14]
  00476200: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00476203: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0047620a: 8b e5                                           mov    esp,ebp
  0047620c: 5d                                              pop    ebp
  0047620d: c2 08 00                                        ret    0x8
  00476210: 55                                              push   ebp
  00476211: 8b ec                                           mov    ebp,esp
  00476213: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476216: 85 41 04                                        test   DWORD PTR [ecx+0x4],eax
  00476219: 0f 95 c0                                        setne  al
  0047621c: 5d                                              pop    ebp
  0047621d: c2 04 00                                        ret    0x4
  00476230: 55                                              push   ebp
  00476231: 8b ec                                           mov    ebp,esp
  00476233: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476236: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  00476239: 5d                                              pop    ebp
  0047623a: c2 04 00                                        ret    0x4
  00476240: 55                                              push   ebp
  00476241: 8b ec                                           mov    ebp,esp
  00476243: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476246: 85 41 04                                        test   DWORD PTR [ecx+0x4],eax
  00476249: 74 0a                                           je     0x476255
  0047624b: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  0047624e: 51                                              push   ecx
  0047624f: ff 15 bc e0 4d 00                               call   DWORD PTR ds:0x4de0bc
  00476255: 5d                                              pop    ebp
  00476256: c2 08 00                                        ret    0x8
  00476260: 55                                              push   ebp
  00476261: 8b ec                                           mov    ebp,esp
  00476263: 81 ec 00 04 00 00                               sub    esp,0x400
  00476269: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0047626c: 85 41 04                                        test   DWORD PTR [ecx+0x4],eax
  0047626f: 74 2a                                           je     0x47629b
  00476271: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00476274: 6a 00                                           push   0x0
  00476276: 6a 00                                           push   0x0
  00476278: 6a 04                                           push   0x4
  0047627a: 8d 8d 00 fc ff ff                               lea    ecx,[ebp-0x400]
  00476280: 51                                              push   ecx
  00476281: 6a ff                                           push   0xffffffff
  00476283: 52                                              push   edx
  00476284: 6a 00                                           push   0x0
  00476286: 6a 00                                           push   0x0
  00476288: ff 15 ac e0 4d 00                               call   DWORD PTR ds:0x4de0ac
  0047628e: 8d 85 00 fc ff ff                               lea    eax,[ebp-0x400]
  00476294: 50                                              push   eax
  00476295: ff 15 bc e0 4d 00                               call   DWORD PTR ds:0x4de0bc
  0047629b: 8b e5                                           mov    esp,ebp
  0047629d: 5d                                              pop    ebp
  0047629e: c2 08 00                                        ret    0x8
  004762b0: 55                                              push   ebp
  004762b1: 8b ec                                           mov    ebp,esp
  004762b3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004762b6: 89 41 04                                        mov    DWORD PTR [ecx+0x4],eax
  004762b9: 5d                                              pop    ebp
  004762ba: c2 04 00                                        ret    0x4
  004762c0: 55                                              push   ebp
  004762c1: 8b ec                                           mov    ebp,esp
  004762c3: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004762c6: 85 41 04                                        test   DWORD PTR [ecx+0x4],eax
  004762c9: 74 12                                           je     0x4762dd
  004762cb: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004762ce: 51                                              push   ecx
  004762cf: 68 10 a6 50 00                                  push   0x50a610
  004762d4: ff 15 88 e3 4d 00                               call   DWORD PTR ds:0x4de388
  004762da: 83 c4 08                                        add    esp,0x8
  004762dd: 5d                                              pop    ebp
  004762de: c2 08 00                                        ret    0x8
  004762f0: c2 08 00                                        ret    0x8
  00477cf0: 55                                              push   ebp
  00477cf1: 8b ec                                           mov    ebp,esp
  00477cf3: 56                                              push   esi
  00477cf4: 8b f1                                           mov    esi,ecx
  00477cf6: e8 25 00 00 00                                  call   0x477d20
  00477cfb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00477cff: 74 09                                           je     0x477d0a
  00477d01: 56                                              push   esi
  00477d02: e8 59 a3 fc ff                                  call   0x442060
  00477d07: 83 c4 04                                        add    esp,0x4
  00477d0a: 8b c6                                           mov    eax,esi
  00477d0c: 5e                                              pop    esi
  00477d0d: 5d                                              pop    ebp
  00477d0e: c2 04 00                                        ret    0x4
  00477e70: 55                                              push   ebp
  00477e71: 8b ec                                           mov    ebp,esp
  00477e73: 56                                              push   esi
  00477e74: 8b f1                                           mov    esi,ecx
  00477e76: e8 55 fa ff ff                                  call   0x4778d0
  00477e7b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00477e7f: 74 09                                           je     0x477e8a
  00477e81: 56                                              push   esi
  00477e82: e8 d9 a1 fc ff                                  call   0x442060
  00477e87: 83 c4 04                                        add    esp,0x4
  00477e8a: 8b c6                                           mov    eax,esi
  00477e8c: 5e                                              pop    esi
  00477e8d: 5d                                              pop    ebp
  00477e8e: c2 04 00                                        ret    0x4
  00477ea0: 55                                              push   ebp
  00477ea1: 8b ec                                           mov    ebp,esp
  00477ea3: 56                                              push   esi
  00477ea4: 8b f1                                           mov    esi,ecx
  00477ea6: e8 85 fb ff ff                                  call   0x477a30
  00477eab: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00477eaf: 74 09                                           je     0x477eba
  00477eb1: 56                                              push   esi
  00477eb2: e8 a9 a1 fc ff                                  call   0x442060
  00477eb7: 83 c4 04                                        add    esp,0x4
  00477eba: 8b c6                                           mov    eax,esi
  00477ebc: 5e                                              pop    esi
  00477ebd: 5d                                              pop    ebp
  00477ebe: c2 04 00                                        ret    0x4
  004784a0: 55                                              push   ebp
  004784a1: 8b ec                                           mov    ebp,esp
  004784a3: 56                                              push   esi
  004784a4: 8b f1                                           mov    esi,ecx
  004784a6: e8 f5 fe ff ff                                  call   0x4783a0
  004784ab: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004784af: 74 09                                           je     0x4784ba
  004784b1: 56                                              push   esi
  004784b2: e8 a9 9b fc ff                                  call   0x442060
  004784b7: 83 c4 04                                        add    esp,0x4
  004784ba: 8b c6                                           mov    eax,esi
  004784bc: 5e                                              pop    esi
  004784bd: 5d                                              pop    ebp
  004784be: c2 04 00                                        ret    0x4
  004785b0: 55                                              push   ebp
  004785b1: 8b ec                                           mov    ebp,esp
  004785b3: 56                                              push   esi
  004785b4: 8b f1                                           mov    esi,ecx
  004785b6: e8 55 ff ff ff                                  call   0x478510
  004785bb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004785bf: 74 09                                           je     0x4785ca
  004785c1: 56                                              push   esi
  004785c2: e8 99 9a fc ff                                  call   0x442060
  004785c7: 83 c4 04                                        add    esp,0x4
  004785ca: 8b c6                                           mov    eax,esi
  004785cc: 5e                                              pop    esi
  004785cd: 5d                                              pop    ebp
  004785ce: c2 04 00                                        ret    0x4
  00485c10: 55                                              push   ebp
  00485c11: 8b ec                                           mov    ebp,esp
  00485c13: 56                                              push   esi
  00485c14: 8b f1                                           mov    esi,ecx
  00485c16: e8 b5 fb ff ff                                  call   0x4857d0
  00485c1b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00485c1f: 74 09                                           je     0x485c2a
  00485c21: 56                                              push   esi
  00485c22: e8 39 c4 fb ff                                  call   0x442060
  00485c27: 83 c4 04                                        add    esp,0x4
  00485c2a: 8b c6                                           mov    eax,esi
  00485c2c: 5e                                              pop    esi
  00485c2d: 5d                                              pop    ebp
  00485c2e: c2 04 00                                        ret    0x4
  00485c40: 55                                              push   ebp
  00485c41: 8b ec                                           mov    ebp,esp
  00485c43: 56                                              push   esi
  00485c44: 8b f1                                           mov    esi,ecx
  00485c46: e8 15 fd ff ff                                  call   0x485960
  00485c4b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00485c4f: 74 09                                           je     0x485c5a
  00485c51: 56                                              push   esi
  00485c52: e8 09 c4 fb ff                                  call   0x442060
  00485c57: 83 c4 04                                        add    esp,0x4
  00485c5a: 8b c6                                           mov    eax,esi
  00485c5c: 5e                                              pop    esi
  00485c5d: 5d                                              pop    ebp
  00485c5e: c2 04 00                                        ret    0x4
  00489b20: 55                                              push   ebp
  00489b21: 8b ec                                           mov    ebp,esp
  00489b23: 56                                              push   esi
  00489b24: 8b f1                                           mov    esi,ecx
  00489b26: e8 a5 fc ff ff                                  call   0x4897d0
  00489b2b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00489b2f: 74 09                                           je     0x489b3a
  00489b31: 56                                              push   esi
  00489b32: e8 29 85 fb ff                                  call   0x442060
  00489b37: 83 c4 04                                        add    esp,0x4
  00489b3a: 8b c6                                           mov    eax,esi
  00489b3c: 5e                                              pop    esi
  00489b3d: 5d                                              pop    ebp
  00489b3e: c2 04 00                                        ret    0x4
  0048fae0: 55                                              push   ebp
  0048fae1: 8b ec                                           mov    ebp,esp
  0048fae3: 53                                              push   ebx
  0048fae4: 56                                              push   esi
  0048fae5: 8b f1                                           mov    esi,ecx
  0048fae7: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0048faea: 57                                              push   edi
  0048faeb: 8b 7d 08                                        mov    edi,DWORD PTR [ebp+0x8]
  0048faee: 3b cf                                           cmp    ecx,edi
  0048faf0: 75 09                                           jne    0x48fafb
  0048faf2: 5f                                              pop    edi
  0048faf3: 5e                                              pop    esi
  0048faf4: b0 01                                           mov    al,0x1
  0048faf6: 5b                                              pop    ebx
  0048faf7: 5d                                              pop    ebp
  0048faf8: c2 04 00                                        ret    0x4
  0048fafb: 8a 41 73                                        mov    al,BYTE PTR [ecx+0x73]
  0048fafe: b3 01                                           mov    bl,0x1
  0048fb00: 3a c3                                           cmp    al,bl
  0048fb02: 75 1e                                           jne    0x48fb22
  0048fb04: e8 e7 af f8 ff                                  call   0x41aaf0
  0048fb09: 8b c8                                           mov    ecx,eax
  0048fb0b: e8 d0 4f fc ff                                  call   0x454ae0
  0048fb10: 83 e2 10                                        and    edx,0x10
  0048fb13: 33 c0                                           xor    eax,eax
  0048fb15: 0b c2                                           or     eax,edx
  0048fb17: 74 09                                           je     0x48fb22
  0048fb19: 5f                                              pop    edi
  0048fb1a: 5e                                              pop    esi
  0048fb1b: 32 c0                                           xor    al,al
  0048fb1d: 5b                                              pop    ebx
  0048fb1e: 5d                                              pop    ebp
  0048fb1f: c2 04 00                                        ret    0x4
  0048fb22: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0048fb25: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0048fb27: 6a 00                                           push   0x0
  0048fb29: 68 52 4e 00 00                                  push   0x4e52
  0048fb2e: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0048fb31: 85 c0                                           test   eax,eax
  0048fb33: 74 14                                           je     0x48fb49
  0048fb35: 8b 17                                           mov    edx,DWORD PTR [edi]
  0048fb37: 6a 00                                           push   0x0
  0048fb39: 68 54 4e 00 00                                  push   0x4e54
  0048fb3e: 8b cf                                           mov    ecx,edi
  0048fb40: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0048fb43: 85 c0                                           test   eax,eax
  0048fb45: 75 02                                           jne    0x48fb49
  0048fb47: 32 db                                           xor    bl,bl
  0048fb49: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0048fb4c: 8b 01                                           mov    eax,DWORD PTR [ecx]
  0048fb4e: 6a 00                                           push   0x0
  0048fb50: 68 53 4e 00 00                                  push   0x4e53
  0048fb55: ff 50 0c                                        call   DWORD PTR [eax+0xc]
  0048fb58: 85 c0                                           test   eax,eax
  0048fb5a: 74 14                                           je     0x48fb70
  0048fb5c: 8b 17                                           mov    edx,DWORD PTR [edi]
  0048fb5e: 6a 00                                           push   0x0
  0048fb60: 68 55 4e 00 00                                  push   0x4e55
  0048fb65: 8b cf                                           mov    ecx,edi
  0048fb67: ff 52 0c                                        call   DWORD PTR [edx+0xc]
  0048fb6a: 85 c0                                           test   eax,eax
  0048fb6c: 75 02                                           jne    0x48fb70
  0048fb6e: 32 db                                           xor    bl,bl
  0048fb70: 5f                                              pop    edi
  0048fb71: 5e                                              pop    esi
  0048fb72: 8a c3                                           mov    al,bl
  0048fb74: 5b                                              pop    ebx
  0048fb75: 5d                                              pop    ebp
  0048fb76: c2 04 00                                        ret    0x4
  00490710: 55                                              push   ebp
  00490711: 8b ec                                           mov    ebp,esp
  00490713: 56                                              push   esi
  00490714: 8b f1                                           mov    esi,ecx
  00490716: e8 85 fa ff ff                                  call   0x4901a0
  0049071b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0049071f: 74 09                                           je     0x49072a
  00490721: 56                                              push   esi
  00490722: e8 39 19 fb ff                                  call   0x442060
  00490727: 83 c4 04                                        add    esp,0x4
  0049072a: 8b c6                                           mov    eax,esi
  0049072c: 5e                                              pop    esi
  0049072d: 5d                                              pop    ebp
  0049072e: c2 04 00                                        ret    0x4
  00490740: 55                                              push   ebp
  00490741: 8b ec                                           mov    ebp,esp
  00490743: 56                                              push   esi
  00490744: 8b f1                                           mov    esi,ecx
  00490746: e8 25 00 00 00                                  call   0x490770
  0049074b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0049074f: 74 09                                           je     0x49075a
  00490751: 56                                              push   esi
  00490752: e8 09 19 fb ff                                  call   0x442060
  00490757: 83 c4 04                                        add    esp,0x4
  0049075a: 8b c6                                           mov    eax,esi
  0049075c: 5e                                              pop    esi
  0049075d: 5d                                              pop    ebp
  0049075e: c2 04 00                                        ret    0x4
  004908c0: 55                                              push   ebp
  004908c1: 8b ec                                           mov    ebp,esp
  004908c3: 56                                              push   esi
  004908c4: 8b f1                                           mov    esi,ecx
  004908c6: e8 f5 fa ff ff                                  call   0x4903c0
  004908cb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004908cf: 74 09                                           je     0x4908da
  004908d1: 56                                              push   esi
  004908d2: e8 89 17 fb ff                                  call   0x442060
  004908d7: 83 c4 04                                        add    esp,0x4
  004908da: 8b c6                                           mov    eax,esi
  004908dc: 5e                                              pop    esi
  004908dd: 5d                                              pop    ebp
  004908de: c2 04 00                                        ret    0x4
  00490f10: 55                                              push   ebp
  00490f11: 8b ec                                           mov    ebp,esp
  00490f13: 56                                              push   esi
  00490f14: 8b f1                                           mov    esi,ecx
  00490f16: e8 a5 fe ff ff                                  call   0x490dc0
  00490f1b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00490f1f: 74 09                                           je     0x490f2a
  00490f21: 56                                              push   esi
  00490f22: e8 39 11 fb ff                                  call   0x442060
  00490f27: 83 c4 04                                        add    esp,0x4
  00490f2a: 8b c6                                           mov    eax,esi
  00490f2c: 5e                                              pop    esi
  00490f2d: 5d                                              pop    ebp
  00490f2e: c2 04 00                                        ret    0x4
  00491110: 55                                              push   ebp
  00491111: 8b ec                                           mov    ebp,esp
  00491113: 56                                              push   esi
  00491114: 8b f1                                           mov    esi,ecx
  00491116: e8 25 00 00 00                                  call   0x491140
  0049111b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  0049111f: 74 09                                           je     0x49112a
  00491121: 56                                              push   esi
  00491122: e8 39 0f fb ff                                  call   0x442060
  00491127: 83 c4 04                                        add    esp,0x4
  0049112a: 8b c6                                           mov    eax,esi
  0049112c: 5e                                              pop    esi
  0049112d: 5d                                              pop    ebp
  0049112e: c2 04 00                                        ret    0x4
  004911b0: 55                                              push   ebp
  004911b1: 8b ec                                           mov    ebp,esp
  004911b3: 56                                              push   esi
  004911b4: 8b f1                                           mov    esi,ecx
  004911b6: e8 25 00 00 00                                  call   0x4911e0
  004911bb: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  004911bf: 74 09                                           je     0x4911ca
  004911c1: 56                                              push   esi
  004911c2: e8 99 0e fb ff                                  call   0x442060
  004911c7: 83 c4 04                                        add    esp,0x4
  004911ca: 8b c6                                           mov    eax,esi
  004911cc: 5e                                              pop    esi
  004911cd: 5d                                              pop    ebp
  004911ce: c2 04 00                                        ret    0x4
  00491230: 55                                              push   ebp
  00491231: 8b ec                                           mov    ebp,esp
  00491233: 81 ec 00 08 00 00                               sub    esp,0x800
  00491239: 53                                              push   ebx
  0049123a: 56                                              push   esi
  0049123b: 57                                              push   edi
  0049123c: 8b f9                                           mov    edi,ecx
  0049123e: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00491241: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00491244: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00491246: 68 dc e3 50 00                                  push   0x50e3dc
  0049124b: 52                                              push   edx
  0049124c: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0049124f: 8b 47 1c                                        mov    eax,DWORD PTR [edi+0x1c]
  00491252: 8b 4f 20                                        mov    ecx,DWORD PTR [edi+0x20]
  00491255: 33 d2                                           xor    edx,edx
  00491257: 3b c1                                           cmp    eax,ecx
  00491259: 74 0d                                           je     0x491268
  0049125b: 80 38 00                                        cmp    BYTE PTR [eax],0x0
  0049125e: 75 01                                           jne    0x491261
  00491260: 42                                              inc    edx
  00491261: 83 c0 1c                                        add    eax,0x1c
  00491264: 3b c1                                           cmp    eax,ecx
  00491266: 75 f3                                           jne    0x49125b
  00491268: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0049126b: 52                                              push   edx
  0049126c: e8 5f 86 00 00                                  call   0x4998d0
  00491271: 8b 77 1c                                        mov    esi,DWORD PTR [edi+0x1c]
  00491274: 3b 77 20                                        cmp    esi,DWORD PTR [edi+0x20]
  00491277: 0f 84 9f 00 00 00                               je     0x49131c
  0049127d: 80 3e 00                                        cmp    BYTE PTR [esi],0x0
  00491280: 0f 85 88 00 00 00                               jne    0x49130e
  00491286: 8b 4e 18                                        mov    ecx,DWORD PTR [esi+0x18]
  00491289: 8b 47 10                                        mov    eax,DWORD PTR [edi+0x10]
  0049128c: 8b 56 14                                        mov    edx,DWORD PTR [esi+0x14]
  0049128f: 51                                              push   ecx
  00491290: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00491293: 52                                              push   edx
  00491294: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00491297: c6 85 00 f8 ff ff 00                            mov    BYTE PTR [ebp-0x800],0x0
  0049129e: 8b 18                                           mov    ebx,DWORD PTR [eax]
  004912a0: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004912a3: 50                                              push   eax
  004912a4: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004912a7: 51                                              push   ecx
  004912a8: 52                                              push   edx
  004912a9: 50                                              push   eax
  004912aa: 8d 8d 00 f8 ff ff                               lea    ecx,[ebp-0x800]
  004912b0: 68 a8 e3 50 00                                  push   0x50e3a8
  004912b5: 51                                              push   ecx
  004912b6: e8 85 26 f7 ff                                  call   0x403940
  004912bb: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004912be: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  004912c1: 83 c4 20                                        add    esp,0x20
  004912c4: 50                                              push   eax
  004912c5: 52                                              push   edx
  004912c6: ff 53 04                                        call   DWORD PTR [ebx+0x4]
  004912c9: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004912cc: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004912cf: 50                                              push   eax
  004912d0: 8b cb                                           mov    ecx,ebx
  004912d2: e8 b9 86 00 00                                  call   0x499990
  004912d7: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004912da: 51                                              push   ecx
  004912db: 8b cb                                           mov    ecx,ebx
  004912dd: e8 ae 86 00 00                                  call   0x499990
  004912e2: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004912e5: 52                                              push   edx
  004912e6: 8b cb                                           mov    ecx,ebx
  004912e8: e8 a3 86 00 00                                  call   0x499990
  004912ed: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  004912f0: 50                                              push   eax
  004912f1: 8b cb                                           mov    ecx,ebx
  004912f3: e8 98 86 00 00                                  call   0x499990
  004912f8: 8b 4e 14                                        mov    ecx,DWORD PTR [esi+0x14]
  004912fb: 51                                              push   ecx
  004912fc: 8b cb                                           mov    ecx,ebx
  004912fe: e8 8d 86 00 00                                  call   0x499990
  00491303: 8b 56 18                                        mov    edx,DWORD PTR [esi+0x18]
  00491306: 52                                              push   edx
  00491307: 8b cb                                           mov    ecx,ebx
  00491309: e8 82 86 00 00                                  call   0x499990
  0049130e: 8b 47 20                                        mov    eax,DWORD PTR [edi+0x20]
  00491311: 83 c6 1c                                        add    esi,0x1c
  00491314: 3b f0                                           cmp    esi,eax
  00491316: 0f 85 61 ff ff ff                               jne    0x49127d
  0049131c: 5f                                              pop    edi
  0049131d: 5e                                              pop    esi
  0049131e: 5b                                              pop    ebx
  0049131f: 8b e5                                           mov    esp,ebp
  00491321: 5d                                              pop    ebp
  00491322: c2 04 00                                        ret    0x4
  00491330: 55                                              push   ebp
  00491331: 8b ec                                           mov    ebp,esp
  00491333: 81 ec 24 08 00 00                               sub    esp,0x824
  00491339: 53                                              push   ebx
  0049133a: 56                                              push   esi
  0049133b: 57                                              push   edi
  0049133c: 8b f9                                           mov    edi,ecx
  0049133e: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00491341: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  00491344: 68 54 e4 50 00                                  push   0x50e454
  00491349: c7 45 fc ef cd ab 00                            mov    DWORD PTR [ebp-0x4],0xabcdef
  00491350: c6 85 dc f7 ff ff 00                            mov    BYTE PTR [ebp-0x824],0x0
  00491357: 8b 01                                           mov    eax,DWORD PTR [ecx]
  00491359: 52                                              push   edx
  0049135a: ff 50 04                                        call   DWORD PTR [eax+0x4]
  0049135d: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  00491360: 8d 45 fc                                        lea    eax,[ebp-0x4]
  00491363: 50                                              push   eax
  00491364: 8b ce                                           mov    ecx,esi
  00491366: e8 15 88 00 00                                  call   0x499b80
  0049136b: 8b 55 fc                                        mov    edx,DWORD PTR [ebp-0x4]
  0049136e: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00491371: 8b 19                                           mov    ebx,DWORD PTR [ecx]
  00491373: 52                                              push   edx
  00491374: 8d 85 dc f7 ff ff                               lea    eax,[ebp-0x824]
  0049137a: 68 3c e4 50 00                                  push   0x50e43c
  0049137f: 50                                              push   eax
  00491380: e8 bb 25 f7 ff                                  call   0x403940
  00491385: 8b 4f 0c                                        mov    ecx,DWORD PTR [edi+0xc]
  00491388: 83 c4 0c                                        add    esp,0xc
  0049138b: 50                                              push   eax
  0049138c: 51                                              push   ecx
  0049138d: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00491390: ff 53 04                                        call   DWORD PTR [ebx+0x4]
  00491393: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00491396: 33 c0                                           xor    eax,eax
  00491398: 3b c8                                           cmp    ecx,eax
  0049139a: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  0049139d: 0f 86 ca 00 00 00                               jbe    0x49146d
  004913a3: eb 02                                           jmp    0x4913a7
  004913a5: 33 c0                                           xor    eax,eax
  004913a7: 8d 55 e4                                        lea    edx,[ebp-0x1c]
  004913aa: 52                                              push   edx
  004913ab: 8b ce                                           mov    ecx,esi
  004913ad: 88 45 e0                                        mov    BYTE PTR [ebp-0x20],al
  004913b0: 89 45 e4                                        mov    DWORD PTR [ebp-0x1c],eax
  004913b3: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004913b6: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004913b9: 89 45 f0                                        mov    DWORD PTR [ebp-0x10],eax
  004913bc: 89 45 f4                                        mov    DWORD PTR [ebp-0xc],eax
  004913bf: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004913c2: e8 69 89 00 00                                  call   0x499d30
  004913c7: 8d 45 e8                                        lea    eax,[ebp-0x18]
  004913ca: 50                                              push   eax
  004913cb: 8b ce                                           mov    ecx,esi
  004913cd: e8 5e 89 00 00                                  call   0x499d30
  004913d2: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004913d5: 51                                              push   ecx
  004913d6: 8b ce                                           mov    ecx,esi
  004913d8: e8 53 89 00 00                                  call   0x499d30
  004913dd: 8d 55 f0                                        lea    edx,[ebp-0x10]
  004913e0: 52                                              push   edx
  004913e1: 8b ce                                           mov    ecx,esi
  004913e3: e8 48 89 00 00                                  call   0x499d30
  004913e8: 8d 45 f4                                        lea    eax,[ebp-0xc]
  004913eb: 50                                              push   eax
  004913ec: 8b ce                                           mov    ecx,esi
  004913ee: e8 3d 89 00 00                                  call   0x499d30
  004913f3: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  004913f6: 51                                              push   ecx
  004913f7: 8b ce                                           mov    ecx,esi
  004913f9: e8 32 89 00 00                                  call   0x499d30
  004913fe: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  00491401: 8b 57 10                                        mov    edx,DWORD PTR [edi+0x10]
  00491404: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00491407: 8b 1a                                           mov    ebx,DWORD PTR [edx]
  00491409: 8b 55 f0                                        mov    edx,DWORD PTR [ebp-0x10]
  0049140c: 50                                              push   eax
  0049140d: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00491410: 51                                              push   ecx
  00491411: 8b 4d e8                                        mov    ecx,DWORD PTR [ebp-0x18]
  00491414: 52                                              push   edx
  00491415: 8b 55 e4                                        mov    edx,DWORD PTR [ebp-0x1c]
  00491418: 50                                              push   eax
  00491419: 51                                              push   ecx
  0049141a: 52                                              push   edx
  0049141b: 8d 85 dc f7 ff ff                               lea    eax,[ebp-0x824]
  00491421: 68 08 e4 50 00                                  push   0x50e408
  00491426: 50                                              push   eax
  00491427: e8 14 25 f7 ff                                  call   0x403940
  0049142c: 8b 4f 0c                                        mov    ecx,DWORD PTR [edi+0xc]
  0049142f: 83 c4 20                                        add    esp,0x20
  00491432: 50                                              push   eax
  00491433: 51                                              push   ecx
  00491434: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00491437: ff 53 04                                        call   DWORD PTR [ebx+0x4]
  0049143a: 8a 55 0c                                        mov    dl,BYTE PTR [ebp+0xc]
  0049143d: 8d 45 e0                                        lea    eax,[ebp-0x20]
  00491440: 50                                              push   eax
  00491441: 51                                              push   ecx
  00491442: 8d 5f 18                                        lea    ebx,[edi+0x18]
  00491445: 54                                              push   esp
  00491446: 8b cb                                           mov    ecx,ebx
  00491448: 88 55 e0                                        mov    BYTE PTR [ebp-0x20],dl
  0049144b: e8 f0 01 00 00                                  call   0x491640
  00491450: 8d 4d dc                                        lea    ecx,[ebp-0x24]
  00491453: 51                                              push   ecx
  00491454: 8b cb                                           mov    ecx,ebx
  00491456: e8 f5 01 00 00                                  call   0x491650
  0049145b: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0049145e: 8b 4d fc                                        mov    ecx,DWORD PTR [ebp-0x4]
  00491461: 40                                              inc    eax
  00491462: 3b c1                                           cmp    eax,ecx
  00491464: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00491467: 0f 82 38 ff ff ff                               jb     0x4913a5
  0049146d: 5f                                              pop    edi
  0049146e: 5e                                              pop    esi
  0049146f: 5b                                              pop    ebx
  00491470: 8b e5                                           mov    esp,ebp
  00491472: 5d                                              pop    ebp
  00491473: c2 08 00                                        ret    0x8
  00491480: 55                                              push   ebp
  00491481: 8b ec                                           mov    ebp,esp
  00491483: 6a ff                                           push   0xffffffff
  00491485: 68 88 a9 4d 00                                  push   0x4da988
  0049148a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00491490: 50                                              push   eax
  00491491: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00491498: 81 ec 34 08 00 00                               sub    esp,0x834
  0049149e: 56                                              push   esi
  0049149f: 57                                              push   edi
  004914a0: 8b f9                                           mov    edi,ecx
  004914a2: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  004914a5: 8b 57 04                                        mov    edx,DWORD PTR [edi+0x4]
  004914a8: 8b 01                                           mov    eax,DWORD PTR [ecx]
  004914aa: 68 b8 e4 50 00                                  push   0x50e4b8
  004914af: 52                                              push   edx
  004914b0: 89 7d c4                                        mov    DWORD PTR [ebp-0x3c],edi
  004914b3: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004914b6: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004914b9: 8b ce                                           mov    ecx,esi
  004914bb: e8 a6 06 04 00                                  call   0x4d1b66
  004914c0: 85 c0                                           test   eax,eax
  004914c2: 0f 85 47 01 00 00                               jne    0x49160f
  004914c8: 8b ce                                           mov    ecx,esi
  004914ca: e8 91 06 04 00                                  call   0x4d1b60
  004914cf: 8b ce                                           mov    ecx,esi
  004914d1: e8 90 06 04 00                                  call   0x4d1b66
  004914d6: 85 c0                                           test   eax,eax
  004914d8: 0f 85 31 01 00 00                               jne    0x49160f
  004914de: 53                                              push   ebx
  004914df: 33 db                                           xor    ebx,ebx
  004914e1: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004914e4: 50                                              push   eax
  004914e5: e8 70 06 04 00                                  call   0x4d1b5a
  004914ea: 8b 16                                           mov    edx,DWORD PTR [esi]
  004914ec: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004914ef: 50                                              push   eax
  004914f0: 68 b0 e4 50 00                                  push   0x50e4b0
  004914f5: 8b ce                                           mov    ecx,esi
  004914f7: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004914fa: 88 5d c8                                        mov    BYTE PTR [ebp-0x38],bl
  004914fd: 89 5d cc                                        mov    DWORD PTR [ebp-0x34],ebx
  00491500: 89 5d d0                                        mov    DWORD PTR [ebp-0x30],ebx
  00491503: 89 5d d4                                        mov    DWORD PTR [ebp-0x2c],ebx
  00491506: 89 5d d8                                        mov    DWORD PTR [ebp-0x28],ebx
  00491509: 89 5d dc                                        mov    DWORD PTR [ebp-0x24],ebx
  0049150c: 89 5d e0                                        mov    DWORD PTR [ebp-0x20],ebx
  0049150f: ff 52 4c                                        call   DWORD PTR [edx+0x4c]
  00491512: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00491515: 8b 16                                           mov    edx,DWORD PTR [esi]
  00491517: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0049151a: 50                                              push   eax
  0049151b: 89 4d cc                                        mov    DWORD PTR [ebp-0x34],ecx
  0049151e: 68 a8 e4 50 00                                  push   0x50e4a8
  00491523: 8b ce                                           mov    ecx,esi
  00491525: ff 52 4c                                        call   DWORD PTR [edx+0x4c]
  00491528: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0049152b: 8b 16                                           mov    edx,DWORD PTR [esi]
  0049152d: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00491530: 50                                              push   eax
  00491531: 89 4d d0                                        mov    DWORD PTR [ebp-0x30],ecx
  00491534: 68 9c e4 50 00                                  push   0x50e49c
  00491539: 8b ce                                           mov    ecx,esi
  0049153b: ff 52 4c                                        call   DWORD PTR [edx+0x4c]
  0049153e: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00491541: 8b 16                                           mov    edx,DWORD PTR [esi]
  00491543: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00491546: 50                                              push   eax
  00491547: 89 4d d4                                        mov    DWORD PTR [ebp-0x2c],ecx
  0049154a: 68 94 e4 50 00                                  push   0x50e494
  0049154f: 8b ce                                           mov    ecx,esi
  00491551: ff 52 4c                                        call   DWORD PTR [edx+0x4c]
  00491554: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  00491557: 8b 16                                           mov    edx,DWORD PTR [esi]
  00491559: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0049155c: 50                                              push   eax
  0049155d: 89 4d d8                                        mov    DWORD PTR [ebp-0x28],ecx
  00491560: 68 8c e4 50 00                                  push   0x50e48c
  00491565: 8b ce                                           mov    ecx,esi
  00491567: ff 52 4c                                        call   DWORD PTR [edx+0x4c]
  0049156a: 8b 4d ec                                        mov    ecx,DWORD PTR [ebp-0x14]
  0049156d: 8b 16                                           mov    edx,DWORD PTR [esi]
  0049156f: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  00491572: 50                                              push   eax
  00491573: 89 4d dc                                        mov    DWORD PTR [ebp-0x24],ecx
  00491576: 68 80 e4 50 00                                  push   0x50e480
  0049157b: 8b ce                                           mov    ecx,esi
  0049157d: ff 52 4c                                        call   DWORD PTR [edx+0x4c]
  00491580: 8b 45 ec                                        mov    eax,DWORD PTR [ebp-0x14]
  00491583: 8b 55 dc                                        mov    edx,DWORD PTR [ebp-0x24]
  00491586: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  00491589: 50                                              push   eax
  0049158a: 52                                              push   edx
  0049158b: 8b 55 d0                                        mov    edx,DWORD PTR [ebp-0x30]
  0049158e: 89 45 e0                                        mov    DWORD PTR [ebp-0x20],eax
  00491591: 8b 45 d8                                        mov    eax,DWORD PTR [ebp-0x28]
  00491594: 50                                              push   eax
  00491595: 8b 45 cc                                        mov    eax,DWORD PTR [ebp-0x34]
  00491598: 88 9d c0 f7 ff ff                               mov    BYTE PTR [ebp-0x840],bl
  0049159e: 8b 39                                           mov    edi,DWORD PTR [ecx]
  004915a0: 8b 4d d4                                        mov    ecx,DWORD PTR [ebp-0x2c]
  004915a3: 51                                              push   ecx
  004915a4: 52                                              push   edx
  004915a5: 50                                              push   eax
  004915a6: 8d 8d c0 f7 ff ff                               lea    ecx,[ebp-0x840]
  004915ac: 68 08 e4 50 00                                  push   0x50e408
  004915b1: 51                                              push   ecx
  004915b2: e8 89 23 f7 ff                                  call   0x403940
  004915b7: 83 c4 20                                        add    esp,0x20
  004915ba: 50                                              push   eax
  004915bb: 8b c7                                           mov    eax,edi
  004915bd: 8b 7d c4                                        mov    edi,DWORD PTR [ebp-0x3c]
  004915c0: 8b 57 0c                                        mov    edx,DWORD PTR [edi+0xc]
  004915c3: 8b 4f 10                                        mov    ecx,DWORD PTR [edi+0x10]
  004915c6: 52                                              push   edx
  004915c7: ff 50 04                                        call   DWORD PTR [eax+0x4]
  004915ca: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  004915cd: 51                                              push   ecx
  004915ce: 51                                              push   ecx
  004915cf: 8d 4f 18                                        lea    ecx,[edi+0x18]
  004915d2: 54                                              push   esp
  004915d3: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  004915d6: e8 65 00 00 00                                  call   0x491640
  004915db: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004915de: 8d 55 c0                                        lea    edx,[ebp-0x40]
  004915e1: 52                                              push   edx
  004915e2: e8 69 00 00 00                                  call   0x491650
  004915e7: 8b ce                                           mov    ecx,esi
  004915e9: e8 66 05 04 00                                  call   0x4d1b54
  004915ee: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004915f1: 50                                              push   eax
  004915f2: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004915f9: ff 15 18 e4 4d 00                               call   DWORD PTR ds:0x4de418
  004915ff: 8b ce                                           mov    ecx,esi
  00491601: e8 60 05 04 00                                  call   0x4d1b66
  00491606: 85 c0                                           test   eax,eax
  00491608: 0f 84 d3 fe ff ff                               je     0x4914e1
  0049160e: 5b                                              pop    ebx
  0049160f: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00491612: 5f                                              pop    edi
  00491613: 5e                                              pop    esi
  00491614: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0049161b: 8b e5                                           mov    esp,ebp
  0049161d: 5d                                              pop    ebp
  0049161e: c2 08 00                                        ret    0x8
  00491630: 8d 41 18                                        lea    eax,[ecx+0x18]
  00491633: c3                                              ret
  00491c70: 55                                              push   ebp
  00491c71: 8b ec                                           mov    ebp,esp
  00491c73: 56                                              push   esi
  00491c74: 8b f1                                           mov    esi,ecx
  00491c76: e8 25 00 00 00                                  call   0x491ca0
  00491c7b: f6 45 08 01                                     test   BYTE PTR [ebp+0x8],0x1
  00491c7f: 74 09                                           je     0x491c8a
  00491c81: 56                                              push   esi
  00491c82: e8 d9 03 fb ff                                  call   0x442060
  00491c87: 83 c4 04                                        add    esp,0x4
  00491c8a: 8b c6                                           mov    eax,esi
  00491c8c: 5e                                              pop    esi
  00491c8d: 5d                                              pop    ebp
  00491c8e: c2 04 00                                        ret    0x4
