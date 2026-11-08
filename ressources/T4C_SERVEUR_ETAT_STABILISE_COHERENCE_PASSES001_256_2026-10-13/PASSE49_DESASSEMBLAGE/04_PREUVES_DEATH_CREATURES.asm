; PASSE 49 — Creatures::Death — message 13, retrait monde, objets de scene
; Serveur original SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque octet x86 est recoupe directement avec la section .text de T4C Server(1).exe.
; Les plages suivent des blocs fonctionnels identifies; les annotations ne substituent pas les appels indirects.

; Passage a l etat mort et message 13 — 0x4324B0..0x43258C exclu
; Met HP a zero, flag de reentrance, message 13 avec structure temporaire, obtient le monde.
  4324b0:	55                   	push   ebp
  4324b1:	8b ec                	mov    ebp,esp
  4324b3:	6a ff                	push   0xffffffff
  4324b5:	68 b3 51 4d 00       	push   0x4d51b3
  4324ba:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4324c0:	50                   	push   eax
  4324c1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4324c8:	83 ec 78             	sub    esp,0x78
  4324cb:	53                   	push   ebx
  4324cc:	56                   	push   esi
  4324cd:	57                   	push   edi
  4324ce:	33 db                	xor    ebx,ebx
  4324d0:	8b f1                	mov    esi,ecx
  4324d2:	8b 06                	mov    eax,DWORD PTR [esi]
  4324d4:	53                   	push   ebx
  4324d5:	53                   	push   ebx
  4324d6:	ff 90 dc 00 00 00    	call   DWORD PTR [eax+0xdc]
  4324dc:	8a 86 b0 00 00 00    	mov    al,BYTE PTR [esi+0xb0]
  4324e2:	84 c0                	test   al,al
  4324e4:	0f 85 db 03 00 00    	jne    0x4328c5
  4324ea:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  4324ed:	3b fb                	cmp    edi,ebx
  4324ef:	c6 86 b0 00 00 00 01 	mov    BYTE PTR [esi+0xb0],0x1
  4324f6:	74 21                	je     0x432519
  4324f8:	8b 17                	mov    edx,DWORD PTR [edi]
  4324fa:	6a 03                	push   0x3
  4324fc:	8b cf                	mov    ecx,edi
  4324fe:	ff 92 80 00 00 00    	call   DWORD PTR [edx+0x80]
  432504:	8b 1f                	mov    ebx,DWORD PTR [edi]
  432506:	8b cf                	mov    ecx,edi
  432508:	ff 93 14 01 00 00    	call   DWORD PTR [ebx+0x114]
  43250e:	50                   	push   eax
  43250f:	8b cf                	mov    ecx,edi
  432511:	ff 93 ac 00 00 00    	call   DWORD PTR [ebx+0xac]
  432517:	33 db                	xor    ebx,ebx
  432519:	8d 45 84             	lea    eax,[ebp-0x7c]
  43251c:	50                   	push   eax
  43251d:	c7 85 7c ff ff ff 8c 	mov    DWORD PTR [ebp-0x84],0x4de58c
  432524:	e5 4d 00 
  432527:	c7 45 80 ff ff ff ff 	mov    DWORD PTR [ebp-0x80],0xffffffff
  43252e:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  432534:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
  432537:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
  43253a:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
  43253d:	89 5d ac             	mov    DWORD PTR [ebp-0x54],ebx
  432540:	c7 85 7c ff ff ff 6c 	mov    DWORD PTR [ebp-0x84],0x4de66c
  432547:	e6 4d 00 
  43254a:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  43254d:	c6 45 b0 08          	mov    BYTE PTR [ebp-0x50],0x8
  432551:	89 5d b4             	mov    DWORD PTR [ebp-0x4c],ebx
  432554:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  432557:	8b 16                	mov    edx,DWORD PTR [esi]
  432559:	8d 85 7c ff ff ff    	lea    eax,[ebp-0x84]
  43255f:	50                   	push   eax
  432560:	51                   	push   ecx
  432561:	57                   	push   edi
  432562:	53                   	push   ebx
  432563:	56                   	push   esi
  432564:	6a 0d                	push   0xd
  432566:	8b ce                	mov    ecx,esi
  432568:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  43256b:	ff 52 24             	call   DWORD PTR [edx+0x24]
  43256e:	8b 16                	mov    edx,DWORD PTR [esi]
  432570:	8d 45 e4             	lea    eax,[ebp-0x1c]
  432573:	50                   	push   eax
  432574:	8b ce                	mov    ecx,esi
  432576:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  432579:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  43257c:	51                   	push   ecx
  43257d:	e8 3e f9 03 00       	call   0x471ec0
  432582:	8b f8                	mov    edi,eax
  432584:	83 c4 04             	add    esp,0x4
  432587:	3b fb                	cmp    edi,ebx
  432589:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi

; Suppression du monde et iteration de contenu — 0x43258C..0x4326D3 exclu
; WorldMap::remove_world_unit, parcourt les listes. Huit orientations candidates avec deplacements +/-1, aleatoire.
  43258c:	0f 84 18 02 00 00    	je     0x4327aa
  432592:	8b ce                	mov    ecx,esi
  432594:	e8 67 91 05 00       	call   0x48b700
  432599:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  43259c:	50                   	push   eax
  43259d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  4325a0:	83 ec 0c             	sub    esp,0xc
  4325a3:	8b d4                	mov    edx,esp
  4325a5:	89 02                	mov    DWORD PTR [edx],eax
  4325a7:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4325aa:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  4325ad:	8b cf                	mov    ecx,edi
  4325af:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4325b2:	e8 d9 ea 07 00       	call   0x4b1090
  4325b7:	56                   	push   esi
  4325b8:	68 58 2e 50 00       	push   0x502e58
  4325bd:	68 00 04 00 00       	push   0x400
  4325c2:	e8 79 f7 03 00       	call   0x471d40
  4325c7:	83 c4 0c             	add    esp,0xc
  4325ca:	8d 4d c0             	lea    ecx,[ebp-0x40]
  4325cd:	e8 1e 38 05 00       	call   0x485df0
  4325d2:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4325d5:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4325d9:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
  4325dc:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  4325df:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  4325e2:	c6 45 b0 08          	mov    BYTE PTR [ebp-0x50],0x8
  4325e6:	8b 4d bc             	mov    ecx,DWORD PTR [ebp-0x44]
  4325e9:	3b cb                	cmp    ecx,ebx
  4325eb:	74 07                	je     0x4325f4
  4325ed:	8b 00                	mov    eax,DWORD PTR [eax]
  4325ef:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  4325f2:	eb 08                	jmp    0x4325fc
  4325f4:	b9 01 00 00 00       	mov    ecx,0x1
  4325f9:	89 4d bc             	mov    DWORD PTR [ebp-0x44],ecx
  4325fc:	3b c3                	cmp    eax,ebx
  4325fe:	0f 84 8d 01 00 00    	je     0x432791
  432604:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  432607:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  43260a:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
  43260d:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
  432610:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  432613:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  432616:	8b c1                	mov    eax,ecx
  432618:	41                   	inc    ecx
  432619:	83 f8 07             	cmp    eax,0x7
  43261c:	89 4d 0c             	mov    DWORD PTR [ebp+0xc],ecx
  43261f:	0f 87 ae 00 00 00    	ja     0x4326d3
  432625:	ff 24 85 d8 28 43 00 	jmp    DWORD PTR [eax*4+0x4328d8]
  43262c:	6a 02                	push   0x2
  43262e:	6a 01                	push   0x1
  432630:	b9 34 5e 51 00       	mov    ecx,0x515e34
  432635:	e8 66 6a 02 00       	call   0x4590a0
  43263a:	8b f0                	mov    esi,eax
  43263c:	03 75 e4             	add    esi,DWORD PTR [ebp-0x1c]
  43263f:	e9 8f 00 00 00       	jmp    0x4326d3
  432644:	6a 02                	push   0x2
  432646:	6a 01                	push   0x1
  432648:	b9 34 5e 51 00       	mov    ecx,0x515e34
  43264d:	e8 4e 6a 02 00       	call   0x4590a0
  432652:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  432655:	2b f0                	sub    esi,eax
  432657:	eb 7a                	jmp    0x4326d3
  432659:	6a 02                	push   0x2
  43265b:	6a 01                	push   0x1
  43265d:	b9 34 5e 51 00       	mov    ecx,0x515e34
  432662:	e8 39 6a 02 00       	call   0x4590a0
  432667:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
  43266a:	8b f0                	mov    esi,eax
  43266c:	03 f7                	add    esi,edi
  43266e:	eb 28                	jmp    0x432698
  432670:	6a 02                	push   0x2
  432672:	6a 01                	push   0x1
  432674:	b9 34 5e 51 00       	mov    ecx,0x515e34
  432679:	e8 22 6a 02 00       	call   0x4590a0
  43267e:	8b f0                	mov    esi,eax
  432680:	03 75 e4             	add    esi,DWORD PTR [ebp-0x1c]
  432683:	eb 3b                	jmp    0x4326c0
  432685:	6a 02                	push   0x2
  432687:	6a 01                	push   0x1
  432689:	b9 34 5e 51 00       	mov    ecx,0x515e34
  43268e:	e8 0d 6a 02 00       	call   0x4590a0
  432693:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  432696:	2b f0                	sub    esi,eax
  432698:	6a 02                	push   0x2
  43269a:	6a 01                	push   0x1
  43269c:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4326a1:	e8 fa 69 02 00       	call   0x4590a0
  4326a6:	8b f8                	mov    edi,eax
  4326a8:	03 7d e8             	add    edi,DWORD PTR [ebp-0x18]
  4326ab:	eb 26                	jmp    0x4326d3
  4326ad:	6a 02                	push   0x2
  4326af:	6a 01                	push   0x1
  4326b1:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4326b6:	e8 e5 69 02 00       	call   0x4590a0
  4326bb:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  4326be:	2b f0                	sub    esi,eax
  4326c0:	6a 02                	push   0x2
  4326c2:	6a 01                	push   0x1
  4326c4:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4326c9:	e8 d2 69 02 00       	call   0x4590a0
  4326ce:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
  4326d1:	2b f8                	sub    edi,eax

; Placement valide et popup — 0x4326D3..0x4327C5 exclu
; WorldMap::IsBlocking, FindValidSpot, bounds, deposit_unit, BroadcastPopup; voie alternative DeleteUnit.
  4326d3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4326d6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4326d9:	33 d2                	xor    edx,edx
  4326db:	83 f8 07             	cmp    eax,0x7
  4326de:	0f 9f c2             	setg   dl
  4326e1:	6a 00                	push   0x0
  4326e3:	6a 00                	push   0x0
  4326e5:	6a 00                	push   0x0
  4326e7:	83 ec 0c             	sub    esp,0xc
  4326ea:	4a                   	dec    edx
  4326eb:	23 d0                	and    edx,eax
  4326ed:	8b c4                	mov    eax,esp
  4326ef:	89 30                	mov    DWORD PTR [eax],esi
  4326f1:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  4326f4:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  4326f7:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  4326fa:	e8 51 cb 07 00       	call   0x4af250
  4326ff:	85 c0                	test   eax,eax
  432701:	74 23                	je     0x432726
  432703:	6a 02                	push   0x2
  432705:	83 ec 0c             	sub    esp,0xc
  432708:	8b cc                	mov    ecx,esp
  43270a:	89 31                	mov    DWORD PTR [ecx],esi
  43270c:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  43270f:	8d 55 d8             	lea    edx,[ebp-0x28]
  432712:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
  432715:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  432718:	52                   	push   edx
  432719:	e8 82 fa 07 00       	call   0x4b21a0
  43271e:	8b 30                	mov    esi,DWORD PTR [eax]
  432720:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  432723:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
  432726:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  432729:	33 c0                	xor    eax,eax
  43272b:	66 8b 41 2c          	mov    ax,WORD PTR [ecx+0x2c]
  43272f:	3b f0                	cmp    esi,eax
  432731:	7d 49                	jge    0x43277c
  432733:	33 d2                	xor    edx,edx
  432735:	66 8b 51 2e          	mov    dx,WORD PTR [ecx+0x2e]
  432739:	3b fa                	cmp    edi,edx
  43273b:	7d 3f                	jge    0x43277c
  43273d:	85 f6                	test   esi,esi
  43273f:	7c 3b                	jl     0x43277c
  432741:	85 ff                	test   edi,edi
  432743:	7c 37                	jl     0x43277c
  432745:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  432748:	50                   	push   eax
  432749:	83 ec 0c             	sub    esp,0xc
  43274c:	8b d4                	mov    edx,esp
  43274e:	89 32                	mov    DWORD PTR [edx],esi
  432750:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
  432753:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
  432756:	e8 b5 c9 07 00       	call   0x4af110
  43275b:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  43275e:	6a 01                	push   0x1
  432760:	83 ec 0c             	sub    esp,0xc
  432763:	8b c4                	mov    eax,esp
  432765:	89 30                	mov    DWORD PTR [eax],esi
  432767:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  43276a:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  43276d:	e8 6e d0 05 00       	call   0x48f7e0
  432772:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  432775:	33 db                	xor    ebx,ebx
  432777:	e9 6a fe ff ff       	jmp    0x4325e6
  43277c:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  43277f:	8b 11                	mov    edx,DWORD PTR [ecx]
  432781:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  432787:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  43278a:	33 db                	xor    ebx,ebx
  43278c:	e9 55 fe ff ff       	jmp    0x4325e6
  432791:	3b cb                	cmp    ecx,ebx
  432793:	74 04                	je     0x432799
  432795:	c6 45 b0 07          	mov    BYTE PTR [ebp-0x50],0x7
  432799:	8d 4d c0             	lea    ecx,[ebp-0x40]
  43279c:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  43279f:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4327a3:	e8 d8 36 05 00       	call   0x485e80
  4327a8:	eb 1b                	jmp    0x4327c5
  4327aa:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4327ad:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  4327b0:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  4327b3:	50                   	push   eax
  4327b4:	51                   	push   ecx
  4327b5:	52                   	push   edx
  4327b6:	68 10 2e 50 00       	push   0x502e10
  4327bb:	6a 04                	push   0x4
  4327bd:	e8 7e f5 03 00       	call   0x471d40
  4327c2:	83 c4 14             	add    esp,0x14

; Detachement liste et nettoyage — 0x4327C5..0x4328C5 exclu
; Itere sur des maillons et les detache ou appelle DeleteUnit; controles limites.
  4327c5:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
  4327c8:	8b c2                	mov    eax,edx
  4327ca:	33 c9                	xor    ecx,ecx
  4327cc:	c7 85 7c ff ff ff 6c 	mov    DWORD PTR [ebp-0x84],0x4de66c
  4327d3:	e6 4d 00 
  4327d6:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  4327d9:	89 4d bc             	mov    DWORD PTR [ebp-0x44],ecx
  4327dc:	c6 45 b0 08          	mov    BYTE PTR [ebp-0x50],0x8
  4327e0:	3b cb                	cmp    ecx,ebx
  4327e2:	74 07                	je     0x4327eb
  4327e4:	8b 00                	mov    eax,DWORD PTR [eax]
  4327e6:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  4327e9:	eb 08                	jmp    0x4327f3
  4327eb:	b9 01 00 00 00       	mov    ecx,0x1
  4327f0:	89 4d bc             	mov    DWORD PTR [ebp-0x44],ecx
  4327f3:	3b c3                	cmp    eax,ebx
  4327f5:	0f 84 ab 00 00 00    	je     0x4328a6
  4327fb:	8b 7d b4             	mov    edi,DWORD PTR [ebp-0x4c]
  4327fe:	8b 4d a4             	mov    ecx,DWORD PTR [ebp-0x5c]
  432801:	4f                   	dec    edi
  432802:	3b c1                	cmp    eax,ecx
  432804:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
  432807:	89 7d b4             	mov    DWORD PTR [ebp-0x4c],edi
  43280a:	74 38                	je     0x432844
  43280c:	3b c2                	cmp    eax,edx
  43280e:	74 54                	je     0x432864
  432810:	8b 08                	mov    ecx,DWORD PTR [eax]
  432812:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  432815:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  432818:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  43281b:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  43281e:	8b 10                	mov    edx,DWORD PTR [eax]
  432820:	89 11                	mov    DWORD PTR [ecx],edx
  432822:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  432825:	83 f8 01             	cmp    eax,0x1
  432828:	75 0b                	jne    0x432835
  43282a:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  43282d:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  432830:	89 4d 9c             	mov    DWORD PTR [ebp-0x64],ecx
  432833:	eb 57                	jmp    0x43288c
  432835:	83 f8 02             	cmp    eax,0x2
  432838:	75 52                	jne    0x43288c
  43283a:	8b 55 9c             	mov    edx,DWORD PTR [ebp-0x64]
  43283d:	8b 02                	mov    eax,DWORD PTR [edx]
  43283f:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  432842:	eb 48                	jmp    0x43288c
  432844:	3b c2                	cmp    eax,edx
  432846:	74 1c                	je     0x432864
  432848:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  43284b:	89 19                	mov    DWORD PTR [ecx],ebx
  43284d:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  432850:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  432853:	89 55 a4             	mov    DWORD PTR [ebp-0x5c],edx
  432856:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  432859:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  43285c:	83 7d bc 02          	cmp    DWORD PTR [ebp-0x44],0x2
  432860:	75 2a                	jne    0x43288c
  432862:	eb 25                	jmp    0x432889
  432864:	3b c1                	cmp    eax,ecx
  432866:	74 18                	je     0x432880
  432868:	8b 08                	mov    ecx,DWORD PTR [eax]
  43286a:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  43286d:	8b 55 9c             	mov    edx,DWORD PTR [ebp-0x64]
  432870:	8b 02                	mov    eax,DWORD PTR [edx]
  432872:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  432875:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  432878:	83 7d bc 01          	cmp    DWORD PTR [ebp-0x44],0x1
  43287c:	75 0e                	jne    0x43288c
  43287e:	eb 09                	jmp    0x432889
  432880:	89 5d 9c             	mov    DWORD PTR [ebp-0x64],ebx
  432883:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
  432886:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
  432889:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  43288c:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  43288f:	50                   	push   eax
  432890:	e8 cb f7 00 00       	call   0x442060
  432895:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  432898:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
  43289b:	8b 4d bc             	mov    ecx,DWORD PTR [ebp-0x44]
  43289e:	83 c4 04             	add    esp,0x4
  4328a1:	e9 3a ff ff ff       	jmp    0x4327e0
  4328a6:	3b cb                	cmp    ecx,ebx
  4328a8:	74 04                	je     0x4328ae
  4328aa:	c6 45 b0 07          	mov    BYTE PTR [ebp-0x50],0x7
  4328ae:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  4328b1:	51                   	push   ecx
  4328b2:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  4328b5:	c7 85 7c ff ff ff 8c 	mov    DWORD PTR [ebp-0x84],0x4de58c
  4328bc:	e5 4d 00 
  4328bf:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
