; T4C Server.exe — preuve passe 54 SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; VA demi-ouvertes. Code seulement, tables de données explicitement exclues.

; [0x0040f300,0x0040f5c9) — Insertion dans arbre équilibré: noeuds, pointeurs parent/enfants, marqueur de couleur +0x28, rotations
  40f300:	55                   	push   ebp
  40f301:	8b ec                	mov    ebp,esp
  40f303:	6a ff                	push   0xffffffff
  40f305:	68 d9 36 4d 00       	push   0x4d36d9
  40f30a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  40f310:	50                   	push   eax
  40f311:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  40f318:	83 ec 34             	sub    esp,0x34
  40f31b:	53                   	push   ebx
  40f31c:	56                   	push   esi
  40f31d:	57                   	push   edi
  40f31e:	8b f9                	mov    edi,ecx
  40f320:	81 7f 08 a9 aa aa 0a 	cmp    DWORD PTR [edi+0x8],0xaaaaaa9
  40f327:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
  40f32a:	72 57                	jb     0x40f383
  40f32c:	8a 45 0f             	mov    al,BYTE PTR [ebp+0xf]
  40f32f:	6a 00                	push   0x0
  40f331:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40f334:	88 45 dc             	mov    BYTE PTR [ebp-0x24],al
  40f337:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  40f33d:	83 c9 ff             	or     ecx,0xffffffff
  40f340:	33 c0                	xor    eax,eax
  40f342:	bf a0 06 50 00       	mov    edi,0x5006a0
  40f347:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  40f349:	f7 d1                	not    ecx
  40f34b:	49                   	dec    ecx
  40f34c:	51                   	push   ecx
  40f34d:	68 a0 06 50 00       	push   0x5006a0
  40f352:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40f355:	ff 15 f4 e4 4d 00    	call   DWORD PTR ds:0x4de4f4
  40f35b:	8d 4d dc             	lea    ecx,[ebp-0x24]
  40f35e:	51                   	push   ecx
  40f35f:	8d 4d c0             	lea    ecx,[ebp-0x40]
  40f362:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  40f369:	e8 12 5d ff ff       	call   0x405080
  40f36e:	68 e8 0a 4e 00       	push   0x4e0ae8
  40f373:	8d 55 c0             	lea    edx,[ebp-0x40]
  40f376:	52                   	push   edx
  40f377:	c7 45 c0 f8 e5 4d 00 	mov    DWORD PTR [ebp-0x40],0x4de5f8
  40f37e:	e8 d3 29 0c 00       	call   0x4d1d56
  40f383:	6a 30                	push   0x30
  40f385:	e8 66 2c 03 00       	call   0x441ff0
  40f38a:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  40f38d:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  40f390:	8b d8                	mov    ebx,eax
  40f392:	89 73 04             	mov    DWORD PTR [ebx+0x4],esi
  40f395:	c6 43 28 00          	mov    BYTE PTR [ebx+0x28],0x0
  40f399:	c6 43 29 00          	mov    BYTE PTR [ebx+0x29],0x0
  40f39d:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  40f3a0:	89 03                	mov    DWORD PTR [ebx],eax
  40f3a2:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  40f3a5:	52                   	push   edx
  40f3a6:	8d 43 10             	lea    eax,[ebx+0x10]
  40f3a9:	50                   	push   eax
  40f3aa:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  40f3ad:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
  40f3b0:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  40f3b7:	e8 d4 03 00 00       	call   0x40f790
  40f3bc:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  40f3bf:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  40f3c2:	83 c4 0c             	add    esp,0xc
  40f3c5:	42                   	inc    edx
  40f3c6:	3b f0                	cmp    esi,eax
  40f3c8:	89 57 08             	mov    DWORD PTR [edi+0x8],edx
  40f3cb:	75 10                	jne    0x40f3dd
  40f3cd:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  40f3d0:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  40f3d3:	89 19                	mov    DWORD PTR [ecx],ebx
  40f3d5:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  40f3d8:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
  40f3db:	eb 22                	jmp    0x40f3ff
  40f3dd:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
  40f3e0:	84 c0                	test   al,al
  40f3e2:	74 0d                	je     0x40f3f1
  40f3e4:	89 1e                	mov    DWORD PTR [esi],ebx
  40f3e6:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  40f3e9:	3b 30                	cmp    esi,DWORD PTR [eax]
  40f3eb:	75 12                	jne    0x40f3ff
  40f3ed:	89 18                	mov    DWORD PTR [eax],ebx
  40f3ef:	eb 0e                	jmp    0x40f3ff
  40f3f1:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  40f3f4:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  40f3f7:	3b 70 08             	cmp    esi,DWORD PTR [eax+0x8]
  40f3fa:	75 03                	jne    0x40f3ff
  40f3fc:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  40f3ff:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  40f402:	8a 51 28             	mov    dl,BYTE PTR [ecx+0x28]
  40f405:	84 d2                	test   dl,dl
  40f407:	8b c3                	mov    eax,ebx
  40f409:	0f 85 98 01 00 00    	jne    0x40f5a7
  40f40f:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  40f412:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  40f415:	8b 16                	mov    edx,DWORD PTR [esi]
  40f417:	3b ca                	cmp    ecx,edx
  40f419:	0f 85 c6 00 00 00    	jne    0x40f4e5
  40f41f:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  40f422:	80 7a 28 00          	cmp    BYTE PTR [edx+0x28],0x0
  40f426:	75 1d                	jne    0x40f445
  40f428:	c6 41 28 01          	mov    BYTE PTR [ecx+0x28],0x1
  40f42c:	c6 42 28 01          	mov    BYTE PTR [edx+0x28],0x1
  40f430:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f433:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  40f436:	c6 41 28 00          	mov    BYTE PTR [ecx+0x28],0x0
  40f43a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f43d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  40f440:	e9 54 01 00 00       	jmp    0x40f599
  40f445:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  40f448:	75 3b                	jne    0x40f485
  40f44a:	8b c1                	mov    eax,ecx
  40f44c:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  40f44f:	8b 11                	mov    edx,DWORD PTR [ecx]
  40f451:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  40f454:	8b 11                	mov    edx,DWORD PTR [ecx]
  40f456:	80 7a 29 00          	cmp    BYTE PTR [edx+0x29],0x0
  40f45a:	75 03                	jne    0x40f45f
  40f45c:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  40f45f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f462:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  40f465:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  40f468:	3b 42 04             	cmp    eax,DWORD PTR [edx+0x4]
  40f46b:	75 05                	jne    0x40f472
  40f46d:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  40f470:	eb 0e                	jmp    0x40f480
  40f472:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f475:	3b 02                	cmp    eax,DWORD PTR [edx]
  40f477:	75 04                	jne    0x40f47d
  40f479:	89 0a                	mov    DWORD PTR [edx],ecx
  40f47b:	eb 03                	jmp    0x40f480
  40f47d:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  40f480:	89 01                	mov    DWORD PTR [ecx],eax
  40f482:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40f485:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  40f488:	c6 41 28 01          	mov    BYTE PTR [ecx+0x28],0x1
  40f48c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f48f:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  40f492:	c6 41 28 00          	mov    BYTE PTR [ecx+0x28],0x0
  40f496:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f499:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  40f49c:	8b 11                	mov    edx,DWORD PTR [ecx]
  40f49e:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
  40f4a1:	89 31                	mov    DWORD PTR [ecx],esi
  40f4a3:	8b 72 08             	mov    esi,DWORD PTR [edx+0x8]
  40f4a6:	80 7e 29 00          	cmp    BYTE PTR [esi+0x29],0x0
  40f4aa:	75 03                	jne    0x40f4af
  40f4ac:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  40f4af:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  40f4b2:	89 72 04             	mov    DWORD PTR [edx+0x4],esi
  40f4b5:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  40f4b8:	3b 4e 04             	cmp    ecx,DWORD PTR [esi+0x4]
  40f4bb:	75 0b                	jne    0x40f4c8
  40f4bd:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  40f4c0:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  40f4c3:	e9 ce 00 00 00       	jmp    0x40f596
  40f4c8:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  40f4cb:	3b 4e 08             	cmp    ecx,DWORD PTR [esi+0x8]
  40f4ce:	75 0b                	jne    0x40f4db
  40f4d0:	89 56 08             	mov    DWORD PTR [esi+0x8],edx
  40f4d3:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  40f4d6:	e9 bb 00 00 00       	jmp    0x40f596
  40f4db:	89 16                	mov    DWORD PTR [esi],edx
  40f4dd:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  40f4e0:	e9 b1 00 00 00       	jmp    0x40f596
  40f4e5:	80 7a 28 00          	cmp    BYTE PTR [edx+0x28],0x0
  40f4e9:	75 1d                	jne    0x40f508
  40f4eb:	c6 41 28 01          	mov    BYTE PTR [ecx+0x28],0x1
  40f4ef:	c6 42 28 01          	mov    BYTE PTR [edx+0x28],0x1
  40f4f3:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  40f4f6:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  40f4f9:	c6 42 28 00          	mov    BYTE PTR [edx+0x28],0x0
  40f4fd:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  40f500:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  40f503:	e9 91 00 00 00       	jmp    0x40f599
  40f508:	3b 01                	cmp    eax,DWORD PTR [ecx]
  40f50a:	75 3d                	jne    0x40f549
  40f50c:	8b c1                	mov    eax,ecx
  40f50e:	8b 08                	mov    ecx,DWORD PTR [eax]
  40f510:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  40f513:	89 10                	mov    DWORD PTR [eax],edx
  40f515:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  40f518:	80 7a 29 00          	cmp    BYTE PTR [edx+0x29],0x0
  40f51c:	75 03                	jne    0x40f521
  40f51e:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  40f521:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f524:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  40f527:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  40f52a:	3b 42 04             	cmp    eax,DWORD PTR [edx+0x4]
  40f52d:	75 05                	jne    0x40f534
  40f52f:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  40f532:	eb 0f                	jmp    0x40f543
  40f534:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f537:	3b 42 08             	cmp    eax,DWORD PTR [edx+0x8]
  40f53a:	75 05                	jne    0x40f541
  40f53c:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  40f53f:	eb 02                	jmp    0x40f543
  40f541:	89 0a                	mov    DWORD PTR [edx],ecx
  40f543:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  40f546:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  40f549:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  40f54c:	c6 41 28 01          	mov    BYTE PTR [ecx+0x28],0x1
  40f550:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f553:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  40f556:	c6 41 28 00          	mov    BYTE PTR [ecx+0x28],0x0
  40f55a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40f55d:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  40f560:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  40f563:	8b 32                	mov    esi,DWORD PTR [edx]
  40f565:	89 71 08             	mov    DWORD PTR [ecx+0x8],esi
  40f568:	8b 32                	mov    esi,DWORD PTR [edx]
  40f56a:	80 7e 29 00          	cmp    BYTE PTR [esi+0x29],0x0
  40f56e:	75 03                	jne    0x40f573
  40f570:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  40f573:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  40f576:	89 72 04             	mov    DWORD PTR [edx+0x4],esi
  40f579:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  40f57c:	3b 4e 04             	cmp    ecx,DWORD PTR [esi+0x4]
  40f57f:	75 05                	jne    0x40f586
  40f581:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  40f584:	eb 0e                	jmp    0x40f594
  40f586:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  40f589:	3b 0e                	cmp    ecx,DWORD PTR [esi]
  40f58b:	75 04                	jne    0x40f591
  40f58d:	89 16                	mov    DWORD PTR [esi],edx
  40f58f:	eb 03                	jmp    0x40f594
  40f591:	89 56 08             	mov    DWORD PTR [esi+0x8],edx
  40f594:	89 0a                	mov    DWORD PTR [edx],ecx
  40f596:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  40f599:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  40f59c:	8a 51 28             	mov    dl,BYTE PTR [ecx+0x28]
  40f59f:	84 d2                	test   dl,dl
  40f5a1:	0f 84 68 fe ff ff    	je     0x40f40f
  40f5a7:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  40f5aa:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  40f5ad:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40f5b0:	c6 40 28 01          	mov    BYTE PTR [eax+0x28],0x1
  40f5b4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40f5b7:	5f                   	pop    edi
  40f5b8:	89 18                	mov    DWORD PTR [eax],ebx
  40f5ba:	5e                   	pop    esi
  40f5bb:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40f5c2:	5b                   	pop    ebx
  40f5c3:	8b e5                	mov    esp,ebp
  40f5c5:	5d                   	pop    ebp
  40f5c6:	c2 10 00             	ret    0x10

; [0x0040f5e0,0x0040f63b) — Itérateur: recherche de noeud voisin, sentinelle +0x29
  40f5e0:	8b 01                	mov    eax,DWORD PTR [ecx]
  40f5e2:	8a 50 29             	mov    dl,BYTE PTR [eax+0x29]
  40f5e5:	84 d2                	test   dl,dl
  40f5e7:	53                   	push   ebx
  40f5e8:	74 07                	je     0x40f5f1
  40f5ea:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  40f5ed:	89 01                	mov    DWORD PTR [ecx],eax
  40f5ef:	5b                   	pop    ebx
  40f5f0:	c3                   	ret
  40f5f1:	8b 10                	mov    edx,DWORD PTR [eax]
  40f5f3:	8a 5a 29             	mov    bl,BYTE PTR [edx+0x29]
  40f5f6:	84 db                	test   bl,bl
  40f5f8:	75 1a                	jne    0x40f614
  40f5fa:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  40f5fd:	8a 58 29             	mov    bl,BYTE PTR [eax+0x29]
  40f600:	84 db                	test   bl,bl
  40f602:	75 0c                	jne    0x40f610
  40f604:	8b d0                	mov    edx,eax
  40f606:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  40f609:	8a 58 29             	mov    bl,BYTE PTR [eax+0x29]
  40f60c:	84 db                	test   bl,bl
  40f60e:	74 f4                	je     0x40f604
  40f610:	89 11                	mov    DWORD PTR [ecx],edx
  40f612:	5b                   	pop    ebx
  40f613:	c3                   	ret
  40f614:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  40f617:	8a 50 29             	mov    dl,BYTE PTR [eax+0x29]
  40f61a:	84 d2                	test   dl,dl
  40f61c:	75 1b                	jne    0x40f639
  40f61e:	8b 11                	mov    edx,DWORD PTR [ecx]
  40f620:	3b 10                	cmp    edx,DWORD PTR [eax]
  40f622:	75 0c                	jne    0x40f630
  40f624:	89 01                	mov    DWORD PTR [ecx],eax
  40f626:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  40f629:	8a 50 29             	mov    dl,BYTE PTR [eax+0x29]
  40f62c:	84 d2                	test   dl,dl
  40f62e:	74 ee                	je     0x40f61e
  40f630:	8a 50 29             	mov    dl,BYTE PTR [eax+0x29]
  40f633:	84 d2                	test   dl,dl
  40f635:	75 02                	jne    0x40f639
  40f637:	89 01                	mov    DWORD PTR [ecx],eax
  40f639:	5b                   	pop    ebx
  40f63a:	c3                   	ret

