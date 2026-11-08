; PASSE 40, recherche statique du serveur ; SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Toute instruction presente ci-dessous a ete confrontee a .text du binaire fourni.
; Les stops sont exclusifs; la selection est liee au travail de lecture des fonctions.

; Flux de la seconde liste et transfert des objets au conteneur des sorts
; 0x004A8CF5..0x004A8DA8 exclusif
  4a8cf5:	e8 86 0e ff ff       	call   0x499b80
  4a8cfa:	39 5d d8             	cmp    DWORD PTR [ebp-0x28],ebx
  4a8cfd:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
  4a8d00:	76 6a                	jbe    0x4a8d6c
  4a8d02:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4a8d05:	8b 57 10             	mov    edx,DWORD PTR [edi+0x10]
  4a8d08:	51                   	push   ecx
  4a8d09:	52                   	push   edx
  4a8d0a:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  4a8d10:	e8 fb f3 ff ff       	call   0x4a8110
  4a8d15:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4a8d18:	50                   	push   eax
  4a8d19:	56                   	push   esi
  4a8d1a:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  4a8d20:	c6 45 fc 0e          	mov    BYTE PTR [ebp-0x4],0xe
  4a8d24:	e8 e7 f4 ff ff       	call   0x4a8210
  4a8d29:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  4a8d2f:	51                   	push   ecx
  4a8d30:	51                   	push   ecx
  4a8d31:	54                   	push   esp
  4a8d32:	8d 8d f8 fe ff ff    	lea    ecx,[ebp-0x108]
  4a8d38:	e8 53 10 00 00       	call   0x4a9d90
  4a8d3d:	8d 95 e0 fe ff ff    	lea    edx,[ebp-0x120]
  4a8d43:	52                   	push   edx
  4a8d44:	8d 8d f8 fe ff ff    	lea    ecx,[ebp-0x108]
  4a8d4a:	e8 81 11 00 00       	call   0x4a9ed0
  4a8d4f:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  4a8d55:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  4a8d59:	e8 42 f4 ff ff       	call   0x4a81a0
  4a8d5e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a8d61:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  4a8d64:	40                   	inc    eax
  4a8d65:	3b c1                	cmp    eax,ecx
  4a8d67:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4a8d6a:	72 96                	jb     0x4a8d02
  4a8d6c:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
  4a8d6f:	8d 8d e8 fe ff ff    	lea    ecx,[ebp-0x118]
  4a8d75:	51                   	push   ecx
  4a8d76:	51                   	push   ecx
  4a8d77:	83 c7 18             	add    edi,0x18
  4a8d7a:	54                   	push   esp
  4a8d7b:	8b cf                	mov    ecx,edi
  4a8d7d:	88 85 08 ff ff ff    	mov    BYTE PTR [ebp-0xf8],al
  4a8d83:	e8 18 10 00 00       	call   0x4a9da0
  4a8d88:	8d 95 dc fe ff ff    	lea    edx,[ebp-0x124]
  4a8d8e:	52                   	push   edx
  4a8d8f:	8b cf                	mov    ecx,edi
  4a8d91:	e8 0a 12 00 00       	call   0x4a9fa0
  4a8d96:	6a 01                	push   0x1
  4a8d98:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4a8d9b:	c7 45 fc 18 00 00 00 	mov    DWORD PTR [ebp-0x4],0x18
  4a8da2:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514

; Lecture suivante: nettoyage puis boucle du compteur d elements
; 0x004A8EBB..0x004A8F8F exclusif
  4a8ebb:	8b bd fc fe ff ff    	mov    edi,DWORD PTR [ebp-0x104]
  4a8ec1:	3b fb                	cmp    edi,ebx
  4a8ec3:	89 9d 14 ff ff ff    	mov    DWORD PTR [ebp-0xec],ebx
  4a8ec9:	89 9d 18 ff ff ff    	mov    DWORD PTR [ebp-0xe8],ebx
  4a8ecf:	89 9d 1c ff ff ff    	mov    DWORD PTR [ebp-0xe4],ebx
  4a8ed5:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  4a8ed9:	74 2d                	je     0x4a8f08
  4a8edb:	8b 85 00 ff ff ff    	mov    eax,DWORD PTR [ebp-0x100]
  4a8ee1:	3b f8                	cmp    edi,eax
  4a8ee3:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4a8ee6:	74 17                	je     0x4a8eff
  4a8ee8:	8b 07                	mov    eax,DWORD PTR [edi]
  4a8eea:	53                   	push   ebx
  4a8eeb:	8b cf                	mov    ecx,edi
  4a8eed:	ff 10                	call   DWORD PTR [eax]
  4a8eef:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a8ef2:	83 c7 1c             	add    edi,0x1c
  4a8ef5:	3b f8                	cmp    edi,eax
  4a8ef7:	75 ef                	jne    0x4a8ee8
  4a8ef9:	8b bd fc fe ff ff    	mov    edi,DWORD PTR [ebp-0x104]
  4a8eff:	57                   	push   edi
  4a8f00:	e8 5b 91 f9 ff       	call   0x442060
  4a8f05:	83 c4 04             	add    esp,0x4
  4a8f08:	8b bd ec fe ff ff    	mov    edi,DWORD PTR [ebp-0x114]
  4a8f0e:	3b fb                	cmp    edi,ebx
  4a8f10:	89 9d fc fe ff ff    	mov    DWORD PTR [ebp-0x104],ebx
  4a8f16:	89 9d 00 ff ff ff    	mov    DWORD PTR [ebp-0x100],ebx
  4a8f1c:	89 9d 04 ff ff ff    	mov    DWORD PTR [ebp-0xfc],ebx
  4a8f22:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4a8f29:	74 2d                	je     0x4a8f58
  4a8f2b:	8b 85 f0 fe ff ff    	mov    eax,DWORD PTR [ebp-0x110]
  4a8f31:	3b f8                	cmp    edi,eax
  4a8f33:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4a8f36:	74 17                	je     0x4a8f4f
  4a8f38:	8b 17                	mov    edx,DWORD PTR [edi]
  4a8f3a:	53                   	push   ebx
  4a8f3b:	8b cf                	mov    ecx,edi
  4a8f3d:	ff 12                	call   DWORD PTR [edx]
  4a8f3f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a8f42:	83 c7 2c             	add    edi,0x2c
  4a8f45:	3b f8                	cmp    edi,eax
  4a8f47:	75 ef                	jne    0x4a8f38
  4a8f49:	8b bd ec fe ff ff    	mov    edi,DWORD PTR [ebp-0x114]
  4a8f4f:	57                   	push   edi
  4a8f50:	e8 0b 91 f9 ff       	call   0x442060
  4a8f55:	83 c4 04             	add    esp,0x4
  4a8f58:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  4a8f5b:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  4a8f5e:	40                   	inc    eax
  4a8f5f:	3b c1                	cmp    eax,ecx
  4a8f61:	89 9d ec fe ff ff    	mov    DWORD PTR [ebp-0x114],ebx
  4a8f67:	89 9d f0 fe ff ff    	mov    DWORD PTR [ebp-0x110],ebx
  4a8f6d:	89 9d f4 fe ff ff    	mov    DWORD PTR [ebp-0x10c],ebx
  4a8f73:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  4a8f76:	0f 82 f0 f8 ff ff    	jb     0x4a886c
  4a8f7c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a8f7f:	5f                   	pop    edi
  4a8f80:	5e                   	pop    esi
  4a8f81:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a8f88:	5b                   	pop    ebx
  4a8f89:	8b e5                	mov    esp,ebp
  4a8f8b:	5d                   	pop    ebp
  4a8f8c:	c2 08 00             	ret    0x8

; Extraction du pointeur de fin du vecteur des sorts
; 0x004A9DA0..0x004A9DAD exclusif
  4a9da0:	55                   	push   ebp
  4a9da1:	8b ec                	mov    ebp,esp
  4a9da3:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4a9da6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a9da9:	89 08                	mov    DWORD PTR [eax],ecx
  4a9dab:	5d                   	pop    ebp
  4a9dac:	c2                   	.byte 0xc2

; Insertion dans le vecteur des sorts avec pas de 0xE4 octets
; 0x004A9FA0..0x004AA017 exclusif
  4a9fa0:	55                   	push   ebp
  4a9fa1:	8b ec                	mov    ebp,esp
  4a9fa3:	56                   	push   esi
  4a9fa4:	57                   	push   edi
  4a9fa5:	8b f9                	mov    edi,ecx
  4a9fa7:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  4a9faa:	85 f6                	test   esi,esi
  4a9fac:	74 1a                	je     0x4a9fc8
  4a9fae:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4a9fb1:	2b ce                	sub    ecx,esi
  4a9fb3:	b8 ef 23 b8 8f       	mov    eax,0x8fb823ef
  4a9fb8:	f7 e9                	imul   ecx
  4a9fba:	03 d1                	add    edx,ecx
  4a9fbc:	c1 fa 07             	sar    edx,0x7
  4a9fbf:	8b c2                	mov    eax,edx
  4a9fc1:	c1 e8 1f             	shr    eax,0x1f
  4a9fc4:	03 d0                	add    edx,eax
  4a9fc6:	75 04                	jne    0x4a9fcc
  4a9fc8:	33 f6                	xor    esi,esi
  4a9fca:	eb 1a                	jmp    0x4a9fe6
  4a9fcc:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4a9fcf:	2b ce                	sub    ecx,esi
  4a9fd1:	b8 ef 23 b8 8f       	mov    eax,0x8fb823ef
  4a9fd6:	f7 e9                	imul   ecx
  4a9fd8:	03 d1                	add    edx,ecx
  4a9fda:	c1 fa 07             	sar    edx,0x7
  4a9fdd:	8b ca                	mov    ecx,edx
  4a9fdf:	c1 e9 1f             	shr    ecx,0x1f
  4a9fe2:	03 d1                	add    edx,ecx
  4a9fe4:	8b f2                	mov    esi,edx
  4a9fe6:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4a9fe9:	52                   	push   edx
  4a9fea:	6a 01                	push   0x1
  4a9fec:	51                   	push   ecx
  4a9fed:	8d 45 0c             	lea    eax,[ebp+0xc]
  4a9ff0:	8b cc                	mov    ecx,esp
  4a9ff2:	50                   	push   eax
  4a9ff3:	e8 28 00 00 00       	call   0x4aa020
  4a9ff8:	8b cf                	mov    ecx,edi
  4a9ffa:	e8 31 09 00 00       	call   0x4aa930
  4a9fff:	8d 0c f6             	lea    ecx,[esi+esi*8]
  4aa002:	8d 04 4e             	lea    eax,[esi+ecx*2]
  4aa005:	8d 14 40             	lea    edx,[eax+eax*2]
  4aa008:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  4aa00b:	8d 0c 90             	lea    ecx,[eax+edx*4]
  4aa00e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4aa011:	5f                   	pop    edi
  4aa012:	89 08                	mov    DWORD PTR [eax],ecx
  4aa014:	5e                   	pop    esi
  4aa015:	5d                   	pop    ebp
  4aa016:	c2                   	.byte 0xc2

; Initialisation des structures de copie de 0xE4 octets
; 0x004AA930..0x004AAA60 exclusif
  4aa930:	55                   	push   ebp
  4aa931:	8b ec                	mov    ebp,esp
  4aa933:	6a ff                	push   0xffffffff
  4aa935:	68 f7 c2 4d 00       	push   0x4dc2f7
  4aa93a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4aa940:	50                   	push   eax
  4aa941:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4aa948:	81 ec 1c 01 00 00    	sub    esp,0x11c
  4aa94e:	53                   	push   ebx
  4aa94f:	56                   	push   esi
  4aa950:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4aa953:	57                   	push   edi
  4aa954:	8b f9                	mov    edi,ecx
  4aa956:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
  4aa959:	56                   	push   esi
  4aa95a:	8d 8d 04 ff ff ff    	lea    ecx,[ebp-0xfc]
  4aa960:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
  4aa963:	e8 c8 07 00 00       	call   0x4ab130
  4aa968:	8d 46 10             	lea    eax,[esi+0x10]
  4aa96b:	50                   	push   eax
  4aa96c:	8d 8d 14 ff ff ff    	lea    ecx,[ebp-0xec]
  4aa972:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4aa979:	e8 b2 09 00 00       	call   0x4ab330
  4aa97e:	8a 4e 20             	mov    cl,BYTE PTR [esi+0x20]
  4aa981:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  4aa984:	8d 46 28             	lea    eax,[esi+0x28]
  4aa987:	88 8d 24 ff ff ff    	mov    BYTE PTR [ebp-0xdc],cl
  4aa98d:	50                   	push   eax
  4aa98e:	8d 8d 2c ff ff ff    	lea    ecx,[ebp-0xd4]
  4aa994:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4aa998:	89 95 28 ff ff ff    	mov    DWORD PTR [ebp-0xd8],edx
  4aa99e:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  4aa9a4:	8d 4e 38             	lea    ecx,[esi+0x38]
  4aa9a7:	51                   	push   ecx
  4aa9a8:	8d 8d 3c ff ff ff    	lea    ecx,[ebp-0xc4]
  4aa9ae:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4aa9b2:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  4aa9b8:	8d 56 48             	lea    edx,[esi+0x48]
  4aa9bb:	52                   	push   edx
  4aa9bc:	8d 8d 4c ff ff ff    	lea    ecx,[ebp-0xb4]
  4aa9c2:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  4aa9c6:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  4aa9cc:	8d 46 58             	lea    eax,[esi+0x58]
  4aa9cf:	50                   	push   eax
  4aa9d0:	8d 8d 5c ff ff ff    	lea    ecx,[ebp-0xa4]
  4aa9d6:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  4aa9da:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  4aa9e0:	8d 4e 68             	lea    ecx,[esi+0x68]
  4aa9e3:	51                   	push   ecx
  4aa9e4:	8d 8d 6c ff ff ff    	lea    ecx,[ebp-0x94]
  4aa9ea:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  4aa9ee:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  4aa9f4:	8d 56 78             	lea    edx,[esi+0x78]
  4aa9f7:	52                   	push   edx
  4aa9f8:	8d 8d 7c ff ff ff    	lea    ecx,[ebp-0x84]
  4aa9fe:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  4aaa02:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  4aaa08:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [esi+0x88]
  4aaa0e:	8d 8e 8c 00 00 00    	lea    ecx,[esi+0x8c]
  4aaa14:	51                   	push   ecx
  4aaa15:	8d 4d 90             	lea    ecx,[ebp-0x70]
  4aaa18:	c6 45 fc 07          	mov    BYTE PTR [ebp-0x4],0x7
  4aaa1c:	89 45 8c             	mov    DWORD PTR [ebp-0x74],eax
  4aaa1f:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  4aaa25:	8b 96 9c 00 00 00    	mov    edx,DWORD PTR [esi+0x9c]
  4aaa2b:	8b 86 a0 00 00 00    	mov    eax,DWORD PTR [esi+0xa0]
  4aaa31:	8b 8e a4 00 00 00    	mov    ecx,DWORD PTR [esi+0xa4]
  4aaa37:	89 55 a0             	mov    DWORD PTR [ebp-0x60],edx
  4aaa3a:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
  4aaa40:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
  4aaa43:	8b 86 ac 00 00 00    	mov    eax,DWORD PTR [esi+0xac]
  4aaa49:	89 4d a8             	mov    DWORD PTR [ebp-0x58],ecx
  4aaa4c:	8b 8e b0 00 00 00    	mov    ecx,DWORD PTR [esi+0xb0]
  4aaa52:	89 55 ac             	mov    DWORD PTR [ebp-0x54],edx
  4aaa55:	8b 96 b4 00 00 00    	mov    edx,DWORD PTR [esi+0xb4]
  4aaa5b:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  4aaa5e:	8b                   	.byte 0x8b
  4aaa5f:	86                   	.byte 0x86

