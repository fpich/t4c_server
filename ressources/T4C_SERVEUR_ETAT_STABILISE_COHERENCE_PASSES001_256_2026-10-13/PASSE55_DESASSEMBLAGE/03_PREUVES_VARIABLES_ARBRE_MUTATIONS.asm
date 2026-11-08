; Preuves assembleur PASSE55 du serveur original SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les plages VA sont semi-ouvertes; tables de saut et donnees exclues.

; [0x0040a55b, 0x0040a61f) : VAR sous-type 11: recherche/creation de cle, valeur double +0x20, compteur et deallocation conditionnelle
  40a55b:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  40a55e:	dd d8                	fstp   st(0)
  40a560:	3b c3                	cmp    eax,ebx
  40a562:	0f 84 1d 1b 00 00    	je     0x40c085
  40a568:	8b 76 18             	mov    esi,DWORD PTR [esi+0x18]
  40a56b:	8b 16                	mov    edx,DWORD PTR [esi]
  40a56d:	8a 45 13             	mov    al,BYTE PTR [ebp+0x13]
  40a570:	83 c9 ff             	or     ecx,0xffffffff
  40a573:	88 45 9c             	mov    BYTE PTR [ebp-0x64],al
  40a576:	33 c0                	xor    eax,eax
  40a578:	8b fa                	mov    edi,edx
  40a57a:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
  40a57d:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
  40a580:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
  40a583:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  40a585:	f7 d1                	not    ecx
  40a587:	49                   	dec    ecx
  40a588:	51                   	push   ecx
  40a589:	52                   	push   edx
  40a58a:	8d 4d 9c             	lea    ecx,[ebp-0x64]
  40a58d:	ff 15 f4 e4 4d 00    	call   DWORD PTR ds:0x4de4f4
  40a593:	8d 4d 9c             	lea    ecx,[ebp-0x64]
  40a596:	51                   	push   ecx
  40a597:	8d 4d ac             	lea    ecx,[ebp-0x54]
  40a59a:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  40a5a1:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  40a5a7:	c7 45 bc 00 00 00 00 	mov    DWORD PTR [ebp-0x44],0x0
  40a5ae:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [ebp-0x40],0x0
  40a5b5:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  40a5b8:	8d 55 ac             	lea    edx,[ebp-0x54]
  40a5bb:	52                   	push   edx
  40a5bc:	8d 45 14             	lea    eax,[ebp+0x14]
  40a5bf:	50                   	push   eax
  40a5c0:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  40a5c4:	e8 67 4c 00 00       	call   0x40f230
  40a5c9:	8b 30                	mov    esi,DWORD PTR [eax]
  40a5cb:	6a 01                	push   0x1
  40a5cd:	8d 4d ac             	lea    ecx,[ebp-0x54]
  40a5d0:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  40a5d4:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  40a5da:	dd 46 20             	fld    QWORD PTR [esi+0x20]
  40a5dd:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  40a5e0:	dd 55 e0             	fst    QWORD PTR [ebp-0x20]
  40a5e3:	3b c3                	cmp    eax,ebx
  40a5e5:	0f 84 da f7 ff ff    	je     0x409dc5
  40a5eb:	8d 48 ff             	lea    ecx,[eax-0x1]
  40a5ee:	8a 01                	mov    al,BYTE PTR [ecx]
  40a5f0:	3a c3                	cmp    al,bl
  40a5f2:	74 1b                	je     0x40a60f
  40a5f4:	3c ff                	cmp    al,0xff
  40a5f6:	74 17                	je     0x40a60f
  40a5f8:	5f                   	pop    edi
  40a5f9:	fe c8                	dec    al
  40a5fb:	5e                   	pop    esi
  40a5fc:	88 01                	mov    BYTE PTR [ecx],al
  40a5fe:	5b                   	pop    ebx
  40a5ff:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a602:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a609:	8b e5                	mov    esp,ebp
  40a60b:	5d                   	pop    ebp
  40a60c:	c2 28 00             	ret    0x28
  40a60f:	51                   	push   ecx
  40a610:	dd d8                	fstp   st(0)
  40a612:	e8 49 7a 03 00       	call   0x442060
  40a617:	83 c4 04             	add    esp,0x4
  40a61a:	e9 a3 f7 ff ff       	jmp    0x409dc2

; [0x0040f230, 0x0040f300) : Recherche OU insertion: calls 0x40f300 dans le cas de cle absente
  40f230:	55                   	push   ebp
  40f231:	8b ec                	mov    ebp,esp
  40f233:	83 ec 08             	sub    esp,0x8
  40f236:	53                   	push   ebx
  40f237:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40f23a:	56                   	push   esi
  40f23b:	57                   	push   edi
  40f23c:	8b 79 04             	mov    edi,DWORD PTR [ecx+0x4]
  40f23f:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  40f242:	8a 56 29             	mov    dl,BYTE PTR [esi+0x29]
  40f245:	84 d2                	test   dl,dl
  40f247:	b0 01                	mov    al,0x1
  40f249:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
  40f24c:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
  40f24f:	75 28                	jne    0x40f279
  40f251:	8d 46 10             	lea    eax,[esi+0x10]
  40f254:	50                   	push   eax
  40f255:	53                   	push   ebx
  40f256:	8b fe                	mov    edi,esi
  40f258:	ff 15 18 e5 4d 00    	call   DWORD PTR ds:0x4de518
  40f25e:	83 c4 08             	add    esp,0x8
  40f261:	84 c0                	test   al,al
  40f263:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
  40f266:	74 04                	je     0x40f26c
  40f268:	8b 36                	mov    esi,DWORD PTR [esi]
  40f26a:	eb 03                	jmp    0x40f26f
  40f26c:	8b 76 08             	mov    esi,DWORD PTR [esi+0x8]
  40f26f:	8a 4e 29             	mov    cl,BYTE PTR [esi+0x29]
  40f272:	84 c9                	test   cl,cl
  40f274:	74 db                	je     0x40f251
  40f276:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  40f279:	84 c0                	test   al,al
  40f27b:	89 7d 0c             	mov    DWORD PTR [ebp+0xc],edi
  40f27e:	74 30                	je     0x40f2b0
  40f280:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  40f283:	3b 3a                	cmp    edi,DWORD PTR [edx]
  40f285:	75 21                	jne    0x40f2a8
  40f287:	53                   	push   ebx
  40f288:	57                   	push   edi
  40f289:	6a 01                	push   0x1
  40f28b:	8d 45 f8             	lea    eax,[ebp-0x8]
  40f28e:	50                   	push   eax
  40f28f:	e8 6c 00 00 00       	call   0x40f300
  40f294:	8b 08                	mov    ecx,DWORD PTR [eax]
  40f296:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40f299:	5f                   	pop    edi
  40f29a:	5e                   	pop    esi
  40f29b:	89 08                	mov    DWORD PTR [eax],ecx
  40f29d:	c6 40 04 01          	mov    BYTE PTR [eax+0x4],0x1
  40f2a1:	5b                   	pop    ebx
  40f2a2:	8b e5                	mov    esp,ebp
  40f2a4:	5d                   	pop    ebp
  40f2a5:	c2 08 00             	ret    0x8
  40f2a8:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  40f2ab:	e8 30 03 00 00       	call   0x40f5e0
  40f2b0:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40f2b3:	8d 42 10             	lea    eax,[edx+0x10]
  40f2b6:	53                   	push   ebx
  40f2b7:	50                   	push   eax
  40f2b8:	ff 15 18 e5 4d 00    	call   DWORD PTR ds:0x4de518
  40f2be:	83 c4 08             	add    esp,0x8
  40f2c1:	84 c0                	test   al,al
  40f2c3:	74 26                	je     0x40f2eb
  40f2c5:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  40f2c8:	53                   	push   ebx
  40f2c9:	57                   	push   edi
  40f2ca:	50                   	push   eax
  40f2cb:	8d 4d f8             	lea    ecx,[ebp-0x8]
  40f2ce:	51                   	push   ecx
  40f2cf:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  40f2d2:	e8 29 00 00 00       	call   0x40f300
  40f2d7:	8b 10                	mov    edx,DWORD PTR [eax]
  40f2d9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40f2dc:	5f                   	pop    edi
  40f2dd:	5e                   	pop    esi
  40f2de:	89 10                	mov    DWORD PTR [eax],edx
  40f2e0:	c6 40 04 01          	mov    BYTE PTR [eax+0x4],0x1
  40f2e4:	5b                   	pop    ebx
  40f2e5:	8b e5                	mov    esp,ebp
  40f2e7:	5d                   	pop    ebp
  40f2e8:	c2 08 00             	ret    0x8
  40f2eb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40f2ee:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40f2f1:	5f                   	pop    edi
  40f2f2:	5e                   	pop    esi
  40f2f3:	89 08                	mov    DWORD PTR [eax],ecx
  40f2f5:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
  40f2f9:	5b                   	pop    ebx
  40f2fa:	8b e5                	mov    esp,ebp
  40f2fc:	5d                   	pop    ebp
  40f2fd:	c2 08 00             	ret    0x8

