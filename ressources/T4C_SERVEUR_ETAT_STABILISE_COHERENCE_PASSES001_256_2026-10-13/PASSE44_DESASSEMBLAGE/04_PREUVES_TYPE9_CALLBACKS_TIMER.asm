; PASSE 44 — PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Extraits analyses : adresses et bytes verifies statiquement sur T4C Server(1).exe
; Avertissement : preuves d octets x86, pas un test dynamique.

; Fabrique type 9 et enregistrement 0x4c7990 : de 0x004c7910 a 0x004c7983
  4c7910:	55                   	push   ebp
  4c7911:	8b ec                	mov    ebp,esp
  4c7913:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c7919:	6a ff                	push   0xffffffff
  4c791b:	68 1b db 4d 00       	push   0x4ddb1b
  4c7920:	50                   	push   eax
  4c7921:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c7928:	56                   	push   esi
  4c7929:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c792c:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c7932:	68 90 79 4c 00       	push   0x4c7990
  4c7937:	50                   	push   eax
  4c7938:	e8 d3 91 fc ff       	call   0x490b10
  4c793d:	68 f8 00 00 00       	push   0xf8
  4c7942:	e8 a9 a6 f7 ff       	call   0x441ff0
  4c7947:	83 c4 0c             	add    esp,0xc
  4c794a:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c794d:	85 c0                	test   eax,eax
  4c794f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c7956:	74 09                	je     0x4c7961
  4c7958:	8b c8                	mov    ecx,eax
  4c795a:	e8 11 fb ff ff       	call   0x4c7470
  4c795f:	eb 02                	jmp    0x4c7963
  4c7961:	33 c0                	xor    eax,eax
  4c7963:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c7966:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c796c:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  4c796f:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c7975:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c7978:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c797f:	5e                   	pop    esi
  4c7980:	8b e5                	mov    esp,ebp
  4c7982:	5d                   	pop    ebp
  4c7983:	c3                   	ret

; Callback 0x4c7990 complet : échéances, sauvegarde, restauration, suppression : de 0x004c7990 a 0x004c7c2f
  4c7990:	55                   	push   ebp
  4c7991:	8b ec                	mov    ebp,esp
  4c7993:	83 ec 10             	sub    esp,0x10
  4c7996:	53                   	push   ebx
  4c7997:	56                   	push   esi
  4c7998:	8b 75 1c             	mov    esi,DWORD PTR [ebp+0x1c]
  4c799b:	85 f6                	test   esi,esi
  4c799d:	57                   	push   edi
  4c799e:	0f 84 8b 02 00 00    	je     0x4c7c2f
  4c79a4:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  4c79a8:	66 3d 05 00          	cmp    ax,0x5
  4c79ac:	0f 85 e1 00 00 00    	jne    0x4c7a93
  4c79b2:	66 39 06             	cmp    WORD PTR [esi],ax
  4c79b5:	0f 85 be 00 00 00    	jne    0x4c7a79
  4c79bb:	6a 14                	push   0x14
  4c79bd:	e8 2e a6 f7 ff       	call   0x441ff0
  4c79c2:	8b d8                	mov    ebx,eax
  4c79c4:	b9 05 00 00 00       	mov    ecx,0x5
  4c79c9:	8b fb                	mov    edi,ebx
  4c79cb:	83 c4 04             	add    esp,0x4
  4c79ce:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  4c79d0:	e8 bb a8 fa ff       	call   0x472290
  4c79d5:	39 43 10             	cmp    DWORD PTR [ebx+0x10],eax
  4c79d8:	76 5e                	jbe    0x4c7a38
  4c79da:	6a 20                	push   0x20
  4c79dc:	e8 0f a6 f7 ff       	call   0x441ff0
  4c79e1:	8b f0                	mov    esi,eax
  4c79e3:	8a 03                	mov    al,BYTE PTR [ebx]
  4c79e5:	88 06                	mov    BYTE PTR [esi],al
  4c79e7:	8b 4b 0c             	mov    ecx,DWORD PTR [ebx+0xc]
  4c79ea:	83 c4 04             	add    esp,0x4
  4c79ed:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  4c79f0:	c7 46 08 90 79 4c 00 	mov    DWORD PTR [esi+0x8],0x4c7990
  4c79f7:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  4c79fa:	e8 91 a8 fa ff       	call   0x472290
  4c79ff:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  4c7a02:	8b c8                	mov    ecx,eax
  4c7a04:	d1 e2                	shl    edx,1
  4c7a06:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c7a0b:	f7 e2                	mul    edx
  4c7a0d:	c1 ea 05             	shr    edx,0x5
  4c7a10:	03 ca                	add    ecx,edx
  4c7a12:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  4c7a15:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  4c7a18:	33 c9                	xor    ecx,ecx
  4c7a1a:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  4c7a1d:	66 8b 4b 04          	mov    cx,WORD PTR [ebx+0x4]
  4c7a21:	c7 46 1c 00 00 00 00 	mov    DWORD PTR [esi+0x1c],0x0
  4c7a28:	56                   	push   esi
  4c7a29:	89 4e 18             	mov    DWORD PTR [esi+0x18],ecx
  4c7a2c:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c7a2f:	8b ce                	mov    ecx,esi
  4c7a31:	e8 da 4d fc ff       	call   0x48c810
  4c7a36:	eb 13                	jmp    0x4c7a4b
  4c7a38:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c7a3b:	33 d2                	xor    edx,edx
  4c7a3d:	66 8b 53 04          	mov    dx,WORD PTR [ebx+0x4]
  4c7a41:	52                   	push   edx
  4c7a42:	56                   	push   esi
  4c7a43:	e8 38 8f f9 ff       	call   0x460980
  4c7a48:	83 c4 08             	add    esp,0x8
  4c7a4b:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  4c7a4e:	83 ec 0c             	sub    esp,0xc
  4c7a51:	8b cc                	mov    ecx,esp
  4c7a53:	33 c0                	xor    eax,eax
  4c7a55:	89 01                	mov    DWORD PTR [ecx],eax
  4c7a57:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  4c7a5a:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4c7a5d:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  4c7a60:	33 c9                	xor    ecx,ecx
  4c7a62:	66 8b 4b 02          	mov    cx,WORD PTR [ebx+0x2]
  4c7a66:	52                   	push   edx
  4c7a67:	50                   	push   eax
  4c7a68:	56                   	push   esi
  4c7a69:	51                   	push   ecx
  4c7a6a:	e8 f1 9a f9 ff       	call   0x461560
  4c7a6f:	83 c4 1c             	add    esp,0x1c
  4c7a72:	5f                   	pop    edi
  4c7a73:	5e                   	pop    esi
  4c7a74:	5b                   	pop    ebx
  4c7a75:	8b e5                	mov    esp,ebp
  4c7a77:	5d                   	pop    ebp
  4c7a78:	c3                   	ret
  4c7a79:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c7a7c:	33 d2                	xor    edx,edx
  4c7a7e:	66 8b 56 04          	mov    dx,WORD PTR [esi+0x4]
  4c7a82:	52                   	push   edx
  4c7a83:	50                   	push   eax
  4c7a84:	e8 f7 8e f9 ff       	call   0x460980
  4c7a89:	83 c4 08             	add    esp,0x8
  4c7a8c:	5f                   	pop    edi
  4c7a8d:	5e                   	pop    esi
  4c7a8e:	5b                   	pop    ebx
  4c7a8f:	8b e5                	mov    esp,ebp
  4c7a91:	5d                   	pop    ebp
  4c7a92:	c3                   	ret
  4c7a93:	66 3d 1b 00          	cmp    ax,0x1b
  4c7a97:	75 25                	jne    0x4c7abe
  4c7a99:	33 c9                	xor    ecx,ecx
  4c7a9b:	66 8b 4e 04          	mov    cx,WORD PTR [esi+0x4]
  4c7a9f:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c7aa2:	51                   	push   ecx
  4c7aa3:	56                   	push   esi
  4c7aa4:	e8 d7 8e f9 ff       	call   0x460980
  4c7aa9:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4c7aac:	83 c4 08             	add    esp,0x8
  4c7aaf:	52                   	push   edx
  4c7ab0:	8b ce                	mov    ecx,esi
  4c7ab2:	e8 79 4e fc ff       	call   0x48c930
  4c7ab7:	5f                   	pop    edi
  4c7ab8:	5e                   	pop    esi
  4c7ab9:	5b                   	pop    ebx
  4c7aba:	8b e5                	mov    esp,ebp
  4c7abc:	5d                   	pop    ebp
  4c7abd:	c3                   	ret
  4c7abe:	66 3d 17 00          	cmp    ax,0x17
  4c7ac2:	75 37                	jne    0x4c7afb
  4c7ac4:	8b 7d 20             	mov    edi,DWORD PTR [ebp+0x20]
  4c7ac7:	6a 14                	push   0x14
  4c7ac9:	c6 07 14             	mov    BYTE PTR [edi],0x14
  4c7acc:	e8 2f 6a 00 00       	call   0x4ce500
  4c7ad1:	83 c4 04             	add    esp,0x4
  4c7ad4:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  4c7ad7:	e8 b4 a7 fa ff       	call   0x472290
  4c7adc:	29 46 10             	sub    DWORD PTR [esi+0x10],eax
  4c7adf:	8b 7f 04             	mov    edi,DWORD PTR [edi+0x4]
  4c7ae2:	b9 05 00 00 00       	mov    ecx,0x5
  4c7ae7:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  4c7ae9:	e8 a2 a7 fa ff       	call   0x472290
  4c7aee:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c7af1:	01 41 10             	add    DWORD PTR [ecx+0x10],eax
  4c7af4:	5f                   	pop    edi
  4c7af5:	5e                   	pop    esi
  4c7af6:	5b                   	pop    ebx
  4c7af7:	8b e5                	mov    esp,ebp
  4c7af9:	5d                   	pop    ebp
  4c7afa:	c3                   	ret
  4c7afb:	66 3d 18 00          	cmp    ax,0x18
  4c7aff:	0f 85 bb 00 00 00    	jne    0x4c7bc0
  4c7b05:	6a 14                	push   0x14
  4c7b07:	e8 e4 a4 f7 ff       	call   0x441ff0
  4c7b0c:	8b d8                	mov    ebx,eax
  4c7b0e:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4c7b11:	8a 08                	mov    cl,BYTE PTR [eax]
  4c7b13:	83 c4 04             	add    esp,0x4
  4c7b16:	80 f9 10             	cmp    cl,0x10
  4c7b19:	75 2d                	jne    0x4c7b48
  4c7b1b:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  4c7b1e:	8b 06                	mov    eax,DWORD PTR [esi]
  4c7b20:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  4c7b23:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  4c7b26:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  4c7b29:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4c7b2c:	66 89 03             	mov    WORD PTR [ebx],ax
  4c7b2f:	66 8b 45 f2          	mov    ax,WORD PTR [ebp-0xe]
  4c7b33:	89 53 0c             	mov    DWORD PTR [ebx+0xc],edx
  4c7b36:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
  4c7b39:	89 73 10             	mov    DWORD PTR [ebx+0x10],esi
  4c7b3c:	66 89 43 02          	mov    WORD PTR [ebx+0x2],ax
  4c7b40:	66 c7 43 04 00 00    	mov    WORD PTR [ebx+0x4],0x0
  4c7b46:	eb 63                	jmp    0x4c7bab
  4c7b48:	80 f9 14             	cmp    cl,0x14
  4c7b4b:	75 48                	jne    0x4c7b95
  4c7b4d:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  4c7b50:	b9 05 00 00 00       	mov    ecx,0x5
  4c7b55:	8b fb                	mov    edi,ebx
  4c7b57:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  4c7b59:	33 c9                	xor    ecx,ecx
  4c7b5b:	66 8b 4b 04          	mov    cx,WORD PTR [ebx+0x4]
  4c7b5f:	51                   	push   ecx
  4c7b60:	e8 cb a6 f9 ff       	call   0x462230
  4c7b65:	83 c4 04             	add    esp,0x4
  4c7b68:	85 c0                	test   eax,eax
  4c7b6a:	74 3f                	je     0x4c7bab
  4c7b6c:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  4c7b6f:	50                   	push   eax
  4c7b70:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  4c7b73:	50                   	push   eax
  4c7b74:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  4c7b77:	33 d2                	xor    edx,edx
  4c7b79:	66 8b 53 04          	mov    dx,WORD PTR [ebx+0x4]
  4c7b7d:	8d 04 80             	lea    eax,[eax+eax*4]
  4c7b80:	8d 0c 80             	lea    ecx,[eax+eax*4]
  4c7b83:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c7b86:	d1 e1                	shl    ecx,1
  4c7b88:	51                   	push   ecx
  4c7b89:	52                   	push   edx
  4c7b8a:	50                   	push   eax
  4c7b8b:	e8 90 8c f9 ff       	call   0x460820
  4c7b90:	83 c4 14             	add    esp,0x14
  4c7b93:	eb 16                	jmp    0x4c7bab
  4c7b95:	81 e1 ff 00 00 00    	and    ecx,0xff
  4c7b9b:	51                   	push   ecx
  4c7b9c:	68 84 02 51 00       	push   0x510284
  4c7ba1:	6a 04                	push   0x4
  4c7ba3:	e8 98 a1 fa ff       	call   0x471d40
  4c7ba8:	83 c4 0c             	add    esp,0xc
  4c7bab:	e8 e0 a6 fa ff       	call   0x472290
  4c7bb0:	01 43 10             	add    DWORD PTR [ebx+0x10],eax
  4c7bb3:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c7bb6:	89 59 0c             	mov    DWORD PTR [ecx+0xc],ebx
  4c7bb9:	5f                   	pop    edi
  4c7bba:	5e                   	pop    esi
  4c7bbb:	5b                   	pop    ebx
  4c7bbc:	8b e5                	mov    esp,ebp
  4c7bbe:	5d                   	pop    ebp
  4c7bbf:	c3                   	ret
  4c7bc0:	66 3d 09 00          	cmp    ax,0x9
  4c7bc4:	75 10                	jne    0x4c7bd6
  4c7bc6:	56                   	push   esi
  4c7bc7:	e8 94 a4 f7 ff       	call   0x442060
  4c7bcc:	83 c4 04             	add    esp,0x4
  4c7bcf:	5f                   	pop    edi
  4c7bd0:	5e                   	pop    esi
  4c7bd1:	5b                   	pop    ebx
  4c7bd2:	8b e5                	mov    esp,ebp
  4c7bd4:	5d                   	pop    ebp
  4c7bd5:	c3                   	ret
  4c7bd6:	66 3d 0d 00          	cmp    ax,0xd
  4c7bda:	75 25                	jne    0x4c7c01
  4c7bdc:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4c7bdf:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  4c7be2:	52                   	push   edx
  4c7be3:	8b cf                	mov    ecx,edi
  4c7be5:	e8 46 4d fc ff       	call   0x48c930
  4c7bea:	33 c0                	xor    eax,eax
  4c7bec:	66 8b 46 04          	mov    ax,WORD PTR [esi+0x4]
  4c7bf0:	50                   	push   eax
  4c7bf1:	57                   	push   edi
  4c7bf2:	e8 89 8d f9 ff       	call   0x460980
  4c7bf7:	83 c4 08             	add    esp,0x8
  4c7bfa:	5f                   	pop    edi
  4c7bfb:	5e                   	pop    esi
  4c7bfc:	5b                   	pop    ebx
  4c7bfd:	8b e5                	mov    esp,ebp
  4c7bff:	5d                   	pop    ebp
  4c7c00:	c3                   	ret
  4c7c01:	83 ec 0c             	sub    esp,0xc
  4c7c04:	8b fc                	mov    edi,esp
  4c7c06:	33 c0                	xor    eax,eax
  4c7c08:	33 c9                	xor    ecx,ecx
  4c7c0a:	89 07                	mov    DWORD PTR [edi],eax
  4c7c0c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c7c0f:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  4c7c12:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4c7c15:	51                   	push   ecx
  4c7c16:	33 d2                	xor    edx,edx
  4c7c18:	33 c9                	xor    ecx,ecx
  4c7c1a:	66 8b 4e 02          	mov    cx,WORD PTR [esi+0x2]
  4c7c1e:	89 57 08             	mov    DWORD PTR [edi+0x8],edx
  4c7c21:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4c7c24:	52                   	push   edx
  4c7c25:	50                   	push   eax
  4c7c26:	51                   	push   ecx
  4c7c27:	e8 34 99 f9 ff       	call   0x461560
  4c7c2c:	83 c4 1c             	add    esp,0x1c
  4c7c2f:	5f                   	pop    edi
