; Passe 38, analyse statique de T4C Server(1).exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses x86, cote stop exclusif; preuves selectionnees pour des contrats documentes, pas des dumps aveugles.

; Chargement donnees de monde et sorts depuis les deux fichiers WDA; controles de version; appel preparation  [0x475A30,0x475E00)  329 instructions
  475a30:	55                   	push   ebp
  475a31:	8b ec                	mov    ebp,esp
  475a33:	6a ff                	push   0xffffffff
  475a35:	68 e2 8f 4d 00       	push   0x4d8fe2
  475a3a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  475a40:	50                   	push   eax
  475a41:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  475a48:	81 ec 88 00 00 00    	sub    esp,0x88
  475a4e:	53                   	push   ebx
  475a4f:	56                   	push   esi
  475a50:	57                   	push   edi
  475a51:	8d 85 6c ff ff ff    	lea    eax,[ebp-0x94]
  475a57:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
  475a5a:	50                   	push   eax
  475a5b:	e8 90 c4 ff ff       	call   0x471ef0
  475a60:	83 c4 04             	add    esp,0x4
  475a63:	8b 10                	mov    edx,DWORD PTR [eax]
  475a65:	8a 4d ef             	mov    cl,BYTE PTR [ebp-0x11]
  475a68:	33 f6                	xor    esi,esi
  475a6a:	88 4d c4             	mov    BYTE PTR [ebp-0x3c],cl
  475a6d:	33 c0                	xor    eax,eax
  475a6f:	8b fa                	mov    edi,edx
  475a71:	89 75 c8             	mov    DWORD PTR [ebp-0x38],esi
  475a74:	89 75 cc             	mov    DWORD PTR [ebp-0x34],esi
  475a77:	83 c9 ff             	or     ecx,0xffffffff
  475a7a:	89 75 d0             	mov    DWORD PTR [ebp-0x30],esi
  475a7d:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  475a7f:	f7 d1                	not    ecx
  475a81:	49                   	dec    ecx
  475a82:	51                   	push   ecx
  475a83:	52                   	push   edx
  475a84:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  475a87:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  475a8a:	ff 15 f4 e4 4d 00    	call   DWORD PTR ds:0x4de4f4
  475a90:	8d 8d 6c ff ff ff    	lea    ecx,[ebp-0x94]
  475a96:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  475a9a:	e8 a1 bf 05 00       	call   0x4d1a40
  475a9f:	83 c9 ff             	or     ecx,0xffffffff
  475aa2:	33 c0                	xor    eax,eax
  475aa4:	bf 00 a6 50 00       	mov    edi,0x50a600
  475aa9:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  475aab:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  475aae:	f7 d1                	not    ecx
  475ab0:	49                   	dec    ecx
  475ab1:	3b c6                	cmp    eax,esi
  475ab3:	8b f9                	mov    edi,ecx
  475ab5:	75 2c                	jne    0x475ae3
  475ab7:	3d 00 a6 50 00       	cmp    eax,0x50a600
  475abc:	77 25                	ja     0x475ae3
  475abe:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  475ac1:	03 d0                	add    edx,eax
  475ac3:	81 fa 00 a6 50 00    	cmp    edx,0x50a600
  475ac9:	72 18                	jb     0x475ae3
  475acb:	57                   	push   edi
  475acc:	b9 00 a6 50 00       	mov    ecx,0x50a600
  475ad1:	2b c8                	sub    ecx,eax
  475ad3:	51                   	push   ecx
  475ad4:	8d 55 c4             	lea    edx,[ebp-0x3c]
  475ad7:	52                   	push   edx
  475ad8:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  475adb:	ff 15 04 e5 4d 00    	call   DWORD PTR ds:0x4de504
  475ae1:	eb 5b                	jmp    0x475b3e
  475ae3:	a1 ec e4 4d 00       	mov    eax,ds:0x4de4ec
  475ae8:	8b 08                	mov    ecx,DWORD PTR [eax]
  475aea:	2b 4d cc             	sub    ecx,DWORD PTR [ebp-0x34]
  475aed:	3b cf                	cmp    ecx,edi
  475aef:	77 09                	ja     0x475afa
  475af1:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  475af4:	ff 15 30 e5 4d 00    	call   DWORD PTR ds:0x4de530
  475afa:	3b fe                	cmp    edi,esi
  475afc:	76 40                	jbe    0x475b3e
  475afe:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  475b01:	8d 1c 3a             	lea    ebx,[edx+edi*1]
  475b04:	56                   	push   esi
  475b05:	53                   	push   ebx
  475b06:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  475b09:	ff 15 e0 e4 4d 00    	call   DWORD PTR ds:0x4de4e0
  475b0f:	84 c0                	test   al,al
  475b11:	74 2b                	je     0x475b3e
  475b13:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  475b16:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  475b19:	03 c1                	add    eax,ecx
  475b1b:	8b cf                	mov    ecx,edi
  475b1d:	8b d1                	mov    edx,ecx
  475b1f:	c1 e9 02             	shr    ecx,0x2
  475b22:	8b f8                	mov    edi,eax
  475b24:	be 00 a6 50 00       	mov    esi,0x50a600
  475b29:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  475b2b:	8b ca                	mov    ecx,edx
  475b2d:	83 e1 03             	and    ecx,0x3
  475b30:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  475b32:	53                   	push   ebx
  475b33:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  475b36:	ff 15 dc e4 4d 00    	call   DWORD PTR ds:0x4de4dc
  475b3c:	33 f6                	xor    esi,esi
  475b3e:	8d 4d dc             	lea    ecx,[ebp-0x24]
  475b41:	c7 45 bc d0 f5 4d 00 	mov    DWORD PTR [ebp-0x44],0x4df5d0
  475b48:	c7 45 c0 08 00 00 00 	mov    DWORD PTR [ebp-0x40],0x8
  475b4f:	e8 ac 38 02 00       	call   0x499400
  475b54:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  475b57:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  475b5b:	e8 a0 38 02 00       	call   0x499400
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
  475c13:	8a 4d ef             	mov    cl,BYTE PTR [ebp-0x11]
  475c16:	83 ec 10             	sub    esp,0x10
  475c19:	8b dc                	mov    ebx,esp
  475c1b:	88 0b                	mov    BYTE PTR [ebx],cl
  475c1d:	8b f0                	mov    esi,eax
  475c1f:	33 c0                	xor    eax,eax
  475c21:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  475c24:	83 c9 ff             	or     ecx,0xffffffff
  475c27:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  475c2a:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
  475c2d:	8b fe                	mov    edi,esi
  475c2f:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  475c31:	f7 d1                	not    ecx
  475c33:	49                   	dec    ecx
  475c34:	89 65 e8             	mov    DWORD PTR [ebp-0x18],esp
  475c37:	8b f9                	mov    edi,ecx
  475c39:	56                   	push   esi
  475c3a:	8b cb                	mov    ecx,ebx
  475c3c:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
  475c3f:	ff 15 00 e5 4d 00    	call   DWORD PTR ds:0x4de500
  475c45:	84 c0                	test   al,al
  475c47:	74 12                	je     0x475c5b
  475c49:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  475c4c:	57                   	push   edi
  475c4d:	2b f2                	sub    esi,edx
  475c4f:	56                   	push   esi
  475c50:	53                   	push   ebx
  475c51:	8b cb                	mov    ecx,ebx
  475c53:	ff 15 fc e4 4d 00    	call   DWORD PTR ds:0x4de4fc
  475c59:	eb 30                	jmp    0x475c8b
  475c5b:	6a 01                	push   0x1
  475c5d:	57                   	push   edi
  475c5e:	8b cb                	mov    ecx,ebx
  475c60:	ff 15 e0 e4 4d 00    	call   DWORD PTR ds:0x4de4e0
  475c66:	84 c0                	test   al,al
  475c68:	74 21                	je     0x475c8b
  475c6a:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  475c6d:	8b cf                	mov    ecx,edi
  475c6f:	8b d1                	mov    edx,ecx
  475c71:	c1 e9 02             	shr    ecx,0x2
  475c74:	8b f8                	mov    edi,eax
  475c76:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  475c79:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  475c7b:	8b ca                	mov    ecx,edx
  475c7d:	83 e1 03             	and    ecx,0x3
  475c80:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  475c82:	50                   	push   eax
  475c83:	8b cb                	mov    ecx,ebx
  475c85:	ff 15 dc e4 4d 00    	call   DWORD PTR ds:0x4de4dc
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
  475dfe:	83                   	.byte 0x83
  475dff:	c4                   	.byte 0xc4

; Preparateur de sorts: copie de WORD identifiant source (+0x24)  [0x4736F6,0x473736)  20 instructions
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

; Preparateur de sorts: multiplication 1000 du DWORD source (+0x24)  [0x473878,0x47388D)  6 instructions
  473878:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  47387b:	8d 04 80             	lea    eax,[eax+eax*4]
  47387e:	8d 04 80             	lea    eax,[eax+eax*4]
  473881:	8d 04 80             	lea    eax,[eax+eax*4]
  473884:	c1 e0 03             	shl    eax,0x3
  473887:	89 83 ac 03 00 00    	mov    DWORD PTR [ebx+0x3ac],eax

