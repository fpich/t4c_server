; PASSE46 — dommages naturels, précision et régénération
; Binaire serveur SHA-256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Séquences disassemblées de .text et vérifiées octet par octet.
; Attention : preuve statique, non une exécution instrumentée.

; GAME_RULES::GetBlowPrecision | [0x438620, 0x4386a0[
; Comparaison de tirages RRandom. Paramètres transmis par les appels à TFCMAIN::Attack.
  438620:	55                   	push   ebp
  438621:	8b ec                	mov    ebp,esp
  438623:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  438626:	85 c0                	test   eax,eax
  438628:	77 05                	ja     0x43862f
  43862a:	b8 01 00 00 00       	mov    eax,0x1
  43862f:	56                   	push   esi
  438630:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  438633:	85 f6                	test   esi,esi
  438635:	57                   	push   edi
  438636:	77 05                	ja     0x43863d
  438638:	be 01 00 00 00       	mov    esi,0x1
  43863d:	50                   	push   eax
  43863e:	6a 01                	push   0x1
  438640:	b9 34 5e 51 00       	mov    ecx,0x515e34
  438645:	e8 56 0a 02 00       	call   0x4590a0
  43864a:	56                   	push   esi
  43864b:	6a 01                	push   0x1
  43864d:	b9 34 5e 51 00       	mov    ecx,0x515e34
  438652:	8b f8                	mov    edi,eax
  438654:	e8 47 0a 02 00       	call   0x4590a0
  438659:	2b f8                	sub    edi,eax
  43865b:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  438660:	f7 65 14             	mul    DWORD PTR [ebp+0x14]
  438663:	d1 ea                	shr    edx,1
  438665:	52                   	push   edx
  438666:	6a 01                	push   0x1
  438668:	b9 34 5e 51 00       	mov    ecx,0x515e34
  43866d:	e8 2e 0a 02 00       	call   0x4590a0
  438672:	2b f8                	sub    edi,eax
  438674:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  438679:	f7 65 10             	mul    DWORD PTR [ebp+0x10]
  43867c:	d1 ea                	shr    edx,1
  43867e:	52                   	push   edx
  43867f:	6a 01                	push   0x1
  438681:	b9 34 5e 51 00       	mov    ecx,0x515e34
  438686:	e8 15 0a 02 00       	call   0x4590a0
  43868b:	03 c7                	add    eax,edi
  43868d:	5f                   	pop    edi
  43868e:	5e                   	pop    esi
  43868f:	5d                   	pop    ebp
  438690:	c3                   	ret
  438691:	90                   	nop
  438692:	90                   	nop
  438693:	90                   	nop
  438694:	90                   	nop
  438695:	90                   	nop
  438696:	90                   	nop
  438697:	90                   	nop
  438698:	90                   	nop
  438699:	90                   	nop
  43869a:	90                   	nop
  43869b:	90                   	nop
  43869c:	90                   	nop
  43869d:	90                   	nop
  43869e:	90                   	nop
  43869f:	90                   	nop

; GAME_RULES::GetNaturalDamage | [0x4386a0, 0x438770[
; Appels GetSTR/GetAGI effectifs; seuils 20 et différents cas selon unité.
  4386a0:	55                   	push   ebp
  4386a1:	8b ec                	mov    ebp,esp
  4386a3:	56                   	push   esi
  4386a4:	57                   	push   edi
  4386a5:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  4386a8:	8b cf                	mov    ecx,edi
  4386aa:	33 f6                	xor    esi,esi
  4386ac:	e8 bf 2f 05 00       	call   0x48b670
  4386b1:	3c 01                	cmp    al,0x1
  4386b3:	75 7b                	jne    0x438730
  4386b5:	8b cf                	mov    ecx,edi
  4386b7:	e8 64 8f fe ff       	call   0x421620
  4386bc:	84 c0                	test   al,al
  4386be:	74 70                	je     0x438730
  4386c0:	8b cf                	mov    ecx,edi
  4386c2:	e8 89 5a 05 00       	call   0x48e150
  4386c7:	66 3d 14 00          	cmp    ax,0x14
  4386cb:	72 28                	jb     0x4386f5
  4386cd:	8b cf                	mov    ecx,edi
  4386cf:	e8 7c 5a 05 00       	call   0x48e150
  4386d4:	33 c9                	xor    ecx,ecx
  4386d6:	66 8b c8             	mov    cx,ax
  4386d9:	b8 67 66 66 66       	mov    eax,0x66666667
  4386de:	81 e1 ff ff 00 00    	and    ecx,0xffff
  4386e4:	83 e9 14             	sub    ecx,0x14
  4386e7:	f7 e9                	imul   ecx
  4386e9:	c1 fa 03             	sar    edx,0x3
  4386ec:	8b c2                	mov    eax,edx
  4386ee:	c1 e8 1f             	shr    eax,0x1f
  4386f1:	03 d0                	add    edx,eax
  4386f3:	8b f2                	mov    esi,edx
  4386f5:	8b cf                	mov    ecx,edi
  4386f7:	e8 b4 5a 05 00       	call   0x48e1b0
  4386fc:	66 3d 14 00          	cmp    ax,0x14
  438700:	72 68                	jb     0x43876a
  438702:	8b cf                	mov    ecx,edi
  438704:	e8 a7 5a 05 00       	call   0x48e1b0
  438709:	33 c9                	xor    ecx,ecx
  43870b:	66 8b c8             	mov    cx,ax
  43870e:	b8 67 66 66 66       	mov    eax,0x66666667
  438713:	5f                   	pop    edi
  438714:	81 e1 ff ff 00 00    	and    ecx,0xffff
  43871a:	83 e9 14             	sub    ecx,0x14
  43871d:	f7 e9                	imul   ecx
  43871f:	c1 fa 02             	sar    edx,0x2
  438722:	8b ca                	mov    ecx,edx
  438724:	c1 e9 1f             	shr    ecx,0x1f
  438727:	03 d1                	add    edx,ecx
  438729:	03 f2                	add    esi,edx
  43872b:	8b c6                	mov    eax,esi
  43872d:	5e                   	pop    esi
  43872e:	5d                   	pop    ebp
  43872f:	c3                   	ret
  438730:	8b cf                	mov    ecx,edi
  438732:	e8 19 5a 05 00       	call   0x48e150
  438737:	66 3d 14 00          	cmp    ax,0x14
  43873b:	72 2d                	jb     0x43876a
  43873d:	8b cf                	mov    ecx,edi
  43873f:	e8 0c 5a 05 00       	call   0x48e150
  438744:	33 c9                	xor    ecx,ecx
  438746:	66 8b c8             	mov    cx,ax
  438749:	b8 67 66 66 66       	mov    eax,0x66666667
  43874e:	81 e1 ff ff 00 00    	and    ecx,0xffff
  438754:	83 e9 14             	sub    ecx,0x14
  438757:	f7 e9                	imul   ecx
  438759:	d1 fa                	sar    edx,1
  43875b:	8b c2                	mov    eax,edx
  43875d:	c1 e8 1f             	shr    eax,0x1f
  438760:	03 d0                	add    edx,eax
  438762:	33 c9                	xor    ecx,ecx
  438764:	3b ca                	cmp    ecx,edx
  438766:	1b f6                	sbb    esi,esi
  438768:	23 f2                	and    esi,edx
  43876a:	5f                   	pop    edi
  43876b:	8b c6                	mov    eax,esi
  43876d:	5e                   	pop    esi
  43876e:	5d                   	pop    ebp
  43876f:	c3                   	ret

; GAME_RULES::HPregen | [0x438770, 0x438830[
; GetHP/GetMaxHP virtuels; GetEND, RRandom et SetHP virtuel.
  438770:	55                   	push   ebp
  438771:	8b ec                	mov    ebp,esp
  438773:	53                   	push   ebx
  438774:	56                   	push   esi
  438775:	57                   	push   edi
  438776:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  438779:	8b 07                	mov    eax,DWORD PTR [edi]
  43877b:	8b cf                	mov    ecx,edi
  43877d:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  438783:	8b 17                	mov    edx,DWORD PTR [edi]
  438785:	8b cf                	mov    ecx,edi
  438787:	8b d8                	mov    ebx,eax
  438789:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  43878f:	8b c8                	mov    ecx,eax
  438791:	3b d9                	cmp    ebx,ecx
  438793:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
  438796:	73 6d                	jae    0x438805
  438798:	8b cf                	mov    ecx,edi
  43879a:	e8 f1 59 05 00       	call   0x48e190
  43879f:	33 c9                	xor    ecx,ecx
  4387a1:	66 8b c8             	mov    cx,ax
  4387a4:	b8 67 66 66 66       	mov    eax,0x66666667
  4387a9:	81 e1 ff ff 00 00    	and    ecx,0xffff
  4387af:	f7 e9                	imul   ecx
  4387b1:	c1 fa 04             	sar    edx,0x4
  4387b4:	8b c2                	mov    eax,edx
  4387b6:	c1 e8 1f             	shr    eax,0x1f
  4387b9:	03 d0                	add    edx,eax
  4387bb:	52                   	push   edx
  4387bc:	6a 00                	push   0x0
  4387be:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4387c3:	e8 d8 08 02 00       	call   0x4590a0
  4387c8:	6a 64                	push   0x64
  4387ca:	8b f0                	mov    esi,eax
  4387cc:	6a 01                	push   0x1
  4387ce:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4387d3:	46                   	inc    esi
  4387d4:	e8 c7 08 02 00       	call   0x4590a0
  4387d9:	83 f8 3c             	cmp    eax,0x3c
  4387dc:	7f 49                	jg     0x438827
  4387de:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4387e1:	33 c9                	xor    ecx,ecx
  4387e3:	85 f6                	test   esi,esi
  4387e5:	0f 9c c1             	setl   cl
  4387e8:	49                   	dec    ecx
  4387e9:	23 ce                	and    ecx,esi
  4387eb:	03 d9                	add    ebx,ecx
  4387ed:	3b d8                	cmp    ebx,eax
  4387ef:	76 02                	jbe    0x4387f3
  4387f1:	8b d8                	mov    ebx,eax
  4387f3:	8b 17                	mov    edx,DWORD PTR [edi]
  4387f5:	6a 01                	push   0x1
  4387f7:	53                   	push   ebx
  4387f8:	8b cf                	mov    ecx,edi
  4387fa:	ff 92 dc 00 00 00    	call   DWORD PTR [edx+0xdc]
  438800:	5f                   	pop    edi
  438801:	5e                   	pop    esi
  438802:	5b                   	pop    ebx
  438803:	5d                   	pop    ebp
  438804:	c3                   	ret
  438805:	8d 14 89             	lea    edx,[ecx+ecx*4]
  438808:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  43880d:	f7 e2                	mul    edx
  43880f:	c1 ea 05             	shr    edx,0x5
  438812:	2b da                	sub    ebx,edx
  438814:	3b d9                	cmp    ebx,ecx
  438816:	73 02                	jae    0x43881a
  438818:	8b d9                	mov    ebx,ecx
  43881a:	8b 07                	mov    eax,DWORD PTR [edi]
  43881c:	6a 01                	push   0x1
  43881e:	53                   	push   ebx
  43881f:	8b cf                	mov    ecx,edi
  438821:	ff 90 dc 00 00 00    	call   DWORD PTR [eax+0xdc]
  438827:	5f                   	pop    edi
  438828:	5e                   	pop    esi
  438829:	5b                   	pop    ebx
  43882a:	5d                   	pop    ebp
  43882b:	c3                   	ret
  43882c:	90                   	nop
  43882d:	90                   	nop
  43882e:	90                   	nop
  43882f:	90                   	nop

; GAME_RULES::ManaRegen | [0x438830, 0x438990[
; GetMana/GetMaxMana virtuels, GetWIS/GetINT, RRandom et SetMana virtuel.
  438830:	55                   	push   ebp
  438831:	8b ec                	mov    ebp,esp
  438833:	51                   	push   ecx
  438834:	53                   	push   ebx
  438835:	56                   	push   esi
  438836:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  438839:	8b 06                	mov    eax,DWORD PTR [esi]
  43883b:	57                   	push   edi
  43883c:	8b ce                	mov    ecx,esi
  43883e:	ff 90 ec 00 00 00    	call   DWORD PTR [eax+0xec]
  438844:	8b 16                	mov    edx,DWORD PTR [esi]
  438846:	33 ff                	xor    edi,edi
  438848:	66 8b f8             	mov    di,ax
  43884b:	8b ce                	mov    ecx,esi
  43884d:	81 e7 ff ff 00 00    	and    edi,0xffff
  438853:	ff 92 e0 00 00 00    	call   DWORD PTR [edx+0xe0]
  438859:	33 c9                	xor    ecx,ecx
  43885b:	66 8b c8             	mov    cx,ax
  43885e:	81 e1 ff ff 00 00    	and    ecx,0xffff
  438864:	3b f9                	cmp    edi,ecx
  438866:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  438869:	0f 8d e4 00 00 00    	jge    0x438953
  43886f:	8b ce                	mov    ecx,esi
  438871:	e8 5a 59 05 00       	call   0x48e1d0
  438876:	33 c9                	xor    ecx,ecx
  438878:	66 8b c8             	mov    cx,ax
  43887b:	b8 67 66 66 66       	mov    eax,0x66666667
  438880:	81 e1 ff ff 00 00    	and    ecx,0xffff
  438886:	f7 e9                	imul   ecx
  438888:	c1 fa 06             	sar    edx,0x6
  43888b:	8b c2                	mov    eax,edx
  43888d:	c1 e8 1f             	shr    eax,0x1f
  438890:	03 d0                	add    edx,eax
  438892:	52                   	push   edx
  438893:	6a 00                	push   0x0
  438895:	b9 34 5e 51 00       	mov    ecx,0x515e34
  43889a:	e8 01 08 02 00       	call   0x4590a0
  43889f:	8b ce                	mov    ecx,esi
  4388a1:	8b d8                	mov    ebx,eax
  4388a3:	e8 c8 58 05 00       	call   0x48e170
  4388a8:	33 c9                	xor    ecx,ecx
  4388aa:	66 8b c8             	mov    cx,ax
  4388ad:	b8 67 66 66 66       	mov    eax,0x66666667
  4388b2:	81 e1 ff ff 00 00    	and    ecx,0xffff
  4388b8:	f7 e9                	imul   ecx
  4388ba:	c1 fa 06             	sar    edx,0x6
  4388bd:	8b ca                	mov    ecx,edx
  4388bf:	c1 e9 1f             	shr    ecx,0x1f
  4388c2:	03 d1                	add    edx,ecx
  4388c4:	52                   	push   edx
  4388c5:	6a 00                	push   0x0
  4388c7:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4388cc:	e8 cf 07 02 00       	call   0x4590a0
  4388d1:	8b ce                	mov    ecx,esi
  4388d3:	03 d8                	add    ebx,eax
  4388d5:	e8 f6 58 05 00       	call   0x48e1d0
  4388da:	33 c9                	xor    ecx,ecx
  4388dc:	66 8b c8             	mov    cx,ax
  4388df:	b8 67 66 66 66       	mov    eax,0x66666667
  4388e4:	81 e1 ff ff 00 00    	and    ecx,0xffff
  4388ea:	f7 e9                	imul   ecx
  4388ec:	8b c3                	mov    eax,ebx
  4388ee:	c1 fa 06             	sar    edx,0x6
  4388f1:	8b da                	mov    ebx,edx
  4388f3:	03 d0                	add    edx,eax
  4388f5:	c1 eb 1f             	shr    ebx,0x1f
  4388f8:	8b ce                	mov    ecx,esi
  4388fa:	03 da                	add    ebx,edx
  4388fc:	e8 6f 58 05 00       	call   0x48e170
  438901:	33 c9                	xor    ecx,ecx
  438903:	66 8b c8             	mov    cx,ax
  438906:	b8 67 66 66 66       	mov    eax,0x66666667
  43890b:	6a 64                	push   0x64
  43890d:	6a 01                	push   0x1
  43890f:	81 e1 ff ff 00 00    	and    ecx,0xffff
  438915:	f7 e9                	imul   ecx
  438917:	c1 fa 06             	sar    edx,0x6
  43891a:	8b ca                	mov    ecx,edx
  43891c:	c1 e9 1f             	shr    ecx,0x1f
  43891f:	03 d3                	add    edx,ebx
  438921:	8d 5c 11 01          	lea    ebx,[ecx+edx*1+0x1]
  438925:	b9 34 5e 51 00       	mov    ecx,0x515e34
  43892a:	e8 71 07 02 00       	call   0x4590a0
  43892f:	83 f8 3c             	cmp    eax,0x3c
  438932:	7f 4b                	jg     0x43897f
  438934:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  438937:	03 fb                	add    edi,ebx
  438939:	3b f8                	cmp    edi,eax
  43893b:	7e 35                	jle    0x438972
  43893d:	8b 16                	mov    edx,DWORD PTR [esi]
  43893f:	8b f8                	mov    edi,eax
  438941:	6a 01                	push   0x1
  438943:	57                   	push   edi
  438944:	8b ce                	mov    ecx,esi
  438946:	ff 92 f0 00 00 00    	call   DWORD PTR [edx+0xf0]
  43894c:	5f                   	pop    edi
  43894d:	5e                   	pop    esi
  43894e:	5b                   	pop    ebx
  43894f:	8b e5                	mov    esp,ebp
  438951:	5d                   	pop    ebp
  438952:	c3                   	ret
  438953:	8b d1                	mov    edx,ecx
  438955:	f7 da                	neg    edx
  438957:	d1 e2                	shl    edx,1
  438959:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  43895e:	f7 ea                	imul   edx
  438960:	c1 fa 05             	sar    edx,0x5
  438963:	8b c2                	mov    eax,edx
  438965:	c1 e8 1f             	shr    eax,0x1f
  438968:	03 d0                	add    edx,eax
  43896a:	03 fa                	add    edi,edx
  43896c:	3b f9                	cmp    edi,ecx
  43896e:	7d 02                	jge    0x438972
  438970:	8b f9                	mov    edi,ecx
  438972:	8b 16                	mov    edx,DWORD PTR [esi]
  438974:	6a 01                	push   0x1
  438976:	57                   	push   edi
  438977:	8b ce                	mov    ecx,esi
  438979:	ff 92 f0 00 00 00    	call   DWORD PTR [edx+0xf0]
  43897f:	5f                   	pop    edi
  438980:	5e                   	pop    esi
  438981:	5b                   	pop    ebx
  438982:	8b e5                	mov    esp,ebp
  438984:	5d                   	pop    ebp
  438985:	c3                   	ret
  438986:	90                   	nop
  438987:	90                   	nop
  438988:	90                   	nop
  438989:	90                   	nop
  43898a:	90                   	nop
  43898b:	90                   	nop
  43898c:	90                   	nop
  43898d:	90                   	nop
  43898e:	90                   	nop
  43898f:	90                   	nop

; GAME_RULES::FaithRegen | [0x438990, 0x438a20[
; GetFaith/GetMaxFaith et SetFaith virtuels; ne présume pas appel depuis Character::Regenerate.
  438990:	55                   	push   ebp
  438991:	8b ec                	mov    ebp,esp
  438993:	53                   	push   ebx
  438994:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  438997:	8b 03                	mov    eax,DWORD PTR [ebx]
  438999:	56                   	push   esi
  43899a:	57                   	push   edi
  43899b:	8b cb                	mov    ecx,ebx
  43899d:	ff 90 f4 00 00 00    	call   DWORD PTR [eax+0xf4]
  4389a3:	8b 13                	mov    edx,DWORD PTR [ebx]
  4389a5:	8b cb                	mov    ecx,ebx
  4389a7:	8b f0                	mov    esi,eax
  4389a9:	ff 92 fc 00 00 00    	call   DWORD PTR [edx+0xfc]
  4389af:	8b f8                	mov    edi,eax
  4389b1:	66 3b f7             	cmp    si,di
  4389b4:	73 32                	jae    0x4389e8
  4389b6:	25 ff ff 00 00       	and    eax,0xffff
  4389bb:	8d 0c 80             	lea    ecx,[eax+eax*4]
  4389be:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4389c3:	f7 e9                	imul   ecx
  4389c5:	c1 fa 05             	sar    edx,0x5
  4389c8:	8b c2                	mov    eax,edx
  4389ca:	c1 e8 1f             	shr    eax,0x1f
  4389cd:	03 d0                	add    edx,eax
  4389cf:	03 f2                	add    esi,edx
  4389d1:	66 3b f7             	cmp    si,di
  4389d4:	76 3a                	jbe    0x438a10
  4389d6:	8b 13                	mov    edx,DWORD PTR [ebx]
  4389d8:	8b f7                	mov    esi,edi
  4389da:	56                   	push   esi
  4389db:	8b cb                	mov    ecx,ebx
  4389dd:	ff 92 f8 00 00 00    	call   DWORD PTR [edx+0xf8]
  4389e3:	5f                   	pop    edi
  4389e4:	5e                   	pop    esi
  4389e5:	5b                   	pop    ebx
  4389e6:	5d                   	pop    ebp
  4389e7:	c3                   	ret
  4389e8:	25 ff ff 00 00       	and    eax,0xffff
  4389ed:	8b c8                	mov    ecx,eax
  4389ef:	f7 d9                	neg    ecx
  4389f1:	c1 e1 02             	shl    ecx,0x2
  4389f4:	2b c8                	sub    ecx,eax
  4389f6:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4389fb:	f7 e9                	imul   ecx
  4389fd:	c1 fa 05             	sar    edx,0x5
  438a00:	8b ca                	mov    ecx,edx
  438a02:	c1 e9 1f             	shr    ecx,0x1f
  438a05:	03 d1                	add    edx,ecx
  438a07:	03 f2                	add    esi,edx
  438a09:	66 3b f7             	cmp    si,di
  438a0c:	73 02                	jae    0x438a10
  438a0e:	8b f7                	mov    esi,edi
  438a10:	8b 13                	mov    edx,DWORD PTR [ebx]
  438a12:	56                   	push   esi
  438a13:	8b cb                	mov    ecx,ebx
  438a15:	ff 92 f8 00 00 00    	call   DWORD PTR [edx+0xf8]
  438a1b:	5f                   	pop    edi
  438a1c:	5e                   	pop    esi
  438a1d:	5b                   	pop    ebx
  438a1e:	5d                   	pop    ebp
  438a1f:	c3                   	ret

