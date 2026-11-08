; Preuves T4C Server(1).exe — passe 37 — SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Coupures choisies pour les fonctions semantiquement analysees ; adresses absolues, borne stop exclue.
; CONSIGNE: ne pas assimiler une ligne de bytes verifiee a un contrat de jeu complet.

; SpellEffectManager::RegisterSuperstructure / fabrication entree — 0x00460BD0 .. 0x00460BF7 (exclusif), 14 instructions confirmees
  460bd0:	55                   	push   ebp
  460bd1:	8b ec                	mov    ebp,esp
  460bd3:	6a 08                	push   0x8
  460bd5:	e8 16 14 fe ff       	call   0x441ff0
  460bda:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  460bdd:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  460be1:	83 c4 04             	add    esp,0x4
  460be4:	89 08                	mov    DWORD PTR [eax],ecx
  460be6:	50                   	push   eax
  460be7:	b9 60 4d 51 00       	mov    ecx,0x514d60
  460bec:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  460bf0:	e8 5b 02 00 00       	call   0x460e50
  460bf5:	5d                   	pop    ebp
  460bf6:	c3                   	ret

; SpellEffectManager::GetEffectObject / appels de fabrique pour chaque correspondance — 0x00460C00 .. 0x00460C84 (exclusif), 44 instructions confirmees
  460c00:	55                   	push   ebp
  460c01:	8b ec                	mov    ebp,esp
  460c03:	8b 0d 84 4d 51 00    	mov    ecx,DWORD PTR ds:0x514d84
  460c09:	53                   	push   ebx
  460c0a:	56                   	push   esi
  460c0b:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  460c0e:	33 c0                	xor    eax,eax
  460c10:	33 d2                	xor    edx,edx
  460c12:	57                   	push   edi
  460c13:	66 8b 7d 08          	mov    di,WORD PTR [ebp+0x8]
  460c17:	89 0d 80 4d 51 00    	mov    DWORD PTR ds:0x514d80,ecx
  460c1d:	89 15 a0 4d 51 00    	mov    DWORD PTR ds:0x514da0,edx
  460c23:	c6 05 94 4d 51 00 08 	mov    BYTE PTR ds:0x514d94,0x8
  460c2a:	85 d2                	test   edx,edx
  460c2c:	74 0a                	je     0x460c38
  460c2e:	8b 09                	mov    ecx,DWORD PTR [ecx]
  460c30:	89 0d 80 4d 51 00    	mov    DWORD PTR ds:0x514d80,ecx
  460c36:	eb 0b                	jmp    0x460c43
  460c38:	ba 01 00 00 00       	mov    edx,0x1
  460c3d:	89 15 a0 4d 51 00    	mov    DWORD PTR ds:0x514da0,edx
  460c43:	85 c9                	test   ecx,ecx
  460c45:	74 23                	je     0x460c6a
  460c47:	85 c0                	test   eax,eax
  460c49:	75 34                	jne    0x460c7f
  460c4b:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
  460c4e:	66 39 7b 04          	cmp    WORD PTR [ebx+0x4],di
  460c52:	75 d6                	jne    0x460c2a
  460c54:	8b c3                	mov    eax,ebx
  460c56:	56                   	push   esi
  460c57:	ff 10                	call   DWORD PTR [eax]
  460c59:	8b 0d 80 4d 51 00    	mov    ecx,DWORD PTR ds:0x514d80
  460c5f:	8b 15 a0 4d 51 00    	mov    edx,DWORD PTR ds:0x514da0
  460c65:	83 c4 04             	add    esp,0x4
  460c68:	eb c0                	jmp    0x460c2a
  460c6a:	85 d2                	test   edx,edx
  460c6c:	74 07                	je     0x460c75
  460c6e:	c6 05 94 4d 51 00 07 	mov    BYTE PTR ds:0x514d94,0x7
  460c75:	c7 05 a0 4d 51 00 00 	mov    DWORD PTR ds:0x514da0,0x0
  460c7c:	00 00 00 
  460c7f:	5f                   	pop    edi
  460c80:	5e                   	pop    esi
  460c81:	5b                   	pop    ebx
  460c82:	5d                   	pop    ebp
  460c83:	c3                   	ret

; Liste SpellEffectManager / initialisation — 0x00460C90 .. 0x00460CCC (exclusif), 19 instructions confirmees
  460c90:	56                   	push   esi
  460c91:	8b f1                	mov    esi,ecx
  460c93:	8d 46 08             	lea    eax,[esi+0x8]
  460c96:	50                   	push   eax
  460c97:	c7 06 8c e5 4d 00    	mov    DWORD PTR [esi],0x4de58c
  460c9d:	c7 46 04 ff ff ff ff 	mov    DWORD PTR [esi+0x4],0xffffffff
  460ca4:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  460caa:	33 c0                	xor    eax,eax
  460cac:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  460caf:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  460cb2:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  460cb5:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  460cb8:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  460cbb:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  460cbe:	c7 06 f4 f4 4d 00    	mov    DWORD PTR [esi],0x4df4f4
  460cc4:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  460cc8:	8b c6                	mov    eax,esi
  460cca:	5e                   	pop    esi
  460ccb:	c3                   	ret

; Liste SpellEffectManager / destruction — 0x00460CD0 .. 0x00460E1B (exclusif), 116 instructions confirmees
  460cd0:	53                   	push   ebx
  460cd1:	56                   	push   esi
  460cd2:	8b f1                	mov    esi,ecx
  460cd4:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  460cd7:	57                   	push   edi
  460cd8:	33 ff                	xor    edi,edi
  460cda:	c7 06 f4 f4 4d 00    	mov    DWORD PTR [esi],0x4df4f4
  460ce0:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  460ce3:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460ce6:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  460cea:	bb 01 00 00 00       	mov    ebx,0x1
  460cef:	39 7e 40             	cmp    DWORD PTR [esi+0x40],edi
  460cf2:	74 0a                	je     0x460cfe
  460cf4:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  460cf7:	8b 11                	mov    edx,DWORD PTR [ecx]
  460cf9:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  460cfc:	eb 03                	jmp    0x460d01
  460cfe:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  460d01:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  460d04:	3b c7                	cmp    eax,edi
  460d06:	0f 84 ef 00 00 00    	je     0x460dfb
  460d0c:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  460d0f:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  460d12:	ff 4e 38             	dec    DWORD PTR [esi+0x38]
  460d15:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  460d18:	3b c1                	cmp    eax,ecx
  460d1a:	74 5b                	je     0x460d77
  460d1c:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  460d1f:	74 52                	je     0x460d73
  460d21:	8b 08                	mov    ecx,DWORD PTR [eax]
  460d23:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  460d26:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  460d29:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  460d2c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  460d2f:	8b 10                	mov    edx,DWORD PTR [eax]
  460d31:	89 11                	mov    DWORD PTR [ecx],edx
  460d33:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  460d36:	3b c3                	cmp    eax,ebx
  460d38:	75 17                	jne    0x460d51
  460d3a:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  460d3d:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  460d40:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  460d43:	52                   	push   edx
  460d44:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  460d47:	e8 14 13 fe ff       	call   0x442060
  460d4c:	83 c4 04             	add    esp,0x4
  460d4f:	eb 9e                	jmp    0x460cef
  460d51:	83 f8 02             	cmp    eax,0x2
  460d54:	0f 85 90 00 00 00    	jne    0x460dea
  460d5a:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  460d5d:	8b 02                	mov    eax,DWORD PTR [edx]
  460d5f:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  460d62:	52                   	push   edx
  460d63:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  460d66:	e8 f5 12 fe ff       	call   0x442060
  460d6b:	83 c4 04             	add    esp,0x4
  460d6e:	e9 7c ff ff ff       	jmp    0x460cef
  460d73:	3b c1                	cmp    eax,ecx
  460d75:	75 35                	jne    0x460dac
  460d77:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  460d7a:	74 35                	je     0x460db1
  460d7c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  460d7f:	89 39                	mov    DWORD PTR [ecx],edi
  460d81:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  460d84:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  460d87:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  460d8a:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  460d8e:	8b ca                	mov    ecx,edx
  460d90:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  460d93:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  460d96:	75 52                	jne    0x460dea
  460d98:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  460d9b:	52                   	push   edx
  460d9c:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460d9f:	e8 bc 12 fe ff       	call   0x442060
  460da4:	83 c4 04             	add    esp,0x4
  460da7:	e9 43 ff ff ff       	jmp    0x460cef
  460dac:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  460daf:	75 2d                	jne    0x460dde
  460db1:	3b c1                	cmp    eax,ecx
  460db3:	74 29                	je     0x460dde
  460db5:	8b 00                	mov    eax,DWORD PTR [eax]
  460db7:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  460dba:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  460dbd:	8b 01                	mov    eax,DWORD PTR [ecx]
  460dbf:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  460dc2:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  460dc5:	39 5e 40             	cmp    DWORD PTR [esi+0x40],ebx
  460dc8:	75 20                	jne    0x460dea
  460dca:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  460dcd:	52                   	push   edx
  460dce:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460dd1:	e8 8a 12 fe ff       	call   0x442060
  460dd6:	83 c4 04             	add    esp,0x4
  460dd9:	e9 11 ff ff ff       	jmp    0x460cef
  460dde:	89 7e 20             	mov    DWORD PTR [esi+0x20],edi
  460de1:	89 7e 24             	mov    DWORD PTR [esi+0x24],edi
  460de4:	89 7e 28             	mov    DWORD PTR [esi+0x28],edi
  460de7:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460dea:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  460ded:	52                   	push   edx
  460dee:	e8 6d 12 fe ff       	call   0x442060
  460df3:	83 c4 04             	add    esp,0x4
  460df6:	e9 f4 fe ff ff       	jmp    0x460cef
  460dfb:	39 7e 40             	cmp    DWORD PTR [esi+0x40],edi
  460dfe:	74 04                	je     0x460e04
  460e00:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  460e04:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460e07:	c7 06 8c e5 4d 00    	mov    DWORD PTR [esi],0x4de58c
  460e0d:	83 c6 08             	add    esi,0x8
  460e10:	56                   	push   esi
  460e11:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  460e17:	5f                   	pop    edi
  460e18:	5e                   	pop    esi
  460e19:	5b                   	pop    ebx
  460e1a:	c3                   	ret

; Liste SpellEffectManager / insertion en tete — 0x00460E50 .. 0x00460EE4 (exclusif), 61 instructions confirmees
  460e50:	55                   	push   ebp
  460e51:	8b ec                	mov    ebp,esp
  460e53:	56                   	push   esi
  460e54:	8b f1                	mov    esi,ecx
  460e56:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  460e59:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  460e5c:	57                   	push   edi
  460e5d:	33 ff                	xor    edi,edi
  460e5f:	42                   	inc    edx
  460e60:	3b c7                	cmp    eax,edi
  460e62:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  460e65:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460e68:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  460e6c:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  460e6f:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  460e72:	6a 0c                	push   0xc
  460e74:	75 35                	jne    0x460eab
  460e76:	e8 75 11 fe ff       	call   0x441ff0
  460e7b:	83 c4 04             	add    esp,0x4
  460e7e:	3b c7                	cmp    eax,edi
  460e80:	74 07                	je     0x460e89
  460e82:	89 38                	mov    DWORD PTR [eax],edi
  460e84:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  460e87:	eb 02                	jmp    0x460e8b
  460e89:	33 c0                	xor    eax,eax
  460e8b:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  460e8e:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  460e91:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  460e94:	89 38                	mov    DWORD PTR [eax],edi
  460e96:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  460e99:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  460e9c:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  460e9f:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  460ea2:	5f                   	pop    edi
  460ea3:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  460ea6:	5e                   	pop    esi
  460ea7:	5d                   	pop    ebp
  460ea8:	c2 04 00             	ret    0x4
  460eab:	e8 40 11 fe ff       	call   0x441ff0
  460eb0:	83 c4 04             	add    esp,0x4
  460eb3:	3b c7                	cmp    eax,edi
  460eb5:	74 07                	je     0x460ebe
  460eb7:	89 38                	mov    DWORD PTR [eax],edi
  460eb9:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  460ebc:	eb 02                	jmp    0x460ec0
  460ebe:	33 c0                	xor    eax,eax
  460ec0:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  460ec3:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  460ec6:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  460ec9:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  460ecc:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  460ecf:	89 10                	mov    DWORD PTR [eax],edx
  460ed1:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  460ed4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  460ed7:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  460eda:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  460edd:	5f                   	pop    edi
  460ede:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  460ee1:	5e                   	pop    esi
  460ee2:	5d                   	pop    ebp
  460ee3:	c2                   	.byte 0xc2

