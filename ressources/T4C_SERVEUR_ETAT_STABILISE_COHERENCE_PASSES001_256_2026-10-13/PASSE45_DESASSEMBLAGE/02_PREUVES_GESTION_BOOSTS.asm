; T4C Server.exe, passe 45, SHA256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; API Unit boosts : ajout, recherche, modification, retrait, requête agrégée
; Extraits analysés et vérifiés sur le PE : données de couverture, pas une preuve d exécution dynamique.

; Unit::AddBoost(_BOOST*) | [0x48d760, 0x48d78e[
  48d760:	55                   	push   ebp
  48d761:	8b ec                	mov    ebp,esp
  48d763:	56                   	push   esi
  48d764:	8b f1                	mov    esi,ecx
  48d766:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48d76c:	8b 01                	mov    eax,DWORD PTR [ecx]
  48d76e:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48d771:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48d774:	51                   	push   ecx
  48d775:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48d77b:	e8 00 32 00 00       	call   0x490980
  48d780:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48d786:	8b 11                	mov    edx,DWORD PTR [ecx]
  48d788:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48d78b:	5e                   	pop    esi
  48d78c:	5d                   	pop    ebp
  48d78d:	c2                   	.byte 0xc2

; Unit::AddBoost(id,stat,formula) overload string | [0x48d980, 0x48daf0[
  48d980:	55                   	push   ebp
  48d981:	8b ec                	mov    ebp,esp
  48d983:	6a ff                	push   0xffffffff
  48d985:	68 bb a7 4d 00       	push   0x4da7bb
  48d98a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48d990:	50                   	push   eax
  48d991:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48d998:	83 ec 08             	sub    esp,0x8
  48d99b:	53                   	push   ebx
  48d99c:	56                   	push   esi
  48d99d:	57                   	push   edi
  48d99e:	6a 78                	push   0x78
  48d9a0:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  48d9a3:	e8 48 46 fb ff       	call   0x441ff0
  48d9a8:	8b f8                	mov    edi,eax
  48d9aa:	83 c4 04             	add    esp,0x4
  48d9ad:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48d9b0:	85 ff                	test   edi,edi
  48d9b2:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48d9b9:	74 0a                	je     0x48d9c5
  48d9bb:	8d 4f 08             	lea    ecx,[edi+0x8]
  48d9be:	e8 fd bc f7 ff       	call   0x4096c0
  48d9c3:	eb 02                	jmp    0x48d9c7
  48d9c5:	33 ff                	xor    edi,edi
  48d9c7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  48d9ca:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  48d9cd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48d9d0:	51                   	push   ecx
  48d9d1:	8b cc                	mov    ecx,esp
  48d9d3:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  48d9d6:	52                   	push   edx
  48d9d7:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48d9de:	89 07                	mov    DWORD PTR [edi],eax
  48d9e0:	66 89 77 04          	mov    WORD PTR [edi+0x4],si
  48d9e4:	e8 7b 40 04 00       	call   0x4d1a64
  48d9e9:	8d 5f 08             	lea    ebx,[edi+0x8]
  48d9ec:	8b cb                	mov    ecx,ebx
  48d9ee:	e8 0d bf f7 ff       	call   0x409900
  48d9f3:	85 c0                	test   eax,eax
  48d9f5:	0f 84 ad 00 00 00    	je     0x48daa8
  48d9fb:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
  48d9fe:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48da04:	8b 01                	mov    eax,DWORD PTR [ecx]
  48da06:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48da09:	8b b6 f8 00 00 00    	mov    esi,DWORD PTR [esi+0xf8]
  48da0f:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  48da12:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  48da15:	33 db                	xor    ebx,ebx
  48da17:	42                   	inc    edx
  48da18:	3b c3                	cmp    eax,ebx
  48da1a:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48da1d:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48da20:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  48da24:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  48da27:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  48da2a:	6a 0c                	push   0xc
  48da2c:	75 28                	jne    0x48da56
  48da2e:	e8 bd 45 fb ff       	call   0x441ff0
  48da33:	83 c4 04             	add    esp,0x4
  48da36:	3b c3                	cmp    eax,ebx
  48da38:	74 07                	je     0x48da41
  48da3a:	89 18                	mov    DWORD PTR [eax],ebx
  48da3c:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48da3f:	eb 02                	jmp    0x48da43
  48da41:	33 c0                	xor    eax,eax
  48da43:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48da46:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48da49:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48da4c:	89 18                	mov    DWORD PTR [eax],ebx
  48da4e:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48da51:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  48da54:	eb 2b                	jmp    0x48da81
  48da56:	e8 95 45 fb ff       	call   0x441ff0
  48da5b:	83 c4 04             	add    esp,0x4
  48da5e:	3b c3                	cmp    eax,ebx
  48da60:	74 07                	je     0x48da69
  48da62:	89 18                	mov    DWORD PTR [eax],ebx
  48da64:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48da67:	eb 02                	jmp    0x48da6b
  48da69:	33 c0                	xor    eax,eax
  48da6b:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48da6e:	89 02                	mov    DWORD PTR [edx],eax
  48da70:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  48da73:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48da76:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48da79:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  48da7c:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48da7f:	89 1a                	mov    DWORD PTR [edx],ebx
  48da81:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48da84:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48da87:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
  48da8a:	8b 89 f8 00 00 00    	mov    ecx,DWORD PTR [ecx+0xf8]
  48da90:	8b 11                	mov    edx,DWORD PTR [ecx]
  48da92:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48da95:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48da98:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48da9f:	5f                   	pop    edi
  48daa0:	5e                   	pop    esi
  48daa1:	5b                   	pop    ebx
  48daa2:	8b e5                	mov    esp,ebp
  48daa4:	5d                   	pop    ebp
  48daa5:	c2 0c 00             	ret    0xc
  48daa8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  48daab:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48daae:	50                   	push   eax
  48daaf:	81 e6 ff ff 00 00    	and    esi,0xffff
  48dab5:	56                   	push   esi
  48dab6:	51                   	push   ecx
  48dab7:	68 00 df 50 00       	push   0x50df00
  48dabc:	68 00 02 00 00       	push   0x200
  48dac1:	e8 7a 42 fe ff       	call   0x471d40
  48dac6:	83 c4 14             	add    esp,0x14
  48dac9:	85 ff                	test   edi,edi
  48dacb:	74 10                	je     0x48dadd
  48dacd:	8b cb                	mov    ecx,ebx
  48dacf:	e8 8c bc f7 ff       	call   0x409760
  48dad4:	57                   	push   edi
  48dad5:	e8 86 45 fb ff       	call   0x442060
  48dada:	83 c4 04             	add    esp,0x4
  48dadd:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48dae0:	5f                   	pop    edi
  48dae1:	5e                   	pop    esi
  48dae2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48dae9:	5b                   	pop    ebx
  48daea:	8b e5                	mov    esp,ebp
  48daec:	5d                   	pop    ebp
  48daed:	c2 0c 00             	ret    0xc

; Unit::RemoveBoost(id) | [0x48daf0, 0x48dc49[
  48daf0:	55                   	push   ebp
  48daf1:	8b ec                	mov    ebp,esp
  48daf3:	51                   	push   ecx
  48daf4:	53                   	push   ebx
  48daf5:	57                   	push   edi
  48daf6:	8b f9                	mov    edi,ecx
  48daf8:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48dafe:	33 db                	xor    ebx,ebx
  48db00:	3b cb                	cmp    ecx,ebx
  48db02:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  48db05:	0f 84 3a 01 00 00    	je     0x48dc45
  48db0b:	8b 01                	mov    eax,DWORD PTR [ecx]
  48db0d:	56                   	push   esi
  48db0e:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48db11:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  48db17:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48db1a:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48db1d:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48db20:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48db24:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  48db2a:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48db2d:	74 0a                	je     0x48db39
  48db2f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48db32:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48db34:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48db37:	eb 07                	jmp    0x48db40
  48db39:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48db40:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  48db43:	0f 84 e4 00 00 00    	je     0x48dc2d
  48db49:	8b b7 f8 00 00 00    	mov    esi,DWORD PTR [edi+0xf8]
  48db4f:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48db52:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  48db55:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48db58:	39 08                	cmp    DWORD PTR [eax],ecx
  48db5a:	75 c8                	jne    0x48db24
  48db5c:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48db5f:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
  48db62:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  48db65:	4f                   	dec    edi
  48db66:	8b c2                	mov    eax,edx
  48db68:	3b c1                	cmp    eax,ecx
  48db6a:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  48db6d:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  48db70:	74 3d                	je     0x48dbaf
  48db72:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48db75:	74 34                	je     0x48dbab
  48db77:	8b 08                	mov    ecx,DWORD PTR [eax]
  48db79:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  48db7c:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  48db7f:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48db82:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48db85:	8b 10                	mov    edx,DWORD PTR [eax]
  48db87:	89 11                	mov    DWORD PTR [ecx],edx
  48db89:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  48db8c:	83 f8 01             	cmp    eax,0x1
  48db8f:	75 0b                	jne    0x48db9c
  48db91:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48db94:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48db97:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  48db9a:	eb 63                	jmp    0x48dbff
  48db9c:	83 f8 02             	cmp    eax,0x2
  48db9f:	75 5e                	jne    0x48dbff
  48dba1:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48dba4:	8b 02                	mov    eax,DWORD PTR [edx]
  48dba6:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48dba9:	eb 54                	jmp    0x48dbff
  48dbab:	3b c1                	cmp    eax,ecx
  48dbad:	75 23                	jne    0x48dbd2
  48dbaf:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48dbb2:	74 23                	je     0x48dbd7
  48dbb4:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48dbb7:	89 19                	mov    DWORD PTR [ecx],ebx
  48dbb9:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48dbbc:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  48dbbf:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48dbc2:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  48dbc6:	8b ca                	mov    ecx,edx
  48dbc8:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48dbcb:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  48dbce:	75 2f                	jne    0x48dbff
  48dbd0:	eb 2a                	jmp    0x48dbfc
  48dbd2:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48dbd5:	75 1c                	jne    0x48dbf3
  48dbd7:	3b c1                	cmp    eax,ecx
  48dbd9:	74 18                	je     0x48dbf3
  48dbdb:	8b 00                	mov    eax,DWORD PTR [eax]
  48dbdd:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48dbe0:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48dbe3:	8b 01                	mov    eax,DWORD PTR [ecx]
  48dbe5:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48dbe8:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48dbeb:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  48dbef:	75 0e                	jne    0x48dbff
  48dbf1:	eb 09                	jmp    0x48dbfc
  48dbf3:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  48dbf6:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  48dbf9:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  48dbfc:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48dbff:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  48dc02:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
  48dc05:	3b fb                	cmp    edi,ebx
  48dc07:	74 10                	je     0x48dc19
  48dc09:	8b cf                	mov    ecx,edi
  48dc0b:	e8 40 00 00 00       	call   0x48dc50
  48dc10:	57                   	push   edi
  48dc11:	e8 4a 44 fb ff       	call   0x442060
  48dc16:	83 c4 04             	add    esp,0x4
  48dc19:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  48dc1c:	50                   	push   eax
  48dc1d:	e8 3e 44 fb ff       	call   0x442060
  48dc22:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
  48dc25:	83 c4 04             	add    esp,0x4
  48dc28:	e9 f7 fe ff ff       	jmp    0x48db24
  48dc2d:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48dc30:	5e                   	pop    esi
  48dc31:	74 04                	je     0x48dc37
  48dc33:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48dc37:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48dc3a:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48dc40:	8b 11                	mov    edx,DWORD PTR [ecx]
  48dc42:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48dc45:	5f                   	pop    edi
  48dc46:	5b                   	pop    ebx
  48dc47:	8b e5                	mov    esp,ebp

; Unit::RemoveBoostFromStat(stat) | [0x48dc60, 0x48ddbc[
  48dc60:	55                   	push   ebp
  48dc61:	8b ec                	mov    ebp,esp
  48dc63:	51                   	push   ecx
  48dc64:	53                   	push   ebx
  48dc65:	57                   	push   edi
  48dc66:	8b f9                	mov    edi,ecx
  48dc68:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48dc6e:	33 db                	xor    ebx,ebx
  48dc70:	3b cb                	cmp    ecx,ebx
  48dc72:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  48dc75:	0f 84 3b 01 00 00    	je     0x48ddb6
  48dc7b:	8b 01                	mov    eax,DWORD PTR [ecx]
  48dc7d:	56                   	push   esi
  48dc7e:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48dc81:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  48dc87:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48dc8a:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48dc8d:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48dc90:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48dc94:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  48dc9a:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48dc9d:	74 0a                	je     0x48dca9
  48dc9f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48dca2:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48dca4:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48dca7:	eb 07                	jmp    0x48dcb0
  48dca9:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48dcb0:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  48dcb3:	0f 84 e5 00 00 00    	je     0x48dd9e
  48dcb9:	8b b7 f8 00 00 00    	mov    esi,DWORD PTR [edi+0xf8]
  48dcbf:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48dcc2:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  48dcc5:	66 8b 4d 08          	mov    cx,WORD PTR [ebp+0x8]
  48dcc9:	66 39 48 04          	cmp    WORD PTR [eax+0x4],cx
  48dccd:	75 c5                	jne    0x48dc94
  48dccf:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
  48dcd2:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48dcd5:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  48dcd8:	4f                   	dec    edi
  48dcd9:	3b c1                	cmp    eax,ecx
  48dcdb:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  48dcde:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  48dce1:	74 3d                	je     0x48dd20
  48dce3:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48dce6:	74 34                	je     0x48dd1c
  48dce8:	8b 08                	mov    ecx,DWORD PTR [eax]
  48dcea:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  48dced:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  48dcf0:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48dcf3:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48dcf6:	8b 10                	mov    edx,DWORD PTR [eax]
  48dcf8:	89 11                	mov    DWORD PTR [ecx],edx
  48dcfa:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  48dcfd:	83 f8 01             	cmp    eax,0x1
  48dd00:	75 0b                	jne    0x48dd0d
  48dd02:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48dd05:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48dd08:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  48dd0b:	eb 63                	jmp    0x48dd70
  48dd0d:	83 f8 02             	cmp    eax,0x2
  48dd10:	75 5e                	jne    0x48dd70
  48dd12:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48dd15:	8b 02                	mov    eax,DWORD PTR [edx]
  48dd17:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48dd1a:	eb 54                	jmp    0x48dd70
  48dd1c:	3b c1                	cmp    eax,ecx
  48dd1e:	75 23                	jne    0x48dd43
  48dd20:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48dd23:	74 23                	je     0x48dd48
  48dd25:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48dd28:	89 19                	mov    DWORD PTR [ecx],ebx
  48dd2a:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48dd2d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  48dd30:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48dd33:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  48dd37:	8b ca                	mov    ecx,edx
  48dd39:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48dd3c:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  48dd3f:	75 2f                	jne    0x48dd70
  48dd41:	eb 2a                	jmp    0x48dd6d
  48dd43:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48dd46:	75 1c                	jne    0x48dd64
  48dd48:	3b c1                	cmp    eax,ecx
  48dd4a:	74 18                	je     0x48dd64
  48dd4c:	8b 00                	mov    eax,DWORD PTR [eax]
  48dd4e:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48dd51:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48dd54:	8b 01                	mov    eax,DWORD PTR [ecx]
  48dd56:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48dd59:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48dd5c:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  48dd60:	75 0e                	jne    0x48dd70
  48dd62:	eb 09                	jmp    0x48dd6d
  48dd64:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  48dd67:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  48dd6a:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  48dd6d:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48dd70:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  48dd73:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
  48dd76:	3b fb                	cmp    edi,ebx
  48dd78:	74 10                	je     0x48dd8a
  48dd7a:	8b cf                	mov    ecx,edi
  48dd7c:	e8 cf fe ff ff       	call   0x48dc50
  48dd81:	57                   	push   edi
  48dd82:	e8 d9 42 fb ff       	call   0x442060
  48dd87:	83 c4 04             	add    esp,0x4
  48dd8a:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  48dd8d:	50                   	push   eax
  48dd8e:	e8 cd 42 fb ff       	call   0x442060
  48dd93:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
  48dd96:	83 c4 04             	add    esp,0x4
  48dd99:	e9 f6 fe ff ff       	jmp    0x48dc94
  48dd9e:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48dda1:	5e                   	pop    esi
  48dda2:	74 04                	je     0x48dda8
  48dda4:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48dda8:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48ddab:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48ddb1:	8b 11                	mov    edx,DWORD PTR [ecx]
  48ddb3:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48ddb6:	5f                   	pop    edi
  48ddb7:	5b                   	pop    ebx
  48ddb8:	8b e5                	mov    esp,ebp
  48ddba:	5d                   	pop    ebp
  48ddbb:	c2                   	.byte 0xc2

; Unit::GetBoost(id) | [0x48ddc0, 0x48de5c[
  48ddc0:	55                   	push   ebp
  48ddc1:	8b ec                	mov    ebp,esp
  48ddc3:	53                   	push   ebx
  48ddc4:	56                   	push   esi
  48ddc5:	8b f1                	mov    esi,ecx
  48ddc7:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48ddcd:	33 db                	xor    ebx,ebx
  48ddcf:	85 c9                	test   ecx,ecx
  48ddd1:	0f 84 80 00 00 00    	je     0x48de57
  48ddd7:	8b 01                	mov    eax,DWORD PTR [ecx]
  48ddd9:	57                   	push   edi
  48ddda:	33 ff                	xor    edi,edi
  48dddc:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48dddf:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  48dde5:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48dde8:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48ddeb:	33 c9                	xor    ecx,ecx
  48dded:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  48ddf0:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48ddf4:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  48ddfa:	39 48 40             	cmp    DWORD PTR [eax+0x40],ecx
  48ddfd:	74 0a                	je     0x48de09
  48ddff:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48de02:	8b 12                	mov    edx,DWORD PTR [edx]
  48de04:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  48de07:	eb 07                	jmp    0x48de10
  48de09:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48de10:	39 48 20             	cmp    DWORD PTR [eax+0x20],ecx
  48de13:	74 1e                	je     0x48de33
  48de15:	3b f9                	cmp    edi,ecx
  48de17:	75 26                	jne    0x48de3f
  48de19:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  48de1f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48de22:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
  48de25:	8b 03                	mov    eax,DWORD PTR [ebx]
  48de27:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
  48de2a:	75 c8                	jne    0x48ddf4
  48de2c:	bf 01 00 00 00       	mov    edi,0x1
  48de31:	eb c1                	jmp    0x48ddf4
  48de33:	39 48 40             	cmp    DWORD PTR [eax+0x40],ecx
  48de36:	74 04                	je     0x48de3c
  48de38:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48de3c:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  48de3f:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48de45:	8b 11                	mov    edx,DWORD PTR [ecx]
  48de47:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48de4a:	85 ff                	test   edi,edi
  48de4c:	5f                   	pop    edi
  48de4d:	75 08                	jne    0x48de57
  48de4f:	5e                   	pop    esi
  48de50:	33 c0                	xor    eax,eax
  48de52:	5b                   	pop    ebx
  48de53:	5d                   	pop    ebp
  48de54:	c2 04 00             	ret    0x4
  48de57:	5e                   	pop    esi
  48de58:	8b c3                	mov    eax,ebx
  48de5a:	5b                   	pop    ebx
  48de5b:	5d                   	pop    ebp

; Unit::QueryBoost(stat) somme des contributions | [0x48de60, 0x48df2b[
  48de60:	55                   	push   ebp
  48de61:	8b ec                	mov    ebp,esp
  48de63:	83 ec 08             	sub    esp,0x8
  48de66:	56                   	push   esi
  48de67:	8b f1                	mov    esi,ecx
  48de69:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48de6f:	85 c9                	test   ecx,ecx
  48de71:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
  48de78:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48de7f:	0f 84 97 00 00 00    	je     0x48df1c
  48de85:	8b 01                	mov    eax,DWORD PTR [ecx]
  48de87:	53                   	push   ebx
  48de88:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48de8b:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  48de91:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48de94:	66 8b 5d 08          	mov    bx,WORD PTR [ebp+0x8]
  48de98:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48de9b:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  48dea2:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48dea6:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  48deac:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  48deaf:	85 c9                	test   ecx,ecx
  48deb1:	74 0a                	je     0x48debd
  48deb3:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48deb6:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48deb8:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48debb:	eb 07                	jmp    0x48dec4
  48debd:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48dec4:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48dec7:	85 c9                	test   ecx,ecx
  48dec9:	74 33                	je     0x48defe
  48decb:	8b 96 f8 00 00 00    	mov    edx,DWORD PTR [esi+0xf8]
  48ded1:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48ded4:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  48ded7:	66 39 58 04          	cmp    WORD PTR [eax+0x4],bx
  48dedb:	75 c9                	jne    0x48dea6
  48dedd:	6a 00                	push   0x0
  48dedf:	6a 00                	push   0x0
  48dee1:	6a 00                	push   0x0
  48dee3:	6a 00                	push   0x0
  48dee5:	6a 00                	push   0x0
  48dee7:	6a 00                	push   0x0
  48dee9:	6a 00                	push   0x0
  48deeb:	6a 00                	push   0x0
  48deed:	56                   	push   esi
  48deee:	8d 48 08             	lea    ecx,[eax+0x8]
  48def1:	e8 5a e4 f7 ff       	call   0x40c350
  48def6:	dc 45 f8             	fadd   QWORD PTR [ebp-0x8]
  48def9:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  48defc:	eb a8                	jmp    0x48dea6
  48defe:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  48df01:	85 c9                	test   ecx,ecx
  48df03:	5b                   	pop    ebx
  48df04:	74 04                	je     0x48df0a
  48df06:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48df0a:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  48df11:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48df17:	8b 11                	mov    edx,DWORD PTR [ecx]
  48df19:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48df1c:	dd 45 f8             	fld    QWORD PTR [ebp-0x8]
  48df1f:	e8 56 3e 04 00       	call   0x4d1d7a
  48df24:	5e                   	pop    esi
  48df25:	8b e5                	mov    esp,ebp
  48df27:	5d                   	pop    ebp
  48df28:	c2 04 00             	ret    0x4

; Unit::SetBoost(id,stat,formule) | [0x48df30, 0x48e14f[
  48df30:	55                   	push   ebp
  48df31:	8b ec                	mov    ebp,esp
  48df33:	6a ff                	push   0xffffffff
  48df35:	68 e3 a7 4d 00       	push   0x4da7e3
  48df3a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48df40:	50                   	push   eax
  48df41:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48df48:	83 ec 14             	sub    esp,0x14
  48df4b:	53                   	push   ebx
  48df4c:	56                   	push   esi
  48df4d:	57                   	push   edi
  48df4e:	8b f9                	mov    edi,ecx
  48df50:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48df56:	33 db                	xor    ebx,ebx
  48df58:	85 c9                	test   ecx,ecx
  48df5a:	0f 84 a6 00 00 00    	je     0x48e006
  48df60:	8b 01                	mov    eax,DWORD PTR [ecx]
  48df62:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48df65:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  48df6b:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48df6e:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48df71:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48df74:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48df78:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  48df7e:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  48df81:	85 c9                	test   ecx,ecx
  48df83:	74 0a                	je     0x48df8f
  48df85:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48df88:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48df8a:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48df8d:	eb 07                	jmp    0x48df96
  48df8f:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48df96:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48df99:	85 c9                	test   ecx,ecx
  48df9b:	74 44                	je     0x48dfe1
  48df9d:	85 db                	test   ebx,ebx
  48df9f:	75 52                	jne    0x48dff3
  48dfa1:	8b 97 f8 00 00 00    	mov    edx,DWORD PTR [edi+0xf8]
  48dfa7:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48dfaa:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  48dfad:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48dfb0:	39 0e                	cmp    DWORD PTR [esi],ecx
  48dfb2:	75 c4                	jne    0x48df78
  48dfb4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  48dfb7:	6a 0a                	push   0xa
  48dfb9:	8d 55 e0             	lea    edx,[ebp-0x20]
  48dfbc:	52                   	push   edx
  48dfbd:	50                   	push   eax
  48dfbe:	ff 15 a4 e3 4d 00    	call   DWORD PTR ds:0x4de3a4
  48dfc4:	83 c4 08             	add    esp,0x8
  48dfc7:	8b cc                	mov    ecx,esp
  48dfc9:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
  48dfcc:	50                   	push   eax
  48dfcd:	e8 92 3a 04 00       	call   0x4d1a64
  48dfd2:	8d 4e 08             	lea    ecx,[esi+0x8]
  48dfd5:	e8 26 b9 f7 ff       	call   0x409900
  48dfda:	bb 01 00 00 00       	mov    ebx,0x1
  48dfdf:	eb 97                	jmp    0x48df78
  48dfe1:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  48dfe4:	85 c9                	test   ecx,ecx
  48dfe6:	74 04                	je     0x48dfec
  48dfe8:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48dfec:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  48dff3:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48dff9:	8b 11                	mov    edx,DWORD PTR [ecx]
  48dffb:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48dffe:	85 db                	test   ebx,ebx
  48e000:	0f 85 36 01 00 00    	jne    0x48e13c
  48e006:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  48e009:	85 c0                	test   eax,eax
  48e00b:	0f 84 e1 00 00 00    	je     0x48e0f2
  48e011:	6a 78                	push   0x78
  48e013:	e8 d8 3f fb ff       	call   0x441ff0
  48e018:	8b f0                	mov    esi,eax
  48e01a:	83 c4 04             	add    esp,0x4
  48e01d:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  48e020:	85 f6                	test   esi,esi
  48e022:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48e029:	74 0a                	je     0x48e035
  48e02b:	8d 4e 08             	lea    ecx,[esi+0x8]
  48e02e:	e8 8d b6 f7 ff       	call   0x4096c0
  48e033:	eb 02                	jmp    0x48e037
  48e035:	33 f6                	xor    esi,esi
  48e037:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  48e03a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48e03d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  48e040:	6a 0a                	push   0xa
  48e042:	8d 4d e0             	lea    ecx,[ebp-0x20]
  48e045:	51                   	push   ecx
  48e046:	52                   	push   edx
  48e047:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48e04e:	89 06                	mov    DWORD PTR [esi],eax
  48e050:	66 89 5e 04          	mov    WORD PTR [esi+0x4],bx
  48e054:	ff 15 a4 e3 4d 00    	call   DWORD PTR ds:0x4de3a4
  48e05a:	83 c4 08             	add    esp,0x8
  48e05d:	8b cc                	mov    ecx,esp
  48e05f:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  48e062:	50                   	push   eax
  48e063:	e8 fc 39 04 00       	call   0x4d1a64
  48e068:	8d 4e 08             	lea    ecx,[esi+0x8]
  48e06b:	e8 90 b8 f7 ff       	call   0x409900
  48e070:	85 c0                	test   eax,eax
  48e072:	74 35                	je     0x48e0a9
  48e074:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48e07a:	8b 01                	mov    eax,DWORD PTR [ecx]
  48e07c:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48e07f:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48e085:	56                   	push   esi
  48e086:	e8 f5 28 00 00       	call   0x490980
  48e08b:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48e091:	8b 11                	mov    edx,DWORD PTR [ecx]
  48e093:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48e096:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48e099:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48e0a0:	5f                   	pop    edi
  48e0a1:	5e                   	pop    esi
  48e0a2:	5b                   	pop    ebx
  48e0a3:	8b e5                	mov    esp,ebp
  48e0a5:	5d                   	pop    ebp
  48e0a6:	c2 0c 00             	ret    0xc
  48e0a9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48e0ac:	8d 45 e0             	lea    eax,[ebp-0x20]
  48e0af:	50                   	push   eax
  48e0b0:	81 e3 ff ff 00 00    	and    ebx,0xffff
  48e0b6:	53                   	push   ebx
  48e0b7:	51                   	push   ecx
  48e0b8:	68 b8 de 50 00       	push   0x50deb8
  48e0bd:	68 00 02 00 00       	push   0x200
  48e0c2:	e8 79 3c fe ff       	call   0x471d40
  48e0c7:	83 c4 14             	add    esp,0x14
  48e0ca:	85 f6                	test   esi,esi
  48e0cc:	74 6e                	je     0x48e13c
  48e0ce:	8d 4e 08             	lea    ecx,[esi+0x8]
  48e0d1:	e8 8a b6 f7 ff       	call   0x409760
  48e0d6:	56                   	push   esi
  48e0d7:	e8 84 3f fb ff       	call   0x442060
  48e0dc:	83 c4 04             	add    esp,0x4
  48e0df:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48e0e2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48e0e9:	5f                   	pop    edi
  48e0ea:	5e                   	pop    esi
  48e0eb:	5b                   	pop    ebx
  48e0ec:	8b e5                	mov    esp,ebp
  48e0ee:	5d                   	pop    ebp
  48e0ef:	c2 0c 00             	ret    0xc
  48e0f2:	8b 37                	mov    esi,DWORD PTR [edi]
  48e0f4:	e8 67 f9 fa ff       	call   0x43da60
  48e0f9:	8d 55 10             	lea    edx,[ebp+0x10]
  48e0fc:	8b cf                	mov    ecx,edi
  48e0fe:	50                   	push   eax
  48e0ff:	52                   	push   edx
  48e100:	ff 56 48             	call   DWORD PTR [esi+0x48]
  48e103:	8b 00                	mov    eax,DWORD PTR [eax]
  48e105:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48e108:	50                   	push   eax
  48e109:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48e10c:	50                   	push   eax
  48e10d:	81 e1 ff ff 00 00    	and    ecx,0xffff
  48e113:	51                   	push   ecx
  48e114:	68 74 de 50 00       	push   0x50de74
  48e119:	68 00 02 00 00       	push   0x200
  48e11e:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  48e125:	e8 16 3c fe ff       	call   0x471d40
  48e12a:	83 c4 14             	add    esp,0x14
  48e12d:	8d 4d 10             	lea    ecx,[ebp+0x10]
  48e130:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48e137:	e8 04 39 04 00       	call   0x4d1a40
  48e13c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48e13f:	5f                   	pop    edi
  48e140:	5e                   	pop    esi
  48e141:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48e148:	5b                   	pop    ebx
  48e149:	8b e5                	mov    esp,ebp
  48e14b:	5d                   	pop    ebp
  48e14c:	c2 0c 00             	ret    0xc
