; Preuves passe 53 — T4C Server.exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles exclusifs et uniquement regions executees. Les tables de dispatch ne sont pas comptees.

; [0x0040F230,0x0040F300) Recherche par chaine dans une structure map; iterateurs et resultat d existence
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

; [0x0040F0D4,0x0040F11F) Retour commun des comparaisons, gestion du type de noeud et erreur lexicale
  40f0d4:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40f0d7:	c6 42 10 26          	mov    BYTE PTR [edx+0x10],0x26
  40f0db:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40f0de:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  40f0e5:	e8 56 29 0c 00       	call   0x4d1a40
  40f0ea:	e9 a4 d5 ff ff       	jmp    0x40c693
  40f0ef:	0f be 06             	movsx  eax,BYTE PTR [esi]
  40f0f2:	50                   	push   eax
  40f0f3:	68 64 07 50 00       	push   0x500764
  40f0f8:	6a 08                	push   0x8
  40f0fa:	e8 41 2c 06 00       	call   0x471d40
  40f0ff:	83 c4 0c             	add    esp,0xc
  40f102:	e9 97 d5 ff ff       	jmp    0x40c69e
  40f107:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40f10a:	5f                   	pop    edi
  40f10b:	5e                   	pop    esi
  40f10c:	b8 01 00 00 00       	mov    eax,0x1
  40f111:	5b                   	pop    ebx
  40f112:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40f119:	8b e5                	mov    esp,ebp
  40f11b:	5d                   	pop    ebp
  40f11c:	c2 08 00             	ret    0x8

; [0x0048B680,0x0048B6A2) Unit::GetWL retourne WorldPos via copie de trois DWORD (+0,+4,+8)
  48b680:	55                   	push   ebp
  48b681:	8b ec                	mov    ebp,esp
  48b683:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48b686:	81 c1 b8 00 00 00    	add    ecx,0xb8
  48b68c:	56                   	push   esi
  48b68d:	8b 31                	mov    esi,DWORD PTR [ecx]
  48b68f:	8b d0                	mov    edx,eax
  48b691:	89 32                	mov    DWORD PTR [edx],esi
  48b693:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  48b696:	89 72 04             	mov    DWORD PTR [edx+0x4],esi
  48b699:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  48b69c:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  48b69f:	5e                   	pop    esi
  48b6a0:	5d                   	pop    ebp
  48b6a1:	c2                   	.byte 0xc2

; [0x0040C09E,0x0040C114) Operande de distance, appels virtuels GetWL puis sqrt deux differences au carre
  40c09e:	8b 17                	mov    edx,DWORD PTR [edi]
  40c0a0:	8d 45 dc             	lea    eax,[ebp-0x24]
  40c0a3:	50                   	push   eax
  40c0a4:	8b cf                	mov    ecx,edi
  40c0a6:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0a9:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40c0ac:	8b 13                	mov    edx,DWORD PTR [ebx]
  40c0ae:	8b f0                	mov    esi,eax
  40c0b0:	8d 45 d0             	lea    eax,[ebp-0x30]
  40c0b3:	50                   	push   eax
  40c0b4:	8b cb                	mov    ecx,ebx
  40c0b6:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0b9:	8b 16                	mov    edx,DWORD PTR [esi]
  40c0bb:	8b 00                	mov    eax,DWORD PTR [eax]
  40c0bd:	2b c2                	sub    eax,edx
  40c0bf:	99                   	cdq
  40c0c0:	8b f0                	mov    esi,eax
  40c0c2:	33 f2                	xor    esi,edx
  40c0c4:	8d 45 c4             	lea    eax,[ebp-0x3c]
  40c0c7:	2b f2                	sub    esi,edx
  40c0c9:	8b 13                	mov    edx,DWORD PTR [ebx]
  40c0cb:	50                   	push   eax
  40c0cc:	8b cb                	mov    ecx,ebx
  40c0ce:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0d1:	8b 17                	mov    edx,DWORD PTR [edi]
  40c0d3:	8b d8                	mov    ebx,eax
  40c0d5:	8d 45 b8             	lea    eax,[ebp-0x48]
  40c0d8:	50                   	push   eax
  40c0d9:	8b cf                	mov    ecx,edi
  40c0db:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0de:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40c0e1:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  40c0e4:	2b ca                	sub    ecx,edx
  40c0e6:	8b c1                	mov    eax,ecx
  40c0e8:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c0eb:	99                   	cdq
  40c0ec:	33 c2                	xor    eax,edx
  40c0ee:	2b c2                	sub    eax,edx
  40c0f0:	8b d0                	mov    edx,eax
  40c0f2:	0f af d0             	imul   edx,eax
  40c0f5:	8b c6                	mov    eax,esi
  40c0f7:	0f af c6             	imul   eax,esi
  40c0fa:	03 d0                	add    edx,eax
  40c0fc:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
  40c0ff:	5f                   	pop    edi
  40c100:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40c103:	5e                   	pop    esi
  40c104:	5b                   	pop    ebx
  40c105:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c10c:	d9 fa                	fsqrt
  40c10e:	8b e5                	mov    esp,ebp
  40c110:	5d                   	pop    ebp
  40c111:	c2 28 00             	ret    0x28

