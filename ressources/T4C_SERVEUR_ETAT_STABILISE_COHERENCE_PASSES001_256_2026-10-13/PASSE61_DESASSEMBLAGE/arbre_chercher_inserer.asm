
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0040f230 <.text+0xe230>:
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
  40f300:	55                   	push   ebp
  40f301:	8b ec                	mov    ebp,esp
  40f303:	6a ff                	push   0xffffffff
  40f305:	68 d9 36 4d 00       	push   0x4d36d9
  40f30a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
