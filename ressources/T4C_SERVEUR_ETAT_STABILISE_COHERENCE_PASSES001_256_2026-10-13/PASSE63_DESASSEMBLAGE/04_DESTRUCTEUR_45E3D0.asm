
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045e3d0 <.text+0x5d3d0>:
  45e3d0:	55                   	push   ebp
  45e3d1:	8b ec                	mov    ebp,esp
  45e3d3:	83 ec 08             	sub    esp,0x8
  45e3d6:	53                   	push   ebx
  45e3d7:	56                   	push   esi
  45e3d8:	8b f1                	mov    esi,ecx
  45e3da:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  45e3dd:	85 c9                	test   ecx,ecx
  45e3df:	57                   	push   edi
  45e3e0:	8b 7e 04             	mov    edi,DWORD PTR [esi+0x4]
  45e3e3:	8b 07                	mov    eax,DWORD PTR [edi]
  45e3e5:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  45e3e8:	74 55                	je     0x45e43f
  45e3ea:	8b c8                	mov    ecx,eax
  45e3ec:	3b c1                	cmp    eax,ecx
  45e3ee:	75 4f                	jne    0x45e43f
  45e3f0:	8b 5f 04             	mov    ebx,DWORD PTR [edi+0x4]
  45e3f3:	8a 43 29             	mov    al,BYTE PTR [ebx+0x29]
  45e3f6:	84 c0                	test   al,al
  45e3f8:	8b fb                	mov    edi,ebx
  45e3fa:	75 29                	jne    0x45e425
  45e3fc:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  45e3ff:	50                   	push   eax
  45e400:	8b ce                	mov    ecx,esi
  45e402:	e8 79 0c 00 00       	call   0x45f080
  45e407:	8b 3f                	mov    edi,DWORD PTR [edi]
  45e409:	6a 00                	push   0x0
  45e40b:	8d 4b 10             	lea    ecx,[ebx+0x10]
  45e40e:	e8 ad 10 00 00       	call   0x45f4c0
  45e413:	53                   	push   ebx
  45e414:	e8 47 3c fe ff       	call   0x442060
  45e419:	8a 47 29             	mov    al,BYTE PTR [edi+0x29]
  45e41c:	83 c4 04             	add    esp,0x4
  45e41f:	84 c0                	test   al,al
  45e421:	8b df                	mov    ebx,edi
  45e423:	74 d7                	je     0x45e3fc
  45e425:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45e428:	89 40 04             	mov    DWORD PTR [eax+0x4],eax
  45e42b:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45e42e:	c7 46 08 00 00 00 00 	mov    DWORD PTR [esi+0x8],0x0
  45e435:	89 00                	mov    DWORD PTR [eax],eax
  45e437:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  45e43a:	89 40 08             	mov    DWORD PTR [eax+0x8],eax
  45e43d:	eb 21                	jmp    0x45e460
  45e43f:	3b c7                	cmp    eax,edi
  45e441:	74 1d                	je     0x45e460
  45e443:	8d 4d fc             	lea    ecx,[ebp-0x4]
  45e446:	8b d8                	mov    ebx,eax
  45e448:	e8 83 0c 00 00       	call   0x45f0d0
  45e44d:	53                   	push   ebx
  45e44e:	8d 4d f8             	lea    ecx,[ebp-0x8]
  45e451:	51                   	push   ecx
  45e452:	8b ce                	mov    ecx,esi
  45e454:	e8 a7 07 00 00       	call   0x45ec00
  45e459:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  45e45c:	3b c7                	cmp    eax,edi
  45e45e:	75 e3                	jne    0x45e443
  45e460:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  45e463:	52                   	push   edx
  45e464:	e8 f7 3b fe ff       	call   0x442060
  45e469:	83 c4 04             	add    esp,0x4
  45e46c:	33 c0                	xor    eax,eax
  45e46e:	5f                   	pop    edi
  45e46f:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  45e472:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  45e475:	5e                   	pop    esi
  45e476:	5b                   	pop    ebx
  45e477:	8b e5                	mov    esp,ebp
  45e479:	5d                   	pop    ebp
  45e47a:	c3                   	ret
