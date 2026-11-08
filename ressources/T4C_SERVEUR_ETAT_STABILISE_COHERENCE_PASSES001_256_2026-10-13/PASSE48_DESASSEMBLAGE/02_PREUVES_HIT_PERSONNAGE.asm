; PASSE 48 — Character::hit — effets, equipement, degats, PV et paquet 33
; SHA-256 du serveur: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Seules instructions x86 dont les octets correspondent a la section PE .text
; Extraction statique. Aucune execution du programme ne permet de conclure sur les chemins reels.

; Initialisation/QueryEffects et message 14 — [0x41CC00,0x41CD06[
; ExecuteSkill(8), QueryEffects(14), calcul dommage et HP. Les parametres exacts des skills ne sont pas generalises.
  41cc00:	55                   	push   ebp
  41cc01:	8b ec                	mov    ebp,esp
  41cc03:	6a ff                	push   0xffffffff
  41cc05:	68 b8 40 4d 00       	push   0x4d40b8
  41cc0a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  41cc10:	50                   	push   eax
  41cc11:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  41cc18:	83 ec 20             	sub    esp,0x20
  41cc1b:	53                   	push   ebx
  41cc1c:	56                   	push   esi
  41cc1d:	8b f1                	mov    esi,ecx
  41cc1f:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  41cc22:	8d 4e 30             	lea    ecx,[esi+0x30]
  41cc25:	57                   	push   edi
  41cc26:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  41cc29:	ff 50 04             	call   DWORD PTR [eax+0x4]
  41cc2c:	8b 8e d4 02 00 00    	mov    ecx,DWORD PTR [esi+0x2d4]
  41cc32:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  41cc35:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  41cc38:	89 8e d0 02 00 00    	mov    DWORD PTR [esi+0x2d0],ecx
  41cc3e:	c7 86 f0 02 00 00 00 	mov    DWORD PTR [esi+0x2f0],0x0
  41cc45:	00 00 00 
  41cc48:	c6 86 e4 02 00 00 08 	mov    BYTE PTR [esi+0x2e4],0x8
  41cc4f:	8b 86 f0 02 00 00    	mov    eax,DWORD PTR [esi+0x2f0]
  41cc55:	85 c0                	test   eax,eax
  41cc57:	74 10                	je     0x41cc69
  41cc59:	8b 96 d0 02 00 00    	mov    edx,DWORD PTR [esi+0x2d0]
  41cc5f:	8b 02                	mov    eax,DWORD PTR [edx]
  41cc61:	89 86 d0 02 00 00    	mov    DWORD PTR [esi+0x2d0],eax
  41cc67:	eb 0a                	jmp    0x41cc73
  41cc69:	c7 86 f0 02 00 00 01 	mov    DWORD PTR [esi+0x2f0],0x1
  41cc70:	00 00 00 
  41cc73:	8b 86 d0 02 00 00    	mov    eax,DWORD PTR [esi+0x2d0]
  41cc79:	85 c0                	test   eax,eax
  41cc7b:	74 1c                	je     0x41cc99
  41cc7d:	8b c8                	mov    ecx,eax
  41cc7f:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  41cc82:	8b 10                	mov    edx,DWORD PTR [eax]
  41cc84:	50                   	push   eax
  41cc85:	6a 00                	push   0x0
  41cc87:	53                   	push   ebx
  41cc88:	57                   	push   edi
  41cc89:	6a 00                	push   0x0
  41cc8b:	56                   	push   esi
  41cc8c:	6a 08                	push   0x8
  41cc8e:	52                   	push   edx
  41cc8f:	e8 6c 33 04 00       	call   0x460000
  41cc94:	83 c4 20             	add    esp,0x20
  41cc97:	eb b6                	jmp    0x41cc4f
  41cc99:	8b 86 f0 02 00 00    	mov    eax,DWORD PTR [esi+0x2f0]
  41cc9f:	85 c0                	test   eax,eax
  41cca1:	74 07                	je     0x41ccaa
  41cca3:	c6 86 e4 02 00 00 07 	mov    BYTE PTR [esi+0x2e4],0x7
  41ccaa:	3b fe                	cmp    edi,esi
  41ccac:	c7 86 f0 02 00 00 00 	mov    DWORD PTR [esi+0x2f0],0x0
  41ccb3:	00 00 00 
  41ccb6:	74 0d                	je     0x41ccc5
  41ccb8:	57                   	push   edi
  41ccb9:	6a 00                	push   0x0
  41ccbb:	53                   	push   ebx
  41ccbc:	6a 0e                	push   0xe
  41ccbe:	8b ce                	mov    ecx,esi
  41ccc0:	e8 4b 04 07 00       	call   0x48d110
  41ccc5:	8b 06                	mov    eax,DWORD PTR [esi]
  41ccc7:	8b ce                	mov    ecx,esi
  41ccc9:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  41cccf:	8b 16                	mov    edx,DWORD PTR [esi]
  41ccd1:	8b ce                	mov    ecx,esi
  41ccd3:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  41ccd6:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  41ccdc:	8b 8e 78 01 00 00    	mov    ecx,DWORD PTR [esi+0x178]
  41cce2:	85 c9                	test   ecx,ecx
  41cce4:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  41cce7:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
  41ccea:	74 1a                	je     0x41cd06
  41ccec:	e8 ef 7d 03 00       	call   0x454ae0
  41ccf1:	25 00 00 00 40       	and    eax,0x40000000
  41ccf6:	33 c9                	xor    ecx,ecx
  41ccf8:	0b c1                	or     eax,ecx
  41ccfa:	75 0a                	jne    0x41cd06
  41ccfc:	dd 03                	fld    QWORD PTR [ebx]
  41ccfe:	e8 77 50 0b 00       	call   0x4d1d7a
  41cd03:	29 45 0c             	sub    DWORD PTR [ebp+0xc],eax

; Equipement et notification du coup — [0x41CD06,0x41CE7D[
; Messages 14 vers les objets equipes; evite double application quand armes +0x1C0/+0x1C4 identiques; cree le paquet 0x21 (33).
  41cd06:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  41cd0c:	85 c9                	test   ecx,ecx
  41cd0e:	74 0d                	je     0x41cd1d
  41cd10:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd12:	6a 00                	push   0x0
  41cd14:	53                   	push   ebx
  41cd15:	57                   	push   edi
  41cd16:	56                   	push   esi
  41cd17:	51                   	push   ecx
  41cd18:	6a 0e                	push   0xe
  41cd1a:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cd1d:	8b 8e d0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d0]
  41cd23:	85 c9                	test   ecx,ecx
  41cd25:	74 0d                	je     0x41cd34
  41cd27:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cd29:	6a 00                	push   0x0
  41cd2b:	53                   	push   ebx
  41cd2c:	57                   	push   edi
  41cd2d:	56                   	push   esi
  41cd2e:	51                   	push   ecx
  41cd2f:	6a 0e                	push   0xe
  41cd31:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cd34:	8b 8e b8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b8]
  41cd3a:	85 c9                	test   ecx,ecx
  41cd3c:	74 0d                	je     0x41cd4b
  41cd3e:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd40:	6a 00                	push   0x0
  41cd42:	53                   	push   ebx
  41cd43:	57                   	push   edi
  41cd44:	56                   	push   esi
  41cd45:	51                   	push   ecx
  41cd46:	6a 0e                	push   0xe
  41cd48:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cd4b:	8b 8e bc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1bc]
  41cd51:	85 c9                	test   ecx,ecx
  41cd53:	74 0d                	je     0x41cd62
  41cd55:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cd57:	6a 00                	push   0x0
  41cd59:	53                   	push   ebx
  41cd5a:	57                   	push   edi
  41cd5b:	56                   	push   esi
  41cd5c:	51                   	push   ecx
  41cd5d:	6a 0e                	push   0xe
  41cd5f:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cd62:	8b 8e a0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a0]
  41cd68:	85 c9                	test   ecx,ecx
  41cd6a:	74 0d                	je     0x41cd79
  41cd6c:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd6e:	6a 00                	push   0x0
  41cd70:	53                   	push   ebx
  41cd71:	57                   	push   edi
  41cd72:	56                   	push   esi
  41cd73:	51                   	push   ecx
  41cd74:	6a 0e                	push   0xe
  41cd76:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cd79:	8b 8e d8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d8]
  41cd7f:	85 c9                	test   ecx,ecx
  41cd81:	74 0d                	je     0x41cd90
  41cd83:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cd85:	6a 00                	push   0x0
  41cd87:	53                   	push   ebx
  41cd88:	57                   	push   edi
  41cd89:	56                   	push   esi
  41cd8a:	51                   	push   ecx
  41cd8b:	6a 0e                	push   0xe
  41cd8d:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cd90:	8b 8e a4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a4]
  41cd96:	85 c9                	test   ecx,ecx
  41cd98:	74 0d                	je     0x41cda7
  41cd9a:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd9c:	6a 00                	push   0x0
  41cd9e:	53                   	push   ebx
  41cd9f:	57                   	push   edi
  41cda0:	56                   	push   esi
  41cda1:	51                   	push   ecx
  41cda2:	6a 0e                	push   0xe
  41cda4:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cda7:	8b 8e a8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a8]
  41cdad:	85 c9                	test   ecx,ecx
  41cdaf:	74 0d                	je     0x41cdbe
  41cdb1:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cdb3:	6a 00                	push   0x0
  41cdb5:	53                   	push   ebx
  41cdb6:	57                   	push   edi
  41cdb7:	56                   	push   esi
  41cdb8:	51                   	push   ecx
  41cdb9:	6a 0e                	push   0xe
  41cdbb:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cdbe:	8b 8e ac 01 00 00    	mov    ecx,DWORD PTR [esi+0x1ac]
  41cdc4:	85 c9                	test   ecx,ecx
  41cdc6:	74 0d                	je     0x41cdd5
  41cdc8:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cdca:	6a 00                	push   0x0
  41cdcc:	53                   	push   ebx
  41cdcd:	57                   	push   edi
  41cdce:	56                   	push   esi
  41cdcf:	51                   	push   ecx
  41cdd0:	6a 0e                	push   0xe
  41cdd2:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cdd5:	8b 8e b0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b0]
  41cddb:	85 c9                	test   ecx,ecx
  41cddd:	74 0d                	je     0x41cdec
  41cddf:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cde1:	6a 00                	push   0x0
  41cde3:	53                   	push   ebx
  41cde4:	57                   	push   edi
  41cde5:	56                   	push   esi
  41cde6:	51                   	push   ecx
  41cde7:	6a 0e                	push   0xe
  41cde9:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cdec:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  41cdf2:	3b 8e c4 01 00 00    	cmp    ecx,DWORD PTR [esi+0x1c4]
  41cdf8:	75 06                	jne    0x41ce00
  41cdfa:	85 c9                	test   ecx,ecx
  41cdfc:	74 2a                	je     0x41ce28
  41cdfe:	eb 1b                	jmp    0x41ce1b
  41ce00:	85 c9                	test   ecx,ecx
  41ce02:	74 0d                	je     0x41ce11
  41ce04:	8b 11                	mov    edx,DWORD PTR [ecx]
  41ce06:	6a 00                	push   0x0
  41ce08:	53                   	push   ebx
  41ce09:	57                   	push   edi
  41ce0a:	56                   	push   esi
  41ce0b:	51                   	push   ecx
  41ce0c:	6a 0e                	push   0xe
  41ce0e:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41ce11:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  41ce17:	85 c9                	test   ecx,ecx
  41ce19:	74 0d                	je     0x41ce28
  41ce1b:	8b 01                	mov    eax,DWORD PTR [ecx]
  41ce1d:	6a 00                	push   0x0
  41ce1f:	53                   	push   ebx
  41ce20:	57                   	push   edi
  41ce21:	56                   	push   esi
  41ce22:	51                   	push   ecx
  41ce23:	6a 0e                	push   0xe
  41ce25:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41ce28:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ce2b:	85 c0                	test   eax,eax
  41ce2d:	7d 07                	jge    0x41ce36
  41ce2f:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
  41ce36:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce39:	e8 b2 8f 06 00       	call   0x485df0
  41ce3e:	6a 21                	push   0x21
  41ce40:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce43:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  41ce4a:	e8 01 93 06 00       	call   0x486150
  41ce4f:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  41ce52:	51                   	push   ecx
  41ce53:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce56:	e8 95 93 06 00       	call   0x4861f0
  41ce5b:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  41ce5e:	52                   	push   edx
  41ce5f:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce62:	e8 89 93 06 00       	call   0x4861f0
  41ce67:	8b 06                	mov    eax,DWORD PTR [esi]
  41ce69:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce6c:	51                   	push   ecx
  41ce6d:	8b ce                	mov    ecx,esi
  41ce6f:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  41ce75:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce78:	e8 43 90 06 00       	call   0x485ec0

; Mort ou modification des points de vie — [0x41CE7D,0x41CF27[
; Teste HP/flags ; dispatch virtuel +0x44 (Death) ou +0xDC (SetHP).
  41ce7d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  41ce80:	85 c9                	test   ecx,ecx
  41ce82:	74 78                	je     0x41cefc
  41ce84:	8b 41 44             	mov    eax,DWORD PTR [ecx+0x44]
  41ce87:	85 c0                	test   eax,eax
  41ce89:	74 71                	je     0x41cefc
  41ce8b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ce8e:	85 c0                	test   eax,eax
  41ce90:	7f 5a                	jg     0x41ceec
  41ce92:	e8 49 7c 03 00       	call   0x454ae0
  41ce97:	25 00 00 00 40       	and    eax,0x40000000
  41ce9c:	33 c9                	xor    ecx,ecx
  41ce9e:	0b c1                	or     eax,ecx
  41cea0:	75 4a                	jne    0x41ceec
  41cea2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  41cea5:	e8 36 7c 03 00       	call   0x454ae0
  41ceaa:	81 e2 80 00 00 00    	and    edx,0x80
  41ceb0:	33 c0                	xor    eax,eax
  41ceb2:	0b c2                	or     eax,edx
  41ceb4:	75 36                	jne    0x41ceec
  41ceb6:	8b 16                	mov    edx,DWORD PTR [esi]
  41ceb8:	57                   	push   edi
  41ceb9:	53                   	push   ebx
  41ceba:	8b ce                	mov    ecx,esi
  41cebc:	ff 52 44             	call   DWORD PTR [edx+0x44]
  41cebf:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  41cec2:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cec4:	ff 50 08             	call   DWORD PTR [eax+0x8]
  41cec7:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ceca:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41ced1:	e8 aa 8f 06 00       	call   0x485e80
  41ced6:	5f                   	pop    edi
  41ced7:	5e                   	pop    esi
  41ced8:	83 c8 ff             	or     eax,0xffffffff
  41cedb:	5b                   	pop    ebx
  41cedc:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41cedf:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41cee6:	8b e5                	mov    esp,ebp
  41cee8:	5d                   	pop    ebp
  41cee9:	c2 08 00             	ret    0x8
  41ceec:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ceef:	8b 16                	mov    edx,DWORD PTR [esi]
  41cef1:	6a 00                	push   0x0
  41cef3:	50                   	push   eax
  41cef4:	8b ce                	mov    ecx,esi
  41cef6:	ff 92 dc 00 00 00    	call   DWORD PTR [edx+0xdc]
  41cefc:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  41ceff:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cf01:	ff 52 08             	call   DWORD PTR [edx+0x8]
  41cf04:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41cf07:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41cf0e:	e8 6d 8f 06 00       	call   0x485e80
  41cf13:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41cf16:	5f                   	pop    edi
  41cf17:	5e                   	pop    esi
  41cf18:	33 c0                	xor    eax,eax
  41cf1a:	5b                   	pop    ebx
  41cf1b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41cf22:	8b e5                	mov    esp,ebp
  41cf24:	5d                   	pop    ebp
  41cf25:	c2 08 00             	ret    0x8
