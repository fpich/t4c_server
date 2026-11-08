; PASSE 57: preuves T4C Server.exe SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instuctions x86 controlees par adresse VA; blocs notes comme bornes semi-ouvertes, sans donnees declarees comme code.

; [0x0040F230,0x0040F2FE) Revue de la recherche insertion associative depuis le lecteur var
  40f230:	55                            push   ebp
  40f231:	8b ec                         mov    ebp,esp
  40f233:	83 ec 08                      sub    esp,0x8
  40f236:	53                            push   ebx
  40f237:	8b 5d 0c                      mov    ebx,DWORD PTR [ebp+0xc]
  40f23a:	56                            push   esi
  40f23b:	57                            push   edi
  40f23c:	8b 79 04                      mov    edi,DWORD PTR [ecx+0x4]
  40f23f:	8b 77 04                      mov    esi,DWORD PTR [edi+0x4]
  40f242:	8a 56 29                      mov    dl,BYTE PTR [esi+0x29]
  40f245:	84 d2                         test   dl,dl
  40f247:	b0 01                         mov    al,0x1
  40f249:	89 4d f8                      mov    DWORD PTR [ebp-0x8],ecx
  40f24c:	88 45 fc                      mov    BYTE PTR [ebp-0x4],al
  40f24f:	75 28                         jne    0x40f279
  40f251:	8d 46 10                      lea    eax,[esi+0x10]
  40f254:	50                            push   eax
  40f255:	53                            push   ebx
  40f256:	8b fe                         mov    edi,esi
  40f258:	ff 15 18 e5 4d 00             call   DWORD PTR ds:0x4de518
  40f25e:	83 c4 08                      add    esp,0x8
  40f261:	84 c0                         test   al,al
  40f263:	88 45 fc                      mov    BYTE PTR [ebp-0x4],al
  40f266:	74 04                         je     0x40f26c
  40f268:	8b 36                         mov    esi,DWORD PTR [esi]
  40f26a:	eb 03                         jmp    0x40f26f
  40f26c:	8b 76 08                      mov    esi,DWORD PTR [esi+0x8]
  40f26f:	8a 4e 29                      mov    cl,BYTE PTR [esi+0x29]
  40f272:	84 c9                         test   cl,cl
  40f274:	74 db                         je     0x40f251
  40f276:	8b 4d f8                      mov    ecx,DWORD PTR [ebp-0x8]
  40f279:	84 c0                         test   al,al
  40f27b:	89 7d 0c                      mov    DWORD PTR [ebp+0xc],edi
  40f27e:	74 30                         je     0x40f2b0
  40f280:	8b 51 04                      mov    edx,DWORD PTR [ecx+0x4]
  40f283:	3b 3a                         cmp    edi,DWORD PTR [edx]
  40f285:	75 21                         jne    0x40f2a8
  40f287:	53                            push   ebx
  40f288:	57                            push   edi
  40f289:	6a 01                         push   0x1
  40f28b:	8d 45 f8                      lea    eax,[ebp-0x8]
  40f28e:	50                            push   eax
  40f28f:	e8 6c 00 00 00                call   0x40f300
  40f294:	8b 08                         mov    ecx,DWORD PTR [eax]
  40f296:	8b 45 08                      mov    eax,DWORD PTR [ebp+0x8]
  40f299:	5f                            pop    edi
  40f29a:	5e                            pop    esi
  40f29b:	89 08                         mov    DWORD PTR [eax],ecx
  40f29d:	c6 40 04 01                   mov    BYTE PTR [eax+0x4],0x1
  40f2a1:	5b                            pop    ebx
  40f2a2:	8b e5                         mov    esp,ebp
  40f2a4:	5d                            pop    ebp
  40f2a5:	c2 08 00                      ret    0x8
  40f2a8:	8d 4d 0c                      lea    ecx,[ebp+0xc]
  40f2ab:	e8 30 03 00 00                call   0x40f5e0
  40f2b0:	8b 55 0c                      mov    edx,DWORD PTR [ebp+0xc]
  40f2b3:	8d 42 10                      lea    eax,[edx+0x10]
  40f2b6:	53                            push   ebx
  40f2b7:	50                            push   eax
  40f2b8:	ff 15 18 e5 4d 00             call   DWORD PTR ds:0x4de518
  40f2be:	83 c4 08                      add    esp,0x8
  40f2c1:	84 c0                         test   al,al
  40f2c3:	74 26                         je     0x40f2eb
  40f2c5:	8b 45 fc                      mov    eax,DWORD PTR [ebp-0x4]
  40f2c8:	53                            push   ebx
  40f2c9:	57                            push   edi
  40f2ca:	50                            push   eax
  40f2cb:	8d 4d f8                      lea    ecx,[ebp-0x8]
  40f2ce:	51                            push   ecx
  40f2cf:	8b 4d f8                      mov    ecx,DWORD PTR [ebp-0x8]
  40f2d2:	e8 29 00 00 00                call   0x40f300
  40f2d7:	8b 10                         mov    edx,DWORD PTR [eax]
  40f2d9:	8b 45 08                      mov    eax,DWORD PTR [ebp+0x8]
  40f2dc:	5f                            pop    edi
  40f2dd:	5e                            pop    esi
  40f2de:	89 10                         mov    DWORD PTR [eax],edx
  40f2e0:	c6 40 04 01                   mov    BYTE PTR [eax+0x4],0x1
  40f2e4:	5b                            pop    ebx
  40f2e5:	8b e5                         mov    esp,ebp
  40f2e7:	5d                            pop    ebp
  40f2e8:	c2 08 00                      ret    0x8
  40f2eb:	8b 45 08                      mov    eax,DWORD PTR [ebp+0x8]
  40f2ee:	8b 4d 0c                      mov    ecx,DWORD PTR [ebp+0xc]
  40f2f1:	5f                            pop    edi
  40f2f2:	5e                            pop    esi
  40f2f3:	89 08                         mov    DWORD PTR [eax],ecx
  40f2f5:	c6 40 04 00                   mov    BYTE PTR [eax+0x4],0x0
  40f2f9:	5b                            pop    ebx
  40f2fa:	8b e5                         mov    esp,ebp
  40f2fc:	5d                            pop    ebp
; lignes_verifiees_bloc=90

; [0x0040F300,0x0040F3C0) Allocation du noeud associative et copie d element
  40f300:	55                            push   ebp
  40f301:	8b ec                         mov    ebp,esp
  40f303:	6a ff                         push   0xffffffff
  40f305:	68 d9 36 4d 00                push   0x4d36d9
  40f30a:	64 a1 00 00 00 00             mov    eax,fs:0x0
  40f310:	50                            push   eax
  40f311:	64 89 25 00 00 00 00          mov    DWORD PTR fs:0x0,esp
  40f318:	83 ec 34                      sub    esp,0x34
  40f31b:	53                            push   ebx
  40f31c:	56                            push   esi
  40f31d:	57                            push   edi
  40f31e:	8b f9                         mov    edi,ecx
  40f320:	81 7f 08 a9 aa aa 0a          cmp    DWORD PTR [edi+0x8],0xaaaaaa9
  40f327:	89 65 f0                      mov    DWORD PTR [ebp-0x10],esp
  40f32a:	72 57                         jb     0x40f383
  40f32c:	8a 45 0f                      mov    al,BYTE PTR [ebp+0xf]
  40f32f:	6a 00                         push   0x0
  40f331:	8d 4d dc                      lea    ecx,[ebp-0x24]
  40f334:	88 45 dc                      mov    BYTE PTR [ebp-0x24],al
  40f337:	ff 15 14 e5 4d 00             call   DWORD PTR ds:0x4de514
  40f33d:	83 c9 ff                      or     ecx,0xffffffff
  40f340:	33 c0                         xor    eax,eax
  40f342:	bf a0 06 50 00                mov    edi,0x5006a0
  40f347:	f2 ae                         repnz scas al,BYTE PTR es:[edi]
  40f349:	f7 d1                         not    ecx
  40f34b:	49                            dec    ecx
  40f34c:	51                            push   ecx
  40f34d:	68 a0 06 50 00                push   0x5006a0
  40f352:	8d 4d dc                      lea    ecx,[ebp-0x24]
  40f355:	ff 15 f4 e4 4d 00             call   DWORD PTR ds:0x4de4f4
  40f35b:	8d 4d dc                      lea    ecx,[ebp-0x24]
  40f35e:	51                            push   ecx
  40f35f:	8d 4d c0                      lea    ecx,[ebp-0x40]
  40f362:	c7 45 fc 00 00 00 00          mov    DWORD PTR [ebp-0x4],0x0
  40f369:	e8 12 5d ff ff                call   0x405080
  40f36e:	68 e8 0a 4e 00                push   0x4e0ae8
  40f373:	8d 55 c0                      lea    edx,[ebp-0x40]
  40f376:	52                            push   edx
  40f377:	c7 45 c0 f8 e5 4d 00          mov    DWORD PTR [ebp-0x40],0x4de5f8
  40f37e:	e8 d3 29 0c 00                call   0x4d1d56
  40f383:	6a 30                         push   0x30
  40f385:	e8 66 2c 03 00                call   0x441ff0
  40f38a:	8b 75 10                      mov    esi,DWORD PTR [ebp+0x10]
  40f38d:	8b 55 14                      mov    edx,DWORD PTR [ebp+0x14]
  40f390:	8b d8                         mov    ebx,eax
  40f392:	89 73 04                      mov    DWORD PTR [ebx+0x4],esi
  40f395:	c6 43 28 00                   mov    BYTE PTR [ebx+0x28],0x0
  40f399:	c6 43 29 00                   mov    BYTE PTR [ebx+0x29],0x0
  40f39d:	8b 47 04                      mov    eax,DWORD PTR [edi+0x4]
  40f3a0:	89 03                         mov    DWORD PTR [ebx],eax
  40f3a2:	8b 4f 04                      mov    ecx,DWORD PTR [edi+0x4]
  40f3a5:	52                            push   edx
  40f3a6:	8d 43 10                      lea    eax,[ebx+0x10]
  40f3a9:	50                            push   eax
  40f3aa:	89 5d ec                      mov    DWORD PTR [ebp-0x14],ebx
  40f3ad:	89 4b 08                      mov    DWORD PTR [ebx+0x8],ecx
  40f3b0:	c7 45 fc 01 00 00 00          mov    DWORD PTR [ebp-0x4],0x1
  40f3b7:	e8 d4 03 00 00                call   0x40f790
  40f3bc:	8b 57 08                      mov    edx,DWORD PTR [edi+0x8]
; lignes_verifiees_bloc=59

; [0x0045A7A0,0x0045A7D8) Dispatcher 24 categories; source des sous-branches var
  45a7a0:	55                            push   ebp
  45a7a1:	8b ec                         mov    ebp,esp
  45a7a3:	6a ff                         push   0xffffffff
  45a7a5:	68 3b 77 4d 00                push   0x4d773b
  45a7aa:	64 a1 00 00 00 00             mov    eax,fs:0x0
  45a7b0:	50                            push   eax
  45a7b1:	64 89 25 00 00 00 00          mov    DWORD PTR fs:0x0,esp
  45a7b8:	81 ec 5c 01 00 00             sub    esp,0x15c
  45a7be:	53                            push   ebx
  45a7bf:	56                            push   esi
  45a7c0:	57                            push   edi
  45a7c1:	8b 7d 14                      mov    edi,DWORD PTR [ebp+0x14]
  45a7c4:	8b 47 24                      mov    eax,DWORD PTR [edi+0x24]
  45a7c7:	48                            dec    eax
  45a7c8:	83 f8 17                      cmp    eax,0x17
  45a7cb:	0f 87 b6 19 00 00             ja     0x45c187
  45a7d1:	ff 24 85 98 c1 45 00          jmp    DWORD PTR [eax*4+0x45c198]
; lignes_verifiees_bloc=17

; [0x0045A8E2,0x0045A976) Appels recursifs du dispatcher avec contexte transmis
  45a8e2:	8a 45 13                      mov    al,BYTE PTR [ebp+0x13]
  45a8e5:	56                            push   esi
  45a8e6:	56                            push   esi
  45a8e7:	8d 4d d8                      lea    ecx,[ebp-0x28]
  45a8ea:	88 45 d8                      mov    BYTE PTR [ebp-0x28],al
  45a8ed:	e8 de 3b 00 00                call   0x45e4d0
  45a8f2:	89 45 dc                      mov    DWORD PTR [ebp-0x24],eax
  45a8f5:	89 75 e0                      mov    DWORD PTR [ebp-0x20],esi
  45a8f8:	8d 4d d8                      lea    ecx,[ebp-0x28]
  45a8fb:	51                            push   ecx
  45a8fc:	8b cf                         mov    ecx,edi
  45a8fe:	c6 45 fc 03                   mov    BYTE PTR [ebp-0x4],0x3
  45a902:	e8 a9 c0 05 00                call   0x4b69b0
  45a907:	8b 4d dc                      mov    ecx,DWORD PTR [ebp-0x24]
  45a90a:	3b ce                         cmp    ecx,esi
  45a90c:	75 04                         jne    0x45a912
  45a90e:	33 c0                         xor    eax,eax
  45a910:	eb 02                         jmp    0x45a914
  45a912:	8b 01                         mov    eax,DWORD PTR [ecx]
  45a914:	3b c1                         cmp    eax,ecx
  45a916:	89 45 1c                      mov    DWORD PTR [ebp+0x1c],eax
  45a919:	0f 84 89 00 00 00             je     0x45a9a8
  45a91f:	8b 55 1c                      mov    edx,DWORD PTR [ebp+0x1c]
  45a922:	8b 72 08                      mov    esi,DWORD PTR [edx+0x8]
  45a925:	8b 06                         mov    eax,DWORD PTR [esi]
  45a927:	8d 8d c8 fe ff ff             lea    ecx,[ebp-0x138]
  45a92d:	51                            push   ecx
  45a92e:	8b ce                         mov    ecx,esi
  45a930:	ff 50 30                      call   DWORD PTR [eax+0x30]
  45a933:	8b c8                         mov    ecx,eax
  45a935:	c6 45 fc 04                   mov    BYTE PTR [ebp-0x4],0x4
  45a939:	ff 15 24 e5 4d 00             call   DWORD PTR ds:0x4de524
  45a93f:	51                            push   ecx
  45a940:	8b cc                         mov    ecx,esp
  45a942:	89 65 14                      mov    DWORD PTR [ebp+0x14],esp
  45a945:	50                            push   eax
  45a946:	e8 19 71 07 00                call   0x4d1a64
  45a94b:	8d 8d 00 ff ff ff             lea    ecx,[ebp-0x100]
  45a951:	e8 aa ef fa ff                call   0x409900
  45a956:	6a 01                         push   0x1
  45a958:	8d 8d c8 fe ff ff             lea    ecx,[ebp-0x138]
  45a95e:	c6 45 fc 03                   mov    BYTE PTR [ebp-0x4],0x3
  45a962:	ff 15 14 e5 4d 00             call   DWORD PTR ds:0x4de514
  45a968:	8b 55 10                      mov    edx,DWORD PTR [ebp+0x10]
  45a96b:	8b 45 0c                      mov    eax,DWORD PTR [ebp+0xc]
  45a96e:	53                            push   ebx
  45a96f:	6a 00                         push   0x0
  45a971:	6a 00                         push   0x0
  45a973:	6a 00                         push   0x0
; lignes_verifiees_bloc=49
