; Passe 38, analyse statique de T4C Server(1).exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses x86, cote stop exclusif; preuves selectionnees pour des contrats documentes, pas des dumps aveugles.

; Unit::RemoveEffect: verrou acquisition  [0x48C930,0x48C95C)  18 instructions
  48c930:	55                   	push   ebp
  48c931:	8b ec                	mov    ebp,esp
  48c933:	51                   	push   ecx
  48c934:	53                   	push   ebx
  48c935:	56                   	push   esi
  48c936:	57                   	push   edi
  48c937:	8b f9                	mov    edi,ecx
  48c939:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  48c93c:	8d 77 30             	lea    esi,[edi+0x30]
  48c93f:	8b ce                	mov    ecx,esi
  48c941:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  48c944:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48c947:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48c94d:	33 db                	xor    ebx,ebx
  48c94f:	3b cb                	cmp    ecx,ebx
  48c951:	0f 84 66 01 00 00    	je     0x48cabd
  48c957:	8b 11                	mov    edx,DWORD PTR [ecx]
  48c959:	ff 52 04             	call   DWORD PTR [edx+0x4]

; Unit::RemoveEffect: recherche et callback 9 sous verrou  [0x48C994,0x48C9D2)  25 instructions
  48c994:	8b 97 f4 00 00 00    	mov    edx,DWORD PTR [edi+0xf4]
  48c99a:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48c99d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  48c9a0:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48c9a3:	39 48 04             	cmp    DWORD PTR [eax+0x4],ecx
  48c9a6:	75 c7                	jne    0x48c96f
  48c9a8:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48c9ab:	3b cb                	cmp    ecx,ebx
  48c9ad:	74 13                	je     0x48c9c2
  48c9af:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  48c9b2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48c9b5:	53                   	push   ebx
  48c9b6:	52                   	push   edx
  48c9b7:	53                   	push   ebx
  48c9b8:	53                   	push   ebx
  48c9b9:	57                   	push   edi
  48c9ba:	50                   	push   eax
  48c9bb:	6a 09                	push   0x9
  48c9bd:	ff d1                	call   ecx
  48c9bf:	83 c4 1c             	add    esp,0x1c
  48c9c2:	8b b7 f4 00 00 00    	mov    esi,DWORD PTR [edi+0xf4]
  48c9c8:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  48c9cb:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48c9ce:	48                   	dec    eax
  48c9cf:	89 46 38             	mov    DWORD PTR [esi+0x38],eax

; Unit::RemoveEffect: fin de parcours, deverrouillage  [0x48CA8B,0x48CACB)  25 instructions
  48ca8b:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48ca8e:	74 04                	je     0x48ca94
  48ca90:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48ca94:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48ca97:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48ca9d:	8b 11                	mov    edx,DWORD PTR [ecx]
  48ca9f:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48caa2:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48caa8:	39 59 38             	cmp    DWORD PTR [ecx+0x38],ebx
  48caab:	75 10                	jne    0x48cabd
  48caad:	3b cb                	cmp    ecx,ebx
  48caaf:	74 06                	je     0x48cab7
  48cab1:	8b 01                	mov    eax,DWORD PTR [ecx]
  48cab3:	6a 01                	push   0x1
  48cab5:	ff 10                	call   DWORD PTR [eax]
  48cab7:	89 9f f4 00 00 00    	mov    DWORD PTR [edi+0xf4],ebx
  48cabd:	8b 16                	mov    edx,DWORD PTR [esi]
  48cabf:	8b ce                	mov    ecx,esi
  48cac1:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48cac4:	5f                   	pop    edi
  48cac5:	5e                   	pop    esi
  48cac6:	5b                   	pop    ebx
  48cac7:	8b e5                	mov    esp,ebp
  48cac9:	5d                   	pop    ebp
  48caca:	c2                   	.byte 0xc2

; Callback 0x4C7990: code 0x1b et appel Unit::RemoveEffect  [0x4C7A93,0x4C7ABE)  19 instructions
  4c7a93:	66 3d 1b 00          	cmp    ax,0x1b
  4c7a97:	75 25                	jne    0x4c7abe
  4c7a99:	33 c9                	xor    ecx,ecx
  4c7a9b:	66 8b 4e 04          	mov    cx,WORD PTR [esi+0x4]
  4c7a9f:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c7aa2:	51                   	push   ecx
  4c7aa3:	56                   	push   esi
  4c7aa4:	e8 d7 8e f9 ff       	call   0x460980
  4c7aa9:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4c7aac:	83 c4 08             	add    esp,0x8
  4c7aaf:	52                   	push   edx
  4c7ab0:	8b ce                	mov    ecx,esi
  4c7ab2:	e8 79 4e fc ff       	call   0x48c930
  4c7ab7:	5f                   	pop    edi
  4c7ab8:	5e                   	pop    esi
  4c7ab9:	5b                   	pop    ebx
  4c7aba:	8b e5                	mov    esp,ebp
  4c7abc:	5d                   	pop    ebp
  4c7abd:	c3                   	ret

; Callback 0x4C7990: code 0x18, reprise de donnees  [0x4C7AFB,0x4C7BC0)  70 instructions
  4c7afb:	66 3d 18 00          	cmp    ax,0x18
  4c7aff:	0f 85 bb 00 00 00    	jne    0x4c7bc0
  4c7b05:	6a 14                	push   0x14
  4c7b07:	e8 e4 a4 f7 ff       	call   0x441ff0
  4c7b0c:	8b d8                	mov    ebx,eax
  4c7b0e:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4c7b11:	8a 08                	mov    cl,BYTE PTR [eax]
  4c7b13:	83 c4 04             	add    esp,0x4
  4c7b16:	80 f9 10             	cmp    cl,0x10
  4c7b19:	75 2d                	jne    0x4c7b48
  4c7b1b:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  4c7b1e:	8b 06                	mov    eax,DWORD PTR [esi]
  4c7b20:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  4c7b23:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  4c7b26:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  4c7b29:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4c7b2c:	66 89 03             	mov    WORD PTR [ebx],ax
  4c7b2f:	66 8b 45 f2          	mov    ax,WORD PTR [ebp-0xe]
  4c7b33:	89 53 0c             	mov    DWORD PTR [ebx+0xc],edx
  4c7b36:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
  4c7b39:	89 73 10             	mov    DWORD PTR [ebx+0x10],esi
  4c7b3c:	66 89 43 02          	mov    WORD PTR [ebx+0x2],ax
  4c7b40:	66 c7 43 04 00 00    	mov    WORD PTR [ebx+0x4],0x0
  4c7b46:	eb 63                	jmp    0x4c7bab
  4c7b48:	80 f9 14             	cmp    cl,0x14
  4c7b4b:	75 48                	jne    0x4c7b95
  4c7b4d:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  4c7b50:	b9 05 00 00 00       	mov    ecx,0x5
  4c7b55:	8b fb                	mov    edi,ebx
  4c7b57:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  4c7b59:	33 c9                	xor    ecx,ecx
  4c7b5b:	66 8b 4b 04          	mov    cx,WORD PTR [ebx+0x4]
  4c7b5f:	51                   	push   ecx
  4c7b60:	e8 cb a6 f9 ff       	call   0x462230
  4c7b65:	83 c4 04             	add    esp,0x4
  4c7b68:	85 c0                	test   eax,eax
  4c7b6a:	74 3f                	je     0x4c7bab
  4c7b6c:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  4c7b6f:	50                   	push   eax
  4c7b70:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  4c7b73:	50                   	push   eax
  4c7b74:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  4c7b77:	33 d2                	xor    edx,edx
  4c7b79:	66 8b 53 04          	mov    dx,WORD PTR [ebx+0x4]
  4c7b7d:	8d 04 80             	lea    eax,[eax+eax*4]
  4c7b80:	8d 0c 80             	lea    ecx,[eax+eax*4]
  4c7b83:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c7b86:	d1 e1                	shl    ecx,1
  4c7b88:	51                   	push   ecx
  4c7b89:	52                   	push   edx
  4c7b8a:	50                   	push   eax
  4c7b8b:	e8 90 8c f9 ff       	call   0x460820
  4c7b90:	83 c4 14             	add    esp,0x14
  4c7b93:	eb 16                	jmp    0x4c7bab
  4c7b95:	81 e1 ff 00 00 00    	and    ecx,0xff
  4c7b9b:	51                   	push   ecx
  4c7b9c:	68 84 02 51 00       	push   0x510284
  4c7ba1:	6a 04                	push   0x4
  4c7ba3:	e8 98 a1 fa ff       	call   0x471d40
  4c7ba8:	83 c4 0c             	add    esp,0xc
  4c7bab:	e8 e0 a6 fa ff       	call   0x472290
  4c7bb0:	01 43 10             	add    DWORD PTR [ebx+0x10],eax
  4c7bb3:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c7bb6:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  4c7bb9:	5f                   	pop    edi
  4c7bba:	5e                   	pop    esi
  4c7bbb:	5b                   	pop    ebx
  4c7bbc:	8b e5                	mov    esp,ebp
  4c7bbe:	5d                   	pop    ebp
  4c7bbf:	c3                   	ret

; Unit::SendGlobalEffectMessage: relache verrou avant callbacks  [0x48D06A,0x48D0D0)  33 instructions
  48d06a:	d2 8a d3 57 56 50    	ror    BYTE PTR [edx+0x505657d3],cl
  48d070:	52                   	push   edx
  48d071:	ff d1                	call   ecx
  48d073:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  48d076:	83 c4 1c             	add    esp,0x1c
  48d079:	eb ac                	jmp    0x48d027
  48d07b:	3b cf                	cmp    ecx,edi
  48d07d:	74 04                	je     0x48d083
  48d07f:	c6 45 e0 07          	mov    BYTE PTR [ebp-0x20],0x7
  48d083:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48d086:	8b 01                	mov    eax,DWORD PTR [ecx]
  48d088:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48d08b:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48d08e:	c7 45 ac 3c f8 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df83c
  48d095:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  48d098:	33 c0                	xor    eax,eax
  48d09a:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  48d0a1:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  48d0a4:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  48d0a7:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48d0ab:	3b c7                	cmp    eax,edi
  48d0ad:	74 07                	je     0x48d0b6
  48d0af:	8b 09                	mov    ecx,DWORD PTR [ecx]
  48d0b1:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  48d0b4:	eb 08                	jmp    0x48d0be
  48d0b6:	b8 01 00 00 00       	mov    eax,0x1
  48d0bb:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  48d0be:	3b cf                	cmp    ecx,edi
  48d0c0:	74 10                	je     0x48d0d2
  48d0c2:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48d0c5:	e8 46 34 00 00       	call   0x490510
  48d0ca:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  48d0cd:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]

; Unit::VerifyTimers: transferts temporaires et codes 5,9  [0x48D58A,0x48D5E9)  42 instructions
  48d58a:	38 de                	cmp    dh,bl
  48d58c:	50                   	push   eax
  48d58d:	00 6a 01             	add    BYTE PTR [edx+0x1],ch
  48d590:	e8 ab 47 fe ff       	call   0x471d40
  48d595:	83 c4 08             	add    esp,0x8
  48d598:	eb c8                	jmp    0x48d562
  48d59a:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  48d59d:	3b c3                	cmp    eax,ebx
  48d59f:	75 11                	jne    0x48d5b2
  48d5a1:	68 f4 dd 50 00       	push   0x50ddf4
  48d5a6:	6a 01                	push   0x1
  48d5a8:	e8 93 47 fe ff       	call   0x471d40
  48d5ad:	83 c4 08             	add    esp,0x8
  48d5b0:	eb b0                	jmp    0x48d562
  48d5b2:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  48d5b5:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  48d5b8:	53                   	push   ebx
  48d5b9:	51                   	push   ecx
  48d5ba:	53                   	push   ebx
  48d5bb:	53                   	push   ebx
  48d5bc:	57                   	push   edi
  48d5bd:	52                   	push   edx
  48d5be:	6a 05                	push   0x5
  48d5c0:	ff d0                	call   eax
  48d5c2:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  48d5c5:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  48d5c8:	53                   	push   ebx
  48d5c9:	50                   	push   eax
  48d5ca:	53                   	push   ebx
  48d5cb:	53                   	push   ebx
  48d5cc:	57                   	push   edi
  48d5cd:	51                   	push   ecx
  48d5ce:	6a 09                	push   0x9
  48d5d0:	ff 56 08             	call   DWORD PTR [esi+0x8]
  48d5d3:	83 c4 38             	add    esp,0x38
  48d5d6:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48d5d9:	e8 22 30 00 00       	call   0x490600
  48d5de:	eb 82                	jmp    0x48d562
  48d5e0:	3b cb                	cmp    ecx,ebx
  48d5e2:	74 04                	je     0x48d5e8
  48d5e4:	c6 45 e0 07          	mov    BYTE PTR [ebp-0x20],0x7
  48d5e8:	8b                   	.byte 0x8b

