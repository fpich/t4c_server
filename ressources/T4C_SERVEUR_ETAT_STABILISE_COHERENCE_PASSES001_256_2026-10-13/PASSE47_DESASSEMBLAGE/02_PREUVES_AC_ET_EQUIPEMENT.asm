; PASSE47 — résolution classe d armure et équipement
; Binaire serveur SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; .text — instructions originales validées octet par octet ; adresses VA PE32 x86
; Extrait documentaire statique, non preuve de fonctionnement dynamique

; Character::GetAC | [0x41ea40,0x41ea80[
; Ajoute QueryBoost(20) à GetTrueAC, puis borne inférieure zéro.
  41ea40:	55                   	push   ebp
  41ea41:	8b ec                	mov    ebp,esp
  41ea43:	83 ec 08             	sub    esp,0x8
  41ea46:	56                   	push   esi
  41ea47:	8b f1                	mov    esi,ecx
  41ea49:	6a 14                	push   0x14
  41ea4b:	e8 10 f4 06 00       	call   0x48de60
  41ea50:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  41ea53:	db 45 fc             	fild   DWORD PTR [ebp-0x4]
  41ea56:	8b ce                	mov    ecx,esi
  41ea58:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41ea5b:	e8 20 00 00 00       	call   0x41ea80
  41ea60:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41ea63:	5e                   	pop    esi
  41ea64:	dc 15 30 e6 4d 00    	fcom   QWORD PTR ds:0x4de630
  41ea6a:	df e0                	fnstsw ax
  41ea6c:	f6 c4 41             	test   ah,0x41
  41ea6f:	74 08                	je     0x41ea79
  41ea71:	dd d8                	fstp   st(0)
  41ea73:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  41ea79:	8b e5                	mov    esp,ebp
  41ea7b:	5d                   	pop    ebp
  41ea7c:	c3                   	ret
  41ea7d:	90                   	nop
  41ea7e:	90                   	nop
  41ea7f:	90                   	nop

; Character::GetTrueAC | [0x41ea80,0x41ec00[
; Somme les GetAC virtuels des objets équipés, doublon main secondaire traité.
  41ea80:	55                   	push   ebp
  41ea81:	8b ec                	mov    ebp,esp
  41ea83:	83 ec 08             	sub    esp,0x8
  41ea86:	56                   	push   esi
  41ea87:	8b f1                	mov    esi,ecx
  41ea89:	8b 8e a0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a0]
  41ea8f:	85 c9                	test   ecx,ecx
  41ea91:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
  41ea98:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  41ea9f:	74 0b                	je     0x41eaac
  41eaa1:	8b 01                	mov    eax,DWORD PTR [ecx]
  41eaa3:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  41eaa9:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eaac:	8b 8e a4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a4]
  41eab2:	85 c9                	test   ecx,ecx
  41eab4:	74 0e                	je     0x41eac4
  41eab6:	8b 11                	mov    edx,DWORD PTR [ecx]
  41eab8:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41eabe:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eac1:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eac4:	8b 8e a8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a8]
  41eaca:	85 c9                	test   ecx,ecx
  41eacc:	74 0e                	je     0x41eadc
  41eace:	8b 01                	mov    eax,DWORD PTR [ecx]
  41ead0:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  41ead6:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41ead9:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eadc:	8b 8e ac 01 00 00    	mov    ecx,DWORD PTR [esi+0x1ac]
  41eae2:	85 c9                	test   ecx,ecx
  41eae4:	74 0e                	je     0x41eaf4
  41eae6:	8b 11                	mov    edx,DWORD PTR [ecx]
  41eae8:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41eaee:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eaf1:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eaf4:	8b 8e b0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b0]
  41eafa:	85 c9                	test   ecx,ecx
  41eafc:	74 0e                	je     0x41eb0c
  41eafe:	8b 01                	mov    eax,DWORD PTR [ecx]
  41eb00:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  41eb06:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eb09:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eb0c:	8b 8e dc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1dc]
  41eb12:	85 c9                	test   ecx,ecx
  41eb14:	74 0e                	je     0x41eb24
  41eb16:	8b 11                	mov    edx,DWORD PTR [ecx]
  41eb18:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41eb1e:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eb21:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eb24:	8b 8e d8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d8]
  41eb2a:	85 c9                	test   ecx,ecx
  41eb2c:	74 0e                	je     0x41eb3c
  41eb2e:	8b 01                	mov    eax,DWORD PTR [ecx]
  41eb30:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  41eb36:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eb39:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eb3c:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  41eb42:	85 c9                	test   ecx,ecx
  41eb44:	74 0e                	je     0x41eb54
  41eb46:	8b 11                	mov    edx,DWORD PTR [ecx]
  41eb48:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41eb4e:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eb51:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eb54:	8b 8e d0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d0]
  41eb5a:	85 c9                	test   ecx,ecx
  41eb5c:	74 0e                	je     0x41eb6c
  41eb5e:	8b 01                	mov    eax,DWORD PTR [ecx]
  41eb60:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  41eb66:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eb69:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eb6c:	8b 8e b8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b8]
  41eb72:	85 c9                	test   ecx,ecx
  41eb74:	74 0e                	je     0x41eb84
  41eb76:	8b 11                	mov    edx,DWORD PTR [ecx]
  41eb78:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41eb7e:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eb81:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eb84:	8b 8e bc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1bc]
  41eb8a:	85 c9                	test   ecx,ecx
  41eb8c:	74 0e                	je     0x41eb9c
  41eb8e:	8b 01                	mov    eax,DWORD PTR [ecx]
  41eb90:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  41eb96:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41eb99:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41eb9c:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  41eba2:	85 c9                	test   ecx,ecx
  41eba4:	74 0e                	je     0x41ebb4
  41eba6:	8b 11                	mov    edx,DWORD PTR [ecx]
  41eba8:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41ebae:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41ebb1:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41ebb4:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  41ebba:	39 8e c0 01 00 00    	cmp    DWORD PTR [esi+0x1c0],ecx
  41ebc0:	5e                   	pop    esi
  41ebc1:	74 12                	je     0x41ebd5
  41ebc3:	85 c9                	test   ecx,ecx
  41ebc5:	74 0e                	je     0x41ebd5
  41ebc7:	8b 01                	mov    eax,DWORD PTR [ecx]
  41ebc9:	ff 90 68 01 00 00    	call   DWORD PTR [eax+0x168]
  41ebcf:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  41ebd2:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  41ebd5:	dd 45 f8             	fld    QWORD PTR [ebp-0x8]
  41ebd8:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  41ebde:	df e0                	fnstsw ax
  41ebe0:	f6 c4 41             	test   ah,0x41
  41ebe3:	74 0a                	je     0x41ebef
  41ebe5:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  41ebeb:	8b e5                	mov    esp,ebp
  41ebed:	5d                   	pop    ebp
  41ebee:	c3                   	ret
  41ebef:	dd 45 f8             	fld    QWORD PTR [ebp-0x8]
  41ebf2:	8b e5                	mov    esp,ebp
  41ebf4:	5d                   	pop    ebp
  41ebf5:	c3                   	ret
  41ebf6:	90                   	nop
  41ebf7:	90                   	nop
  41ebf8:	90                   	nop
  41ebf9:	90                   	nop
  41ebfa:	90                   	nop
  41ebfb:	90                   	nop
  41ebfc:	90                   	nop
  41ebfd:	90                   	nop
  41ebfe:	90                   	nop
  41ebff:	90                   	nop

; Unit::GetAC | [0x48c6e0,0x48c790[
; QueryBoost(20), type unité +0x73 et messages 20 sur certains types.
  48c6e0:	55                   	push   ebp
  48c6e1:	8b ec                	mov    ebp,esp
  48c6e3:	83 ec 0c             	sub    esp,0xc
  48c6e6:	56                   	push   esi
  48c6e7:	8b f1                	mov    esi,ecx
  48c6e9:	6a 14                	push   0x14
  48c6eb:	e8 70 17 00 00       	call   0x48de60
  48c6f0:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  48c6f3:	db 45 fc             	fild   DWORD PTR [ebp-0x4]
  48c6f6:	0f be 46 73          	movsx  eax,BYTE PTR [esi+0x73]
  48c6fa:	83 e8 02             	sub    eax,0x2
  48c6fd:	dd 5d f4             	fstp   QWORD PTR [ebp-0xc]
  48c700:	74 46                	je     0x48c748
  48c702:	48                   	dec    eax
  48c703:	75 7b                	jne    0x48c780
  48c705:	8b 06                	mov    eax,DWORD PTR [esi]
  48c707:	8d 4d fc             	lea    ecx,[ebp-0x4]
  48c70a:	51                   	push   ecx
  48c70b:	6a 00                	push   0x0
  48c70d:	6a 00                	push   0x0
  48c70f:	6a 00                	push   0x0
  48c711:	6a 00                	push   0x0
  48c713:	6a 14                	push   0x14
  48c715:	8b ce                	mov    ecx,esi
  48c717:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48c71e:	ff 50 24             	call   DWORD PTR [eax+0x24]
  48c721:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  48c724:	85 c0                	test   eax,eax
  48c726:	74 58                	je     0x48c780
  48c728:	dd 45 f4             	fld    QWORD PTR [ebp-0xc]
  48c72b:	dc 40 30             	fadd   QWORD PTR [eax+0x30]
  48c72e:	dc 15 30 e6 4d 00    	fcom   QWORD PTR ds:0x4de630
  48c734:	df e0                	fnstsw ax
  48c736:	f6 c4 41             	test   ah,0x41
  48c739:	74 4b                	je     0x48c786
  48c73b:	dd d8                	fstp   st(0)
  48c73d:	5e                   	pop    esi
  48c73e:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  48c744:	8b e5                	mov    esp,ebp
  48c746:	5d                   	pop    ebp
  48c747:	c3                   	ret
  48c748:	8b 16                	mov    edx,DWORD PTR [esi]
  48c74a:	8d 45 fc             	lea    eax,[ebp-0x4]
  48c74d:	50                   	push   eax
  48c74e:	6a 00                	push   0x0
  48c750:	6a 00                	push   0x0
  48c752:	6a 00                	push   0x0
  48c754:	6a 00                	push   0x0
  48c756:	6a 14                	push   0x14
  48c758:	8b ce                	mov    ecx,esi
  48c75a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48c761:	ff 52 24             	call   DWORD PTR [edx+0x24]
  48c764:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  48c767:	85 c0                	test   eax,eax
  48c769:	74 15                	je     0x48c780
  48c76b:	db 40 18             	fild   DWORD PTR [eax+0x18]
  48c76e:	dc 45 f4             	fadd   QWORD PTR [ebp-0xc]
  48c771:	dc 15 30 e6 4d 00    	fcom   QWORD PTR ds:0x4de630
  48c777:	df e0                	fnstsw ax
  48c779:	f6 c4 41             	test   ah,0x41
  48c77c:	74 08                	je     0x48c786
  48c77e:	dd d8                	fstp   st(0)
  48c780:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  48c786:	5e                   	pop    esi
  48c787:	8b e5                	mov    esp,ebp
  48c789:	5d                   	pop    ebp
  48c78a:	c3                   	ret
  48c78b:	90                   	nop
  48c78c:	90                   	nop
  48c78d:	90                   	nop
  48c78e:	90                   	nop
  48c78f:	90                   	nop

; Character::attacked — appel AC | [0x41b185,0x41b1b5[
; Déjà documenté passe46; résolution additionnelle du slot +0x168.
  41b185:	8b 16                	mov    edx,DWORD PTR [esi]
  41b187:	8b ce                	mov    ecx,esi
  41b189:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41b18f:	dc 2f                	fsubr  QWORD PTR [edi]
  41b191:	dc 15 30 e6 4d 00    	fcom   QWORD PTR ds:0x4de630
  41b197:	dd 17                	fst    QWORD PTR [edi]
  41b199:	df e0                	fnstsw ax
  41b19b:	f6 c4 41             	test   ah,0x41
  41b19e:	74 08                	je     0x41b1a8
  41b1a0:	dd d8                	fstp   st(0)
  41b1a2:	dd 05 c0 e8 4d 00    	fld    QWORD PTR ds:0x4de8c0
  41b1a8:	dd 1f                	fstp   QWORD PTR [edi]
  41b1aa:	8b 86 90 02 00 00    	mov    eax,DWORD PTR [esi+0x290]
  41b1b0:	89 86 8c 02 00 00    	mov    DWORD PTR [esi+0x28c],eax

