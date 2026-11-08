; T4C Server(1).exe SHA-256: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Passe 24 — EXTRAITS COMMENTES ET CIBLES SEULEMENT
; Les dumps automatiques complets ne sont PAS une preuve de comprehension.
; Chaque ligne machine peut etre confrontee aux octets du PE, section .text.


; ===== Initialisation du registre: remise a zero de 65 536 emplacements | 0x489C70–0x489C81 =====
489c70:	57                   	push   edi
489c71:	b9 00 00 01 00       	mov    ecx,0x10000
489c76:	33 c0                	xor    eax,eax
489c78:	bf f4 63 51 00       	mov    edi,0x5163f4
489c7d:	f3 ab                	rep stos DWORD PTR es:[edi],eax
489c7f:	5f                   	pop    edi
489c80:	c3                   	ret

; ===== Enregistrement, allocation d identifiant, ecriture de la table et rejet du doublon | 0x489C90–0x489EA4 =====
489c90:	55                   	push   ebp
489c91:	8b ec                	mov    ebp,esp
489c93:	64 a1 00 00 00 00    	mov    eax,fs:0x0
489c99:	6a ff                	push   0xffffffff
489c9b:	68 7b a5 4d 00       	push   0x4da57b
489ca0:	50                   	push   eax
489ca1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
489ca8:	53                   	push   ebx
489ca9:	56                   	push   esi
489caa:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
489cad:	66 85 f6             	test   si,si
489cb0:	57                   	push   edi
489cb1:	75 14                	jne    0x489cc7
489cb3:	66 33 c0             	xor    ax,ax
489cb6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
489cb9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
489cc0:	5f                   	pop    edi
489cc1:	5e                   	pop    esi
489cc2:	5b                   	pop    ebx
489cc3:	8b e5                	mov    esp,ebp
489cc5:	5d                   	pop    ebp
489cc6:	c3                   	ret
489cc7:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
489cca:	85 c0                	test   eax,eax
489ccc:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
489ccf:	75 43                	jne    0x489d14
489cd1:	6a 01                	push   0x1
489cd3:	6a 00                	push   0x0
489cd5:	51                   	push   ecx
489cd6:	8b cc                	mov    ecx,esp
489cd8:	89 65 08             	mov    DWORD PTR [ebp+0x8],esp
489cdb:	53                   	push   ebx
489cdc:	e8 83 7d 04 00       	call   0x4d1a64
489ce1:	e8 ea 05 00 00       	call   0x48a2d0
489ce6:	83 c4 0c             	add    esp,0xc
489ce9:	66 85 c0             	test   ax,ax
489cec:	74 26                	je     0x489d14
489cee:	53                   	push   ebx
489cef:	68 64 db 50 00       	push   0x50db64
489cf4:	6a 04                	push   0x4
489cf6:	e8 45 80 fe ff       	call   0x471d40
489cfb:	83 c4 0c             	add    esp,0xc
489cfe:	33 f6                	xor    esi,esi
489d00:	66 8b c6             	mov    ax,si
489d03:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
489d06:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
489d0d:	5f                   	pop    edi
489d0e:	5e                   	pop    esi
489d0f:	5b                   	pop    ebx
489d10:	8b e5                	mov    esp,ebp
489d12:	5d                   	pop    ebp
489d13:	c3                   	ret
489d14:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
489d17:	85 c0                	test   eax,eax
489d19:	74 26                	je     0x489d41
489d1b:	8b c6                	mov    eax,esi
489d1d:	25 ff ff 00 00       	and    eax,0xffff
489d22:	8b 0c 85 f4 63 51 00 	mov    ecx,DWORD PTR [eax*4+0x5163f4]
489d29:	85 c9                	test   ecx,ecx
489d2b:	74 14                	je     0x489d41
489d2d:	46                   	inc    esi
489d2e:	8b ce                	mov    ecx,esi
489d30:	81 e1 ff ff 00 00    	and    ecx,0xffff
489d36:	8b 04 8d f4 63 51 00 	mov    eax,DWORD PTR [ecx*4+0x5163f4]
489d3d:	85 c0                	test   eax,eax
489d3f:	75 ec                	jne    0x489d2d
489d41:	8b c6                	mov    eax,esi
489d43:	25 ff ff 00 00       	and    eax,0xffff
489d48:	8b 0c 85 f4 63 51 00 	mov    ecx,DWORD PTR [eax*4+0x5163f4]
489d4f:	85 c9                	test   ecx,ecx
489d51:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
489d54:	0f 85 23 01 00 00    	jne    0x489e7d
489d5a:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
489d5d:	81 e2 ff 00 00 00    	and    edx,0xff
489d63:	52                   	push   edx
489d64:	53                   	push   ebx
489d65:	50                   	push   eax
489d66:	68 3c db 50 00       	push   0x50db3c
489d6b:	68 00 08 00 00       	push   0x800
489d70:	e8 cb 7f fe ff       	call   0x471d40
489d75:	6a 08                	push   0x8
489d77:	e8 74 82 fb ff       	call   0x441ff0
489d7c:	8b f8                	mov    edi,eax
489d7e:	83 c4 18             	add    esp,0x18
489d81:	89 7d 1c             	mov    DWORD PTR [ebp+0x1c],edi
489d84:	85 ff                	test   edi,edi
489d86:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
489d8d:	74 09                	je     0x489d98
489d8f:	8b cf                	mov    ecx,edi
489d91:	e8 c8 7c 04 00       	call   0x4d1a5e
489d96:	eb 02                	jmp    0x489d9a
489d98:	33 ff                	xor    edi,edi
489d9a:	8a 45 14             	mov    al,BYTE PTR [ebp+0x14]
489d9d:	53                   	push   ebx
489d9e:	8b cf                	mov    ecx,edi
489da0:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
489da7:	88 47 04             	mov    BYTE PTR [edi+0x4],al
489daa:	e8 a9 7c 04 00       	call   0x4d1a58
489daf:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
489db2:	66 89 77 06          	mov    WORD PTR [edi+0x6],si
489db6:	66 89 71 04          	mov    WORD PTR [ecx+0x4],si
489dba:	a1 d8 63 51 00       	mov    eax,ds:0x5163d8
489dbf:	8b 15 e8 63 51 00    	mov    edx,DWORD PTR ds:0x5163e8
489dc5:	33 db                	xor    ebx,ebx
489dc7:	42                   	inc    edx
489dc8:	3b c3                	cmp    eax,ebx
489dca:	a3 d0 63 51 00       	mov    ds:0x5163d0,eax
489dcf:	89 1d f0 63 51 00    	mov    DWORD PTR ds:0x5163f0,ebx
489dd5:	c6 05 e4 63 51 00 08 	mov    BYTE PTR ds:0x5163e4,0x8
489ddc:	a3 dc 63 51 00       	mov    ds:0x5163dc,eax
489de1:	89 15 e8 63 51 00    	mov    DWORD PTR ds:0x5163e8,edx
489de7:	6a 0c                	push   0xc
489de9:	75 31                	jne    0x489e1c
489deb:	e8 00 82 fb ff       	call   0x441ff0
489df0:	83 c4 04             	add    esp,0x4
489df3:	3b c3                	cmp    eax,ebx
489df5:	74 07                	je     0x489dfe
489df7:	89 18                	mov    DWORD PTR [eax],ebx
489df9:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
489dfc:	eb 02                	jmp    0x489e00
489dfe:	33 c0                	xor    eax,eax
489e00:	a3 d0 63 51 00       	mov    ds:0x5163d0,eax
489e05:	a3 d8 63 51 00       	mov    ds:0x5163d8,eax
489e0a:	a3 d4 63 51 00       	mov    ds:0x5163d4,eax
489e0f:	89 18                	mov    DWORD PTR [eax],ebx
489e11:	8b 15 d0 63 51 00    	mov    edx,DWORD PTR ds:0x5163d0
489e17:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
489e1a:	eb 37                	jmp    0x489e53
489e1c:	e8 cf 81 fb ff       	call   0x441ff0
489e21:	83 c4 04             	add    esp,0x4
489e24:	3b c3                	cmp    eax,ebx
489e26:	74 07                	je     0x489e2f
489e28:	89 18                	mov    DWORD PTR [eax],ebx
489e2a:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
489e2d:	eb 02                	jmp    0x489e31
489e2f:	33 c0                	xor    eax,eax
489e31:	8b 0d d0 63 51 00    	mov    ecx,DWORD PTR ds:0x5163d0
489e37:	89 01                	mov    DWORD PTR [ecx],eax
489e39:	8b 15 dc 63 51 00    	mov    edx,DWORD PTR ds:0x5163dc
489e3f:	a3 d8 63 51 00       	mov    ds:0x5163d8,eax
489e44:	a3 d0 63 51 00       	mov    ds:0x5163d0,eax
489e49:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
489e4c:	a1 d0 63 51 00       	mov    eax,ds:0x5163d0
489e51:	89 18                	mov    DWORD PTR [eax],ebx
489e53:	8b 0d d0 63 51 00    	mov    ecx,DWORD PTR ds:0x5163d0
489e59:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
489e5c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
489e5f:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
489e62:	89 04 95 f4 63 51 00 	mov    DWORD PTR [edx*4+0x5163f4],eax
489e69:	66 8b c6             	mov    ax,si
489e6c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
489e6f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
489e76:	5f                   	pop    edi
489e77:	5e                   	pop    esi
489e78:	5b                   	pop    ebx
489e79:	8b e5                	mov    esp,ebp
489e7b:	5d                   	pop    ebp
489e7c:	c3                   	ret
489e7d:	53                   	push   ebx
489e7e:	33 f6                	xor    esi,esi
489e80:	56                   	push   esi
489e81:	68 08 db 50 00       	push   0x50db08
489e86:	6a 04                	push   0x4
489e88:	e8 b3 7e fe ff       	call   0x471d40
489e8d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
489e90:	83 c4 10             	add    esp,0x10
489e93:	5f                   	pop    edi
489e94:	66 8b c6             	mov    ax,si
489e97:	5e                   	pop    esi
489e98:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
489e9f:	5b                   	pop    ebx
489ea0:	8b e5                	mov    esp,ebp
489ea2:	5d                   	pop    ebp
489ea3:	c3                   	ret

; ===== Recherche de reference par nom et type | 0x48A2D0–0x48A46D =====
48a2d0:	55                   	push   ebp
48a2d1:	8b ec                	mov    ebp,esp
48a2d3:	6a ff                	push   0xffffffff
48a2d5:	68 98 a5 4d 00       	push   0x4da598
48a2da:	64 a1 00 00 00 00    	mov    eax,fs:0x0
48a2e0:	50                   	push   eax
48a2e1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
48a2e8:	83 ec 08             	sub    esp,0x8
48a2eb:	53                   	push   ebx
48a2ec:	56                   	push   esi
48a2ed:	57                   	push   edi
48a2ee:	33 f6                	xor    esi,esi
48a2f0:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
48a2f3:	50                   	push   eax
48a2f4:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
48a2f7:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
48a2fa:	58                   	pop    eax
48a2fb:	e8 00 9f fa ff       	call   0x434200
48a300:	8b 10                	mov    edx,DWORD PTR [eax]
48a302:	8d 4d f0             	lea    ecx,[ebp-0x10]
48a305:	51                   	push   ecx
48a306:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
48a309:	68 b0 63 51 00       	push   0x5163b0
48a30e:	51                   	push   ecx
48a30f:	8b c8                	mov    ecx,eax
48a311:	ff 12                	call   DWORD PTR [edx]
48a313:	68 b8 63 51 00       	push   0x5163b8
48a318:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
48a31e:	e8 dd 9e fa ff       	call   0x434200
48a323:	8b 10                	mov    edx,DWORD PTR [eax]
48a325:	68 b4 63 51 00       	push   0x5163b4
48a32a:	8d 4d f0             	lea    ecx,[ebp-0x10]
48a32d:	51                   	push   ecx
48a32e:	8b c8                	mov    ecx,eax
48a330:	ff 52 04             	call   DWORD PTR [edx+0x4]
48a333:	8b 15 d4 63 51 00    	mov    edx,DWORD PTR ds:0x5163d4
48a339:	89 15 d0 63 51 00    	mov    DWORD PTR ds:0x5163d0,edx
48a33f:	89 35 f0 63 51 00    	mov    DWORD PTR ds:0x5163f0,esi
48a345:	c6 05 e4 63 51 00 08 	mov    BYTE PTR ds:0x5163e4,0x8
48a34c:	8a 5d 0c             	mov    bl,BYTE PTR [ebp+0xc]
48a34f:	a1 f0 63 51 00       	mov    eax,ds:0x5163f0
48a354:	85 c0                	test   eax,eax
48a356:	74 0a                	je     0x48a362
48a358:	8b 12                	mov    edx,DWORD PTR [edx]
48a35a:	89 15 d0 63 51 00    	mov    DWORD PTR ds:0x5163d0,edx
48a360:	eb 0a                	jmp    0x48a36c
48a362:	b8 01 00 00 00       	mov    eax,0x1
48a367:	a3 f0 63 51 00       	mov    ds:0x5163f0,eax
48a36c:	85 d2                	test   edx,edx
48a36e:	74 66                	je     0x48a3d6
48a370:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
48a373:	38 5f 04             	cmp    BYTE PTR [edi+0x4],bl
48a376:	74 04                	je     0x48a37c
48a378:	84 db                	test   bl,bl
48a37a:	75 d3                	jne    0x48a34f
48a37c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
48a37f:	85 c0                	test   eax,eax
48a381:	75 34                	jne    0x48a3b7
48a383:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
48a386:	8b 07                	mov    eax,DWORD PTR [edi]
48a388:	8a 18                	mov    bl,BYTE PTR [eax]
48a38a:	8a cb                	mov    cl,bl
48a38c:	3a 1e                	cmp    bl,BYTE PTR [esi]
48a38e:	75 1c                	jne    0x48a3ac
48a390:	84 c9                	test   cl,cl
48a392:	74 14                	je     0x48a3a8
48a394:	8a 58 01             	mov    bl,BYTE PTR [eax+0x1]
48a397:	8a cb                	mov    cl,bl
48a399:	3a 5e 01             	cmp    bl,BYTE PTR [esi+0x1]
48a39c:	75 0e                	jne    0x48a3ac
48a39e:	83 c0 02             	add    eax,0x2
48a3a1:	83 c6 02             	add    esi,0x2
48a3a4:	84 c9                	test   cl,cl
48a3a6:	75 e0                	jne    0x48a388
48a3a8:	33 c0                	xor    eax,eax
48a3aa:	eb 05                	jmp    0x48a3b1
48a3ac:	1b c0                	sbb    eax,eax
48a3ae:	83 d8 ff             	sbb    eax,0xffffffff
48a3b1:	85 c0                	test   eax,eax
48a3b3:	74 75                	je     0x48a42a
48a3b5:	eb 95                	jmp    0x48a34c
48a3b7:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
48a3ba:	8b 07                	mov    eax,DWORD PTR [edi]
48a3bc:	52                   	push   edx
48a3bd:	50                   	push   eax
48a3be:	ff 15 e4 e2 4d 00    	call   DWORD PTR ds:0x4de2e4
48a3c4:	83 c4 08             	add    esp,0x8
48a3c7:	85 c0                	test   eax,eax
48a3c9:	74 5f                	je     0x48a42a
48a3cb:	8b 15 d0 63 51 00    	mov    edx,DWORD PTR ds:0x5163d0
48a3d1:	e9 79 ff ff ff       	jmp    0x48a34f
48a3d6:	85 c0                	test   eax,eax
48a3d8:	74 07                	je     0x48a3e1
48a3da:	c6 05 e4 63 51 00 07 	mov    BYTE PTR ds:0x5163e4,0x7
48a3e1:	c7 05 f0 63 51 00 00 	mov    DWORD PTR ds:0x5163f0,0x0
48a3e8:	00 00 00
48a3eb:	e8 10 9e fa ff       	call   0x434200
48a3f0:	8b 10                	mov    edx,DWORD PTR [eax]
48a3f2:	68 b4 63 51 00       	push   0x5163b4
48a3f7:	8b c8                	mov    ecx,eax
48a3f9:	ff 52 0c             	call   DWORD PTR [edx+0xc]
48a3fc:	68 b8 63 51 00       	push   0x5163b8
48a401:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
48a407:	8d 4d 08             	lea    ecx,[ebp+0x8]
48a40a:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
48a411:	e8 2a 76 04 00       	call   0x4d1a40
48a416:	66 33 c0             	xor    ax,ax
48a419:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
48a41c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
48a423:	5f                   	pop    edi
48a424:	5e                   	pop    esi
48a425:	5b                   	pop    ebx
48a426:	8b e5                	mov    esp,ebp
48a428:	5d                   	pop    ebp
48a429:	c3                   	ret
48a42a:	e8 d1 9d fa ff       	call   0x434200
48a42f:	8b 10                	mov    edx,DWORD PTR [eax]
48a431:	68 b4 63 51 00       	push   0x5163b4
48a436:	8b c8                	mov    ecx,eax
48a438:	ff 52 0c             	call   DWORD PTR [edx+0xc]
48a43b:	68 b8 63 51 00       	push   0x5163b8
48a440:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
48a446:	66 8b 77 06          	mov    si,WORD PTR [edi+0x6]
48a44a:	8d 4d 08             	lea    ecx,[ebp+0x8]
48a44d:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
48a454:	e8 e7 75 04 00       	call   0x4d1a40
48a459:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
48a45c:	5f                   	pop    edi
48a45d:	66 8b c6             	mov    ax,si
48a460:	5e                   	pop    esi
48a461:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
48a468:	5b                   	pop    ebx
48a469:	8b e5                	mov    esp,ebp
48a46b:	5d                   	pop    ebp
48a46c:	c3                   	ret

; ===== Consultation de modele pour Objects::Create | 0x48B0C0–0x48B14F =====
48b0c0:	55                   	push   ebp
48b0c1:	8b ec                	mov    ebp,esp
48b0c3:	53                   	push   ebx
48b0c4:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
48b0c7:	56                   	push   esi
48b0c8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
48b0cb:	8b 04 b5 f4 63 51 00 	mov    eax,DWORD PTR [esi*4+0x5163f4]
48b0d2:	57                   	push   edi
48b0d3:	33 ff                	xor    edi,edi
48b0d5:	3b c7                	cmp    eax,edi
48b0d7:	75 11                	jne    0x48b0ea
48b0d9:	83 fb 01             	cmp    ebx,0x1
48b0dc:	74 0c                	je     0x48b0ea
48b0de:	89 79 74             	mov    DWORD PTR [ecx+0x74],edi
48b0e1:	5f                   	pop    edi
48b0e2:	5e                   	pop    esi
48b0e3:	33 c0                	xor    eax,eax
48b0e5:	5b                   	pop    ebx
48b0e6:	5d                   	pop    ebp
48b0e7:	c2 08 00             	ret    0x8
48b0ea:	a1 04 db 50 00       	mov    eax,ds:0x50db04
48b0ef:	83 f8 ff             	cmp    eax,0xffffffff
48b0f2:	75 05                	jne    0x48b0f9
48b0f4:	b8 00 00 20 00       	mov    eax,0x200000
48b0f9:	8b d0                	mov    edx,eax
48b0fb:	40                   	inc    eax
48b0fc:	a3 04 db 50 00       	mov    ds:0x50db04,eax
48b101:	8b 01                	mov    eax,DWORD PTR [ecx]
48b103:	57                   	push   edi
48b104:	89 51 78             	mov    DWORD PTR [ecx+0x78],edx
48b107:	8d 55 0c             	lea    edx,[ebp+0xc]
48b10a:	52                   	push   edx
48b10b:	57                   	push   edi
48b10c:	57                   	push   edi
48b10d:	51                   	push   ecx
48b10e:	6a 06                	push   0x6
48b110:	88 59 73             	mov    BYTE PTR [ecx+0x73],bl
48b113:	89 71 74             	mov    DWORD PTR [ecx+0x74],esi
48b116:	66 89 71 7c          	mov    WORD PTR [ecx+0x7c],si
48b11a:	c6 45 0c 01          	mov    BYTE PTR [ebp+0xc],0x1
48b11e:	ff 50 24             	call   DWORD PTR [eax+0x24]
48b121:	85 c0                	test   eax,eax
48b123:	74 21                	je     0x48b146
48b125:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
48b128:	8a 45 0c             	mov    al,BYTE PTR [ebp+0xc]
48b12b:	81 e7 ff 00 00 00    	and    edi,0xff
48b131:	84 c0                	test   al,al
48b133:	75 11                	jne    0x48b146
48b135:	53                   	push   ebx
48b136:	56                   	push   esi
48b137:	68 08 dc 50 00       	push   0x50dc08
48b13c:	6a 04                	push   0x4
48b13e:	e8 fd 6b fe ff       	call   0x471d40
48b143:	83 c4 10             	add    esp,0x10
48b146:	8b c7                	mov    eax,edi
48b148:	5f                   	pop    edi
48b149:	5e                   	pop    esi
48b14a:	5b                   	pop    ebx
48b14b:	5d                   	pop    ebp
48b14c:	c2 08 00             	ret    0x8

; ===== Producteur via table de createurs | 0x437810–0x4378CD =====
437810:	55                   	push   ebp
437811:	8b ec                	mov    ebp,esp
437813:	8b 0d c4 22 51 00    	mov    ecx,DWORD PTR ds:0x5122c4
437819:	53                   	push   ebx
43781a:	66 8b 5d 08          	mov    bx,WORD PTR [ebp+0x8]
43781e:	56                   	push   esi
43781f:	33 f6                	xor    esi,esi
437821:	33 c0                	xor    eax,eax
437823:	33 d2                	xor    edx,edx
437825:	57                   	push   edi
437826:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
437829:	89 0d c0 22 51 00    	mov    DWORD PTR ds:0x5122c0,ecx
43782f:	89 15 e0 22 51 00    	mov    DWORD PTR ds:0x5122e0,edx
437835:	c6 05 d4 22 51 00 08 	mov    BYTE PTR ds:0x5122d4,0x8
43783c:	85 d2                	test   edx,edx
43783e:	74 0a                	je     0x43784a
437840:	8b 09                	mov    ecx,DWORD PTR [ecx]
437842:	89 0d c0 22 51 00    	mov    DWORD PTR ds:0x5122c0,ecx
437848:	eb 0b                	jmp    0x437855
43784a:	ba 01 00 00 00       	mov    edx,0x1
43784f:	89 15 e0 22 51 00    	mov    DWORD PTR ds:0x5122e0,edx
437855:	85 c9                	test   ecx,ecx
437857:	74 14                	je     0x43786d
437859:	85 f6                	test   esi,esi
43785b:	75 29                	jne    0x437886
43785d:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
437860:	66 39 5f 04          	cmp    WORD PTR [edi+0x4],bx
437864:	75 d6                	jne    0x43783c
437866:	be 01 00 00 00       	mov    esi,0x1
43786b:	eb cf                	jmp    0x43783c
43786d:	85 d2                	test   edx,edx
43786f:	74 07                	je     0x437878
437871:	c6 05 d4 22 51 00 07 	mov    BYTE PTR ds:0x5122d4,0x7
437878:	85 f6                	test   esi,esi
43787a:	c7 05 e0 22 51 00 00 	mov    DWORD PTR ds:0x5122e0,0x0
437881:	00 00 00
437884:	74 42                	je     0x4378c8
437886:	ff 17                	call   DWORD PTR [edi]
437888:	8b f0                	mov    esi,eax
43788a:	85 f6                	test   esi,esi
43788c:	74 38                	je     0x4378c6
43788e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
437891:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
437894:	6a 00                	push   0x0
437896:	6a 00                	push   0x0
437898:	6a 03                	push   0x3
43789a:	50                   	push   eax
43789b:	56                   	push   esi
43789c:	51                   	push   ecx
43789d:	e8 ee 23 05 00       	call   0x489c90
4378a2:	83 c4 18             	add    esp,0x18
4378a5:	66 85 c0             	test   ax,ax
4378a8:	75 11                	jne    0x4378bb
4378aa:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
4378ad:	8d 4e 08             	lea    ecx,[esi+0x8]
4378b0:	6a 01                	push   0x1
4378b2:	ff 12                	call   DWORD PTR [edx]
4378b4:	5f                   	pop    edi
4378b5:	5e                   	pop    esi
4378b6:	33 c0                	xor    eax,eax
4378b8:	5b                   	pop    ebx
4378b9:	5d                   	pop    ebp
4378ba:	c3                   	ret
4378bb:	56                   	push   esi
4378bc:	b9 58 22 51 00       	mov    ecx,0x512258
4378c1:	e8 1a 08 00 00       	call   0x4380e0
4378c6:	8b c6                	mov    eax,esi
4378c8:	5f                   	pop    edi
4378c9:	5e                   	pop    esi
4378ca:	5b                   	pop    ebx
4378cb:	5d                   	pop    ebp
4378cc:	c3                   	ret

; ===== Producteur de PNJ depuis descriptor | 0x4741E0–0x47424C =====
4741e0:	85 c0                	test   eax,eax
4741e2:	75 05                	jne    0x4741e9
4741e4:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
4741e9:	50                   	push   eax
4741ea:	33 c0                	xor    eax,eax
4741ec:	66 8b 43 0c          	mov    ax,WORD PTR [ebx+0xc]
4741f0:	33 c9                	xor    ecx,ecx
4741f2:	66 8b 4b 10          	mov    cx,WORD PTR [ebx+0x10]
4741f6:	50                   	push   eax
4741f7:	51                   	push   ecx
4741f8:	e8 13 36 fc ff       	call   0x437810
4741fd:	83 c4 0c             	add    esp,0xc
474200:	66 85 ff             	test   di,di
474203:	8b f0                	mov    esi,eax
474205:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
474208:	74 1c                	je     0x474226
47420a:	8b 03                	mov    eax,DWORD PTR [ebx]
47420c:	85 c0                	test   eax,eax
47420e:	75 05                	jne    0x474215
474210:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
474215:	6a 01                	push   0x1
474217:	6a 00                	push   0x0
474219:	6a 03                	push   0x3
47421b:	50                   	push   eax
47421c:	56                   	push   esi
47421d:	57                   	push   edi
47421e:	e8 6d 5a 01 00       	call   0x489c90
474223:	83 c4 18             	add    esp,0x18
474226:	33 ff                	xor    edi,edi
474228:	3b f7                	cmp    esi,edi
47422a:	0f 84 08 05 00 00    	je     0x474738
474230:	66 8b 53 24          	mov    dx,WORD PTR [ebx+0x24]
474234:	66 89 56 2c          	mov    WORD PTR [esi+0x2c],dx
474238:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
47423b:	48                   	dec    eax
47423c:	83 f8 0c             	cmp    eax,0xc
47423f:	77 27                	ja     0x474268
474241:	33 c9                	xor    ecx,ecx
474243:	8a 88 44 50 47 00    	mov    cl,BYTE PTR [eax+0x475044]
474249:	ff 24 8d 34 50 47 00 	jmp    DWORD PTR [ecx*4+0x475034]

; ===== Parcours de fiches de donnees et enregistrement type 2 | 0x4755F5–0x475665 =====
4755f5:	8b 43 ec             	mov    eax,DWORD PTR [ebx-0x14]
4755f8:	3b 43 f0             	cmp    eax,DWORD PTR [ebx-0x10]
4755fb:	74 16                	je     0x475613
4755fd:	8b 08                	mov    ecx,DWORD PTR [eax]
4755ff:	89 4e 78             	mov    DWORD PTR [esi+0x78],ecx
475602:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
475605:	33 c9                	xor    ecx,ecx
475607:	89 56 7c             	mov    DWORD PTR [esi+0x7c],edx
47560a:	8a 48 08             	mov    cl,BYTE PTR [eax+0x8]
47560d:	89 8e 80 00 00 00    	mov    DWORD PTR [esi+0x80],ecx
475613:	8b 03                	mov    eax,DWORD PTR [ebx]
475615:	85 c0                	test   eax,eax
475617:	75 05                	jne    0x47561e
475619:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
47561e:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
475621:	6a 00                	push   0x0
475623:	6a 01                	push   0x1
475625:	6a 02                	push   0x2
475627:	50                   	push   eax
475628:	33 c0                	xor    eax,eax
47562a:	66 8b 43 f8          	mov    ax,WORD PTR [ebx-0x8]
47562e:	52                   	push   edx
47562f:	50                   	push   eax
475630:	e8 5b 46 01 00       	call   0x489c90
475635:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
475638:	81 c3 08 01 00 00    	add    ebx,0x108
47563e:	66 89 06             	mov    WORD PTR [esi],ax
475641:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
475644:	8d 4b c4             	lea    ecx,[ebx-0x3c]
475647:	83 c4 18             	add    esp,0x18
47564a:	3b c8                	cmp    ecx,eax
47564c:	0f 85 e6 fa ff ff    	jne    0x475138
475652:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
475655:	5f                   	pop    edi
475656:	5e                   	pop    esi
475657:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
47565e:	5b                   	pop    ebx
47565f:	8b e5                	mov    esp,ebp
475661:	5d                   	pop    ebp
475662:	c2 04 00             	ret    0x4

; ===== Autre inscription de type 2 depuis initialisation | 0x476904–0x476939 =====
476904:	56                   	push   esi
476905:	6a 01                	push   0x1
476907:	6a 02                	push   0x2
476909:	50                   	push   eax
47690a:	53                   	push   ebx
47690b:	68 30 75 00 00       	push   0x7530
476910:	e8 7b 33 01 00       	call   0x489c90
476915:	83 c4 18             	add    esp,0x18
476918:	66 8b d8             	mov    bx,ax
47691b:	66 f7 db             	neg    bx
47691e:	1a db                	sbb    bl,bl
476920:	6a 01                	push   0x1
476922:	8d 8d 64 ff ff ff    	lea    ecx,[ebp-0x9c]
476928:	fe c3                	inc    bl
47692a:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
47692e:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
476934:	84 db                	test   bl,bl
476936:	74 3a                	je     0x476972
476938:	8d 55 94             	lea    edx,[ebp-0x6c]

; ===== Enregistrements nommes GOLD et DECOR | 0x44B0B0–0x44B177 =====
44b0b0:	55                   	push   ebp
44b0b1:	8b ec                	mov    ebp,esp
44b0b3:	51                   	push   ecx
44b0b4:	6a 00                	push   0x0
44b0b6:	6a 03                	push   0x3
44b0b8:	51                   	push   ecx
44b0b9:	8b cc                	mov    ecx,esp
44b0bb:	89 65 fc             	mov    DWORD PTR [ebp-0x4],esp
44b0be:	68 94 58 50 00       	push   0x505894
44b0c3:	e8 9c 69 08 00       	call   0x4d1a64
44b0c8:	e8 03 f2 03 00       	call   0x48a2d0
44b0cd:	83 c4 0c             	add    esp,0xc
44b0d0:	6a 00                	push   0x0
44b0d2:	6a 03                	push   0x3
44b0d4:	51                   	push   ecx
44b0d5:	8b cc                	mov    ecx,esp
44b0d7:	25 ff ff 00 00       	and    eax,0xffff
44b0dc:	89 65 fc             	mov    DWORD PTR [ebp-0x4],esp
44b0df:	68 88 58 50 00       	push   0x505888
44b0e4:	a3 0c 46 51 00       	mov    ds:0x51460c,eax
44b0e9:	e8 76 69 08 00       	call   0x4d1a64
44b0ee:	e8 dd f1 03 00       	call   0x48a2d0
44b0f3:	83 c4 0c             	add    esp,0xc
44b0f6:	6a 00                	push   0x0
44b0f8:	6a 03                	push   0x3
44b0fa:	51                   	push   ecx
44b0fb:	8b cc                	mov    ecx,esp
44b0fd:	25 ff ff 00 00       	and    eax,0xffff
44b102:	89 65 fc             	mov    DWORD PTR [ebp-0x4],esp
44b105:	68 7c 58 50 00       	push   0x50587c
44b10a:	a3 b0 44 51 00       	mov    ds:0x5144b0,eax
44b10f:	e8 50 69 08 00       	call   0x4d1a64
44b114:	e8 b7 f1 03 00       	call   0x48a2d0
44b119:	83 c4 0c             	add    esp,0xc
44b11c:	6a 00                	push   0x0
44b11e:	6a 03                	push   0x3
44b120:	51                   	push   ecx
44b121:	8b cc                	mov    ecx,esp
44b123:	25 ff ff 00 00       	and    eax,0xffff
44b128:	89 65 fc             	mov    DWORD PTR [ebp-0x4],esp
44b12b:	68 70 58 50 00       	push   0x505870
44b130:	a3 b4 44 51 00       	mov    ds:0x5144b4,eax
44b135:	e8 2a 69 08 00       	call   0x4d1a64
44b13a:	e8 91 f1 03 00       	call   0x48a2d0
44b13f:	83 c4 0c             	add    esp,0xc
44b142:	6a 00                	push   0x0
44b144:	6a 03                	push   0x3
44b146:	51                   	push   ecx
44b147:	8b cc                	mov    ecx,esp
44b149:	25 ff ff 00 00       	and    eax,0xffff
44b14e:	89 65 fc             	mov    DWORD PTR [ebp-0x4],esp
44b151:	68 64 58 50 00       	push   0x505864
44b156:	a3 b8 44 51 00       	mov    ds:0x5144b8,eax
44b15b:	e8 04 69 08 00       	call   0x4d1a64
44b160:	e8 6b f1 03 00       	call   0x48a2d0
44b165:	83 c4 0c             	add    esp,0xc
44b168:	6a 00                	push   0x0
44b16a:	6a 03                	push   0x3
44b16c:	51                   	push   ecx
44b16d:	8b cc                	mov    ecx,esp
44b16f:	25 ff ff 00 00       	and    eax,0xffff
44b174:	89 65 fc             	mov    DWORD PTR [ebp-0x4],esp

; ===== Remise a zero depuis initialisation serveur | 0x472DF1–0x472E30 =====
472df1:	c7 06 50 f5 4d 00    	mov    DWORD PTR [esi],0x4df550
472df7:	c7 46 5c 0e 00 00 00 	mov    DWORD PTR [esi+0x5c],0xe
472dfe:	e8 dd d9 fe ff       	call   0x4607e0
472e03:	e8 68 6e 01 00       	call   0x489c70
472e08:	e8 e3 ad fd ff       	call   0x44dbf0
472e0d:	e8 de e0 fe ff       	call   0x460ef0
472e12:	e8 79 1b fe ff       	call   0x454990
472e17:	68 70 ea 43 00       	push   0x43ea70
472e1c:	ff 15 34 e1 4d 00    	call   DWORD PTR ds:0x4de134
472e22:	e8 89 01 fa ff       	call   0x412fb0
472e27:	e8 34 06 fa ff       	call   0x413460
472e2c:	57                   	push   edi
472e2d:	68 b4 9e 50 00       	push   0x509eb4

; ===== Balayage du registre par type et appel virtuel | 0x48A470–0x48A4EC =====
48a470:	55                   	push   ebp
48a471:	8b ec                	mov    ebp,esp
48a473:	6a ff                	push   0xffffffff
48a475:	68 b0 a5 4d 00       	push   0x4da5b0
48a47a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
48a480:	50                   	push   eax
48a481:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
48a488:	83 ec 08             	sub    esp,0x8
48a48b:	53                   	push   ebx
48a48c:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
48a48f:	56                   	push   esi
48a490:	8b 75 1c             	mov    esi,DWORD PTR [ebp+0x1c]
48a493:	57                   	push   edi
48a494:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
48a497:	33 d2                	xor    edx,edx
48a499:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
48a49c:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
48a49f:	81 fa 00 00 01 00    	cmp    edx,0x10000
48a4a5:	0f 83 52 03 00 00    	jae    0x48a7fd
48a4ab:	8b 0c 95 f4 63 51 00 	mov    ecx,DWORD PTR [edx*4+0x5163f4]
48a4b2:	85 c9                	test   ecx,ecx
48a4b4:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
48a4bb:	74 1f                	je     0x48a4dc
48a4bd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
48a4c0:	48                   	dec    eax
48a4c1:	83 f8 1b             	cmp    eax,0x1b
48a4c4:	77 16                	ja     0x48a4dc
48a4c6:	ff 24 85 10 a8 48 00 	jmp    DWORD PTR [eax*4+0x48a810]
48a4cd:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
48a4d0:	8b 11                	mov    edx,DWORD PTR [ecx]
48a4d2:	56                   	push   esi
48a4d3:	57                   	push   edi
48a4d4:	53                   	push   ebx
48a4d5:	50                   	push   eax
48a4d6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
48a4d9:	50                   	push   eax
48a4da:	ff 12                	call   DWORD PTR [edx]
48a4dc:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
48a4df:	42                   	inc    edx
48a4e0:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
48a4e7:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
48a4ea:	eb b3                	jmp    0x48a49f

; ===== Fin du balayage et branche de journalisation | 0x48A7C9–0x48A80E =====
48a7c9:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
48a7cc:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
48a7cf:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
48a7d2:	50                   	push   eax
48a7d3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
48a7d6:	51                   	push   ecx
48a7d7:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
48a7da:	52                   	push   edx
48a7db:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
48a7de:	50                   	push   eax
48a7df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
48a7e2:	51                   	push   ecx
48a7e3:	52                   	push   edx
48a7e4:	50                   	push   eax
48a7e5:	68 98 db 50 00       	push   0x50db98
48a7ea:	6a 01                	push   0x1
48a7ec:	e8 4f 75 fe ff       	call   0x471d40
48a7f1:	83 c4 24             	add    esp,0x24
48a7f4:	6a 00                	push   0x0
48a7f6:	6a 00                	push   0x0
48a7f8:	e8 59 75 04 00       	call   0x4d1d56
48a7fd:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
48a800:	5f                   	pop    edi
48a801:	5e                   	pop    esi
48a802:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
48a809:	5b                   	pop    ebx
48a80a:	8b e5                	mov    esp,ebp
48a80c:	5d                   	pop    ebp
48a80d:	c3                   	ret
