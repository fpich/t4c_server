; Preuves T4C Server(1).exe — passe 37 — SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Coupures choisies pour les fonctions semantiquement analysees ; adresses absolues, borne stop exclue.
; CONSIGNE: ne pas assimiler une ligne de bytes verifiee a un contrat de jeu complet.

; UnitEffectManager::RegisterEffect / allocation paire (ID, callback) — 0x00490B10 .. 0x00490B35 (exclusif), 14 instructions confirmees
  490b10:	55                   	push   ebp
  490b11:	8b ec                	mov    ebp,esp
  490b13:	6a 08                	push   0x8
  490b15:	e8 d6 14 fb ff       	call   0x441ff0
  490b1a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  490b1d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  490b20:	83 c4 04             	add    esp,0x4
  490b23:	89 08                	mov    DWORD PTR [eax],ecx
  490b25:	50                   	push   eax
  490b26:	b9 00 64 55 00       	mov    ecx,0x556400
  490b2b:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  490b2e:	e8 0d 04 00 00       	call   0x490f40
  490b33:	5d                   	pop    ebp
  490b34:	c3                   	ret

; UnitEffectManager::GetEffectProc / recherche de premiere cle sous verrou — 0x00490B40 .. 0x00490C1D (exclusif), 77 instructions confirmees
  490b40:	55                   	push   ebp
  490b41:	8b ec                	mov    ebp,esp
  490b43:	83 ec 08             	sub    esp,0x8
  490b46:	56                   	push   esi
  490b47:	57                   	push   edi
  490b48:	33 f6                	xor    esi,esi
  490b4a:	50                   	push   eax
  490b4b:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  490b4e:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  490b51:	58                   	pop    eax
  490b52:	e8 a9 36 fa ff       	call   0x434200
  490b57:	8b 10                	mov    edx,DWORD PTR [eax]
  490b59:	8d 4d fc             	lea    ecx,[ebp-0x4]
  490b5c:	51                   	push   ecx
  490b5d:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  490b60:	68 00 64 55 00       	push   0x556400
  490b65:	51                   	push   ecx
  490b66:	8b c8                	mov    ecx,eax
  490b68:	ff 12                	call   DWORD PTR [edx]
  490b6a:	68 08 64 55 00       	push   0x556408
  490b6f:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  490b75:	e8 86 36 fa ff       	call   0x434200
  490b7a:	8b 10                	mov    edx,DWORD PTR [eax]
  490b7c:	68 04 64 55 00       	push   0x556404
  490b81:	8d 4d fc             	lea    ecx,[ebp-0x4]
  490b84:	51                   	push   ecx
  490b85:	8b c8                	mov    ecx,eax
  490b87:	ff 52 04             	call   DWORD PTR [edx+0x4]
  490b8a:	a1 24 64 55 00       	mov    eax,ds:0x556424
  490b8f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  490b92:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  490b95:	33 c9                	xor    ecx,ecx
  490b97:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490b9c:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490ba2:	c6 05 34 64 55 00 08 	mov    BYTE PTR ds:0x556434,0x8
  490ba9:	85 c9                	test   ecx,ecx
  490bab:	74 09                	je     0x490bb6
  490bad:	8b 00                	mov    eax,DWORD PTR [eax]
  490baf:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490bb4:	eb 0b                	jmp    0x490bc1
  490bb6:	b9 01 00 00 00       	mov    ecx,0x1
  490bbb:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490bc1:	85 c0                	test   eax,eax
  490bc3:	74 12                	je     0x490bd7
  490bc5:	85 f6                	test   esi,esi
  490bc7:	75 23                	jne    0x490bec
  490bc9:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  490bcc:	39 17                	cmp    DWORD PTR [edi],edx
  490bce:	75 d9                	jne    0x490ba9
  490bd0:	be 01 00 00 00       	mov    esi,0x1
  490bd5:	eb d2                	jmp    0x490ba9
  490bd7:	85 c9                	test   ecx,ecx
  490bd9:	74 07                	je     0x490be2
  490bdb:	c6 05 34 64 55 00 07 	mov    BYTE PTR ds:0x556434,0x7
  490be2:	c7 05 40 64 55 00 00 	mov    DWORD PTR ds:0x556440,0x0
  490be9:	00 00 00 
  490bec:	e8 0f 36 fa ff       	call   0x434200
  490bf1:	8b 10                	mov    edx,DWORD PTR [eax]
  490bf3:	68 04 64 55 00       	push   0x556404
  490bf8:	8b c8                	mov    ecx,eax
  490bfa:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  490bfd:	68 08 64 55 00       	push   0x556408
  490c02:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  490c08:	85 f6                	test   esi,esi
  490c0a:	74 09                	je     0x490c15
  490c0c:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  490c0f:	5f                   	pop    edi
  490c10:	5e                   	pop    esi
  490c11:	8b e5                	mov    esp,ebp
  490c13:	5d                   	pop    ebp
  490c14:	c3                   	ret
  490c15:	5f                   	pop    edi
  490c16:	5e                   	pop    esi
  490c17:	33 c0                	xor    eax,eax
  490c19:	8b e5                	mov    esp,ebp
  490c1b:	5d                   	pop    ebp
  490c1c:	c3                   	ret

; UnitEffectManager::Destroy / liberation des paires du registre — 0x00490C20 .. 0x00490D73 (exclusif), 93 instructions confirmees
  490c20:	8b 15 24 64 55 00    	mov    edx,DWORD PTR ds:0x556424
  490c26:	56                   	push   esi
  490c27:	33 f6                	xor    esi,esi
  490c29:	8b c2                	mov    eax,edx
  490c2b:	33 c9                	xor    ecx,ecx
  490c2d:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490c32:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490c38:	c6 05 34 64 55 00 08 	mov    BYTE PTR ds:0x556434,0x8
  490c3f:	3b ce                	cmp    ecx,esi
  490c41:	74 09                	je     0x490c4c
  490c43:	8b 00                	mov    eax,DWORD PTR [eax]
  490c45:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490c4a:	eb 0b                	jmp    0x490c57
  490c4c:	b9 01 00 00 00       	mov    ecx,0x1
  490c51:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490c57:	3b c6                	cmp    eax,esi
  490c59:	0f 84 01 01 00 00    	je     0x490d60
  490c5f:	ff 0d 38 64 55 00    	dec    DWORD PTR ds:0x556438
  490c65:	8b 0d 28 64 55 00    	mov    ecx,DWORD PTR ds:0x556428
  490c6b:	3b c1                	cmp    eax,ecx
  490c6d:	a3 2c 64 55 00       	mov    ds:0x55642c,eax
  490c72:	74 4d                	je     0x490cc1
  490c74:	3b c2                	cmp    eax,edx
  490c76:	74 45                	je     0x490cbd
  490c78:	8b 08                	mov    ecx,DWORD PTR [eax]
  490c7a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  490c7d:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  490c80:	a1 20 64 55 00       	mov    eax,ds:0x556420
  490c85:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  490c88:	8b 10                	mov    edx,DWORD PTR [eax]
  490c8a:	89 11                	mov    DWORD PTR [ecx],edx
  490c8c:	a1 40 64 55 00       	mov    eax,ds:0x556440
  490c91:	83 f8 01             	cmp    eax,0x1
  490c94:	75 13                	jne    0x490ca9
  490c96:	a1 20 64 55 00       	mov    eax,ds:0x556420
  490c9b:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  490c9e:	89 0d 20 64 55 00    	mov    DWORD PTR ds:0x556420,ecx
  490ca4:	e9 84 00 00 00       	jmp    0x490d2d
  490ca9:	83 f8 02             	cmp    eax,0x2
  490cac:	75 7f                	jne    0x490d2d
  490cae:	8b 15 20 64 55 00    	mov    edx,DWORD PTR ds:0x556420
  490cb4:	8b 02                	mov    eax,DWORD PTR [edx]
  490cb6:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490cbb:	eb 70                	jmp    0x490d2d
  490cbd:	3b c1                	cmp    eax,ecx
  490cbf:	75 2a                	jne    0x490ceb
  490cc1:	3b c2                	cmp    eax,edx
  490cc3:	74 2a                	je     0x490cef
  490cc5:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  490cc8:	89 31                	mov    DWORD PTR [ecx],esi
  490cca:	a1 20 64 55 00       	mov    eax,ds:0x556420
  490ccf:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  490cd2:	89 15 28 64 55 00    	mov    DWORD PTR ds:0x556428,edx
  490cd8:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  490cdb:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490ce0:	83 3d 40 64 55 00 02 	cmp    DWORD PTR ds:0x556440,0x2
  490ce7:	75 44                	jne    0x490d2d
  490ce9:	eb 3c                	jmp    0x490d27
  490ceb:	3b c2                	cmp    eax,edx
  490ced:	75 26                	jne    0x490d15
  490cef:	3b c1                	cmp    eax,ecx
  490cf1:	74 22                	je     0x490d15
  490cf3:	8b 08                	mov    ecx,DWORD PTR [eax]
  490cf5:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
  490cf8:	8b 15 20 64 55 00    	mov    edx,DWORD PTR ds:0x556420
  490cfe:	8b 02                	mov    eax,DWORD PTR [edx]
  490d00:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490d05:	a3 24 64 55 00       	mov    ds:0x556424,eax
  490d0a:	83 3d 40 64 55 00 01 	cmp    DWORD PTR ds:0x556440,0x1
  490d11:	75 1a                	jne    0x490d2d
  490d13:	eb 12                	jmp    0x490d27
  490d15:	89 35 20 64 55 00    	mov    DWORD PTR ds:0x556420,esi
  490d1b:	89 35 24 64 55 00    	mov    DWORD PTR ds:0x556424,esi
  490d21:	89 35 28 64 55 00    	mov    DWORD PTR ds:0x556428,esi
  490d27:	89 35 40 64 55 00    	mov    DWORD PTR ds:0x556440,esi
  490d2d:	a1 2c 64 55 00       	mov    eax,ds:0x55642c
  490d32:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  490d35:	51                   	push   ecx
  490d36:	e8 25 13 fb ff       	call   0x442060
  490d3b:	8b 15 2c 64 55 00    	mov    edx,DWORD PTR ds:0x55642c
  490d41:	52                   	push   edx
  490d42:	e8 19 13 fb ff       	call   0x442060
  490d47:	a1 20 64 55 00       	mov    eax,ds:0x556420
  490d4c:	8b 15 24 64 55 00    	mov    edx,DWORD PTR ds:0x556424
  490d52:	8b 0d 40 64 55 00    	mov    ecx,DWORD PTR ds:0x556440
  490d58:	83 c4 08             	add    esp,0x8
  490d5b:	e9 df fe ff ff       	jmp    0x490c3f
  490d60:	3b ce                	cmp    ecx,esi
  490d62:	74 07                	je     0x490d6b
  490d64:	c6 05 34 64 55 00 07 	mov    BYTE PTR ds:0x556434,0x7
  490d6b:	89 35 40 64 55 00    	mov    DWORD PTR ds:0x556440,esi
  490d71:	5e                   	pop    esi
  490d72:	c3                   	ret

; TemplateList / initialisation liste UnitEffectManager — 0x00490D80 .. 0x00490DBC (exclusif), 19 instructions confirmees
  490d80:	56                   	push   esi
  490d81:	8b f1                	mov    esi,ecx
  490d83:	8d 46 08             	lea    eax,[esi+0x8]
  490d86:	50                   	push   eax
  490d87:	c7 06 8c e5 4d 00    	mov    DWORD PTR [esi],0x4de58c
  490d8d:	c7 46 04 ff ff ff ff 	mov    DWORD PTR [esi+0x4],0xffffffff
  490d94:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  490d9a:	33 c0                	xor    eax,eax
  490d9c:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  490d9f:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  490da2:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  490da5:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  490da8:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  490dab:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  490dae:	c7 06 5c f8 4d 00    	mov    DWORD PTR [esi],0x4df85c
  490db4:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  490db8:	8b c6                	mov    eax,esi
  490dba:	5e                   	pop    esi
  490dbb:	c3                   	ret

; TemplateList / insertion en fin de liste UnitEffectManager — 0x00490F40 .. 0x00490FD3 (exclusif), 61 instructions confirmees
  490f40:	55                   	push   ebp
  490f41:	8b ec                	mov    ebp,esp
  490f43:	56                   	push   esi
  490f44:	8b f1                	mov    esi,ecx
  490f46:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  490f49:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  490f4c:	57                   	push   edi
  490f4d:	33 ff                	xor    edi,edi
  490f4f:	42                   	inc    edx
  490f50:	3b c7                	cmp    eax,edi
  490f52:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  490f55:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  490f58:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  490f5c:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  490f5f:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  490f62:	6a 0c                	push   0xc
  490f64:	75 35                	jne    0x490f9b
  490f66:	e8 85 10 fb ff       	call   0x441ff0
  490f6b:	83 c4 04             	add    esp,0x4
  490f6e:	3b c7                	cmp    eax,edi
  490f70:	74 07                	je     0x490f79
  490f72:	89 38                	mov    DWORD PTR [eax],edi
  490f74:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  490f77:	eb 02                	jmp    0x490f7b
  490f79:	33 c0                	xor    eax,eax
  490f7b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  490f7e:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  490f81:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  490f84:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  490f87:	89 38                	mov    DWORD PTR [eax],edi
  490f89:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  490f8c:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  490f8f:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  490f92:	5f                   	pop    edi
  490f93:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  490f96:	5e                   	pop    esi
  490f97:	5d                   	pop    ebp
  490f98:	c2 04 00             	ret    0x4
  490f9b:	e8 50 10 fb ff       	call   0x441ff0
  490fa0:	83 c4 04             	add    esp,0x4
  490fa3:	3b c7                	cmp    eax,edi
  490fa5:	74 07                	je     0x490fae
  490fa7:	89 38                	mov    DWORD PTR [eax],edi
  490fa9:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  490fac:	eb 02                	jmp    0x490fb0
  490fae:	33 c0                	xor    eax,eax
  490fb0:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  490fb3:	89 01                	mov    DWORD PTR [ecx],eax
  490fb5:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  490fb8:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  490fbb:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  490fbe:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  490fc1:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  490fc4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  490fc7:	89 38                	mov    DWORD PTR [eax],edi
  490fc9:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  490fcc:	5f                   	pop    edi
  490fcd:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  490fd0:	5e                   	pop    esi
  490fd1:	5d                   	pop    ebp
  490fd2:	c2                   	.byte 0xc2

