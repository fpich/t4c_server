; T4C Server.exe — passe 23. Extraits par adresse virtuelle, désassemblage statique GNU objdump Intel.; SHA-256 PE: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc; Ne représente pas du code source original.

; ==== MonsterStructure::MonsterStructure: empty begin/end/capacity: [00442559, 00442583) ====
  442559:	89 88 b4 00 00 00    	mov    DWORD PTR [eax+0xb4],ecx
  44255f:	89 88 b8 00 00 00    	mov    DWORD PTR [eax+0xb8],ecx
  442565:	89 88 bc 00 00 00    	mov    DWORD PTR [eax+0xbc],ecx
  44256b:	89 88 c0 00 00 00    	mov    DWORD PTR [eax+0xc0],ecx
  442571:	89 88 c4 00 00 00    	mov    DWORD PTR [eax+0xc4],ecx
  442577:	89 88 c8 00 00 00    	mov    DWORD PTR [eax+0xc8],ecx
  44257d:	89 88 cc 00 00 00    	mov    DWORD PTR [eax+0xcc],ecx

; ==== MonsterStructure copy ctor: independent 16-byte vector: [004118BB, 00411935) ====
  4118bb:	8a 86 b0 00 00 00    	mov    al,BYTE PTR [esi+0xb0]
  4118c1:	8d 9f b0 00 00 00    	lea    ebx,[edi+0xb0]
  4118c7:	88 03                	mov    BYTE PTR [ebx],al
  4118c9:	8b 8e b4 00 00 00    	mov    ecx,DWORD PTR [esi+0xb4]
  4118cf:	33 d2                	xor    edx,edx
  4118d1:	3b ca                	cmp    ecx,edx
  4118d3:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4118d7:	75 04                	jne    0x4118dd
  4118d9:	33 c0                	xor    eax,eax
  4118db:	eb 0b                	jmp    0x4118e8
  4118dd:	8b 86 b8 00 00 00    	mov    eax,DWORD PTR [esi+0xb8]
  4118e3:	2b c1                	sub    eax,ecx
  4118e5:	c1 f8 04             	sar    eax,0x4
  4118e8:	3b c2                	cmp    eax,edx
  4118ea:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  4118ed:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
  4118f0:	89 53 0c             	mov    DWORD PTR [ebx+0xc],edx
  4118f3:	74 36                	je     0x41192b
  4118f5:	c1 e0 04             	shl    eax,0x4
  4118f8:	50                   	push   eax
  4118f9:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4118fc:	e8 ef 06 03 00       	call   0x441ff0
  411901:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  411904:	03 c8                	add    ecx,eax
  411906:	83 c4 04             	add    esp,0x4
  411909:	89 4b 0c             	mov    DWORD PTR [ebx+0xc],ecx
  41190c:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  41190f:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  411912:	8b 8e b8 00 00 00    	mov    ecx,DWORD PTR [esi+0xb8]
  411918:	8b 96 b4 00 00 00    	mov    edx,DWORD PTR [esi+0xb4]
  41191e:	50                   	push   eax
  41191f:	51                   	push   ecx
  411920:	52                   	push   edx
  411921:	8b cb                	mov    ecx,ebx
  411923:	e8 d8 2f 01 00       	call   0x424900
  411928:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  41192b:	8b 96 c0 00 00 00    	mov    edx,DWORD PTR [esi+0xc0]
  411931:	89 97 c0 00 00 00    	mov    DWORD PTR [edi+0xc0],edx

; ==== NPCstructure embedding and copying: [00449820, 00449847) ====
  449820:	55                   	push   ebp
  449821:	8b ec                	mov    ebp,esp
  449823:	53                   	push   ebx
  449824:	56                   	push   esi
  449825:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  449828:	66 8b 46 04          	mov    ax,WORD PTR [esi+0x4]
  44982c:	57                   	push   edi
  44982d:	8b d9                	mov    ebx,ecx
  44982f:	8d 7e 08             	lea    edi,[esi+0x8]
  449832:	8d 4b 08             	lea    ecx,[ebx+0x8]
  449835:	57                   	push   edi
  449836:	66 89 43 04          	mov    WORD PTR [ebx+0x4],ax
  44983a:	c7 03 4c ee 4d 00    	mov    DWORD PTR [ebx],0x4dee4c
  449840:	e8 5b 7e fc ff       	call   0x4116a0
  449845:	66 8b 8f 38 01 00 00 	mov    cx,WORD PTR [edi+0x138]

; ==== NPCstructure initial constructor: [00449AA0, 00449AB8) ====
  449aa0:	56                   	push   esi
  449aa1:	8b f1                	mov    esi,ecx
  449aa3:	8d 4e 08             	lea    ecx,[esi+0x8]
  449aa6:	c7 06 4c ee 4d 00    	mov    DWORD PTR [esi],0x4dee4c
  449aac:	e8 df 89 ff ff       	call   0x442490
  449ab1:	8d 86 50 01 00 00    	lea    eax,[esi+0x150]
  449ab7:	50                   	push   eax

; ==== NPCstructure::OnDeath: table and selected object: [0044A969, 0044AAD5) ====
  44a969:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
  44a96c:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  44a96f:	33 c0                	xor    eax,eax
  44a971:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  44a974:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44a977:	8b 83 bc 00 00 00    	mov    eax,DWORD PTR [ebx+0xbc]
  44a97d:	85 c0                	test   eax,eax
  44a97f:	0f 84 4f 01 00 00    	je     0x44aad4
  44a985:	8b 8b c0 00 00 00    	mov    ecx,DWORD PTR [ebx+0xc0]
  44a98b:	2b c8                	sub    ecx,eax
  44a98d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44a990:	c1 f9 04             	sar    ecx,0x4
  44a993:	3b c1                	cmp    eax,ecx
  44a995:	0f 83 39 01 00 00    	jae    0x44aad4
  44a99b:	8b 9b bc 00 00 00    	mov    ebx,DWORD PTR [ebx+0xbc]
  44a9a1:	68 00 e1 f5 05       	push   0x5f5e100
  44a9a6:	6a 00                	push   0x0
  44a9a8:	b9 34 5e 51 00       	mov    ecx,0x515e34
  44a9ad:	e8 ee e6 00 00       	call   0x4590a0
  44a9b2:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  44a9b5:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
  44a9b8:	db 45 18             	fild   DWORD PTR [ebp+0x18]
  44a9bb:	dd 44 1a 08          	fld    QWORD PTR [edx+ebx*1+0x8]
  44a9bf:	dc 0d c8 f1 4d 00    	fmul   QWORD PTR ds:0x4df1c8
  44a9c5:	de d9                	fcompp
  44a9c7:	df e0                	fnstsw ax
  44a9c9:	f6 c4 41             	test   ah,0x41
  44a9cc:	0f 85 ea 00 00 00    	jne    0x44aabc
  44a9d2:	68 20 01 00 00       	push   0x120
  44a9d7:	e8 14 76 ff ff       	call   0x441ff0
  44a9dc:	83 c4 04             	add    esp,0x4
  44a9df:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
  44a9e2:	85 c0                	test   eax,eax
  44a9e4:	c7 45 fc 06 00 00 00 	mov    DWORD PTR [ebp-0x4],0x6
  44a9eb:	74 0b                	je     0x44a9f8
  44a9ed:	8b c8                	mov    ecx,eax
  44a9ef:	e8 8c 13 00 00       	call   0x44bd80
  44a9f4:	8b d8                	mov    ebx,eax
  44a9f6:	eb 02                	jmp    0x44a9fa
  44a9f8:	33 db                	xor    ebx,ebx
  44a9fa:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  44a9fd:	8b 80 bc 00 00 00    	mov    eax,DWORD PTR [eax+0xbc]
  44aa03:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44aa06:	8b 04 01             	mov    eax,DWORD PTR [ecx+eax*1]
  44aa09:	8b 13                	mov    edx,DWORD PTR [ebx]
  44aa0b:	50                   	push   eax
  44aa0c:	6a 03                	push   0x3
  44aa0e:	8b cb                	mov    ecx,ebx
  44aa10:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  44aa17:	ff 52 18             	call   DWORD PTR [edx+0x18]
  44aa1a:	85 c0                	test   eax,eax
  44aa1c:	0f 84 90 00 00 00    	je     0x44aab2
  44aa22:	8b 47 28             	mov    eax,DWORD PTR [edi+0x28]
  44aa25:	8b 57 38             	mov    edx,DWORD PTR [edi+0x38]
  44aa28:	42                   	inc    edx
  44aa29:	85 c0                	test   eax,eax
  44aa2b:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  44aa2e:	c7 47 40 00 00 00 00 	mov    DWORD PTR [edi+0x40],0x0
  44aa35:	c6 47 34 08          	mov    BYTE PTR [edi+0x34],0x8
  44aa39:	89 47 2c             	mov    DWORD PTR [edi+0x2c],eax
  44aa3c:	89 57 38             	mov    DWORD PTR [edi+0x38],edx
  44aa3f:	6a 0c                	push   0xc
  44aa41:	75 30                	jne    0x44aa73
  44aa43:	e8 a8 75 ff ff       	call   0x441ff0
  44aa48:	33 c9                	xor    ecx,ecx
  44aa4a:	83 c4 04             	add    esp,0x4
  44aa4d:	3b c1                	cmp    eax,ecx
  44aa4f:	74 07                	je     0x44aa58
  44aa51:	89 08                	mov    DWORD PTR [eax],ecx
  44aa53:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  44aa56:	eb 02                	jmp    0x44aa5a
  44aa58:	33 c0                	xor    eax,eax
  44aa5a:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  44aa5d:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  44aa60:	89 47 24             	mov    DWORD PTR [edi+0x24],eax
  44aa63:	89 08                	mov    DWORD PTR [eax],ecx
  44aa65:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  44aa68:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  44aa6b:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  44aa6e:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
  44aa71:	eb 49                	jmp    0x44aabc
  44aa73:	e8 78 75 ff ff       	call   0x441ff0
  44aa78:	83 c4 04             	add    esp,0x4
  44aa7b:	85 c0                	test   eax,eax
  44aa7d:	74 0f                	je     0x44aa8e
  44aa7f:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  44aa85:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  44aa8c:	eb 02                	jmp    0x44aa90
  44aa8e:	33 c0                	xor    eax,eax
  44aa90:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  44aa93:	89 01                	mov    DWORD PTR [ecx],eax
  44aa95:	8b 57 2c             	mov    edx,DWORD PTR [edi+0x2c]
  44aa98:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  44aa9b:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  44aa9e:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  44aaa1:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  44aaa4:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  44aaaa:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  44aaad:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
  44aab0:	eb 0a                	jmp    0x44aabc
  44aab2:	8b 13                	mov    edx,DWORD PTR [ebx]
  44aab4:	8b cb                	mov    ecx,ebx
  44aab6:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  44aabc:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44aabf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44aac2:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
  44aac5:	41                   	inc    ecx
  44aac6:	83 c0 10             	add    eax,0x10
  44aac9:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  44aacc:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44aacf:	e9 a3 fe ff ff       	jmp    0x44a977
  44aad4:	85 f6                	test   esi,esi

; ==== Objects::Objects and vtable: [0044BD80, 0044BDDC) ====
  44bd80:	55                   	push   ebp
  44bd81:	8b ec                	mov    ebp,esp
  44bd83:	51                   	push   ecx
  44bd84:	53                   	push   ebx
  44bd85:	56                   	push   esi
  44bd86:	33 db                	xor    ebx,ebx
  44bd88:	8b f1                	mov    esi,ecx
  44bd8a:	53                   	push   ebx
  44bd8b:	e8 50 ec 03 00       	call   0x48a9e0
  44bd90:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  44bd93:	88 9e 08 01 00 00    	mov    BYTE PTR [esi+0x108],bl
  44bd99:	c7 86 04 01 00 00 01 	mov    DWORD PTR [esi+0x104],0x1
  44bda0:	00 00 00 
  44bda3:	88 86 10 01 00 00    	mov    BYTE PTR [esi+0x110],al
  44bda9:	89 9e 14 01 00 00    	mov    DWORD PTR [esi+0x114],ebx
  44bdaf:	89 9e 18 01 00 00    	mov    DWORD PTR [esi+0x118],ebx
  44bdb5:	89 9e 1c 01 00 00    	mov    DWORD PTR [esi+0x11c],ebx
  44bdbb:	89 9e 0c 01 00 00    	mov    DWORD PTR [esi+0x10c],ebx
  44bdc1:	66 89 9e 0a 01 00 00 	mov    WORD PTR [esi+0x10a],bx
  44bdc8:	c7 06 e0 f1 4d 00    	mov    DWORD PTR [esi],0x4df1e0
  44bdce:	c7 46 30 d0 f1 4d 00 	mov    DWORD PTR [esi+0x30],0x4df1d0
  44bdd5:	8b c6                	mov    eax,esi
  44bdd7:	5e                   	pop    esi
  44bdd8:	5b                   	pop    ebx
  44bdd9:	8b e5                	mov    esp,ebp
  44bddb:	5d                   	pop    ebp

; ==== Objects::Create and delegated registry lookup: [0044C070, 0044C089) ====
  44c070:	55                   	push   ebp
  44c071:	8b ec                	mov    ebp,esp
  44c073:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  44c076:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  44c079:	50                   	push   eax
  44c07a:	52                   	push   edx
  44c07b:	e8 40 f0 03 00       	call   0x48b0c0
  44c080:	f7 d8                	neg    eax
  44c082:	1b c0                	sbb    eax,eax
  44c084:	f7 d8                	neg    eax
  44c086:	5d                   	pop    ebp
  44c087:	c2 08 00             	ret    0x8

; ==== Runtime object registry and identifier: [0048B0C0, 0048B14D) ====
  48b0c0:	55                   	push   ebp
  48b0c1:	8b ec                	mov    ebp,esp
  48b0c3:	53                   	push   ebx
  48b0c4:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  48b0c7:	56                   	push   esi
  48b0c8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  48b0cb:	8b 04 b5 f4 63 51 00 	mov    eax,DWORD PTR [esi*4+0x5163f4]
  48b0d2:	57                   	push   edi
  48b0d3:	33 ff                	xor    edi,edi
  48b0d5:	3b c7                	cmp    eax,edi
  48b0d7:	75 11                	jne    0x48b0ea
  48b0d9:	83 fb 01             	cmp    ebx,0x1
  48b0dc:	74 0c                	je     0x48b0ea
  48b0de:	89 79 74             	mov    DWORD PTR [ecx+0x74],edi
  48b0e1:	5f                   	pop    edi
  48b0e2:	5e                   	pop    esi
  48b0e3:	33 c0                	xor    eax,eax
  48b0e5:	5b                   	pop    ebx
  48b0e6:	5d                   	pop    ebp
  48b0e7:	c2 08 00             	ret    0x8
  48b0ea:	a1 04 db 50 00       	mov    eax,ds:0x50db04
  48b0ef:	83 f8 ff             	cmp    eax,0xffffffff
  48b0f2:	75 05                	jne    0x48b0f9
  48b0f4:	b8 00 00 20 00       	mov    eax,0x200000
  48b0f9:	8b d0                	mov    edx,eax
  48b0fb:	40                   	inc    eax
  48b0fc:	a3 04 db 50 00       	mov    ds:0x50db04,eax
  48b101:	8b 01                	mov    eax,DWORD PTR [ecx]
  48b103:	57                   	push   edi
  48b104:	89 51 78             	mov    DWORD PTR [ecx+0x78],edx
  48b107:	8d 55 0c             	lea    edx,[ebp+0xc]
  48b10a:	52                   	push   edx
  48b10b:	57                   	push   edi
  48b10c:	57                   	push   edi
  48b10d:	51                   	push   ecx
  48b10e:	6a 06                	push   0x6
  48b110:	88 59 73             	mov    BYTE PTR [ecx+0x73],bl
  48b113:	89 71 74             	mov    DWORD PTR [ecx+0x74],esi
  48b116:	66 89 71 7c          	mov    WORD PTR [ecx+0x7c],si
  48b11a:	c6 45 0c 01          	mov    BYTE PTR [ebp+0xc],0x1
  48b11e:	ff 50 24             	call   DWORD PTR [eax+0x24]
  48b121:	85 c0                	test   eax,eax
  48b123:	74 21                	je     0x48b146
  48b125:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  48b128:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
  48b12b:	81 e7 ff 00 00 00    	and    edi,0xff
  48b131:	84 c0                	test   al,al
  48b133:	75 11                	jne    0x48b146
  48b135:	53                   	push   ebx
  48b136:	56                   	push   esi
  48b137:	68 08 dc 50 00       	push   0x50dc08
  48b13c:	6a 04                	push   0x4
  48b13e:	e8 fd 6b fe ff       	call   0x471d40
  48b143:	83 c4 10             	add    esp,0x10
  48b146:	8b c7                	mov    eax,edi
  48b148:	5f                   	pop    edi
  48b149:	5e                   	pop    esi
  48b14a:	5b                   	pop    ebx
  48b14b:	5d                   	pop    ebp
  48b14c:	c2 08 00             	ret    0x8

; ==== Creatures::Death: callback receives local list: [00432519, 0043258E) ====
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
  43258c:	0f 84 18 02 00 00    	je     0x4327aa

; ==== Creatures::Death: loop and deposits: [004325DF, 00432627) ====
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

; ==== Creatures::Death: deposit, popup and cleanup: [004326D3, 00432791) ====
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

; ==== WorldMap::deposit_unit: [004AF110, 004AF170) ====
  4af110:	55                   	push   ebp
  4af111:	8b ec                	mov    ebp,esp
  4af113:	6a ff                	push   0xffffffff
  4af115:	68 cb c6 4d 00       	push   0x4dc6cb
  4af11a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4af120:	50                   	push   eax
  4af121:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4af128:	83 ec 08             	sub    esp,0x8
  4af12b:	53                   	push   ebx
  4af12c:	56                   	push   esi
  4af12d:	8b f1                	mov    esi,ecx
  4af12f:	8b 06                	mov    eax,DWORD PTR [esi]
  4af131:	57                   	push   edi
  4af132:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4af135:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  4af138:	8b 11                	mov    edx,DWORD PTR [ecx]
  4af13a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4af13d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4af140:	8b 7e 28             	mov    edi,DWORD PTR [esi+0x28]
  4af143:	83 ec 0c             	sub    esp,0xc
  4af146:	8b c4                	mov    eax,esp
  4af148:	89 18                	mov    DWORD PTR [eax],ebx
  4af14a:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4af14d:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  4af150:	89 7d 10             	mov    DWORD PTR [ebp+0x10],edi
  4af153:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
  4af156:	ff 52 20             	call   DWORD PTR [edx+0x20]
  4af159:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4af15c:	83 ec 0c             	sub    esp,0xc
  4af15f:	8b d4                	mov    edx,esp
  4af161:	89 1a                	mov    DWORD PTR [edx],ebx
  4af163:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  4af166:	8b ce                	mov    ecx,esi
  4af168:	89 7a 08             	mov    DWORD PTR [edx+0x8],edi
  4af16b:	e8 f0 2a 00 00       	call   0x4b1c60
