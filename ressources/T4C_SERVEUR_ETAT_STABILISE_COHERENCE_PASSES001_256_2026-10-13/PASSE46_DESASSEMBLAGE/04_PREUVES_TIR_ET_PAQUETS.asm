; PASSE46 — attaque à distance et diffusions
; Binaire serveur SHA-256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Séquences disassemblées de .text et vérifiées octet par octet.
; Attention : preuve statique, non une exécution instrumentée.

; Character::RangedAttack | [0x421620, 0x4216a0[
; Vérifications d objets équipés, dispatch avec code 0x14 et champ type 0xC.
  421620:	55                   	push   ebp
  421621:	8b ec                	mov    ebp,esp
  421623:	51                   	push   ecx
  421624:	56                   	push   esi
  421625:	8b f1                	mov    esi,ecx
  421627:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  42162d:	85 c9                	test   ecx,ecx
  42162f:	74 63                	je     0x421694
  421631:	8b 86 c4 01 00 00    	mov    eax,DWORD PTR [esi+0x1c4]
  421637:	85 c0                	test   eax,eax
  421639:	74 59                	je     0x421694
  42163b:	8d 55 fc             	lea    edx,[ebp-0x4]
  42163e:	52                   	push   edx
  42163f:	6a 00                	push   0x0
  421641:	6a 00                	push   0x0
  421643:	6a 00                	push   0x0
  421645:	6a 00                	push   0x0
  421647:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  42164e:	8b 01                	mov    eax,DWORD PTR [ecx]
  421650:	6a 14                	push   0x14
  421652:	ff 50 24             	call   DWORD PTR [eax+0x24]
  421655:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  421658:	85 c0                	test   eax,eax
  42165a:	74 38                	je     0x421694
  42165c:	8a 88 26 01 00 00    	mov    cl,BYTE PTR [eax+0x126]
  421662:	84 c9                	test   cl,cl
  421664:	74 2e                	je     0x421694
  421666:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  42166c:	8b 01                	mov    eax,DWORD PTR [ecx]
  42166e:	8d 55 fc             	lea    edx,[ebp-0x4]
  421671:	52                   	push   edx
  421672:	6a 00                	push   0x0
  421674:	6a 00                	push   0x0
  421676:	6a 00                	push   0x0
  421678:	6a 00                	push   0x0
  42167a:	6a 14                	push   0x14
  42167c:	ff 50 24             	call   DWORD PTR [eax+0x24]
  42167f:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  421682:	85 c0                	test   eax,eax
  421684:	74 0e                	je     0x421694
  421686:	66 83 78 0a 0c       	cmp    WORD PTR [eax+0xa],0xc
  42168b:	75 07                	jne    0x421694
  42168d:	b0 01                	mov    al,0x1
  42168f:	5e                   	pop    esi
  421690:	8b e5                	mov    esp,ebp
  421692:	5d                   	pop    ebp
  421693:	c3                   	ret
  421694:	32 c0                	xor    al,al
  421696:	5e                   	pop    esi
  421697:	8b e5                	mov    esp,ebp
  421699:	5d                   	pop    ebp
  42169a:	c3                   	ret
  42169b:	90                   	nop
  42169c:	90                   	nop
  42169d:	90                   	nop
  42169e:	90                   	nop
  42169f:	90                   	nop

; Helper interne construction attaque | [0x4216a0, 0x421890[
; GetDODGE, InPVP, coordonnées, sqrt, formules, GetAGI et GetBlowPrecision.
  4216a0:	55                   	push   ebp
  4216a1:	8b ec                	mov    ebp,esp
  4216a3:	83 ec 18             	sub    esp,0x18
  4216a6:	53                   	push   ebx
  4216a7:	56                   	push   esi
  4216a8:	57                   	push   edi
  4216a9:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  4216ac:	8b cf                	mov    ecx,edi
  4216ae:	e8 5d cb 06 00       	call   0x48e210
  4216b3:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4216b6:	25 ff ff 00 00       	and    eax,0xffff
  4216bb:	89 43 14             	mov    DWORD PTR [ebx+0x14],eax
  4216be:	7f 05                	jg     0x4216c5
  4216c0:	b8 01 00 00 00       	mov    eax,0x1
  4216c5:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  4216c8:	8b ce                	mov    ecx,esi
  4216ca:	89 43 14             	mov    DWORD PTR [ebx+0x14],eax
  4216cd:	e8 be dd 06 00       	call   0x48f490
  4216d2:	3c 06                	cmp    al,0x6
  4216d4:	74 21                	je     0x4216f7
  4216d6:	8b ce                	mov    ecx,esi
  4216d8:	e8 b3 dd 06 00       	call   0x48f490
  4216dd:	3c 07                	cmp    al,0x7
  4216df:	74 16                	je     0x4216f7
  4216e1:	8b cf                	mov    ecx,edi
  4216e3:	e8 a8 dd 06 00       	call   0x48f490
  4216e8:	3c 06                	cmp    al,0x6
  4216ea:	74 0b                	je     0x4216f7
  4216ec:	8b cf                	mov    ecx,edi
  4216ee:	e8 9d dd 06 00       	call   0x48f490
  4216f3:	3c 07                	cmp    al,0x7
  4216f5:	75 24                	jne    0x42171b
  4216f7:	8b cf                	mov    ecx,edi
  4216f9:	e8 72 9f 06 00       	call   0x48b670
  4216fe:	3c 01                	cmp    al,0x1
  421700:	75 19                	jne    0x42171b
  421702:	8b ce                	mov    ecx,esi
  421704:	e8 67 9f 06 00       	call   0x48b670
  421709:	3c 01                	cmp    al,0x1
  42170b:	75 0e                	jne    0x42171b
  42170d:	5f                   	pop    edi
  42170e:	5e                   	pop    esi
  42170f:	c7 43 10 ff ff ff ff 	mov    DWORD PTR [ebx+0x10],0xffffffff
  421716:	5b                   	pop    ebx
  421717:	8b e5                	mov    esp,ebp
  421719:	5d                   	pop    ebp
  42171a:	c3                   	ret
  42171b:	57                   	push   edi
  42171c:	56                   	push   esi
  42171d:	e8 be 78 01 00       	call   0x438fe0
  421722:	83 c4 08             	add    esp,0x8
  421725:	85 c0                	test   eax,eax
  421727:	75 0e                	jne    0x421737
  421729:	5f                   	pop    edi
  42172a:	5e                   	pop    esi
  42172b:	c7 43 10 ff ff ff ff 	mov    DWORD PTR [ebx+0x10],0xffffffff
  421732:	5b                   	pop    ebx
  421733:	8b e5                	mov    esp,ebp
  421735:	5d                   	pop    ebp
  421736:	c3                   	ret
  421737:	8b 06                	mov    eax,DWORD PTR [esi]
  421739:	8d 4d e8             	lea    ecx,[ebp-0x18]
  42173c:	51                   	push   ecx
  42173d:	8b ce                	mov    ecx,esi
  42173f:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  421742:	8b 17                	mov    edx,DWORD PTR [edi]
  421744:	8b d8                	mov    ebx,eax
  421746:	8d 45 f4             	lea    eax,[ebp-0xc]
  421749:	50                   	push   eax
  42174a:	8b cf                	mov    ecx,edi
  42174c:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  42174f:	8b 10                	mov    edx,DWORD PTR [eax]
  421751:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  421753:	2b ca                	sub    ecx,edx
  421755:	8b c1                	mov    eax,ecx
  421757:	99                   	cdq
  421758:	33 c2                	xor    eax,edx
  42175a:	2b c2                	sub    eax,edx
  42175c:	8b 16                	mov    edx,DWORD PTR [esi]
  42175e:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  421761:	8d 45 e8             	lea    eax,[ebp-0x18]
  421764:	50                   	push   eax
  421765:	8b ce                	mov    ecx,esi
  421767:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  42176a:	8b 17                	mov    edx,DWORD PTR [edi]
  42176c:	8b d8                	mov    ebx,eax
  42176e:	8d 45 f4             	lea    eax,[ebp-0xc]
  421771:	50                   	push   eax
  421772:	8b cf                	mov    ecx,edi
  421774:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421777:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  42177a:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  42177d:	2b ca                	sub    ecx,edx
  42177f:	8b c1                	mov    eax,ecx
  421781:	99                   	cdq
  421782:	33 c2                	xor    eax,edx
  421784:	2b c2                	sub    eax,edx
  421786:	8b d0                	mov    edx,eax
  421788:	0f af d0             	imul   edx,eax
  42178b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  42178e:	8b c8                	mov    ecx,eax
  421790:	0f af c8             	imul   ecx,eax
  421793:	03 d1                	add    edx,ecx
  421795:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
  421798:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  42179b:	d9 fa                	fsqrt
  42179d:	e8 d8 05 0b 00       	call   0x4d1d7a
  4217a2:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4217a5:	8b 16                	mov    edx,DWORD PTR [esi]
  4217a7:	57                   	push   edi
  4217a8:	53                   	push   ebx
  4217a9:	8b ce                	mov    ecx,esi
  4217ab:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4217ae:	ff 52 34             	call   DWORD PTR [edx+0x34]
  4217b1:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  4217b4:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4217b7:	6a 00                	push   0x0
  4217b9:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  4217bc:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  4217bf:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  4217c2:	50                   	push   eax
  4217c3:	51                   	push   ecx
  4217c4:	6a 00                	push   0x0
  4217c6:	6a 00                	push   0x0
  4217c8:	6a 00                	push   0x0
  4217ca:	6a 00                	push   0x0
  4217cc:	57                   	push   edi
  4217cd:	56                   	push   esi
  4217ce:	8d 4a 40             	lea    ecx,[edx+0x40]
  4217d1:	e8 7a ab fe ff       	call   0x40c350
  4217d6:	dd 5d ec             	fstp   QWORD PTR [ebp-0x14]
  4217d9:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  4217dc:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  4217df:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  4217e2:	6a 00                	push   0x0
  4217e4:	50                   	push   eax
  4217e5:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4217e8:	51                   	push   ecx
  4217e9:	6a 00                	push   0x0
  4217eb:	6a 00                	push   0x0
  4217ed:	52                   	push   edx
  4217ee:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4217f1:	50                   	push   eax
  4217f2:	57                   	push   edi
  4217f3:	56                   	push   esi
  4217f4:	83 c1 40             	add    ecx,0x40
  4217f7:	e8 54 ab fe ff       	call   0x40c350
  4217fc:	dc 03                	fadd   QWORD PTR [ebx]
  4217fe:	6a 23                	push   0x23
  421800:	8b ce                	mov    ecx,esi
  421802:	dd 13                	fst    QWORD PTR [ebx]
  421804:	c7 45 08 01 00 00 00 	mov    DWORD PTR [ebp+0x8],0x1
  42180b:	dd 5b 08             	fstp   QWORD PTR [ebx+0x8]
  42180e:	8b 16                	mov    edx,DWORD PTR [esi]
  421810:	ff 92 70 01 00 00    	call   DWORD PTR [edx+0x170]
  421816:	85 c0                	test   eax,eax
  421818:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  42181b:	74 32                	je     0x42184f
  42181d:	66 8b 00             	mov    ax,WORD PTR [eax]
  421820:	66 05 10 27          	add    ax,0x2710
  421824:	8b ce                	mov    ecx,esi
  421826:	50                   	push   eax
  421827:	e8 34 c6 06 00       	call   0x48de60
  42182c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  42182f:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  421832:	f7 d8                	neg    eax
  421834:	3b c1                	cmp    eax,ecx
  421836:	7e 07                	jle    0x42183f
  421838:	33 c9                	xor    ecx,ecx
  42183a:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  42183d:	eb 02                	jmp    0x421841
  42183f:	2b c8                	sub    ecx,eax
  421841:	85 c9                	test   ecx,ecx
  421843:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
  421846:	77 07                	ja     0x42184f
  421848:	c7 45 08 01 00 00 00 	mov    DWORD PTR [ebp+0x8],0x1
  42184f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  421852:	89 4b 18             	mov    DWORD PTR [ebx+0x18],ecx
  421855:	8b cf                	mov    ecx,edi
  421857:	e8 54 c9 06 00       	call   0x48e1b0
  42185c:	8b ce                	mov    ecx,esi
  42185e:	25 ff ff 00 00       	and    eax,0xffff
  421863:	50                   	push   eax
  421864:	e8 47 c9 06 00       	call   0x48e1b0
  421869:	8b 53 14             	mov    edx,DWORD PTR [ebx+0x14]
  42186c:	25 ff ff 00 00       	and    eax,0xffff
  421871:	50                   	push   eax
  421872:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  421875:	52                   	push   edx
  421876:	50                   	push   eax
  421877:	e8 a4 6d 01 00       	call   0x438620
  42187c:	83 c4 10             	add    esp,0x10
  42187f:	5f                   	pop    edi
  421880:	5e                   	pop    esi
  421881:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
  421884:	5b                   	pop    ebx
  421885:	8b e5                	mov    esp,ebp
  421887:	5d                   	pop    ebp
  421888:	c3                   	ret
  421889:	90                   	nop
  42188a:	90                   	nop
  42188b:	90                   	nop
  42188c:	90                   	nop
  42188d:	90                   	nop
  42188e:	90                   	nop
  42188f:	90                   	nop

; Helper interne diffusion spatiale | [0x421890, 0x4218f0[
; Position médiane et appel Broadcast::BCast.
  421890:	55                   	push   ebp
  421891:	8b ec                	mov    ebp,esp
  421893:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  421896:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  421899:	53                   	push   ebx
  42189a:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
  42189d:	56                   	push   esi
  42189e:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4218a1:	2b f0                	sub    esi,eax
  4218a3:	2b cb                	sub    ecx,ebx
  4218a5:	8b c1                	mov    eax,ecx
  4218a7:	99                   	cdq
  4218a8:	2b c2                	sub    eax,edx
  4218aa:	57                   	push   edi
  4218ab:	8b f8                	mov    edi,eax
  4218ad:	8b c6                	mov    eax,esi
  4218af:	99                   	cdq
  4218b0:	2b c2                	sub    eax,edx
  4218b2:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  4218b5:	d1 ff                	sar    edi,1
  4218b7:	d1 f8                	sar    eax,1
  4218b9:	03 df                	add    ebx,edi
  4218bb:	03 d0                	add    edx,eax
  4218bd:	3b ce                	cmp    ecx,esi
  4218bf:	7e 05                	jle    0x4218c6
  4218c1:	8d 47 14             	lea    eax,[edi+0x14]
  4218c4:	eb 03                	jmp    0x4218c9
  4218c6:	83 c0 14             	add    eax,0x14
  4218c9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4218cc:	6a 00                	push   0x0
  4218ce:	51                   	push   ecx
  4218cf:	50                   	push   eax
  4218d0:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  4218d3:	83 ec 0c             	sub    esp,0xc
  4218d6:	8b cc                	mov    ecx,esp
  4218d8:	89 19                	mov    DWORD PTR [ecx],ebx
  4218da:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4218dd:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4218e0:	e8 0b e2 fe ff       	call   0x40faf0
  4218e5:	83 c4 18             	add    esp,0x18
  4218e8:	5f                   	pop    edi
  4218e9:	5e                   	pop    esi
  4218ea:	5b                   	pop    ebx
  4218eb:	5d                   	pop    ebp
  4218ec:	c3                   	ret
  4218ed:	90                   	nop
  4218ee:	90                   	nop
  4218ef:	90                   	nop

; Helper interne paquet 0x5F | [0x4218f0, 0x4219c3[
; Sérialisation opcode 95, identifiant unité, deux WORD et un octet; BCcast.
  4218f0:	55                   	push   ebp
  4218f1:	8b ec                	mov    ebp,esp
  4218f3:	6a ff                	push   0xffffffff
  4218f5:	68 a8 43 4d 00       	push   0x4d43a8
  4218fa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  421900:	50                   	push   eax
  421901:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  421908:	83 ec 18             	sub    esp,0x18
  42190b:	53                   	push   ebx
  42190c:	56                   	push   esi
  42190d:	57                   	push   edi
  42190e:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421911:	e8 da 44 06 00       	call   0x485df0
  421916:	6a 5f                	push   0x5f
  421918:	8d 4d dc             	lea    ecx,[ebp-0x24]
  42191b:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  421922:	e8 29 48 06 00       	call   0x486150
  421927:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  42192a:	8b ce                	mov    ecx,esi
  42192c:	e8 cf 9d 06 00       	call   0x48b700
  421931:	50                   	push   eax
  421932:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421935:	e8 b6 48 06 00       	call   0x4861f0
  42193a:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  42193d:	57                   	push   edi
  42193e:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421941:	e8 0a 48 06 00       	call   0x486150
  421946:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  421949:	53                   	push   ebx
  42194a:	8d 4d dc             	lea    ecx,[ebp-0x24]
  42194d:	e8 fe 47 06 00       	call   0x486150
  421952:	8a 45 18             	mov    al,BYTE PTR [ebp+0x18]
  421955:	84 c0                	test   al,al
  421957:	74 04                	je     0x42195d
  421959:	6a 01                	push   0x1
  42195b:	eb 02                	jmp    0x42195f
  42195d:	6a 00                	push   0x0
  42195f:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421962:	e8 49 48 06 00       	call   0x4861b0
  421967:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  42196a:	8b 16                	mov    edx,DWORD PTR [esi]
  42196c:	83 ec 0c             	sub    esp,0xc
  42196f:	8b c4                	mov    eax,esp
  421971:	89 38                	mov    DWORD PTR [eax],edi
  421973:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  421976:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  421979:	8d 45 0c             	lea    eax,[ebp+0xc]
  42197c:	50                   	push   eax
  42197d:	8b ce                	mov    ecx,esi
  42197f:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421982:	8b 10                	mov    edx,DWORD PTR [eax]
  421984:	83 ec 0c             	sub    esp,0xc
  421987:	8b cc                	mov    ecx,esp
  421989:	89 11                	mov    DWORD PTR [ecx],edx
  42198b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  42198e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  421991:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  421994:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  421997:	8d 4d dc             	lea    ecx,[ebp-0x24]
  42199a:	51                   	push   ecx
  42199b:	e8 f0 fe ff ff       	call   0x421890
  4219a0:	83 c4 1c             	add    esp,0x1c
  4219a3:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4219a6:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4219ad:	e8 ce 44 06 00       	call   0x485e80
  4219b2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4219b5:	5f                   	pop    edi
  4219b6:	5e                   	pop    esi
  4219b7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4219be:	5b                   	pop    ebx
  4219bf:	8b e5                	mov    esp,ebp
  4219c1:	5d                   	pop    ebp
  4219c2:	c3                   	ret

; Helper interne résultat dégâts et paquet 0x60 | [0x4219d0, 0x421d80[
; Modificateurs de dégâts conditionnels, messages/journal et sérialisation opcode 96; limites des appels virtuels.
  4219d0:	55                   	push   ebp
  4219d1:	8b ec                	mov    ebp,esp
  4219d3:	6a ff                	push   0xffffffff
  4219d5:	68 d8 43 4d 00       	push   0x4d43d8
  4219da:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4219e0:	50                   	push   eax
  4219e1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4219e8:	81 ec 3c 08 00 00    	sub    esp,0x83c
  4219ee:	53                   	push   ebx
  4219ef:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  4219f2:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  4219f5:	8b 03                	mov    eax,DWORD PTR [ebx]
  4219f7:	56                   	push   esi
  4219f8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  4219fb:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  4219fe:	57                   	push   edi
  4219ff:	8b ce                	mov    ecx,esi
  421a01:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  421a04:	e8 67 9c 06 00       	call   0x48b670
  421a09:	3c 04                	cmp    al,0x4
  421a0b:	0f 84 44 03 00 00    	je     0x421d55
  421a11:	8b ce                	mov    ecx,esi
  421a13:	e8 58 9c 06 00       	call   0x48b670
  421a18:	3c 03                	cmp    al,0x3
  421a1a:	0f 84 35 03 00 00    	je     0x421d55
  421a20:	8b 16                	mov    edx,DWORD PTR [esi]
  421a22:	8b ce                	mov    ecx,esi
  421a24:	ff 92 84 01 00 00    	call   DWORD PTR [edx+0x184]
  421a2a:	85 c0                	test   eax,eax
  421a2c:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  421a2f:	74 22                	je     0x421a53
  421a31:	8b ce                	mov    ecx,esi
  421a33:	e8 38 9c 06 00       	call   0x48b670
  421a38:	3c 02                	cmp    al,0x2
  421a3a:	75 17                	jne    0x421a53
  421a3c:	8b 06                	mov    eax,DWORD PTR [esi]
  421a3e:	6a 01                	push   0x1
  421a40:	8b ce                	mov    ecx,esi
  421a42:	ff 90 80 00 00 00    	call   DWORD PTR [eax+0x80]
  421a48:	8b 16                	mov    edx,DWORD PTR [esi]
  421a4a:	57                   	push   edi
  421a4b:	8b ce                	mov    ecx,esi
  421a4d:	ff 92 ac 00 00 00    	call   DWORD PTR [edx+0xac]
  421a53:	8b 07                	mov    eax,DWORD PTR [edi]
  421a55:	6a 00                	push   0x0
  421a57:	68 53 4e 00 00       	push   0x4e53
  421a5c:	8b cf                	mov    ecx,edi
  421a5e:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  421a61:	85 c0                	test   eax,eax
  421a63:	74 38                	je     0x421a9d
  421a65:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421a68:	51                   	push   ecx
  421a69:	b9 34 5e 51 00       	mov    ecx,0x515e34
  421a6e:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
  421a75:	c7 45 e0 32 00 00 00 	mov    DWORD PTR [ebp-0x20],0x32
  421a7c:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  421a83:	e8 98 76 03 00       	call   0x459120
  421a88:	05 95 00 00 00       	add    eax,0x95
  421a8d:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  421a90:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  421a93:	dc 0b                	fmul   QWORD PTR [ebx]
  421a95:	dc 0d d0 e8 4d 00    	fmul   QWORD PTR ds:0x4de8d0
  421a9b:	dd 1b                	fstp   QWORD PTR [ebx]
  421a9d:	8b 17                	mov    edx,DWORD PTR [edi]
  421a9f:	8b cf                	mov    ecx,edi
  421aa1:	ff 92 d8 01 00 00    	call   DWORD PTR [edx+0x1d8]
  421aa7:	8b 06                	mov    eax,DWORD PTR [esi]
  421aa9:	6a 00                	push   0x0
  421aab:	68 31 4e 00 00       	push   0x4e31
  421ab0:	8b ce                	mov    ecx,esi
  421ab2:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  421ab5:	85 c0                	test   eax,eax
  421ab7:	74 16                	je     0x421acf
  421ab9:	dd 03                	fld    QWORD PTR [ebx]
  421abb:	68 31 4e 00 00       	push   0x4e31
  421ac0:	dc 0d c8 e8 4d 00    	fmul   QWORD PTR ds:0x4de8c8
  421ac6:	8b ce                	mov    ecx,esi
  421ac8:	dd 1b                	fstp   QWORD PTR [ebx]
  421aca:	8b 16                	mov    edx,DWORD PTR [esi]
  421acc:	ff 52 08             	call   DWORD PTR [edx+0x8]
  421acf:	8b 07                	mov    eax,DWORD PTR [edi]
  421ad1:	56                   	push   esi
  421ad2:	53                   	push   ebx
  421ad3:	8b cf                	mov    ecx,edi
  421ad5:	ff 50 40             	call   DWORD PTR [eax+0x40]
  421ad8:	8b 16                	mov    edx,DWORD PTR [esi]
  421ada:	57                   	push   edi
  421adb:	53                   	push   ebx
  421adc:	8b ce                	mov    ecx,esi
  421ade:	ff 52 38             	call   DWORD PTR [edx+0x38]
  421ae1:	dd 03                	fld    QWORD PTR [ebx]
  421ae3:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  421ae9:	df e0                	fnstsw ax
  421aeb:	f6 c4 01             	test   ah,0x1
  421aee:	74 0d                	je     0x421afd
  421af0:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
  421af6:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
  421afd:	8b cf                	mov    ecx,edi
  421aff:	e8 6c 9b 06 00       	call   0x48b670
  421b04:	3c 01                	cmp    al,0x1
  421b06:	0f 85 8a 00 00 00    	jne    0x421b96
  421b0c:	8b cf                	mov    ecx,edi
  421b0e:	e8 dd 8f ff ff       	call   0x41aaf0
  421b13:	85 c0                	test   eax,eax
  421b15:	74 7f                	je     0x421b96
  421b17:	8b c8                	mov    ecx,eax
  421b19:	e8 c2 2f 03 00       	call   0x454ae0
  421b1e:	25 00 00 00 80       	and    eax,0x80000000
  421b23:	33 c9                	xor    ecx,ecx
  421b25:	0b c1                	or     eax,ecx
  421b27:	74 6d                	je     0x421b96
  421b29:	8b 1e                	mov    ebx,DWORD PTR [esi]
  421b2b:	88 8d b8 f7 ff ff    	mov    BYTE PTR [ebp-0x848],cl
  421b31:	e8 2a bf 01 00       	call   0x43da60
  421b36:	8b ce                	mov    ecx,esi
  421b38:	50                   	push   eax
  421b39:	8d 45 0c             	lea    eax,[ebp+0xc]
  421b3c:	50                   	push   eax
  421b3d:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  421b40:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  421b43:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  421b46:	8b 13                	mov    edx,DWORD PTR [ebx]
  421b48:	51                   	push   ecx
  421b49:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  421b4c:	52                   	push   edx
  421b4d:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  421b50:	51                   	push   ecx
  421b51:	52                   	push   edx
  421b52:	8b c8                	mov    ecx,eax
  421b54:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  421b5b:	e8 10 02 00 00       	call   0x421d70
  421b60:	50                   	push   eax
  421b61:	8d 85 b8 f7 ff ff    	lea    eax,[ebp-0x848]
  421b67:	68 3c 26 50 00       	push   0x50263c
  421b6c:	50                   	push   eax
  421b6d:	e8 ce 1d fe ff       	call   0x403940
  421b72:	83 c4 18             	add    esp,0x18
  421b75:	8b cc                	mov    ecx,esp
  421b77:	89 65 08             	mov    DWORD PTR [ebp+0x8],esp
  421b7a:	50                   	push   eax
  421b7b:	e8 e4 fe 0a 00       	call   0x4d1a64
  421b80:	8b cf                	mov    ecx,edi
  421b82:	e8 09 13 00 00       	call   0x422e90
  421b87:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  421b8a:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  421b91:	e8 aa fe 0a 00       	call   0x4d1a40
  421b96:	8b ce                	mov    ecx,esi
  421b98:	e8 d3 9a 06 00       	call   0x48b670
  421b9d:	3c 01                	cmp    al,0x1
  421b9f:	0f 85 8a 00 00 00    	jne    0x421c2f
  421ba5:	8b ce                	mov    ecx,esi
  421ba7:	e8 44 8f ff ff       	call   0x41aaf0
  421bac:	85 c0                	test   eax,eax
  421bae:	74 7f                	je     0x421c2f
  421bb0:	8b c8                	mov    ecx,eax
  421bb2:	e8 29 2f 03 00       	call   0x454ae0
  421bb7:	25 00 00 00 80       	and    eax,0x80000000
  421bbc:	33 c9                	xor    ecx,ecx
  421bbe:	0b c1                	or     eax,ecx
  421bc0:	74 6d                	je     0x421c2f
  421bc2:	8b 1f                	mov    ebx,DWORD PTR [edi]
  421bc4:	88 8d b8 f7 ff ff    	mov    BYTE PTR [ebp-0x848],cl
  421bca:	e8 91 be 01 00       	call   0x43da60
  421bcf:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  421bd2:	50                   	push   eax
  421bd3:	51                   	push   ecx
  421bd4:	8b cf                	mov    ecx,edi
  421bd6:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  421bd9:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  421bdc:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  421bdf:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  421be1:	52                   	push   edx
  421be2:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  421be5:	51                   	push   ecx
  421be6:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  421be9:	52                   	push   edx
  421bea:	51                   	push   ecx
  421beb:	8b c8                	mov    ecx,eax
  421bed:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  421bf4:	e8 77 01 00 00       	call   0x421d70
  421bf9:	50                   	push   eax
  421bfa:	8d 95 b8 f7 ff ff    	lea    edx,[ebp-0x848]
  421c00:	68 00 26 50 00       	push   0x502600
  421c05:	52                   	push   edx
  421c06:	e8 35 1d fe ff       	call   0x403940
  421c0b:	83 c4 18             	add    esp,0x18
  421c0e:	8b cc                	mov    ecx,esp
  421c10:	89 65 10             	mov    DWORD PTR [ebp+0x10],esp
  421c13:	50                   	push   eax
  421c14:	e8 4b fe 0a 00       	call   0x4d1a64
  421c19:	8b ce                	mov    ecx,esi
  421c1b:	e8 70 12 00 00       	call   0x422e90
  421c20:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  421c23:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  421c2a:	e8 11 fe 0a 00       	call   0x4d1a40
  421c2f:	8b 06                	mov    eax,DWORD PTR [esi]
  421c31:	57                   	push   edi
  421c32:	53                   	push   ebx
  421c33:	8b ce                	mov    ecx,esi
  421c35:	ff 50 3c             	call   DWORD PTR [eax+0x3c]
  421c38:	8b 17                	mov    edx,DWORD PTR [edi]
  421c3a:	8b cf                	mov    ecx,edi
  421c3c:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  421c3f:	ff 92 30 01 00 00    	call   DWORD PTR [edx+0x130]
  421c45:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421c48:	e8 a3 41 06 00       	call   0x485df0
  421c4d:	6a 60                	push   0x60
  421c4f:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421c52:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  421c59:	e8 f2 44 06 00       	call   0x486150
  421c5e:	8b cf                	mov    ecx,edi
  421c60:	e8 9b 9a 06 00       	call   0x48b700
  421c65:	50                   	push   eax
  421c66:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421c69:	e8 82 45 06 00       	call   0x4861f0
  421c6e:	8b ce                	mov    ecx,esi
  421c70:	e8 8b 9a 06 00       	call   0x48b700
  421c75:	50                   	push   eax
  421c76:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421c79:	e8 72 45 06 00       	call   0x4861f0
  421c7e:	8b 06                	mov    eax,DWORD PTR [esi]
  421c80:	8b ce                	mov    ecx,esi
  421c82:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  421c88:	8b 16                	mov    edx,DWORD PTR [esi]
  421c8a:	8d 04 80             	lea    eax,[eax+eax*4]
  421c8d:	8d 1c 80             	lea    ebx,[eax+eax*4]
  421c90:	8b ce                	mov    ecx,esi
  421c92:	c1 e3 02             	shl    ebx,0x2
  421c95:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  421c9b:	8b c8                	mov    ecx,eax
  421c9d:	33 d2                	xor    edx,edx
  421c9f:	8b c3                	mov    eax,ebx
  421ca1:	f7 f1                	div    ecx
  421ca3:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421ca6:	50                   	push   eax
  421ca7:	e8 04 45 06 00       	call   0x4861b0
  421cac:	8b 16                	mov    edx,DWORD PTR [esi]
  421cae:	8d 45 dc             	lea    eax,[ebp-0x24]
  421cb1:	50                   	push   eax
  421cb2:	8b ce                	mov    ecx,esi
  421cb4:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421cb7:	8b 10                	mov    edx,DWORD PTR [eax]
  421cb9:	83 ec 0c             	sub    esp,0xc
  421cbc:	8b cc                	mov    ecx,esp
  421cbe:	89 11                	mov    DWORD PTR [ecx],edx
  421cc0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  421cc3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  421cc6:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  421cc9:	8b 17                	mov    edx,DWORD PTR [edi]
  421ccb:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  421cce:	8d 45 e8             	lea    eax,[ebp-0x18]
  421cd1:	50                   	push   eax
  421cd2:	8b cf                	mov    ecx,edi
  421cd4:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421cd7:	8b 10                	mov    edx,DWORD PTR [eax]
  421cd9:	83 ec 0c             	sub    esp,0xc
  421cdc:	8b cc                	mov    ecx,esp
  421cde:	89 11                	mov    DWORD PTR [ecx],edx
  421ce0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  421ce3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  421ce6:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  421ce9:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  421cec:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421cef:	51                   	push   ecx
  421cf0:	e8 9b fb ff ff       	call   0x421890
  421cf5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  421cf8:	83 cb ff             	or     ebx,0xffffffff
  421cfb:	83 c4 1c             	add    esp,0x1c
  421cfe:	3b c3                	cmp    eax,ebx
  421d00:	75 48                	jne    0x421d4a
  421d02:	8b 17                	mov    edx,DWORD PTR [edi]
  421d04:	8b cf                	mov    ecx,edi
  421d06:	ff 92 d0 01 00 00    	call   DWORD PTR [edx+0x1d0]
  421d0c:	50                   	push   eax
  421d0d:	8b ce                	mov    ecx,esi
  421d0f:	e8 ec 99 06 00       	call   0x48b700
  421d14:	50                   	push   eax
  421d15:	8b 06                	mov    eax,DWORD PTR [esi]
  421d17:	8b ce                	mov    ecx,esi
  421d19:	ff 90 b4 00 00 00    	call   DWORD PTR [eax+0xb4]
  421d1f:	8b 16                	mov    edx,DWORD PTR [esi]
  421d21:	8b ce                	mov    ecx,esi
  421d23:	50                   	push   eax
  421d24:	6a 19                	push   0x19
  421d26:	8d 45 b8             	lea    eax,[ebp-0x48]
  421d29:	50                   	push   eax
  421d2a:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421d2d:	8b 10                	mov    edx,DWORD PTR [eax]
  421d2f:	83 ec 0c             	sub    esp,0xc
  421d32:	8b cc                	mov    ecx,esp
  421d34:	89 11                	mov    DWORD PTR [ecx],edx
  421d36:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  421d39:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  421d3c:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  421d3f:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  421d42:	e8 19 de fe ff       	call   0x40fb60
  421d47:	83 c4 1c             	add    esp,0x1c
  421d4a:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421d4d:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  421d50:	e8 2b 41 06 00       	call   0x485e80
  421d55:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  421d58:	5f                   	pop    edi
  421d59:	5e                   	pop    esi
  421d5a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  421d61:	5b                   	pop    ebx
  421d62:	8b e5                	mov    esp,ebp
  421d64:	5d                   	pop    ebp
  421d65:	c3                   	ret
  421d66:	90                   	nop
  421d67:	90                   	nop
  421d68:	90                   	nop
  421d69:	90                   	nop
  421d6a:	90                   	nop
  421d6b:	90                   	nop
  421d6c:	90                   	nop
  421d6d:	90                   	nop
  421d6e:	90                   	nop
  421d6f:	90                   	nop
  421d70:	8b 01                	mov    eax,DWORD PTR [ecx]
  421d72:	c3                   	ret
  421d73:	90                   	nop
  421d74:	90                   	nop
  421d75:	90                   	nop
  421d76:	90                   	nop
  421d77:	90                   	nop
  421d78:	90                   	nop
  421d79:	90                   	nop
  421d7a:	90                   	nop
  421d7b:	90                   	nop
  421d7c:	90                   	nop
  421d7d:	90                   	nop
  421d7e:	90                   	nop
  421d7f:	90                   	nop

