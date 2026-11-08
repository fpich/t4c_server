; Preuves assembleur T4C Server(1).exe : comparaison octet par octet avec .text.
; Les VA et les octets sont issus de objdump -d -M intel ; ne pas confondre octets verifies et comprehension exhaustive.
; Cette piece est une nouvelle contribution de la passe 33.

; Section : ObjectStructure event handlers & timer calls : 0x0044CB90..0x0044D210 (fin exclusive)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0044cb90 <.text+0x4bb90>:
  44cb90:	55                   	push   ebp
  44cb91:	8b ec                	mov    ebp,esp
  44cb93:	83 ec 20             	sub    esp,0x20
  44cb96:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  44cb99:	53                   	push   ebx
  44cb9a:	56                   	push   esi
  44cb9b:	8b f1                	mov    esi,ecx
  44cb9d:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
  44cba0:	57                   	push   edi
  44cba1:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  44cba4:	0f 84 24 01 00 00    	je     0x44ccce
  44cbaa:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44cbad:	8b 17                	mov    edx,DWORD PTR [edi]
  44cbaf:	6a 00                	push   0x0
  44cbb1:	6a 1b                	push   0x1b
  44cbb3:	8b cf                	mov    ecx,edi
  44cbb5:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44cbb8:	81 c6 c0 01 00 00    	add    esi,0x1c0
  44cbbe:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44cbc1:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44cbc4:	8b 06                	mov    eax,DWORD PTR [esi]
  44cbc6:	8b ce                	mov    ecx,esi
  44cbc8:	ff 50 04             	call   DWORD PTR [eax+0x4]
  44cbcb:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  44cbce:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  44cbd1:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44cbd8:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44cbdc:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44cbdf:	85 c0                	test   eax,eax
  44cbe1:	74 0a                	je     0x44cbed
  44cbe3:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  44cbe6:	8b 02                	mov    eax,DWORD PTR [edx]
  44cbe8:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  44cbeb:	eb 07                	jmp    0x44cbf4
  44cbed:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44cbf4:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44cbf7:	85 c0                	test   eax,eax
  44cbf9:	0f 84 87 00 00 00    	je     0x44cc86
  44cbff:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44cc02:	8b 91 e0 01 00 00    	mov    edx,DWORD PTR [ecx+0x1e0]
  44cc08:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
  44cc0b:	66 83 7b 02 01       	cmp    WORD PTR [ebx+0x2],0x1
  44cc10:	75 ca                	jne    0x44cbdc
  44cc12:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44cc15:	85 c0                	test   eax,eax
  44cc17:	74 55                	je     0x44cc6e
  44cc19:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44cc1c:	85 c9                	test   ecx,ecx
  44cc1e:	75 0d                	jne    0x44cc2d
  44cc20:	8b 07                	mov    eax,DWORD PTR [edi]
  44cc22:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44cc25:	51                   	push   ecx
  44cc26:	8b cf                	mov    ecx,edi
  44cc28:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  44cc2b:	eb 09                	jmp    0x44cc36
  44cc2d:	8b 11                	mov    edx,DWORD PTR [ecx]
  44cc2f:	8d 45 e0             	lea    eax,[ebp-0x20]
  44cc32:	50                   	push   eax
  44cc33:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  44cc36:	8b 10                	mov    edx,DWORD PTR [eax]
  44cc38:	83 ec 0c             	sub    esp,0xc
  44cc3b:	8b cc                	mov    ecx,esp
  44cc3d:	89 11                	mov    DWORD PTR [ecx],edx
  44cc3f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  44cc42:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  44cc45:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  44cc48:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  44cc4b:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  44cc4e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44cc51:	33 c0                	xor    eax,eax
  44cc53:	66 8b 03             	mov    ax,WORD PTR [ebx]
  44cc56:	51                   	push   ecx
  44cc57:	57                   	push   edi
  44cc58:	52                   	push   edx
  44cc59:	50                   	push   eax
  44cc5a:	e8 01 49 01 00       	call   0x461560
  44cc5f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44cc62:	83 c4 1c             	add    esp,0x1c
  44cc65:	48                   	dec    eax
  44cc66:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44cc69:	e9 6e ff ff ff       	jmp    0x44cbdc
  44cc6e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44cc71:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44cc74:	8b 11                	mov    edx,DWORD PTR [ecx]
  44cc76:	6a 00                	push   0x0
  44cc78:	6a 00                	push   0x0
  44cc7a:	50                   	push   eax
  44cc7b:	6a 00                	push   0x0
  44cc7d:	57                   	push   edi
  44cc7e:	ff 52 24             	call   DWORD PTR [edx+0x24]
  44cc81:	e9 56 ff ff ff       	jmp    0x44cbdc
  44cc86:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44cc89:	85 c0                	test   eax,eax
  44cc8b:	74 04                	je     0x44cc91
  44cc8d:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44cc91:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44cc98:	8b 16                	mov    edx,DWORD PTR [esi]
  44cc9a:	8b ce                	mov    ecx,esi
  44cc9c:	ff 52 08             	call   DWORD PTR [edx+0x8]
  44cc9f:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44cca2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44cca5:	3b c8                	cmp    ecx,eax
  44cca7:	74 0e                	je     0x44ccb7
  44cca9:	85 c9                	test   ecx,ecx
  44ccab:	7e 0a                	jle    0x44ccb7
  44ccad:	8b 17                	mov    edx,DWORD PTR [edi]
  44ccaf:	50                   	push   eax
  44ccb0:	6a 1b                	push   0x1b
  44ccb2:	8b cf                	mov    ecx,edi
  44ccb4:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44ccb7:	8b cf                	mov    ecx,edi
  44ccb9:	e8 72 06 04 00       	call   0x48d330
  44ccbe:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44ccc1:	50                   	push   eax
  44ccc2:	57                   	push   edi
  44ccc3:	6a 00                	push   0x0
  44ccc5:	6a 01                	push   0x1
  44ccc7:	8b cf                	mov    ecx,edi
  44ccc9:	e8 42 04 04 00       	call   0x48d110
  44ccce:	5f                   	pop    edi
  44cccf:	5e                   	pop    esi
  44ccd0:	5b                   	pop    ebx
  44ccd1:	8b e5                	mov    esp,ebp
  44ccd3:	5d                   	pop    ebp
  44ccd4:	c2 14 00             	ret    0x14
  44ccd7:	90                   	nop
  44ccd8:	90                   	nop
  44ccd9:	90                   	nop
  44ccda:	90                   	nop
  44ccdb:	90                   	nop
  44ccdc:	90                   	nop
  44ccdd:	90                   	nop
  44ccde:	90                   	nop
  44ccdf:	90                   	nop
  44cce0:	55                   	push   ebp
  44cce1:	8b ec                	mov    ebp,esp
  44cce3:	83 ec 20             	sub    esp,0x20
  44cce6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  44cce9:	53                   	push   ebx
  44ccea:	56                   	push   esi
  44cceb:	8b f1                	mov    esi,ecx
  44cced:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
  44ccf0:	57                   	push   edi
  44ccf1:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  44ccf4:	0f 84 24 01 00 00    	je     0x44ce1e
  44ccfa:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44ccfd:	8b 17                	mov    edx,DWORD PTR [edi]
  44ccff:	6a 00                	push   0x0
  44cd01:	6a 1b                	push   0x1b
  44cd03:	8b cf                	mov    ecx,edi
  44cd05:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44cd08:	81 c6 c0 01 00 00    	add    esi,0x1c0
  44cd0e:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44cd11:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44cd14:	8b 06                	mov    eax,DWORD PTR [esi]
  44cd16:	8b ce                	mov    ecx,esi
  44cd18:	ff 50 04             	call   DWORD PTR [eax+0x4]
  44cd1b:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  44cd1e:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  44cd21:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44cd28:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44cd2c:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44cd2f:	85 c0                	test   eax,eax
  44cd31:	74 0a                	je     0x44cd3d
  44cd33:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  44cd36:	8b 02                	mov    eax,DWORD PTR [edx]
  44cd38:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  44cd3b:	eb 07                	jmp    0x44cd44
  44cd3d:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44cd44:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44cd47:	85 c0                	test   eax,eax
  44cd49:	0f 84 87 00 00 00    	je     0x44cdd6
  44cd4f:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44cd52:	8b 91 e0 01 00 00    	mov    edx,DWORD PTR [ecx+0x1e0]
  44cd58:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
  44cd5b:	66 83 7b 02 02       	cmp    WORD PTR [ebx+0x2],0x2
  44cd60:	75 ca                	jne    0x44cd2c
  44cd62:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44cd65:	85 c0                	test   eax,eax
  44cd67:	74 55                	je     0x44cdbe
  44cd69:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44cd6c:	85 c9                	test   ecx,ecx
  44cd6e:	75 0d                	jne    0x44cd7d
  44cd70:	8b 07                	mov    eax,DWORD PTR [edi]
  44cd72:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44cd75:	51                   	push   ecx
  44cd76:	8b cf                	mov    ecx,edi
  44cd78:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  44cd7b:	eb 09                	jmp    0x44cd86
  44cd7d:	8b 11                	mov    edx,DWORD PTR [ecx]
  44cd7f:	8d 45 e0             	lea    eax,[ebp-0x20]
  44cd82:	50                   	push   eax
  44cd83:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  44cd86:	8b 10                	mov    edx,DWORD PTR [eax]
  44cd88:	83 ec 0c             	sub    esp,0xc
  44cd8b:	8b cc                	mov    ecx,esp
  44cd8d:	89 11                	mov    DWORD PTR [ecx],edx
  44cd8f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  44cd92:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  44cd95:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  44cd98:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  44cd9b:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  44cd9e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44cda1:	33 c0                	xor    eax,eax
  44cda3:	66 8b 03             	mov    ax,WORD PTR [ebx]
  44cda6:	51                   	push   ecx
  44cda7:	57                   	push   edi
  44cda8:	52                   	push   edx
  44cda9:	50                   	push   eax
  44cdaa:	e8 b1 47 01 00       	call   0x461560
  44cdaf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44cdb2:	83 c4 1c             	add    esp,0x1c
  44cdb5:	48                   	dec    eax
  44cdb6:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44cdb9:	e9 6e ff ff ff       	jmp    0x44cd2c
  44cdbe:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44cdc1:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44cdc4:	8b 11                	mov    edx,DWORD PTR [ecx]
  44cdc6:	6a 00                	push   0x0
  44cdc8:	6a 00                	push   0x0
  44cdca:	50                   	push   eax
  44cdcb:	6a 00                	push   0x0
  44cdcd:	57                   	push   edi
  44cdce:	ff 52 24             	call   DWORD PTR [edx+0x24]
  44cdd1:	e9 56 ff ff ff       	jmp    0x44cd2c
  44cdd6:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44cdd9:	85 c0                	test   eax,eax
  44cddb:	74 04                	je     0x44cde1
  44cddd:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44cde1:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44cde8:	8b 16                	mov    edx,DWORD PTR [esi]
  44cdea:	8b ce                	mov    ecx,esi
  44cdec:	ff 52 08             	call   DWORD PTR [edx+0x8]
  44cdef:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44cdf2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44cdf5:	3b c8                	cmp    ecx,eax
  44cdf7:	74 0e                	je     0x44ce07
  44cdf9:	85 c9                	test   ecx,ecx
  44cdfb:	7e 0a                	jle    0x44ce07
  44cdfd:	8b 17                	mov    edx,DWORD PTR [edi]
  44cdff:	50                   	push   eax
  44ce00:	6a 1b                	push   0x1b
  44ce02:	8b cf                	mov    ecx,edi
  44ce04:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44ce07:	8b cf                	mov    ecx,edi
  44ce09:	e8 22 05 04 00       	call   0x48d330
  44ce0e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44ce11:	50                   	push   eax
  44ce12:	57                   	push   edi
  44ce13:	6a 00                	push   0x0
  44ce15:	6a 02                	push   0x2
  44ce17:	8b cf                	mov    ecx,edi
  44ce19:	e8 f2 02 04 00       	call   0x48d110
  44ce1e:	5f                   	pop    edi
  44ce1f:	5e                   	pop    esi
  44ce20:	5b                   	pop    ebx
  44ce21:	8b e5                	mov    esp,ebp
  44ce23:	5d                   	pop    ebp
  44ce24:	c2 14 00             	ret    0x14
  44ce27:	90                   	nop
  44ce28:	90                   	nop
  44ce29:	90                   	nop
  44ce2a:	90                   	nop
  44ce2b:	90                   	nop
  44ce2c:	90                   	nop
  44ce2d:	90                   	nop
  44ce2e:	90                   	nop
  44ce2f:	90                   	nop
  44ce30:	55                   	push   ebp
  44ce31:	8b ec                	mov    ebp,esp
  44ce33:	83 ec 20             	sub    esp,0x20
  44ce36:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  44ce39:	53                   	push   ebx
  44ce3a:	56                   	push   esi
  44ce3b:	8b f1                	mov    esi,ecx
  44ce3d:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
  44ce40:	57                   	push   edi
  44ce41:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  44ce44:	0f 84 24 01 00 00    	je     0x44cf6e
  44ce4a:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44ce4d:	8b 17                	mov    edx,DWORD PTR [edi]
  44ce4f:	6a 00                	push   0x0
  44ce51:	6a 1b                	push   0x1b
  44ce53:	8b cf                	mov    ecx,edi
  44ce55:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44ce58:	81 c6 c0 01 00 00    	add    esi,0x1c0
  44ce5e:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44ce61:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44ce64:	8b 06                	mov    eax,DWORD PTR [esi]
  44ce66:	8b ce                	mov    ecx,esi
  44ce68:	ff 50 04             	call   DWORD PTR [eax+0x4]
  44ce6b:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  44ce6e:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  44ce71:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44ce78:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44ce7c:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44ce7f:	85 c0                	test   eax,eax
  44ce81:	74 0a                	je     0x44ce8d
  44ce83:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  44ce86:	8b 02                	mov    eax,DWORD PTR [edx]
  44ce88:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  44ce8b:	eb 07                	jmp    0x44ce94
  44ce8d:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44ce94:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44ce97:	85 c0                	test   eax,eax
  44ce99:	0f 84 87 00 00 00    	je     0x44cf26
  44ce9f:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44cea2:	8b 91 e0 01 00 00    	mov    edx,DWORD PTR [ecx+0x1e0]
  44cea8:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
  44ceab:	66 83 7b 02 0e       	cmp    WORD PTR [ebx+0x2],0xe
  44ceb0:	75 ca                	jne    0x44ce7c
  44ceb2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44ceb5:	85 c0                	test   eax,eax
  44ceb7:	74 55                	je     0x44cf0e
  44ceb9:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44cebc:	85 c9                	test   ecx,ecx
  44cebe:	75 0d                	jne    0x44cecd
  44cec0:	8b 07                	mov    eax,DWORD PTR [edi]
  44cec2:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44cec5:	51                   	push   ecx
  44cec6:	8b cf                	mov    ecx,edi
  44cec8:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  44cecb:	eb 09                	jmp    0x44ced6
  44cecd:	8b 11                	mov    edx,DWORD PTR [ecx]
  44cecf:	8d 45 e0             	lea    eax,[ebp-0x20]
  44ced2:	50                   	push   eax
  44ced3:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  44ced6:	8b 10                	mov    edx,DWORD PTR [eax]
  44ced8:	83 ec 0c             	sub    esp,0xc
  44cedb:	8b cc                	mov    ecx,esp
  44cedd:	89 11                	mov    DWORD PTR [ecx],edx
  44cedf:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  44cee2:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  44cee5:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  44cee8:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  44ceeb:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  44ceee:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44cef1:	33 c0                	xor    eax,eax
  44cef3:	66 8b 03             	mov    ax,WORD PTR [ebx]
  44cef6:	51                   	push   ecx
  44cef7:	57                   	push   edi
  44cef8:	52                   	push   edx
  44cef9:	50                   	push   eax
  44cefa:	e8 61 46 01 00       	call   0x461560
  44ceff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44cf02:	83 c4 1c             	add    esp,0x1c
  44cf05:	48                   	dec    eax
  44cf06:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44cf09:	e9 6e ff ff ff       	jmp    0x44ce7c
  44cf0e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44cf11:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44cf14:	8b 11                	mov    edx,DWORD PTR [ecx]
  44cf16:	6a 00                	push   0x0
  44cf18:	6a 00                	push   0x0
  44cf1a:	50                   	push   eax
  44cf1b:	6a 00                	push   0x0
  44cf1d:	57                   	push   edi
  44cf1e:	ff 52 24             	call   DWORD PTR [edx+0x24]
  44cf21:	e9 56 ff ff ff       	jmp    0x44ce7c
  44cf26:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44cf29:	85 c0                	test   eax,eax
  44cf2b:	74 04                	je     0x44cf31
  44cf2d:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44cf31:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44cf38:	8b 16                	mov    edx,DWORD PTR [esi]
  44cf3a:	8b ce                	mov    ecx,esi
  44cf3c:	ff 52 08             	call   DWORD PTR [edx+0x8]
  44cf3f:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44cf42:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44cf45:	3b c8                	cmp    ecx,eax
  44cf47:	74 0e                	je     0x44cf57
  44cf49:	85 c9                	test   ecx,ecx
  44cf4b:	7e 0a                	jle    0x44cf57
  44cf4d:	8b 17                	mov    edx,DWORD PTR [edi]
  44cf4f:	50                   	push   eax
  44cf50:	6a 1b                	push   0x1b
  44cf52:	8b cf                	mov    ecx,edi
  44cf54:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44cf57:	8b cf                	mov    ecx,edi
  44cf59:	e8 d2 03 04 00       	call   0x48d330
  44cf5e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44cf61:	50                   	push   eax
  44cf62:	57                   	push   edi
  44cf63:	6a 00                	push   0x0
  44cf65:	6a 0e                	push   0xe
  44cf67:	8b cf                	mov    ecx,edi
  44cf69:	e8 a2 01 04 00       	call   0x48d110
  44cf6e:	5f                   	pop    edi
  44cf6f:	5e                   	pop    esi
  44cf70:	5b                   	pop    ebx
  44cf71:	8b e5                	mov    esp,ebp
  44cf73:	5d                   	pop    ebp
  44cf74:	c2 14 00             	ret    0x14
  44cf77:	90                   	nop
  44cf78:	90                   	nop
  44cf79:	90                   	nop
  44cf7a:	90                   	nop
  44cf7b:	90                   	nop
  44cf7c:	90                   	nop
  44cf7d:	90                   	nop
  44cf7e:	90                   	nop
  44cf7f:	90                   	nop
  44cf80:	55                   	push   ebp
  44cf81:	8b ec                	mov    ebp,esp
  44cf83:	83 ec 20             	sub    esp,0x20
  44cf86:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  44cf89:	53                   	push   ebx
  44cf8a:	56                   	push   esi
  44cf8b:	8b f1                	mov    esi,ecx
  44cf8d:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
  44cf90:	57                   	push   edi
  44cf91:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  44cf94:	0f 84 24 01 00 00    	je     0x44d0be
  44cf9a:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44cf9d:	8b 17                	mov    edx,DWORD PTR [edi]
  44cf9f:	6a 00                	push   0x0
  44cfa1:	6a 1b                	push   0x1b
  44cfa3:	8b cf                	mov    ecx,edi
  44cfa5:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  44cfa8:	81 c6 c0 01 00 00    	add    esi,0x1c0
  44cfae:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44cfb1:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44cfb4:	8b 06                	mov    eax,DWORD PTR [esi]
  44cfb6:	8b ce                	mov    ecx,esi
  44cfb8:	ff 50 04             	call   DWORD PTR [eax+0x4]
  44cfbb:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  44cfbe:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  44cfc1:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44cfc8:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44cfcc:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44cfcf:	85 c0                	test   eax,eax
  44cfd1:	74 0a                	je     0x44cfdd
  44cfd3:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  44cfd6:	8b 02                	mov    eax,DWORD PTR [edx]
  44cfd8:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  44cfdb:	eb 07                	jmp    0x44cfe4
  44cfdd:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44cfe4:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44cfe7:	85 c0                	test   eax,eax
  44cfe9:	0f 84 87 00 00 00    	je     0x44d076
  44cfef:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44cff2:	8b 91 e0 01 00 00    	mov    edx,DWORD PTR [ecx+0x1e0]
  44cff8:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
  44cffb:	66 83 7b 02 1c       	cmp    WORD PTR [ebx+0x2],0x1c
  44d000:	75 ca                	jne    0x44cfcc
  44d002:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44d005:	85 c0                	test   eax,eax
  44d007:	74 55                	je     0x44d05e
  44d009:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44d00c:	85 c9                	test   ecx,ecx
  44d00e:	75 0d                	jne    0x44d01d
  44d010:	8b 07                	mov    eax,DWORD PTR [edi]
  44d012:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44d015:	51                   	push   ecx
  44d016:	8b cf                	mov    ecx,edi
  44d018:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  44d01b:	eb 09                	jmp    0x44d026
  44d01d:	8b 11                	mov    edx,DWORD PTR [ecx]
  44d01f:	8d 45 e0             	lea    eax,[ebp-0x20]
  44d022:	50                   	push   eax
  44d023:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  44d026:	8b 10                	mov    edx,DWORD PTR [eax]
  44d028:	83 ec 0c             	sub    esp,0xc
  44d02b:	8b cc                	mov    ecx,esp
  44d02d:	89 11                	mov    DWORD PTR [ecx],edx
  44d02f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  44d032:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  44d035:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  44d038:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  44d03b:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  44d03e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44d041:	33 c0                	xor    eax,eax
  44d043:	66 8b 03             	mov    ax,WORD PTR [ebx]
  44d046:	51                   	push   ecx
  44d047:	57                   	push   edi
  44d048:	52                   	push   edx
  44d049:	50                   	push   eax
  44d04a:	e8 11 45 01 00       	call   0x461560
  44d04f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44d052:	83 c4 1c             	add    esp,0x1c
  44d055:	48                   	dec    eax
  44d056:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44d059:	e9 6e ff ff ff       	jmp    0x44cfcc
  44d05e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44d061:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44d064:	8b 11                	mov    edx,DWORD PTR [ecx]
  44d066:	6a 00                	push   0x0
  44d068:	6a 00                	push   0x0
  44d06a:	50                   	push   eax
  44d06b:	6a 00                	push   0x0
  44d06d:	57                   	push   edi
  44d06e:	ff 52 24             	call   DWORD PTR [edx+0x24]
  44d071:	e9 56 ff ff ff       	jmp    0x44cfcc
  44d076:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44d079:	85 c0                	test   eax,eax
  44d07b:	74 04                	je     0x44d081
  44d07d:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44d081:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44d088:	8b 16                	mov    edx,DWORD PTR [esi]
  44d08a:	8b ce                	mov    ecx,esi
  44d08c:	ff 52 08             	call   DWORD PTR [edx+0x8]
  44d08f:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44d092:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44d095:	3b c8                	cmp    ecx,eax
  44d097:	74 0e                	je     0x44d0a7
  44d099:	85 c9                	test   ecx,ecx
  44d09b:	7e 0a                	jle    0x44d0a7
  44d09d:	8b 17                	mov    edx,DWORD PTR [edi]
  44d09f:	50                   	push   eax
  44d0a0:	6a 1b                	push   0x1b
  44d0a2:	8b cf                	mov    ecx,edi
  44d0a4:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44d0a7:	8b cf                	mov    ecx,edi
  44d0a9:	e8 82 02 04 00       	call   0x48d330
  44d0ae:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  44d0b1:	50                   	push   eax
  44d0b2:	57                   	push   edi
  44d0b3:	6a 00                	push   0x0
  44d0b5:	6a 1c                	push   0x1c
  44d0b7:	8b cf                	mov    ecx,edi
  44d0b9:	e8 52 00 04 00       	call   0x48d110
  44d0be:	5f                   	pop    edi
  44d0bf:	5e                   	pop    esi
  44d0c0:	5b                   	pop    ebx
  44d0c1:	8b e5                	mov    esp,ebp
  44d0c3:	5d                   	pop    ebp
  44d0c4:	c2 14 00             	ret    0x14
  44d0c7:	90                   	nop
  44d0c8:	90                   	nop
  44d0c9:	90                   	nop
  44d0ca:	90                   	nop
  44d0cb:	90                   	nop
  44d0cc:	90                   	nop
  44d0cd:	90                   	nop
  44d0ce:	90                   	nop
  44d0cf:	90                   	nop
  44d0d0:	55                   	push   ebp
  44d0d1:	8b ec                	mov    ebp,esp
  44d0d3:	83 ec 20             	sub    esp,0x20
  44d0d6:	53                   	push   ebx
  44d0d7:	56                   	push   esi
  44d0d8:	57                   	push   edi
  44d0d9:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44d0dc:	8b 07                	mov    eax,DWORD PTR [edi]
  44d0de:	8b f1                	mov    esi,ecx
  44d0e0:	6a 00                	push   0x0
  44d0e2:	6a 1b                	push   0x1b
  44d0e4:	8b cf                	mov    ecx,edi
  44d0e6:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  44d0e9:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  44d0ec:	8b 96 c0 01 00 00    	mov    edx,DWORD PTR [esi+0x1c0]
  44d0f2:	81 c6 c0 01 00 00    	add    esi,0x1c0
  44d0f8:	8b ce                	mov    ecx,esi
  44d0fa:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44d0fd:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44d100:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44d103:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  44d106:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  44d109:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  44d10c:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44d113:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44d117:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44d11a:	85 c0                	test   eax,eax
  44d11c:	74 0a                	je     0x44d128
  44d11e:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  44d121:	8b 11                	mov    edx,DWORD PTR [ecx]
  44d123:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  44d126:	eb 07                	jmp    0x44d12f
  44d128:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44d12f:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44d132:	85 c0                	test   eax,eax
  44d134:	0f 84 80 00 00 00    	je     0x44d1ba
  44d13a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  44d13d:	8b 88 e0 01 00 00    	mov    ecx,DWORD PTR [eax+0x1e0]
  44d143:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  44d146:	66 83 78 02 03       	cmp    WORD PTR [eax+0x2],0x3
  44d14b:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  44d14e:	75 c7                	jne    0x44d117
  44d150:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44d153:	85 c0                	test   eax,eax
  44d155:	74 4e                	je     0x44d1a5
  44d157:	85 db                	test   ebx,ebx
  44d159:	75 0a                	jne    0x44d165
  44d15b:	8b 17                	mov    edx,DWORD PTR [edi]
  44d15d:	8d 45 ec             	lea    eax,[ebp-0x14]
  44d160:	50                   	push   eax
  44d161:	8b cf                	mov    ecx,edi
  44d163:	eb 08                	jmp    0x44d16d
  44d165:	8b 13                	mov    edx,DWORD PTR [ebx]
  44d167:	8d 45 e0             	lea    eax,[ebp-0x20]
  44d16a:	50                   	push   eax
  44d16b:	8b cb                	mov    ecx,ebx
  44d16d:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  44d170:	8b 10                	mov    edx,DWORD PTR [eax]
  44d172:	83 ec 0c             	sub    esp,0xc
  44d175:	8b cc                	mov    ecx,esp
  44d177:	89 11                	mov    DWORD PTR [ecx],edx
  44d179:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  44d17c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  44d17f:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  44d182:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  44d185:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44d188:	33 d2                	xor    edx,edx
  44d18a:	66 8b 11             	mov    dx,WORD PTR [ecx]
  44d18d:	53                   	push   ebx
  44d18e:	57                   	push   edi
  44d18f:	53                   	push   ebx
  44d190:	52                   	push   edx
  44d191:	e8 ca 43 01 00       	call   0x461560
  44d196:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44d199:	83 c4 1c             	add    esp,0x1c
  44d19c:	48                   	dec    eax
  44d19d:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44d1a0:	e9 72 ff ff ff       	jmp    0x44d117
  44d1a5:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44d1a8:	8b 01                	mov    eax,DWORD PTR [ecx]
  44d1aa:	6a 00                	push   0x0
  44d1ac:	6a 00                	push   0x0
  44d1ae:	53                   	push   ebx
  44d1af:	6a 00                	push   0x0
  44d1b1:	53                   	push   ebx
  44d1b2:	ff 50 24             	call   DWORD PTR [eax+0x24]
  44d1b5:	e9 5d ff ff ff       	jmp    0x44d117
  44d1ba:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44d1bd:	85 c0                	test   eax,eax
  44d1bf:	74 04                	je     0x44d1c5
  44d1c1:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44d1c5:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44d1cc:	8b 16                	mov    edx,DWORD PTR [esi]
  44d1ce:	8b ce                	mov    ecx,esi
  44d1d0:	ff 52 08             	call   DWORD PTR [edx+0x8]
  44d1d3:	8b cf                	mov    ecx,edi
  44d1d5:	e8 56 01 04 00       	call   0x48d330
  44d1da:	53                   	push   ebx
  44d1db:	57                   	push   edi
  44d1dc:	6a 00                	push   0x0
  44d1de:	6a 03                	push   0x3
  44d1e0:	8b cf                	mov    ecx,edi
  44d1e2:	e8 29 ff 03 00       	call   0x48d110
  44d1e7:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
  44d1ea:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44d1ed:	3b c1                	cmp    eax,ecx
  44d1ef:	74 0e                	je     0x44d1ff
  44d1f1:	85 c0                	test   eax,eax
  44d1f3:	7e 0a                	jle    0x44d1ff
  44d1f5:	8b 07                	mov    eax,DWORD PTR [edi]
  44d1f7:	51                   	push   ecx
  44d1f8:	6a 1b                	push   0x1b
  44d1fa:	8b cf                	mov    ecx,edi
  44d1fc:	ff 50 04             	call   DWORD PTR [eax+0x4]
  44d1ff:	5f                   	pop    edi
  44d200:	5e                   	pop    esi
  44d201:	5b                   	pop    ebx
  44d202:	8b e5                	mov    esp,ebp
  44d204:	5d                   	pop    ebp
  44d205:	c2 14 00             	ret    0x14
  44d208:	90                   	nop
  44d209:	90                   	nop
  44d20a:	90                   	nop
  44d20b:	90                   	nop
  44d20c:	90                   	nop
  44d20d:	90                   	nop
  44d20e:	90                   	nop
  44d20f:	90                   	nop

