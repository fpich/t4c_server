; PASSE 49 — GAME_RULES::DeathPenalties : registres, experience, objets et or
; Serveur original SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Chaque octet x86 est recoupe directement avec la section .text de T4C Server(1).exe.
; Les plages suivent des blocs fonctionnels identifies; les annotations ne substituent pas les appels indirects.

; Selection PvP / non PvP des parametres — 0x438A20..0x438B1D exclu
; GetType de source; lit quatre parametres PC_* ou MOB_* sous Software\Vircom\The 4th Coming Server\PVPDeath. Multiplie coefficient XP par 0.01.
  438a20:	55                   	push   ebp
  438a21:	8b ec                	mov    ebp,esp
  438a23:	6a ff                	push   0xffffffff
  438a25:	68 db 55 4d 00       	push   0x4d55db
  438a2a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  438a30:	50                   	push   eax
  438a31:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  438a38:	83 ec 18             	sub    esp,0x18
  438a3b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  438a3e:	85 c9                	test   ecx,ecx
  438a40:	74 09                	je     0x438a4b
  438a42:	e8 29 2c 05 00       	call   0x48b670
  438a47:	3c 01                	cmp    al,0x1
  438a49:	74 63                	je     0x438aae
  438a4b:	a1 38 14 51 00       	mov    eax,ds:0x511438
  438a50:	50                   	push   eax
  438a51:	68 a0 33 50 00       	push   0x5033a0
  438a56:	68 dc 33 50 00       	push   0x5033dc
  438a5b:	e8 30 e7 fc ff       	call   0x407190
  438a60:	8b 0d 38 14 51 00    	mov    ecx,DWORD PTR ds:0x511438
  438a66:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  438a69:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  438a6c:	51                   	push   ecx
  438a6d:	68 bc 33 50 00       	push   0x5033bc
  438a72:	68 dc 33 50 00       	push   0x5033dc
  438a77:	dc 0d d0 e8 4d 00    	fmul   QWORD PTR ds:0x4de8d0
  438a7d:	dd 5d ec             	fstp   QWORD PTR [ebp-0x14]
  438a80:	e8 0b e7 fc ff       	call   0x407190
  438a85:	8b 15 38 14 51 00    	mov    edx,DWORD PTR ds:0x511438
  438a8b:	52                   	push   edx
  438a8c:	68 ac 33 50 00       	push   0x5033ac
  438a91:	68 dc 33 50 00       	push   0x5033dc
  438a96:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  438a99:	e8 f2 e6 fc ff       	call   0x407190
  438a9e:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  438aa1:	a1 38 14 51 00       	mov    eax,ds:0x511438
  438aa6:	50                   	push   eax
  438aa7:	68 90 33 50 00       	push   0x503390
  438aac:	eb 62                	jmp    0x438b10
  438aae:	8b 0d 38 14 51 00    	mov    ecx,DWORD PTR ds:0x511438
  438ab4:	51                   	push   ecx
  438ab5:	68 60 33 50 00       	push   0x503360
  438aba:	68 dc 33 50 00       	push   0x5033dc
  438abf:	e8 cc e6 fc ff       	call   0x407190
  438ac4:	8b 15 38 14 51 00    	mov    edx,DWORD PTR ds:0x511438
  438aca:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  438acd:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  438ad0:	52                   	push   edx
  438ad1:	68 7c 33 50 00       	push   0x50337c
  438ad6:	68 dc 33 50 00       	push   0x5033dc
  438adb:	dc 0d d0 e8 4d 00    	fmul   QWORD PTR ds:0x4de8d0
  438ae1:	dd 5d ec             	fstp   QWORD PTR [ebp-0x14]
  438ae4:	e8 a7 e6 fc ff       	call   0x407190
  438ae9:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  438aec:	a1 38 14 51 00       	mov    eax,ds:0x511438
  438af1:	50                   	push   eax
  438af2:	68 6c 33 50 00       	push   0x50336c
  438af7:	68 dc 33 50 00       	push   0x5033dc
  438afc:	e8 8f e6 fc ff       	call   0x407190
  438b01:	8b 0d 38 14 51 00    	mov    ecx,DWORD PTR ds:0x511438
  438b07:	51                   	push   ecx
  438b08:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  438b0b:	68 50 33 50 00       	push   0x503350
  438b10:	68 dc 33 50 00       	push   0x5033dc
  438b15:	e8 76 e6 fc ff       	call   0x407190
  438b1a:	83 c4 30             	add    esp,0x30

; Seuil XP et appel SetXP — 0x438B1D..0x438BC5 exclu
; GetLevel (+0x13C) borne [1,199], XP chart 64 bits a 0x511B10, GetXP/SetXP par appels virtuels.
  438b1d:	53                   	push   ebx
  438b1e:	56                   	push   esi
  438b1f:	57                   	push   edi
  438b20:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  438b23:	8b 17                	mov    edx,DWORD PTR [edi]
  438b25:	8b cf                	mov    ecx,edi
  438b27:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  438b2a:	ff 92 3c 01 00 00    	call   DWORD PTR [edx+0x13c]
  438b30:	66 3d c8 00          	cmp    ax,0xc8
  438b34:	72 07                	jb     0x438b3d
  438b36:	b8 c7 00 00 00       	mov    eax,0xc7
  438b3b:	eb 0a                	jmp    0x438b47
  438b3d:	66 85 c0             	test   ax,ax
  438b40:	75 05                	jne    0x438b47
  438b42:	b8 01 00 00 00       	mov    eax,0x1
  438b47:	25 ff ff 00 00       	and    eax,0xffff
  438b4c:	8d 34 c5 10 1b 51 00 	lea    esi,[eax*8+0x511b10]
  438b53:	8b 07                	mov    eax,DWORD PTR [edi]
  438b55:	8b cf                	mov    ecx,edi
  438b57:	ff 50 54             	call   DWORD PTR [eax+0x54]
  438b5a:	3b 56 04             	cmp    edx,DWORD PTR [esi+0x4]
  438b5d:	7c 2d                	jl     0x438b8c
  438b5f:	7f 04                	jg     0x438b65
  438b61:	3b 06                	cmp    eax,DWORD PTR [esi]
  438b63:	76 27                	jbe    0x438b8c
  438b65:	8b 17                	mov    edx,DWORD PTR [edi]
  438b67:	8b cf                	mov    ecx,edi
  438b69:	ff 52 54             	call   DWORD PTR [edx+0x54]
  438b6c:	8b 1e                	mov    ebx,DWORD PTR [esi]
  438b6e:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  438b71:	2b c3                	sub    eax,ebx
  438b73:	1b d1                	sbb    edx,ecx
  438b75:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  438b78:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
  438b7b:	df 6d dc             	fild   QWORD PTR [ebp-0x24]
  438b7e:	dc 4d ec             	fmul   QWORD PTR [ebp-0x14]
  438b81:	e8 f4 91 09 00       	call   0x4d1d7a
  438b86:	8b d8                	mov    ebx,eax
  438b88:	8b f2                	mov    esi,edx
  438b8a:	eb 04                	jmp    0x438b90
  438b8c:	33 db                	xor    ebx,ebx
  438b8e:	33 f6                	xor    esi,esi
  438b90:	8b 07                	mov    eax,DWORD PTR [edi]
  438b92:	8b cf                	mov    ecx,edi
  438b94:	ff 50 54             	call   DWORD PTR [eax+0x54]
  438b97:	3b d6                	cmp    edx,esi
  438b99:	7c 0c                	jl     0x438ba7
  438b9b:	7f 04                	jg     0x438ba1
  438b9d:	3b c3                	cmp    eax,ebx
  438b9f:	76 06                	jbe    0x438ba7
  438ba1:	2b c3                	sub    eax,ebx
  438ba3:	1b d6                	sbb    edx,esi
  438ba5:	eb 04                	jmp    0x438bab
  438ba7:	33 c0                	xor    eax,eax
  438ba9:	33 d2                	xor    edx,edx
  438bab:	8b 37                	mov    esi,DWORD PTR [edi]
  438bad:	52                   	push   edx
  438bae:	50                   	push   eax
  438baf:	8b cf                	mov    ecx,edi
  438bb1:	ff 56 50             	call   DWORD PTR [esi+0x50]
  438bb4:	8b 17                	mov    edx,DWORD PTR [edi]
  438bb6:	8b cf                	mov    ecx,edi
  438bb8:	ff 52 60             	call   DWORD PTR [edx+0x60]
  438bbb:	8b f0                	mov    esi,eax
  438bbd:	85 f6                	test   esi,esi
  438bbf:	0f 84 7a 02 00 00    	je     0x438e3f

; Tirages de l inventaire — 0x438BC5..0x438D90 exclu
; RRandom(0,100), SendUnitMessage(20) sur objet et flags de protection; Remove une unite et peut creer un nouveau Objects.
  438bc5:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  438bc8:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  438bcb:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  438bce:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  438bd5:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  438bd9:	eb 03                	jmp    0x438bde
  438bdb:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  438bde:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  438be1:	85 c0                	test   eax,eax
  438be3:	74 0a                	je     0x438bef
  438be5:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  438be8:	8b 11                	mov    edx,DWORD PTR [ecx]
  438bea:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  438bed:	eb 07                	jmp    0x438bf6
  438bef:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  438bf6:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  438bf9:	85 c0                	test   eax,eax
  438bfb:	0f 84 2c 02 00 00    	je     0x438e2d
  438c01:	6a 64                	push   0x64
  438c03:	6a 00                	push   0x0
  438c05:	b9 34 5e 51 00       	mov    ecx,0x515e34
  438c0a:	e8 91 04 02 00       	call   0x4590a0
  438c0f:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
  438c12:	7d ca                	jge    0x438bde
  438c14:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  438c17:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  438c1a:	8d 45 f0             	lea    eax,[ebp-0x10]
  438c1d:	50                   	push   eax
  438c1e:	6a 00                	push   0x0
  438c20:	6a 00                	push   0x0
  438c22:	6a 00                	push   0x0
  438c24:	6a 00                	push   0x0
  438c26:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  438c2d:	8b 17                	mov    edx,DWORD PTR [edi]
  438c2f:	6a 14                	push   0x14
  438c31:	8b cf                	mov    ecx,edi
  438c33:	ff 52 24             	call   DWORD PTR [edx+0x24]
  438c36:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  438c39:	f6 41 14 01          	test   BYTE PTR [ecx+0x14],0x1
  438c3d:	75 9c                	jne    0x438bdb
  438c3f:	8b 17                	mov    edx,DWORD PTR [edi]
  438c41:	8b cf                	mov    ecx,edi
  438c43:	ff 52 28             	call   DWORD PTR [edx+0x28]
  438c46:	8b 0d 5c 05 4e 00    	mov    ecx,DWORD PTR ds:0x4e055c
  438c4c:	3b 01                	cmp    eax,DWORD PTR [ecx]
  438c4e:	74 8b                	je     0x438bdb
  438c50:	6a 01                	push   0x1
  438c52:	8b cf                	mov    ecx,edi
  438c54:	e8 47 38 01 00       	call   0x44c4a0
  438c59:	8b cf                	mov    ecx,edi
  438c5b:	e8 90 37 01 00       	call   0x44c3f0
  438c60:	85 c0                	test   eax,eax
  438c62:	0f 85 d2 00 00 00    	jne    0x438d3a
  438c68:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  438c6b:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  438c6e:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  438c71:	48                   	dec    eax
  438c72:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  438c75:	8b c2                	mov    eax,edx
  438c77:	3b c1                	cmp    eax,ecx
  438c79:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  438c7c:	74 3d                	je     0x438cbb
  438c7e:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  438c81:	74 34                	je     0x438cb7
  438c83:	8b 08                	mov    ecx,DWORD PTR [eax]
  438c85:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  438c88:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  438c8b:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  438c8e:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  438c91:	8b 10                	mov    edx,DWORD PTR [eax]
  438c93:	89 11                	mov    DWORD PTR [ecx],edx
  438c95:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  438c98:	83 f8 01             	cmp    eax,0x1
  438c9b:	75 0b                	jne    0x438ca8
  438c9d:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  438ca0:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  438ca3:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  438ca6:	eb 7b                	jmp    0x438d23
  438ca8:	83 f8 02             	cmp    eax,0x2
  438cab:	75 76                	jne    0x438d23
  438cad:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  438cb0:	8b 02                	mov    eax,DWORD PTR [edx]
  438cb2:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  438cb5:	eb 6c                	jmp    0x438d23
  438cb7:	3b c1                	cmp    eax,ecx
  438cb9:	75 2e                	jne    0x438ce9
  438cbb:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  438cbe:	74 2e                	je     0x438cee
  438cc0:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  438cc3:	c7 01 00 00 00 00    	mov    DWORD PTR [ecx],0x0
  438cc9:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  438ccc:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  438ccf:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  438cd2:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  438cd6:	8b ca                	mov    ecx,edx
  438cd8:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  438cdb:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  438cde:	75 43                	jne    0x438d23
  438ce0:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  438ce7:	eb 3a                	jmp    0x438d23
  438ce9:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  438cec:	75 27                	jne    0x438d15
  438cee:	3b c1                	cmp    eax,ecx
  438cf0:	74 23                	je     0x438d15
  438cf2:	8b 00                	mov    eax,DWORD PTR [eax]
  438cf4:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  438cfb:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  438cfe:	8b 01                	mov    eax,DWORD PTR [ecx]
  438d00:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  438d03:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  438d06:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  438d0a:	75 17                	jne    0x438d23
  438d0c:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  438d13:	eb 0e                	jmp    0x438d23
  438d15:	33 c0                	xor    eax,eax
  438d17:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  438d1a:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  438d1d:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  438d20:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  438d23:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  438d26:	52                   	push   edx
  438d27:	e8 34 93 00 00       	call   0x442060
  438d2c:	83 c4 04             	add    esp,0x4
  438d2f:	6a 01                	push   0x1
  438d31:	8b cf                	mov    ecx,edi
  438d33:	e8 28 37 01 00       	call   0x44c460
  438d38:	eb 55                	jmp    0x438d8f
  438d3a:	8b 07                	mov    eax,DWORD PTR [edi]
  438d3c:	8b cf                	mov    ecx,edi
  438d3e:	ff 50 28             	call   DWORD PTR [eax+0x28]
  438d41:	68 20 01 00 00       	push   0x120
  438d46:	8b d8                	mov    ebx,eax
  438d48:	e8 a3 92 00 00       	call   0x441ff0
  438d4d:	83 c4 04             	add    esp,0x4
  438d50:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  438d53:	33 ff                	xor    edi,edi
  438d55:	3b c7                	cmp    eax,edi
  438d57:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  438d5a:	74 09                	je     0x438d65
  438d5c:	8b c8                	mov    ecx,eax
  438d5e:	e8 1d 30 01 00       	call   0x44bd80
  438d63:	8b f8                	mov    edi,eax
  438d65:	8b 17                	mov    edx,DWORD PTR [edi]
  438d67:	53                   	push   ebx
  438d68:	6a 03                	push   0x3
  438d6a:	8b cf                	mov    ecx,edi
  438d6c:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  438d73:	ff 52 18             	call   DWORD PTR [edx+0x18]
  438d76:	85 c0                	test   eax,eax
  438d78:	75 12                	jne    0x438d8c
  438d7a:	8b 07                	mov    eax,DWORD PTR [edi]
  438d7c:	8b cf                	mov    ecx,edi
  438d7e:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  438d84:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  438d87:	e9 4f fe ff ff       	jmp    0x438bdb
  438d8c:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  438d8f:	85 ff                	test   edi,edi

; Suite des listes et traitement des equipements — 0x438D90..0x438F7E exclu
; Boucles de liste; iteration sur 16 emplacements (0x10) avec pointeurs avances de 4 octets. Selection conditionnelle et structures associees.
  438d91:	0f 84 44 fe ff ff    	je     0x438bdb
  438d97:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  438d9a:	8b 53 38             	mov    edx,DWORD PTR [ebx+0x38]
  438d9d:	42                   	inc    edx
  438d9e:	85 c0                	test   eax,eax
  438da0:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
  438da3:	c7 43 40 00 00 00 00 	mov    DWORD PTR [ebx+0x40],0x0
  438daa:	c6 43 34 08          	mov    BYTE PTR [ebx+0x34],0x8
  438dae:	89 43 2c             	mov    DWORD PTR [ebx+0x2c],eax
  438db1:	89 53 38             	mov    DWORD PTR [ebx+0x38],edx
  438db4:	6a 0c                	push   0xc
  438db6:	75 33                	jne    0x438deb
  438db8:	e8 33 92 00 00       	call   0x441ff0
  438dbd:	33 c9                	xor    ecx,ecx
  438dbf:	83 c4 04             	add    esp,0x4
  438dc2:	3b c1                	cmp    eax,ecx
  438dc4:	74 07                	je     0x438dcd
  438dc6:	89 08                	mov    DWORD PTR [eax],ecx
  438dc8:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  438dcb:	eb 02                	jmp    0x438dcf
  438dcd:	33 c0                	xor    eax,eax
  438dcf:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
  438dd2:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
  438dd5:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
  438dd8:	89 08                	mov    DWORD PTR [eax],ecx
  438dda:	8b 53 20             	mov    edx,DWORD PTR [ebx+0x20]
  438ddd:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  438de0:	8b 4b 20             	mov    ecx,DWORD PTR [ebx+0x20]
  438de3:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  438de6:	e9 f0 fd ff ff       	jmp    0x438bdb
  438deb:	e8 00 92 00 00       	call   0x441ff0
  438df0:	83 c4 04             	add    esp,0x4
  438df3:	85 c0                	test   eax,eax
  438df5:	74 0f                	je     0x438e06
  438df7:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  438dfd:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  438e04:	eb 02                	jmp    0x438e08
  438e06:	33 c0                	xor    eax,eax
  438e08:	8b 4b 20             	mov    ecx,DWORD PTR [ebx+0x20]
  438e0b:	89 01                	mov    DWORD PTR [ecx],eax
  438e0d:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
  438e10:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
  438e13:	89 43 28             	mov    DWORD PTR [ebx+0x28],eax
  438e16:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  438e19:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  438e1c:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  438e22:	8b 4b 20             	mov    ecx,DWORD PTR [ebx+0x20]
  438e25:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  438e28:	e9 ae fd ff ff       	jmp    0x438bdb
  438e2d:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  438e30:	85 c0                	test   eax,eax
  438e32:	74 04                	je     0x438e38
  438e34:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  438e38:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  438e3f:	8b cf                	mov    ecx,edi
  438e41:	e8 da 5d fe ff       	call   0x41ec20
  438e46:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  438e49:	8b d8                	mov    ebx,eax
  438e4b:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  438e4e:	c7 45 08 00 00 00 00 	mov    DWORD PTR [ebp+0x8],0x0
  438e55:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
  438e58:	83 3b 00             	cmp    DWORD PTR [ebx],0x0
  438e5b:	0f 84 04 01 00 00    	je     0x438f65
  438e61:	6a 64                	push   0x64
  438e63:	6a 00                	push   0x0
  438e65:	b9 34 5e 51 00       	mov    ecx,0x515e34
  438e6a:	e8 31 02 02 00       	call   0x4590a0
  438e6f:	3b 45 e8             	cmp    eax,DWORD PTR [ebp-0x18]
  438e72:	0f 8d ed 00 00 00    	jge    0x438f65
  438e78:	8b 1b                	mov    ebx,DWORD PTR [ebx]
  438e7a:	8d 45 10             	lea    eax,[ebp+0x10]
  438e7d:	50                   	push   eax
  438e7e:	6a 00                	push   0x0
  438e80:	6a 00                	push   0x0
  438e82:	6a 00                	push   0x0
  438e84:	6a 00                	push   0x0
  438e86:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
  438e8d:	8b 13                	mov    edx,DWORD PTR [ebx]
  438e8f:	6a 14                	push   0x14
  438e91:	8b cb                	mov    ecx,ebx
  438e93:	ff 52 24             	call   DWORD PTR [edx+0x24]
  438e96:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  438e99:	f6 41 14 01          	test   BYTE PTR [ecx+0x14],0x1
  438e9d:	0f 85 c2 00 00 00    	jne    0x438f65
  438ea3:	8b 13                	mov    edx,DWORD PTR [ebx]
  438ea5:	8b cb                	mov    ecx,ebx
  438ea7:	ff 52 28             	call   DWORD PTR [edx+0x28]
  438eaa:	8b 0d 5c 05 4e 00    	mov    ecx,DWORD PTR ds:0x4e055c
  438eb0:	3b 01                	cmp    eax,DWORD PTR [ecx]
  438eb2:	0f 84 ad 00 00 00    	je     0x438f65
  438eb8:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  438ebb:	6a 01                	push   0x1
  438ebd:	52                   	push   edx
  438ebe:	8b cf                	mov    ecx,edi
  438ec0:	e8 0b 06 fe ff       	call   0x4194d0
  438ec5:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  438ec8:	b9 10 00 00 00       	mov    ecx,0x10
  438ecd:	39 18                	cmp    DWORD PTR [eax],ebx
  438ecf:	75 06                	jne    0x438ed7
  438ed1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  438ed7:	83 c0 04             	add    eax,0x4
  438eda:	49                   	dec    ecx
  438edb:	75 f0                	jne    0x438ecd
  438edd:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  438ee0:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  438ee3:	42                   	inc    edx
  438ee4:	85 c0                	test   eax,eax
  438ee6:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  438ee9:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  438ef0:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  438ef4:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  438ef7:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  438efa:	6a 0c                	push   0xc
  438efc:	75 2a                	jne    0x438f28
  438efe:	e8 ed 90 00 00       	call   0x441ff0
  438f03:	33 c9                	xor    ecx,ecx
  438f05:	83 c4 04             	add    esp,0x4
  438f08:	3b c1                	cmp    eax,ecx
  438f0a:	74 07                	je     0x438f13
  438f0c:	89 08                	mov    DWORD PTR [eax],ecx
  438f0e:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  438f11:	eb 02                	jmp    0x438f15
  438f13:	33 c0                	xor    eax,eax
  438f15:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  438f18:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  438f1b:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  438f1e:	89 08                	mov    DWORD PTR [eax],ecx
  438f20:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  438f23:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  438f26:	eb 37                	jmp    0x438f5f
  438f28:	e8 c3 90 00 00       	call   0x441ff0
  438f2d:	83 c4 04             	add    esp,0x4
  438f30:	85 c0                	test   eax,eax
  438f32:	74 0f                	je     0x438f43
  438f34:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  438f3a:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  438f41:	eb 02                	jmp    0x438f45
  438f43:	33 c0                	xor    eax,eax
  438f45:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  438f48:	89 01                	mov    DWORD PTR [ecx],eax
  438f4a:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  438f4d:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  438f50:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  438f53:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  438f56:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  438f59:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  438f5f:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  438f62:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
  438f65:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  438f68:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  438f6b:	40                   	inc    eax
  438f6c:	83 c3 04             	add    ebx,0x4
  438f6f:	83 f8 10             	cmp    eax,0x10
  438f72:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  438f75:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
  438f78:	0f 8c da fe ff ff    	jl     0x438e58

; Montant en or et modification des HP — 0x438F7E..0x438FC5 exclu
; Produit Gold*percent puis division par 100 (mul 0x51EB851F, shr 5); ecrit perte dans parametre; GetHP >>1, SetHP(flag 1).
  438f7e:	8b 17                	mov    edx,DWORD PTR [edi]
  438f80:	8b cf                	mov    ecx,edi
  438f82:	ff 92 04 01 00 00    	call   DWORD PTR [edx+0x104]
  438f88:	8b c8                	mov    ecx,eax
  438f8a:	0f af 4d e4          	imul   ecx,DWORD PTR [ebp-0x1c]
  438f8e:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  438f93:	f7 e1                	mul    ecx
  438f95:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  438f98:	c1 ea 05             	shr    edx,0x5
  438f9b:	89 10                	mov    DWORD PTR [eax],edx
  438f9d:	8b 37                	mov    esi,DWORD PTR [edi]
  438f9f:	6a 01                	push   0x1
  438fa1:	8b cf                	mov    ecx,edi
  438fa3:	ff 96 d8 00 00 00    	call   DWORD PTR [esi+0xd8]
  438fa9:	d1 e8                	shr    eax,1
  438fab:	50                   	push   eax
  438fac:	8b cf                	mov    ecx,edi
  438fae:	ff 96 dc 00 00 00    	call   DWORD PTR [esi+0xdc]
  438fb4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  438fb7:	5f                   	pop    edi
  438fb8:	5e                   	pop    esi
  438fb9:	5b                   	pop    ebx
  438fba:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  438fc1:	8b e5                	mov    esp,ebp
  438fc3:	5d                   	pop    ebp
  438fc4:	c3                   	ret
