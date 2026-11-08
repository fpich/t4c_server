; Passe 69 - preuve de désassemblage strictement comparée à SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; section .text, base VA 0x401000; aucune instruction tronquée ni remplissage NOP/INT3 inclus
; Assemblage GNU objdump x86 Intel. Ordinals MFC identifiés via l'annuaire PE, rôle exact inconnu.

; [004D1A40,004D1A6A) - thunks MFC42.DLL utilisés états 0 à 4
  004d1a40:	ff 25 8c e2 4d 00                              	jmp    DWORD PTR ds:0x4de28c
  004d1a46:	ff 25 84 e2 4d 00                              	jmp    DWORD PTR ds:0x4de284
  004d1a4c:	ff 25 80 e2 4d 00                              	jmp    DWORD PTR ds:0x4de280
  004d1a52:	ff 25 7c e2 4d 00                              	jmp    DWORD PTR ds:0x4de27c
  004d1a58:	ff 25 78 e2 4d 00                              	jmp    DWORD PTR ds:0x4de278
  004d1a5e:	ff 25 74 e2 4d 00                              	jmp    DWORD PTR ds:0x4de274
  004d1a64:	ff 25 70 e2 4d 00                              	jmp    DWORD PTR ds:0x4de270

; [004D1B90,004D1BF8) - destructeur de tableau à callback
  004d1b90:	55                                             	push   ebp
  004d1b91:	8b ec                                          	mov    ebp,esp
  004d1b93:	6a ff                                          	push   0xffffffff
  004d1b95:	68 10 05 4e 00                                 	push   0x4e0510
  004d1b9a:	68 bc 21 4d 00                                 	push   0x4d21bc
  004d1b9f:	64 a1 00 00 00 00                              	mov    eax,fs:0x0
  004d1ba5:	50                                             	push   eax
  004d1ba6:	64 89 25 00 00 00 00                           	mov    DWORD PTR fs:0x0,esp
  004d1bad:	83 ec 0c                                       	sub    esp,0xc
  004d1bb0:	53                                             	push   ebx
  004d1bb1:	56                                             	push   esi
  004d1bb2:	57                                             	push   edi
  004d1bb3:	83 65 e4 00                                    	and    DWORD PTR [ebp-0x1c],0x0
  004d1bb7:	8b 75 0c                                       	mov    esi,DWORD PTR [ebp+0xc]
  004d1bba:	8b c6                                          	mov    eax,esi
  004d1bbc:	0f af 45 10                                    	imul   eax,DWORD PTR [ebp+0x10]
  004d1bc0:	01 45 08                                       	add    DWORD PTR [ebp+0x8],eax
  004d1bc3:	83 65 fc 00                                    	and    DWORD PTR [ebp-0x4],0x0
  004d1bc7:	ff 4d 10                                       	dec    DWORD PTR [ebp+0x10]
  004d1bca:	78 0b                                          	js     0x4d1bd7
  004d1bcc:	29 75 08                                       	sub    DWORD PTR [ebp+0x8],esi
  004d1bcf:	8b 4d 08                                       	mov    ecx,DWORD PTR [ebp+0x8]
  004d1bd2:	ff 55 14                                       	call   DWORD PTR [ebp+0x14]
  004d1bd5:	eb f0                                          	jmp    0x4d1bc7
  004d1bd7:	c7 45 e4 01 00 00 00                           	mov    DWORD PTR [ebp-0x1c],0x1
  004d1bde:	83 4d fc ff                                    	or     DWORD PTR [ebp-0x4],0xffffffff
  004d1be2:	e8 11 00 00 00                                 	call   0x4d1bf8
  004d1be7:	8b 4d f0                                       	mov    ecx,DWORD PTR [ebp-0x10]
  004d1bea:	64 89 0d 00 00 00 00                           	mov    DWORD PTR fs:0x0,ecx
  004d1bf1:	5f                                             	pop    edi
  004d1bf2:	5e                                             	pop    esi
  004d1bf3:	5b                                             	pop    ebx
  004d1bf4:	c9                                             	leave
  004d1bf5:	c2 10 00                                       	ret    0x10

; [004D1BF8,004D1C84) - helper exception tableau partiellement construit
  004d1bf8:	83 7d e4 00                                    	cmp    DWORD PTR [ebp-0x1c],0x0
  004d1bfc:	75 11                                          	jne    0x4d1c0f
  004d1bfe:	ff 75 14                                       	push   DWORD PTR [ebp+0x14]
  004d1c01:	ff 75 10                                       	push   DWORD PTR [ebp+0x10]
  004d1c04:	ff 75 0c                                       	push   DWORD PTR [ebp+0xc]
  004d1c07:	ff 75 08                                       	push   DWORD PTR [ebp+0x8]
  004d1c0a:	e8 01 00 00 00                                 	call   0x4d1c10
  004d1c0f:	c3                                             	ret
  004d1c10:	55                                             	push   ebp
  004d1c11:	8b ec                                          	mov    ebp,esp
  004d1c13:	6a ff                                          	push   0xffffffff
  004d1c15:	68 20 05 4e 00                                 	push   0x4e0520
  004d1c1a:	68 bc 21 4d 00                                 	push   0x4d21bc
  004d1c1f:	64 a1 00 00 00 00                              	mov    eax,fs:0x0
  004d1c25:	50                                             	push   eax
  004d1c26:	64 89 25 00 00 00 00                           	mov    DWORD PTR fs:0x0,esp
  004d1c2d:	51                                             	push   ecx
  004d1c2e:	51                                             	push   ecx
  004d1c2f:	53                                             	push   ebx
  004d1c30:	56                                             	push   esi
  004d1c31:	57                                             	push   edi
  004d1c32:	89 65 e8                                       	mov    DWORD PTR [ebp-0x18],esp
  004d1c35:	83 65 fc 00                                    	and    DWORD PTR [ebp-0x4],0x0
  004d1c39:	ff 4d 10                                       	dec    DWORD PTR [ebp+0x10]
  004d1c3c:	78 1b                                          	js     0x4d1c59
  004d1c3e:	8b 4d 08                                       	mov    ecx,DWORD PTR [ebp+0x8]
  004d1c41:	2b 4d 0c                                       	sub    ecx,DWORD PTR [ebp+0xc]
  004d1c44:	89 4d 08                                       	mov    DWORD PTR [ebp+0x8],ecx
  004d1c47:	ff 55 14                                       	call   DWORD PTR [ebp+0x14]
  004d1c4a:	eb ed                                          	jmp    0x4d1c39
  004d1c4c:	ff 75 ec                                       	push   DWORD PTR [ebp-0x14]
  004d1c4f:	e8 1a 00 00 00                                 	call   0x4d1c6e
  004d1c54:	59                                             	pop    ecx
  004d1c55:	c3                                             	ret
  004d1c56:	8b 65 e8                                       	mov    esp,DWORD PTR [ebp-0x18]
  004d1c59:	83 4d fc ff                                    	or     DWORD PTR [ebp-0x4],0xffffffff
  004d1c5d:	8b 4d f0                                       	mov    ecx,DWORD PTR [ebp-0x10]
  004d1c60:	64 89 0d 00 00 00 00                           	mov    DWORD PTR fs:0x0,ecx
  004d1c67:	5f                                             	pop    edi
  004d1c68:	5e                                             	pop    esi
  004d1c69:	5b                                             	pop    ebx
  004d1c6a:	c9                                             	leave
  004d1c6b:	c2 10 00                                       	ret    0x10
  004d1c6e:	8b 44 24 04                                    	mov    eax,DWORD PTR [esp+0x4]
  004d1c72:	8b 00                                          	mov    eax,DWORD PTR [eax]
  004d1c74:	81 38 63 73 6d e0                              	cmp    DWORD PTR [eax],0xe06d7363
  004d1c7a:	74 03                                          	je     0x4d1c7f
  004d1c7c:	33 c0                                          	xor    eax,eax
  004d1c7e:	c3                                             	ret
  004d1c7f:	e9 3e 05 00 00                                 	jmp    0x4d21c2

; [004D1D8C,004D1E0E) - constructeur de tableau à callback avec retour par unwind
  004d1d8c:	55                                             	push   ebp
  004d1d8d:	8b ec                                          	mov    ebp,esp
  004d1d8f:	6a ff                                          	push   0xffffffff
  004d1d91:	68 38 05 4e 00                                 	push   0x4e0538
  004d1d96:	68 bc 21 4d 00                                 	push   0x4d21bc
  004d1d9b:	64 a1 00 00 00 00                              	mov    eax,fs:0x0
  004d1da1:	50                                             	push   eax
  004d1da2:	64 89 25 00 00 00 00                           	mov    DWORD PTR fs:0x0,esp
  004d1da9:	83 ec 10                                       	sub    esp,0x10
  004d1dac:	53                                             	push   ebx
  004d1dad:	56                                             	push   esi
  004d1dae:	57                                             	push   edi
  004d1daf:	33 c0                                          	xor    eax,eax
  004d1db1:	89 45 e0                                       	mov    DWORD PTR [ebp-0x20],eax
  004d1db4:	89 45 fc                                       	mov    DWORD PTR [ebp-0x4],eax
  004d1db7:	89 45 e4                                       	mov    DWORD PTR [ebp-0x1c],eax
  004d1dba:	8b 45 e4                                       	mov    eax,DWORD PTR [ebp-0x1c]
  004d1dbd:	3b 45 10                                       	cmp    eax,DWORD PTR [ebp+0x10]
  004d1dc0:	7d 13                                          	jge    0x4d1dd5
  004d1dc2:	8b 75 08                                       	mov    esi,DWORD PTR [ebp+0x8]
  004d1dc5:	8b ce                                          	mov    ecx,esi
  004d1dc7:	ff 55 14                                       	call   DWORD PTR [ebp+0x14]
  004d1dca:	03 75 0c                                       	add    esi,DWORD PTR [ebp+0xc]
  004d1dcd:	89 75 08                                       	mov    DWORD PTR [ebp+0x8],esi
  004d1dd0:	ff 45 e4                                       	inc    DWORD PTR [ebp-0x1c]
  004d1dd3:	eb e5                                          	jmp    0x4d1dba
  004d1dd5:	c7 45 e0 01 00 00 00                           	mov    DWORD PTR [ebp-0x20],0x1
  004d1ddc:	83 4d fc ff                                    	or     DWORD PTR [ebp-0x4],0xffffffff
  004d1de0:	e8 11 00 00 00                                 	call   0x4d1df6
  004d1de5:	8b 4d f0                                       	mov    ecx,DWORD PTR [ebp-0x10]
  004d1de8:	64 89 0d 00 00 00 00                           	mov    DWORD PTR fs:0x0,ecx
  004d1def:	5f                                             	pop    edi
  004d1df0:	5e                                             	pop    esi
  004d1df1:	5b                                             	pop    ebx
  004d1df2:	c9                                             	leave
  004d1df3:	c2 14 00                                       	ret    0x14
  004d1df6:	83 7d e0 00                                    	cmp    DWORD PTR [ebp-0x20],0x0
  004d1dfa:	75 11                                          	jne    0x4d1e0d
  004d1dfc:	ff 75 18                                       	push   DWORD PTR [ebp+0x18]
  004d1dff:	ff 75 e4                                       	push   DWORD PTR [ebp-0x1c]
  004d1e02:	ff 75 0c                                       	push   DWORD PTR [ebp+0xc]
  004d1e05:	ff 75 08                                       	push   DWORD PTR [ebp+0x8]
  004d1e08:	e8 03 fe ff ff                                 	call   0x4d1c10
  004d1e0d:	c3                                             	ret

