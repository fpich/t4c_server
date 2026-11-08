; PASSE47 — notifications combat avec contexte et etat
; Binaire serveur SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; .text — instructions originales validées octet par octet ; adresses VA PE32 x86
; Extrait documentaire statique, non preuve de fonctionnement dynamique

; Construction et diffusion de 95 | [0x4218f0,0x4219c3[
; Déjà documenté passe46; contexte des appels du dispatch.
  4218f0:	55                   	push   ebp
  4218f1:	8b ec                	mov    ebp,esp
  4218f3:	6a ff                	push   0xffffffff
  4218f5:	68 a8 43 4d 00       	push   0x4d43a8
  4218fa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  421900:	50                   	push   eax
  421901:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  421908:	83 ec 18             	sub    esp,0x18
  42190b:	53                   	push   ebx
  42190c:	56                   	push   esi
  42190d:	57                   	push   edi
  42190e:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421911:	e8 da 44 06 00       	call   0x485df0
  421916:	6a 5f                	push   0x5f
  421918:	8d 4d dc             	lea    ecx,[ebp-0x24]
  42191b:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  421922:	e8 29 48 06 00       	call   0x486150
  421927:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  42192a:	8b ce                	mov    ecx,esi
  42192c:	e8 cf 9d 06 00       	call   0x48b700
  421931:	50                   	push   eax
  421932:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421935:	e8 b6 48 06 00       	call   0x4861f0
  42193a:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  42193d:	57                   	push   edi
  42193e:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421941:	e8 0a 48 06 00       	call   0x486150
  421946:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  421949:	53                   	push   ebx
  42194a:	8d 4d dc             	lea    ecx,[ebp-0x24]
  42194d:	e8 fe 47 06 00       	call   0x486150
  421952:	8a 45 18             	mov    al,BYTE PTR [ebp+0x18]
  421955:	84 c0                	test   al,al
  421957:	74 04                	je     0x42195d
  421959:	6a 01                	push   0x1
  42195b:	eb 02                	jmp    0x42195f
  42195d:	6a 00                	push   0x0
  42195f:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421962:	e8 49 48 06 00       	call   0x4861b0
  421967:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  42196a:	8b 16                	mov    edx,DWORD PTR [esi]
  42196c:	83 ec 0c             	sub    esp,0xc
  42196f:	8b c4                	mov    eax,esp
  421971:	89 38                	mov    DWORD PTR [eax],edi
  421973:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  421976:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  421979:	8d 45 0c             	lea    eax,[ebp+0xc]
  42197c:	50                   	push   eax
  42197d:	8b ce                	mov    ecx,esi
  42197f:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421982:	8b 10                	mov    edx,DWORD PTR [eax]
  421984:	83 ec 0c             	sub    esp,0xc
  421987:	8b cc                	mov    ecx,esp
  421989:	89 11                	mov    DWORD PTR [ecx],edx
  42198b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  42198e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  421991:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  421994:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  421997:	8d 4d dc             	lea    ecx,[ebp-0x24]
  42199a:	51                   	push   ecx
  42199b:	e8 f0 fe ff ff       	call   0x421890
  4219a0:	83 c4 1c             	add    esp,0x1c
  4219a3:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4219a6:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4219ad:	e8 ce 44 06 00       	call   0x485e80
  4219b2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4219b5:	5f                   	pop    edi
  4219b6:	5e                   	pop    esi
  4219b7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4219be:	5b                   	pop    ebx
  4219bf:	8b e5                	mov    esp,ebp
  4219c1:	5d                   	pop    ebp
  4219c2:	c3                   	ret

; Traitement effet et construction de 96 | [0x4219d0,0x421d66[
; Déjà documenté passe46; conditions et ratio HP entier.
  4219d0:	55                   	push   ebp
  4219d1:	8b ec                	mov    ebp,esp
  4219d3:	6a ff                	push   0xffffffff
  4219d5:	68 d8 43 4d 00       	push   0x4d43d8
  4219da:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4219e0:	50                   	push   eax
  4219e1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4219e8:	81 ec 3c 08 00 00    	sub    esp,0x83c
  4219ee:	53                   	push   ebx
  4219ef:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  4219f2:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  4219f5:	8b 03                	mov    eax,DWORD PTR [ebx]
  4219f7:	56                   	push   esi
  4219f8:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  4219fb:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  4219fe:	57                   	push   edi
  4219ff:	8b ce                	mov    ecx,esi
  421a01:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  421a04:	e8 67 9c 06 00       	call   0x48b670
  421a09:	3c 04                	cmp    al,0x4
  421a0b:	0f 84 44 03 00 00    	je     0x421d55
  421a11:	8b ce                	mov    ecx,esi
  421a13:	e8 58 9c 06 00       	call   0x48b670
  421a18:	3c 03                	cmp    al,0x3
  421a1a:	0f 84 35 03 00 00    	je     0x421d55
  421a20:	8b 16                	mov    edx,DWORD PTR [esi]
  421a22:	8b ce                	mov    ecx,esi
  421a24:	ff 92 84 01 00 00    	call   DWORD PTR [edx+0x184]
  421a2a:	85 c0                	test   eax,eax
  421a2c:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  421a2f:	74 22                	je     0x421a53
  421a31:	8b ce                	mov    ecx,esi
  421a33:	e8 38 9c 06 00       	call   0x48b670
  421a38:	3c 02                	cmp    al,0x2
  421a3a:	75 17                	jne    0x421a53
  421a3c:	8b 06                	mov    eax,DWORD PTR [esi]
  421a3e:	6a 01                	push   0x1
  421a40:	8b ce                	mov    ecx,esi
  421a42:	ff 90 80 00 00 00    	call   DWORD PTR [eax+0x80]
  421a48:	8b 16                	mov    edx,DWORD PTR [esi]
  421a4a:	57                   	push   edi
  421a4b:	8b ce                	mov    ecx,esi
  421a4d:	ff 92 ac 00 00 00    	call   DWORD PTR [edx+0xac]
  421a53:	8b 07                	mov    eax,DWORD PTR [edi]
  421a55:	6a 00                	push   0x0
  421a57:	68 53 4e 00 00       	push   0x4e53
  421a5c:	8b cf                	mov    ecx,edi
  421a5e:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  421a61:	85 c0                	test   eax,eax
  421a63:	74 38                	je     0x421a9d
  421a65:	8d 4d dc             	lea    ecx,[ebp-0x24]
  421a68:	51                   	push   ecx
  421a69:	b9 34 5e 51 00       	mov    ecx,0x515e34
  421a6e:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
  421a75:	c7 45 e0 32 00 00 00 	mov    DWORD PTR [ebp-0x20],0x32
  421a7c:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  421a83:	e8 98 76 03 00       	call   0x459120
  421a88:	05 95 00 00 00       	add    eax,0x95
  421a8d:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  421a90:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  421a93:	dc 0b                	fmul   QWORD PTR [ebx]
  421a95:	dc 0d d0 e8 4d 00    	fmul   QWORD PTR ds:0x4de8d0
  421a9b:	dd 1b                	fstp   QWORD PTR [ebx]
  421a9d:	8b 17                	mov    edx,DWORD PTR [edi]
  421a9f:	8b cf                	mov    ecx,edi
  421aa1:	ff 92 d8 01 00 00    	call   DWORD PTR [edx+0x1d8]
  421aa7:	8b 06                	mov    eax,DWORD PTR [esi]
  421aa9:	6a 00                	push   0x0
  421aab:	68 31 4e 00 00       	push   0x4e31
  421ab0:	8b ce                	mov    ecx,esi
  421ab2:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  421ab5:	85 c0                	test   eax,eax
  421ab7:	74 16                	je     0x421acf
  421ab9:	dd 03                	fld    QWORD PTR [ebx]
  421abb:	68 31 4e 00 00       	push   0x4e31
  421ac0:	dc 0d c8 e8 4d 00    	fmul   QWORD PTR ds:0x4de8c8
  421ac6:	8b ce                	mov    ecx,esi
  421ac8:	dd 1b                	fstp   QWORD PTR [ebx]
  421aca:	8b 16                	mov    edx,DWORD PTR [esi]
  421acc:	ff 52 08             	call   DWORD PTR [edx+0x8]
  421acf:	8b 07                	mov    eax,DWORD PTR [edi]
  421ad1:	56                   	push   esi
  421ad2:	53                   	push   ebx
  421ad3:	8b cf                	mov    ecx,edi
  421ad5:	ff 50 40             	call   DWORD PTR [eax+0x40]
  421ad8:	8b 16                	mov    edx,DWORD PTR [esi]
  421ada:	57                   	push   edi
  421adb:	53                   	push   ebx
  421adc:	8b ce                	mov    ecx,esi
  421ade:	ff 52 38             	call   DWORD PTR [edx+0x38]
  421ae1:	dd 03                	fld    QWORD PTR [ebx]
  421ae3:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  421ae9:	df e0                	fnstsw ax
  421aeb:	f6 c4 01             	test   ah,0x1
  421aee:	74 0d                	je     0x421afd
  421af0:	c7 03 00 00 00 00    	mov    DWORD PTR [ebx],0x0
  421af6:	c7 43 04 00 00 00 00 	mov    DWORD PTR [ebx+0x4],0x0
  421afd:	8b cf                	mov    ecx,edi
  421aff:	e8 6c 9b 06 00       	call   0x48b670
  421b04:	3c 01                	cmp    al,0x1
  421b06:	0f 85 8a 00 00 00    	jne    0x421b96
  421b0c:	8b cf                	mov    ecx,edi
  421b0e:	e8 dd 8f ff ff       	call   0x41aaf0
  421b13:	85 c0                	test   eax,eax
  421b15:	74 7f                	je     0x421b96
  421b17:	8b c8                	mov    ecx,eax
  421b19:	e8 c2 2f 03 00       	call   0x454ae0
  421b1e:	25 00 00 00 80       	and    eax,0x80000000
  421b23:	33 c9                	xor    ecx,ecx
  421b25:	0b c1                	or     eax,ecx
  421b27:	74 6d                	je     0x421b96
  421b29:	8b 1e                	mov    ebx,DWORD PTR [esi]
  421b2b:	88 8d b8 f7 ff ff    	mov    BYTE PTR [ebp-0x848],cl
  421b31:	e8 2a bf 01 00       	call   0x43da60
  421b36:	8b ce                	mov    ecx,esi
  421b38:	50                   	push   eax
  421b39:	8d 45 0c             	lea    eax,[ebp+0xc]
  421b3c:	50                   	push   eax
  421b3d:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  421b40:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  421b43:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  421b46:	8b 13                	mov    edx,DWORD PTR [ebx]
  421b48:	51                   	push   ecx
  421b49:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  421b4c:	52                   	push   edx
  421b4d:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  421b50:	51                   	push   ecx
  421b51:	52                   	push   edx
  421b52:	8b c8                	mov    ecx,eax
  421b54:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  421b5b:	e8 10 02 00 00       	call   0x421d70
  421b60:	50                   	push   eax
  421b61:	8d 85 b8 f7 ff ff    	lea    eax,[ebp-0x848]
  421b67:	68 3c 26 50 00       	push   0x50263c
  421b6c:	50                   	push   eax
  421b6d:	e8 ce 1d fe ff       	call   0x403940
  421b72:	83 c4 18             	add    esp,0x18
  421b75:	8b cc                	mov    ecx,esp
  421b77:	89 65 08             	mov    DWORD PTR [ebp+0x8],esp
  421b7a:	50                   	push   eax
  421b7b:	e8 e4 fe 0a 00       	call   0x4d1a64
  421b80:	8b cf                	mov    ecx,edi
  421b82:	e8 09 13 00 00       	call   0x422e90
  421b87:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  421b8a:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  421b91:	e8 aa fe 0a 00       	call   0x4d1a40
  421b96:	8b ce                	mov    ecx,esi
  421b98:	e8 d3 9a 06 00       	call   0x48b670
  421b9d:	3c 01                	cmp    al,0x1
  421b9f:	0f 85 8a 00 00 00    	jne    0x421c2f
  421ba5:	8b ce                	mov    ecx,esi
  421ba7:	e8 44 8f ff ff       	call   0x41aaf0
  421bac:	85 c0                	test   eax,eax
  421bae:	74 7f                	je     0x421c2f
  421bb0:	8b c8                	mov    ecx,eax
  421bb2:	e8 29 2f 03 00       	call   0x454ae0
  421bb7:	25 00 00 00 80       	and    eax,0x80000000
  421bbc:	33 c9                	xor    ecx,ecx
  421bbe:	0b c1                	or     eax,ecx
  421bc0:	74 6d                	je     0x421c2f
  421bc2:	8b 1f                	mov    ebx,DWORD PTR [edi]
  421bc4:	88 8d b8 f7 ff ff    	mov    BYTE PTR [ebp-0x848],cl
  421bca:	e8 91 be 01 00       	call   0x43da60
  421bcf:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  421bd2:	50                   	push   eax
  421bd3:	51                   	push   ecx
  421bd4:	8b cf                	mov    ecx,edi
  421bd6:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  421bd9:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  421bdc:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  421bdf:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  421be1:	52                   	push   edx
  421be2:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  421be5:	51                   	push   ecx
  421be6:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  421be9:	52                   	push   edx
  421bea:	51                   	push   ecx
  421beb:	8b c8                	mov    ecx,eax
  421bed:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  421bf4:	e8 77 01 00 00       	call   0x421d70
  421bf9:	50                   	push   eax
  421bfa:	8d 95 b8 f7 ff ff    	lea    edx,[ebp-0x848]
  421c00:	68 00 26 50 00       	push   0x502600
  421c05:	52                   	push   edx
  421c06:	e8 35 1d fe ff       	call   0x403940
  421c0b:	83 c4 18             	add    esp,0x18
  421c0e:	8b cc                	mov    ecx,esp
  421c10:	89 65 10             	mov    DWORD PTR [ebp+0x10],esp
  421c13:	50                   	push   eax
  421c14:	e8 4b fe 0a 00       	call   0x4d1a64
  421c19:	8b ce                	mov    ecx,esi
  421c1b:	e8 70 12 00 00       	call   0x422e90
  421c20:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  421c23:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  421c2a:	e8 11 fe 0a 00       	call   0x4d1a40
  421c2f:	8b 06                	mov    eax,DWORD PTR [esi]
  421c31:	57                   	push   edi
  421c32:	53                   	push   ebx
  421c33:	8b ce                	mov    ecx,esi
  421c35:	ff 50 3c             	call   DWORD PTR [eax+0x3c]
  421c38:	8b 17                	mov    edx,DWORD PTR [edi]
  421c3a:	8b cf                	mov    ecx,edi
  421c3c:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  421c3f:	ff 92 30 01 00 00    	call   DWORD PTR [edx+0x130]
  421c45:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421c48:	e8 a3 41 06 00       	call   0x485df0
  421c4d:	6a 60                	push   0x60
  421c4f:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421c52:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  421c59:	e8 f2 44 06 00       	call   0x486150
  421c5e:	8b cf                	mov    ecx,edi
  421c60:	e8 9b 9a 06 00       	call   0x48b700
  421c65:	50                   	push   eax
  421c66:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421c69:	e8 82 45 06 00       	call   0x4861f0
  421c6e:	8b ce                	mov    ecx,esi
  421c70:	e8 8b 9a 06 00       	call   0x48b700
  421c75:	50                   	push   eax
  421c76:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421c79:	e8 72 45 06 00       	call   0x4861f0
  421c7e:	8b 06                	mov    eax,DWORD PTR [esi]
  421c80:	8b ce                	mov    ecx,esi
  421c82:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  421c88:	8b 16                	mov    edx,DWORD PTR [esi]
  421c8a:	8d 04 80             	lea    eax,[eax+eax*4]
  421c8d:	8d 1c 80             	lea    ebx,[eax+eax*4]
  421c90:	8b ce                	mov    ecx,esi
  421c92:	c1 e3 02             	shl    ebx,0x2
  421c95:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  421c9b:	8b c8                	mov    ecx,eax
  421c9d:	33 d2                	xor    edx,edx
  421c9f:	8b c3                	mov    eax,ebx
  421ca1:	f7 f1                	div    ecx
  421ca3:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421ca6:	50                   	push   eax
  421ca7:	e8 04 45 06 00       	call   0x4861b0
  421cac:	8b 16                	mov    edx,DWORD PTR [esi]
  421cae:	8d 45 dc             	lea    eax,[ebp-0x24]
  421cb1:	50                   	push   eax
  421cb2:	8b ce                	mov    ecx,esi
  421cb4:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421cb7:	8b 10                	mov    edx,DWORD PTR [eax]
  421cb9:	83 ec 0c             	sub    esp,0xc
  421cbc:	8b cc                	mov    ecx,esp
  421cbe:	89 11                	mov    DWORD PTR [ecx],edx
  421cc0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  421cc3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  421cc6:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  421cc9:	8b 17                	mov    edx,DWORD PTR [edi]
  421ccb:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  421cce:	8d 45 e8             	lea    eax,[ebp-0x18]
  421cd1:	50                   	push   eax
  421cd2:	8b cf                	mov    ecx,edi
  421cd4:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421cd7:	8b 10                	mov    edx,DWORD PTR [eax]
  421cd9:	83 ec 0c             	sub    esp,0xc
  421cdc:	8b cc                	mov    ecx,esp
  421cde:	89 11                	mov    DWORD PTR [ecx],edx
  421ce0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  421ce3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  421ce6:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  421ce9:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  421cec:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421cef:	51                   	push   ecx
  421cf0:	e8 9b fb ff ff       	call   0x421890
  421cf5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  421cf8:	83 cb ff             	or     ebx,0xffffffff
  421cfb:	83 c4 1c             	add    esp,0x1c
  421cfe:	3b c3                	cmp    eax,ebx
  421d00:	75 48                	jne    0x421d4a
  421d02:	8b 17                	mov    edx,DWORD PTR [edi]
  421d04:	8b cf                	mov    ecx,edi
  421d06:	ff 92 d0 01 00 00    	call   DWORD PTR [edx+0x1d0]
  421d0c:	50                   	push   eax
  421d0d:	8b ce                	mov    ecx,esi
  421d0f:	e8 ec 99 06 00       	call   0x48b700
  421d14:	50                   	push   eax
  421d15:	8b 06                	mov    eax,DWORD PTR [esi]
  421d17:	8b ce                	mov    ecx,esi
  421d19:	ff 90 b4 00 00 00    	call   DWORD PTR [eax+0xb4]
  421d1f:	8b 16                	mov    edx,DWORD PTR [esi]
  421d21:	8b ce                	mov    ecx,esi
  421d23:	50                   	push   eax
  421d24:	6a 19                	push   0x19
  421d26:	8d 45 b8             	lea    eax,[ebp-0x48]
  421d29:	50                   	push   eax
  421d2a:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421d2d:	8b 10                	mov    edx,DWORD PTR [eax]
  421d2f:	83 ec 0c             	sub    esp,0xc
  421d32:	8b cc                	mov    ecx,esp
  421d34:	89 11                	mov    DWORD PTR [ecx],edx
  421d36:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  421d39:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  421d3c:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  421d3f:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  421d42:	e8 19 de fe ff       	call   0x40fb60
  421d47:	83 c4 1c             	add    esp,0x1c
  421d4a:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  421d4d:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  421d50:	e8 2b 41 06 00       	call   0x485e80
  421d55:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  421d58:	5f                   	pop    edi
  421d59:	5e                   	pop    esi
  421d5a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  421d61:	5b                   	pop    ebx
  421d62:	8b e5                	mov    esp,ebp
  421d64:	5d                   	pop    ebp
  421d65:	c3                   	ret

; Message ciblé Character (helper) | [0x422e90,0x422f23[
; Conçoit un TFCPacket 0x3F puis 0x1E 0x03; SendPlayerMessage +0x14C.
  422e90:	55                   	push   ebp
  422e91:	8b ec                	mov    ebp,esp
  422e93:	6a ff                	push   0xffffffff
  422e95:	68 c0 44 4d 00       	push   0x4d44c0
  422e9a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  422ea0:	50                   	push   eax
  422ea1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  422ea8:	83 ec 18             	sub    esp,0x18
  422eab:	56                   	push   esi
  422eac:	8b f1                	mov    esi,ecx
  422eae:	8d 4d dc             	lea    ecx,[ebp-0x24]
  422eb1:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  422eb8:	e8 33 2f 06 00       	call   0x485df0
  422ebd:	6a 3f                	push   0x3f
  422ebf:	8d 4d dc             	lea    ecx,[ebp-0x24]
  422ec2:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  422ec6:	e8 85 32 06 00       	call   0x486150
  422ecb:	6a 1e                	push   0x1e
  422ecd:	8d 4d dc             	lea    ecx,[ebp-0x24]
  422ed0:	e8 7b 32 06 00       	call   0x486150
  422ed5:	6a 03                	push   0x3
  422ed7:	8d 4d dc             	lea    ecx,[ebp-0x24]
  422eda:	e8 71 32 06 00       	call   0x486150
  422edf:	8d 45 08             	lea    eax,[ebp+0x8]
  422ee2:	50                   	push   eax
  422ee3:	8d 4d dc             	lea    ecx,[ebp-0x24]
  422ee6:	e8 65 34 06 00       	call   0x486350
  422eeb:	8b 16                	mov    edx,DWORD PTR [esi]
  422eed:	8d 45 dc             	lea    eax,[ebp-0x24]
  422ef0:	50                   	push   eax
  422ef1:	8b ce                	mov    ecx,esi
  422ef3:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  422ef9:	8d 4d dc             	lea    ecx,[ebp-0x24]
  422efc:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  422f00:	e8 7b 2f 06 00       	call   0x485e80
  422f05:	8d 4d 08             	lea    ecx,[ebp+0x8]
  422f08:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  422f0f:	e8 2c eb 0a 00       	call   0x4d1a40
  422f14:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  422f17:	5e                   	pop    esi
  422f18:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  422f1f:	8b e5                	mov    esp,ebp
  422f21:	5d                   	pop    ebp
  422f22:	c2 04 00             	ret    0x4

; Une propriété d attaque à distance | [0x422f30,0x422f4d[
; Accès à un octet +0x7E; ne présume pas du sens métier.
  422f30:	8a 41 7e             	mov    al,BYTE PTR [ecx+0x7e]
  422f33:	c3                   	ret
  422f34:	90                   	nop
  422f35:	90                   	nop
  422f36:	90                   	nop
  422f37:	90                   	nop
  422f38:	90                   	nop
  422f39:	90                   	nop
  422f3a:	90                   	nop
  422f3b:	90                   	nop
  422f3c:	90                   	nop
  422f3d:	90                   	nop
  422f3e:	90                   	nop
  422f3f:	90                   	nop
  422f40:	55                   	push   ebp
  422f41:	8b ec                	mov    ebp,esp
  422f43:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
  422f46:	88 41 7e             	mov    BYTE PTR [ecx+0x7e],al
  422f49:	5d                   	pop    ebp
  422f4a:	c2 04 00             	ret    0x4

; Remise à zéro indicateur personnage | [0x41fe40,0x41fe74[
; Ecrit 0 dans +0x404; getter adjoint sur +0x408/+0x40C.
  41fe40:	c6 81 04 04 00 00 00 	mov    BYTE PTR [ecx+0x404],0x0
  41fe47:	c3                   	ret
  41fe48:	90                   	nop
  41fe49:	90                   	nop
  41fe4a:	90                   	nop
  41fe4b:	90                   	nop
  41fe4c:	90                   	nop
  41fe4d:	90                   	nop
  41fe4e:	90                   	nop
  41fe4f:	90                   	nop
  41fe50:	55                   	push   ebp
  41fe51:	8b ec                	mov    ebp,esp
  41fe53:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  41fe56:	85 c0                	test   eax,eax
  41fe58:	74 11                	je     0x41fe6b
  41fe5a:	8b 91 08 04 00 00    	mov    edx,DWORD PTR [ecx+0x408]
  41fe60:	89 10                	mov    DWORD PTR [eax],edx
  41fe62:	8b 91 0c 04 00 00    	mov    edx,DWORD PTR [ecx+0x40c]
  41fe68:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  41fe6b:	8a 81 04 04 00 00    	mov    al,BYTE PTR [ecx+0x404]
  41fe71:	5d                   	pop    ebp
  41fe72:	c2 04 00             	ret    0x4

