; T4C Server (1).exe — passe 32 — extraits GNU objdump x86 Intel.
; VA original, octets confrontés au fichier. Données statiques uniquement.

; Unit::DispellEffectWithFlag @0x0048cad0..0x0048cce0
  48cad0:	55                   	push   ebp
  48cad1:	8b ec                	mov    ebp,esp
  48cad3:	6a ff                	push   0xffffffff
  48cad5:	68 08 a7 4d 00       	push   0x4da708
  48cada:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48cae0:	50                   	push   eax
  48cae1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48cae8:	83 ec 4c             	sub    esp,0x4c
  48caeb:	53                   	push   ebx
  48caec:	56                   	push   esi
  48caed:	57                   	push   edi
  48caee:	8b f1                	mov    esi,ecx
  48caf0:	33 ff                	xor    edi,edi
  48caf2:	3b f7                	cmp    esi,edi
  48caf4:	74 08                	je     0x48cafe
  48caf6:	8d 5e 30             	lea    ebx,[esi+0x30]
  48caf9:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  48cafc:	eb 05                	jmp    0x48cb03
  48cafe:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  48cb01:	8b df                	mov    ebx,edi
  48cb03:	8b 03                	mov    eax,DWORD PTR [ebx]
  48cb05:	8b cb                	mov    ecx,ebx
  48cb07:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  48cb0a:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48cb0d:	8b 86 00 01 00 00    	mov    eax,DWORD PTR [esi+0x100]
  48cb13:	83 f8 01             	cmp    eax,0x1
  48cb16:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  48cb19:	72 10                	jb     0x48cb2b
  48cb1b:	8b 13                	mov    edx,DWORD PTR [ebx]
  48cb1d:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48cb24:	8b cb                	mov    ecx,ebx
  48cb26:	e9 92 01 00 00       	jmp    0x48ccbd
  48cb2b:	39 be f4 00 00 00    	cmp    DWORD PTR [esi+0xf4],edi
  48cb31:	75 21                	jne    0x48cb54
  48cb33:	8b 03                	mov    eax,DWORD PTR [ebx]
  48cb35:	8b cb                	mov    ecx,ebx
  48cb37:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48cb3e:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48cb41:	5f                   	pop    edi
  48cb42:	5e                   	pop    esi
  48cb43:	5b                   	pop    ebx
  48cb44:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48cb47:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48cb4e:	8b e5                	mov    esp,ebp
  48cb50:	5d                   	pop    ebp
  48cb51:	c2 04 00             	ret    0x4
  48cb54:	8d 4d b0             	lea    ecx,[ebp-0x50]
  48cb57:	40                   	inc    eax
  48cb58:	51                   	push   ecx
  48cb59:	89 86 00 01 00 00    	mov    DWORD PTR [esi+0x100],eax
  48cb5f:	c7 45 a8 8c e5 4d 00 	mov    DWORD PTR [ebp-0x58],0x4de58c
  48cb66:	c7 45 ac ff ff ff ff 	mov    DWORD PTR [ebp-0x54],0xffffffff
  48cb6d:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  48cb73:	89 7d cc             	mov    DWORD PTR [ebp-0x34],edi
  48cb76:	89 7d d0             	mov    DWORD PTR [ebp-0x30],edi
  48cb79:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
  48cb7c:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
  48cb7f:	c7 45 a8 3c f8 4d 00 	mov    DWORD PTR [ebp-0x58],0x4df83c
  48cb86:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
  48cb89:	c6 45 dc 08          	mov    BYTE PTR [ebp-0x24],0x8
  48cb8d:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  48cb90:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48cb96:	8b 11                	mov    edx,DWORD PTR [ecx]
  48cb98:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  48cb9c:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48cb9f:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cba5:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48cba8:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  48cbab:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cbae:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  48cbb1:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48cbb5:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cbbb:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  48cbbe:	74 0a                	je     0x48cbca
  48cbc0:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48cbc3:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48cbc5:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cbc8:	eb 07                	jmp    0x48cbd1
  48cbca:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48cbd1:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  48cbd4:	74 21                	je     0x48cbf7
  48cbd6:	8b 96 f4 00 00 00    	mov    edx,DWORD PTR [esi+0xf4]
  48cbdc:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48cbdf:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  48cbe2:	39 58 1c             	cmp    DWORD PTR [eax+0x1c],ebx
  48cbe5:	75 ce                	jne    0x48cbb5
  48cbe7:	39 78 08             	cmp    DWORD PTR [eax+0x8],edi
  48cbea:	74 c9                	je     0x48cbb5
  48cbec:	50                   	push   eax
  48cbed:	8d 4d a8             	lea    ecx,[ebp-0x58]
  48cbf0:	e8 2b 3e 00 00       	call   0x490a20
  48cbf5:	eb be                	jmp    0x48cbb5
  48cbf7:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  48cbfa:	b3 07                	mov    bl,0x7
  48cbfc:	74 03                	je     0x48cc01
  48cbfe:	88 58 34             	mov    BYTE PTR [eax+0x34],bl
  48cc01:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  48cc04:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48cc0a:	8b 11                	mov    edx,DWORD PTR [ecx]
  48cc0c:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48cc0f:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  48cc12:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  48cc15:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
  48cc18:	c6 45 dc 08          	mov    BYTE PTR [ebp-0x24],0x8
  48cc1c:	39 7d e8             	cmp    DWORD PTR [ebp-0x18],edi
  48cc1f:	74 07                	je     0x48cc28
  48cc21:	8b 00                	mov    eax,DWORD PTR [eax]
  48cc23:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  48cc26:	eb 07                	jmp    0x48cc2f
  48cc28:	c7 45 e8 01 00 00 00 	mov    DWORD PTR [ebp-0x18],0x1
  48cc2f:	3b c7                	cmp    eax,edi
  48cc31:	74 1c                	je     0x48cc4f
  48cc33:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  48cc36:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  48cc39:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  48cc3c:	57                   	push   edi
  48cc3d:	51                   	push   ecx
  48cc3e:	57                   	push   edi
  48cc3f:	57                   	push   edi
  48cc40:	56                   	push   esi
  48cc41:	52                   	push   edx
  48cc42:	6a 1b                	push   0x1b
  48cc44:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48cc47:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  48cc4a:	83 c4 1c             	add    esp,0x1c
  48cc4d:	eb cd                	jmp    0x48cc1c
  48cc4f:	ff 8e 00 01 00 00    	dec    DWORD PTR [esi+0x100]
  48cc55:	c7 45 a8 3c f8 4d 00 	mov    DWORD PTR [ebp-0x58],0x4df83c
  48cc5c:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  48cc5f:	33 c0                	xor    eax,eax
  48cc61:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  48cc65:	89 4d c8             	mov    DWORD PTR [ebp-0x38],ecx
  48cc68:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  48cc6b:	c6 45 dc 08          	mov    BYTE PTR [ebp-0x24],0x8
  48cc6f:	3b c7                	cmp    eax,edi
  48cc71:	74 07                	je     0x48cc7a
  48cc73:	8b 09                	mov    ecx,DWORD PTR [ecx]
  48cc75:	89 4d c8             	mov    DWORD PTR [ebp-0x38],ecx
  48cc78:	eb 08                	jmp    0x48cc82
  48cc7a:	b8 01 00 00 00       	mov    eax,0x1
  48cc7f:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  48cc82:	3b cf                	cmp    ecx,edi
  48cc84:	74 10                	je     0x48cc96
  48cc86:	8d 4d a8             	lea    ecx,[ebp-0x58]
  48cc89:	e8 82 38 00 00       	call   0x490510
  48cc8e:	8b 4d c8             	mov    ecx,DWORD PTR [ebp-0x38]
  48cc91:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  48cc94:	eb d9                	jmp    0x48cc6f
  48cc96:	3b c7                	cmp    eax,edi
  48cc98:	74 03                	je     0x48cc9d
  48cc9a:	88 5d dc             	mov    BYTE PTR [ebp-0x24],bl
  48cc9d:	8d 45 b0             	lea    eax,[ebp-0x50]
  48cca0:	50                   	push   eax
  48cca1:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
  48cca4:	c7 45 a8 8c e5 4d 00 	mov    DWORD PTR [ebp-0x58],0x4de58c
  48ccab:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  48ccb1:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48ccb4:	8b 11                	mov    edx,DWORD PTR [ecx]
  48ccb6:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48ccbd:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48ccc0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48ccc3:	5f                   	pop    edi
  48ccc4:	5e                   	pop    esi
  48ccc5:	5b                   	pop    ebx
  48ccc6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48cccd:	8b e5                	mov    esp,ebp
  48cccf:	5d                   	pop    ebp
  48ccd0:	c2 04 00             	ret    0x4
  48ccd3:	90                   	nop
  48ccd4:	90                   	nop
  48ccd5:	90                   	nop
  48ccd6:	90                   	nop
  48ccd7:	90                   	nop
  48ccd8:	90                   	nop
  48ccd9:	90                   	nop
  48ccda:	90                   	nop
  48ccdb:	90                   	nop
  48ccdc:	90                   	nop
  48ccdd:	90                   	nop
  48ccde:	90                   	nop
  48ccdf:	90                   	nop

; Unit::GetEffect @0x0048cce0..0x0048cd90
  48cce0:	55                   	push   ebp
  48cce1:	8b ec                	mov    ebp,esp
  48cce3:	51                   	push   ecx
  48cce4:	53                   	push   ebx
  48cce5:	56                   	push   esi
  48cce6:	8b f1                	mov    esi,ecx
  48cce8:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  48cceb:	57                   	push   edi
  48ccec:	8d 7e 30             	lea    edi,[esi+0x30]
  48ccef:	8b cf                	mov    ecx,edi
  48ccf1:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  48ccf4:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48ccf7:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48ccfd:	33 db                	xor    ebx,ebx
  48ccff:	85 c9                	test   ecx,ecx
  48cd01:	74 7c                	je     0x48cd7f
  48cd03:	8b 11                	mov    edx,DWORD PTR [ecx]
  48cd05:	33 ff                	xor    edi,edi
  48cd07:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48cd0a:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cd10:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48cd13:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cd16:	33 c9                	xor    ecx,ecx
  48cd18:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  48cd1b:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48cd1f:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cd25:	39 48 40             	cmp    DWORD PTR [eax+0x40],ecx
  48cd28:	74 0a                	je     0x48cd34
  48cd2a:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48cd2d:	8b 12                	mov    edx,DWORD PTR [edx]
  48cd2f:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  48cd32:	eb 07                	jmp    0x48cd3b
  48cd34:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48cd3b:	39 48 20             	cmp    DWORD PTR [eax+0x20],ecx
  48cd3e:	74 1f                	je     0x48cd5f
  48cd40:	3b f9                	cmp    edi,ecx
  48cd42:	75 27                	jne    0x48cd6b
  48cd44:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cd4a:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48cd4d:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
  48cd50:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  48cd53:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
  48cd56:	75 c7                	jne    0x48cd1f
  48cd58:	bf 01 00 00 00       	mov    edi,0x1
  48cd5d:	eb c0                	jmp    0x48cd1f
  48cd5f:	39 48 40             	cmp    DWORD PTR [eax+0x40],ecx
  48cd62:	74 04                	je     0x48cd68
  48cd64:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48cd68:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  48cd6b:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48cd71:	8b 11                	mov    edx,DWORD PTR [ecx]
  48cd73:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48cd76:	85 ff                	test   edi,edi
  48cd78:	75 02                	jne    0x48cd7c
  48cd7a:	33 db                	xor    ebx,ebx
  48cd7c:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
  48cd7f:	8b 07                	mov    eax,DWORD PTR [edi]
  48cd81:	8b cf                	mov    ecx,edi
  48cd83:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48cd86:	5f                   	pop    edi
  48cd87:	5e                   	pop    esi
  48cd88:	8b c3                	mov    eax,ebx
  48cd8a:	5b                   	pop    ebx
  48cd8b:	8b e5                	mov    esp,ebp
  48cd8d:	5d                   	pop    ebp
  48cd8e:	c2 04 00             	ret    0x4

; Unit::GetAllEffects @0x0048cda0..0x0048cda7
  48cda0:	8b 81 f4 00 00 00    	mov    eax,DWORD PTR [ecx+0xf4]
  48cda6:	c3                   	ret

; Unit::DestroyEffects @0x0048cdb0..0x0048cf40
  48cdb0:	55                   	push   ebp
  48cdb1:	8b ec                	mov    ebp,esp
  48cdb3:	51                   	push   ecx
  48cdb4:	53                   	push   ebx
  48cdb5:	56                   	push   esi
  48cdb6:	57                   	push   edi
  48cdb7:	8b f9                	mov    edi,ecx
  48cdb9:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  48cdbc:	8d 77 30             	lea    esi,[edi+0x30]
  48cdbf:	8b ce                	mov    ecx,esi
  48cdc1:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  48cdc4:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48cdc7:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48cdcd:	33 db                	xor    ebx,ebx
  48cdcf:	3b cb                	cmp    ecx,ebx
  48cdd1:	0f 84 59 01 00 00    	je     0x48cf30
  48cdd7:	8b 11                	mov    edx,DWORD PTR [ecx]
  48cdd9:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48cddc:	8b 87 f4 00 00 00    	mov    eax,DWORD PTR [edi+0xf4]
  48cde2:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48cde5:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cde8:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48cdeb:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48cdef:	8b 87 f4 00 00 00    	mov    eax,DWORD PTR [edi+0xf4]
  48cdf5:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48cdf8:	74 0a                	je     0x48ce04
  48cdfa:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48cdfd:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48cdff:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48ce02:	eb 07                	jmp    0x48ce0b
  48ce04:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48ce0b:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  48ce0e:	0f 84 ef 00 00 00    	je     0x48cf03
  48ce14:	8b 97 f4 00 00 00    	mov    edx,DWORD PTR [edi+0xf4]
  48ce1a:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48ce1d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  48ce20:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48ce23:	3b cb                	cmp    ecx,ebx
  48ce25:	74 13                	je     0x48ce3a
  48ce27:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  48ce2a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  48ce2d:	53                   	push   ebx
  48ce2e:	52                   	push   edx
  48ce2f:	53                   	push   ebx
  48ce30:	53                   	push   ebx
  48ce31:	57                   	push   edi
  48ce32:	50                   	push   eax
  48ce33:	6a 09                	push   0x9
  48ce35:	ff d1                	call   ecx
  48ce37:	83 c4 1c             	add    esp,0x1c
  48ce3a:	8b b7 f4 00 00 00    	mov    esi,DWORD PTR [edi+0xf4]
  48ce40:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  48ce43:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48ce46:	48                   	dec    eax
  48ce47:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  48ce4a:	8b c1                	mov    eax,ecx
  48ce4c:	89 4e 2c             	mov    DWORD PTR [esi+0x2c],ecx
  48ce4f:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  48ce52:	3b c1                	cmp    eax,ecx
  48ce54:	74 3d                	je     0x48ce93
  48ce56:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48ce59:	74 34                	je     0x48ce8f
  48ce5b:	8b 10                	mov    edx,DWORD PTR [eax]
  48ce5d:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  48ce60:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  48ce63:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48ce66:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48ce69:	8b 10                	mov    edx,DWORD PTR [eax]
  48ce6b:	89 11                	mov    DWORD PTR [ecx],edx
  48ce6d:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  48ce70:	83 f8 01             	cmp    eax,0x1
  48ce73:	75 0b                	jne    0x48ce80
  48ce75:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48ce78:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48ce7b:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  48ce7e:	eb 63                	jmp    0x48cee3
  48ce80:	83 f8 02             	cmp    eax,0x2
  48ce83:	75 5e                	jne    0x48cee3
  48ce85:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48ce88:	8b 02                	mov    eax,DWORD PTR [edx]
  48ce8a:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48ce8d:	eb 54                	jmp    0x48cee3
  48ce8f:	3b c1                	cmp    eax,ecx
  48ce91:	75 23                	jne    0x48ceb6
  48ce93:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48ce96:	74 23                	je     0x48cebb
  48ce98:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48ce9b:	89 19                	mov    DWORD PTR [ecx],ebx
  48ce9d:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48cea0:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  48cea3:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48cea6:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  48ceaa:	8b ca                	mov    ecx,edx
  48ceac:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48ceaf:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  48ceb2:	75 2f                	jne    0x48cee3
  48ceb4:	eb 2a                	jmp    0x48cee0
  48ceb6:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48ceb9:	75 1c                	jne    0x48ced7
  48cebb:	3b c1                	cmp    eax,ecx
  48cebd:	74 18                	je     0x48ced7
  48cebf:	8b 00                	mov    eax,DWORD PTR [eax]
  48cec1:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48cec4:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48cec7:	8b 01                	mov    eax,DWORD PTR [ecx]
  48cec9:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48cecc:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48cecf:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  48ced3:	75 0e                	jne    0x48cee3
  48ced5:	eb 09                	jmp    0x48cee0
  48ced7:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  48ceda:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  48cedd:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  48cee0:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48cee3:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  48cee6:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  48cee9:	50                   	push   eax
  48ceea:	e8 71 51 fb ff       	call   0x442060
  48ceef:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  48cef2:	51                   	push   ecx
  48cef3:	e8 68 51 fb ff       	call   0x442060
  48cef8:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
  48cefb:	83 c4 08             	add    esp,0x8
  48cefe:	e9 ec fe ff ff       	jmp    0x48cdef
  48cf03:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48cf06:	74 04                	je     0x48cf0c
  48cf08:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48cf0c:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48cf0f:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48cf15:	8b 11                	mov    edx,DWORD PTR [ecx]
  48cf17:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48cf1a:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48cf20:	3b cb                	cmp    ecx,ebx
  48cf22:	74 06                	je     0x48cf2a
  48cf24:	8b 01                	mov    eax,DWORD PTR [ecx]
  48cf26:	6a 01                	push   0x1
  48cf28:	ff 10                	call   DWORD PTR [eax]
  48cf2a:	89 9f f4 00 00 00    	mov    DWORD PTR [edi+0xf4],ebx
  48cf30:	8b 16                	mov    edx,DWORD PTR [esi]
  48cf32:	8b ce                	mov    ecx,esi
  48cf34:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48cf37:	5f                   	pop    edi
  48cf38:	5e                   	pop    esi
  48cf39:	5b                   	pop    ebx
  48cf3a:	8b e5                	mov    esp,ebp
  48cf3c:	5d                   	pop    ebp
  48cf3d:	c3                   	ret
  48cf3e:	90                   	nop
  48cf3f:	90                   	nop

; Unit::SendGlobalEffectMessage @0x0048cf40..0x0048d110
  48cf40:	55                   	push   ebp
  48cf41:	8b ec                	mov    ebp,esp
  48cf43:	6a ff                	push   0xffffffff
  48cf45:	68 30 a7 4d 00       	push   0x4da730
  48cf4a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48cf50:	50                   	push   eax
  48cf51:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48cf58:	83 ec 48             	sub    esp,0x48
  48cf5b:	53                   	push   ebx
  48cf5c:	56                   	push   esi
  48cf5d:	57                   	push   edi
  48cf5e:	8d 45 b4             	lea    eax,[ebp-0x4c]
  48cf61:	50                   	push   eax
  48cf62:	8b f1                	mov    esi,ecx
  48cf64:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  48cf6b:	c7 45 b0 ff ff ff ff 	mov    DWORD PTR [ebp-0x50],0xffffffff
  48cf72:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  48cf78:	33 ff                	xor    edi,edi
  48cf7a:	89 7d d0             	mov    DWORD PTR [ebp-0x30],edi
  48cf7d:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
  48cf80:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
  48cf83:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
  48cf86:	c7 45 ac 3c f8 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df83c
  48cf8d:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48cf90:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48cf94:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
  48cf97:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  48cf9a:	8d 4e 30             	lea    ecx,[esi+0x30]
  48cf9d:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  48cfa0:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  48cfa3:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48cfa6:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48cfac:	3b cf                	cmp    ecx,edi
  48cfae:	74 67                	je     0x48d017
  48cfb0:	8b 01                	mov    eax,DWORD PTR [ecx]
  48cfb2:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48cfb5:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cfbb:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48cfbe:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cfc1:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  48cfc4:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48cfc8:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cfce:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  48cfd1:	74 0a                	je     0x48cfdd
  48cfd3:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48cfd6:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48cfd8:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cfdb:	eb 07                	jmp    0x48cfe4
  48cfdd:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48cfe4:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  48cfe7:	74 17                	je     0x48d000
  48cfe9:	8b 96 f4 00 00 00    	mov    edx,DWORD PTR [esi+0xf4]
  48cfef:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48cff2:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48cff5:	51                   	push   ecx
  48cff6:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48cff9:	e8 22 3a 00 00       	call   0x490a20
  48cffe:	eb c8                	jmp    0x48cfc8
  48d000:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  48d003:	74 04                	je     0x48d009
  48d005:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48d009:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  48d00c:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48d012:	8b 11                	mov    edx,DWORD PTR [ecx]
  48d014:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48d017:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  48d01a:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
  48d01d:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48d020:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48d023:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48d027:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  48d02a:	3b cf                	cmp    ecx,edi
  48d02c:	74 07                	je     0x48d035
  48d02e:	8b 00                	mov    eax,DWORD PTR [eax]
  48d030:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48d033:	eb 08                	jmp    0x48d03d
  48d035:	b9 01 00 00 00       	mov    ecx,0x1
  48d03a:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
  48d03d:	3b c7                	cmp    eax,edi
  48d03f:	74 3a                	je     0x48d07b
  48d041:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  48d044:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48d047:	3b cf                	cmp    ecx,edi
  48d049:	75 14                	jne    0x48d05f
  48d04b:	68 24 dd 50 00       	push   0x50dd24
  48d050:	6a 01                	push   0x1
  48d052:	e8 e9 4c fe ff       	call   0x471d40
  48d057:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  48d05a:	83 c4 08             	add    esp,0x8
  48d05d:	eb c8                	jmp    0x48d027
  48d05f:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  48d062:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  48d065:	57                   	push   edi
  48d066:	52                   	push   edx
  48d067:	57                   	push   edi
  48d068:	66 33 d2             	xor    dx,dx
  48d06b:	8a d3                	mov    dl,bl
  48d06d:	57                   	push   edi
  48d06e:	56                   	push   esi
  48d06f:	50                   	push   eax
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
  48d0d0:	eb d9                	jmp    0x48d0ab
  48d0d2:	3b c7                	cmp    eax,edi
  48d0d4:	74 04                	je     0x48d0da
  48d0d6:	c6 45 e0 07          	mov    BYTE PTR [ebp-0x20],0x7
  48d0da:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  48d0dd:	51                   	push   ecx
  48d0de:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48d0e1:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  48d0e8:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  48d0ee:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48d0f1:	5f                   	pop    edi
  48d0f2:	5e                   	pop    esi
  48d0f3:	5b                   	pop    ebx
  48d0f4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48d0fb:	8b e5                	mov    esp,ebp
  48d0fd:	5d                   	pop    ebp
  48d0fe:	c2 10 00             	ret    0x10
  48d101:	90                   	nop
  48d102:	90                   	nop
  48d103:	90                   	nop
  48d104:	90                   	nop
  48d105:	90                   	nop
  48d106:	90                   	nop
  48d107:	90                   	nop
  48d108:	90                   	nop
  48d109:	90                   	nop
  48d10a:	90                   	nop
  48d10b:	90                   	nop
  48d10c:	90                   	nop
  48d10d:	90                   	nop
  48d10e:	90                   	nop
  48d10f:	90                   	nop

; GetNextGlobalEffectID @0x00462810..0x00462821
  462810:	68 84 6d 50 00       	push   0x506d84
  462815:	ff 15 50 e1 4d 00    	call   DWORD PTR ds:0x4de150
  46281b:	a1 84 6d 50 00       	mov    eax,ds:0x506d84
  462820:	c3                   	ret

; UnitEffectManager::Destroy @0x00490c20..0x00490d73
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
