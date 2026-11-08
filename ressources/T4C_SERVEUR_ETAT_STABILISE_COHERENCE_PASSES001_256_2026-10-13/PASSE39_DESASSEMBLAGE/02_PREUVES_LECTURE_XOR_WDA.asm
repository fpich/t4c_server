; Passe 39 — T4C Server(1).exe; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque ligne d instruction est verifiee octet par octet contre .text.
; Les plages sont selectives et liees aux conclusions documentees; stop exclusif.

; Initialisation de la table de 0xD5A octets, graine fixe et production pseudoaleatoire
; Plage 0x004993A0..0x004993DC (stop exclusif)
  4993a0:	55                   	push   ebp
  4993a1:	8b ec                	mov    ebp,esp
  4993a3:	51                   	push   ecx
  4993a4:	56                   	push   esi
  4993a5:	57                   	push   edi
  4993a6:	6a 00                	push   0x0
  4993a8:	68 7e 5b 00 00       	push   0x5b7e
  4993ad:	8b f9                	mov    edi,ecx
  4993af:	e8 4c fd fb ff       	call   0x459100
  4993b4:	83 c4 08             	add    esp,0x8
  4993b7:	33 f6                	xor    esi,esi
  4993b9:	68 ff 00 00 00       	push   0xff
  4993be:	6a 00                	push   0x0
  4993c0:	8d 4d fc             	lea    ecx,[ebp-0x4]
  4993c3:	e8 d8 fc fb ff       	call   0x4590a0
  4993c8:	88 04 3e             	mov    BYTE PTR [esi+edi*1],al
  4993cb:	46                   	inc    esi
  4993cc:	81 fe 5a 0d 00 00    	cmp    esi,0xd5a
  4993d2:	72 e5                	jb     0x4993b9
  4993d4:	8b c7                	mov    eax,edi
  4993d6:	5f                   	pop    edi
  4993d7:	5e                   	pop    esi
  4993d8:	8b e5                	mov    esp,ebp
  4993da:	5d                   	pop    ebp
  4993db:	c3                   	ret

; Selection de l octet de table avec modulo 0xD5A
; Plage 0x004993E0..0x004993F6 (stop exclusif)
  4993e0:	55                   	push   ebp
  4993e1:	8b ec                	mov    ebp,esp
  4993e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4993e6:	56                   	push   esi
  4993e7:	be 5a 0d 00 00       	mov    esi,0xd5a
  4993ec:	33 d2                	xor    edx,edx
  4993ee:	f7 f6                	div    esi
  4993f0:	5e                   	pop    esi
  4993f1:	8a 04 0a             	mov    al,BYTE PTR [edx+ecx*1]
  4993f4:	5d                   	pop    ebp
  4993f5:	c2                   	.byte 0xc2

; Fonction de lecture: ftell fgetc XOR et curseur positionnel
; Plage 0x00499A30..0x00499AC9 (stop exclusif)
  499a30:	55                   	push   ebp
  499a31:	8b ec                	mov    ebp,esp
  499a33:	81 ec 18 08 00 00    	sub    esp,0x818
  499a39:	53                   	push   ebx
  499a3a:	8b d9                	mov    ebx,ecx
  499a3c:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  499a3f:	56                   	push   esi
  499a40:	57                   	push   edi
  499a41:	50                   	push   eax
  499a42:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  499a45:	ff 15 2c e3 4d 00    	call   DWORD PTR ds:0x4de32c
  499a4b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  499a4e:	83 c4 04             	add    esp,0x4
  499a51:	33 ff                	xor    edi,edi
  499a53:	85 c9                	test   ecx,ecx
  499a55:	76 69                	jbe    0x499ac0
  499a57:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  499a5a:	2b c6                	sub    eax,esi
  499a5c:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  499a5f:	eb 03                	jmp    0x499a64
  499a61:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
  499a64:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  499a67:	51                   	push   ecx
  499a68:	ff 15 28 e3 4d 00    	call   DWORD PTR ds:0x4de328
  499a6e:	8b d8                	mov    ebx,eax
  499a70:	83 c4 04             	add    esp,0x4
  499a73:	83 fb ff             	cmp    ebx,0xffffffff
  499a76:	74 51                	je     0x499ac9
  499a78:	a0 b8 49 56 00       	mov    al,ds:0x5649b8
  499a7d:	a8 01                	test   al,0x1
  499a7f:	75 22                	jne    0x499aa3
  499a81:	8a d0                	mov    dl,al
  499a83:	80 ca 01             	or     dl,0x1
  499a86:	b9 c0 49 56 00       	mov    ecx,0x5649c0
  499a8b:	88 15 b8 49 56 00    	mov    BYTE PTR ds:0x5649b8,dl
  499a91:	e8 0a f9 ff ff       	call   0x4993a0
  499a96:	68 10 97 49 00       	push   0x499710
  499a9b:	e8 6b 82 03 00       	call   0x4d1d0b
  499aa0:	83 c4 04             	add    esp,0x4
  499aa3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  499aa6:	03 d6                	add    edx,esi
  499aa8:	52                   	push   edx
  499aa9:	b9 c0 49 56 00       	mov    ecx,0x5649c0
  499aae:	e8 2d f9 ff ff       	call   0x4993e0
  499ab3:	32 c3                	xor    al,bl
  499ab5:	88 06                	mov    BYTE PTR [esi],al
  499ab7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  499aba:	47                   	inc    edi
  499abb:	46                   	inc    esi
  499abc:	3b f8                	cmp    edi,eax
  499abe:	72 a1                	jb     0x499a61
  499ac0:	5f                   	pop    edi
  499ac1:	5e                   	pop    esi
  499ac2:	5b                   	pop    ebx
  499ac3:	8b e5                	mov    esp,ebp
  499ac5:	5d                   	pop    ebp
  499ac6:	c2 0c 00             	ret    0xc

; Echec EOF et signalement
; Plage 0x00499AC9..0x00499B64 (stop exclusif)
  499ac9:	a0 74 64 55 00       	mov    al,ds:0x556474
  499ace:	a8 01                	test   al,0x1
  499ad0:	c6 85 e8 f7 ff ff 00 	mov    BYTE PTR [ebp-0x818],0x0
  499ad7:	75 49                	jne    0x499b22
  499ad9:	8a d8                	mov    bl,al
  499adb:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  499ade:	33 f6                	xor    esi,esi
  499ae0:	56                   	push   esi
  499ae1:	50                   	push   eax
  499ae2:	8d 8d e8 f7 ff ff    	lea    ecx,[ebp-0x818]
  499ae8:	68 a8 e9 50 00       	push   0x50e9a8
  499aed:	80 cb 01             	or     bl,0x1
  499af0:	51                   	push   ecx
  499af1:	88 1d 74 64 55 00    	mov    BYTE PTR ds:0x556474,bl
  499af7:	e8 44 9e f6 ff       	call   0x403940
  499afc:	51                   	push   ecx
  499afd:	8b cc                	mov    ecx,esp
  499aff:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  499b02:	50                   	push   eax
  499b03:	ff 15 0c e5 4d 00    	call   DWORD PTR ds:0x4de50c
  499b09:	b9 60 64 55 00       	mov    ecx,0x556460
  499b0e:	e8 cd f7 ff ff       	call   0x4992e0
  499b13:	68 70 9b 49 00       	push   0x499b70
  499b18:	e8 ee 81 03 00       	call   0x4d1d0b
  499b1d:	83 c4 04             	add    esp,0x4
  499b20:	eb 02                	jmp    0x499b24
  499b22:	33 f6                	xor    esi,esi
  499b24:	8b 15 60 64 55 00    	mov    edx,DWORD PTR ds:0x556460
  499b2a:	a0 64 64 55 00       	mov    al,ds:0x556464
  499b2f:	8b 0d ec e4 4d 00    	mov    ecx,DWORD PTR ds:0x4de4ec
  499b35:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
  499b38:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
  499b3b:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  499b3e:	89 75 f4             	mov    DWORD PTR [ebp-0xc],esi
  499b41:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
  499b44:	8b 11                	mov    edx,DWORD PTR [ecx]
  499b46:	52                   	push   edx
  499b47:	56                   	push   esi
  499b48:	68 64 64 55 00       	push   0x556464
  499b4d:	8d 4d ec             	lea    ecx,[ebp-0x14]
  499b50:	ff 15 fc e4 4d 00    	call   DWORD PTR ds:0x4de4fc
  499b56:	68 a8 c9 4e 00       	push   0x4ec9a8
  499b5b:	8d 45 e8             	lea    eax,[ebp-0x18]
  499b5e:	50                   	push   eax
  499b5f:	e8 f2 81 03 00       	call   0x4d1d56

; ReadDWORD - 4 octets
; Plage 0x00499B80..0x00499B97 (stop exclusif)
  499b80:	55                   	push   ebp
  499b81:	8b ec                	mov    ebp,esp
  499b83:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  499b86:	68 d0 e9 50 00       	push   0x50e9d0
  499b8b:	6a 04                	push   0x4
  499b8d:	50                   	push   eax
  499b8e:	e8 9d fe ff ff       	call   0x499a30
  499b93:	5d                   	pop    ebp
  499b94:	c2 04 00             	ret    0x4

; ReadWORD - 2 octets
; Plage 0x00499BA0..0x00499BB7 (stop exclusif)
  499ba0:	55                   	push   ebp
  499ba1:	8b ec                	mov    ebp,esp
  499ba3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  499ba6:	68 d8 e9 50 00       	push   0x50e9d8
  499bab:	6a 02                	push   0x2
  499bad:	50                   	push   eax
  499bae:	e8 7d fe ff ff       	call   0x499a30
  499bb3:	5d                   	pop    ebp
  499bb4:	c2 04 00             	ret    0x4

; ReadString - taille DWORD suivi de contenu et terminaison
; Plage 0x00499BC0..0x00499CD6 (stop exclusif)
  499bc0:	55                   	push   ebp
  499bc1:	8b ec                	mov    ebp,esp
  499bc3:	6a ff                	push   0xffffffff
  499bc5:	68 88 ae 4d 00       	push   0x4dae88
  499bca:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  499bd0:	50                   	push   eax
  499bd1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  499bd8:	83 ec 0c             	sub    esp,0xc
  499bdb:	53                   	push   ebx
  499bdc:	56                   	push   esi
  499bdd:	57                   	push   edi
  499bde:	8d 45 f0             	lea    eax,[ebp-0x10]
  499be1:	8b f1                	mov    esi,ecx
  499be3:	50                   	push   eax
  499be4:	c7 45 f0 cd ab 00 00 	mov    DWORD PTR [ebp-0x10],0xabcd
  499beb:	e8 90 ff ff ff       	call   0x499b80
  499bf0:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  499bf3:	41                   	inc    ecx
  499bf4:	51                   	push   ecx
  499bf5:	e8 06 49 03 00       	call   0x4ce500
  499bfa:	8b d8                	mov    ebx,eax
  499bfc:	83 c4 04             	add    esp,0x4
  499bff:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  499c02:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  499c05:	68 e0 e9 50 00       	push   0x50e9e0
  499c0a:	52                   	push   edx
  499c0b:	53                   	push   ebx
  499c0c:	8b ce                	mov    ecx,esi
  499c0e:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  499c15:	e8 16 fe ff ff       	call   0x499a30
  499c1a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  499c1d:	c6 04 03 00          	mov    BYTE PTR [ebx+eax*1],0x0
  499c21:	83 c9 ff             	or     ecx,0xffffffff
  499c24:	33 c0                	xor    eax,eax
  499c26:	8b fb                	mov    edi,ebx
  499c28:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  499c2a:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  499c2d:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  499c30:	f7 d1                	not    ecx
  499c32:	49                   	dec    ecx
  499c33:	85 c0                	test   eax,eax
  499c35:	8b f1                	mov    esi,ecx
  499c37:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
  499c3a:	74 4d                	je     0x499c89
  499c3c:	3b c3                	cmp    eax,ebx
  499c3e:	77 49                	ja     0x499c89
  499c40:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  499c43:	8d 14 01             	lea    edx,[ecx+eax*1]
  499c46:	3b da                	cmp    ebx,edx
  499c48:	77 3f                	ja     0x499c89
  499c4a:	8b f3                	mov    esi,ebx
  499c4c:	2b f0                	sub    esi,eax
  499c4e:	3b ce                	cmp    ecx,esi
  499c50:	73 08                	jae    0x499c5a
  499c52:	8b cf                	mov    ecx,edi
  499c54:	ff 15 e8 e4 4d 00    	call   DWORD PTR ds:0x4de4e8
  499c5a:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  499c5d:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  499c60:	2b c6                	sub    eax,esi
  499c62:	3b c8                	cmp    ecx,eax
  499c64:	73 02                	jae    0x499c68
  499c66:	8b c1                	mov    eax,ecx
  499c68:	8b 0d ec e4 4d 00    	mov    ecx,DWORD PTR ds:0x4de4ec
  499c6e:	8b 11                	mov    edx,DWORD PTR [ecx]
  499c70:	52                   	push   edx
  499c71:	03 c6                	add    eax,esi
  499c73:	50                   	push   eax
  499c74:	8b cf                	mov    ecx,edi
  499c76:	ff 15 d4 e4 4d 00    	call   DWORD PTR ds:0x4de4d4
  499c7c:	56                   	push   esi
  499c7d:	6a 00                	push   0x0
  499c7f:	8b cf                	mov    ecx,edi
  499c81:	ff 15 d4 e4 4d 00    	call   DWORD PTR ds:0x4de4d4
  499c87:	eb 31                	jmp    0x499cba
  499c89:	6a 01                	push   0x1
  499c8b:	56                   	push   esi
  499c8c:	8b cf                	mov    ecx,edi
  499c8e:	ff 15 e0 e4 4d 00    	call   DWORD PTR ds:0x4de4e0
  499c94:	84 c0                	test   al,al
  499c96:	74 22                	je     0x499cba
  499c98:	8b 7f 04             	mov    edi,DWORD PTR [edi+0x4]
  499c9b:	8b ce                	mov    ecx,esi
  499c9d:	8b c1                	mov    eax,ecx
  499c9f:	c1 e9 02             	shr    ecx,0x2
  499ca2:	8b f3                	mov    esi,ebx
  499ca4:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  499ca6:	8b c8                	mov    ecx,eax
  499ca8:	83 e1 03             	and    ecx,0x3
  499cab:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  499cad:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  499cb0:	51                   	push   ecx
  499cb1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  499cb4:	ff 15 dc e4 4d 00    	call   DWORD PTR ds:0x4de4dc
  499cba:	53                   	push   ebx
  499cbb:	e8 a0 83 fa ff       	call   0x442060
  499cc0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  499cc3:	83 c4 04             	add    esp,0x4
  499cc6:	5f                   	pop    edi
  499cc7:	5e                   	pop    esi
  499cc8:	5b                   	pop    ebx
  499cc9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  499cd0:	8b e5                	mov    esp,ebp
  499cd2:	5d                   	pop    ebp
  499cd3:	c2 04 00             	ret    0x4

; ReadByte et lecture booleenne
; Plage 0x00499CE0..0x00499D28 (stop exclusif)
  499ce0:	55                   	push   ebp
  499ce1:	8b ec                	mov    ebp,esp
  499ce3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  499ce6:	68 ec e9 50 00       	push   0x50e9ec
  499ceb:	6a 01                	push   0x1
  499ced:	50                   	push   eax
  499cee:	e8 3d fd ff ff       	call   0x499a30
  499cf3:	5d                   	pop    ebp
  499cf4:	c2 04 00             	ret    0x4
  499cf7:	90                   	nop
  499cf8:	90                   	nop
  499cf9:	90                   	nop
  499cfa:	90                   	nop
  499cfb:	90                   	nop
  499cfc:	90                   	nop
  499cfd:	90                   	nop
  499cfe:	90                   	nop
  499cff:	90                   	nop
  499d00:	55                   	push   ebp
  499d01:	8b ec                	mov    ebp,esp
  499d03:	51                   	push   ecx
  499d04:	68 f4 e9 50 00       	push   0x50e9f4
  499d09:	6a 01                	push   0x1
  499d0b:	8d 45 ff             	lea    eax,[ebp-0x1]
  499d0e:	50                   	push   eax
  499d0f:	e8 1c fd ff ff       	call   0x499a30
  499d14:	8a 45 ff             	mov    al,BYTE PTR [ebp-0x1]
  499d17:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  499d1a:	3c 01                	cmp    al,0x1
  499d1c:	0f 94 c1             	sete   cl
  499d1f:	88 0a                	mov    BYTE PTR [edx],cl
  499d21:	8b e5                	mov    esp,ebp
  499d23:	5d                   	pop    ebp
  499d24:	c2 04 00             	ret    0x4
  499d27:	90                   	nop

; Autre lecture 4 octets
; Plage 0x00499D30..0x00499D47 (stop exclusif)
  499d30:	55                   	push   ebp
  499d31:	8b ec                	mov    ebp,esp
  499d33:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  499d36:	68 fc e9 50 00       	push   0x50e9fc
  499d3b:	6a 04                	push   0x4
  499d3d:	50                   	push   eax
  499d3e:	e8 ed fc ff ff       	call   0x499a30
  499d43:	5d                   	pop    ebp
  499d44:	c2 04 00             	ret    0x4

