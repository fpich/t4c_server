; PASSE 124, Desassemblage des cibles TROISIEME_GENERATION_DIRECTE justifiees par des instructions sources
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; 2372 distinct instructions; 19 graph entry points

  00430cf0: 55                                              push   ebp
  00430cf1: 8b ec                                           mov    ebp,esp
  00430cf3: 83 ec 08                                        sub    esp,0x8
  00430cf6: 53                                              push   ebx
  00430cf7: 56                                              push   esi
  00430cf8: 8b f1                                           mov    esi,ecx
  00430cfa: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00430cfd: 85 c9                                           test   ecx,ecx
  00430cff: 57                                              push   edi
  00430d00: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  00430d03: 8b 07                                           mov    eax,DWORD PTR [edi]
  00430d05: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00430d08: 74 4b                                           je     0x430d55
  00430d0a: 8b c8                                           mov    ecx,eax
  00430d0c: 3b c1                                           cmp    eax,ecx
  00430d0e: 75 45                                           jne    0x430d55
  00430d10: 8b 5f 04                                        mov    ebx,DWORD PTR [edi+0x4]
  00430d13: 8a 43 21                                        mov    al,BYTE PTR [ebx+0x21]
  00430d16: 84 c0                                           test   al,al
  00430d18: 8b fb                                           mov    edi,ebx
  00430d1a: 75 1f                                           jne    0x430d3b
  00430d1c: 8b 47 08                                        mov    eax,DWORD PTR [edi+0x8]
  00430d1f: 50                                              push   eax
  00430d20: 8b ce                                           mov    ecx,esi
  00430d22: e8 49 07 00 00                                  call   0x431470
  00430d27: 8b 3f                                           mov    edi,DWORD PTR [edi]
  00430d29: 53                                              push   ebx
  00430d2a: e8 31 13 01 00                                  call   0x442060
  00430d2f: 8a 47 21                                        mov    al,BYTE PTR [edi+0x21]
  00430d32: 83 c4 04                                        add    esp,0x4
  00430d35: 84 c0                                           test   al,al
  00430d37: 8b df                                           mov    ebx,edi
  00430d39: 74 e1                                           je     0x430d1c
  00430d3b: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00430d3e: 89 40 04                                        mov    DWORD PTR [eax+0x4],eax
  00430d41: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00430d44: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00430d4b: 89 00                                           mov    DWORD PTR [eax],eax
  00430d4d: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00430d50: 89 40 08                                        mov    DWORD PTR [eax+0x8],eax
  00430d53: eb 21                                           jmp    0x430d76
  00430d55: 3b c7                                           cmp    eax,edi
  00430d57: 74 1d                                           je     0x430d76
  00430d59: 8d 4d fc                                        lea    ecx,[ebp-0x4]
  00430d5c: 8b d8                                           mov    ebx,eax
  00430d5e: e8 6d 0b 00 00                                  call   0x4318d0
  00430d63: 53                                              push   ebx
  00430d64: 8d 4d f8                                        lea    ecx,[ebp-0x8]
  00430d67: 51                                              push   ecx
  00430d68: 8b ce                                           mov    ecx,esi
  00430d6a: e8 51 00 00 00                                  call   0x430dc0
  00430d6f: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  00430d72: 3b c7                                           cmp    eax,edi
  00430d74: 75 e3                                           jne    0x430d59
  00430d76: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  00430d79: 52                                              push   edx
  00430d7a: e8 e1 12 01 00                                  call   0x442060
  00430d7f: 83 c4 04                                        add    esp,0x4
  00430d82: 33 c0                                           xor    eax,eax
  00430d84: 5f                                              pop    edi
  00430d85: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  00430d88: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00430d8b: 5e                                              pop    esi
  00430d8c: 5b                                              pop    ebx
  00430d8d: 8b e5                                           mov    esp,ebp
  00430d8f: 5d                                              pop    ebp
  00430d90: c3                                              ret
  00430da0: 55                                              push   ebp
  00430da1: 8b ec                                           mov    ebp,esp
  00430da3: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  00430da6: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00430da8: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00430dab: 89 08                                           mov    DWORD PTR [eax],ecx
  00430dad: 5d                                              pop    ebp
  00430dae: c2 04 00                                        ret    0x4
  00431210: 55                                              push   ebp
  00431211: 8b ec                                           mov    ebp,esp
  00431213: 53                                              push   ebx
  00431214: 56                                              push   esi
  00431215: 8b 31                                           mov    esi,DWORD PTR [ecx]
  00431217: 8a 46 21                                        mov    al,BYTE PTR [esi+0x21]
  0043121a: 84 c0                                           test   al,al
  0043121c: 75 4a                                           jne    0x431268
  0043121e: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00431221: 8a 42 21                                        mov    al,BYTE PTR [edx+0x21]
  00431224: 84 c0                                           test   al,al
  00431226: 75 21                                           jne    0x431249
  00431228: 8b 02                                           mov    eax,DWORD PTR [edx]
  0043122a: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  0043122d: 84 db                                           test   bl,bl
  0043122f: 75 0b                                           jne    0x43123c
  00431231: 8b d0                                           mov    edx,eax
  00431233: 8b 02                                           mov    eax,DWORD PTR [edx]
  00431235: 8a 58 21                                        mov    bl,BYTE PTR [eax+0x21]
  00431238: 84 db                                           test   bl,bl
  0043123a: 74 f5                                           je     0x431231
  0043123c: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043123f: 89 11                                           mov    DWORD PTR [ecx],edx
  00431241: 89 30                                           mov    DWORD PTR [eax],esi
  00431243: 5e                                              pop    esi
  00431244: 5b                                              pop    ebx
  00431245: 5d                                              pop    ebp
  00431246: c2 08 00                                        ret    0x8
  00431249: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043124c: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  0043124f: 84 d2                                           test   dl,dl
  00431251: 75 13                                           jne    0x431266
  00431253: 8b 11                                           mov    edx,DWORD PTR [ecx]
  00431255: 3b 50 08                                        cmp    edx,DWORD PTR [eax+0x8]
  00431258: 75 0c                                           jne    0x431266
  0043125a: 89 01                                           mov    DWORD PTR [ecx],eax
  0043125c: 8b 40 04                                        mov    eax,DWORD PTR [eax+0x4]
  0043125f: 8a 50 21                                        mov    dl,BYTE PTR [eax+0x21]
  00431262: 84 d2                                           test   dl,dl
  00431264: 74 ed                                           je     0x431253
  00431266: 89 01                                           mov    DWORD PTR [ecx],eax
  00431268: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0043126b: 89 30                                           mov    DWORD PTR [eax],esi
  0043126d: 5e                                              pop    esi
  0043126e: 5b                                              pop    ebx
  0043126f: 5d                                              pop    ebp
  00431270: c2 08 00                                        ret    0x8
  00431340: 53                                              push   ebx
  00431341: 56                                              push   esi
  00431342: 8b f1                                           mov    esi,ecx
  00431344: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  00431347: 33 db                                           xor    ebx,ebx
  00431349: 3b c3                                           cmp    eax,ebx
  0043134b: 57                                              push   edi
  0043134c: 74 12                                           je     0x431360
  0043134e: 48                                              dec    eax
  0043134f: 3b c3                                           cmp    eax,ebx
  00431351: 89 46 10                                        mov    DWORD PTR [esi+0x10],eax
  00431354: 75 03                                           jne    0x431359
  00431356: 89 5e 0c                                        mov    DWORD PTR [esi+0xc],ebx
  00431359: 8b 46 10                                        mov    eax,DWORD PTR [esi+0x10]
  0043135c: 3b c3                                           cmp    eax,ebx
  0043135e: 75 ee                                           jne    0x43134e
  00431360: 8b 7e 08                                        mov    edi,DWORD PTR [esi+0x8]
  00431363: 3b fb                                           cmp    edi,ebx
  00431365: 76 15                                           jbe    0x43137c
  00431367: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043136a: 8b 4c b8 fc                                     mov    ecx,DWORD PTR [eax+edi*4-0x4]
  0043136e: 4f                                              dec    edi
  0043136f: 51                                              push   ecx
  00431370: e8 eb 0c 01 00                                  call   0x442060
  00431375: 83 c4 04                                        add    esp,0x4
  00431378: 3b fb                                           cmp    edi,ebx
  0043137a: 77 eb                                           ja     0x431367
  0043137c: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  0043137f: 52                                              push   edx
  00431380: e8 db 0c 01 00                                  call   0x442060
  00431385: 83 c4 04                                        add    esp,0x4
  00431388: 5f                                              pop    edi
  00431389: 89 5e 08                                        mov    DWORD PTR [esi+0x8],ebx
  0043138c: 89 5e 04                                        mov    DWORD PTR [esi+0x4],ebx
  0043138f: 5e                                              pop    esi
  00431390: 5b                                              pop    ebx
  00431391: c3                                              ret
  00431510: 55                                              push   ebp
  00431511: 8b ec                                           mov    ebp,esp
  00431513: 51                                              push   ecx
  00431514: 56                                              push   esi
  00431515: 8b f1                                           mov    esi,ecx
  00431517: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0043151a: 85 c0                                           test   eax,eax
  0043151c: 74 0c                                           je     0x43152a
  0043151e: 50                                              push   eax
  0043151f: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  00431522: e8 39 0b 01 00                                  call   0x442060
  00431527: 83 c4 04                                        add    esp,0x4
  0043152a: c7 46 04 00 00 00 00                            mov    DWORD PTR [esi+0x4],0x0
  00431531: c7 46 08 00 00 00 00                            mov    DWORD PTR [esi+0x8],0x0
  00431538: c7 46 0c 00 00 00 00                            mov    DWORD PTR [esi+0xc],0x0
  0043153f: 5e                                              pop    esi
  00431540: 8b e5                                           mov    esp,ebp
  00431542: 5d                                              pop    ebp
  00431543: c3                                              ret
  0044fd20: 55                                              push   ebp
  0044fd21: 8b ec                                           mov    ebp,esp
  0044fd23: 6a ff                                           push   0xffffffff
  0044fd25: 68 11 6a 4d 00                                  push   0x4d6a11
  0044fd2a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  0044fd30: 50                                              push   eax
  0044fd31: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  0044fd38: 83 ec 3c                                        sub    esp,0x3c
  0044fd3b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0044fd3e: 53                                              push   ebx
  0044fd3f: 56                                              push   esi
  0044fd40: 57                                              push   edi
  0044fd41: 8b f1                                           mov    esi,ecx
  0044fd43: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0044fd46: 50                                              push   eax
  0044fd47: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0044fd4a: 89 75 e8                                        mov    DWORD PTR [ebp-0x18],esi
  0044fd4d: e8 fa 1c 08 00                                  call   0x4d1a4c
  0044fd52: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0044fd55: 85 c9                                           test   ecx,ecx
  0044fd57: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044fd5e: 75 04                                           jne    0x44fd64
  0044fd60: 33 d2                                           xor    edx,edx
  0044fd62: eb 0d                                           jmp    0x44fd71
  0044fd64: 8b 46 0c                                        mov    eax,DWORD PTR [esi+0xc]
  0044fd67: 2b c1                                           sub    eax,ecx
  0044fd69: c1 f8 02                                        sar    eax,0x2
  0044fd6c: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0044fd6f: 8b d0                                           mov    edx,eax
  0044fd71: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  0044fd74: 85 db                                           test   ebx,ebx
  0044fd76: 0f 84 26 03 00 00                               je     0x4500a2
  0044fd7c: 85 c9                                           test   ecx,ecx
  0044fd7e: 75 04                                           jne    0x44fd84
  0044fd80: 33 c0                                           xor    eax,eax
  0044fd82: eb 08                                           jmp    0x44fd8c
  0044fd84: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044fd87: 2b c1                                           sub    eax,ecx
  0044fd89: c1 f8 02                                        sar    eax,0x2
  0044fd8c: bf ff ff ff 3f                                  mov    edi,0x3fffffff
  0044fd91: 2b f8                                           sub    edi,eax
  0044fd93: 3b fb                                           cmp    edi,ebx
  0044fd95: 73 2c                                           jae    0x44fdc3
  0044fd97: 68 80 05 50 00                                  push   0x500580
  0044fd9c: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0044fd9f: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  0044fda5: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0044fda8: 51                                              push   ecx
  0044fda9: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  0044fdac: c6 45 fc 01                                     mov    BYTE PTR [ebp-0x4],0x1
  0044fdb0: e8 6b 56 fb ff                                  call   0x405420
  0044fdb5: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0044fdba: 8d 55 b8                                        lea    edx,[ebp-0x48]
  0044fdbd: 52                                              push   edx
  0044fdbe: e8 93 1f 08 00                                  call   0x4d1d56
  0044fdc3: 85 c9                                           test   ecx,ecx
  0044fdc5: 75 04                                           jne    0x44fdcb
  0044fdc7: 33 c0                                           xor    eax,eax
  0044fdc9: eb 08                                           jmp    0x44fdd3
  0044fdcb: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044fdce: 2b c1                                           sub    eax,ecx
  0044fdd0: c1 f8 02                                        sar    eax,0x2
  0044fdd3: 03 c3                                           add    eax,ebx
  0044fdd5: 3b d0                                           cmp    edx,eax
  0044fdd7: 0f 83 66 01 00 00                               jae    0x44ff43
  0044fddd: 8b c2                                           mov    eax,edx
  0044fddf: d1 e8                                           shr    eax,1
  0044fde1: bf ff ff ff 3f                                  mov    edi,0x3fffffff
  0044fde6: 2b f8                                           sub    edi,eax
  0044fde8: 3b fa                                           cmp    edi,edx
  0044fdea: 73 0c                                           jae    0x44fdf8
  0044fdec: c7 45 10 00 00 00 00                            mov    DWORD PTR [ebp+0x10],0x0
  0044fdf3: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  0044fdf6: eb 05                                           jmp    0x44fdfd
  0044fdf8: 03 d0                                           add    edx,eax
  0044fdfa: 89 55 10                                        mov    DWORD PTR [ebp+0x10],edx
  0044fdfd: 85 c9                                           test   ecx,ecx
  0044fdff: 75 04                                           jne    0x44fe05
  0044fe01: 33 c0                                           xor    eax,eax
  0044fe03: eb 08                                           jmp    0x44fe0d
  0044fe05: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044fe08: 2b c1                                           sub    eax,ecx
  0044fe0a: c1 f8 02                                        sar    eax,0x2
  0044fe0d: 03 c3                                           add    eax,ebx
  0044fe0f: 3b d0                                           cmp    edx,eax
  0044fe11: 73 17                                           jae    0x44fe2a
  0044fe13: 85 c9                                           test   ecx,ecx
  0044fe15: 75 04                                           jne    0x44fe1b
  0044fe17: 33 c0                                           xor    eax,eax
  0044fe19: eb 08                                           jmp    0x44fe23
  0044fe1b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044fe1e: 2b c1                                           sub    eax,ecx
  0044fe20: c1 f8 02                                        sar    eax,0x2
  0044fe23: 03 c3                                           add    eax,ebx
  0044fe25: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0044fe28: 8b d0                                           mov    edx,eax
  0044fe2a: 8d 04 95 00 00 00 00                            lea    eax,[edx*4+0x0]
  0044fe31: 50                                              push   eax
  0044fe32: e8 b9 21 ff ff                                  call   0x441ff0
  0044fe37: 83 c4 04                                        add    esp,0x4
  0044fe3a: 8b f8                                           mov    edi,eax
  0044fe3c: 57                                              push   edi
  0044fe3d: 51                                              push   ecx
  0044fe3e: 8d 55 08                                        lea    edx,[ebp+0x8]
  0044fe41: 8b cc                                           mov    ecx,esp
  0044fe43: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  0044fe46: 52                                              push   edx
  0044fe47: 89 7d e8                                        mov    DWORD PTR [ebp-0x18],edi
  0044fe4a: 89 7d 0c                                        mov    DWORD PTR [ebp+0xc],edi
  0044fe4d: c6 45 fc 02                                     mov    BYTE PTR [ebp-0x4],0x2
  0044fe51: e8 fa fd ff ff                                  call   0x44fc50
  0044fe56: 51                                              push   ecx
  0044fe57: 8b c4                                           mov    eax,esp
  0044fe59: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  0044fe5c: 50                                              push   eax
  0044fe5d: 8b ce                                           mov    ecx,esi
  0044fe5f: e8 6c 02 00 00                                  call   0x4500d0
  0044fe64: 8b ce                                           mov    ecx,esi
  0044fe66: e8 15 08 00 00                                  call   0x450680
  0044fe6b: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0044fe6e: 51                                              push   ecx
  0044fe6f: 53                                              push   ebx
  0044fe70: 50                                              push   eax
  0044fe71: 8b ce                                           mov    ecx,esi
  0044fe73: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0044fe76: e8 c5 05 00 00                                  call   0x450440
  0044fe7b: 50                                              push   eax
  0044fe7c: 51                                              push   ecx
  0044fe7d: 8b d4                                           mov    edx,esp
  0044fe7f: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  0044fe82: 52                                              push   edx
  0044fe83: 8b ce                                           mov    ecx,esi
  0044fe85: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0044fe88: e8 53 fd ff ff                                  call   0x44fbe0
  0044fe8d: 51                                              push   ecx
  0044fe8e: 8d 45 08                                        lea    eax,[ebp+0x8]
  0044fe91: 8b cc                                           mov    ecx,esp
  0044fe93: 89 65 e4                                        mov    DWORD PTR [ebp-0x1c],esp
  0044fe96: 50                                              push   eax
  0044fe97: e8 b4 fd ff ff                                  call   0x44fc50
  0044fe9c: 8b ce                                           mov    ecx,esi
  0044fe9e: e8 dd 07 00 00                                  call   0x450680
  0044fea3: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0044fea6: 85 c0                                           test   eax,eax
  0044fea8: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044feaf: 74 2c                                           je     0x44fedd
  0044feb1: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0044feb4: 8b f8                                           mov    edi,eax
  0044feb6: 3b f9                                           cmp    edi,ecx
  0044feb8: 89 4d 0c                                        mov    DWORD PTR [ebp+0xc],ecx
  0044febb: 74 11                                           je     0x44fece
  0044febd: 8b cf                                           mov    ecx,edi
  0044febf: e8 7c 1b 08 00                                  call   0x4d1a40
  0044fec4: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  0044fec7: 83 c7 04                                        add    edi,0x4
  0044feca: 3b f8                                           cmp    edi,eax
  0044fecc: 75 ef                                           jne    0x44febd
  0044fece: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  0044fed1: 50                                              push   eax
  0044fed2: e8 89 21 ff ff                                  call   0x442060
  0044fed7: 8b 7d e8                                        mov    edi,DWORD PTR [ebp-0x18]
  0044feda: 83 c4 04                                        add    esp,0x4
  0044fedd: 8b 4d 10                                        mov    ecx,DWORD PTR [ebp+0x10]
  0044fee0: 8d 14 8f                                        lea    edx,[edi+ecx*4]
  0044fee3: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0044fee6: 85 c9                                           test   ecx,ecx
  0044fee8: 89 56 0c                                        mov    DWORD PTR [esi+0xc],edx
  0044feeb: 75 12                                           jne    0x44feff
  0044feed: 33 c0                                           xor    eax,eax
  0044feef: 8b c3                                           mov    eax,ebx
  0044fef1: 8d 04 87                                        lea    eax,[edi+eax*4]
  0044fef4: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044fef7: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0044fefa: e9 a3 01 00 00                                  jmp    0x4500a2
  0044feff: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044ff02: 2b c1                                           sub    eax,ecx
  0044ff04: c1 f8 02                                        sar    eax,0x2
  0044ff07: 03 c3                                           add    eax,ebx
  0044ff09: 8d 04 87                                        lea    eax,[edi+eax*4]
  0044ff0c: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0044ff0f: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  0044ff12: e9 8b 01 00 00                                  jmp    0x4500a2
  0044ff43: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044ff46: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044ff49: 8b d0                                           mov    edx,eax
  0044ff4b: 2b d1                                           sub    edx,ecx
  0044ff4d: c1 fa 02                                        sar    edx,0x2
  0044ff50: 3b d3                                           cmp    edx,ebx
  0044ff52: 0f 83 bc 00 00 00                               jae    0x450014
  0044ff58: 8d 3c 9d 00 00 00 00                            lea    edi,[ebx*4+0x0]
  0044ff5f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0044ff62: 50                                              push   eax
  0044ff63: 51                                              push   ecx
  0044ff64: 8b cc                                           mov    ecx,esp
  0044ff66: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0044ff69: 51                                              push   ecx
  0044ff6a: 8b ce                                           mov    ecx,esi
  0044ff6c: e8 6f fc ff ff                                  call   0x44fbe0
  0044ff71: 51                                              push   ecx
  0044ff72: 8d 55 08                                        lea    edx,[ebp+0x8]
  0044ff75: 8b cc                                           mov    ecx,esp
  0044ff77: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0044ff7a: 52                                              push   edx
  0044ff7b: e8 d0 fc ff ff                                  call   0x44fc50
  0044ff80: 8b ce                                           mov    ecx,esi
  0044ff82: e8 f9 06 00 00                                  call   0x450680
  0044ff87: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0044ff8a: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0044ff8d: 51                                              push   ecx
  0044ff8e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0044ff91: 8b d0                                           mov    edx,eax
  0044ff93: 2b d1                                           sub    edx,ecx
  0044ff95: c1 fa 02                                        sar    edx,0x2
  0044ff98: 8b cb                                           mov    ecx,ebx
  0044ff9a: 2b ca                                           sub    ecx,edx
  0044ff9c: 51                                              push   ecx
  0044ff9d: 50                                              push   eax
  0044ff9e: 8b ce                                           mov    ecx,esi
  0044ffa0: c6 45 fc 04                                     mov    BYTE PTR [ebp-0x4],0x4
  0044ffa4: e8 97 04 00 00                                  call   0x450440
  0044ffa9: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0044ffac: 03 cf                                           add    ecx,edi
  0044ffae: 8d 55 ec                                        lea    edx,[ebp-0x14]
  0044ffb1: 52                                              push   edx
  0044ffb2: 51                                              push   ecx
  0044ffb3: 8b c4                                           mov    eax,esp
  0044ffb5: 89 65 0c                                        mov    DWORD PTR [ebp+0xc],esp
  0044ffb8: 53                                              push   ebx
  0044ffb9: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0044ffbc: 50                                              push   eax
  0044ffbd: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  0044ffc0: 51                                              push   ecx
  0044ffc1: 8b ce                                           mov    ecx,esi
  0044ffc3: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  0044ffca: e8 11 fc ff ff                                  call   0x44fbe0
  0044ffcf: 8b c8                                           mov    ecx,eax
  0044ffd1: e8 fa 04 00 00                                  call   0x4504d0
  0044ffd6: 51                                              push   ecx
  0044ffd7: 8d 55 08                                        lea    edx,[ebp+0x8]
  0044ffda: 8b cc                                           mov    ecx,esp
  0044ffdc: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0044ffdf: 52                                              push   edx
  0044ffe0: e9 b0 00 00 00                                  jmp    0x450095
  00450014: 50                                              push   eax
  00450015: 51                                              push   ecx
  00450016: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  00450019: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0045001c: 8b cc                                           mov    ecx,esp
  0045001e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00450021: 50                                              push   eax
  00450022: e8 29 fc ff ff                                  call   0x44fc50
  00450027: 51                                              push   ecx
  00450028: 8b cc                                           mov    ecx,esp
  0045002a: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0045002d: 53                                              push   ebx
  0045002e: 51                                              push   ecx
  0045002f: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00450032: e8 99 04 00 00                                  call   0x4504d0
  00450037: 8b ce                                           mov    ecx,esi
  00450039: e8 42 06 00 00                                  call   0x450680
  0045003e: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00450041: 51                                              push   ecx
  00450042: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00450045: 8b c4                                           mov    eax,esp
  00450047: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  0045004a: 51                                              push   ecx
  0045004b: 89 10                                           mov    DWORD PTR [eax],edx
  0045004d: 8b c4                                           mov    eax,esp
  0045004f: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00450052: 53                                              push   ebx
  00450053: 50                                              push   eax
  00450054: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00450057: e8 74 04 00 00                                  call   0x4504d0
  0045005c: 51                                              push   ecx
  0045005d: 8d 55 08                                        lea    edx,[ebp+0x8]
  00450060: 8b cc                                           mov    ecx,esp
  00450062: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00450065: 52                                              push   edx
  00450066: e8 e5 fb ff ff                                  call   0x44fc50
  0045006b: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0045006e: 50                                              push   eax
  0045006f: e8 cc 06 00 00                                  call   0x450740
  00450074: 83 c4 10                                        add    esp,0x10
  00450077: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  0045007a: 51                                              push   ecx
  0045007b: 51                                              push   ecx
  0045007c: 8b d4                                           mov    edx,esp
  0045007e: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00450081: 53                                              push   ebx
  00450082: 52                                              push   edx
  00450083: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00450086: e8 d5 fb ff ff                                  call   0x44fc60
  0045008b: 51                                              push   ecx
  0045008c: 8d 45 08                                        lea    eax,[ebp+0x8]
  0045008f: 8b cc                                           mov    ecx,esp
  00450091: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00450094: 50                                              push   eax
  00450095: e8 b6 fb ff ff                                  call   0x44fc50
  0045009a: e8 71 06 00 00                                  call   0x450710
  0045009f: 83 c4 0c                                        add    esp,0xc
  004500a2: 8d 4d ec                                        lea    ecx,[ebp-0x14]
  004500a5: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004500ac: e8 8f 19 08 00                                  call   0x4d1a40
  004500b1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004500b4: 5f                                              pop    edi
  004500b5: 5e                                              pop    esi
  004500b6: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004500bd: 5b                                              pop    ebx
  004500be: 8b e5                                           mov    esp,ebp
  004500c0: 5d                                              pop    ebp
  004500c1: c2 0c 00                                        ret    0xc
  004500e0: 55                                              push   ebp
  004500e1: 8b ec                                           mov    ebp,esp
  004500e3: 6a ff                                           push   0xffffffff
  004500e5: 68 29 6a 4d 00                                  push   0x4d6a29
  004500ea: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  004500f0: 50                                              push   eax
  004500f1: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  004500f8: 83 ec 3c                                        sub    esp,0x3c
  004500fb: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  004500fe: 53                                              push   ebx
  004500ff: 56                                              push   esi
  00450100: 8b f1                                           mov    esi,ecx
  00450102: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00450104: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  00450107: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0045010a: 85 c9                                           test   ecx,ecx
  0045010c: 57                                              push   edi
  0045010d: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00450110: 75 04                                           jne    0x450116
  00450112: 33 db                                           xor    ebx,ebx
  00450114: eb 08                                           jmp    0x45011e
  00450116: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  00450119: 2b d9                                           sub    ebx,ecx
  0045011b: c1 fb 02                                        sar    ebx,0x2
  0045011e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  00450121: 85 ff                                           test   edi,edi
  00450123: 0f 84 ea 02 00 00                               je     0x450413
  00450129: 85 c9                                           test   ecx,ecx
  0045012b: 75 04                                           jne    0x450131
  0045012d: 33 c0                                           xor    eax,eax
  0045012f: eb 08                                           jmp    0x450139
  00450131: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00450134: 2b c1                                           sub    eax,ecx
  00450136: c1 f8 02                                        sar    eax,0x2
  00450139: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  0045013e: 2b d0                                           sub    edx,eax
  00450140: 3b d7                                           cmp    edx,edi
  00450142: 73 2f                                           jae    0x450173
  00450144: 68 80 05 50 00                                  push   0x500580
  00450149: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  0045014c: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00450152: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  00450155: 50                                              push   eax
  00450156: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  00450159: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00450160: e8 bb 52 fb ff                                  call   0x405420
  00450165: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0045016a: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  0045016d: 51                                              push   ecx
  0045016e: e8 e3 1b 08 00                                  call   0x4d1d56
  00450173: 85 c9                                           test   ecx,ecx
  00450175: 75 04                                           jne    0x45017b
  00450177: 33 c0                                           xor    eax,eax
  00450179: eb 08                                           jmp    0x450183
  0045017b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0045017e: 2b c1                                           sub    eax,ecx
  00450180: c1 f8 02                                        sar    eax,0x2
  00450183: 03 c7                                           add    eax,edi
  00450185: 3b d8                                           cmp    ebx,eax
  00450187: 0f 83 3e 01 00 00                               jae    0x4502cb
  0045018d: 8b c3                                           mov    eax,ebx
  0045018f: d1 e8                                           shr    eax,1
  00450191: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  00450196: 2b d0                                           sub    edx,eax
  00450198: 3b d3                                           cmp    edx,ebx
  0045019a: 73 04                                           jae    0x4501a0
  0045019c: 33 db                                           xor    ebx,ebx
  0045019e: eb 02                                           jmp    0x4501a2
  004501a0: 03 d8                                           add    ebx,eax
  004501a2: 85 c9                                           test   ecx,ecx
  004501a4: 75 04                                           jne    0x4501aa
  004501a6: 33 c0                                           xor    eax,eax
  004501a8: eb 08                                           jmp    0x4501b2
  004501aa: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004501ad: 2b c1                                           sub    eax,ecx
  004501af: c1 f8 02                                        sar    eax,0x2
  004501b2: 03 c7                                           add    eax,edi
  004501b4: 3b d8                                           cmp    ebx,eax
  004501b6: 73 13                                           jae    0x4501cb
  004501b8: 85 c9                                           test   ecx,ecx
  004501ba: 75 04                                           jne    0x4501c0
  004501bc: 33 c0                                           xor    eax,eax
  004501be: eb 08                                           jmp    0x4501c8
  004501c0: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004501c3: 2b c1                                           sub    eax,ecx
  004501c5: c1 f8 02                                        sar    eax,0x2
  004501c8: 8d 1c 38                                        lea    ebx,[eax+edi*1]
  004501cb: 8d 04 9d 00 00 00 00                            lea    eax,[ebx*4+0x0]
  004501d2: 50                                              push   eax
  004501d3: e8 18 1e ff ff                                  call   0x441ff0
  004501d8: 83 c4 04                                        add    esp,0x4
  004501db: 50                                              push   eax
  004501dc: 51                                              push   ecx
  004501dd: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  004501e0: 8d 55 08                                        lea    edx,[ebp+0x8]
  004501e3: 8b cc                                           mov    ecx,esp
  004501e5: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004501e8: 52                                              push   edx
  004501e9: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  004501ec: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  004501f3: e8 f8 fa ff ff                                  call   0x44fcf0
  004501f8: 51                                              push   ecx
  004501f9: 8b c4                                           mov    eax,esp
  004501fb: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004501fe: 50                                              push   eax
  004501ff: 8b ce                                           mov    ecx,esi
  00450201: e8 2a 02 00 00                                  call   0x450430
  00450206: 8b ce                                           mov    ecx,esi
  00450208: e8 73 05 00 00                                  call   0x450780
  0045020d: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00450210: 51                                              push   ecx
  00450211: 57                                              push   edi
  00450212: 50                                              push   eax
  00450213: 8b ce                                           mov    ecx,esi
  00450215: e8 d6 02 00 00                                  call   0x4504f0
  0045021a: 50                                              push   eax
  0045021b: 51                                              push   ecx
  0045021c: 8b d4                                           mov    edx,esp
  0045021e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00450221: 52                                              push   edx
  00450222: 8b ce                                           mov    ecx,esi
  00450224: e8 57 fa ff ff                                  call   0x44fc80
  00450229: 51                                              push   ecx
  0045022a: 8d 45 08                                        lea    eax,[ebp+0x8]
  0045022d: 8b cc                                           mov    ecx,esp
  0045022f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00450232: 50                                              push   eax
  00450233: e8 b8 fa ff ff                                  call   0x44fcf0
  00450238: 8b ce                                           mov    ecx,esi
  0045023a: e8 41 05 00 00                                  call   0x450780
  0045023f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00450242: 85 c0                                           test   eax,eax
  00450244: 74 1a                                           je     0x450260
  00450246: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00450249: 3b c1                                           cmp    eax,ecx
  0045024b: 74 07                                           je     0x450254
  0045024d: 83 c0 04                                        add    eax,0x4
  00450250: 3b c1                                           cmp    eax,ecx
  00450252: 75 f9                                           jne    0x45024d
  00450254: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00450257: 51                                              push   ecx
  00450258: e8 03 1e ff ff                                  call   0x442060
  0045025d: 83 c4 04                                        add    esp,0x4
  00450260: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  00450263: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00450266: 85 c9                                           test   ecx,ecx
  00450268: 8d 04 9a                                        lea    eax,[edx+ebx*4]
  0045026b: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  0045026e: 75 20                                           jne    0x450290
  00450270: 33 c0                                           xor    eax,eax
  00450272: 8b c7                                           mov    eax,edi
  00450274: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  00450277: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0045027a: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  0045027d: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00450280: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00450287: 5f                                              pop    edi
  00450288: 5e                                              pop    esi
  00450289: 5b                                              pop    ebx
  0045028a: 8b e5                                           mov    esp,ebp
  0045028c: 5d                                              pop    ebp
  0045028d: c2 0c 00                                        ret    0xc
  00450290: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00450293: 2b c1                                           sub    eax,ecx
  00450295: c1 f8 02                                        sar    eax,0x2
  00450298: 03 c7                                           add    eax,edi
  0045029a: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  0045029d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004502a0: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004502a3: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004502a6: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004502ad: 5f                                              pop    edi
  004502ae: 5e                                              pop    esi
  004502af: 5b                                              pop    ebx
  004502b0: 8b e5                                           mov    esp,ebp
  004502b2: 5d                                              pop    ebp
  004502b3: c2 0c 00                                        ret    0xc
  004502cb: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004502ce: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004502d1: 8b d0                                           mov    edx,eax
  004502d3: 2b d1                                           sub    edx,ecx
  004502d5: c1 fa 02                                        sar    edx,0x2
  004502d8: 3b d7                                           cmp    edx,edi
  004502da: 0f 83 a5 00 00 00                               jae    0x450385
  004502e0: 8d 1c bd 00 00 00 00                            lea    ebx,[edi*4+0x0]
  004502e7: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  004502ea: 50                                              push   eax
  004502eb: 51                                              push   ecx
  004502ec: 8b cc                                           mov    ecx,esp
  004502ee: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004502f1: 51                                              push   ecx
  004502f2: 8b ce                                           mov    ecx,esi
  004502f4: e8 87 f9 ff ff                                  call   0x44fc80
  004502f9: 51                                              push   ecx
  004502fa: 8d 55 08                                        lea    edx,[ebp+0x8]
  004502fd: 8b cc                                           mov    ecx,esp
  004502ff: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00450302: 52                                              push   edx
  00450303: e8 e8 f9 ff ff                                  call   0x44fcf0
  00450308: 8b ce                                           mov    ecx,esi
  0045030a: e8 71 04 00 00                                  call   0x450780
  0045030f: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00450312: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00450315: 51                                              push   ecx
  00450316: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00450319: 8b d0                                           mov    edx,eax
  0045031b: 2b d1                                           sub    edx,ecx
  0045031d: c1 fa 02                                        sar    edx,0x2
  00450320: 8b cf                                           mov    ecx,edi
  00450322: 2b ca                                           sub    ecx,edx
  00450324: 51                                              push   ecx
  00450325: 50                                              push   eax
  00450326: 8b ce                                           mov    ecx,esi
  00450328: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  0045032f: e8 bc 01 00 00                                  call   0x4504f0
  00450334: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00450337: 03 cb                                           add    ecx,ebx
  00450339: 8d 55 10                                        lea    edx,[ebp+0x10]
  0045033c: 52                                              push   edx
  0045033d: 51                                              push   ecx
  0045033e: 8b c4                                           mov    eax,esp
  00450340: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00450343: 57                                              push   edi
  00450344: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00450347: 50                                              push   eax
  00450348: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  0045034b: 51                                              push   ecx
  0045034c: 8b ce                                           mov    ecx,esi
  0045034e: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00450355: e8 26 f9 ff ff                                  call   0x44fc80
  0045035a: 8b c8                                           mov    ecx,eax
  0045035c: e8 bf 01 00 00                                  call   0x450520
  00450361: 51                                              push   ecx
  00450362: 8d 55 08                                        lea    edx,[ebp+0x8]
  00450365: 8b cc                                           mov    ecx,esp
  00450367: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0045036a: 52                                              push   edx
  0045036b: e9 96 00 00 00                                  jmp    0x450406
  00450385: 50                                              push   eax
  00450386: 51                                              push   ecx
  00450387: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0045038a: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0045038d: 8b cc                                           mov    ecx,esp
  0045038f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00450392: 50                                              push   eax
  00450393: e8 58 f9 ff ff                                  call   0x44fcf0
  00450398: 51                                              push   ecx
  00450399: 8b cc                                           mov    ecx,esp
  0045039b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0045039e: 57                                              push   edi
  0045039f: 51                                              push   ecx
  004503a0: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004503a3: e8 78 01 00 00                                  call   0x450520
  004503a8: 8b ce                                           mov    ecx,esi
  004503aa: e8 d1 03 00 00                                  call   0x450780
  004503af: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  004503b2: 51                                              push   ecx
  004503b3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004503b6: 8b c4                                           mov    eax,esp
  004503b8: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004503bb: 51                                              push   ecx
  004503bc: 89 10                                           mov    DWORD PTR [eax],edx
  004503be: 8b c4                                           mov    eax,esp
  004503c0: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004503c3: 57                                              push   edi
  004503c4: 50                                              push   eax
  004503c5: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004503c8: e8 53 01 00 00                                  call   0x450520
  004503cd: 51                                              push   ecx
  004503ce: 8d 55 08                                        lea    edx,[ebp+0x8]
  004503d1: 8b cc                                           mov    ecx,esp
  004503d3: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004503d6: 52                                              push   edx
  004503d7: e8 14 f9 ff ff                                  call   0x44fcf0
  004503dc: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  004503df: 50                                              push   eax
  004503e0: e8 eb 03 00 00                                  call   0x4507d0
  004503e5: 83 c4 10                                        add    esp,0x10
  004503e8: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  004503eb: 51                                              push   ecx
  004503ec: 51                                              push   ecx
  004503ed: 8b d4                                           mov    edx,esp
  004503ef: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004503f2: 57                                              push   edi
  004503f3: 52                                              push   edx
  004503f4: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  004503f7: e8 04 f9 ff ff                                  call   0x44fd00
  004503fc: 51                                              push   ecx
  004503fd: 8d 45 08                                        lea    eax,[ebp+0x8]
  00450400: 8b cc                                           mov    ecx,esp
  00450402: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00450405: 50                                              push   eax
  00450406: e8 e5 f8 ff ff                                  call   0x44fcf0
  0045040b: e8 a0 03 00 00                                  call   0x4507b0
  00450410: 83 c4 0c                                        add    esp,0xc
  00450413: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00450416: 5f                                              pop    edi
  00450417: 5e                                              pop    esi
  00450418: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0045041f: 5b                                              pop    ebx
  00450420: 8b e5                                           mov    esp,ebp
  00450422: 5d                                              pop    ebp
  00450423: c2 0c 00                                        ret    0xc
  004505d0: 55                                              push   ebp
  004505d1: 8b ec                                           mov    ebp,esp
  004505d3: 53                                              push   ebx
  004505d4: 8b 5d 10                                        mov    ebx,DWORD PTR [ebp+0x10]
  004505d7: 56                                              push   esi
  004505d8: 8b 75 0c                                        mov    esi,DWORD PTR [ebp+0xc]
  004505db: 3b f3                                           cmp    esi,ebx
  004505dd: 74 20                                           je     0x4505ff
  004505df: 57                                              push   edi
  004505e0: 8b 7d 14                                        mov    edi,DWORD PTR [ebp+0x14]
  004505e3: 56                                              push   esi
  004505e4: 8b cf                                           mov    ecx,edi
  004505e6: e8 5b 14 08 00                                  call   0x4d1a46
  004505eb: 83 c6 04                                        add    esi,0x4
  004505ee: 83 c7 04                                        add    edi,0x4
  004505f1: 3b f3                                           cmp    esi,ebx
  004505f3: 75 ee                                           jne    0x4505e3
  004505f5: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004505f8: 89 38                                           mov    DWORD PTR [eax],edi
  004505fa: 5f                                              pop    edi
  004505fb: 5e                                              pop    esi
  004505fc: 5b                                              pop    ebx
  004505fd: 5d                                              pop    ebp
  004505fe: c3                                              ret
  004505ff: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00450602: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00450605: 5e                                              pop    esi
  00450606: 89 08                                           mov    DWORD PTR [eax],ecx
  00450608: 5b                                              pop    ebx
  00450609: 5d                                              pop    ebp
  0045060a: c3                                              ret
  00450640: 55                                              push   ebp
  00450641: 8b ec                                           mov    ebp,esp
  00450643: 8b 45 0c                                        mov    eax,DWORD PTR [ebp+0xc]
  00450646: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00450649: 3b c2                                           cmp    eax,edx
  0045064b: 74 1a                                           je     0x450667
  0045064d: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  00450650: 56                                              push   esi
  00450651: 8b 30                                           mov    esi,DWORD PTR [eax]
  00450653: 89 31                                           mov    DWORD PTR [ecx],esi
  00450655: 83 c0 04                                        add    eax,0x4
  00450658: 83 c1 04                                        add    ecx,0x4
  0045065b: 3b c2                                           cmp    eax,edx
  0045065d: 75 f2                                           jne    0x450651
  0045065f: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00450662: 89 08                                           mov    DWORD PTR [eax],ecx
  00450664: 5e                                              pop    esi
  00450665: 5d                                              pop    ebp
  00450666: c3                                              ret
  00450667: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  0045066a: 8b 4d 14                                        mov    ecx,DWORD PTR [ebp+0x14]
  0045066d: 89 08                                           mov    DWORD PTR [eax],ecx
  0045066f: 5d                                              pop    ebp
  00450670: c3                                              ret
  0045a740: 56                                              push   esi
  0045a741: 8b f1                                           mov    esi,ecx
  0045a743: e8 58 f3 fe ff                                  call   0x449aa0
  0045a748: c7 06 78 f4 4d 00                               mov    DWORD PTR [esi],0x4df478
  0045a74e: 8b c6                                           mov    eax,esi
  0045a750: 5e                                              pop    esi
  0045a751: c3                                              ret
  00476ae0: 55                                              push   ebp
  00476ae1: 8b ec                                           mov    ebp,esp
  00476ae3: 51                                              push   ecx
  00476ae4: 53                                              push   ebx
  00476ae5: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00476ae8: 56                                              push   esi
  00476ae9: 33 d2                                           xor    edx,edx
  00476aeb: 8b f1                                           mov    esi,ecx
  00476aed: 8a 06                                           mov    al,BYTE PTR [esi]
  00476aef: 88 03                                           mov    BYTE PTR [ebx],al
  00476af1: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00476af4: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00476af7: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00476afa: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00476aff: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00476b02: 8b 00                                           mov    eax,DWORD PTR [eax]
  00476b04: 57                                              push   edi
  00476b05: 8b f9                                           mov    edi,ecx
  00476b07: 3b c7                                           cmp    eax,edi
  00476b09: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00476b0c: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00476b0f: 73 05                                           jae    0x476b16
  00476b11: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00476b14: 8b f8                                           mov    edi,eax
  00476b16: 3b de                                           cmp    ebx,esi
  00476b18: 75 73                                           jne    0x476b8d
  00476b1a: 3b fa                                           cmp    edi,edx
  00476b1c: 8b f0                                           mov    esi,eax
  00476b1e: 76 0a                                           jbe    0x476b2a
  00476b20: 8b cb                                           mov    ecx,ebx
  00476b22: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00476b28: 33 d2                                           xor    edx,edx
  00476b2a: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00476b2d: 2b c7                                           sub    eax,edi
  00476b2f: 3b c6                                           cmp    eax,esi
  00476b31: 73 02                                           jae    0x476b35
  00476b33: 8b f0                                           mov    esi,eax
  00476b35: 3b f2                                           cmp    esi,edx
  00476b37: 0f 86 de 00 00 00                               jbe    0x476c1b
  00476b3d: 8b cb                                           mov    ecx,ebx
  00476b3f: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00476b45: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00476b48: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00476b4b: 2b d6                                           sub    edx,esi
  00476b4d: 8d 04 39                                        lea    eax,[ecx+edi*1]
  00476b50: 2b d7                                           sub    edx,edi
  00476b52: 52                                              push   edx
  00476b53: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00476b56: 51                                              push   ecx
  00476b57: 50                                              push   eax
  00476b58: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00476b5e: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00476b61: 83 c4 0c                                        add    esp,0xc
  00476b64: 6a 00                                           push   0x0
  00476b66: 2b fe                                           sub    edi,esi
  00476b68: 57                                              push   edi
  00476b69: 8b cb                                           mov    ecx,ebx
  00476b6b: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00476b71: 84 c0                                           test   al,al
  00476b73: 0f 84 a2 00 00 00                               je     0x476c1b
  00476b79: 57                                              push   edi
  00476b7a: 8b cb                                           mov    ecx,ebx
  00476b7c: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00476b82: 5f                                              pop    edi
  00476b83: 5e                                              pop    esi
  00476b84: 8b c3                                           mov    eax,ebx
  00476b86: 5b                                              pop    ebx
  00476b87: 8b e5                                           mov    esp,ebp
  00476b89: 5d                                              pop    ebp
  00476b8a: c2 04 00                                        ret    0x4
  00476b8d: 3b fa                                           cmp    edi,edx
  00476b8f: 76 4e                                           jbe    0x476bdf
  00476b91: 3b f9                                           cmp    edi,ecx
  00476b93: 75 4a                                           jne    0x476bdf
  00476b95: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00476b98: 3b c2                                           cmp    eax,edx
  00476b9a: 75 05                                           jne    0x476ba1
  00476b9c: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00476ba1: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00476ba5: 73 38                                           jae    0x476bdf
  00476ba7: 6a 01                                           push   0x1
  00476ba9: 8b cb                                           mov    ecx,ebx
  00476bab: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476bb1: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00476bb4: 85 c0                                           test   eax,eax
  00476bb6: 75 05                                           jne    0x476bbd
  00476bb8: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00476bbd: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00476bc0: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00476bc3: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00476bc6: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00476bc9: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00476bcc: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  00476bcf: 5f                                              pop    edi
  00476bd0: fe c1                                           inc    cl
  00476bd2: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  00476bd5: 5e                                              pop    esi
  00476bd6: 8b c3                                           mov    eax,ebx
  00476bd8: 5b                                              pop    ebx
  00476bd9: 8b e5                                           mov    esp,ebp
  00476bdb: 5d                                              pop    ebp
  00476bdc: c2 04 00                                        ret    0x4
  00476bdf: 6a 01                                           push   0x1
  00476be1: 57                                              push   edi
  00476be2: 8b cb                                           mov    ecx,ebx
  00476be4: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00476bea: 84 c0                                           test   al,al
  00476bec: 74 2d                                           je     0x476c1b
  00476bee: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00476bf1: 85 f6                                           test   esi,esi
  00476bf3: 75 06                                           jne    0x476bfb
  00476bf5: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00476bfb: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476bfe: 8b cf                                           mov    ecx,edi
  00476c00: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00476c03: 8b d1                                           mov    edx,ecx
  00476c05: c1 e9 02                                        shr    ecx,0x2
  00476c08: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00476c0a: 8b ca                                           mov    ecx,edx
  00476c0c: 83 e1 03                                        and    ecx,0x3
  00476c0f: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00476c11: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00476c14: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00476c17: c6 04 01 00                                     mov    BYTE PTR [ecx+eax*1],0x0
  00476c1b: 5f                                              pop    edi
  00476c1c: 5e                                              pop    esi
  00476c1d: 8b c3                                           mov    eax,ebx
  00476c1f: 5b                                              pop    ebx
  00476c20: 8b e5                                           mov    esp,ebp
  00476c22: 5d                                              pop    ebp
  00476c23: c2 04 00                                        ret    0x4
  00476c30: 55                                              push   ebp
  00476c31: 8b ec                                           mov    ebp,esp
  00476c33: 51                                              push   ecx
  00476c34: 8a 41 10                                        mov    al,BYTE PTR [ecx+0x10]
  00476c37: 53                                              push   ebx
  00476c38: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00476c3b: 56                                              push   esi
  00476c3c: 33 d2                                           xor    edx,edx
  00476c3e: 8d 71 10                                        lea    esi,[ecx+0x10]
  00476c41: 88 03                                           mov    BYTE PTR [ebx],al
  00476c43: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00476c46: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00476c49: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00476c4c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00476c51: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00476c54: 8b 00                                           mov    eax,DWORD PTR [eax]
  00476c56: 57                                              push   edi
  00476c57: 8b f9                                           mov    edi,ecx
  00476c59: 3b c7                                           cmp    eax,edi
  00476c5b: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00476c5e: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00476c61: 73 05                                           jae    0x476c68
  00476c63: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00476c66: 8b f8                                           mov    edi,eax
  00476c68: 3b de                                           cmp    ebx,esi
  00476c6a: 75 73                                           jne    0x476cdf
  00476c6c: 3b fa                                           cmp    edi,edx
  00476c6e: 8b f0                                           mov    esi,eax
  00476c70: 76 0a                                           jbe    0x476c7c
  00476c72: 8b cb                                           mov    ecx,ebx
  00476c74: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00476c7a: 33 d2                                           xor    edx,edx
  00476c7c: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00476c7f: 2b c7                                           sub    eax,edi
  00476c81: 3b c6                                           cmp    eax,esi
  00476c83: 73 02                                           jae    0x476c87
  00476c85: 8b f0                                           mov    esi,eax
  00476c87: 3b f2                                           cmp    esi,edx
  00476c89: 0f 86 de 00 00 00                               jbe    0x476d6d
  00476c8f: 8b cb                                           mov    ecx,ebx
  00476c91: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00476c97: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00476c9a: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00476c9d: 2b d6                                           sub    edx,esi
  00476c9f: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  00476ca2: 2b d7                                           sub    edx,edi
  00476ca4: 52                                              push   edx
  00476ca5: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00476ca8: 51                                              push   ecx
  00476ca9: 50                                              push   eax
  00476caa: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00476cb0: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00476cb3: 83 c4 0c                                        add    esp,0xc
  00476cb6: 6a 00                                           push   0x0
  00476cb8: 2b fe                                           sub    edi,esi
  00476cba: 57                                              push   edi
  00476cbb: 8b cb                                           mov    ecx,ebx
  00476cbd: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00476cc3: 84 c0                                           test   al,al
  00476cc5: 0f 84 a2 00 00 00                               je     0x476d6d
  00476ccb: 57                                              push   edi
  00476ccc: 8b cb                                           mov    ecx,ebx
  00476cce: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00476cd4: 5f                                              pop    edi
  00476cd5: 5e                                              pop    esi
  00476cd6: 8b c3                                           mov    eax,ebx
  00476cd8: 5b                                              pop    ebx
  00476cd9: 8b e5                                           mov    esp,ebp
  00476cdb: 5d                                              pop    ebp
  00476cdc: c2 04 00                                        ret    0x4
  00476cdf: 3b fa                                           cmp    edi,edx
  00476ce1: 76 4e                                           jbe    0x476d31
  00476ce3: 3b f9                                           cmp    edi,ecx
  00476ce5: 75 4a                                           jne    0x476d31
  00476ce7: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00476cea: 3b c2                                           cmp    eax,edx
  00476cec: 75 05                                           jne    0x476cf3
  00476cee: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00476cf3: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00476cf7: 73 38                                           jae    0x476d31
  00476cf9: 6a 01                                           push   0x1
  00476cfb: 8b cb                                           mov    ecx,ebx
  00476cfd: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476d03: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00476d06: 85 c0                                           test   eax,eax
  00476d08: 75 05                                           jne    0x476d0f
  00476d0a: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00476d0f: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00476d12: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00476d15: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00476d18: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00476d1b: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00476d1e: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  00476d21: 5f                                              pop    edi
  00476d22: fe c1                                           inc    cl
  00476d24: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  00476d27: 5e                                              pop    esi
  00476d28: 8b c3                                           mov    eax,ebx
  00476d2a: 5b                                              pop    ebx
  00476d2b: 8b e5                                           mov    esp,ebp
  00476d2d: 5d                                              pop    ebp
  00476d2e: c2 04 00                                        ret    0x4
  00476d31: 6a 01                                           push   0x1
  00476d33: 57                                              push   edi
  00476d34: 8b cb                                           mov    ecx,ebx
  00476d36: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00476d3c: 84 c0                                           test   al,al
  00476d3e: 74 2d                                           je     0x476d6d
  00476d40: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00476d43: 85 f6                                           test   esi,esi
  00476d45: 75 06                                           jne    0x476d4d
  00476d47: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00476d4d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476d50: 8b cf                                           mov    ecx,edi
  00476d52: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00476d55: 8b d1                                           mov    edx,ecx
  00476d57: c1 e9 02                                        shr    ecx,0x2
  00476d5a: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00476d5c: 8b ca                                           mov    ecx,edx
  00476d5e: 83 e1 03                                        and    ecx,0x3
  00476d61: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00476d63: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00476d66: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00476d69: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  00476d6d: 5f                                              pop    edi
  00476d6e: 5e                                              pop    esi
  00476d6f: 8b c3                                           mov    eax,ebx
  00476d71: 5b                                              pop    ebx
  00476d72: 8b e5                                           mov    esp,ebp
  00476d74: 5d                                              pop    ebp
  00476d75: c2 04 00                                        ret    0x4
  00476d80: 55                                              push   ebp
  00476d81: 8b ec                                           mov    ebp,esp
  00476d83: 51                                              push   ecx
  00476d84: 8a 41 20                                        mov    al,BYTE PTR [ecx+0x20]
  00476d87: 53                                              push   ebx
  00476d88: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  00476d8b: 56                                              push   esi
  00476d8c: 33 d2                                           xor    edx,edx
  00476d8e: 8d 71 20                                        lea    esi,[ecx+0x20]
  00476d91: 88 03                                           mov    BYTE PTR [ebx],al
  00476d93: 89 53 04                                        mov    DWORD PTR [ebx+0x4],edx
  00476d96: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00476d99: 89 53 0c                                        mov    DWORD PTR [ebx+0xc],edx
  00476d9c: a1 ec e4 4d 00                                  mov    eax,ds:0x4de4ec
  00476da1: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00476da4: 8b 00                                           mov    eax,DWORD PTR [eax]
  00476da6: 57                                              push   edi
  00476da7: 8b f9                                           mov    edi,ecx
  00476da9: 3b c7                                           cmp    eax,edi
  00476dab: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  00476dae: 89 7d 08                                        mov    DWORD PTR [ebp+0x8],edi
  00476db1: 73 05                                           jae    0x476db8
  00476db3: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  00476db6: 8b f8                                           mov    edi,eax
  00476db8: 3b de                                           cmp    ebx,esi
  00476dba: 75 73                                           jne    0x476e2f
  00476dbc: 3b fa                                           cmp    edi,edx
  00476dbe: 8b f0                                           mov    esi,eax
  00476dc0: 76 0a                                           jbe    0x476dcc
  00476dc2: 8b cb                                           mov    ecx,ebx
  00476dc4: ff 15 e8 e4 4d 00                               call   DWORD PTR ds:0x4de4e8
  00476dca: 33 d2                                           xor    edx,edx
  00476dcc: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  00476dcf: 2b c7                                           sub    eax,edi
  00476dd1: 3b c6                                           cmp    eax,esi
  00476dd3: 73 02                                           jae    0x476dd7
  00476dd5: 8b f0                                           mov    esi,eax
  00476dd7: 3b f2                                           cmp    esi,edx
  00476dd9: 0f 86 de 00 00 00                               jbe    0x476ebd
  00476ddf: 8b cb                                           mov    ecx,ebx
  00476de1: ff 15 e4 e4 4d 00                               call   DWORD PTR ds:0x4de4e4
  00476de7: 8b 53 08                                        mov    edx,DWORD PTR [ebx+0x8]
  00476dea: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00476ded: 2b d6                                           sub    edx,esi
  00476def: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  00476df2: 2b d7                                           sub    edx,edi
  00476df4: 52                                              push   edx
  00476df5: 8d 0c 30                                        lea    ecx,[eax+esi*1]
  00476df8: 51                                              push   ecx
  00476df9: 50                                              push   eax
  00476dfa: ff 15 7c e3 4d 00                               call   DWORD PTR ds:0x4de37c
  00476e00: 8b 7b 08                                        mov    edi,DWORD PTR [ebx+0x8]
  00476e03: 83 c4 0c                                        add    esp,0xc
  00476e06: 6a 00                                           push   0x0
  00476e08: 2b fe                                           sub    edi,esi
  00476e0a: 57                                              push   edi
  00476e0b: 8b cb                                           mov    ecx,ebx
  00476e0d: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00476e13: 84 c0                                           test   al,al
  00476e15: 0f 84 a2 00 00 00                               je     0x476ebd
  00476e1b: 57                                              push   edi
  00476e1c: 8b cb                                           mov    ecx,ebx
  00476e1e: ff 15 dc e4 4d 00                               call   DWORD PTR ds:0x4de4dc
  00476e24: 5f                                              pop    edi
  00476e25: 5e                                              pop    esi
  00476e26: 8b c3                                           mov    eax,ebx
  00476e28: 5b                                              pop    ebx
  00476e29: 8b e5                                           mov    esp,ebp
  00476e2b: 5d                                              pop    ebp
  00476e2c: c2 04 00                                        ret    0x4
  00476e2f: 3b fa                                           cmp    edi,edx
  00476e31: 76 4e                                           jbe    0x476e81
  00476e33: 3b f9                                           cmp    edi,ecx
  00476e35: 75 4a                                           jne    0x476e81
  00476e37: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00476e3a: 3b c2                                           cmp    eax,edx
  00476e3c: 75 05                                           jne    0x476e43
  00476e3e: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00476e43: 80 78 ff fe                                     cmp    BYTE PTR [eax-0x1],0xfe
  00476e47: 73 38                                           jae    0x476e81
  00476e49: 6a 01                                           push   0x1
  00476e4b: 8b cb                                           mov    ecx,ebx
  00476e4d: ff 15 14 e5 4d 00                               call   DWORD PTR ds:0x4de514
  00476e53: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00476e56: 85 c0                                           test   eax,eax
  00476e58: 75 05                                           jne    0x476e5f
  00476e5a: a1 d8 e4 4d 00                                  mov    eax,ds:0x4de4d8
  00476e5f: 89 43 04                                        mov    DWORD PTR [ebx+0x4],eax
  00476e62: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  00476e65: 89 53 08                                        mov    DWORD PTR [ebx+0x8],edx
  00476e68: 8b 4e 0c                                        mov    ecx,DWORD PTR [esi+0xc]
  00476e6b: 89 4b 0c                                        mov    DWORD PTR [ebx+0xc],ecx
  00476e6e: 8a 48 ff                                        mov    cl,BYTE PTR [eax-0x1]
  00476e71: 5f                                              pop    edi
  00476e72: fe c1                                           inc    cl
  00476e74: 88 48 ff                                        mov    BYTE PTR [eax-0x1],cl
  00476e77: 5e                                              pop    esi
  00476e78: 8b c3                                           mov    eax,ebx
  00476e7a: 5b                                              pop    ebx
  00476e7b: 8b e5                                           mov    esp,ebp
  00476e7d: 5d                                              pop    ebp
  00476e7e: c2 04 00                                        ret    0x4
  00476e81: 6a 01                                           push   0x1
  00476e83: 57                                              push   edi
  00476e84: 8b cb                                           mov    ecx,ebx
  00476e86: ff 15 e0 e4 4d 00                               call   DWORD PTR ds:0x4de4e0
  00476e8c: 84 c0                                           test   al,al
  00476e8e: 74 2d                                           je     0x476ebd
  00476e90: 8b 76 04                                        mov    esi,DWORD PTR [esi+0x4]
  00476e93: 85 f6                                           test   esi,esi
  00476e95: 75 06                                           jne    0x476e9d
  00476e97: 8b 35 d8 e4 4d 00                               mov    esi,DWORD PTR ds:0x4de4d8
  00476e9d: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  00476ea0: 8b cf                                           mov    ecx,edi
  00476ea2: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  00476ea5: 8b d1                                           mov    edx,ecx
  00476ea7: c1 e9 02                                        shr    ecx,0x2
  00476eaa: f3 a5                                           rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  00476eac: 8b ca                                           mov    ecx,edx
  00476eae: 83 e1 03                                        and    ecx,0x3
  00476eb1: f3 a4                                           rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  00476eb3: 8b 4b 04                                        mov    ecx,DWORD PTR [ebx+0x4]
  00476eb6: 89 43 08                                        mov    DWORD PTR [ebx+0x8],eax
  00476eb9: c6 04 08 00                                     mov    BYTE PTR [eax+ecx*1],0x0
  00476ebd: 5f                                              pop    edi
  00476ebe: 5e                                              pop    esi
  00476ebf: 8b c3                                           mov    eax,ebx
  00476ec1: 5b                                              pop    ebx
  00476ec2: 8b e5                                           mov    esp,ebp
  00476ec4: 5d                                              pop    ebp
  00476ec5: c2 04 00                                        ret    0x4
  00477060: 55                                              push   ebp
  00477061: 8b ec                                           mov    ebp,esp
  00477063: 6a ff                                           push   0xffffffff
  00477065: 68 c9 90 4d 00                                  push   0x4d90c9
  0047706a: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00477070: 50                                              push   eax
  00477071: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00477078: 83 ec 3c                                        sub    esp,0x3c
  0047707b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0047707e: 53                                              push   ebx
  0047707f: 56                                              push   esi
  00477080: 8b f1                                           mov    esi,ecx
  00477082: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00477084: 89 4d 10                                        mov    DWORD PTR [ebp+0x10],ecx
  00477087: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  0047708a: 85 c9                                           test   ecx,ecx
  0047708c: 57                                              push   edi
  0047708d: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  00477090: 75 04                                           jne    0x477096
  00477092: 33 db                                           xor    ebx,ebx
  00477094: eb 08                                           jmp    0x47709e
  00477096: 8b 5e 0c                                        mov    ebx,DWORD PTR [esi+0xc]
  00477099: 2b d9                                           sub    ebx,ecx
  0047709b: c1 fb 02                                        sar    ebx,0x2
  0047709e: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004770a1: 85 ff                                           test   edi,edi
  004770a3: 0f 84 ea 02 00 00                               je     0x477393
  004770a9: 85 c9                                           test   ecx,ecx
  004770ab: 75 04                                           jne    0x4770b1
  004770ad: 33 c0                                           xor    eax,eax
  004770af: eb 08                                           jmp    0x4770b9
  004770b1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004770b4: 2b c1                                           sub    eax,ecx
  004770b6: c1 f8 02                                        sar    eax,0x2
  004770b9: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  004770be: 2b d0                                           sub    edx,eax
  004770c0: 3b d7                                           cmp    edx,edi
  004770c2: 73 2f                                           jae    0x4770f3
  004770c4: 68 80 05 50 00                                  push   0x500580
  004770c9: 8d 4d d4                                        lea    ecx,[ebp-0x2c]
  004770cc: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  004770d2: 8d 45 d4                                        lea    eax,[ebp-0x2c]
  004770d5: 50                                              push   eax
  004770d6: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004770d9: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  004770e0: e8 3b e3 f8 ff                                  call   0x405420
  004770e5: 68 e8 0a 4e 00                                  push   0x4e0ae8
  004770ea: 8d 4d b8                                        lea    ecx,[ebp-0x48]
  004770ed: 51                                              push   ecx
  004770ee: e8 63 ac 05 00                                  call   0x4d1d56
  004770f3: 85 c9                                           test   ecx,ecx
  004770f5: 75 04                                           jne    0x4770fb
  004770f7: 33 c0                                           xor    eax,eax
  004770f9: eb 08                                           jmp    0x477103
  004770fb: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004770fe: 2b c1                                           sub    eax,ecx
  00477100: c1 f8 02                                        sar    eax,0x2
  00477103: 03 c7                                           add    eax,edi
  00477105: 3b d8                                           cmp    ebx,eax
  00477107: 0f 83 3e 01 00 00                               jae    0x47724b
  0047710d: 8b c3                                           mov    eax,ebx
  0047710f: d1 e8                                           shr    eax,1
  00477111: ba ff ff ff 3f                                  mov    edx,0x3fffffff
  00477116: 2b d0                                           sub    edx,eax
  00477118: 3b d3                                           cmp    edx,ebx
  0047711a: 73 04                                           jae    0x477120
  0047711c: 33 db                                           xor    ebx,ebx
  0047711e: eb 02                                           jmp    0x477122
  00477120: 03 d8                                           add    ebx,eax
  00477122: 85 c9                                           test   ecx,ecx
  00477124: 75 04                                           jne    0x47712a
  00477126: 33 c0                                           xor    eax,eax
  00477128: eb 08                                           jmp    0x477132
  0047712a: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0047712d: 2b c1                                           sub    eax,ecx
  0047712f: c1 f8 02                                        sar    eax,0x2
  00477132: 03 c7                                           add    eax,edi
  00477134: 3b d8                                           cmp    ebx,eax
  00477136: 73 13                                           jae    0x47714b
  00477138: 85 c9                                           test   ecx,ecx
  0047713a: 75 04                                           jne    0x477140
  0047713c: 33 c0                                           xor    eax,eax
  0047713e: eb 08                                           jmp    0x477148
  00477140: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00477143: 2b c1                                           sub    eax,ecx
  00477145: c1 f8 02                                        sar    eax,0x2
  00477148: 8d 1c 38                                        lea    ebx,[eax+edi*1]
  0047714b: 8d 04 9d 00 00 00 00                            lea    eax,[ebx*4+0x0]
  00477152: 50                                              push   eax
  00477153: e8 98 ae fc ff                                  call   0x441ff0
  00477158: 83 c4 04                                        add    esp,0x4
  0047715b: 50                                              push   eax
  0047715c: 51                                              push   ecx
  0047715d: 89 45 e8                                        mov    DWORD PTR [ebp-0x18],eax
  00477160: 8d 55 08                                        lea    edx,[ebp+0x8]
  00477163: 8b cc                                           mov    ecx,esp
  00477165: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00477168: 52                                              push   edx
  00477169: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  0047716c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00477173: e8 48 02 00 00                                  call   0x4773c0
  00477178: 51                                              push   ecx
  00477179: 8b c4                                           mov    eax,esp
  0047717b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0047717e: 50                                              push   eax
  0047717f: 8b ce                                           mov    ecx,esi
  00477181: e8 2a 02 00 00                                  call   0x4773b0
  00477186: 8b ce                                           mov    ecx,esi
  00477188: e8 f3 09 00 00                                  call   0x477b80
  0047718d: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00477190: 51                                              push   ecx
  00477191: 57                                              push   edi
  00477192: 50                                              push   eax
  00477193: 8b ce                                           mov    ecx,esi
  00477195: e8 36 06 00 00                                  call   0x4777d0
  0047719a: 50                                              push   eax
  0047719b: 51                                              push   ecx
  0047719c: 8b d4                                           mov    edx,esp
  0047719e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004771a1: 52                                              push   edx
  004771a2: 8b ce                                           mov    ecx,esi
  004771a4: e8 a7 fd ff ff                                  call   0x476f50
  004771a9: 51                                              push   ecx
  004771aa: 8d 45 08                                        lea    eax,[ebp+0x8]
  004771ad: 8b cc                                           mov    ecx,esp
  004771af: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004771b2: 50                                              push   eax
  004771b3: e8 08 02 00 00                                  call   0x4773c0
  004771b8: 8b ce                                           mov    ecx,esi
  004771ba: e8 c1 09 00 00                                  call   0x477b80
  004771bf: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004771c2: 85 c0                                           test   eax,eax
  004771c4: 74 1a                                           je     0x4771e0
  004771c6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004771c9: 3b c1                                           cmp    eax,ecx
  004771cb: 74 07                                           je     0x4771d4
  004771cd: 83 c0 04                                        add    eax,0x4
  004771d0: 3b c1                                           cmp    eax,ecx
  004771d2: 75 f9                                           jne    0x4771cd
  004771d4: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004771d7: 51                                              push   ecx
  004771d8: e8 83 ae fc ff                                  call   0x442060
  004771dd: 83 c4 04                                        add    esp,0x4
  004771e0: 8b 55 ec                                        mov    edx,DWORD PTR [ebp-0x14]
  004771e3: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004771e6: 85 c9                                           test   ecx,ecx
  004771e8: 8d 04 9a                                        lea    eax,[edx+ebx*4]
  004771eb: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004771ee: 75 20                                           jne    0x477210
  004771f0: 33 c0                                           xor    eax,eax
  004771f2: 8b c7                                           mov    eax,edi
  004771f4: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  004771f7: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004771fa: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004771fd: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00477200: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00477207: 5f                                              pop    edi
  00477208: 5e                                              pop    esi
  00477209: 5b                                              pop    ebx
  0047720a: 8b e5                                           mov    esp,ebp
  0047720c: 5d                                              pop    ebp
  0047720d: c2 0c 00                                        ret    0xc
  00477210: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00477213: 2b c1                                           sub    eax,ecx
  00477215: c1 f8 02                                        sar    eax,0x2
  00477218: 03 c7                                           add    eax,edi
  0047721a: 8d 0c 82                                        lea    ecx,[edx+eax*4]
  0047721d: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  00477220: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  00477223: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00477226: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0047722d: 5f                                              pop    edi
  0047722e: 5e                                              pop    esi
  0047722f: 5b                                              pop    ebx
  00477230: 8b e5                                           mov    esp,ebp
  00477232: 5d                                              pop    ebp
  00477233: c2 0c 00                                        ret    0xc
  0047724b: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  0047724e: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00477251: 8b d0                                           mov    edx,eax
  00477253: 2b d1                                           sub    edx,ecx
  00477255: c1 fa 02                                        sar    edx,0x2
  00477258: 3b d7                                           cmp    edx,edi
  0047725a: 0f 83 a5 00 00 00                               jae    0x477305
  00477260: 8d 1c bd 00 00 00 00                            lea    ebx,[edi*4+0x0]
  00477267: 8d 04 0b                                        lea    eax,[ebx+ecx*1]
  0047726a: 50                                              push   eax
  0047726b: 51                                              push   ecx
  0047726c: 8b cc                                           mov    ecx,esp
  0047726e: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00477271: 51                                              push   ecx
  00477272: 8b ce                                           mov    ecx,esi
  00477274: e8 d7 fc ff ff                                  call   0x476f50
  00477279: 51                                              push   ecx
  0047727a: 8d 55 08                                        lea    edx,[ebp+0x8]
  0047727d: 8b cc                                           mov    ecx,esp
  0047727f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00477282: 52                                              push   edx
  00477283: e8 38 01 00 00                                  call   0x4773c0
  00477288: 8b ce                                           mov    ecx,esi
  0047728a: e8 f1 08 00 00                                  call   0x477b80
  0047728f: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00477292: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  00477295: 51                                              push   ecx
  00477296: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  00477299: 8b d0                                           mov    edx,eax
  0047729b: 2b d1                                           sub    edx,ecx
  0047729d: c1 fa 02                                        sar    edx,0x2
  004772a0: 8b cf                                           mov    ecx,edi
  004772a2: 2b ca                                           sub    ecx,edx
  004772a4: 51                                              push   ecx
  004772a5: 50                                              push   eax
  004772a6: 8b ce                                           mov    ecx,esi
  004772a8: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  004772af: e8 1c 05 00 00                                  call   0x4777d0
  004772b4: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004772b7: 03 cb                                           add    ecx,ebx
  004772b9: 8d 55 10                                        lea    edx,[ebp+0x10]
  004772bc: 52                                              push   edx
  004772bd: 51                                              push   ecx
  004772be: 8b c4                                           mov    eax,esp
  004772c0: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  004772c3: 57                                              push   edi
  004772c4: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004772c7: 50                                              push   eax
  004772c8: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  004772cb: 51                                              push   ecx
  004772cc: 8b ce                                           mov    ecx,esi
  004772ce: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  004772d5: e8 76 fc ff ff                                  call   0x476f50
  004772da: 8b c8                                           mov    ecx,eax
  004772dc: e8 1f 05 00 00                                  call   0x477800
  004772e1: 51                                              push   ecx
  004772e2: 8d 55 08                                        lea    edx,[ebp+0x8]
  004772e5: 8b cc                                           mov    ecx,esp
  004772e7: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  004772ea: 52                                              push   edx
  004772eb: e9 96 00 00 00                                  jmp    0x477386
  00477305: 50                                              push   eax
  00477306: 51                                              push   ecx
  00477307: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  0047730a: 8d 45 0c                                        lea    eax,[ebp+0xc]
  0047730d: 8b cc                                           mov    ecx,esp
  0047730f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00477312: 50                                              push   eax
  00477313: e8 a8 00 00 00                                  call   0x4773c0
  00477318: 51                                              push   ecx
  00477319: 8b cc                                           mov    ecx,esp
  0047731b: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0047731e: 57                                              push   edi
  0047731f: 51                                              push   ecx
  00477320: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00477323: e8 d8 04 00 00                                  call   0x477800
  00477328: 8b ce                                           mov    ecx,esi
  0047732a: e8 51 08 00 00                                  call   0x477b80
  0047732f: 8b 55 0c                                        mov    edx,DWORD PTR [ebp+0xc]
  00477332: 51                                              push   ecx
  00477333: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  00477336: 8b c4                                           mov    eax,esp
  00477338: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  0047733b: 51                                              push   ecx
  0047733c: 89 10                                           mov    DWORD PTR [eax],edx
  0047733e: 8b c4                                           mov    eax,esp
  00477340: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00477343: 57                                              push   edi
  00477344: 50                                              push   eax
  00477345: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  00477348: e8 b3 04 00 00                                  call   0x477800
  0047734d: 51                                              push   ecx
  0047734e: 8d 55 08                                        lea    edx,[ebp+0x8]
  00477351: 8b cc                                           mov    ecx,esp
  00477353: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00477356: 52                                              push   edx
  00477357: e8 64 00 00 00                                  call   0x4773c0
  0047735c: 8d 45 e4                                        lea    eax,[ebp-0x1c]
  0047735f: 50                                              push   eax
  00477360: e8 6b 08 00 00                                  call   0x477bd0
  00477365: 83 c4 10                                        add    esp,0x10
  00477368: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0047736b: 51                                              push   ecx
  0047736c: 51                                              push   ecx
  0047736d: 8b d4                                           mov    edx,esp
  0047736f: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00477372: 57                                              push   edi
  00477373: 52                                              push   edx
  00477374: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00477377: e8 54 00 00 00                                  call   0x4773d0
  0047737c: 51                                              push   ecx
  0047737d: 8d 45 08                                        lea    eax,[ebp+0x8]
  00477380: 8b cc                                           mov    ecx,esp
  00477382: 89 65 e8                                        mov    DWORD PTR [ebp-0x18],esp
  00477385: 50                                              push   eax
  00477386: e8 35 00 00 00                                  call   0x4773c0
  0047738b: e8 20 08 00 00                                  call   0x477bb0
  00477390: 83 c4 0c                                        add    esp,0xc
  00477393: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00477396: 5f                                              pop    edi
  00477397: 5e                                              pop    esi
  00477398: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  0047739f: 5b                                              pop    ebx
  004773a0: 8b e5                                           mov    esp,ebp
  004773a2: 5d                                              pop    ebp
  004773a3: c2 0c 00                                        ret    0xc
  004773f0: 55                                              push   ebp
  004773f1: 8b ec                                           mov    ebp,esp
  004773f3: 6a ff                                           push   0xffffffff
  004773f5: 68 e9 90 4d 00                                  push   0x4d90e9
  004773fa: 64 a1 00 00 00 00                               mov    eax,fs:0x0
  00477400: 50                                              push   eax
  00477401: 64 89 25 00 00 00 00                            mov    DWORD PTR fs:0x0,esp
  00477408: 83 ec 48                                        sub    esp,0x48
  0047740b: 8b 45 10                                        mov    eax,DWORD PTR [ebp+0x10]
  0047740e: 53                                              push   ebx
  0047740f: 56                                              push   esi
  00477410: 8b f1                                           mov    esi,ecx
  00477412: 8b 08                                           mov    ecx,DWORD PTR [eax]
  00477414: 8b 50 04                                        mov    edx,DWORD PTR [eax+0x4]
  00477417: 89 4d d8                                        mov    DWORD PTR [ebp-0x28],ecx
  0047741a: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  0047741d: 89 4d e0                                        mov    DWORD PTR [ebp-0x20],ecx
  00477420: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00477423: 85 c9                                           test   ecx,ecx
  00477425: 89 55 dc                                        mov    DWORD PTR [ebp-0x24],edx
  00477428: 8b 50 0c                                        mov    edx,DWORD PTR [eax+0xc]
  0047742b: 57                                              push   edi
  0047742c: 89 65 f0                                        mov    DWORD PTR [ebp-0x10],esp
  0047742f: 89 55 e4                                        mov    DWORD PTR [ebp-0x1c],edx
  00477432: 75 04                                           jne    0x477438
  00477434: 33 ff                                           xor    edi,edi
  00477436: eb 08                                           jmp    0x477440
  00477438: 8b 7e 0c                                        mov    edi,DWORD PTR [esi+0xc]
  0047743b: 2b f9                                           sub    edi,ecx
  0047743d: c1 ff 04                                        sar    edi,0x4
  00477440: 8b 5d 0c                                        mov    ebx,DWORD PTR [ebp+0xc]
  00477443: 85 db                                           test   ebx,ebx
  00477445: 0f 84 ea 02 00 00                               je     0x477735
  0047744b: 85 c9                                           test   ecx,ecx
  0047744d: 75 04                                           jne    0x477453
  0047744f: 33 c0                                           xor    eax,eax
  00477451: eb 08                                           jmp    0x47745b
  00477453: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00477456: 2b c1                                           sub    eax,ecx
  00477458: c1 f8 04                                        sar    eax,0x4
  0047745b: ba ff ff ff 0f                                  mov    edx,0xfffffff
  00477460: 2b d0                                           sub    edx,eax
  00477462: 3b d3                                           cmp    edx,ebx
  00477464: 73 2f                                           jae    0x477495
  00477466: 68 80 05 50 00                                  push   0x500580
  0047746b: 8d 4d c8                                        lea    ecx,[ebp-0x38]
  0047746e: ff 15 0c e5 4d 00                               call   DWORD PTR ds:0x4de50c
  00477474: 8d 45 c8                                        lea    eax,[ebp-0x38]
  00477477: 50                                              push   eax
  00477478: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  0047747b: c7 45 fc 00 00 00 00                            mov    DWORD PTR [ebp-0x4],0x0
  00477482: e8 99 df f8 ff                                  call   0x405420
  00477487: 68 e8 0a 4e 00                                  push   0x4e0ae8
  0047748c: 8d 4d ac                                        lea    ecx,[ebp-0x54]
  0047748f: 51                                              push   ecx
  00477490: e8 c1 a8 05 00                                  call   0x4d1d56
  00477495: 85 c9                                           test   ecx,ecx
  00477497: 75 04                                           jne    0x47749d
  00477499: 33 c0                                           xor    eax,eax
  0047749b: eb 08                                           jmp    0x4774a5
  0047749d: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004774a0: 2b c1                                           sub    eax,ecx
  004774a2: c1 f8 04                                        sar    eax,0x4
  004774a5: 03 c3                                           add    eax,ebx
  004774a7: 3b f8                                           cmp    edi,eax
  004774a9: 0f 83 42 01 00 00                               jae    0x4775f1
  004774af: 8b c7                                           mov    eax,edi
  004774b1: d1 e8                                           shr    eax,1
  004774b3: ba ff ff ff 0f                                  mov    edx,0xfffffff
  004774b8: 2b d0                                           sub    edx,eax
  004774ba: 3b d7                                           cmp    edx,edi
  004774bc: 73 04                                           jae    0x4774c2
  004774be: 33 ff                                           xor    edi,edi
  004774c0: eb 02                                           jmp    0x4774c4
  004774c2: 03 f8                                           add    edi,eax
  004774c4: 85 c9                                           test   ecx,ecx
  004774c6: 75 04                                           jne    0x4774cc
  004774c8: 33 c0                                           xor    eax,eax
  004774ca: eb 08                                           jmp    0x4774d4
  004774cc: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004774cf: 2b c1                                           sub    eax,ecx
  004774d1: c1 f8 04                                        sar    eax,0x4
  004774d4: 03 c3                                           add    eax,ebx
  004774d6: 3b f8                                           cmp    edi,eax
  004774d8: 73 13                                           jae    0x4774ed
  004774da: 85 c9                                           test   ecx,ecx
  004774dc: 75 04                                           jne    0x4774e2
  004774de: 33 c0                                           xor    eax,eax
  004774e0: eb 08                                           jmp    0x4774ea
  004774e2: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004774e5: 2b c1                                           sub    eax,ecx
  004774e7: c1 f8 04                                        sar    eax,0x4
  004774ea: 8d 3c 18                                        lea    edi,[eax+ebx*1]
  004774ed: 8b c7                                           mov    eax,edi
  004774ef: c1 e0 04                                        shl    eax,0x4
  004774f2: 50                                              push   eax
  004774f3: e8 f8 aa fc ff                                  call   0x441ff0
  004774f8: 83 c4 04                                        add    esp,0x4
  004774fb: 50                                              push   eax
  004774fc: 51                                              push   ecx
  004774fd: 89 45 ec                                        mov    DWORD PTR [ebp-0x14],eax
  00477500: 8d 55 08                                        lea    edx,[ebp+0x8]
  00477503: 8b cc                                           mov    ecx,esp
  00477505: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00477508: 52                                              push   edx
  00477509: 89 45 10                                        mov    DWORD PTR [ebp+0x10],eax
  0047750c: c7 45 fc 01 00 00 00                            mov    DWORD PTR [ebp-0x4],0x1
  00477513: e8 48 02 00 00                                  call   0x477760
  00477518: 51                                              push   ecx
  00477519: 8b c4                                           mov    eax,esp
  0047751b: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0047751e: 50                                              push   eax
  0047751f: 8b ce                                           mov    ecx,esi
  00477521: e8 2a 02 00 00                                  call   0x477750
  00477526: 8b ce                                           mov    ecx,esi
  00477528: e8 e3 06 00 00                                  call   0x477c10
  0047752d: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00477530: 51                                              push   ecx
  00477531: 53                                              push   ebx
  00477532: 50                                              push   eax
  00477533: 8b ce                                           mov    ecx,esi
  00477535: e8 e6 02 00 00                                  call   0x477820
  0047753a: 50                                              push   eax
  0047753b: 51                                              push   ecx
  0047753c: 8b d4                                           mov    edx,esp
  0047753e: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00477541: 52                                              push   edx
  00477542: 8b ce                                           mov    ecx,esi
  00477544: e8 77 fa ff ff                                  call   0x476fc0
  00477549: 51                                              push   ecx
  0047754a: 8d 45 08                                        lea    eax,[ebp+0x8]
  0047754d: 8b cc                                           mov    ecx,esp
  0047754f: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  00477552: 50                                              push   eax
  00477553: e8 08 02 00 00                                  call   0x477760
  00477558: 8b ce                                           mov    ecx,esi
  0047755a: e8 b1 06 00 00                                  call   0x477c10
  0047755f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  00477562: 85 c0                                           test   eax,eax
  00477564: 74 1a                                           je     0x477580
  00477566: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  00477569: 3b c1                                           cmp    eax,ecx
  0047756b: 74 07                                           je     0x477574
  0047756d: 83 c0 10                                        add    eax,0x10
  00477570: 3b c1                                           cmp    eax,ecx
  00477572: 75 f9                                           jne    0x47756d
  00477574: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00477577: 51                                              push   ecx
  00477578: e8 e3 aa fc ff                                  call   0x442060
  0047757d: 83 c4 04                                        add    esp,0x4
  00477580: 8b 55 10                                        mov    edx,DWORD PTR [ebp+0x10]
  00477583: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  00477586: c1 e7 04                                        shl    edi,0x4
  00477589: 03 fa                                           add    edi,edx
  0047758b: 85 c9                                           test   ecx,ecx
  0047758d: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  00477590: 75 22                                           jne    0x4775b4
  00477592: 33 c0                                           xor    eax,eax
  00477594: 8b c3                                           mov    eax,ebx
  00477596: c1 e0 04                                        shl    eax,0x4
  00477599: 03 c2                                           add    eax,edx
  0047759b: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  0047759e: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004775a1: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004775a4: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004775ab: 5f                                              pop    edi
  004775ac: 5e                                              pop    esi
  004775ad: 5b                                              pop    ebx
  004775ae: 8b e5                                           mov    esp,ebp
  004775b0: 5d                                              pop    ebp
  004775b1: c2 0c 00                                        ret    0xc
  004775b4: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004775b7: 2b c1                                           sub    eax,ecx
  004775b9: c1 f8 04                                        sar    eax,0x4
  004775bc: 03 c3                                           add    eax,ebx
  004775be: c1 e0 04                                        shl    eax,0x4
  004775c1: 03 c2                                           add    eax,edx
  004775c3: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004775c6: 89 56 04                                        mov    DWORD PTR [esi+0x4],edx
  004775c9: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  004775cc: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  004775d3: 5f                                              pop    edi
  004775d4: 5e                                              pop    esi
  004775d5: 5b                                              pop    ebx
  004775d6: 8b e5                                           mov    esp,ebp
  004775d8: 5d                                              pop    ebp
  004775d9: c2 0c 00                                        ret    0xc
  004775f1: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004775f4: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004775f7: 8b d0                                           mov    edx,eax
  004775f9: 2b d1                                           sub    edx,ecx
  004775fb: c1 fa 04                                        sar    edx,0x4
  004775fe: 3b d3                                           cmp    edx,ebx
  00477600: 0f 83 a1 00 00 00                               jae    0x4776a7
  00477606: 8b fb                                           mov    edi,ebx
  00477608: c1 e7 04                                        shl    edi,0x4
  0047760b: 8d 04 0f                                        lea    eax,[edi+ecx*1]
  0047760e: 50                                              push   eax
  0047760f: 51                                              push   ecx
  00477610: 8b cc                                           mov    ecx,esp
  00477612: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00477615: 51                                              push   ecx
  00477616: 8b ce                                           mov    ecx,esi
  00477618: e8 a3 f9 ff ff                                  call   0x476fc0
  0047761d: 51                                              push   ecx
  0047761e: 8d 55 08                                        lea    edx,[ebp+0x8]
  00477621: 8b cc                                           mov    ecx,esp
  00477623: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00477626: 52                                              push   edx
  00477627: e8 34 01 00 00                                  call   0x477760
  0047762c: 8b ce                                           mov    ecx,esi
  0047762e: e8 dd 05 00 00                                  call   0x477c10
  00477633: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  00477636: 8d 4d d8                                        lea    ecx,[ebp-0x28]
  00477639: 51                                              push   ecx
  0047763a: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  0047763d: 8b d0                                           mov    edx,eax
  0047763f: 2b d1                                           sub    edx,ecx
  00477641: c1 fa 04                                        sar    edx,0x4
  00477644: 8b cb                                           mov    ecx,ebx
  00477646: 2b ca                                           sub    ecx,edx
  00477648: 51                                              push   ecx
  00477649: 50                                              push   eax
  0047764a: 8b ce                                           mov    ecx,esi
  0047764c: c7 45 fc 03 00 00 00                            mov    DWORD PTR [ebp-0x4],0x3
  00477653: e8 c8 01 00 00                                  call   0x477820
  00477658: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  0047765b: 03 cf                                           add    ecx,edi
  0047765d: 8d 55 d8                                        lea    edx,[ebp-0x28]
  00477660: 52                                              push   edx
  00477661: 51                                              push   ecx
  00477662: 8b c4                                           mov    eax,esp
  00477664: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00477667: 53                                              push   ebx
  00477668: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  0047766b: 50                                              push   eax
  0047766c: 8d 4d 10                                        lea    ecx,[ebp+0x10]
  0047766f: 51                                              push   ecx
  00477670: 8b ce                                           mov    ecx,esi
  00477672: c7 45 fc ff ff ff ff                            mov    DWORD PTR [ebp-0x4],0xffffffff
  00477679: e8 42 f9 ff ff                                  call   0x476fc0
  0047767e: 8b c8                                           mov    ecx,eax
  00477680: e8 eb 01 00 00                                  call   0x477870
  00477685: 51                                              push   ecx
  00477686: 8b cc                                           mov    ecx,esp
  00477688: 89 65 ec                                        mov    DWORD PTR [ebp-0x14],esp
  0047768b: e9 94 00 00 00                                  jmp    0x477724
  004776a7: 50                                              push   eax
  004776a8: 51                                              push   ecx
  004776a9: 8d 55 0c                                        lea    edx,[ebp+0xc]
  004776ac: 8b cc                                           mov    ecx,esp
  004776ae: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004776b1: 52                                              push   edx
  004776b2: 89 45 0c                                        mov    DWORD PTR [ebp+0xc],eax
  004776b5: e8 a6 00 00 00                                  call   0x477760
  004776ba: 51                                              push   ecx
  004776bb: 8b c4                                           mov    eax,esp
  004776bd: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004776c0: 53                                              push   ebx
  004776c1: 50                                              push   eax
  004776c2: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004776c5: e8 a6 01 00 00                                  call   0x477870
  004776ca: 8b ce                                           mov    ecx,esi
  004776cc: e8 3f 05 00 00                                  call   0x477c10
  004776d1: 51                                              push   ecx
  004776d2: 8b 4d 0c                                        mov    ecx,DWORD PTR [ebp+0xc]
  004776d5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004776d8: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004776db: 8b c4                                           mov    eax,esp
  004776dd: 51                                              push   ecx
  004776de: 8b d4                                           mov    edx,esp
  004776e0: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004776e3: 53                                              push   ebx
  004776e4: 89 08                                           mov    DWORD PTR [eax],ecx
  004776e6: 52                                              push   edx
  004776e7: 8d 4d 0c                                        lea    ecx,[ebp+0xc]
  004776ea: e8 81 01 00 00                                  call   0x477870
  004776ef: 51                                              push   ecx
  004776f0: 8d 45 08                                        lea    eax,[ebp+0x8]
  004776f3: 8b cc                                           mov    ecx,esp
  004776f5: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  004776f8: 50                                              push   eax
  004776f9: e8 62 00 00 00                                  call   0x477760
  004776fe: 8d 4d e8                                        lea    ecx,[ebp-0x18]
  00477701: 51                                              push   ecx
  00477702: e8 99 05 00 00                                  call   0x477ca0
  00477707: 83 c4 10                                        add    esp,0x10
  0047770a: 8d 55 d8                                        lea    edx,[ebp-0x28]
  0047770d: 52                                              push   edx
  0047770e: 51                                              push   ecx
  0047770f: 8b c4                                           mov    eax,esp
  00477711: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00477714: 53                                              push   ebx
  00477715: 50                                              push   eax
  00477716: 8d 4d 08                                        lea    ecx,[ebp+0x8]
  00477719: e8 52 00 00 00                                  call   0x477770
  0047771e: 51                                              push   ecx
  0047771f: 8b cc                                           mov    ecx,esp
  00477721: 89 65 10                                        mov    DWORD PTR [ebp+0x10],esp
  00477724: 8d 55 08                                        lea    edx,[ebp+0x8]
  00477727: 52                                              push   edx
  00477728: e8 33 00 00 00                                  call   0x477760
  0047772d: e8 2e 05 00 00                                  call   0x477c60
  00477732: 83 c4 0c                                        add    esp,0xc
  00477735: 8b 4d f4                                        mov    ecx,DWORD PTR [ebp-0xc]
  00477738: 5f                                              pop    edi
  00477739: 5e                                              pop    esi
  0047773a: 64 89 0d 00 00 00 00                            mov    DWORD PTR fs:0x0,ecx
  00477741: 5b                                              pop    ebx
  00477742: 8b e5                                           mov    esp,ebp
  00477744: 5d                                              pop    ebp
  00477745: c2 0c 00                                        ret    0xc
  004ab950: 55                                              push   ebp
  004ab951: 8b ec                                           mov    ebp,esp
  004ab953: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ab956: 57                                              push   edi
  004ab957: 8b f9                                           mov    edi,ecx
  004ab959: 33 c9                                           xor    ecx,ecx
  004ab95b: 3b c1                                           cmp    eax,ecx
  004ab95d: 89 4f 04                                        mov    DWORD PTR [edi+0x4],ecx
  004ab960: 89 4f 08                                        mov    DWORD PTR [edi+0x8],ecx
  004ab963: 89 4f 0c                                        mov    DWORD PTR [edi+0xc],ecx
  004ab966: 75 07                                           jne    0x4ab96f
  004ab968: 32 c0                                           xor    al,al
  004ab96a: 5f                                              pop    edi
  004ab96b: 5d                                              pop    ebp
  004ab96c: c2 04 00                                        ret    0x4
  004ab96f: 56                                              push   esi
  004ab970: 8d 34 c5 00 00 00 00                            lea    esi,[eax*8+0x0]
  004ab977: 2b f0                                           sub    esi,eax
  004ab979: c1 e6 02                                        shl    esi,0x2
  004ab97c: 56                                              push   esi
  004ab97d: e8 6e 66 f9 ff                                  call   0x441ff0
  004ab982: 83 c4 04                                        add    esp,0x4
  004ab985: 03 f0                                           add    esi,eax
  004ab987: 89 77 0c                                        mov    DWORD PTR [edi+0xc],esi
  004ab98a: 89 47 04                                        mov    DWORD PTR [edi+0x4],eax
  004ab98d: 89 47 08                                        mov    DWORD PTR [edi+0x8],eax
  004ab990: 5e                                              pop    esi
  004ab991: b0 01                                           mov    al,0x1
  004ab993: 5f                                              pop    edi
  004ab994: 5d                                              pop    ebp
  004ab995: c2 04 00                                        ret    0x4
  004acf50: 55                                              push   ebp
  004acf51: 8b ec                                           mov    ebp,esp
  004acf53: 83 ec 08                                        sub    esp,0x8
  004acf56: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004acf59: 8b 50 18                                        mov    edx,DWORD PTR [eax+0x18]
  004acf5c: 53                                              push   ebx
  004acf5d: 56                                              push   esi
  004acf5e: 8d 58 1c                                        lea    ebx,[eax+0x1c]
  004acf61: 8d 71 1c                                        lea    esi,[ecx+0x1c]
  004acf64: 3b f3                                           cmp    esi,ebx
  004acf66: 57                                              push   edi
  004acf67: 89 51 18                                        mov    DWORD PTR [ecx+0x18],edx
  004acf6a: 89 5d f8                                        mov    DWORD PTR [ebp-0x8],ebx
  004acf6d: 0f 84 dd 01 00 00                               je     0x4ad150
  004acf73: 8b 7b 04                                        mov    edi,DWORD PTR [ebx+0x4]
  004acf76: 85 ff                                           test   edi,edi
  004acf78: 74 1e                                           je     0x4acf98
  004acf7a: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004acf7d: 89 4d 08                                        mov    DWORD PTR [ebp+0x8],ecx
  004acf80: 2b cf                                           sub    ecx,edi
  004acf82: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004acf87: f7 e9                                           imul   ecx
  004acf89: c1 fa 03                                        sar    edx,0x3
  004acf8c: 8b c2                                           mov    eax,edx
  004acf8e: c1 e8 1f                                        shr    eax,0x1f
  004acf91: 03 d0                                           add    edx,eax
  004acf93: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004acf96: 75 33                                           jne    0x4acfcb
  004acf98: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004acf9b: 85 c0                                           test   eax,eax
  004acf9d: 74 18                                           je     0x4acfb7
  004acf9f: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004acfa2: 51                                              push   ecx
  004acfa3: 50                                              push   eax
  004acfa4: 8b ce                                           mov    ecx,esi
  004acfa6: e8 b5 ef ff ff                                  call   0x4abf60
  004acfab: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004acfae: 52                                              push   edx
  004acfaf: e8 ac 50 f9 ff                                  call   0x442060
  004acfb4: 83 c4 04                                        add    esp,0x4
  004acfb7: 33 c0                                           xor    eax,eax
  004acfb9: 5f                                              pop    edi
  004acfba: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004acfbd: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004acfc0: 89 46 0c                                        mov    DWORD PTR [esi+0xc],eax
  004acfc3: 5e                                              pop    esi
  004acfc4: 5b                                              pop    ebx
  004acfc5: 8b e5                                           mov    esp,ebp
  004acfc7: 5d                                              pop    ebp
  004acfc8: c2 04 00                                        ret    0x4
  004acfcb: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004acfce: 85 c9                                           test   ecx,ecx
  004acfd0: 75 04                                           jne    0x4acfd6
  004acfd2: 33 d2                                           xor    edx,edx
  004acfd4: eb 16                                           jmp    0x4acfec
  004acfd6: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004acfd9: 2b d1                                           sub    edx,ecx
  004acfdb: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004acfe0: f7 ea                                           imul   edx
  004acfe2: c1 fa 03                                        sar    edx,0x3
  004acfe5: 8b c2                                           mov    eax,edx
  004acfe7: c1 e8 1f                                        shr    eax,0x1f
  004acfea: 03 d0                                           add    edx,eax
  004acfec: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  004acfef: 0f 87 8c 00 00 00                               ja     0x4ad081
  004acff5: 3b 7d 08                                        cmp    edi,DWORD PTR [ebp+0x8]
  004acff8: 8b d9                                           mov    ebx,ecx
  004acffa: 74 15                                           je     0x4ad011
  004acffc: 57                                              push   edi
  004acffd: 8b cb                                           mov    ecx,ebx
  004acfff: e8 cc ed ff ff                                  call   0x4abdd0
  004ad004: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ad007: 83 c7 2c                                        add    edi,0x2c
  004ad00a: 83 c3 2c                                        add    ebx,0x2c
  004ad00d: 3b f8                                           cmp    edi,eax
  004ad00f: 75 eb                                           jne    0x4acffc
  004ad011: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004ad014: 3b d8                                           cmp    ebx,eax
  004ad016: 89 45 08                                        mov    DWORD PTR [ebp+0x8],eax
  004ad019: 8b fb                                           mov    edi,ebx
  004ad01b: 74 12                                           je     0x4ad02f
  004ad01d: 8b 17                                           mov    edx,DWORD PTR [edi]
  004ad01f: 6a 00                                           push   0x0
  004ad021: 8b cf                                           mov    ecx,edi
  004ad023: ff 12                                           call   DWORD PTR [edx]
  004ad025: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ad028: 83 c7 2c                                        add    edi,0x2c
  004ad02b: 3b f8                                           cmp    edi,eax
  004ad02d: 75 ee                                           jne    0x4ad01d
  004ad02f: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004ad032: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004ad035: 85 c0                                           test   eax,eax
  004ad037: 75 1a                                           jne    0x4ad053
  004ad039: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ad03c: 33 d2                                           xor    edx,edx
  004ad03e: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004ad041: 8d 14 4a                                        lea    edx,[edx+ecx*2]
  004ad044: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  004ad047: 5f                                              pop    edi
  004ad048: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004ad04b: 5e                                              pop    esi
  004ad04c: 5b                                              pop    ebx
  004ad04d: 8b e5                                           mov    esp,ebp
  004ad04f: 5d                                              pop    ebp
  004ad050: c2 04 00                                        ret    0x4
  004ad053: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004ad056: 2b c8                                           sub    ecx,eax
  004ad058: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad05d: f7 e9                                           imul   ecx
  004ad05f: c1 fa 03                                        sar    edx,0x3
  004ad062: 8b c2                                           mov    eax,edx
  004ad064: c1 e8 1f                                        shr    eax,0x1f
  004ad067: 03 d0                                           add    edx,eax
  004ad069: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ad06c: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004ad06f: 8d 14 4a                                        lea    edx,[edx+ecx*2]
  004ad072: 8d 0c 90                                        lea    ecx,[eax+edx*4]
  004ad075: 5f                                              pop    edi
  004ad076: 89 4e 08                                        mov    DWORD PTR [esi+0x8],ecx
  004ad079: 5e                                              pop    esi
  004ad07a: 5b                                              pop    ebx
  004ad07b: 8b e5                                           mov    esp,ebp
  004ad07d: 5d                                              pop    ebp
  004ad07e: c2 04 00                                        ret    0x4
  004ad081: 85 c9                                           test   ecx,ecx
  004ad083: 75 04                                           jne    0x4ad089
  004ad085: 33 d2                                           xor    edx,edx
  004ad087: eb 16                                           jmp    0x4ad09f
  004ad089: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004ad08c: 2b d1                                           sub    edx,ecx
  004ad08e: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad093: f7 ea                                           imul   edx
  004ad095: c1 fa 03                                        sar    edx,0x3
  004ad098: 8b c2                                           mov    eax,edx
  004ad09a: c1 e8 1f                                        shr    eax,0x1f
  004ad09d: 03 d0                                           add    edx,eax
  004ad09f: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  004ad0a2: 77 51                                           ja     0x4ad0f5
  004ad0a4: 85 c9                                           test   ecx,ecx
  004ad0a6: 75 04                                           jne    0x4ad0ac
  004ad0a8: 33 d2                                           xor    edx,edx
  004ad0aa: eb 16                                           jmp    0x4ad0c2
  004ad0ac: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ad0af: 2b d1                                           sub    edx,ecx
  004ad0b1: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad0b6: f7 ea                                           imul   edx
  004ad0b8: c1 fa 03                                        sar    edx,0x3
  004ad0bb: 8b c2                                           mov    eax,edx
  004ad0bd: c1 e8 1f                                        shr    eax,0x1f
  004ad0c0: 03 d0                                           add    edx,eax
  004ad0c2: 8d 04 92                                        lea    eax,[edx+edx*4]
  004ad0c5: 8d 14 42                                        lea    edx,[edx+eax*2]
  004ad0c8: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ad0cb: 51                                              push   ecx
  004ad0cc: 8d 3c 97                                        lea    edi,[edi+edx*4]
  004ad0cf: 57                                              push   edi
  004ad0d0: 50                                              push   eax
  004ad0d1: e8 ba ee ff ff                                  call   0x4abf90
  004ad0d6: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004ad0d9: 8b 5b 08                                        mov    ebx,DWORD PTR [ebx+0x8]
  004ad0dc: 83 c4 0c                                        add    esp,0xc
  004ad0df: 50                                              push   eax
  004ad0e0: 53                                              push   ebx
  004ad0e1: 57                                              push   edi
  004ad0e2: 8b ce                                           mov    ecx,esi
  004ad0e4: e8 f7 e8 ff ff                                  call   0x4ab9e0
  004ad0e9: 5f                                              pop    edi
  004ad0ea: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad0ed: 5e                                              pop    esi
  004ad0ee: 5b                                              pop    ebx
  004ad0ef: 8b e5                                           mov    esp,ebp
  004ad0f1: 5d                                              pop    ebp
  004ad0f2: c2 04 00                                        ret    0x4
  004ad0f5: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ad0f8: 52                                              push   edx
  004ad0f9: 51                                              push   ecx
  004ad0fa: 8b ce                                           mov    ecx,esi
  004ad0fc: e8 5f ee ff ff                                  call   0x4abf60
  004ad101: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ad104: 50                                              push   eax
  004ad105: e8 56 4f f9 ff                                  call   0x442060
  004ad10a: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ad10d: 83 c4 04                                        add    esp,0x4
  004ad110: 85 c0                                           test   eax,eax
  004ad112: 75 04                                           jne    0x4ad118
  004ad114: 33 d2                                           xor    edx,edx
  004ad116: eb 16                                           jmp    0x4ad12e
  004ad118: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ad11b: 2b c8                                           sub    ecx,eax
  004ad11d: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad122: f7 e9                                           imul   ecx
  004ad124: c1 fa 03                                        sar    edx,0x3
  004ad127: 8b ca                                           mov    ecx,edx
  004ad129: c1 e9 1f                                        shr    ecx,0x1f
  004ad12c: 03 d1                                           add    edx,ecx
  004ad12e: 52                                              push   edx
  004ad12f: 8b ce                                           mov    ecx,esi
  004ad131: e8 8a e1 ff ff                                  call   0x4ab2c0
  004ad136: 84 c0                                           test   al,al
  004ad138: 74 16                                           je     0x4ad150
  004ad13a: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad13d: 8b 43 08                                        mov    eax,DWORD PTR [ebx+0x8]
  004ad140: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004ad143: 52                                              push   edx
  004ad144: 50                                              push   eax
  004ad145: 53                                              push   ebx
  004ad146: 8b ce                                           mov    ecx,esi
  004ad148: e8 93 e8 ff ff                                  call   0x4ab9e0
  004ad14d: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad150: 5f                                              pop    edi
  004ad151: 5e                                              pop    esi
  004ad152: 5b                                              pop    ebx
  004ad153: 8b e5                                           mov    esp,ebp
  004ad155: 5d                                              pop    ebp
  004ad156: c2 04 00                                        ret    0x4
  004ad160: 55                                              push   ebp
  004ad161: 8b ec                                           mov    ebp,esp
  004ad163: 83 ec 08                                        sub    esp,0x8
  004ad166: 8b 45 08                                        mov    eax,DWORD PTR [ebp+0x8]
  004ad169: 53                                              push   ebx
  004ad16a: 56                                              push   esi
  004ad16b: 8b f1                                           mov    esi,ecx
  004ad16d: 3b f0                                           cmp    esi,eax
  004ad16f: 57                                              push   edi
  004ad170: 0f 84 3a 02 00 00                               je     0x4ad3b0
  004ad176: 8b 58 04                                        mov    ebx,DWORD PTR [eax+0x4]
  004ad179: 33 ff                                           xor    edi,edi
  004ad17b: 3b df                                           cmp    ebx,edi
  004ad17d: 74 20                                           je     0x4ad19f
  004ad17f: 8b 48 08                                        mov    ecx,DWORD PTR [eax+0x8]
  004ad182: 8b d1                                           mov    edx,ecx
  004ad184: 2b d3                                           sub    edx,ebx
  004ad186: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad18b: f7 ea                                           imul   edx
  004ad18d: c1 fa 03                                        sar    edx,0x3
  004ad190: 8b c2                                           mov    eax,edx
  004ad192: c1 e8 1f                                        shr    eax,0x1f
  004ad195: 03 d0                                           add    edx,eax
  004ad197: 89 4d f8                                        mov    DWORD PTR [ebp-0x8],ecx
  004ad19a: 89 55 fc                                        mov    DWORD PTR [ebp-0x4],edx
  004ad19d: 75 33                                           jne    0x4ad1d2
  004ad19f: 8b 46 04                                        mov    eax,DWORD PTR [esi+0x4]
  004ad1a2: 3b c7                                           cmp    eax,edi
  004ad1a4: 74 18                                           je     0x4ad1be
  004ad1a6: 8b 4e 08                                        mov    ecx,DWORD PTR [esi+0x8]
  004ad1a9: 51                                              push   ecx
  004ad1aa: 50                                              push   eax
  004ad1ab: 8b ce                                           mov    ecx,esi
  004ad1ad: e8 ae ed ff ff                                  call   0x4abf60
  004ad1b2: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad1b5: 52                                              push   edx
  004ad1b6: e8 a5 4e f9 ff                                  call   0x442060
  004ad1bb: 83 c4 04                                        add    esp,0x4
  004ad1be: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004ad1c1: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004ad1c4: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ad1c7: 5f                                              pop    edi
  004ad1c8: 8b c6                                           mov    eax,esi
  004ad1ca: 5e                                              pop    esi
  004ad1cb: 5b                                              pop    ebx
  004ad1cc: 8b e5                                           mov    esp,ebp
  004ad1ce: 5d                                              pop    ebp
  004ad1cf: c2 04 00                                        ret    0x4
  004ad1d2: 8b 7e 04                                        mov    edi,DWORD PTR [esi+0x4]
  004ad1d5: 85 ff                                           test   edi,edi
  004ad1d7: 75 04                                           jne    0x4ad1dd
  004ad1d9: 33 d2                                           xor    edx,edx
  004ad1db: eb 16                                           jmp    0x4ad1f3
  004ad1dd: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ad1e0: 2b d7                                           sub    edx,edi
  004ad1e2: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad1e7: f7 ea                                           imul   edx
  004ad1e9: c1 fa 03                                        sar    edx,0x3
  004ad1ec: 8b c2                                           mov    eax,edx
  004ad1ee: c1 e8 1f                                        shr    eax,0x1f
  004ad1f1: 03 d0                                           add    edx,eax
  004ad1f3: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  004ad1f6: 0f 87 95 00 00 00                               ja     0x4ad291
  004ad1fc: 8b 55 08                                        mov    edx,DWORD PTR [ebp+0x8]
  004ad1ff: 8b df                                           mov    ebx,edi
  004ad201: 8b 7a 04                                        mov    edi,DWORD PTR [edx+0x4]
  004ad204: 3b f9                                           cmp    edi,ecx
  004ad206: 74 15                                           je     0x4ad21d
  004ad208: 57                                              push   edi
  004ad209: 8b cb                                           mov    ecx,ebx
  004ad20b: e8 c0 eb ff ff                                  call   0x4abdd0
  004ad210: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004ad213: 83 c7 2c                                        add    edi,0x2c
  004ad216: 83 c3 2c                                        add    ebx,0x2c
  004ad219: 3b f8                                           cmp    edi,eax
  004ad21b: 75 eb                                           jne    0x4ad208
  004ad21d: 8b 46 08                                        mov    eax,DWORD PTR [esi+0x8]
  004ad220: 3b d8                                           cmp    ebx,eax
  004ad222: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004ad225: 8b fb                                           mov    edi,ebx
  004ad227: 74 12                                           je     0x4ad23b
  004ad229: 8b 07                                           mov    eax,DWORD PTR [edi]
  004ad22b: 6a 00                                           push   0x0
  004ad22d: 8b cf                                           mov    ecx,edi
  004ad22f: ff 10                                           call   DWORD PTR [eax]
  004ad231: 8b 45 f8                                        mov    eax,DWORD PTR [ebp-0x8]
  004ad234: 83 c7 2c                                        add    edi,0x2c
  004ad237: 3b f8                                           cmp    edi,eax
  004ad239: 75 ee                                           jne    0x4ad229
  004ad23b: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ad23e: 8b 41 04                                        mov    eax,DWORD PTR [ecx+0x4]
  004ad241: 85 c0                                           test   eax,eax
  004ad243: 75 1c                                           jne    0x4ad261
  004ad245: 33 d2                                           xor    edx,edx
  004ad247: 8d 04 92                                        lea    eax,[edx+edx*4]
  004ad24a: 8d 0c 42                                        lea    ecx,[edx+eax*2]
  004ad24d: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad250: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004ad253: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad256: 5f                                              pop    edi
  004ad257: 8b c6                                           mov    eax,esi
  004ad259: 5e                                              pop    esi
  004ad25a: 5b                                              pop    ebx
  004ad25b: 8b e5                                           mov    esp,ebp
  004ad25d: 5d                                              pop    ebp
  004ad25e: c2 04 00                                        ret    0x4
  004ad261: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004ad264: 2b c8                                           sub    ecx,eax
  004ad266: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad26b: f7 e9                                           imul   ecx
  004ad26d: c1 fa 03                                        sar    edx,0x3
  004ad270: 8b ca                                           mov    ecx,edx
  004ad272: c1 e9 1f                                        shr    ecx,0x1f
  004ad275: 03 d1                                           add    edx,ecx
  004ad277: 8d 04 92                                        lea    eax,[edx+edx*4]
  004ad27a: 8d 0c 42                                        lea    ecx,[edx+eax*2]
  004ad27d: 8b 56 04                                        mov    edx,DWORD PTR [esi+0x4]
  004ad280: 8d 04 8a                                        lea    eax,[edx+ecx*4]
  004ad283: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad286: 5f                                              pop    edi
  004ad287: 8b c6                                           mov    eax,esi
  004ad289: 5e                                              pop    esi
  004ad28a: 5b                                              pop    ebx
  004ad28b: 8b e5                                           mov    esp,ebp
  004ad28d: 5d                                              pop    ebp
  004ad28e: c2 04 00                                        ret    0x4
  004ad291: 85 ff                                           test   edi,edi
  004ad293: 75 04                                           jne    0x4ad299
  004ad295: 33 d2                                           xor    edx,edx
  004ad297: eb 16                                           jmp    0x4ad2af
  004ad299: 8b 56 0c                                        mov    edx,DWORD PTR [esi+0xc]
  004ad29c: 2b d7                                           sub    edx,edi
  004ad29e: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad2a3: f7 ea                                           imul   edx
  004ad2a5: c1 fa 03                                        sar    edx,0x3
  004ad2a8: 8b ca                                           mov    ecx,edx
  004ad2aa: c1 e9 1f                                        shr    ecx,0x1f
  004ad2ad: 03 d1                                           add    edx,ecx
  004ad2af: 39 55 fc                                        cmp    DWORD PTR [ebp-0x4],edx
  004ad2b2: 77 77                                           ja     0x4ad32b
  004ad2b4: 85 ff                                           test   edi,edi
  004ad2b6: 75 04                                           jne    0x4ad2bc
  004ad2b8: 33 d2                                           xor    edx,edx
  004ad2ba: eb 16                                           jmp    0x4ad2d2
  004ad2bc: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ad2bf: 2b d7                                           sub    edx,edi
  004ad2c1: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad2c6: f7 ea                                           imul   edx
  004ad2c8: c1 fa 03                                        sar    edx,0x3
  004ad2cb: 8b c2                                           mov    eax,edx
  004ad2cd: c1 e8 1f                                        shr    eax,0x1f
  004ad2d0: 03 d0                                           add    edx,eax
  004ad2d2: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004ad2d5: 8d 14 4a                                        lea    edx,[edx+ecx*2]
  004ad2d8: 8d 04 93                                        lea    eax,[ebx+edx*4]
  004ad2db: 3b d8                                           cmp    ebx,eax
  004ad2dd: 89 45 f8                                        mov    DWORD PTR [ebp-0x8],eax
  004ad2e0: 89 5d fc                                        mov    DWORD PTR [ebp-0x4],ebx
  004ad2e3: 74 38                                           je     0x4ad31d
  004ad2e5: 83 c7 18                                        add    edi,0x18
  004ad2e8: 83 c3 18                                        add    ebx,0x18
  004ad2eb: 8b 43 10                                        mov    eax,DWORD PTR [ebx+0x10]
  004ad2ee: 89 47 10                                        mov    DWORD PTR [edi+0x10],eax
  004ad2f1: 8b 0d ec e4 4d 00                               mov    ecx,DWORD PTR ds:0x4de4ec
  004ad2f7: 8b 11                                           mov    edx,DWORD PTR [ecx]
  004ad2f9: 52                                              push   edx
  004ad2fa: 6a 00                                           push   0x0
  004ad2fc: 53                                              push   ebx
  004ad2fd: 8b cf                                           mov    ecx,edi
  004ad2ff: ff 15 fc e4 4d 00                               call   DWORD PTR ds:0x4de4fc
  004ad305: 8b 45 fc                                        mov    eax,DWORD PTR [ebp-0x4]
  004ad308: 8b 4d f8                                        mov    ecx,DWORD PTR [ebp-0x8]
  004ad30b: 83 c0 2c                                        add    eax,0x2c
  004ad30e: 83 c7 2c                                        add    edi,0x2c
  004ad311: 83 c3 2c                                        add    ebx,0x2c
  004ad314: 3b c1                                           cmp    eax,ecx
  004ad316: 89 45 fc                                        mov    DWORD PTR [ebp-0x4],eax
  004ad319: 75 d0                                           jne    0x4ad2eb
  004ad31b: 8b c1                                           mov    eax,ecx
  004ad31d: 8b 4d 08                                        mov    ecx,DWORD PTR [ebp+0x8]
  004ad320: 8b 56 08                                        mov    edx,DWORD PTR [esi+0x8]
  004ad323: 8b 49 08                                        mov    ecx,DWORD PTR [ecx+0x8]
  004ad326: 52                                              push   edx
  004ad327: 51                                              push   ecx
  004ad328: 50                                              push   eax
  004ad329: eb 7b                                           jmp    0x4ad3a6
  004ad32b: 8b 5e 08                                        mov    ebx,DWORD PTR [esi+0x8]
  004ad32e: 3b fb                                           cmp    edi,ebx
  004ad330: 74 0f                                           je     0x4ad341
  004ad332: 8b 07                                           mov    eax,DWORD PTR [edi]
  004ad334: 6a 00                                           push   0x0
  004ad336: 8b cf                                           mov    ecx,edi
  004ad338: ff 10                                           call   DWORD PTR [eax]
  004ad33a: 83 c7 2c                                        add    edi,0x2c
  004ad33d: 3b fb                                           cmp    edi,ebx
  004ad33f: 75 f1                                           jne    0x4ad332
  004ad341: 8b 4e 04                                        mov    ecx,DWORD PTR [esi+0x4]
  004ad344: 51                                              push   ecx
  004ad345: e8 16 4d f9 ff                                  call   0x442060
  004ad34a: 8b 5d 08                                        mov    ebx,DWORD PTR [ebp+0x8]
  004ad34d: 8b 43 04                                        mov    eax,DWORD PTR [ebx+0x4]
  004ad350: 33 ff                                           xor    edi,edi
  004ad352: 83 c4 04                                        add    esp,0x4
  004ad355: 3b c7                                           cmp    eax,edi
  004ad357: 75 04                                           jne    0x4ad35d
  004ad359: 33 d2                                           xor    edx,edx
  004ad35b: eb 16                                           jmp    0x4ad373
  004ad35d: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ad360: 2b c8                                           sub    ecx,eax
  004ad362: b8 e9 a2 8b 2e                                  mov    eax,0x2e8ba2e9
  004ad367: f7 e9                                           imul   ecx
  004ad369: c1 fa 03                                        sar    edx,0x3
  004ad36c: 8b c2                                           mov    eax,edx
  004ad36e: c1 e8 1f                                        shr    eax,0x1f
  004ad371: 03 d0                                           add    edx,eax
  004ad373: 3b d7                                           cmp    edx,edi
  004ad375: 89 7e 04                                        mov    DWORD PTR [esi+0x4],edi
  004ad378: 89 7e 08                                        mov    DWORD PTR [esi+0x8],edi
  004ad37b: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ad37e: 74 30                                           je     0x4ad3b0
  004ad380: 8d 0c 92                                        lea    ecx,[edx+edx*4]
  004ad383: 8d 3c 4a                                        lea    edi,[edx+ecx*2]
  004ad386: c1 e7 02                                        shl    edi,0x2
  004ad389: 57                                              push   edi
  004ad38a: e8 61 4c f9 ff                                  call   0x441ff0
  004ad38f: 83 c4 04                                        add    esp,0x4
  004ad392: 03 f8                                           add    edi,eax
  004ad394: 89 46 04                                        mov    DWORD PTR [esi+0x4],eax
  004ad397: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad39a: 89 7e 0c                                        mov    DWORD PTR [esi+0xc],edi
  004ad39d: 8b 4b 08                                        mov    ecx,DWORD PTR [ebx+0x8]
  004ad3a0: 8b 5b 04                                        mov    ebx,DWORD PTR [ebx+0x4]
  004ad3a3: 50                                              push   eax
  004ad3a4: 51                                              push   ecx
  004ad3a5: 53                                              push   ebx
  004ad3a6: 8b ce                                           mov    ecx,esi
  004ad3a8: e8 33 e6 ff ff                                  call   0x4ab9e0
  004ad3ad: 89 46 08                                        mov    DWORD PTR [esi+0x8],eax
  004ad3b0: 5f                                              pop    edi
  004ad3b1: 8b c6                                           mov    eax,esi
  004ad3b3: 5e                                              pop    esi
  004ad3b4: 5b                                              pop    ebx
  004ad3b5: 8b e5                                           mov    esp,ebp
  004ad3b7: 5d                                              pop    ebp
  004ad3b8: c2 04 00                                        ret    0x4
  004ad5e0: 55                                              push   ebp
  004ad5e1: 8b ec                                           mov    ebp,esp
  004ad5e3: 56                                              push   esi
  004ad5e4: 8b 75 08                                        mov    esi,DWORD PTR [ebp+0x8]
  004ad5e7: 57                                              push   edi
  004ad5e8: 8b 7d 0c                                        mov    edi,DWORD PTR [ebp+0xc]
  004ad5eb: 3b f7                                           cmp    esi,edi
  004ad5ed: 74 0f                                           je     0x4ad5fe
  004ad5ef: 8b 06                                           mov    eax,DWORD PTR [esi]
  004ad5f1: 6a 00                                           push   0x0
  004ad5f3: 8b ce                                           mov    ecx,esi
  004ad5f5: ff 10                                           call   DWORD PTR [eax]
  004ad5f7: 83 c6 1c                                        add    esi,0x1c
  004ad5fa: 3b f7                                           cmp    esi,edi
  004ad5fc: 75 f1                                           jne    0x4ad5ef
  004ad5fe: 5f                                              pop    edi
  004ad5ff: 5e                                              pop    esi
  004ad600: 5d                                              pop    ebp
  004ad601: c2 08 00                                        ret    0x8
