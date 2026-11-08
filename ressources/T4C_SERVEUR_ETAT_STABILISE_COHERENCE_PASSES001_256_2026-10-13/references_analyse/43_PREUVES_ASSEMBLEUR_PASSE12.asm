; Preuves directes — T4C Server(1).exe / SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; objdump -d -Mintel; 2026-10-08 ; aucune execution du serveur


; ==== A. PutPlayerInGame : branchement et retours ====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0041e8a0 <.text+0x1d8a0>:
  41e8a0:	55                   	push   ebp
  41e8a1:	8b ec                	mov    ebp,esp
  41e8a3:	83 ec 20             	sub    esp,0x20
  41e8a6:	53                   	push   ebx
  41e8a7:	56                   	push   esi
  41e8a8:	8b f1                	mov    esi,ecx
  41e8aa:	8b 86 48 01 00 00    	mov    eax,DWORD PTR [esi+0x148]
  41e8b0:	85 c0                	test   eax,eax
  41e8b2:	57                   	push   edi
  41e8b3:	0f 84 1d 01 00 00    	je     0x41e9d6
  41e8b9:	8b 06                	mov    eax,DWORD PTR [esi]
  41e8bb:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41e8be:	51                   	push   ecx
  41e8bf:	8b ce                	mov    ecx,esi
  41e8c1:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  41e8c4:	33 d2                	xor    edx,edx
  41e8c6:	66 8b 50 08          	mov    dx,WORD PTR [eax+0x8]
  41e8ca:	52                   	push   edx
  41e8cb:	e8 f0 35 05 00       	call   0x471ec0
  41e8d0:	8b f8                	mov    edi,eax
  41e8d2:	83 c4 04             	add    esp,0x4
  41e8d5:	85 ff                	test   edi,edi
  41e8d7:	89 7d f8             	mov    DWORD PTR [ebp-0x8],edi
  41e8da:	0f 84 e6 00 00 00    	je     0x41e9c6
  41e8e0:	8b 06                	mov    eax,DWORD PTR [esi]
  41e8e2:	6a 00                	push   0x0
  41e8e4:	56                   	push   esi
  41e8e5:	8d 4d e0             	lea    ecx,[ebp-0x20]
  41e8e8:	51                   	push   ecx
  41e8e9:	8b ce                	mov    ecx,esi
  41e8eb:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  41e8ee:	8b 08                	mov    ecx,DWORD PTR [eax]
  41e8f0:	83 ec 0c             	sub    esp,0xc
  41e8f3:	8b d4                	mov    edx,esp
  41e8f5:	89 0a                	mov    DWORD PTR [edx],ecx
  41e8f7:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  41e8fa:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  41e8fd:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  41e900:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  41e903:	8b 16                	mov    edx,DWORD PTR [esi]
  41e905:	8b ce                	mov    ecx,esi
  41e907:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  41e90a:	50                   	push   eax
  41e90b:	6a 01                	push   0x1
  41e90d:	8b cf                	mov    ecx,edi
  41e90f:	e8 ec 15 09 00       	call   0x4aff00
  41e914:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41e917:	8b f8                	mov    edi,eax
  41e919:	8b 06                	mov    eax,DWORD PTR [esi]
  41e91b:	51                   	push   ecx
  41e91c:	8b ce                	mov    ecx,esi
  41e91e:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  41e921:	85 ff                	test   edi,edi
  41e923:	0f 85 a4 00 00 00    	jne    0x41e9cd
  41e929:	33 db                	xor    ebx,ebx
  41e92b:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  41e92e:	85 ff                	test   edi,edi
  41e930:	0f 84 a0 00 00 00    	je     0x41e9d6
  41e936:	83 fb 07             	cmp    ebx,0x7
  41e939:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  41e93c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  41e93f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41e942:	77 36                	ja     0x41e97a
  41e944:	ff 24 9d e0 e9 41 00 	jmp    DWORD PTR [ebx*4+0x41e9e0]
  41e94b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  41e94e:	48                   	dec    eax
  41e94f:	eb 15                	jmp    0x41e966
  41e951:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  41e954:	eb 0f                	jmp    0x41e965
  41e956:	4a                   	dec    edx
  41e957:	eb 0d                	jmp    0x41e966
  41e959:	4a                   	dec    edx
  41e95a:	48                   	dec    eax
  41e95b:	eb 09                	jmp    0x41e966
  41e95d:	42                   	inc    edx
  41e95e:	48                   	dec    eax
  41e95f:	eb 05                	jmp    0x41e966
  41e961:	4a                   	dec    edx
  41e962:	eb 01                	jmp    0x41e965
  41e964:	42                   	inc    edx
  41e965:	40                   	inc    eax
  41e966:	8b 3e                	mov    edi,DWORD PTR [esi]
  41e968:	83 ec 0c             	sub    esp,0xc
  41e96b:	8b dc                	mov    ebx,esp
  41e96d:	89 13                	mov    DWORD PTR [ebx],edx
  41e96f:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  41e972:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
  41e975:	8b ce                	mov    ecx,esi
  41e977:	ff 57 20             	call   DWORD PTR [edi+0x20]
  41e97a:	8b 16                	mov    edx,DWORD PTR [esi]
  41e97c:	6a 00                	push   0x0
  41e97e:	56                   	push   esi
  41e97f:	8d 45 e0             	lea    eax,[ebp-0x20]
  41e982:	50                   	push   eax
  41e983:	8b ce                	mov    ecx,esi
  41e985:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  41e988:	8b 10                	mov    edx,DWORD PTR [eax]
  41e98a:	83 ec 0c             	sub    esp,0xc
  41e98d:	8b cc                	mov    ecx,esp
  41e98f:	89 11                	mov    DWORD PTR [ecx],edx
  41e991:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  41e994:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  41e997:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  41e99a:	8b 16                	mov    edx,DWORD PTR [esi]
  41e99c:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  41e99f:	8b ce                	mov    ecx,esi
  41e9a1:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  41e9a4:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  41e9a7:	50                   	push   eax
  41e9a8:	6a 01                	push   0x1
  41e9aa:	e8 51 15 09 00       	call   0x4aff00
  41e9af:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  41e9b2:	43                   	inc    ebx
  41e9b3:	8b f8                	mov    edi,eax
  41e9b5:	8d 43 01             	lea    eax,[ebx+0x1]
  41e9b8:	83 f8 09             	cmp    eax,0x9
  41e9bb:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  41e9be:	0f 8c 6a ff ff ff    	jl     0x41e92e
  41e9c4:	eb 03                	jmp    0x41e9c9
  41e9c6:	8b 7d f8             	mov    edi,DWORD PTR [ebp-0x8]
  41e9c9:	85 ff                	test   edi,edi
  41e9cb:	74 09                	je     0x41e9d6
  41e9cd:	32 c0                	xor    al,al
  41e9cf:	5f                   	pop    edi
  41e9d0:	5e                   	pop    esi
  41e9d1:	5b                   	pop    ebx
  41e9d2:	8b e5                	mov    esp,ebp
  41e9d4:	5d                   	pop    ebp
  41e9d5:	c3                   	ret
  41e9d6:	5f                   	pop    edi
  41e9d7:	5e                   	pop    esi
  41e9d8:	b0 01                	mov    al,0x1
  41e9da:	5b                   	pop    ebx
  41e9db:	8b e5                	mov    esp,ebp
  41e9dd:	5d                   	pop    ebp
  41e9de:	c3                   	ret

; ==== B. GetWorld : index borne et pointeur ====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00471ec0 <.text+0x70ec0>:
  471ec0:	55                   	push   ebp
  471ec1:	8b ec                	mov    ebp,esp
  471ec3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  471ec6:	8b 0d 38 5e 51 00    	mov    ecx,DWORD PTR ds:0x515e38
  471ecc:	8b 51 50             	mov    edx,DWORD PTR [ecx+0x50]
  471ecf:	25 ff ff 00 00       	and    eax,0xffff
  471ed4:	3b c2                	cmp    eax,edx
  471ed6:	73 0e                	jae    0x471ee6
  471ed8:	8b 49 54             	mov    ecx,DWORD PTR [ecx+0x54]
  471edb:	8d 14 40             	lea    edx,[eax+eax*2]
  471ede:	8d 04 90             	lea    eax,[eax+edx*4]
  471ee1:	8d 04 81             	lea    eax,[ecx+eax*4]
  471ee4:	5d                   	pop    ebp
  471ee5:	c3                   	ret
  471ee6:	33 c0                	xor    eax,eax
  471ee8:	5d                   	pop    ebp
  471ee9:	c3                   	ret

; ==== C. WorldMap::create_world_unit : validation position ====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004aff00 <.text+0xaef00>:
  4aff00:	55                   	push   ebp
  4aff01:	8b ec                	mov    ebp,esp
  4aff03:	6a ff                	push   0xffffffff
  4aff05:	68 51 c7 4d 00       	push   0x4dc751
  4aff0a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4aff10:	50                   	push   eax
  4aff11:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4aff18:	83 ec 08             	sub    esp,0x8
  4aff1b:	53                   	push   ebx
  4aff1c:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  4aff1f:	56                   	push   esi
  4aff20:	33 c0                	xor    eax,eax
  4aff22:	8b f1                	mov    esi,ecx
  4aff24:	66 8b 46 2c          	mov    ax,WORD PTR [esi+0x2c]
  4aff28:	57                   	push   edi
  4aff29:	3b d8                	cmp    ebx,eax
  4aff2b:	0f 8d 00 04 00 00    	jge    0x4b0331
  4aff31:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  4aff34:	33 c9                	xor    ecx,ecx
  4aff36:	66 8b 4e 2e          	mov    cx,WORD PTR [esi+0x2e]
  4aff3a:	3b f9                	cmp    edi,ecx
  4aff3c:	0f 8d ef 03 00 00    	jge    0x4b0331
  4aff42:	8b 16                	mov    edx,DWORD PTR [esi]
  4aff44:	8b ce                	mov    ecx,esi
  4aff46:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4aff49:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  4aff4c:	c1 fb 02             	sar    ebx,0x2
  4aff4f:	c1 e3 02             	shl    ebx,0x2
  4aff52:	8b 0c 03             	mov    ecx,DWORD PTR [ebx+eax*1]
  4aff55:	c1 ff 02             	sar    edi,0x2
  4aff58:	c1 e7 02             	shl    edi,0x2
  4aff5b:	83 3c 39 00          	cmp    DWORD PTR [ecx+edi*1],0x0
  4aff5f:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  4aff62:	75 36                	jne    0x4aff9a
  4aff64:	68                   	.byte 0x68

; ==== D. Callsite connexion : retours, effets et annonces ====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0047b781 <.text+0x7a781>:
  47b781:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b784:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  47b787:	e8 64 a6 00 00       	call   0x485df0
  47b78c:	39 7e 48             	cmp    DWORD PTR [esi+0x48],edi
  47b78f:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  47b793:	0f 84 aa 01 00 00    	je     0x47b943
  47b799:	39 7e 44             	cmp    DWORD PTR [esi+0x44],edi
  47b79c:	0f 85 a1 01 00 00    	jne    0x47b943
  47b7a2:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b7a5:	e8 f6 30 fa ff       	call   0x41e8a0
  47b7aa:	8a d8                	mov    bl,al
  47b7ac:	88 5d 0c             	mov    BYTE PTR [ebp+0xc],bl
  47b7af:	e8 9c 88 fd ff       	call   0x454050
  47b7b4:	56                   	push   esi
  47b7b5:	8b c8                	mov    ecx,eax
  47b7b7:	e8 24 bd fa ff       	call   0x4274e0
  47b7bc:	84 db                	test   bl,bl
  47b7be:	0f 85 f3 00 00 00    	jne    0x47b8b7
  47b7c4:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  47b7c7:	c7 46 44 01 00 00 00 	mov    DWORD PTR [esi+0x44],0x1
  47b7ce:	89 7e 48             	mov    DWORD PTR [esi+0x48],edi
  47b7d1:	88 98 b0 00 00 00    	mov    BYTE PTR [eax+0xb0],bl
  47b7d7:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b7da:	e8 11 32 01 00       	call   0x48e9f0
  47b7df:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b7e2:	8b 01                	mov    eax,DWORD PTR [ecx]
  47b7e4:	57                   	push   edi
  47b7e5:	68 d3 76 00 00       	push   0x76d3
  47b7ea:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  47b7ed:	3b c7                	cmp    eax,edi
  47b7ef:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b7f2:	7e 07                	jle    0x47b7fb
  47b7f4:	e8 07 6f fa ff       	call   0x422700
  47b7f9:	eb 28                	jmp    0x47b823
  47b7fb:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b7fd:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b800:	50                   	push   eax
  47b801:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b804:	8b 10                	mov    edx,DWORD PTR [eax]
  47b806:	6a 01                	push   0x1
  47b808:	83 ec 0c             	sub    esp,0xc
  47b80b:	8b cc                	mov    ecx,esp
  47b80d:	89 11                	mov    DWORD PTR [ecx],edx
  47b80f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  47b812:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47b815:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  47b818:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  47b81b:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b81e:	e8 bd 3f 01 00       	call   0x48f7e0
  47b823:	8d 4d d8             	lea    ecx,[ebp-0x28]
  47b826:	e8 c5 a5 00 00       	call   0x485df0
  47b82b:	57                   	push   edi
  47b82c:	8d 4d d8             	lea    ecx,[ebp-0x28]
  47b82f:	51                   	push   ecx
  47b830:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b833:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  47b837:	e8 64 3d fa ff       	call   0x41f5a0
  47b83c:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b83f:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b841:	8d 45 d8             	lea    eax,[ebp-0x28]
  47b844:	50                   	push   eax
  47b845:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  47b84b:	8d 4d d8             	lea    ecx,[ebp-0x28]
  47b84e:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  47b852:	e8 29 a6 00 00       	call   0x485e80
  47b857:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b85a:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b85c:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  47b85f:	66 3d 1b 27          	cmp    ax,0x271b
  47b863:	74 06                	je     0x47b86b
  47b865:	66 3d 1c 27          	cmp    ax,0x271c
  47b869:	75 4c                	jne    0x47b8b7
  47b86b:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b86e:	8b 01                	mov    eax,DWORD PTR [ecx]
  47b870:	8d 55 c0             	lea    edx,[ebp-0x40]
  47b873:	52                   	push   edx
  47b874:	ff 90 c0 01 00 00    	call   DWORD PTR [eax+0x1c0]
  47b87a:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b87d:	8b 01                	mov    eax,DWORD PTR [ecx]
  47b87f:	ff 90 d0 01 00 00    	call   DWORD PTR [eax+0x1d0]
  47b885:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b888:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b88a:	8b f8                	mov    edi,eax
  47b88c:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b88f:	50                   	push   eax
  47b890:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b893:	57                   	push   edi
  47b894:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b897:	51                   	push   ecx
  47b898:	8b 08                	mov    ecx,DWORD PTR [eax]
  47b89a:	6a 14                	push   0x14
  47b89c:	83 ec 0c             	sub    esp,0xc
  47b89f:	8b d4                	mov    edx,esp
  47b8a1:	89 0a                	mov    DWORD PTR [edx],ecx
  47b8a3:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  47b8a6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47b8a9:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  47b8ac:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  47b8af:	e8 3c 42 f9 ff       	call   0x40faf0
  47b8b4:	83 c4 18             	add    esp,0x18
  47b8b7:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b8ba:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b8bc:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b8bf:	50                   	push   eax

; ==== E. Suites de l appelant : affichage et branchements ====

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0047b8c0 <.text+0x7a8c0>:
  47b8c0:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b8c3:	33 c9                	xor    ecx,ecx
  47b8c5:	66 8b 48 08          	mov    cx,WORD PTR [eax+0x8]
  47b8c9:	51                   	push   ecx
  47b8ca:	e8 f1 65 ff ff       	call   0x471ec0
  47b8cf:	8b f8                	mov    edi,eax
  47b8d1:	83 c4 04             	add    esp,0x4
  47b8d4:	85 ff                	test   edi,edi
  47b8d6:	74 3b                	je     0x47b913
  47b8d8:	8b ce                	mov    ecx,esi
  47b8da:	e8 01 92 fd ff       	call   0x454ae0
  47b8df:	83 e0 02             	and    eax,0x2
  47b8e2:	33 c9                	xor    ecx,ecx
  47b8e4:	0b c1                	or     eax,ecx
  47b8e6:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
  47b8e9:	75 28                	jne    0x47b913
  47b8eb:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b8ee:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b8f0:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b8f3:	50                   	push   eax
  47b8f4:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b8f7:	8b 10                	mov    edx,DWORD PTR [eax]
  47b8f9:	83 ec 0c             	sub    esp,0xc
  47b8fc:	8b cc                	mov    ecx,esp
  47b8fe:	89 11                	mov    DWORD PTR [ecx],edx
  47b900:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  47b903:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47b906:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  47b909:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  47b90c:	8b cf                	mov    ecx,edi
  47b90e:	e8 dd 6c 03 00       	call   0x4b25f0
  47b913:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b916:	e8 a5 a5 00 00       	call   0x485ec0
  47b91b:	6a 2e                	push   0x2e
  47b91d:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b920:	e8 2b a8 00 00       	call   0x486150
  47b925:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  47b928:	51                   	push   ecx
  47b929:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b92c:	e8 7f a8 00 00       	call   0x4861b0
  47b931:	85 ff                	test   edi,edi
  47b933:	0f 84 8f 00 00 00    	je     0x47b9c8
  47b939:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b93c:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b93e:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b941:	eb 4c                	jmp    0x47b98f
  47b943:	6a 2e                	push   0x2e
  47b945:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b948:	e8 03 a8 00 00       	call   0x486150
  47b94d:	6a 01                	push   0x1
  47b94f:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b952:	e8 59 a8 00 00       	call   0x4861b0
  47b957:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b95a:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b95c:	8d 45 c0             	lea    eax,[ebp-0x40]
  47b95f:	50                   	push   eax
  47b960:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  47b966:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b969:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b96b:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b96e:	50                   	push   eax
  47b96f:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b972:	33 c9                	xor    ecx,ecx
  47b974:	66 8b 48 08          	mov    cx,WORD PTR [eax+0x8]
  47b978:	51                   	push   ecx
  47b979:	e8 42 65 ff ff       	call   0x471ec0
  47b97e:	8b f8                	mov    edi,eax
  47b980:	83 c4 04             	add    esp,0x4
  47b983:	85 ff                	test   edi,edi
  47b985:	74 41                	je     0x47b9c8
  47b987:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b98a:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b98c:	8d 45 e4             	lea    eax,[ebp-0x1c]
  47b98f:	50                   	push   eax
  47b990:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47b993:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b996:	51                   	push   ecx
  47b997:	6a 14                	push   0x14
  47b999:	8d 55 c0             	lea    edx,[ebp-0x40]
  47b99c:	52                   	push   edx
  47b99d:	8b 10                	mov    edx,DWORD PTR [eax]
  47b99f:	83 ec 0c             	sub    esp,0xc
  47b9a2:	8b cc                	mov    ecx,esp
  47b9a4:	89 11                	mov    DWORD PTR [ecx],edx
  47b9a6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  47b9a9:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47b9ac:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  47b9af:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  47b9b2:	8b cf                	mov    ecx,edi
  47b9b4:	e8 87 52 03 00       	call   0x4b0c40
  47b9b9:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47b9bc:	8b 11                	mov    edx,DWORD PTR [ecx]
  47b9be:	8d 45 c0             	lea    eax,[ebp-0x40]
  47b9c1:	50                   	push   eax
  47b9c2:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  47b9c8:	8d 4d c0             	lea    ecx,[ebp-0x40]
  47b9cb:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  47b9cf:	e8 ac a4 00 00       	call   0x485e80
  47b9d4:	8b                   	.byte 0x8b

; Bytes TABLE [0x41E9E0..0x41E9FF] little endian = 4b e9 41 00 51 e9 41 00 56 e9 41 00 56 e9 41 00 59 e9 41 00 5d e9 41 00 61 e9 41 00 64 e9 41 00
