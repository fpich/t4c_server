; Passe 39 — T4C Server(1).exe; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque ligne d instruction est verifiee octet par octet contre .text.
; Les plages sont selectives et liees aux conclusions documentees; stop exclusif.

; Ouverture du flux primaire via fopen et signalement
; Plage 0x004994B0..0x00499545 (stop exclusif)
  4994b0:	55                   	push   ebp
  4994b1:	8b ec                	mov    ebp,esp
  4994b3:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
  4994b8:	56                   	push   esi
  4994b9:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  4994bc:	85 f6                	test   esi,esi
  4994be:	57                   	push   edi
  4994bf:	8b f9                	mov    edi,ecx
  4994c1:	74 02                	je     0x4994c5
  4994c3:	8b c6                	mov    eax,esi
  4994c5:	68 68 e9 50 00       	push   0x50e968
  4994ca:	50                   	push   eax
  4994cb:	ff 15 34 e3 4d 00    	call   DWORD PTR ds:0x4de334
  4994d1:	83 c4 08             	add    esp,0x8
  4994d4:	85 c0                	test   eax,eax
  4994d6:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  4994d9:	75 2e                	jne    0x499509
  4994db:	85 f6                	test   esi,esi
  4994dd:	74 22                	je     0x499501
  4994df:	8a 46 ff             	mov    al,BYTE PTR [esi-0x1]
  4994e2:	84 c0                	test   al,al
  4994e4:	74 11                	je     0x4994f7
  4994e6:	3c ff                	cmp    al,0xff
  4994e8:	74 0d                	je     0x4994f7
  4994ea:	fe c8                	dec    al
  4994ec:	88 46 ff             	mov    BYTE PTR [esi-0x1],al
  4994ef:	5f                   	pop    edi
  4994f0:	32 c0                	xor    al,al
  4994f2:	5e                   	pop    esi
  4994f3:	5d                   	pop    ebp
  4994f4:	c2 10 00             	ret    0x10
  4994f7:	4e                   	dec    esi
  4994f8:	56                   	push   esi
  4994f9:	e8 62 8b fa ff       	call   0x442060
  4994fe:	83 c4 04             	add    esp,0x4
  499501:	5f                   	pop    edi
  499502:	32 c0                	xor    al,al
  499504:	5e                   	pop    esi
  499505:	5d                   	pop    ebp
  499506:	c2 10 00             	ret    0x10
  499509:	6a 00                	push   0x0
  49950b:	6a 00                	push   0x0
  49950d:	50                   	push   eax
  49950e:	ff 15 24 e3 4d 00    	call   DWORD PTR ds:0x4de324
  499514:	83 c4 0c             	add    esp,0xc
  499517:	85 f6                	test   esi,esi
  499519:	74 22                	je     0x49953d
  49951b:	8a 46 ff             	mov    al,BYTE PTR [esi-0x1]
  49951e:	84 c0                	test   al,al
  499520:	74 11                	je     0x499533
  499522:	3c ff                	cmp    al,0xff
  499524:	74 0d                	je     0x499533
  499526:	fe c8                	dec    al
  499528:	88 46 ff             	mov    BYTE PTR [esi-0x1],al
  49952b:	5f                   	pop    edi
  49952c:	b0 01                	mov    al,0x1
  49952e:	5e                   	pop    esi
  49952f:	5d                   	pop    ebp
  499530:	c2 10 00             	ret    0x10
  499533:	4e                   	dec    esi
  499534:	56                   	push   esi
  499535:	e8 26 8b fa ff       	call   0x442060
  49953a:	83 c4 04             	add    esp,0x4
  49953d:	5f                   	pop    edi
  49953e:	b0 01                	mov    al,0x1
  499540:	5e                   	pop    esi
  499541:	5d                   	pop    ebp
  499542:	c2 10 00             	ret    0x10

; Initialisation du type d entete
; Plage 0x00499DE0..0x00499DED (stop exclusif)
  499de0:	8b c1                	mov    eax,ecx
  499de2:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
  499de6:	c7 00 e4 f8 4d 00    	mov    DWORD PTR [eax],0x4df8e4
  499dec:	c3                   	ret

; Validation entete magic 0x0CA7 et version 1
; Plage 0x00499E60..0x00499EAC (stop exclusif)
  499e60:	55                   	push   ebp
  499e61:	8b ec                	mov    ebp,esp
  499e63:	56                   	push   esi
  499e64:	57                   	push   edi
  499e65:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  499e68:	8d 45 0a             	lea    eax,[ebp+0xa]
  499e6b:	8b f1                	mov    esi,ecx
  499e6d:	50                   	push   eax
  499e6e:	8b cf                	mov    ecx,edi
  499e70:	e8 2b fd ff ff       	call   0x499ba0
  499e75:	8d 4e 06             	lea    ecx,[esi+0x6]
  499e78:	51                   	push   ecx
  499e79:	8b cf                	mov    ecx,edi
  499e7b:	e8 20 fd ff ff       	call   0x499ba0
  499e80:	8d 56 04             	lea    edx,[esi+0x4]
  499e83:	52                   	push   edx
  499e84:	8b cf                	mov    ecx,edi
  499e86:	e8 75 fe ff ff       	call   0x499d00
  499e8b:	66 81 7d 0a a7 0c    	cmp    WORD PTR [ebp+0xa],0xca7
  499e91:	75 13                	jne    0x499ea6
  499e93:	8b ce                	mov    ecx,esi
  499e95:	e8 16 00 00 00       	call   0x499eb0
  499e9a:	84 c0                	test   al,al
  499e9c:	74 08                	je     0x499ea6
  499e9e:	5f                   	pop    edi
  499e9f:	b0 01                	mov    al,0x1
  499ea1:	5e                   	pop    esi
  499ea2:	5d                   	pop    ebp
  499ea3:	c2 04 00             	ret    0x4
  499ea6:	5f                   	pop    edi
  499ea7:	32 c0                	xor    al,al
  499ea9:	5e                   	pop    esi
  499eaa:	5d                   	pop    ebp
  499eab:	c2                   	.byte 0xc2

; Validation version au decalage +6
; Plage 0x00499EB0..0x00499EBB (stop exclusif)
  499eb0:	33 c0                	xor    eax,eax
  499eb2:	66 83 79 06 01       	cmp    WORD PTR [ecx+0x6],0x1
  499eb7:	0f 94 c0             	sete   al
  499eba:	c3                   	ret

; Le fichier T4C Edit.WDA est ouvert et valide en premier chemin
; Plage 0x00475B60..0x00475C13 (stop exclusif)
  475b60:	a0 a8 42 51 00       	mov    al,ds:0x5142a8
  475b65:	84 c0                	test   al,al
  475b67:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  475b6b:	c6 45 ef 00          	mov    BYTE PTR [ebp-0x11],0x0
  475b6f:	0f 85 95 00 00 00    	jne    0x475c0a
  475b75:	8a 45 ef             	mov    al,BYTE PTR [ebp-0x11]
  475b78:	83 ec 10             	sub    esp,0x10
  475b7b:	8b dc                	mov    ebx,esp
  475b7d:	83 c9 ff             	or     ecx,0xffffffff
  475b80:	88 03                	mov    BYTE PTR [ebx],al
  475b82:	33 c0                	xor    eax,eax
  475b84:	89 73 04             	mov    DWORD PTR [ebx+0x4],esi
  475b87:	89 73 08             	mov    DWORD PTR [ebx+0x8],esi
  475b8a:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
  475b8d:	bf f0 a5 50 00       	mov    edi,0x50a5f0
  475b92:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  475b94:	f7 d1                	not    ecx
  475b96:	49                   	dec    ecx
  475b97:	89 65 e8             	mov    DWORD PTR [ebp-0x18],esp
  475b9a:	8b f1                	mov    esi,ecx
  475b9c:	68 f0 a5 50 00       	push   0x50a5f0
  475ba1:	8b cb                	mov    ecx,ebx
  475ba3:	89 75 e8             	mov    DWORD PTR [ebp-0x18],esi
  475ba6:	ff 15 00 e5 4d 00    	call   DWORD PTR ds:0x4de500
  475bac:	84 c0                	test   al,al
  475bae:	74 17                	je     0x475bc7
  475bb0:	56                   	push   esi
  475bb1:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
  475bb4:	b9 f0 a5 50 00       	mov    ecx,0x50a5f0
  475bb9:	2b ce                	sub    ecx,esi
  475bbb:	51                   	push   ecx
  475bbc:	53                   	push   ebx
  475bbd:	8b cb                	mov    ecx,ebx
  475bbf:	ff 15 fc e4 4d 00    	call   DWORD PTR ds:0x4de4fc
  475bc5:	eb 33                	jmp    0x475bfa
  475bc7:	6a 01                	push   0x1
  475bc9:	56                   	push   esi
  475bca:	8b cb                	mov    ecx,ebx
  475bcc:	ff 15 e0 e4 4d 00    	call   DWORD PTR ds:0x4de4e0
  475bd2:	84 c0                	test   al,al
  475bd4:	74 24                	je     0x475bfa
  475bd6:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  475bd9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  475bdc:	8b ce                	mov    ecx,esi
  475bde:	8b d1                	mov    edx,ecx
  475be0:	c1 e9 02             	shr    ecx,0x2
  475be3:	be f0 a5 50 00       	mov    esi,0x50a5f0
  475be8:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  475bea:	8b ca                	mov    ecx,edx
  475bec:	83 e1 03             	and    ecx,0x3
  475bef:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  475bf1:	50                   	push   eax
  475bf2:	8b cb                	mov    ecx,ebx
  475bf4:	ff 15 dc e4 4d 00    	call   DWORD PTR ds:0x4de4dc
  475bfa:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  475bfd:	e8 ae 38 02 00       	call   0x4994b0
  475c02:	84 c0                	test   al,al
  475c04:	74 04                	je     0x475c0a
  475c06:	c6 45 ef 01          	mov    BYTE PTR [ebp-0x11],0x1
  475c0a:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  475c0d:	ff 15 24 e5 4d 00    	call   DWORD PTR ds:0x4de524

; Fichier T4C Worlds.WDA facultatif, ouverture et validation
; Plage 0x00475C8B..0x00475D94 (stop exclusif)
  475c8b:	8d 4d dc             	lea    ecx,[ebp-0x24]
  475c8e:	e8 1d 38 02 00       	call   0x4994b0
  475c93:	84 c0                	test   al,al
  475c95:	0f 84 d3 04 00 00    	je     0x47616e
  475c9b:	8d 4d ac             	lea    ecx,[ebp-0x54]
  475c9e:	e8 3d 41 02 00       	call   0x499de0
  475ca3:	8d 4d dc             	lea    ecx,[ebp-0x24]
  475ca6:	51                   	push   ecx
  475ca7:	8d 4d ac             	lea    ecx,[ebp-0x54]
  475caa:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  475cae:	e8 ad 41 02 00       	call   0x499e60
  475cb3:	84 c0                	test   al,al
  475cb5:	75 60                	jne    0x475d17
  475cb7:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  475cba:	85 c0                	test   eax,eax
  475cbc:	75 05                	jne    0x475cc3
  475cbe:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
  475cc3:	50                   	push   eax
  475cc4:	68 c4 a5 50 00       	push   0x50a5c4
  475cc9:	6a 01                	push   0x1
  475ccb:	e8 70 c0 ff ff       	call   0x471d40
  475cd0:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  475cd3:	83 c4 0c             	add    esp,0xc
  475cd6:	85 c0                	test   eax,eax
  475cd8:	75 05                	jne    0x475cdf
  475cda:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
  475cdf:	8b 35 88 e3 4d 00    	mov    esi,DWORD PTR ds:0x4de388
  475ce5:	50                   	push   eax
  475ce6:	68 9c a5 50 00       	push   0x50a59c
  475ceb:	ff d6                	call   esi
  475ced:	83 c4 08             	add    esp,0x8
  475cf0:	8d 4d ac             	lea    ecx,[ebp-0x54]
  475cf3:	e8 b8 41 02 00       	call   0x499eb0
  475cf8:	84 c0                	test   al,al
  475cfa:	75 21                	jne    0x475d1d
  475cfc:	68 88 a5 50 00       	push   0x50a588
  475d01:	6a 01                	push   0x1
  475d03:	e8 38 c0 ff ff       	call   0x471d40
  475d08:	83 c4 08             	add    esp,0x8
  475d0b:	68 88 a5 50 00       	push   0x50a588
  475d10:	ff d6                	call   esi
  475d12:	83 c4 04             	add    esp,0x4
  475d15:	eb 06                	jmp    0x475d1d
  475d17:	8b 35 88 e3 4d 00    	mov    esi,DWORD PTR ds:0x4de388
  475d1d:	8a 45 ef             	mov    al,BYTE PTR [ebp-0x11]
  475d20:	84 c0                	test   al,al
  475d22:	c6 45 e8 00          	mov    BYTE PTR [ebp-0x18],0x0
  475d26:	74 6c                	je     0x475d94
  475d28:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  475d2b:	e8 b0 40 02 00       	call   0x499de0
  475d30:	8d 55 d4             	lea    edx,[ebp-0x2c]
  475d33:	52                   	push   edx
  475d34:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  475d37:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  475d3b:	e8 20 41 02 00       	call   0x499e60
  475d40:	84 c0                	test   al,al
  475d42:	75 3e                	jne    0x475d82
  475d44:	68 50 a5 50 00       	push   0x50a550
  475d49:	6a 01                	push   0x1
  475d4b:	e8 f0 bf ff ff       	call   0x471d40
  475d50:	83 c4 08             	add    esp,0x8
  475d53:	68 1c a5 50 00       	push   0x50a51c
  475d58:	ff d6                	call   esi
  475d5a:	83 c4 04             	add    esp,0x4
  475d5d:	8d 4d ac             	lea    ecx,[ebp-0x54]
  475d60:	e8 4b 41 02 00       	call   0x499eb0
  475d65:	84 c0                	test   al,al
  475d67:	75 19                	jne    0x475d82
  475d69:	68 88 a5 50 00       	push   0x50a588
  475d6e:	6a 01                	push   0x1
  475d70:	e8 cb bf ff ff       	call   0x471d40
  475d75:	83 c4 08             	add    esp,0x8
  475d78:	68 88 a5 50 00       	push   0x50a588
  475d7d:	ff d6                	call   esi
  475d7f:	83 c4 04             	add    esp,0x4
  475d82:	8a 45 b8             	mov    al,BYTE PTR [ebp-0x48]
  475d85:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  475d88:	88 45 e8             	mov    BYTE PTR [ebp-0x18],al
  475d8b:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  475d8f:	e8 8c 40 02 00       	call   0x499e20

; Chargement d une table de sorts avec un ou deux flux et appel preparation
; Plage 0x00475D94..0x00475E01 (stop exclusif)
  475d94:	68 08 a5 50 00       	push   0x50a508
  475d99:	ff d6                	call   esi
  475d9b:	83 c4 04             	add    esp,0x4
  475d9e:	8d 4d bc             	lea    ecx,[ebp-0x44]
  475da1:	51                   	push   ecx
  475da2:	b3 07                	mov    bl,0x7
  475da4:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475da7:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  475daa:	e8 61 25 03 00       	call   0x4a8310
  475daf:	6a 01                	push   0x1
  475db1:	8d 55 dc             	lea    edx,[ebp-0x24]
  475db4:	52                   	push   edx
  475db5:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475db8:	c6 45 fc 08          	mov    BYTE PTR [ebp-0x4],0x8
  475dbc:	e8 4f 2a 03 00       	call   0x4a8810
  475dc1:	8a 45 ef             	mov    al,BYTE PTR [ebp-0x11]
  475dc4:	84 c0                	test   al,al
  475dc6:	74 10                	je     0x475dd8
  475dc8:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  475dcb:	50                   	push   eax
  475dcc:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  475dcf:	51                   	push   ecx
  475dd0:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475dd3:	e8 38 2a 03 00       	call   0x4a8810
  475dd8:	8d 55 84             	lea    edx,[ebp-0x7c]
  475ddb:	52                   	push   edx
  475ddc:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  475ddf:	e8 2c d8 ff ff       	call   0x473610
  475de4:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  475de7:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  475dea:	e8 81 25 03 00       	call   0x4a8370
  475def:	bf 05 00 00 00       	mov    edi,0x5
  475df4:	68 f0 a4 50 00       	push   0x50a4f0
  475df9:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  475dfc:	ff d6                	call   esi
  475dfe:	83 c4 04             	add    esp,0x4

