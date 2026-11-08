
T4C Server(2).exe — SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc:     file format pei-i386


Disassembly of section .text:

0045d450 <.text+0x5c450>:
  45d450:	55                   	push   ebp
  45d451:	8b ec                	mov    ebp,esp
  45d453:	83 ec 08             	sub    esp,0x8
  45d456:	53                   	push   ebx
  45d457:	56                   	push   esi
  45d458:	8b f1                	mov    esi,ecx
  45d45a:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  45d45d:	85 c9                	test   ecx,ecx
  45d45f:	57                   	push   edi
  45d460:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  45d463:	8b 07                	mov    eax,DWORD PTR [edi]
  45d465:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  45d468:	74 55                	je     0x45d4bf
  45d46a:	8b c8                	mov    ecx,eax
  45d46c:	3b c1                	cmp    eax,ecx
  45d46e:	75 4f                	jne    0x45d4bf
  45d470:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
  45d473:	8a 43 29             	mov    al,BYTE PTR [ebx+0x29]
  45d476:	84 c0                	test   al,al
  45d478:	8b fb                	mov    edi,ebx
  45d47a:	75 29                	jne    0x45d4a5
  45d47c:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  45d47f:	50                   	push   eax
  45d480:	8b ce                	mov    ecx,esi
  45d482:	e8 f9 1b 00 00       	call   0x45f080
  45d487:	8b 3f                	mov    edi,DWORD PTR [edi]
  45d489:	6a 00                	push   0x0
  45d48b:	8d 4b 10             	lea    ecx,[ebx+0x10]
  45d48e:	e8 2d 20 00 00       	call   0x45f4c0
  45d493:	53                   	push   ebx
  45d494:	e8 c7 4b fe ff       	call   0x442060
  45d499:	8a 47 29             	mov    al,BYTE PTR [edi+0x29]
  45d49c:	83 c4 04             	add    esp,0x4
  45d49f:	84 c0                	test   al,al
  45d4a1:	8b df                	mov    ebx,edi
  45d4a3:	74 d7                	je     0x45d47c
  45d4a5:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45d4a8:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  45d4ab:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45d4ae:	c7 46 08 00 00 00 00 	mov    DWORD PTR [esi+0x8],0x0
  45d4b5:	89 00                	mov    DWORD PTR [eax],eax
  45d4b7:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45d4ba:	89 40 08             	mov    DWORD PTR [eax+0x8],eax
  45d4bd:	eb 21                	jmp    0x45d4e0
  45d4bf:	3b c7                	cmp    eax,edi
  45d4c1:	74 1d                	je     0x45d4e0
  45d4c3:	8d 4d fc             	lea    ecx,[ebp-0x4]
  45d4c6:	8b d8                	mov    ebx,eax
  45d4c8:	e8 03 1c 00 00       	call   0x45f0d0
  45d4cd:	53                   	push   ebx
  45d4ce:	8d 4d f8             	lea    ecx,[ebp-0x8]
  45d4d1:	51                   	push   ecx
  45d4d2:	8b ce                	mov    ecx,esi
  45d4d4:	e8 27 17 00 00       	call   0x45ec00
  45d4d9:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  45d4dc:	3b c7                	cmp    eax,edi
  45d4de:	75 e3                	jne    0x45d4c3
  45d4e0:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  45d4e3:	52                   	push   edx
  45d4e4:	e8 77 4b fe ff       	call   0x442060
  45d4e9:	83 c4 04             	add    esp,0x4
  45d4ec:	33 c0                	xor    eax,eax
  45d4ee:	5f                   	pop    edi
  45d4ef:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  45d4f2:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  45d4f5:	5e                   	pop    esi
  45d4f6:	5b                   	pop    ebx
  45d4f7:	8b e5                	mov    esp,ebp
  45d4f9:	5d                   	pop    ebp
  45d4fa:	c3                   	ret
