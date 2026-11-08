; Preuves passe 53 — T4C Server.exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles exclusifs et uniquement regions executees. Les tables de dispatch ne sont pas comptees.

; [0x0040C390,0x0040C400) Traitement et fermeture des parenthèses; controle de syntaxe
  40c390:	55                   	push   ebp
  40c391:	8b ec                	mov    ebp,esp
  40c393:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c396:	8b 02                	mov    eax,DWORD PTR [edx]
  40c398:	53                   	push   ebx
  40c399:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40c39c:	56                   	push   esi
  40c39d:	57                   	push   edi
  40c39e:	bf 01 00 00 00       	mov    edi,0x1
  40c3a3:	33 f6                	xor    esi,esi
  40c3a5:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  40c3a8:	8b 0a                	mov    ecx,DWORD PTR [edx]
  40c3aa:	8a 04 19             	mov    al,BYTE PTR [ecx+ebx*1]
  40c3ad:	3c 28                	cmp    al,0x28
  40c3af:	75 03                	jne    0x40c3b4
  40c3b1:	46                   	inc    esi
  40c3b2:	eb 12                	jmp    0x40c3c6
  40c3b4:	3c 29                	cmp    al,0x29
  40c3b6:	75 08                	jne    0x40c3c0
  40c3b8:	81 c6 ff ff 00 00    	add    esi,0xffff
  40c3be:	eb 06                	jmp    0x40c3c6
  40c3c0:	84 c0                	test   al,al
  40c3c2:	75 02                	jne    0x40c3c6
  40c3c4:	33 ff                	xor    edi,edi
  40c3c6:	41                   	inc    ecx
  40c3c7:	66 85 f6             	test   si,si
  40c3ca:	89 0a                	mov    DWORD PTR [edx],ecx
  40c3cc:	74 06                	je     0x40c3d4
  40c3ce:	85 ff                	test   edi,edi
  40c3d0:	75 d6                	jne    0x40c3a8
  40c3d2:	eb 04                	jmp    0x40c3d8
  40c3d4:	85 ff                	test   edi,edi
  40c3d6:	75 14                	jne    0x40c3ec
  40c3d8:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40c3db:	53                   	push   ebx
  40c3dc:	51                   	push   ecx
  40c3dd:	68 0c 07 50 00       	push   0x50070c
  40c3e2:	6a 08                	push   0x8
  40c3e4:	e8 57 59 06 00       	call   0x471d40
  40c3e9:	83 c4 10             	add    esp,0x10
  40c3ec:	8b c7                	mov    eax,edi
  40c3ee:	5f                   	pop    edi
  40c3ef:	5e                   	pop    esi
  40c3f0:	5b                   	pop    ebx
  40c3f1:	5d                   	pop    ebp
  40c3f2:	c2 08 00             	ret    0x8
  40c3f5:	90                   	nop
  40c3f6:	90                   	nop
  40c3f7:	90                   	nop
  40c3f8:	90                   	nop
  40c3f9:	90                   	nop
  40c3fa:	90                   	nop
  40c3fb:	90                   	nop
  40c3fc:	90                   	nop
  40c3fd:	90                   	nop
  40c3fe:	90                   	nop
  40c3ff:	90                   	nop

; [0x0040C400,0x0040C7A4) Analyse des parentheses et constantes decimales; noeuds operateurs; grammaire recursive
  40c400:	55                   	push   ebp
  40c401:	8b ec                	mov    ebp,esp
  40c403:	6a ff                	push   0xffffffff
  40c405:	68 c3 36 4d 00       	push   0x4d36c3
  40c40a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  40c410:	50                   	push   eax
  40c411:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  40c418:	83 ec 18             	sub    esp,0x18
  40c41b:	53                   	push   ebx
  40c41c:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
  40c41f:	56                   	push   esi
  40c420:	83 c9 ff             	or     ecx,0xffffffff
  40c423:	57                   	push   edi
  40c424:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  40c427:	33 c0                	xor    eax,eax
  40c429:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
  40c42c:	32 db                	xor    bl,bl
  40c42e:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  40c430:	f7 d1                	not    ecx
  40c432:	49                   	dec    ecx
  40c433:	8b f9                	mov    edi,ecx
  40c435:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  40c438:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  40c43b:	be 00 01 00 00       	mov    esi,0x100
  40c440:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  40c443:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  40c446:	85 c0                	test   eax,eax
  40c448:	75 3c                	jne    0x40c486
  40c44a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c44d:	80 38 28             	cmp    BYTE PTR [eax],0x28
  40c450:	75 34                	jne    0x40c486
  40c452:	8b c8                	mov    ecx,eax
  40c454:	51                   	push   ecx
  40c455:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  40c458:	8d 55 f0             	lea    edx,[ebp-0x10]
  40c45b:	52                   	push   edx
  40c45c:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  40c463:	e8 28 ff ff ff       	call   0x40c390
  40c468:	85 c0                	test   eax,eax
  40c46a:	75 07                	jne    0x40c473
  40c46c:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40c473:	39 7d f0             	cmp    DWORD PTR [ebp-0x10],edi
  40c476:	75 0e                	jne    0x40c486
  40c478:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c47b:	4f                   	dec    edi
  40c47c:	c6 04 07 00          	mov    BYTE PTR [edi+eax*1],0x0
  40c480:	40                   	inc    eax
  40c481:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  40c484:	eb bd                	jmp    0x40c443
  40c486:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c489:	33 c0                	xor    eax,eax
  40c48b:	85 ff                	test   edi,edi
  40c48d:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  40c490:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c493:	0f 8e 1a 02 00 00    	jle    0x40c6b3
  40c499:	0f be 0c 10          	movsx  ecx,BYTE PTR [eax+edx*1]
  40c49d:	8d 79 d8             	lea    edi,[ecx-0x28]
  40c4a0:	83 ff 36             	cmp    edi,0x36
  40c4a3:	0f 87 3c 01 00 00    	ja     0x40c5e5
  40c4a9:	33 c9                	xor    ecx,ecx
  40c4ab:	8a 8f 4c f1 40 00    	mov    cl,BYTE PTR [edi+0x40f14c]
  40c4b1:	ff 24 8d 20 f1 40 00 	jmp    DWORD PTR [ecx*4+0x40f120]
  40c4b8:	83 fe 0c             	cmp    esi,0xc
  40c4bb:	0f 8e 24 01 00 00    	jle    0x40c5e5
  40c4c1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c4c4:	be 0c 00 00 00       	mov    esi,0xc
  40c4c9:	b3 02                	mov    bl,0x2
  40c4cb:	e9 15 01 00 00       	jmp    0x40c5e5
  40c4d0:	83 fe 0b             	cmp    esi,0xb
  40c4d3:	0f 8e 0c 01 00 00    	jle    0x40c5e5
  40c4d9:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c4dc:	be 0b 00 00 00       	mov    esi,0xb
  40c4e1:	b3 01                	mov    bl,0x1
  40c4e3:	e9 fd 00 00 00       	jmp    0x40c5e5
  40c4e8:	83 fe 0e             	cmp    esi,0xe
  40c4eb:	0f 8e f4 00 00 00    	jle    0x40c5e5
  40c4f1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c4f4:	be 0d 00 00 00       	mov    esi,0xd
  40c4f9:	b3 04                	mov    bl,0x4
  40c4fb:	e9 e5 00 00 00       	jmp    0x40c5e5
  40c500:	83 fe 0d             	cmp    esi,0xd
  40c503:	0f 8e dc 00 00 00    	jle    0x40c5e5
  40c509:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c50c:	be 0d 00 00 00       	mov    esi,0xd
  40c511:	b3 03                	mov    bl,0x3
  40c513:	e9 cd 00 00 00       	jmp    0x40c5e5
  40c518:	83 fe 0f             	cmp    esi,0xf
  40c51b:	0f 8e c4 00 00 00    	jle    0x40c5e5
  40c521:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c524:	be 0e 00 00 00       	mov    esi,0xe
  40c529:	b3 05                	mov    bl,0x5
  40c52b:	e9 b5 00 00 00       	jmp    0x40c5e5
  40c530:	83 fe 05             	cmp    esi,0x5
  40c533:	0f 8e ac 00 00 00    	jle    0x40c5e5
  40c539:	8a 4c 10 01          	mov    cl,BYTE PTR [eax+edx*1+0x1]
  40c53d:	80 f9 3d             	cmp    cl,0x3d
  40c540:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c543:	75 14                	jne    0x40c559
  40c545:	b3 0c                	mov    bl,0xc
  40c547:	40                   	inc    eax
  40c548:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
  40c54f:	be 05 00 00 00       	mov    esi,0x5
  40c554:	e9 8c 00 00 00       	jmp    0x40c5e5
  40c559:	80 f9 3e             	cmp    cl,0x3e
  40c55c:	75 11                	jne    0x40c56f
  40c55e:	b3 08                	mov    bl,0x8
  40c560:	40                   	inc    eax
  40c561:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
  40c568:	be 05 00 00 00       	mov    esi,0x5
  40c56d:	eb 76                	jmp    0x40c5e5
  40c56f:	b3 0b                	mov    bl,0xb
  40c571:	be 05 00 00 00       	mov    esi,0x5
  40c576:	eb 6d                	jmp    0x40c5e5
  40c578:	83 fe 05             	cmp    esi,0x5
  40c57b:	7e 68                	jle    0x40c5e5
  40c57d:	80 7c 10 01 3d       	cmp    BYTE PTR [eax+edx*1+0x1],0x3d
  40c582:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c585:	75 11                	jne    0x40c598
  40c587:	b3 0a                	mov    bl,0xa
  40c589:	40                   	inc    eax
  40c58a:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
  40c591:	be 05 00 00 00       	mov    esi,0x5
  40c596:	eb 4d                	jmp    0x40c5e5
  40c598:	b3 09                	mov    bl,0x9
  40c59a:	be 05 00 00 00       	mov    esi,0x5
  40c59f:	eb 44                	jmp    0x40c5e5
  40c5a1:	83 fe 05             	cmp    esi,0x5
  40c5a4:	7e 3f                	jle    0x40c5e5
  40c5a6:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c5a9:	b3 07                	mov    bl,0x7
  40c5ab:	be 05 00 00 00       	mov    esi,0x5
  40c5b0:	eb 33                	jmp    0x40c5e5
  40c5b2:	83 fe 10             	cmp    esi,0x10
  40c5b5:	7e 2e                	jle    0x40c5e5
  40c5b7:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40c5ba:	be 0f 00 00 00       	mov    esi,0xf
  40c5bf:	b3 06                	mov    bl,0x6
  40c5c1:	eb 22                	jmp    0x40c5e5
  40c5c3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c5c6:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  40c5c9:	52                   	push   edx
  40c5ca:	8d 45 f0             	lea    eax,[ebp-0x10]
  40c5cd:	50                   	push   eax
  40c5ce:	e8 bd fd ff ff       	call   0x40c390
  40c5d3:	85 c0                	test   eax,eax
  40c5d5:	75 07                	jne    0x40c5de
  40c5d7:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40c5de:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c5e1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c5e4:	48                   	dec    eax
  40c5e5:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  40c5e8:	40                   	inc    eax
  40c5e9:	3b c1                	cmp    eax,ecx
  40c5eb:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c5ee:	0f 8c a5 fe ff ff    	jl     0x40c499
  40c5f4:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  40c5f7:	83 f8 ff             	cmp    eax,0xffffffff
  40c5fa:	0f 84 b3 00 00 00    	je     0x40c6b3
  40c600:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c603:	8b c8                	mov    ecx,eax
  40c605:	6a 20                	push   0x20
  40c607:	c6 04 11 00          	mov    BYTE PTR [ecx+edx*1],0x0
  40c60b:	e8 e0 59 03 00       	call   0x441ff0
  40c610:	6a 20                	push   0x20
  40c612:	8b f0                	mov    esi,eax
  40c614:	e8 d7 59 03 00       	call   0x441ff0
  40c619:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  40c61c:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  40c61f:	83 c4 08             	add    esp,0x8
  40c622:	8d 78 2c             	lea    edi,[eax+0x2c]
  40c625:	56                   	push   esi
  40c626:	8b cf                	mov    ecx,edi
  40c628:	e8 d3 32 00 00       	call   0x40f900
  40c62d:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  40c630:	51                   	push   ecx
  40c631:	8b cf                	mov    ecx,edi
  40c633:	e8 c8 32 00 00       	call   0x40f900
  40c638:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  40c63b:	33 c0                	xor    eax,eax
  40c63d:	b9 08 00 00 00       	mov    ecx,0x8
  40c642:	8b fe                	mov    edi,esi
  40c644:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40c646:	8b fa                	mov    edi,edx
  40c648:	b9 08 00 00 00       	mov    ecx,0x8
  40c64d:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40c64f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c652:	33 c9                	xor    ecx,ecx
  40c654:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  40c657:	89 50 1c             	mov    DWORD PTR [eax+0x1c],edx
  40c65a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40c65d:	56                   	push   esi
  40c65e:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  40c661:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  40c664:	52                   	push   edx
  40c665:	88 18                	mov    BYTE PTR [eax],bl
  40c667:	89 70 18             	mov    DWORD PTR [eax+0x18],esi
  40c66a:	e8 91 fd ff ff       	call   0x40c400
  40c66f:	85 c0                	test   eax,eax
  40c671:	74 2b                	je     0x40c69e
  40c673:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  40c676:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  40c679:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  40c67c:	50                   	push   eax
  40c67d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c680:	03 ca                	add    ecx,edx
  40c682:	8d 4c 01 01          	lea    ecx,[ecx+eax*1+0x1]
  40c686:	51                   	push   ecx
  40c687:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  40c68a:	e8 71 fd ff ff       	call   0x40c400
  40c68f:	85 c0                	test   eax,eax
  40c691:	74 0b                	je     0x40c69e
  40c693:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  40c696:	85 c0                	test   eax,eax
  40c698:	0f 84 69 2a 00 00    	je     0x40f107
  40c69e:	5f                   	pop    edi
  40c69f:	5e                   	pop    esi
  40c6a0:	33 c0                	xor    eax,eax
  40c6a2:	5b                   	pop    ebx
  40c6a3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c6a6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c6ad:	8b e5                	mov    esp,ebp
  40c6af:	5d                   	pop    ebp
  40c6b0:	c2 08 00             	ret    0x8
  40c6b3:	8a 02                	mov    al,BYTE PTR [edx]
  40c6b5:	84 c0                	test   al,al
  40c6b7:	75 11                	jne    0x40c6ca
  40c6b9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40c6bc:	33 c9                	xor    ecx,ecx
  40c6be:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  40c6c1:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  40c6c4:	c6 40 10 01          	mov    BYTE PTR [eax+0x10],0x1
  40c6c8:	eb c9                	jmp    0x40c693
  40c6ca:	8b 3d 54 e3 4d 00    	mov    edi,DWORD PTR ds:0x4de354
  40c6d0:	0f be d0             	movsx  edx,al
  40c6d3:	52                   	push   edx
  40c6d4:	ff d7                	call   edi
  40c6d6:	83 c4 04             	add    esp,0x4
  40c6d9:	85 c0                	test   eax,eax
  40c6db:	0f 84 c3 00 00 00    	je     0x40c7a4
  40c6e1:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  40c6e4:	33 c0                	xor    eax,eax
  40c6e6:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  40c6e9:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  40c6ec:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c6ef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  40c6f2:	0f be 08             	movsx  ecx,BYTE PTR [eax]
  40c6f5:	51                   	push   ecx
  40c6f6:	ff d7                	call   edi
  40c6f8:	83 c4 04             	add    esp,0x4
  40c6fb:	85 c0                	test   eax,eax
  40c6fd:	74 38                	je     0x40c737
  40c6ff:	dd 46 08             	fld    QWORD PTR [esi+0x8]
  40c702:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c705:	dc 0d 28 e6 4d 00    	fmul   QWORD PTR ds:0x4de628
  40c70b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  40c70e:	dd 56 08             	fst    QWORD PTR [esi+0x8]
  40c711:	0f be 14 08          	movsx  edx,BYTE PTR [eax+ecx*1]
  40c715:	83 ea 30             	sub    edx,0x30
  40c718:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  40c71b:	40                   	inc    eax
  40c71c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c71f:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  40c722:	d8 c1                	fadd   st,st(1)
  40c724:	dd 5e 08             	fstp   QWORD PTR [esi+0x8]
  40c727:	0f be 04 08          	movsx  eax,BYTE PTR [eax+ecx*1]
  40c72b:	50                   	push   eax
  40c72c:	dd d8                	fstp   st(0)
  40c72e:	ff d7                	call   edi
  40c730:	83 c4 04             	add    esp,0x4
  40c733:	85 c0                	test   eax,eax
  40c735:	75 c8                	jne    0x40c6ff
  40c737:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c73a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  40c73d:	80 3c 18 2e          	cmp    BYTE PTR [eax+ebx*1],0x2e
  40c741:	75 58                	jne    0x40c79b
  40c743:	40                   	inc    eax
  40c744:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c747:	0f be 0c 18          	movsx  ecx,BYTE PTR [eax+ebx*1]
  40c74b:	51                   	push   ecx
  40c74c:	ff d7                	call   edi
  40c74e:	83 c4 04             	add    esp,0x4
  40c751:	85 c0                	test   eax,eax
  40c753:	74 46                	je     0x40c79b
  40c755:	c7 45 0c ff ff ff ff 	mov    DWORD PTR [ebp+0xc],0xffffffff
  40c75c:	dd 05 28 e6 4d 00    	fld    QWORD PTR ds:0x4de628
  40c762:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  40c765:	e8 16 56 0c 00       	call   0x4d1d80
  40c76a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40c76d:	0f be 14 18          	movsx  edx,BYTE PTR [eax+ebx*1]
  40c771:	83 ea 30             	sub    edx,0x30
  40c774:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
  40c777:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40c77a:	40                   	inc    eax
  40c77b:	db 45 08             	fild   DWORD PTR [ebp+0x8]
  40c77e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40c781:	4a                   	dec    edx
  40c782:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  40c785:	de c9                	fmulp  st(1),st
  40c787:	dc 46 08             	fadd   QWORD PTR [esi+0x8]
  40c78a:	dd 5e 08             	fstp   QWORD PTR [esi+0x8]
  40c78d:	0f be 04 18          	movsx  eax,BYTE PTR [eax+ebx*1]
  40c791:	50                   	push   eax
  40c792:	ff d7                	call   edi
  40c794:	83 c4 04             	add    esp,0x4
  40c797:	85 c0                	test   eax,eax
  40c799:	75 c1                	jne    0x40c75c
  40c79b:	c6 46 10 01          	mov    BYTE PTR [esi+0x10],0x1
  40c79f:	e9 ef fe ff ff       	jmp    0x40c693

