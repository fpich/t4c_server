; PASSE 44 — PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Extraits analyses : adresses et bytes verifies statiquement sur T4C Server(1).exe
; Avertissement : preuves d octets x86, pas un test dynamique.

; Application type WDA 2, branche mana et boost : de 0x004c38b0 a 0x004c3b6d
  4c38b0:	55                   	push   ebp
  4c38b1:	8b ec                	mov    ebp,esp
  4c38b3:	6a ff                	push   0xffffffff
  4c38b5:	68 70 d5 4d 00       	push   0x4dd570
  4c38ba:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c38c0:	50                   	push   eax
  4c38c1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c38c8:	83 ec 3c             	sub    esp,0x3c
  4c38cb:	53                   	push   ebx
  4c38cc:	56                   	push   esi
  4c38cd:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c38d0:	85 f6                	test   esi,esi
  4c38d2:	57                   	push   edi
  4c38d3:	8b f9                	mov    edi,ecx
  4c38d5:	0f 84 81 02 00 00    	je     0x4c3b5c
  4c38db:	66 81 7f 0c f0 00    	cmp    WORD PTR [edi+0xc],0xf0
  4c38e1:	0f 85 a3 00 00 00    	jne    0x4c398a
  4c38e7:	8b 06                	mov    eax,DWORD PTR [esi]
  4c38e9:	8b ce                	mov    ecx,esi
  4c38eb:	ff 90 ec 00 00 00    	call   DWORD PTR [eax+0xec]
  4c38f1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c38f4:	6a 00                	push   0x0
  4c38f6:	6a 00                	push   0x0
  4c38f8:	6a 00                	push   0x0
  4c38fa:	6a 00                	push   0x0
  4c38fc:	6a 00                	push   0x0
  4c38fe:	6a 00                	push   0x0
  4c3900:	33 db                	xor    ebx,ebx
  4c3902:	66 8b d8             	mov    bx,ax
  4c3905:	6a 00                	push   0x0
  4c3907:	56                   	push   esi
  4c3908:	51                   	push   ecx
  4c3909:	8d 4f 10             	lea    ecx,[edi+0x10]
  4c390c:	81 e3 ff ff 00 00    	and    ebx,0xffff
  4c3912:	e8 39 8a f4 ff       	call   0x40c350
  4c3917:	e8 5e e4 00 00       	call   0x4d1d7a
  4c391c:	03 d8                	add    ebx,eax
  4c391e:	79 22                	jns    0x4c3942
  4c3920:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3922:	33 db                	xor    ebx,ebx
  4c3924:	6a 01                	push   0x1
  4c3926:	53                   	push   ebx
  4c3927:	8b ce                	mov    ecx,esi
  4c3929:	ff 92 f0 00 00 00    	call   DWORD PTR [edx+0xf0]
  4c392f:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3932:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3939:	5f                   	pop    edi
  4c393a:	5e                   	pop    esi
  4c393b:	5b                   	pop    ebx
  4c393c:	8b e5                	mov    esp,ebp
  4c393e:	5d                   	pop    ebp
  4c393f:	c2 20 00             	ret    0x20
  4c3942:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3944:	8b ce                	mov    ecx,esi
  4c3946:	ff 92 e0 00 00 00    	call   DWORD PTR [edx+0xe0]
  4c394c:	25 ff ff 00 00       	and    eax,0xffff
  4c3951:	3b d8                	cmp    ebx,eax
  4c3953:	7e 15                	jle    0x4c396a
  4c3955:	8b 06                	mov    eax,DWORD PTR [esi]
  4c3957:	8b ce                	mov    ecx,esi
  4c3959:	ff 90 e0 00 00 00    	call   DWORD PTR [eax+0xe0]
  4c395f:	33 db                	xor    ebx,ebx
  4c3961:	66 8b d8             	mov    bx,ax
  4c3964:	81 e3 ff ff 00 00    	and    ebx,0xffff
  4c396a:	8b 16                	mov    edx,DWORD PTR [esi]
  4c396c:	6a 01                	push   0x1
  4c396e:	53                   	push   ebx
  4c396f:	8b ce                	mov    ecx,esi
  4c3971:	ff 92 f0 00 00 00    	call   DWORD PTR [edx+0xf0]
  4c3977:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c397a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3981:	5f                   	pop    edi
  4c3982:	5e                   	pop    esi
  4c3983:	5b                   	pop    ebx
  4c3984:	8b e5                	mov    esp,ebp
  4c3986:	5d                   	pop    ebp
  4c3987:	c2 20 00             	ret    0x20
  4c398a:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  4c398d:	50                   	push   eax
  4c398e:	8b ce                	mov    ecx,esi
  4c3990:	e8 9b 8f fc ff       	call   0x48c930
  4c3995:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4c3998:	51                   	push   ecx
  4c3999:	8b ce                	mov    ecx,esi
  4c399b:	e8 50 a1 fc ff       	call   0x48daf0
  4c39a0:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c39a3:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c39a6:	6a 00                	push   0x0
  4c39a8:	6a 00                	push   0x0
  4c39aa:	6a 00                	push   0x0
  4c39ac:	6a 00                	push   0x0
  4c39ae:	6a 00                	push   0x0
  4c39b0:	6a 00                	push   0x0
  4c39b2:	6a 00                	push   0x0
  4c39b4:	56                   	push   esi
  4c39b5:	52                   	push   edx
  4c39b6:	83 c1 78             	add    ecx,0x78
  4c39b9:	e8 92 89 f4 ff       	call   0x40c350
  4c39be:	e8 b7 e3 00 00       	call   0x4d1d7a
  4c39c3:	8b d8                	mov    ebx,eax
  4c39c5:	85 db                	test   ebx,ebx
  4c39c7:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  4c39ca:	0f 84 8c 01 00 00    	je     0x4c3b5c
  4c39d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c39d3:	6a 00                	push   0x0
  4c39d5:	6a 00                	push   0x0
  4c39d7:	6a 00                	push   0x0
  4c39d9:	6a 00                	push   0x0
  4c39db:	6a 00                	push   0x0
  4c39dd:	6a 00                	push   0x0
  4c39df:	6a 00                	push   0x0
  4c39e1:	56                   	push   esi
  4c39e2:	50                   	push   eax
  4c39e3:	8d 4f 10             	lea    ecx,[edi+0x10]
  4c39e6:	e8 65 89 f4 ff       	call   0x40c350
  4c39eb:	e8 8a e3 00 00       	call   0x4d1d7a
  4c39f0:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c39f3:	33 c9                	xor    ecx,ecx
  4c39f5:	66 8b 4f 0c          	mov    cx,WORD PTR [edi+0xc]
  4c39f9:	50                   	push   eax
  4c39fa:	51                   	push   ecx
  4c39fb:	52                   	push   edx
  4c39fc:	8b ce                	mov    ecx,esi
  4c39fe:	e8 8d 9d fc ff       	call   0x48d790
  4c3a03:	66 83 7f 0c 0b       	cmp    WORD PTR [edi+0xc],0xb
  4c3a08:	75 66                	jne    0x4c3a70
  4c3a0a:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4c3a0d:	e8 de 23 fc ff       	call   0x485df0
  4c3a12:	6a 45                	push   0x45
  4c3a14:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4c3a17:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c3a1e:	e8 2d 27 fc ff       	call   0x486150
  4c3a23:	8b 06                	mov    eax,DWORD PTR [esi]
  4c3a25:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4c3a28:	51                   	push   ecx
  4c3a29:	8b ce                	mov    ecx,esi
  4c3a2b:	ff 90 ac 01 00 00    	call   DWORD PTR [eax+0x1ac]
  4c3a31:	8b 06                	mov    eax,DWORD PTR [esi]
  4c3a33:	6a 00                	push   0x0
  4c3a35:	8d 55 d0             	lea    edx,[ebp-0x30]
  4c3a38:	52                   	push   edx
  4c3a39:	6a 14                	push   0x14
  4c3a3b:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4c3a3e:	51                   	push   ecx
  4c3a3f:	8b ce                	mov    ecx,esi
  4c3a41:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  4c3a44:	8b 08                	mov    ecx,DWORD PTR [eax]
  4c3a46:	83 ec 0c             	sub    esp,0xc
  4c3a49:	8b d4                	mov    edx,esp
  4c3a4b:	89 0a                	mov    DWORD PTR [edx],ecx
  4c3a4d:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4c3a50:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4c3a53:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  4c3a56:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4c3a59:	e8 92 c0 f4 ff       	call   0x40faf0
  4c3a5e:	83 c4 18             	add    esp,0x18
  4c3a61:	8d 4d d0             	lea    ecx,[ebp-0x30]
  4c3a64:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3a6b:	e8 10 24 fc ff       	call   0x485e80
  4c3a70:	66 8b 47 0c          	mov    ax,WORD PTR [edi+0xc]
  4c3a74:	66 3d 19 00          	cmp    ax,0x19
  4c3a78:	74 06                	je     0x4c3a80
  4c3a7a:	66 3d 1a 00          	cmp    ax,0x1a
  4c3a7e:	75 44                	jne    0x4c3ac4
  4c3a80:	8b ce                	mov    ecx,esi
  4c3a82:	e8 e9 7b fc ff       	call   0x48b670
  4c3a87:	3c 01                	cmp    al,0x1
  4c3a89:	75 39                	jne    0x4c3ac4
  4c3a8b:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3a8e:	e8 5d 23 fc ff       	call   0x485df0
  4c3a93:	6a 00                	push   0x0
  4c3a95:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3a98:	51                   	push   ecx
  4c3a99:	8b ce                	mov    ecx,esi
  4c3a9b:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  4c3aa2:	e8 f9 ba f5 ff       	call   0x41f5a0
  4c3aa7:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3aa9:	8d 45 b8             	lea    eax,[ebp-0x48]
  4c3aac:	50                   	push   eax
  4c3aad:	8b ce                	mov    ecx,esi
  4c3aaf:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  4c3ab5:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3ab8:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3abf:	e8 bc 23 fc ff       	call   0x485e80
  4c3ac4:	6a 08                	push   0x8
  4c3ac6:	e8 25 e5 f7 ff       	call   0x441ff0
  4c3acb:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4c3ace:	89 08                	mov    DWORD PTR [eax],ecx
  4c3ad0:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  4c3ad3:	33 c9                	xor    ecx,ecx
  4c3ad5:	66 8b 0a             	mov    cx,WORD PTR [edx]
  4c3ad8:	83 c4 04             	add    esp,0x4
  4c3adb:	68 3c 01 51 00       	push   0x51013c
  4c3ae0:	6a 04                	push   0x4
  4c3ae2:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c3ae5:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c3ae8:	e8 53 e2 fa ff       	call   0x471d40
  4c3aed:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  4c3af0:	33 d2                	xor    edx,edx
  4c3af2:	66 8b 10             	mov    dx,WORD PTR [eax]
  4c3af5:	50                   	push   eax
  4c3af6:	53                   	push   ebx
  4c3af7:	53                   	push   ebx
  4c3af8:	52                   	push   edx
  4c3af9:	56                   	push   esi
  4c3afa:	e8 21 cd f9 ff       	call   0x460820
  4c3aff:	6a 20                	push   0x20
  4c3b01:	e8 ea e4 f7 ff       	call   0x441ff0
  4c3b06:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3b09:	8b d8                	mov    ebx,eax
  4c3b0b:	c6 03 05             	mov    BYTE PTR [ebx],0x5
  4c3b0e:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  4c3b11:	83 c4 20             	add    esp,0x20
  4c3b14:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  4c3b17:	c7 43 08 70 3b 4c 00 	mov    DWORD PTR [ebx+0x8],0x4c3b70
  4c3b1e:	89 4b 0c             	mov    DWORD PTR [ebx+0xc],ecx
  4c3b21:	e8 6a e7 fa ff       	call   0x472290
  4c3b26:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c3b29:	8b c8                	mov    ecx,eax
  4c3b2b:	03 d2                	add    edx,edx
  4c3b2d:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c3b32:	f7 e2                	mul    edx
  4c3b34:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c3b37:	c1 ea 05             	shr    edx,0x5
  4c3b3a:	03 ca                	add    ecx,edx
  4c3b3c:	89 4b 10             	mov    DWORD PTR [ebx+0x10],ecx
  4c3b3f:	89 43 14             	mov    DWORD PTR [ebx+0x14],eax
  4c3b42:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c3b45:	33 d2                	xor    edx,edx
  4c3b47:	66 8b 11             	mov    dx,WORD PTR [ecx]
  4c3b4a:	53                   	push   ebx
  4c3b4b:	8b ce                	mov    ecx,esi
  4c3b4d:	c7 43 1c 00 00 00 00 	mov    DWORD PTR [ebx+0x1c],0x0
  4c3b54:	89 53 18             	mov    DWORD PTR [ebx+0x18],edx
  4c3b57:	e8 b4 8c fc ff       	call   0x48c810
  4c3b5c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3b5f:	5f                   	pop    edi
  4c3b60:	5e                   	pop    esi
  4c3b61:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3b68:	5b                   	pop    ebx
  4c3b69:	8b e5                	mov    esp,ebp
  4c3b6b:	5d                   	pop    ebp
  4c3b6c:	c2                   	.byte 0xc2
  4c3b6d:	20                   	.byte 0x20

; Unit::AddBoost(identifiant, statistique, nombre) : de 0x0048d790 a 0x0048d91f
  48d790:	55                   	push   ebp
  48d791:	8b ec                	mov    ebp,esp
  48d793:	6a ff                	push   0xffffffff
  48d795:	68 a3 a7 4d 00       	push   0x4da7a3
  48d79a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48d7a0:	50                   	push   eax
  48d7a1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48d7a8:	83 ec 14             	sub    esp,0x14
  48d7ab:	53                   	push   ebx
  48d7ac:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  48d7af:	85 db                	test   ebx,ebx
  48d7b1:	56                   	push   esi
  48d7b2:	8b f1                	mov    esi,ecx
  48d7b4:	57                   	push   edi
  48d7b5:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  48d7b8:	0f 84 5b 01 00 00    	je     0x48d919
  48d7be:	6a 78                	push   0x78
  48d7c0:	e8 2b 48 fb ff       	call   0x441ff0
  48d7c5:	8b f8                	mov    edi,eax
  48d7c7:	83 c4 04             	add    esp,0x4
  48d7ca:	89 7d 10             	mov    DWORD PTR [ebp+0x10],edi
  48d7cd:	85 ff                	test   edi,edi
  48d7cf:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48d7d6:	74 0a                	je     0x48d7e2
  48d7d8:	8d 4f 08             	lea    ecx,[edi+0x8]
  48d7db:	e8 e0 be f7 ff       	call   0x4096c0
  48d7e0:	eb 02                	jmp    0x48d7e4
  48d7e2:	33 ff                	xor    edi,edi
  48d7e4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48d7e7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  48d7ea:	6a 0a                	push   0xa
  48d7ec:	8d 4d e0             	lea    ecx,[ebp-0x20]
  48d7ef:	51                   	push   ecx
  48d7f0:	53                   	push   ebx
  48d7f1:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48d7f8:	89 07                	mov    DWORD PTR [edi],eax
  48d7fa:	66 89 77 04          	mov    WORD PTR [edi+0x4],si
  48d7fe:	ff 15 a4 e3 4d 00    	call   DWORD PTR ds:0x4de3a4
  48d804:	83 c4 08             	add    esp,0x8
  48d807:	8b cc                	mov    ecx,esp
  48d809:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  48d80c:	50                   	push   eax
  48d80d:	e8 52 42 04 00       	call   0x4d1a64
  48d812:	8d 5f 08             	lea    ebx,[edi+0x8]
  48d815:	8b cb                	mov    ecx,ebx
  48d817:	e8 e4 c0 f7 ff       	call   0x409900
  48d81c:	85 c0                	test   eax,eax
  48d81e:	0f 84 ad 00 00 00    	je     0x48d8d1
  48d824:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
  48d827:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48d82d:	8b 11                	mov    edx,DWORD PTR [ecx]
  48d82f:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48d832:	8b b6 f8 00 00 00    	mov    esi,DWORD PTR [esi+0xf8]
  48d838:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  48d83b:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  48d83e:	33 db                	xor    ebx,ebx
  48d840:	42                   	inc    edx
  48d841:	3b c3                	cmp    eax,ebx
  48d843:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48d846:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48d849:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  48d84d:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  48d850:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  48d853:	6a 0c                	push   0xc
  48d855:	75 28                	jne    0x48d87f
  48d857:	e8 94 47 fb ff       	call   0x441ff0
  48d85c:	83 c4 04             	add    esp,0x4
  48d85f:	3b c3                	cmp    eax,ebx
  48d861:	74 07                	je     0x48d86a
  48d863:	89 18                	mov    DWORD PTR [eax],ebx
  48d865:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48d868:	eb 02                	jmp    0x48d86c
  48d86a:	33 c0                	xor    eax,eax
  48d86c:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48d86f:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48d872:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48d875:	89 18                	mov    DWORD PTR [eax],ebx
  48d877:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48d87a:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48d87d:	eb 2b                	jmp    0x48d8aa
  48d87f:	e8 6c 47 fb ff       	call   0x441ff0
  48d884:	83 c4 04             	add    esp,0x4
  48d887:	3b c3                	cmp    eax,ebx
  48d889:	74 07                	je     0x48d892
  48d88b:	89 18                	mov    DWORD PTR [eax],ebx
  48d88d:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48d890:	eb 02                	jmp    0x48d894
  48d892:	33 c0                	xor    eax,eax
  48d894:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48d897:	89 01                	mov    DWORD PTR [ecx],eax
  48d899:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  48d89c:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48d89f:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48d8a2:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  48d8a5:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48d8a8:	89 18                	mov    DWORD PTR [eax],ebx
  48d8aa:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48d8ad:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  48d8b0:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  48d8b3:	8b 8a f8 00 00 00    	mov    ecx,DWORD PTR [edx+0xf8]
  48d8b9:	8b 01                	mov    eax,DWORD PTR [ecx]
  48d8bb:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48d8be:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48d8c1:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48d8c8:	5f                   	pop    edi
  48d8c9:	5e                   	pop    esi
  48d8ca:	5b                   	pop    ebx
  48d8cb:	8b e5                	mov    esp,ebp
  48d8cd:	5d                   	pop    ebp
  48d8ce:	c2 0c 00             	ret    0xc
  48d8d1:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  48d8d4:	8d 4d e0             	lea    ecx,[ebp-0x20]
  48d8d7:	51                   	push   ecx
  48d8d8:	81 e6 ff ff 00 00    	and    esi,0xffff
  48d8de:	56                   	push   esi
  48d8df:	52                   	push   edx
  48d8e0:	68 b8 de 50 00       	push   0x50deb8
  48d8e5:	68 00 02 00 00       	push   0x200
  48d8ea:	e8 51 44 fe ff       	call   0x471d40
  48d8ef:	83 c4 14             	add    esp,0x14
  48d8f2:	85 ff                	test   edi,edi
  48d8f4:	74 6d                	je     0x48d963
  48d8f6:	8b cb                	mov    ecx,ebx
  48d8f8:	e8 63 be f7 ff       	call   0x409760
  48d8fd:	57                   	push   edi
  48d8fe:	e8 5d 47 fb ff       	call   0x442060
  48d903:	83 c4 04             	add    esp,0x4
  48d906:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48d909:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48d910:	5f                   	pop    edi
  48d911:	5e                   	pop    esi
  48d912:	5b                   	pop    ebx
  48d913:	8b e5                	mov    esp,ebp
  48d915:	5d                   	pop    ebp
  48d916:	c2 0c 00             	ret    0xc
  48d919:	8b 3e                	mov    edi,DWORD PTR [esi]
  48d91b:	e8 40 01 fb ff       	call   0x43da60
