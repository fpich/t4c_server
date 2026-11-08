; Passe 39 — T4C Server(1).exe; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque ligne d instruction est verifiee octet par octet contre .text.
; Les plages sont selectives et liees aux conclusions documentees; stop exclusif.

; Boucle de preparation, allocation de 0x418 octets et initialisation
; Plage 0x00473610..0x004736F6 (stop exclusif)
  473610:	55                   	push   ebp
  473611:	8b ec                	mov    ebp,esp
  473613:	6a ff                	push   0xffffffff
  473615:	68 17 8e 4d 00       	push   0x4d8e17
  47361a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  473620:	50                   	push   eax
  473621:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  473628:	83 ec 18             	sub    esp,0x18
  47362b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  47362e:	8b 01                	mov    eax,DWORD PTR [ecx]
  473630:	53                   	push   ebx
  473631:	56                   	push   esi
  473632:	57                   	push   edi
  473633:	ff 50 20             	call   DWORD PTR [eax+0x20]
  473636:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  473639:	3b 78 08             	cmp    edi,DWORD PTR [eax+0x8]
  47363c:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  47363f:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  473642:	0f 84 be 08 00 00    	je     0x473f06
  473648:	eb 03                	jmp    0x47364d
  47364a:	8b 7d f0             	mov    edi,DWORD PTR [ebp-0x10]
  47364d:	33 db                	xor    ebx,ebx
  47364f:	68 18 04 00 00       	push   0x418
  473654:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
  473657:	e8 94 e9 fc ff       	call   0x441ff0
  47365c:	8b f0                	mov    esi,eax
  47365e:	83 c4 04             	add    esp,0x4
  473661:	89 75 e0             	mov    DWORD PTR [ebp-0x20],esi
  473664:	3b f3                	cmp    esi,ebx
  473666:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  473669:	0f 84 87 00 00 00    	je     0x4736f6
  47366f:	8d 4e 08             	lea    ecx,[esi+0x8]
  473672:	e8 49 60 f9 ff       	call   0x4096c0
  473677:	8d 4e 78             	lea    ecx,[esi+0x78]
  47367a:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  47367e:	e8 3d 60 f9 ff       	call   0x4096c0
  473683:	8d 8e e8 00 00 00    	lea    ecx,[esi+0xe8]
  473689:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  47368d:	e8 8e 08 00 00       	call   0x473f20
  473692:	8d 8e 48 02 00 00    	lea    ecx,[esi+0x248]
  473698:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  47369c:	e8 1f 60 f9 ff       	call   0x4096c0
  4736a1:	8d 8e b8 02 00 00    	lea    ecx,[esi+0x2b8]
  4736a7:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  4736ab:	e8 10 60 f9 ff       	call   0x4096c0
  4736b0:	8d 8e 68 03 00 00    	lea    ecx,[esi+0x368]
  4736b6:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  4736ba:	e8 01 0d fb ff       	call   0x4243c0
  4736bf:	8d 8e b0 03 00 00    	lea    ecx,[esi+0x3b0]
  4736c5:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  4736c9:	e8 c2 41 00 00       	call   0x477890
  4736ce:	8d 8e f8 03 00 00    	lea    ecx,[esi+0x3f8]
  4736d4:	c6 45 fc 07          	mov    BYTE PTR [ebp-0x4],0x7
  4736d8:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  4736de:	8d 8e 08 04 00 00    	lea    ecx,[esi+0x408]
  4736e4:	c6 45 fc 08          	mov    BYTE PTR [ebp-0x4],0x8
  4736e8:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  4736ee:	88 9e 2c 03 00 00    	mov    BYTE PTR [esi+0x32c],bl
  4736f4:	8b de                	mov    ebx,esi

; Correspondance des champs de la source et des chaines vers definition
; Plage 0x004736F6..0x00473820 (stop exclusif)
  4736f6:	8b 57 2c             	mov    edx,DWORD PTR [edi+0x2c]
  4736f9:	85 d2                	test   edx,edx
  4736fb:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  473702:	75 06                	jne    0x47370a
  473704:	8b 15 d8 e4 4d 00    	mov    edx,DWORD PTR ds:0x4de4d8
  47370a:	83 c9 ff             	or     ecx,0xffffffff
  47370d:	33 c0                	xor    eax,eax
  47370f:	8b fa                	mov    edi,edx
  473711:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  473713:	f7 d1                	not    ecx
  473715:	49                   	dec    ecx
  473716:	51                   	push   ecx
  473717:	8d b3 f8 03 00 00    	lea    esi,[ebx+0x3f8]
  47371d:	52                   	push   edx
  47371e:	8b ce                	mov    ecx,esi
  473720:	ff 15 f4 e4 4d 00    	call   DWORD PTR ds:0x4de4f4
  473726:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
  473729:	66 8b 4e 24          	mov    cx,WORD PTR [esi+0x24]
  47372d:	66 89 0b             	mov    WORD PTR [ebx],cx
  473730:	8d 8e 8c 00 00 00    	lea    ecx,[esi+0x8c]
  473736:	ff 15 24 e5 4d 00    	call   DWORD PTR ds:0x4de524
  47373c:	51                   	push   ecx
  47373d:	8b cc                	mov    ecx,esp
  47373f:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  473742:	50                   	push   eax
  473743:	e8 1c e3 05 00       	call   0x4d1a64
  473748:	8d 4b 08             	lea    ecx,[ebx+0x8]
  47374b:	e8 b0 61 f9 ff       	call   0x409900
  473750:	85 c0                	test   eax,eax
  473752:	75 07                	jne    0x47375b
  473754:	c7 45 08 01 00 00 00 	mov    DWORD PTR [ebp+0x8],0x1
  47375b:	8d 4e 68             	lea    ecx,[esi+0x68]
  47375e:	bf 01 00 00 00       	mov    edi,0x1
  473763:	ff 15 24 e5 4d 00    	call   DWORD PTR ds:0x4de524
  473769:	51                   	push   ecx
  47376a:	8b cc                	mov    ecx,esp
  47376c:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  47376f:	50                   	push   eax
  473770:	e8 ef e2 05 00       	call   0x4d1a64
  473775:	8d 4b 78             	lea    ecx,[ebx+0x78]
  473778:	e8 83 61 f9 ff       	call   0x409900
  47377d:	85 c0                	test   eax,eax
  47377f:	75 03                	jne    0x473784
  473781:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  473784:	8d 4e 78             	lea    ecx,[esi+0x78]
  473787:	ff 15 24 e5 4d 00    	call   DWORD PTR ds:0x4de524
  47378d:	51                   	push   ecx
  47378e:	8b cc                	mov    ecx,esp
  473790:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  473793:	50                   	push   eax
  473794:	e8 cb e2 05 00       	call   0x4d1a64
  473799:	8d 8b b8 02 00 00    	lea    ecx,[ebx+0x2b8]
  47379f:	e8 5c 61 f9 ff       	call   0x409900
  4737a4:	85 c0                	test   eax,eax
  4737a6:	75 03                	jne    0x4737ab
  4737a8:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  4737ab:	8d 4e 58             	lea    ecx,[esi+0x58]
  4737ae:	ff 15 24 e5 4d 00    	call   DWORD PTR ds:0x4de524
  4737b4:	51                   	push   ecx
  4737b5:	8b cc                	mov    ecx,esp
  4737b7:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  4737ba:	50                   	push   eax
  4737bb:	e8 a4 e2 05 00       	call   0x4d1a64
  4737c0:	8d 8b e8 00 00 00    	lea    ecx,[ebx+0xe8]
  4737c6:	e8 35 61 f9 ff       	call   0x409900
  4737cb:	85 c0                	test   eax,eax
  4737cd:	75 03                	jne    0x4737d2
  4737cf:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  4737d2:	8d 4e 48             	lea    ecx,[esi+0x48]
  4737d5:	ff 15 24 e5 4d 00    	call   DWORD PTR ds:0x4de524
  4737db:	51                   	push   ecx
  4737dc:	8b cc                	mov    ecx,esp
  4737de:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  4737e1:	50                   	push   eax
  4737e2:	e8 7d e2 05 00       	call   0x4d1a64
  4737e7:	8d 8b 58 01 00 00    	lea    ecx,[ebx+0x158]
  4737ed:	e8 0e 61 f9 ff       	call   0x409900
  4737f2:	85 c0                	test   eax,eax
  4737f4:	75 03                	jne    0x4737f9
  4737f6:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  4737f9:	8d 4e 38             	lea    ecx,[esi+0x38]
  4737fc:	ff 15 24 e5 4d 00    	call   DWORD PTR ds:0x4de524
  473802:	51                   	push   ecx
  473803:	8b cc                	mov    ecx,esp
  473805:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  473808:	50                   	push   eax
  473809:	e8 56 e2 05 00       	call   0x4d1a64
  47380e:	8d 8b c8 01 00 00    	lea    ecx,[ebx+0x1c8]
  473814:	e8 e7 60 f9 ff       	call   0x409900
  473819:	85 c0                	test   eax,eax
  47381b:	75 03                	jne    0x473820
  47381d:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi

; Transferts de scalaires et derive d identifiant compteur a +0x3AC
; Plage 0x00473820..0x004738E8 (stop exclusif)
  473820:	8a 96 be 00 00 00    	mov    dl,BYTE PTR [esi+0xbe]
  473826:	88 93 40 02 00 00    	mov    BYTE PTR [ebx+0x240],dl
  47382c:	8a 86 88 00 00 00    	mov    al,BYTE PTR [esi+0x88]
  473832:	88 83 38 02 00 00    	mov    BYTE PTR [ebx+0x238],al
  473838:	8a 8e ac 00 00 00    	mov    cl,BYTE PTR [esi+0xac]
  47383e:	88 8b 39 02 00 00    	mov    BYTE PTR [ebx+0x239],cl
  473844:	8a 96 a8 00 00 00    	mov    dl,BYTE PTR [esi+0xa8]
  47384a:	88 93 3a 02 00 00    	mov    BYTE PTR [ebx+0x23a],dl
  473850:	8a 86 9c 00 00 00    	mov    al,BYTE PTR [esi+0x9c]
  473856:	88 83 3b 02 00 00    	mov    BYTE PTR [ebx+0x23b],al
  47385c:	66 8b 8e a0 00 00 00 	mov    cx,WORD PTR [esi+0xa0]
  473863:	66 89 8b 3c 02 00 00 	mov    WORD PTR [ebx+0x23c],cx
  47386a:	66 8b 96 a4 00 00 00 	mov    dx,WORD PTR [esi+0xa4]
  473871:	66 89 93 3e 02 00 00 	mov    WORD PTR [ebx+0x23e],dx
  473878:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  47387b:	8d 04 80             	lea    eax,[eax+eax*4]
  47387e:	8d 04 80             	lea    eax,[eax+eax*4]
  473881:	8d 04 80             	lea    eax,[eax+eax*4]
  473884:	c1 e0 03             	shl    eax,0x3
  473887:	89 83 ac 03 00 00    	mov    DWORD PTR [ebx+0x3ac],eax
  47388d:	8b 8e b0 00 00 00    	mov    ecx,DWORD PTR [esi+0xb0]
  473893:	89 8b 4c 03 00 00    	mov    DWORD PTR [ebx+0x34c],ecx
  473899:	8b 96 b4 00 00 00    	mov    edx,DWORD PTR [esi+0xb4]
  47389f:	89 93 48 03 00 00    	mov    DWORD PTR [ebx+0x348],edx
  4738a5:	8b 86 b8 00 00 00    	mov    eax,DWORD PTR [esi+0xb8]
  4738ab:	89 83 38 03 00 00    	mov    DWORD PTR [ebx+0x338],eax
  4738b1:	33 c9                	xor    ecx,ecx
  4738b3:	8a 8e bc 00 00 00    	mov    cl,BYTE PTR [esi+0xbc]
  4738b9:	89 8b 28 03 00 00    	mov    DWORD PTR [ebx+0x328],ecx
  4738bf:	8a 96 bd 00 00 00    	mov    dl,BYTE PTR [esi+0xbd]
  4738c5:	88 93 2c 03 00 00    	mov    BYTE PTR [ebx+0x32c],dl
  4738cb:	a1 ec e4 4d 00       	mov    eax,ds:0x4de4ec
  4738d0:	8b 10                	mov    edx,DWORD PTR [eax]
  4738d2:	52                   	push   edx
  4738d3:	6a 00                	push   0x0
  4738d5:	8d 86 d4 00 00 00    	lea    eax,[esi+0xd4]
  4738db:	8d 8b 08 04 00 00    	lea    ecx,[ebx+0x408]
  4738e1:	50                   	push   eax
  4738e2:	ff 15 fc e4 4d 00    	call   DWORD PTR ds:0x4de4fc

; Transfert de parametres complementaires et prise en charge champ
; Plage 0x004738E8..0x00473960 (stop exclusif)
  4738e8:	8b 8e c0 00 00 00    	mov    ecx,DWORD PTR [esi+0xc0]
  4738ee:	89 8b 44 02 00 00    	mov    DWORD PTR [ebx+0x244],ecx
  4738f4:	8d 8e c4 00 00 00    	lea    ecx,[esi+0xc4]
  4738fa:	ff 15 24 e5 4d 00    	call   DWORD PTR ds:0x4de524
  473900:	51                   	push   ecx
  473901:	8b cc                	mov    ecx,esp
  473903:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  473906:	50                   	push   eax
  473907:	e8 58 e1 05 00       	call   0x4d1a64
  47390c:	8d bb 48 02 00 00    	lea    edi,[ebx+0x248]
  473912:	8b cf                	mov    ecx,edi
  473914:	e8 e7 5f f9 ff       	call   0x409900
  473919:	85 c0                	test   eax,eax
  47391b:	75 36                	jne    0x473953
  47391d:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  473920:	85 c0                	test   eax,eax
  473922:	75 05                	jne    0x473929
  473924:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
  473929:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  47392c:	52                   	push   edx
  47392d:	50                   	push   eax
  47392e:	68 0c a0 50 00       	push   0x50a00c
  473933:	6a 08                	push   0x8
  473935:	e8 06 e4 ff ff       	call   0x471d40
  47393a:	83 c4 0c             	add    esp,0xc
  47393d:	8b cc                	mov    ecx,esp
  47393f:	89 65 e0             	mov    DWORD PTR [ebp-0x20],esp
  473942:	68 08 a0 50 00       	push   0x50a008
  473947:	e8 18 e1 05 00       	call   0x4d1a64
  47394c:	8b cf                	mov    ecx,edi
  47394e:	e8 ad 5f f9 ff       	call   0x409900
  473953:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  473956:	3b 46 18             	cmp    eax,DWORD PTR [esi+0x18]
  473959:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  47395c:	74 39                	je     0x473997
  47395e:	6a 08                	push   0x8

