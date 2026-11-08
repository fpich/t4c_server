; T4C Server — PASSE16, statique PE32 x86; aucune exécution des exe
; SHA256 serveur : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; SHA256 client  : 569ee802798a8ae526a4dbdba54671f4561c4efbf8927d6b2c8609b76ef3fa68

; ===== SERVER Character::PacketPuppetInfo (0x41FB70) =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0041fb70 <.text+0x1eb70>:
  41fb70:	55                   	push   ebp
  41fb71:	8b ec                	mov    ebp,esp
  41fb73:	56                   	push   esi
  41fb74:	57                   	push   edi
  41fb75:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  41fb78:	8b f1                	mov    esi,ecx
  41fb7a:	6a 44                	push   0x44
  41fb7c:	8b cf                	mov    ecx,edi
  41fb7e:	e8 cd 65 06 00       	call   0x486150
  41fb83:	8b ce                	mov    ecx,esi
  41fb85:	e8 76 bb 06 00       	call   0x48b700
  41fb8a:	50                   	push   eax
  41fb8b:	8b cf                	mov    ecx,edi
  41fb8d:	e8 5e 66 06 00       	call   0x4861f0
  41fb92:	8b 8e a0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a0]
  41fb98:	85 c9                	test   ecx,ecx
  41fb9a:	74 07                	je     0x41fba3
  41fb9c:	8b 01                	mov    eax,DWORD PTR [ecx]
  41fb9e:	ff 50 2c             	call   DWORD PTR [eax+0x2c]
  41fba1:	eb 02                	jmp    0x41fba5
  41fba3:	33 c0                	xor    eax,eax
  41fba5:	50                   	push   eax
  41fba6:	8b cf                	mov    ecx,edi
  41fba8:	e8 a3 65 06 00       	call   0x486150
  41fbad:	8b 8e a4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a4]
  41fbb3:	85 c9                	test   ecx,ecx
  41fbb5:	74 07                	je     0x41fbbe
  41fbb7:	8b 11                	mov    edx,DWORD PTR [ecx]
  41fbb9:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  41fbbc:	eb 02                	jmp    0x41fbc0
  41fbbe:	33 c0                	xor    eax,eax
  41fbc0:	50                   	push   eax
  41fbc1:	8b cf                	mov    ecx,edi
  41fbc3:	e8 88 65 06 00       	call   0x486150
  41fbc8:	8b 8e a8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a8]
  41fbce:	85 c9                	test   ecx,ecx
  41fbd0:	74 07                	je     0x41fbd9
  41fbd2:	8b 01                	mov    eax,DWORD PTR [ecx]
  41fbd4:	ff 50 2c             	call   DWORD PTR [eax+0x2c]
  41fbd7:	eb 02                	jmp    0x41fbdb
  41fbd9:	33 c0                	xor    eax,eax
  41fbdb:	50                   	push   eax
  41fbdc:	8b cf                	mov    ecx,edi
  41fbde:	e8 6d 65 06 00       	call   0x486150
  41fbe3:	8b 8e ac 01 00 00    	mov    ecx,DWORD PTR [esi+0x1ac]
  41fbe9:	85 c9                	test   ecx,ecx
  41fbeb:	74 07                	je     0x41fbf4
  41fbed:	8b 11                	mov    edx,DWORD PTR [ecx]
  41fbef:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  41fbf2:	eb 02                	jmp    0x41fbf6
  41fbf4:	33 c0                	xor    eax,eax
  41fbf6:	50                   	push   eax
  41fbf7:	8b cf                	mov    ecx,edi
  41fbf9:	e8 52 65 06 00       	call   0x486150
  41fbfe:	8b 8e b0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b0]
  41fc04:	85 c9                	test   ecx,ecx
  41fc06:	74 07                	je     0x41fc0f
  41fc08:	8b 01                	mov    eax,DWORD PTR [ecx]
  41fc0a:	ff 50 2c             	call   DWORD PTR [eax+0x2c]
  41fc0d:	eb 02                	jmp    0x41fc11
  41fc0f:	33 c0                	xor    eax,eax
  41fc11:	50                   	push   eax
  41fc12:	8b cf                	mov    ecx,edi
  41fc14:	e8 37 65 06 00       	call   0x486150
  41fc19:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  41fc1f:	85 c9                	test   ecx,ecx
  41fc21:	74 07                	je     0x41fc2a
  41fc23:	8b 11                	mov    edx,DWORD PTR [ecx]
  41fc25:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  41fc28:	eb 02                	jmp    0x41fc2c
  41fc2a:	33 c0                	xor    eax,eax
  41fc2c:	50                   	push   eax
  41fc2d:	8b cf                	mov    ecx,edi
  41fc2f:	e8 1c 65 06 00       	call   0x486150
  41fc34:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  41fc3a:	85 c9                	test   ecx,ecx
  41fc3c:	74 07                	je     0x41fc45
  41fc3e:	8b 01                	mov    eax,DWORD PTR [ecx]
  41fc40:	ff 50 2c             	call   DWORD PTR [eax+0x2c]
  41fc43:	eb 02                	jmp    0x41fc47
  41fc45:	33 c0                	xor    eax,eax
  41fc47:	50                   	push   eax
  41fc48:	8b cf                	mov    ecx,edi
  41fc4a:	e8 01 65 06 00       	call   0x486150
  41fc4f:	8b 8e dc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1dc]
  41fc55:	85 c9                	test   ecx,ecx
  41fc57:	74 13                	je     0x41fc6c
  41fc59:	8b 11                	mov    edx,DWORD PTR [ecx]
  41fc5b:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  41fc5e:	50                   	push   eax
  41fc5f:	8b cf                	mov    ecx,edi
  41fc61:	e8 ea 64 06 00       	call   0x486150
  41fc66:	5f                   	pop    edi
  41fc67:	5e                   	pop    esi
  41fc68:	5d                   	pop    ebp
  41fc69:	c2 04 00             	ret    0x4
  41fc6c:	33 c0                	xor    eax,eax
  41fc6e:	50                   	push   eax
  41fc6f:	8b cf                	mov    ecx,edi
  41fc71:	e8 da 64 06 00       	call   0x486150
  41fc76:	5f                   	pop    edi
  41fc77:	5e                   	pop    esi
  41fc78:	5d                   	pop    ebp
  41fc79:	c2 04 00             	ret    0x4


; ===== SERVER Creatures::PacketPuppetInfo (0x433020) =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00433020 <.text+0x32020>:
  433020:	55                   	push   ebp
  433021:	8b ec                	mov    ebp,esp
  433023:	51                   	push   ecx
  433024:	57                   	push   edi
  433025:	8b f9                	mov    edi,ecx
  433027:	8b 07                	mov    eax,DWORD PTR [edi]
  433029:	8d 4d fc             	lea    ecx,[ebp-0x4]
  43302c:	51                   	push   ecx
  43302d:	6a 00                	push   0x0
  43302f:	6a 00                	push   0x0
  433031:	6a 00                	push   0x0
  433033:	57                   	push   edi
  433034:	6a 14                	push   0x14
  433036:	8b cf                	mov    ecx,edi
  433038:	ff 50 24             	call   DWORD PTR [eax+0x24]
  43303b:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  43303e:	85 c0                	test   eax,eax
  433040:	0f 84 c4 00 00 00    	je     0x43310a
  433046:	56                   	push   esi
  433047:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  43304a:	6a 44                	push   0x44
  43304c:	8b ce                	mov    ecx,esi
  43304e:	e8 fd 30 05 00       	call   0x486150
  433053:	8b cf                	mov    ecx,edi
  433055:	e8 a6 86 05 00       	call   0x48b700
  43305a:	50                   	push   eax
  43305b:	8b ce                	mov    ecx,esi
  43305d:	e8 8e 31 05 00       	call   0x4861f0
  433062:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  433065:	33 c0                	xor    eax,eax
  433067:	66 8b 82 0c 01 00 00 	mov    ax,WORD PTR [edx+0x10c]
  43306e:	8b ce                	mov    ecx,esi
  433070:	50                   	push   eax
  433071:	e8 da 30 05 00       	call   0x486150
  433076:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  433079:	33 d2                	xor    edx,edx
  43307b:	66 8b 91 0e 01 00 00 	mov    dx,WORD PTR [ecx+0x10e]
  433082:	8b ce                	mov    ecx,esi
  433084:	52                   	push   edx
  433085:	e8 c6 30 05 00       	call   0x486150
  43308a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  43308d:	33 c9                	xor    ecx,ecx
  43308f:	66 8b 88 10 01 00 00 	mov    cx,WORD PTR [eax+0x110]
  433096:	51                   	push   ecx
  433097:	8b ce                	mov    ecx,esi
  433099:	e8 b2 30 05 00       	call   0x486150
  43309e:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  4330a1:	33 c0                	xor    eax,eax
  4330a3:	66 8b 82 12 01 00 00 	mov    ax,WORD PTR [edx+0x112]
  4330aa:	8b ce                	mov    ecx,esi
  4330ac:	50                   	push   eax
  4330ad:	e8 9e 30 05 00       	call   0x486150
  4330b2:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  4330b5:	33 d2                	xor    edx,edx
  4330b7:	66 8b 91 14 01 00 00 	mov    dx,WORD PTR [ecx+0x114]
  4330be:	8b ce                	mov    ecx,esi
  4330c0:	52                   	push   edx
  4330c1:	e8 8a 30 05 00       	call   0x486150
  4330c6:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  4330c9:	33 c9                	xor    ecx,ecx
  4330cb:	66 8b 88 16 01 00 00 	mov    cx,WORD PTR [eax+0x116]
  4330d2:	51                   	push   ecx
  4330d3:	8b ce                	mov    ecx,esi
  4330d5:	e8 76 30 05 00       	call   0x486150
  4330da:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  4330dd:	33 c0                	xor    eax,eax
  4330df:	66 8b 82 18 01 00 00 	mov    ax,WORD PTR [edx+0x118]
  4330e6:	8b ce                	mov    ecx,esi
  4330e8:	50                   	push   eax
  4330e9:	e8 62 30 05 00       	call   0x486150
  4330ee:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  4330f1:	33 d2                	xor    edx,edx
  4330f3:	66 8b 91 1a 01 00 00 	mov    dx,WORD PTR [ecx+0x11a]
  4330fa:	8b ce                	mov    ecx,esi
  4330fc:	52                   	push   edx
  4330fd:	e8 4e 30 05 00       	call   0x486150
  433102:	5e                   	pop    esi
  433103:	5f                   	pop    edi
  433104:	8b e5                	mov    esp,ebp
  433106:	5d                   	pop    ebp
  433107:	c2 04 00             	ret    0x4
  43310a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  43310d:	50                   	push   eax
  43310e:	8b cf                	mov    ecx,edi
  433110:	e8 0b c5 05 00       	call   0x48f620
  433115:	5f                   	pop    edi
  433116:	8b e5                	mov    esp,ebp
  433118:	5d                   	pop    ebp
  433119:	c2 04 00             	ret    0x4


; ===== SERVER Unit::PacketPuppetInfo (0x48F620) =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0048f620 <.text+0x8e620>:
  48f620:	55                   	push   ebp
  48f621:	8b ec                	mov    ebp,esp
  48f623:	56                   	push   esi
  48f624:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  48f627:	57                   	push   edi
  48f628:	8b f9                	mov    edi,ecx
  48f62a:	6a 44                	push   0x44
  48f62c:	8b ce                	mov    ecx,esi
  48f62e:	e8 1d 6b ff ff       	call   0x486150
  48f633:	8b 47 78             	mov    eax,DWORD PTR [edi+0x78]
  48f636:	50                   	push   eax
  48f637:	8b ce                	mov    ecx,esi
  48f639:	e8 b2 6b ff ff       	call   0x4861f0
  48f63e:	6a 00                	push   0x0
  48f640:	8b ce                	mov    ecx,esi
  48f642:	e8 09 6b ff ff       	call   0x486150
  48f647:	6a 00                	push   0x0
  48f649:	8b ce                	mov    ecx,esi
  48f64b:	e8 00 6b ff ff       	call   0x486150
  48f650:	6a 00                	push   0x0
  48f652:	8b ce                	mov    ecx,esi
  48f654:	e8 f7 6a ff ff       	call   0x486150
  48f659:	6a 00                	push   0x0
  48f65b:	8b ce                	mov    ecx,esi
  48f65d:	e8 ee 6a ff ff       	call   0x486150
  48f662:	6a 00                	push   0x0
  48f664:	8b ce                	mov    ecx,esi
  48f666:	e8 e5 6a ff ff       	call   0x486150
  48f66b:	6a 00                	push   0x0
  48f66d:	8b ce                	mov    ecx,esi
  48f66f:	e8 dc 6a ff ff       	call   0x486150
  48f674:	6a 00                	push   0x0
  48f676:	8b ce                	mov    ecx,esi
  48f678:	e8 d3 6a ff ff       	call   0x486150
  48f67d:	6a 00                	push   0x0
  48f67f:	8b ce                	mov    ecx,esi
  48f681:	e8 ca 6a ff ff       	call   0x486150
  48f686:	6a 00                	push   0x0
  48f688:	8b ce                	mov    ecx,esi
  48f68a:	e8 c1 6a ff ff       	call   0x486150
  48f68f:	6a 00                	push   0x0
  48f691:	8b ce                	mov    ecx,esi
  48f693:	e8 b8 6a ff ff       	call   0x486150
  48f698:	5f                   	pop    edi
  48f699:	5e                   	pop    esi
  48f69a:	5d                   	pop    ebp
  48f69b:	c2 04 00             	ret    0x4


; ===== SERVER WorldMap::packet_peripheral_units - scan and filter =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004af770 <.text+0xae770>:
  4af770:	55                   	push   ebp
  4af771:	8b ec                	mov    ebp,esp
  4af773:	6a ff                	push   0xffffffff
  4af775:	68 18 c7 4d 00       	push   0x4dc718
  4af77a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4af780:	50                   	push   eax
  4af781:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4af788:	83 ec 74             	sub    esp,0x74
  4af78b:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  4af78e:	53                   	push   ebx
  4af78f:	56                   	push   esi
  4af790:	57                   	push   edi
  4af791:	33 ff                	xor    edi,edi
  4af793:	48                   	dec    eax
  4af794:	83 f8 07             	cmp    eax,0x7
  4af797:	8b f1                	mov    esi,ecx
  4af799:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  4af79c:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  4af79f:	77 4e                	ja     0x4af7ef
  4af7a1:	ff 24 85 d4 fe 4a 00 	jmp    DWORD PTR [eax*4+0x4afed4]
  4af7a8:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4af7ab:	83 c1 ee             	add    ecx,0xffffffee
  4af7ae:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
  4af7b1:	eb 14                	jmp    0x4af7c7
  4af7b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4af7b6:	83 c0 0c             	add    eax,0xc
  4af7b9:	e9 7b 03 00 00       	jmp    0x4afb39
  4af7be:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4af7c1:	83 c0 12             	add    eax,0x12
  4af7c4:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  4af7c7:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4af7ca:	8d 41 f4             	lea    eax,[ecx-0xc]
  4af7cd:	33 d2                	xor    edx,edx
  4af7cf:	3b c7                	cmp    eax,edi
  4af7d1:	0f 9c c2             	setl   dl
  4af7d4:	83 c1 0c             	add    ecx,0xc
  4af7d7:	4a                   	dec    edx
  4af7d8:	23 d0                	and    edx,eax
  4af7da:	33 c0                	xor    eax,eax
  4af7dc:	66 8b 46 2c          	mov    ax,WORD PTR [esi+0x2c]
  4af7e0:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
  4af7e3:	3b c8                	cmp    ecx,eax
  4af7e5:	0f 8c 40 03 00 00    	jl     0x4afb2b
  4af7eb:	48                   	dec    eax
  4af7ec:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
  4af7ef:	8b 7d 20             	mov    edi,DWORD PTR [ebp+0x20]
  4af7f2:	8b 5d 20             	mov    ebx,DWORD PTR [ebp+0x20]
  4af7f5:	8b 16                	mov    edx,DWORD PTR [esi]
  4af7f7:	8b ce                	mov    ecx,esi
  4af7f9:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4af7fc:	8d 45 88             	lea    eax,[ebp-0x78]
  4af7ff:	50                   	push   eax
  4af800:	c7 45 80 8c e5 4d 00 	mov    DWORD PTR [ebp-0x80],0x4de58c
  4af807:	c7 45 84 ff ff ff ff 	mov    DWORD PTR [ebp-0x7c],0xffffffff
  4af80e:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  4af814:	33 c0                	xor    eax,eax
  4af816:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
  4af819:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
  4af81c:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
  4af81f:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  4af822:	c7 45 80 6c e6 4d 00 	mov    DWORD PTR [ebp-0x80],0x4de66c
  4af829:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
  4af82c:	c6 45 b4 08          	mov    BYTE PTR [ebp-0x4c],0x8
  4af830:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
  4af833:	66 8b 4d f0          	mov    cx,WORD PTR [ebp-0x10]
  4af837:	66 3b 4e 2c          	cmp    cx,WORD PTR [esi+0x2c]
  4af83b:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4af83e:	0f 83 9a 02 00 00    	jae    0x4afade
  4af844:	66 8b 55 ec          	mov    dx,WORD PTR [ebp-0x14]
  4af848:	66 3b 56 2e          	cmp    dx,WORD PTR [esi+0x2e]
  4af84c:	0f 83 8c 02 00 00    	jae    0x4afade
  4af852:	66 85 c9             	test   cx,cx
  4af855:	0f 84 4b 01 00 00    	je     0x4af9a6
  4af85b:	66 c1 ef 02          	shr    di,0x2
  4af85f:	81 e3 ff ff 00 00    	and    ebx,0xffff
  4af865:	c1 eb 02             	shr    ebx,0x2
  4af868:	43                   	inc    ebx
  4af869:	89 5d d4             	mov    DWORD PTR [ebp-0x2c],ebx
  4af86c:	8b c7                	mov    eax,edi
  4af86e:	25 ff ff 00 00       	and    eax,0xffff
  4af873:	3b c3                	cmp    eax,ebx
  4af875:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  4af878:	0f 8d 28 01 00 00    	jge    0x4af9a6
  4af87e:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4af881:	81 e1 ff ff 00 00    	and    ecx,0xffff
  4af887:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
  4af88a:	c1 e9 02             	shr    ecx,0x2
  4af88d:	c1 e1 02             	shl    ecx,0x2
  4af890:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
  4af893:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  4af896:	8b 14 0a             	mov    edx,DWORD PTR [edx+ecx*1]
  4af899:	c1 e0 02             	shl    eax,0x2
  4af89c:	83 3c 02 00          	cmp    DWORD PTR [edx+eax*1],0x0
  4af8a0:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  4af8a3:	0f 84 ea 00 00 00    	je     0x4af993
  4af8a9:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4af8ac:	c7 45 e8 04 00 00 00 	mov    DWORD PTR [ebp-0x18],0x4
  4af8b3:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  4af8b6:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  4af8b9:	8b 14 08             	mov    edx,DWORD PTR [eax+ecx*1]
  4af8bc:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  4af8bf:	8b 3c 02             	mov    edi,DWORD PTR [edx+eax*1]
  4af8c2:	8b 16                	mov    edx,DWORD PTR [esi]
  4af8c4:	8b ce                	mov    ecx,esi
  4af8c6:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4af8c9:	8a 45 23             	mov    al,BYTE PTR [ebp+0x23]
  4af8cc:	6a 00                	push   0x0
  4af8ce:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4af8d1:	88 45 c4             	mov    BYTE PTR [ebp-0x3c],al
  4af8d4:	e8 67 31 00 00       	call   0x4b2a40
  4af8d9:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  4af8dc:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  4af8df:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4af8e2:	51                   	push   ecx
  4af8e3:	52                   	push   edx
  4af8e4:	50                   	push   eax
  4af8e5:	8b cf                	mov    ecx,edi
  4af8e7:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4af8eb:	e8 70 13 f6 ff       	call   0x410c60
  4af8f0:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  4af8f3:	3b 45 cc             	cmp    eax,DWORD PTR [ebp-0x34]
  4af8f6:	8b d8                	mov    ebx,eax
  4af8f8:	74 46                	je     0x4af940
  4af8fa:	8b 3b                	mov    edi,DWORD PTR [ebx]
  4af8fc:	85 ff                	test   edi,edi
  4af8fe:	74 36                	je     0x4af936
  4af900:	8b cf                	mov    ecx,edi
  4af902:	e8 69 bd fd ff       	call   0x48b670
  4af907:	3c 04                	cmp    al,0x4
  4af909:	74 2b                	je     0x4af936
  4af90b:	8b 17                	mov    edx,DWORD PTR [edi]
  4af90d:	8b cf                	mov    ecx,edi
  4af90f:	ff 92 d0 01 00 00    	call   DWORD PTR [edx+0x1d0]
  4af915:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4af918:	8b 10                	mov    edx,DWORD PTR [eax]
  4af91a:	51                   	push   ecx
  4af91b:	8b c8                	mov    ecx,eax
  4af91d:	ff 12                	call   DWORD PTR [edx]
  4af91f:	84 c0                	test   al,al
  4af921:	74 13                	je     0x4af936
  4af923:	8b 17                	mov    edx,DWORD PTR [edi]
  4af925:	8b cf                	mov    ecx,edi
  4af927:	ff 92 c8 01 00 00    	call   DWORD PTR [edx+0x1c8]
  4af92d:	57                   	push   edi
  4af92e:	8d 4d 80             	lea    ecx,[ebp-0x80]
  4af931:	e8 8a e9 f9 ff       	call   0x44e2c0
  4af936:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  4af939:	83 c3 04             	add    ebx,0x4
  4af93c:	3b d8                	cmp    ebx,eax
  4af93e:	75 ba                	jne    0x4af8fa
  4af940:	8b 06                	mov    eax,DWORD PTR [esi]
  4af942:	8b ce                	mov    ecx,esi
  4af944:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4af947:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  4af94a:	33 ff                	xor    edi,edi
  4af94c:	3b c7                	cmp    eax,edi
  4af94e:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4af952:	74 19                	je     0x4af96d
  4af954:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  4af957:	51                   	push   ecx
  4af958:	50                   	push   eax
  4af959:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4af95c:	e8 6f 31 00 00       	call   0x4b2ad0
  4af961:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  4af964:	52                   	push   edx
  4af965:	e8 f6 26 f9 ff       	call   0x442060
  4af96a:	83 c4 04             	add    esp,0x4
  4af96d:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4af970:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  4af973:	41                   	inc    ecx
  4af974:	48                   	dec    eax
  4af975:	89 7d c8             	mov    DWORD PTR [ebp-0x38],edi
  4af978:	89 7d cc             	mov    DWORD PTR [ebp-0x34],edi
  4af97b:	89 7d d0             	mov    DWORD PTR [ebp-0x30],edi
  4af97e:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  4af981:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  4af984:	0f 85 29 ff ff ff    	jne    0x4af8b3
  4af98a:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  4af98d:	8b 5d d4             	mov    ebx,DWORD PTR [ebp-0x2c]
  4af990:	8b 7d e0             	mov    edi,DWORD PTR [ebp-0x20]
  4af993:	47                   	inc    edi
  4af994:	8b c7                	mov    eax,edi
  4af996:	25 ff ff 00 00       	and    eax,0xffff
  4af99b:	3b c3                	cmp    eax,ebx
  4af99d:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  4af9a0:	0f 8c ed fe ff ff    	jl     0x4af893
  4af9a6:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  4af9a9:	66 85 c9             	test   cx,cx
  4af9ac:	0f 84 2c 01 00 00    	je     0x4afade
  4af9b2:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4af9b5:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  4af9b8:	66 c1 ea 02          	shr    dx,0x2
  4af9bc:	25 ff ff 00 00       	and    eax,0xffff
  4af9c1:	c1 e8 02             	shr    eax,0x2
  4af9c4:	8d 78 01             	lea    edi,[eax+0x1]
  4af9c7:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
  4af9ca:	8b c2                	mov    eax,edx
  4af9cc:	25 ff ff 00 00       	and    eax,0xffff
  4af9d1:	3b c7                	cmp    eax,edi
  4af9d3:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
  4af9d6:	0f 8d 02 01 00 00    	jge    0x4afade
  4af9dc:	81 e1 ff ff 00 00    	and    ecx,0xffff
  4af9e2:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
  4af9e5:	c1 e9 02             	shr    ecx,0x2
  4af9e8:	c1 e1 02             	shl    ecx,0x2
  4af9eb:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
  4af9ee:	8b 5e 24             	mov    ebx,DWORD PTR [esi+0x24]
  4af9f1:	c1 e0 02             	shl    eax,0x2
  4af9f4:	8b 1c 03             	mov    ebx,DWORD PTR [ebx+eax*1]
  4af9f7:	83 3c 0b 00          	cmp    DWORD PTR [ebx+ecx*1],0x0
  4af9fb:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
  4af9fe:	0f 84 c7 00 00 00    	je     0x4afacb
  4afa04:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
  4afa07:	c7 45 10 04 00 00 00 	mov    DWORD PTR [ebp+0x10],0x4
  4afa0e:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  4afa11:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  4afa14:	8b 14 08             	mov    edx,DWORD PTR [eax+ecx*1]
  4afa17:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  4afa1a:	8b 3c 02             	mov    edi,DWORD PTR [edx+eax*1]
  4afa1d:	8b 16                	mov    edx,DWORD PTR [esi]
  4afa1f:	8b ce                	mov    ecx,esi
  4afa21:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4afa24:	8a 45 23             	mov    al,BYTE PTR [ebp+0x23]
  4afa27:	6a 00                	push   0x0
  4afa29:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4afa2c:	88 45 c4             	mov    BYTE PTR [ebp-0x3c],al
  4afa2f:	e8 0c 30 00 00       	call   0x4b2a40
  4afa34:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
  4afa37:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  4afa3a:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4afa3d:	51                   	push   ecx
  4afa3e:	52                   	push   edx
  4afa3f:	50                   	push   eax
  4afa40:	8b cf                	mov    ecx,edi
  4afa42:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4afa46:	e8 15 12 f6 ff       	call   0x410c60
  4afa4b:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  4afa4e:	3b 45 cc             	cmp    eax,DWORD PTR [ebp-0x34]
  4afa51:	8b d8                	mov    ebx,eax
  4afa53:	74 46                	je     0x4afa9b
  4afa55:	8b 3b                	mov    edi,DWORD PTR [ebx]
  4afa57:	85 ff                	test   edi,edi
  4afa59:	74 36                	je     0x4afa91
  4afa5b:	8b cf                	mov    ecx,edi
  4afa5d:	e8 0e bc fd ff       	call   0x48b670
  4afa62:	3c 04                	cmp    al,0x4
  4afa64:	74 2b                	je     0x4afa91
  4afa66:	8b 17                	mov    edx,DWORD PTR [edi]
  4afa68:	8b cf                	mov    ecx,edi
  4afa6a:	ff 92 d0 01 00 00    	call   DWORD PTR [edx+0x1d0]
  4afa70:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4afa73:	8b 10                	mov    edx,DWORD PTR [eax]
  4afa75:	51                   	push   ecx
  4afa76:	8b c8                	mov    ecx,eax
  4afa78:	ff 12                	call   DWORD PTR [edx]
  4afa7a:	84 c0                	test   al,al
  4afa7c:	74 13                	je     0x4afa91
  4afa7e:	8b 17                	mov    edx,DWORD PTR [edi]
  4afa80:	8b cf                	mov    ecx,edi
  4afa82:	ff 92 c8 01 00 00    	call   DWORD PTR [edx+0x1c8]
  4afa88:	57                   	push   edi
  4afa89:	8d 4d 80             	lea    ecx,[ebp-0x80]
  4afa8c:	e8 2f e8 f9 ff       	call   0x44e2c0
  4afa91:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  4afa94:	83 c3 04             	add    ebx,0x4
  4afa97:	3b d8                	cmp    ebx,eax
  4afa99:	75 ba                	jne    0x4afa55
  4afa9b:	8b 06                	mov    eax,DWORD PTR [esi]
  4afa9d:	8b ce                	mov    ecx,esi
  4afa9f:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4afaa2:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4afaa5:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4afaa9:	e8 e2 2f 00 00       	call   0x4b2a90
  4afaae:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4afab1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4afab4:	41                   	inc    ecx
  4afab5:	48                   	dec    eax
  4afab6:	89 4d 18             	mov    DWORD PTR [ebp+0x18],ecx
  4afab9:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4afabc:	0f 85 4c ff ff ff    	jne    0x4afa0e
  4afac2:	8b 7d dc             	mov    edi,DWORD PTR [ebp-0x24]
  4afac5:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  4afac8:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  4afacb:	42                   	inc    edx
  4afacc:	8b c2                	mov    eax,edx
  4aface:	25 ff ff 00 00       	and    eax,0xffff
  4afad3:	3b c7                	cmp    eax,edi
  4afad5:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
  4afad8:	0f 8c 10 ff ff ff    	jl     0x4af9ee
  4afade:	8b 16                	mov    edx,DWORD PTR [esi]
  4afae0:	8b ce                	mov    ecx,esi
  4afae2:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4afae5:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
  4afae8:	33 db                	xor    ebx,ebx
  4afaea:	3b c3                	cmp    eax,ebx
  4afaec:	0f 8e d4 02 00 00    	jle    0x4afdc6
  4afaf2:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4afaf5:	6a 10                	push   0x10
  4afaf7:	8b cf                	mov    ecx,edi
  4afaf9:	e8 52 66 fd ff       	call   0x486150
  4afafe:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
  4afb01:	50                   	push   eax
  4afb02:	8b cf                	mov    ecx,edi
  4afb04:	e8 47 66 fd ff       	call   0x486150
  4afb09:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  4afb0c:	8b c2                	mov    eax,edx
  4afb0e:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afb11:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
  4afb14:	c6 45 b4 08          	mov    BYTE PTR [ebp-0x4c],0x8
  4afb18:	39 5d c0             	cmp    DWORD PTR [ebp-0x40],ebx
  4afb1b:	0f 84 3f 01 00 00    	je     0x4afc60
  4afb21:	8b 00                	mov    eax,DWORD PTR [eax]
  4afb23:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afb26:	e9 3c 01 00 00       	jmp    0x4afc67
  4afb2b:	89 4d 18             	mov    DWORD PTR [ebp+0x18],ecx
  4afb2e:	e9 bc fc ff ff       	jmp    0x4af7ef
  4afb33:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4afb36:	83 c0 f4             	add    eax,0xfffffff4
  4afb39:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4afb3c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4afb3f:	33 d2                	xor    edx,edx
  4afb41:	8d 41 ee             	lea    eax,[ecx-0x12]
  4afb44:	3b c7                	cmp    eax,edi
  4afb46:	0f 9c c2             	setl   dl
  4afb49:	8d 59 12             	lea    ebx,[ecx+0x12]
  4afb4c:	4a                   	dec    edx
  4afb4d:	23 d0                	and    edx,eax
  4afb4f:	33 c0                	xor    eax,eax
  4afb51:	66 8b 46 2e          	mov    ax,WORD PTR [esi+0x2e]
  4afb55:	8b fa                	mov    edi,edx
  4afb57:	3b d8                	cmp    ebx,eax
  4afb59:	0f 8c 96 fc ff ff    	jl     0x4af7f5
  4afb5f:	8d 58 ff             	lea    ebx,[eax-0x1]
  4afb62:	e9 8e fc ff ff       	jmp    0x4af7f5
  4afb67:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4afb6a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4afb6d:	8d 42 0c             	lea    eax,[edx+0xc]
  4afb70:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4afb73:	8d 41 ee             	lea    eax,[ecx-0x12]
  4afb76:	33 db                	xor    ebx,ebx
  4afb78:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  4afb7b:	8d 41 ee             	lea    eax,[ecx-0x12]
  4afb7e:	85 c0                	test   eax,eax
  4afb80:	0f 9c c3             	setl   bl
  4afb83:	83 c1 12             	add    ecx,0x12
  4afb86:	4b                   	dec    ebx
  4afb87:	23 d8                	and    ebx,eax
  4afb89:	33 c0                	xor    eax,eax
  4afb8b:	66 8b 46 2e          	mov    ax,WORD PTR [esi+0x2e]
  4afb8f:	8b fb                	mov    edi,ebx
  4afb91:	3b c8                	cmp    ecx,eax
  4afb93:	8d 58 ff             	lea    ebx,[eax-0x1]
  4afb96:	7d 02                	jge    0x4afb9a
  4afb98:	8b d9                	mov    ebx,ecx
  4afb9a:	33 c9                	xor    ecx,ecx
  4afb9c:	8d 42 f4             	lea    eax,[edx-0xc]
  4afb9f:	85 c0                	test   eax,eax
  4afba1:	0f 9c c1             	setl   cl
  4afba4:	49                   	dec    ecx
  4afba5:	23 c8                	and    ecx,eax
  4afba7:	33 c0                	xor    eax,eax
  4afba9:	66 8b 46 2c          	mov    ax,WORD PTR [esi+0x2c]
  4afbad:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  4afbb0:	8d 4a 0c             	lea    ecx,[edx+0xc]
  4afbb3:	3b c8                	cmp    ecx,eax
  4afbb5:	0f 8c 9d 00 00 00    	jl     0x4afc58
  4afbbb:	48                   	dec    eax
  4afbbc:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
  4afbbf:	e9 31 fc ff ff       	jmp    0x4af7f5
  4afbc4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4afbc7:	8d 42 0c             	lea    eax,[edx+0xc]
  4afbca:	eb 06                	jmp    0x4afbd2
  4afbcc:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4afbcf:	8d 42 f4             	lea    eax,[edx-0xc]
  4afbd2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4afbd5:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4afbd8:	8d 41 12             	lea    eax,[ecx+0x12]
  4afbdb:	33 db                	xor    ebx,ebx
  4afbdd:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  4afbe0:	8d 41 ee             	lea    eax,[ecx-0x12]
  4afbe3:	85 c0                	test   eax,eax
  4afbe5:	0f 9c c3             	setl   bl
  4afbe8:	83 c1 12             	add    ecx,0x12
  4afbeb:	4b                   	dec    ebx
  4afbec:	23 d8                	and    ebx,eax
  4afbee:	33 c0                	xor    eax,eax
  4afbf0:	66 8b 46 2e          	mov    ax,WORD PTR [esi+0x2e]
  4afbf4:	8b fb                	mov    edi,ebx
  4afbf6:	3b c8                	cmp    ecx,eax
  4afbf8:	8d 58 ff             	lea    ebx,[eax-0x1]
  4afbfb:	7d 35                	jge    0x4afc32
  4afbfd:	eb 31                	jmp    0x4afc30
  4afbff:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4afc02:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4afc05:	8d 42 f4             	lea    eax,[edx-0xc]
  4afc08:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4afc0b:	8d 41 ee             	lea    eax,[ecx-0x12]
  4afc0e:	33 db                	xor    ebx,ebx
  4afc10:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  4afc13:	8d 41 ee             	lea    eax,[ecx-0x12]
  4afc16:	85 c0                	test   eax,eax
  4afc18:	0f 9c c3             	setl   bl
  4afc1b:	83 c1 12             	add    ecx,0x12
  4afc1e:	4b                   	dec    ebx
  4afc1f:	23 d8                	and    ebx,eax
  4afc21:	33 c0                	xor    eax,eax
  4afc23:	66 8b 46 2e          	mov    ax,WORD PTR [esi+0x2e]
  4afc27:	8b fb                	mov    edi,ebx
  4afc29:	3b c8                	cmp    ecx,eax
  4afc2b:	8d 58 ff             	lea    ebx,[eax-0x1]
  4afc2e:	7d 02                	jge    0x4afc32
  4afc30:	8b d9                	mov    ebx,ecx
  4afc32:	33 c9                	xor    ecx,ecx
  4afc34:	8d 42 f4             	lea    eax,[edx-0xc]
  4afc37:	85 c0                	test   eax,eax
  4afc39:	0f 9c c1             	setl   cl
  4afc3c:	49                   	dec    ecx
  4afc3d:	23 c8                	and    ecx,eax
  4afc3f:	33 c0                	xor    eax,eax
  4afc41:	66 8b 46 2c          	mov    ax,WORD PTR [esi+0x2c]
  4afc45:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  4afc48:	8d 4a 0c             	lea    ecx,[edx+0xc]
  4afc4b:	3b c8                	cmp    ecx,eax
  4afc4d:	7c 09                	jl     0x4afc58
  4afc4f:	48                   	dec    eax
  4afc50:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
  4afc53:	e9 9d fb ff ff       	jmp    0x4af7f5
  4afc58:	89 4d 18             	mov    DWORD PTR [ebp+0x18],ecx
  4afc5b:	e9 95 fb ff ff       	jmp    0x4af7f5


; ===== SERVER WorldMap::packet_peripheral_units - unit output + release =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004afc60 <.text+0xaec60>:
  4afc60:	c7 45 c0 01 00 00 00 	mov    DWORD PTR [ebp-0x40],0x1
  4afc67:	3b c3                	cmp    eax,ebx
  4afc69:	74 4d                	je     0x4afcb8
  4afc6b:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  4afc6e:	8b 16                	mov    edx,DWORD PTR [esi]
  4afc70:	8d 45 08             	lea    eax,[ebp+0x8]
  4afc73:	50                   	push   eax
  4afc74:	8b ce                	mov    ecx,esi
  4afc76:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4afc79:	8b c8                	mov    ecx,eax
  4afc7b:	8b 01                	mov    eax,DWORD PTR [ecx]
  4afc7d:	8b 59 04             	mov    ebx,DWORD PTR [ecx+0x4]
  4afc80:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  4afc83:	50                   	push   eax
  4afc84:	8b cf                	mov    ecx,edi
  4afc86:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
  4afc89:	e8 c2 64 fd ff       	call   0x486150
  4afc8e:	53                   	push   ebx
  4afc8f:	8b cf                	mov    ecx,edi
  4afc91:	e8 ba 64 fd ff       	call   0x486150
  4afc96:	8b 06                	mov    eax,DWORD PTR [esi]
  4afc98:	57                   	push   edi
  4afc99:	8b ce                	mov    ecx,esi
  4afc9b:	ff 90 ac 01 00 00    	call   DWORD PTR [eax+0x1ac]
  4afca1:	8b 16                	mov    edx,DWORD PTR [esi]
  4afca3:	8b ce                	mov    ecx,esi
  4afca5:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  4afcab:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afcae:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  4afcb1:	33 db                	xor    ebx,ebx
  4afcb3:	e9 60 fe ff ff       	jmp    0x4afb18
  4afcb8:	8b c2                	mov    eax,edx
  4afcba:	33 c9                	xor    ecx,ecx
  4afcbc:	c7 45 80 6c e6 4d 00 	mov    DWORD PTR [ebp-0x80],0x4de66c
  4afcc3:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afcc6:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  4afcc9:	c6 45 b4 08          	mov    BYTE PTR [ebp-0x4c],0x8
  4afccd:	be 02 00 00 00       	mov    esi,0x2
  4afcd2:	3b cb                	cmp    ecx,ebx
  4afcd4:	74 07                	je     0x4afcdd
  4afcd6:	8b 00                	mov    eax,DWORD PTR [eax]
  4afcd8:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afcdb:	eb 08                	jmp    0x4afce5
  4afcdd:	b9 01 00 00 00       	mov    ecx,0x1
  4afce2:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  4afce5:	3b c3                	cmp    eax,ebx
  4afce7:	0f 84 a5 00 00 00    	je     0x4afd92
  4afced:	ff 4d b8             	dec    DWORD PTR [ebp-0x48]
  4afcf0:	8b 4d a8             	mov    ecx,DWORD PTR [ebp-0x58]
  4afcf3:	3b c1                	cmp    eax,ecx
  4afcf5:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
  4afcf8:	74 37                	je     0x4afd31
  4afcfa:	3b c2                	cmp    eax,edx
  4afcfc:	74 52                	je     0x4afd50
  4afcfe:	8b 08                	mov    ecx,DWORD PTR [eax]
  4afd00:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4afd03:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4afd06:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afd09:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4afd0c:	8b 10                	mov    edx,DWORD PTR [eax]
  4afd0e:	89 11                	mov    DWORD PTR [ecx],edx
  4afd10:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  4afd13:	83 f8 01             	cmp    eax,0x1
  4afd16:	75 0b                	jne    0x4afd23
  4afd18:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afd1b:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4afd1e:	89 4d a0             	mov    DWORD PTR [ebp-0x60],ecx
  4afd21:	eb 55                	jmp    0x4afd78
  4afd23:	3b c6                	cmp    eax,esi
  4afd25:	75 51                	jne    0x4afd78
  4afd27:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
  4afd2a:	8b 02                	mov    eax,DWORD PTR [edx]
  4afd2c:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afd2f:	eb 47                	jmp    0x4afd78
  4afd31:	3b c2                	cmp    eax,edx
  4afd33:	74 1b                	je     0x4afd50
  4afd35:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4afd38:	89 19                	mov    DWORD PTR [ecx],ebx
  4afd3a:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afd3d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4afd40:	89 55 a8             	mov    DWORD PTR [ebp-0x58],edx
  4afd43:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  4afd46:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afd49:	39 75 c0             	cmp    DWORD PTR [ebp-0x40],esi
  4afd4c:	75 2a                	jne    0x4afd78
  4afd4e:	eb 25                	jmp    0x4afd75
  4afd50:	3b c1                	cmp    eax,ecx
  4afd52:	74 18                	je     0x4afd6c
  4afd54:	8b 08                	mov    ecx,DWORD PTR [eax]
  4afd56:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  4afd59:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
  4afd5c:	8b 02                	mov    eax,DWORD PTR [edx]
  4afd5e:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afd61:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
  4afd64:	83 7d c0 01          	cmp    DWORD PTR [ebp-0x40],0x1
  4afd68:	75 0e                	jne    0x4afd78
  4afd6a:	eb 09                	jmp    0x4afd75
  4afd6c:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
  4afd6f:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
  4afd72:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
  4afd75:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
  4afd78:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
  4afd7b:	50                   	push   eax
  4afd7c:	e8 df 22 f9 ff       	call   0x442060
  4afd81:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afd84:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  4afd87:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  4afd8a:	83 c4 04             	add    esp,0x4
  4afd8d:	e9 40 ff ff ff       	jmp    0x4afcd2
  4afd92:	3b cb                	cmp    ecx,ebx
  4afd94:	74 04                	je     0x4afd9a
  4afd96:	c6 45 b4 07          	mov    BYTE PTR [ebp-0x4c],0x7
  4afd9a:	8d 4d 88             	lea    ecx,[ebp-0x78]
  4afd9d:	51                   	push   ecx
  4afd9e:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
  4afda1:	c7 45 80 8c e5 4d 00 	mov    DWORD PTR [ebp-0x80],0x4de58c
  4afda8:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  4afdae:	5f                   	pop    edi
  4afdaf:	5e                   	pop    esi
  4afdb0:	b8 01 00 00 00       	mov    eax,0x1
  4afdb5:	5b                   	pop    ebx
  4afdb6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4afdb9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4afdc0:	8b e5                	mov    esp,ebp
  4afdc2:	5d                   	pop    ebp
  4afdc3:	c2 1c 00             	ret    0x1c
  4afdc6:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  4afdc9:	8b c2                	mov    eax,edx
  4afdcb:	33 c9                	xor    ecx,ecx
  4afdcd:	c7 45 80 6c e6 4d 00 	mov    DWORD PTR [ebp-0x80],0x4de66c
  4afdd4:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afdd7:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  4afdda:	c6 45 b4 08          	mov    BYTE PTR [ebp-0x4c],0x8
  4afdde:	be 01 00 00 00       	mov    esi,0x1
  4afde3:	bf 02 00 00 00       	mov    edi,0x2
  4afde8:	3b cb                	cmp    ecx,ebx
  4afdea:	74 07                	je     0x4afdf3
  4afdec:	8b 00                	mov    eax,DWORD PTR [eax]
  4afdee:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afdf1:	eb 05                	jmp    0x4afdf8
  4afdf3:	8b ce                	mov    ecx,esi
  4afdf5:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  4afdf8:	3b c3                	cmp    eax,ebx
  4afdfa:	0f 84 a3 00 00 00    	je     0x4afea3
  4afe00:	ff 4d b8             	dec    DWORD PTR [ebp-0x48]
  4afe03:	8b 4d a8             	mov    ecx,DWORD PTR [ebp-0x58]
  4afe06:	3b c1                	cmp    eax,ecx
  4afe08:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
  4afe0b:	74 36                	je     0x4afe43
  4afe0d:	3b c2                	cmp    eax,edx
  4afe0f:	74 51                	je     0x4afe62
  4afe11:	8b 10                	mov    edx,DWORD PTR [eax]
  4afe13:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  4afe16:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  4afe19:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afe1c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4afe1f:	8b 10                	mov    edx,DWORD PTR [eax]
  4afe21:	89 11                	mov    DWORD PTR [ecx],edx
  4afe23:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  4afe26:	3b c6                	cmp    eax,esi
  4afe28:	75 0b                	jne    0x4afe35
  4afe2a:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afe2d:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4afe30:	89 4d a0             	mov    DWORD PTR [ebp-0x60],ecx
  4afe33:	eb 54                	jmp    0x4afe89
  4afe35:	3b c7                	cmp    eax,edi
  4afe37:	75 50                	jne    0x4afe89
  4afe39:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
  4afe3c:	8b 02                	mov    eax,DWORD PTR [edx]
  4afe3e:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afe41:	eb 46                	jmp    0x4afe89
  4afe43:	3b c2                	cmp    eax,edx
  4afe45:	74 1b                	je     0x4afe62
  4afe47:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4afe4a:	89 19                	mov    DWORD PTR [ecx],ebx
  4afe4c:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afe4f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4afe52:	89 55 a8             	mov    DWORD PTR [ebp-0x58],edx
  4afe55:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  4afe58:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afe5b:	39 7d c0             	cmp    DWORD PTR [ebp-0x40],edi
  4afe5e:	75 29                	jne    0x4afe89
  4afe60:	eb 24                	jmp    0x4afe86
  4afe62:	3b c1                	cmp    eax,ecx
  4afe64:	74 17                	je     0x4afe7d
  4afe66:	8b 08                	mov    ecx,DWORD PTR [eax]
  4afe68:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  4afe6b:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
  4afe6e:	8b 02                	mov    eax,DWORD PTR [edx]
  4afe70:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  4afe73:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
  4afe76:	39 75 c0             	cmp    DWORD PTR [ebp-0x40],esi
  4afe79:	75 0e                	jne    0x4afe89
  4afe7b:	eb 09                	jmp    0x4afe86
  4afe7d:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
  4afe80:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
  4afe83:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
  4afe86:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
  4afe89:	8b 45 ac             	mov    eax,DWORD PTR [ebp-0x54]
  4afe8c:	50                   	push   eax
  4afe8d:	e8 ce 21 f9 ff       	call   0x442060
  4afe92:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  4afe95:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  4afe98:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  4afe9b:	83 c4 04             	add    esp,0x4
  4afe9e:	e9 45 ff ff ff       	jmp    0x4afde8
  4afea3:	3b cb                	cmp    ecx,ebx
  4afea5:	74 04                	je     0x4afeab
  4afea7:	c6 45 b4 07          	mov    BYTE PTR [ebp-0x4c],0x7
  4afeab:	8d 4d 88             	lea    ecx,[ebp-0x78]
  4afeae:	51                   	push   ecx
  4afeaf:	89 5d c0             	mov    DWORD PTR [ebp-0x40],ebx
  4afeb2:	c7 45 80 8c e5 4d 00 	mov    DWORD PTR [ebp-0x80],0x4de58c
  4afeb9:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  4afebf:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4afec2:	5f                   	pop    edi
  4afec3:	5e                   	pop    esi
  4afec4:	33 c0                	xor    eax,eax
  4afec6:	5b                   	pop    ebx
  4afec7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4afece:	8b e5                	mov    esp,ebp
  4afed0:	5d                   	pop    ebp
  4afed1:	c2 1c 00             	ret    0x1c


; ===== SERVER WorldMap::move_world_unit - bounds and post-move broadcast =====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004b12a0 <.text+0xb02a0>:
  4b12a0:	55                   	push   ebp
  4b12a1:	8b ec                	mov    ebp,esp
  4b12a3:	6a ff                	push   0xffffffff
  4b12a5:	68 c0 c7 4d 00       	push   0x4dc7c0
  4b12aa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4b12b0:	50                   	push   eax
  4b12b1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4b12b8:	83 ec 24             	sub    esp,0x24
  4b12bb:	53                   	push   ebx
  4b12bc:	56                   	push   esi
  4b12bd:	8b f1                	mov    esi,ecx
  4b12bf:	57                   	push   edi
  4b12c0:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4b12c3:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
  4b12ca:	e8 8f 07 02 00       	call   0x4d1a5e
  4b12cf:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
  4b12d2:	33 c0                	xor    eax,eax
  4b12d4:	66 8b 46 2c          	mov    ax,WORD PTR [esi+0x2c]
  4b12d8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4b12df:	3b d8                	cmp    ebx,eax
  4b12e1:	0f 8d 01 02 00 00    	jge    0x4b14e8
  4b12e7:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  4b12ea:	33 c9                	xor    ecx,ecx
  4b12ec:	66 8b 4e 2e          	mov    cx,WORD PTR [esi+0x2e]
  4b12f0:	3b c1                	cmp    eax,ecx
  4b12f2:	0f 8d f0 01 00 00    	jge    0x4b14e8
  4b12f8:	85 db                	test   ebx,ebx
  4b12fa:	0f 8c e8 01 00 00    	jl     0x4b14e8
  4b1300:	85 c0                	test   eax,eax
  4b1302:	0f 8c e0 01 00 00    	jl     0x4b14e8
  4b1308:	8b 16                	mov    edx,DWORD PTR [esi]
  4b130a:	8b ce                	mov    ecx,esi
  4b130c:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4b130f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4b1312:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  4b1315:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  4b1318:	8b c8                	mov    ecx,eax
  4b131a:	c1 f9 02             	sar    ecx,0x2
  4b131d:	8b 0c 8a             	mov    ecx,DWORD PTR [edx+ecx*4]
  4b1320:	c1 ff 02             	sar    edi,0x2
  4b1323:	8b 0c b9             	mov    ecx,DWORD PTR [ecx+edi*4]
  4b1326:	85 c9                	test   ecx,ecx
  4b1328:	0f 84 b3 01 00 00    	je     0x4b14e1
  4b132e:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  4b1331:	52                   	push   edx
  4b1332:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4b1335:	52                   	push   edx
  4b1336:	50                   	push   eax
  4b1337:	e8 d4 f6 f5 ff       	call   0x410a10
  4b133c:	8b f8                	mov    edi,eax
  4b133e:	85 ff                	test   edi,edi
  4b1340:	0f 84 9b 01 00 00    	je     0x4b14e1
  4b1346:	33 c9                	xor    ecx,ecx
  4b1348:	66 8b 4e 2c          	mov    cx,WORD PTR [esi+0x2c]
  4b134c:	3b d9                	cmp    ebx,ecx
  4b134e:	7d 7b                	jge    0x4b13cb
  4b1350:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  4b1353:	33 d2                	xor    edx,edx
  4b1355:	66 8b 56 2e          	mov    dx,WORD PTR [esi+0x2e]
  4b1359:	3b c2                	cmp    eax,edx
  4b135b:	7d 6e                	jge    0x4b13cb
  4b135d:	d1 e9                	shr    ecx,1
  4b135f:	0f af c8             	imul   ecx,eax
  4b1362:	8b c3                	mov    eax,ebx
  4b1364:	99                   	cdq
  4b1365:	2b c2                	sub    eax,edx
  4b1367:	d1 f8                	sar    eax,1
  4b1369:	03 c8                	add    ecx,eax
  4b136b:	8b c3                	mov    eax,ebx
  4b136d:	25 01 00 00 80       	and    eax,0x80000001
  4b1372:	79 05                	jns    0x4b1379
  4b1374:	48                   	dec    eax
  4b1375:	83 c8 fe             	or     eax,0xfffffffe
  4b1378:	40                   	inc    eax
  4b1379:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  4b137c:	8a 04 0a             	mov    al,BYTE PTR [edx+ecx*1]
  4b137f:	75 05                	jne    0x4b1386
  4b1381:	c0 e8 04             	shr    al,0x4
  4b1384:	eb 02                	jmp    0x4b1388
  4b1386:	24 0f                	and    al,0xf
  4b1388:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
  4b138b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4b138e:	25 ff 00 00 00       	and    eax,0xff
  4b1393:	83 f8 09             	cmp    eax,0x9
  4b1396:	77 43                	ja     0x4b13db
  4b1398:	33 c9                	xor    ecx,ecx
  4b139a:	8a 88 1c 15 4b 00    	mov    cl,BYTE PTR [eax+0x4b151c]
  4b13a0:	ff 24 8d 0c 15 4b 00 	jmp    DWORD PTR [ecx*4+0x4b150c]
  4b13a7:	8b 17                	mov    edx,DWORD PTR [edi]
  4b13a9:	6a 00                	push   0x0
  4b13ab:	68 3b 4e 00 00       	push   0x4e3b
  4b13b0:	8b cf                	mov    ecx,edi
  4b13b2:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  4b13b5:	85 c0                	test   eax,eax
  4b13b7:	75 22                	jne    0x4b13db
  4b13b9:	8b 07                	mov    eax,DWORD PTR [edi]
  4b13bb:	6a 00                	push   0x0
  4b13bd:	68 3c 4e 00 00       	push   0x4e3c
  4b13c2:	8b cf                	mov    ecx,edi
  4b13c4:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  4b13c7:	85 c0                	test   eax,eax
  4b13c9:	75 10                	jne    0x4b13db
  4b13cb:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  4b13ce:	85 c0                	test   eax,eax
  4b13d0:	75 09                	jne    0x4b13db
  4b13d2:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  4b13d9:	eb 48                	jmp    0x4b1423
  4b13db:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4b13de:	3b d8                	cmp    ebx,eax
  4b13e0:	75 08                	jne    0x4b13ea
  4b13e2:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4b13e5:	3b 4d 0c             	cmp    ecx,DWORD PTR [ebp+0xc]
  4b13e8:	74 39                	je     0x4b1423
  4b13ea:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  4b13ed:	52                   	push   edx
  4b13ee:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4b13f1:	83 ec 0c             	sub    esp,0xc
  4b13f4:	8b cc                	mov    ecx,esp
  4b13f6:	89 01                	mov    DWORD PTR [ecx],eax
  4b13f8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4b13fb:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4b13fe:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4b1401:	8b ce                	mov    ecx,esi
  4b1403:	e8 88 fc ff ff       	call   0x4b1090
  4b1408:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  4b140b:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4b140e:	57                   	push   edi
  4b140f:	83 ec 0c             	sub    esp,0xc
  4b1412:	8b cc                	mov    ecx,esp
  4b1414:	89 19                	mov    DWORD PTR [ecx],ebx
  4b1416:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4b1419:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4b141c:	8b ce                	mov    ecx,esi
  4b141e:	e8 ed dc ff ff       	call   0x4af110
  4b1423:	8b 16                	mov    edx,DWORD PTR [esi]
  4b1425:	8b ce                	mov    ecx,esi
  4b1427:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4b142a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4b142d:	85 c0                	test   eax,eax
  4b142f:	74 0d                	je     0x4b143e
  4b1431:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4b1434:	8b f3                	mov    esi,ebx
  4b1436:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
  4b1439:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4b143c:	eb 0c                	jmp    0x4b144a
  4b143e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4b1441:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4b1444:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  4b1447:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  4b144a:	8a 45 2c             	mov    al,BYTE PTR [ebp+0x2c]
  4b144d:	84 c0                	test   al,al
  4b144f:	74 6b                	je     0x4b14bc
  4b1451:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b1454:	e8 97 49 fd ff       	call   0x485df0
  4b1459:	6a 01                	push   0x1
  4b145b:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b145e:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4b1462:	e8 e9 4c fd ff       	call   0x486150
  4b1467:	56                   	push   esi
  4b1468:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b146b:	e8 e0 4c fd ff       	call   0x486150
  4b1470:	53                   	push   ebx
  4b1471:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b1474:	e8 d7 4c fd ff       	call   0x486150
  4b1479:	8b 17                	mov    edx,DWORD PTR [edi]
  4b147b:	8d 45 d0             	lea    eax,[ebp-0x30]
  4b147e:	50                   	push   eax
  4b147f:	8b cf                	mov    ecx,edi
  4b1481:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4b1487:	8b 17                	mov    edx,DWORD PTR [edi]
  4b1489:	8b cf                	mov    ecx,edi
  4b148b:	ff 92 d0 01 00 00    	call   DWORD PTR [edx+0x1d0]
  4b1491:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4b1494:	50                   	push   eax
  4b1495:	8d 45 d0             	lea    eax,[ebp-0x30]
  4b1498:	50                   	push   eax
  4b1499:	6a 16                	push   0x16
  4b149b:	83 ec 0c             	sub    esp,0xc
  4b149e:	8b cc                	mov    ecx,esp
  4b14a0:	89 31                	mov    DWORD PTR [ecx],esi
  4b14a2:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  4b14a5:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4b14a8:	e8 43 e6 f5 ff       	call   0x40faf0
  4b14ad:	83 c4 18             	add    esp,0x18
  4b14b0:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4b14b3:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4b14b7:	e8 c4 49 fd ff       	call   0x485e80
  4b14bc:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4b14bf:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4b14c6:	e8 75 05 02 00       	call   0x4d1a40
  4b14cb:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4b14ce:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4b14d1:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4b14d8:	5f                   	pop    edi
  4b14d9:	5e                   	pop    esi
  4b14da:	5b                   	pop    ebx
  4b14db:	8b e5                	mov    esp,ebp
  4b14dd:	5d                   	pop    ebp
  4b14de:	c2 28 00             	ret    0x28
  4b14e1:	8b 06                	mov    eax,DWORD PTR [esi]
  4b14e3:	8b ce                	mov    ecx,esi
  4b14e5:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4b14e8:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4b14eb:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4b14f2:	e8 49 05 02 00       	call   0x4d1a40
  4b14f7:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]


; ===== CLIENT handler S2C 68 =====

/mnt/data/t4c(2).exe:     file format pei-i386


Disassembly of section .text:

0049e0af <.text+0x9d0af>:
  49e0af:	68 34 e6 56 00       	push   0x56e634
  49e0b4:	b9 98 db 88 00       	mov    ecx,0x88db98
  49e0b9:	e8 c2 55 00 00       	call   0x4a3680
  49e0be:	8d 55 c4             	lea    edx,[ebp-0x3c]
  49e0c1:	8b cb                	mov    ecx,ebx
  49e0c3:	52                   	push   edx
  49e0c4:	e8 b7 78 01 00       	call   0x4b5980
  49e0c9:	8d 45 c8             	lea    eax,[ebp-0x38]
  49e0cc:	8b cb                	mov    ecx,ebx
  49e0ce:	50                   	push   eax
  49e0cf:	e8 6c 79 01 00       	call   0x4b5a40
  49e0d4:	8d 4d dc             	lea    ecx,[ebp-0x24]
  49e0d7:	51                   	push   ecx
  49e0d8:	8b cb                	mov    ecx,ebx
  49e0da:	e8 61 79 01 00       	call   0x4b5a40
  49e0df:	8d 55 e8             	lea    edx,[ebp-0x18]
  49e0e2:	8b cb                	mov    ecx,ebx
  49e0e4:	52                   	push   edx
  49e0e5:	e8 56 79 01 00       	call   0x4b5a40
  49e0ea:	8d 45 e0             	lea    eax,[ebp-0x20]
  49e0ed:	8b cb                	mov    ecx,ebx
  49e0ef:	50                   	push   eax
  49e0f0:	e8 4b 79 01 00       	call   0x4b5a40
  49e0f5:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49e0f8:	51                   	push   ecx
  49e0f9:	8b cb                	mov    ecx,ebx
  49e0fb:	e8 40 79 01 00       	call   0x4b5a40
  49e100:	8d 55 08             	lea    edx,[ebp+0x8]
  49e103:	8b cb                	mov    ecx,ebx
  49e105:	52                   	push   edx
  49e106:	e8 35 79 01 00       	call   0x4b5a40
  49e10b:	8d 45 cc             	lea    eax,[ebp-0x34]
  49e10e:	8b cb                	mov    ecx,ebx
  49e110:	50                   	push   eax
  49e111:	e8 2a 79 01 00       	call   0x4b5a40
  49e116:	8d 4d ec             	lea    ecx,[ebp-0x14]
  49e119:	51                   	push   ecx
  49e11a:	8b cb                	mov    ecx,ebx
  49e11c:	e8 1f 79 01 00       	call   0x4b5a40
  49e121:	b9 a0 6a 5a 00       	mov    ecx,0x5a6aa0
  49e126:	e8 25 18 00 00       	call   0x49f950
  49e12b:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
  49e12e:	a1 bc e0 88 00       	mov    eax,ds:0x88e0bc
  49e133:	3b d0                	cmp    edx,eax
  49e135:	75 6e                	jne    0x49e1a5
  49e137:	66 39 75 c8          	cmp    WORD PTR [ebp-0x38],si
  49e13b:	75 3b                	jne    0x49e178
  49e13d:	66 39 75 dc          	cmp    WORD PTR [ebp-0x24],si
  49e141:	75 35                	jne    0x49e178
  49e143:	66 39 75 e8          	cmp    WORD PTR [ebp-0x18],si
  49e147:	75 2f                	jne    0x49e178
  49e149:	66 39 75 e0          	cmp    WORD PTR [ebp-0x20],si
  49e14d:	75 29                	jne    0x49e178
  49e14f:	66 39 75 e4          	cmp    WORD PTR [ebp-0x1c],si
  49e153:	75 23                	jne    0x49e178
  49e155:	66 39 75 08          	cmp    WORD PTR [ebp+0x8],si
  49e159:	75 1d                	jne    0x49e178
  49e15b:	66 39 75 cc          	cmp    WORD PTR [ebp-0x34],si
  49e15f:	75 17                	jne    0x49e178
  49e161:	66 39 75 ec          	cmp    WORD PTR [ebp-0x14],si
  49e165:	75 11                	jne    0x49e178
  49e167:	a1 48 e5 88 00       	mov    eax,ds:0x88e548
  49e16c:	c6 05 bc 6a 5a 00 01 	mov    BYTE PTR ds:0x5a6abc,0x1
  49e173:	83 f8 01             	cmp    eax,0x1
  49e176:	74 07                	je     0x49e17f
  49e178:	c6 05 bc 6a 5a 00 00 	mov    BYTE PTR ds:0x5a6abc,0x0
  49e17f:	66 39 75 08          	cmp    WORD PTR [ebp+0x8],si
  49e183:	75 12                	jne    0x49e197
  49e185:	83 3d 48 e5 88 00 01 	cmp    DWORD PTR ds:0x88e548,0x1
  49e18c:	75 09                	jne    0x49e197
  49e18e:	c6 05 be 6a 5a 00 01 	mov    BYTE PTR ds:0x5a6abe,0x1
  49e195:	eb 0e                	jmp    0x49e1a5
  49e197:	c6 05 be 6a 5a 00 00 	mov    BYTE PTR ds:0x5a6abe,0x0
  49e19e:	c6 05 bf 6a 5a 00 00 	mov    BYTE PTR ds:0x5a6abf,0x0
  49e1a5:	b9 a0 6a 5a 00       	mov    ecx,0x5a6aa0
  49e1aa:	e8 b1 17 00 00       	call   0x49f960
  49e1af:	6a 39                	push   0x39
  49e1b1:	b9 f8 ed 8a 00       	mov    ecx,0x8aedf8
  49e1b6:	e8 35 5e 07 00       	call   0x513ff0
  49e1bb:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  49e1be:	8b                   	.byte 0x8b
  49e1bf:	4d                   	dec    ebp

