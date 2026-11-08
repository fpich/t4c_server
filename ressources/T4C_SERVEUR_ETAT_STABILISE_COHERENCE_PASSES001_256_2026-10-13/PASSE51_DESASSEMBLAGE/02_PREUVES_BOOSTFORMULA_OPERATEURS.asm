; PASSE 51 — BoostFormula::GetOperandValue — recursion et douze operateurs
; SHA256 PE serveur 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Tout code assembleur compte uniquement si ses octets sont compares a la section .text du serveur.
; Intervalles semi-ouverts. Les ranges ne sont pas des claims de couverture de tous les chemins.

; Entree et sous-arbres arithmetiques [0x409c10,0x409cd4)
; Symbole exporte GetOperandValue; sous-arbres +0x18/+0x1C et branchement sur premier byte de l operande.
  409c10:	55                   	push   ebp
  409c11:	8b ec                	mov    ebp,esp
  409c13:	6a ff                	push   0xffffffff
  409c15:	68 a1 36 4d 00       	push   0x4d36a1
  409c1a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  409c20:	50                   	push   eax
  409c21:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  409c28:	83 ec 58             	sub    esp,0x58
  409c2b:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  409c31:	53                   	push   ebx
  409c32:	56                   	push   esi
  409c33:	dd 55 e0             	fst    QWORD PTR [ebp-0x20]
  409c36:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  409c39:	8a 06                	mov    al,BYTE PTR [esi]
  409c3b:	33 db                	xor    ebx,ebx
  409c3d:	3a c3                	cmp    al,bl
  409c3f:	57                   	push   edi
  409c40:	8b f9                	mov    edi,ecx
  409c42:	0f 84 15 03 00 00    	je     0x409f5d
  409c48:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  409c4b:	3b c3                	cmp    eax,ebx
  409c4d:	0f 84 72 01 00 00    	je     0x409dc5
  409c53:	39 5e 1c             	cmp    DWORD PTR [esi+0x1c],ebx
  409c56:	0f 84 69 01 00 00    	je     0x409dc5
  409c5c:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  409c5f:	dd d8                	fstp   st(0)
  409c61:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  409c64:	51                   	push   ecx
  409c65:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  409c68:	52                   	push   edx
  409c69:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  409c6c:	51                   	push   ecx
  409c6d:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  409c70:	52                   	push   edx
  409c71:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  409c74:	51                   	push   ecx
  409c75:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  409c78:	52                   	push   edx
  409c79:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  409c7c:	51                   	push   ecx
  409c7d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  409c80:	52                   	push   edx
  409c81:	51                   	push   ecx
  409c82:	50                   	push   eax
  409c83:	8b cf                	mov    ecx,edi
  409c85:	e8 86 ff ff ff       	call   0x409c10
  409c8a:	dd 5d ec             	fstp   QWORD PTR [ebp-0x14]
  409c8d:	8b 55 2c             	mov    edx,DWORD PTR [ebp+0x2c]
  409c90:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  409c93:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  409c96:	52                   	push   edx
  409c97:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  409c9a:	50                   	push   eax
  409c9b:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  409c9e:	51                   	push   ecx
  409c9f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  409ca2:	52                   	push   edx
  409ca3:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  409ca6:	50                   	push   eax
  409ca7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  409caa:	51                   	push   ecx
  409cab:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  409cae:	52                   	push   edx
  409caf:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
  409cb2:	50                   	push   eax
  409cb3:	51                   	push   ecx
  409cb4:	52                   	push   edx
  409cb5:	8b cf                	mov    ecx,edi
  409cb7:	e8 54 ff ff ff       	call   0x409c10
  409cbc:	dd 5d 14             	fstp   QWORD PTR [ebp+0x14]
  409cbf:	33 c0                	xor    eax,eax
  409cc1:	8a 06                	mov    al,BYTE PTR [esi]
  409cc3:	48                   	dec    eax
  409cc4:	83 f8 0b             	cmp    eax,0xb
  409cc7:	0f 87 f5 00 00 00    	ja     0x409dc2
  409ccd:	ff 24 85 14 c1 40 00 	jmp    DWORD PTR [eax*4+0x40c114]

; Addition soustraction multiplication et controle de division par zero [0x409cd4,0x409df1)
; Index types 1..4; x87 fadd fsub fmul fdiv et sortie zero avec diagnostic dans la division.
  409cd4:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  409cd7:	5f                   	pop    edi
  409cd8:	dc 45 ec             	fadd   QWORD PTR [ebp-0x14]
  409cdb:	5e                   	pop    esi
  409cdc:	5b                   	pop    ebx
  409cdd:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409ce0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409ce7:	8b e5                	mov    esp,ebp
  409ce9:	5d                   	pop    ebp
  409cea:	c2 28 00             	ret    0x28
  409ced:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409cf0:	5f                   	pop    edi
  409cf1:	dc 65 14             	fsub   QWORD PTR [ebp+0x14]
  409cf4:	5e                   	pop    esi
  409cf5:	5b                   	pop    ebx
  409cf6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409cf9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409d00:	8b e5                	mov    esp,ebp
  409d02:	5d                   	pop    ebp
  409d03:	c2 28 00             	ret    0x28
  409d06:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  409d09:	5f                   	pop    edi
  409d0a:	dc 4d ec             	fmul   QWORD PTR [ebp-0x14]
  409d0d:	5e                   	pop    esi
  409d0e:	5b                   	pop    ebx
  409d0f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409d12:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409d19:	8b e5                	mov    esp,ebp
  409d1b:	5d                   	pop    ebp
  409d1c:	c2 28 00             	ret    0x28
  409d1f:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  409d22:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  409d28:	df e0                	fnstsw ax
  409d2a:	f6 c4 40             	test   ah,0x40
  409d2d:	0f 84 a5 00 00 00    	je     0x409dd8
  409d33:	8b 7f 28             	mov    edi,DWORD PTR [edi+0x28]
  409d36:	57                   	push   edi
  409d37:	68 e4 06 50 00       	push   0x5006e4
  409d3c:	6a 01                	push   0x1
  409d3e:	e8 fd 7f 06 00       	call   0x471d40
  409d43:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  409d46:	83 c4 0c             	add    esp,0xc
  409d49:	3b f3                	cmp    esi,ebx
  409d4b:	74 35                	je     0x409d82
  409d4d:	8b 3e                	mov    edi,DWORD PTR [esi]
  409d4f:	e8 0c 3d 03 00       	call   0x43da60
  409d54:	8b ce                	mov    ecx,esi
  409d56:	50                   	push   eax
  409d57:	8d 45 2c             	lea    eax,[ebp+0x2c]
  409d5a:	50                   	push   eax
  409d5b:	ff 57 48             	call   DWORD PTR [edi+0x48]
  409d5e:	8b 08                	mov    ecx,DWORD PTR [eax]
  409d60:	51                   	push   ecx
  409d61:	68 d0 06 50 00       	push   0x5006d0
  409d66:	6a 01                	push   0x1
  409d68:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  409d6b:	e8 d0 7f 06 00       	call   0x471d40
  409d70:	83 c4 0c             	add    esp,0xc
  409d73:	8d 4d 2c             	lea    ecx,[ebp+0x2c]
  409d76:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  409d7d:	e8 be 7c 0c 00       	call   0x4d1a40
  409d82:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  409d85:	3b f3                	cmp    esi,ebx
  409d87:	74 39                	je     0x409dc2
  409d89:	8b 3e                	mov    edi,DWORD PTR [esi]
  409d8b:	e8 d0 3c 03 00       	call   0x43da60
  409d90:	8d 55 08             	lea    edx,[ebp+0x8]
  409d93:	8b ce                	mov    ecx,esi
  409d95:	50                   	push   eax
  409d96:	52                   	push   edx
  409d97:	ff 57 48             	call   DWORD PTR [edi+0x48]
  409d9a:	8b 00                	mov    eax,DWORD PTR [eax]
  409d9c:	50                   	push   eax
  409d9d:	68 b8 06 50 00       	push   0x5006b8
  409da2:	6a 01                	push   0x1
  409da4:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  409dab:	e8 90 7f 06 00       	call   0x471d40
  409db0:	83 c4 0c             	add    esp,0xc
  409db3:	8d 4d 08             	lea    ecx,[ebp+0x8]
  409db6:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  409dbd:	e8 7e 7c 0c 00       	call   0x4d1a40
  409dc2:	dd 45 e0             	fld    QWORD PTR [ebp-0x20]
  409dc5:	5f                   	pop    edi
  409dc6:	5e                   	pop    esi
  409dc7:	5b                   	pop    ebx
  409dc8:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409dcb:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409dd2:	8b e5                	mov    esp,ebp
  409dd4:	5d                   	pop    ebp
  409dd5:	c2 28 00             	ret    0x28
  409dd8:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409ddb:	5f                   	pop    edi
  409ddc:	dc 75 14             	fdiv   QWORD PTR [ebp+0x14]
  409ddf:	5e                   	pop    esi
  409de0:	5b                   	pop    ebx
  409de1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409de4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409deb:	8b e5                	mov    esp,ebp
  409ded:	5d                   	pop    ebp
  409dee:	c2 28 00             	ret    0x28

; Operation x87 externe et RNG borne [0x409df1,0x409e4f)
; Case 5 via thunk 0x4d1d80 opaque; case 6 conversion de doubles en entiers puis Random::operator(dice) 0x459120.
  409df1:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409df4:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  409df7:	e8 84 7f 0c 00       	call   0x4d1d80
  409dfc:	5f                   	pop    edi
  409dfd:	5e                   	pop    esi
  409dfe:	5b                   	pop    ebx
  409dff:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409e02:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409e09:	8b e5                	mov    esp,ebp
  409e0b:	5d                   	pop    ebp
  409e0c:	c2 28 00             	ret    0x28
  409e0f:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409e12:	e8 63 7f 0c 00       	call   0x4d1d7a
  409e17:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  409e1a:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  409e1d:	e8 58 7f 0c 00       	call   0x4d1d7a
  409e22:	8d 4d e8             	lea    ecx,[ebp-0x18]
  409e25:	51                   	push   ecx
  409e26:	b9 34 5e 51 00       	mov    ecx,0x515e34
  409e2b:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  409e2e:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  409e31:	e8 ea f2 04 00       	call   0x459120
  409e36:	5f                   	pop    edi
  409e37:	5e                   	pop    esi
  409e38:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  409e3b:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  409e3e:	5b                   	pop    ebx
  409e3f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409e42:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409e49:	8b e5                	mov    esp,ebp
  409e4b:	5d                   	pop    ebp
  409e4c:	c2 28 00             	ret    0x28

; Operateurs booleens par comparaison x87 [0x409e4f,0x409f5d)
; Cases 7..12: comparaison de deux doubles convertie en 0 ou 1; conserver les differents masques ah.
  409e4f:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409e52:	c7 45 10 01 00 00 00 	mov    DWORD PTR [ebp+0x10],0x1
  409e59:	dc 5d 14             	fcomp  QWORD PTR [ebp+0x14]
  409e5c:	df e0                	fnstsw ax
  409e5e:	f6 c4 40             	test   ah,0x40
  409e61:	75 03                	jne    0x409e66
  409e63:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  409e66:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  409e69:	5f                   	pop    edi
  409e6a:	5e                   	pop    esi
  409e6b:	5b                   	pop    ebx
  409e6c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409e6f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409e76:	8b e5                	mov    esp,ebp
  409e78:	5d                   	pop    ebp
  409e79:	c2 28 00             	ret    0x28
  409e7c:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409e7f:	c7 45 10 01 00 00 00 	mov    DWORD PTR [ebp+0x10],0x1
  409e86:	dc 5d 14             	fcomp  QWORD PTR [ebp+0x14]
  409e89:	df e0                	fnstsw ax
  409e8b:	f6 c4 40             	test   ah,0x40
  409e8e:	74 03                	je     0x409e93
  409e90:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  409e93:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  409e96:	5f                   	pop    edi
  409e97:	5e                   	pop    esi
  409e98:	5b                   	pop    ebx
  409e99:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409e9c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409ea3:	8b e5                	mov    esp,ebp
  409ea5:	5d                   	pop    ebp
  409ea6:	c2 28 00             	ret    0x28
  409ea9:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409eac:	c7 45 10 01 00 00 00 	mov    DWORD PTR [ebp+0x10],0x1
  409eb3:	dc 5d 14             	fcomp  QWORD PTR [ebp+0x14]
  409eb6:	df e0                	fnstsw ax
  409eb8:	f6 c4 41             	test   ah,0x41
  409ebb:	74 03                	je     0x409ec0
  409ebd:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  409ec0:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  409ec3:	5f                   	pop    edi
  409ec4:	5e                   	pop    esi
  409ec5:	5b                   	pop    ebx
  409ec6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409ec9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409ed0:	8b e5                	mov    esp,ebp
  409ed2:	5d                   	pop    ebp
  409ed3:	c2 28 00             	ret    0x28
  409ed6:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409ed9:	c7 45 10 01 00 00 00 	mov    DWORD PTR [ebp+0x10],0x1
  409ee0:	dc 5d 14             	fcomp  QWORD PTR [ebp+0x14]
  409ee3:	df e0                	fnstsw ax
  409ee5:	f6 c4 01             	test   ah,0x1
  409ee8:	74 03                	je     0x409eed
  409eea:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  409eed:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  409ef0:	5f                   	pop    edi
  409ef1:	5e                   	pop    esi
  409ef2:	5b                   	pop    ebx
  409ef3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409ef6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409efd:	8b e5                	mov    esp,ebp
  409eff:	5d                   	pop    ebp
  409f00:	c2 28 00             	ret    0x28
  409f03:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409f06:	c7 45 10 01 00 00 00 	mov    DWORD PTR [ebp+0x10],0x1
  409f0d:	dc 5d 14             	fcomp  QWORD PTR [ebp+0x14]
  409f10:	df e0                	fnstsw ax
  409f12:	f6 c4 01             	test   ah,0x1
  409f15:	75 03                	jne    0x409f1a
  409f17:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  409f1a:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  409f1d:	5f                   	pop    edi
  409f1e:	5e                   	pop    esi
  409f1f:	5b                   	pop    ebx
  409f20:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409f23:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409f2a:	8b e5                	mov    esp,ebp
  409f2c:	5d                   	pop    ebp
  409f2d:	c2 28 00             	ret    0x28
  409f30:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409f33:	c7 45 10 01 00 00 00 	mov    DWORD PTR [ebp+0x10],0x1
  409f3a:	dc 5d 14             	fcomp  QWORD PTR [ebp+0x14]
  409f3d:	df e0                	fnstsw ax
  409f3f:	f6 c4 41             	test   ah,0x41
  409f42:	75 03                	jne    0x409f47
  409f44:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  409f47:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  409f4a:	5f                   	pop    edi
  409f4b:	5e                   	pop    esi
  409f4c:	5b                   	pop    ebx
  409f4d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  409f50:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  409f57:	8b e5                	mov    esp,ebp
  409f59:	5d                   	pop    ebp
  409f5a:	c2 28 00             	ret    0x28

; Interrogation des classes d operandes composites [0x409f5d,0x40a0a3)
; Second aiguillage sur type de noeud et son parametre; sous-expressions conditionnelles et retours.
  409f5d:	33 c0                	xor    eax,eax
  409f5f:	8a 46 11             	mov    al,BYTE PTR [esi+0x11]
  409f62:	3a c3                	cmp    al,bl
  409f64:	0f 84 b5 06 00 00    	je     0x40a61f
  409f6a:	25 ff 00 00 00       	and    eax,0xff
  409f6f:	83 c0 fe             	add    eax,0xfffffffe
  409f72:	83 f8 0b             	cmp    eax,0xb
  409f75:	0f 87 4a fe ff ff    	ja     0x409dc5
  409f7b:	ff 24 85 44 c1 40 00 	jmp    DWORD PTR [eax*4+0x40c144]
  409f82:	8b 5d 2c             	mov    ebx,DWORD PTR [ebp+0x2c]
  409f85:	dd d8                	fstp   st(0)
  409f87:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  409f8a:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  409f8d:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  409f90:	53                   	push   ebx
  409f91:	52                   	push   edx
  409f92:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  409f95:	50                   	push   eax
  409f96:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  409f99:	51                   	push   ecx
  409f9a:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  409f9d:	52                   	push   edx
  409f9e:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  409fa1:	50                   	push   eax
  409fa2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  409fa5:	51                   	push   ecx
  409fa6:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  409fa9:	52                   	push   edx
  409faa:	50                   	push   eax
  409fab:	51                   	push   ecx
  409fac:	8b cf                	mov    ecx,edi
  409fae:	e8 5d fc ff ff       	call   0x409c10
  409fb3:	dd 5d ec             	fstp   QWORD PTR [ebp-0x14]
  409fb6:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  409fb9:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  409fbc:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  409fbf:	53                   	push   ebx
  409fc0:	52                   	push   edx
  409fc1:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  409fc4:	50                   	push   eax
  409fc5:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  409fc8:	51                   	push   ecx
  409fc9:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  409fcc:	52                   	push   edx
  409fcd:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  409fd0:	50                   	push   eax
  409fd1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  409fd4:	51                   	push   ecx
  409fd5:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  409fd8:	52                   	push   edx
  409fd9:	50                   	push   eax
  409fda:	51                   	push   ecx
  409fdb:	8b cf                	mov    ecx,edi
  409fdd:	e8 2e fc ff ff       	call   0x409c10
  409fe2:	dd 46 08             	fld    QWORD PTR [esi+0x8]
  409fe5:	e8 90 7d 0c 00       	call   0x4d1d7a
  409fea:	48                   	dec    eax
  409feb:	83 f8 05             	cmp    eax,0x5
  409fee:	0f 87 af 00 00 00    	ja     0x40a0a3
  409ff4:	ff 24 85 74 c1 40 00 	jmp    DWORD PTR [eax*4+0x40c174]
  409ffb:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409ffe:	d8 d9                	fcomp  st(1)
  40a000:	df e0                	fnstsw ax
  40a002:	dd d8                	fstp   st(0)
  40a004:	f6 c4 40             	test   ah,0x40
  40a007:	0f 84 98 00 00 00    	je     0x40a0a5
  40a00d:	eb 52                	jmp    0x40a061
  40a00f:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a012:	d8 d9                	fcomp  st(1)
  40a014:	df e0                	fnstsw ax
  40a016:	dd d8                	fstp   st(0)
  40a018:	f6 c4 41             	test   ah,0x41
  40a01b:	0f 85 84 00 00 00    	jne    0x40a0a5
  40a021:	eb 3e                	jmp    0x40a061
  40a023:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a026:	d8 d9                	fcomp  st(1)
  40a028:	df e0                	fnstsw ax
  40a02a:	dd d8                	fstp   st(0)
  40a02c:	f6 c4 01             	test   ah,0x1
  40a02f:	74 74                	je     0x40a0a5
  40a031:	eb 2e                	jmp    0x40a061
  40a033:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a036:	d8 d9                	fcomp  st(1)
  40a038:	df e0                	fnstsw ax
  40a03a:	dd d8                	fstp   st(0)
  40a03c:	f6 c4 01             	test   ah,0x1
  40a03f:	75 64                	jne    0x40a0a5
  40a041:	eb 1e                	jmp    0x40a061
  40a043:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a046:	d8 d9                	fcomp  st(1)
  40a048:	df e0                	fnstsw ax
  40a04a:	dd d8                	fstp   st(0)
  40a04c:	f6 c4 41             	test   ah,0x41
  40a04f:	74 54                	je     0x40a0a5
  40a051:	eb 0e                	jmp    0x40a061
  40a053:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a056:	d8 d9                	fcomp  st(1)
  40a058:	df e0                	fnstsw ax
  40a05a:	dd d8                	fstp   st(0)
  40a05c:	f6 c4 40             	test   ah,0x40
  40a05f:	75 44                	jne    0x40a0a5
  40a061:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  40a064:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  40a067:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  40a06a:	53                   	push   ebx
  40a06b:	52                   	push   edx
  40a06c:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  40a06f:	50                   	push   eax
  40a070:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40a073:	51                   	push   ecx
  40a074:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  40a077:	52                   	push   edx
  40a078:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  40a07b:	50                   	push   eax
  40a07c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40a07f:	51                   	push   ecx
  40a080:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  40a083:	52                   	push   edx
  40a084:	83 c1 20             	add    ecx,0x20
  40a087:	50                   	push   eax
  40a088:	51                   	push   ecx
  40a089:	8b cf                	mov    ecx,edi
  40a08b:	e8 80 fb ff ff       	call   0x409c10
  40a090:	5f                   	pop    edi
  40a091:	5e                   	pop    esi
  40a092:	5b                   	pop    ebx
  40a093:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a096:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a09d:	8b e5                	mov    esp,ebp
  40a09f:	5d                   	pop    ebp
  40a0a0:	c2 28 00             	ret    0x28
