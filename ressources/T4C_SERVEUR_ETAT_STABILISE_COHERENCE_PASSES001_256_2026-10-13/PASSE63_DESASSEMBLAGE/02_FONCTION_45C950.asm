
/mnt/data/T4C Server(2).exe:     file format pei-i386


Disassembly of section .text:

0045c950 <.text+0x5b950>:
  45c950:	55                   	push   ebp
  45c951:	8b ec                	mov    ebp,esp
  45c953:	6a ff                	push   0xffffffff
  45c955:	68 eb 77 4d 00       	push   0x4d77eb
  45c95a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  45c960:	50                   	push   eax
  45c961:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  45c968:	81 ec b8 00 00 00    	sub    esp,0xb8
  45c96e:	53                   	push   ebx
  45c96f:	56                   	push   esi
  45c970:	57                   	push   edi
  45c971:	68 40 1a 4d 00       	push   0x4d1a40
  45c976:	68 5e 1a 4d 00       	push   0x4d1a5e
  45c97b:	6a 05                	push   0x5
  45c97d:	6a 04                	push   0x4
  45c97f:	8d 45 88             	lea    eax,[ebp-0x78]
  45c982:	50                   	push   eax
  45c983:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  45c986:	e8 01 54 07 00       	call   0x4d1d8c
  45c98b:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  45c98e:	33 db                	xor    ebx,ebx
  45c990:	8b cf                	mov    ecx,edi
  45c992:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  45c995:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
  45c998:	e8 d3 ec 02 00       	call   0x48b670
  45c99d:	3c 01                	cmp    al,0x1
  45c99f:	75 07                	jne    0x45c9a8
  45c9a1:	8b cf                	mov    ecx,edi
  45c9a3:	e8 48 e1 fb ff       	call   0x41aaf0
  45c9a8:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  45c9ab:	51                   	push   ecx
  45c9ac:	8d 4d f0             	lea    ecx,[ebp-0x10]
  45c9af:	e8 b0 50 07 00       	call   0x4d1a64
  45c9b4:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  45c9b7:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  45c9bb:	e8 9e 50 07 00       	call   0x4d1a5e
  45c9c0:	8d 55 d4             	lea    edx,[ebp-0x2c]
  45c9c3:	52                   	push   edx
  45c9c4:	8d 45 f0             	lea    eax,[ebp-0x10]
  45c9c7:	50                   	push   eax
  45c9c8:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  45c9cc:	e8 0f c0 fe ff       	call   0x4489e0
  45c9d1:	83 c4 08             	add    esp,0x8
  45c9d4:	8d 4d d0             	lea    ecx,[ebp-0x30]
  45c9d7:	e8 82 50 07 00       	call   0x4d1a5e
  45c9dc:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  45c9df:	8b 16                	mov    edx,DWORD PTR [esi]
  45c9e1:	8b ce                	mov    ecx,esi
  45c9e3:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45c9e7:	ff 52 7c             	call   DWORD PTR [edx+0x7c]
  45c9ea:	3a c3                	cmp    al,bl
  45c9ec:	74 04                	je     0x45c9f2
  45c9ee:	3c 03                	cmp    al,0x3
  45c9f0:	75 34                	jne    0x45ca26
  45c9f2:	89 1d 34 4d 51 00    	mov    DWORD PTR ds:0x514d34,ebx
  45c9f8:	8b 06                	mov    eax,DWORD PTR [esi]
  45c9fa:	6a 02                	push   0x2
  45c9fc:	8b ce                	mov    ecx,esi
  45c9fe:	ff 90 80 00 00 00    	call   DWORD PTR [eax+0x80]
  45ca04:	8b 16                	mov    edx,DWORD PTR [esi]
  45ca06:	8b ce                	mov    ecx,esi
  45ca08:	ff 92 a4 01 00 00    	call   DWORD PTR [edx+0x1a4]
  45ca0e:	85 c0                	test   eax,eax
  45ca10:	75 0b                	jne    0x45ca1d
  45ca12:	8b 06                	mov    eax,DWORD PTR [esi]
  45ca14:	57                   	push   edi
  45ca15:	8b ce                	mov    ecx,esi
  45ca17:	ff 90 ac 00 00 00    	call   DWORD PTR [eax+0xac]
  45ca1d:	c7 45 a0 01 00 00 00 	mov    DWORD PTR [ebp-0x60],0x1
  45ca24:	eb 08                	jmp    0x45ca2e
  45ca26:	3c 02                	cmp    al,0x2
  45ca28:	0f 85 7c 08 00 00    	jne    0x45d2aa
  45ca2e:	8b 16                	mov    edx,DWORD PTR [esi]
  45ca30:	8b ce                	mov    ecx,esi
  45ca32:	ff 92 a8 00 00 00    	call   DWORD PTR [edx+0xa8]
  45ca38:	3b c7                	cmp    eax,edi
  45ca3a:	0f 84 af 00 00 00    	je     0x45caef
  45ca40:	8b 06                	mov    eax,DWORD PTR [esi]
  45ca42:	8b ce                	mov    ecx,esi
  45ca44:	ff 90 a4 01 00 00    	call   DWORD PTR [eax+0x1a4]
  45ca4a:	85 c0                	test   eax,eax
  45ca4c:	0f 85 9d 00 00 00    	jne    0x45caef
  45ca52:	57                   	push   edi
  45ca53:	53                   	push   ebx
  45ca54:	e8 67 9d fe ff       	call   0x4467c0
  45ca59:	83 c4 08             	add    esp,0x8
  45ca5c:	3b fb                	cmp    edi,ebx
  45ca5e:	75 07                	jne    0x45ca67
  45ca60:	e8 fb 0f fe ff       	call   0x43da60
  45ca65:	eb 0a                	jmp    0x45ca71
  45ca67:	8b 17                	mov    edx,DWORD PTR [edi]
  45ca69:	8b cf                	mov    ecx,edi
  45ca6b:	ff 92 94 01 00 00    	call   DWORD PTR [edx+0x194]
  45ca71:	68 a4 6b 50 00       	push   0x506ba4
  45ca76:	50                   	push   eax
  45ca77:	68 7a 1c 00 00       	push   0x1c7a
  45ca7c:	e8 6f 0f fe ff       	call   0x43d9f0
  45ca81:	83 c4 0c             	add    esp,0xc
  45ca84:	50                   	push   eax
  45ca85:	8d 4d 10             	lea    ecx,[ebp+0x10]
  45ca88:	e8 d7 4f 07 00       	call   0x4d1a64
  45ca8d:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  45ca90:	8b 89 44 01 00 00    	mov    ecx,DWORD PTR [ecx+0x144]
  45ca96:	8b 17                	mov    edx,DWORD PTR [edi]
  45ca98:	51                   	push   ecx
  45ca99:	56                   	push   esi
  45ca9a:	50                   	push   eax
  45ca9b:	8b cf                	mov    ecx,edi
  45ca9d:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  45caa1:	ff 92 a8 01 00 00    	call   DWORD PTR [edx+0x1a8]
  45caa7:	8d 4d 10             	lea    ecx,[ebp+0x10]
  45caaa:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45caae:	e8 8d 4f 07 00       	call   0x4d1a40
  45cab3:	8d 4d d0             	lea    ecx,[ebp-0x30]
  45cab6:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  45caba:	e8 81 4f 07 00       	call   0x4d1a40
  45cabf:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  45cac2:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  45cac6:	e8 75 4f 07 00       	call   0x4d1a40
  45cacb:	8d 4d f0             	lea    ecx,[ebp-0x10]
  45cace:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  45cad1:	e8 6a 4f 07 00       	call   0x4d1a40
  45cad6:	68 40 1a 4d 00       	push   0x4d1a40
  45cadb:	6a 05                	push   0x5
  45cadd:	6a 04                	push   0x4
  45cadf:	8d 55 88             	lea    edx,[ebp-0x78]
  45cae2:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  45cae9:	52                   	push   edx
  45caea:	e9 f2 07 00 00       	jmp    0x45d2e1
  45caef:	8b 3e                	mov    edi,DWORD PTR [esi]
  45caf1:	e8 9a 57 01 00       	call   0x472290
  45caf6:	50                   	push   eax
  45caf7:	8b ce                	mov    ecx,esi
  45caf9:	ff 97 c0 00 00 00    	call   DWORD PTR [edi+0xc0]
  45caff:	8d 45 b7             	lea    eax,[ebp-0x49]
  45cb02:	50                   	push   eax
  45cb03:	8d 4d af             	lea    ecx,[ebp-0x51]
  45cb06:	51                   	push   ecx
  45cb07:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45cb0a:	89 5d b8             	mov    DWORD PTR [ebp-0x48],ebx
  45cb0d:	e8 8e 1d 00 00       	call   0x45e8a0
  45cb12:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  45cb15:	8b 8a 90 01 00 00    	mov    ecx,DWORD PTR [edx+0x190]
  45cb1b:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45cb1f:	e8 2c d8 05 00       	call   0x4ba350
  45cb24:	8b f0                	mov    esi,eax
  45cb26:	8a 45 13             	mov    al,BYTE PTR [ebp+0x13]
  45cb29:	53                   	push   ebx
  45cb2a:	53                   	push   ebx
  45cb2b:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45cb2e:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
  45cb31:	e8 9a 19 00 00       	call   0x45e4d0
  45cb36:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  45cb39:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  45cb3c:	8b 16                	mov    edx,DWORD PTR [esi]
  45cb3e:	8d 45 e4             	lea    eax,[ebp-0x1c]
  45cb41:	50                   	push   eax
  45cb42:	8b ce                	mov    ecx,esi
  45cb44:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45cb48:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  45cb4b:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  45cb4e:	3b c3                	cmp    eax,ebx
  45cb50:	75 04                	jne    0x45cb56
  45cb52:	33 c9                	xor    ecx,ecx
  45cb54:	eb 02                	jmp    0x45cb58
  45cb56:	8b 08                	mov    ecx,DWORD PTR [eax]
  45cb58:	3b c8                	cmp    ecx,eax
  45cb5a:	89 4d b0             	mov    DWORD PTR [ebp-0x50],ecx
  45cb5d:	0f 84 0a 06 00 00    	je     0x45d16d
  45cb63:	8b 4d b0             	mov    ecx,DWORD PTR [ebp-0x50]
  45cb66:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  45cb69:	83 79 24 01          	cmp    DWORD PTR [ecx+0x24],0x1
  45cb6d:	89 4d bc             	mov    DWORD PTR [ebp-0x44],ecx
  45cb70:	0f 85 43 03 00 00    	jne    0x45ceb9
  45cb76:	8d 95 3c ff ff ff    	lea    edx,[ebp-0xc4]
  45cb7c:	68 0d f0 00 00       	push   0xf00d
  45cb81:	52                   	push   edx
  45cb82:	e8 59 fc 05 00       	call   0x4bc7e0
  45cb87:	83 c4 08             	add    esp,0x8
  45cb8a:	8b f0                	mov    esi,eax
  45cb8c:	8b 4d bc             	mov    ecx,DWORD PTR [ebp-0x44]
  45cb8f:	8d 85 6c ff ff ff    	lea    eax,[ebp-0x94]
  45cb95:	50                   	push   eax
  45cb96:	c6 45 fc 07          	mov    BYTE PTR [ebp-0x4],0x7
  45cb9a:	e8 61 07 00 00       	call   0x45d300
  45cb9f:	56                   	push   esi
  45cba0:	50                   	push   eax
  45cba1:	c6 45 fc 08          	mov    BYTE PTR [ebp-0x4],0x8
  45cba5:	ff 15 48 e5 4d 00    	call   DWORD PTR ds:0x4de548
  45cbab:	83 c4 08             	add    esp,0x8
  45cbae:	6a 01                	push   0x1
  45cbb0:	8d 8d 6c ff ff ff    	lea    ecx,[ebp-0x94]
  45cbb6:	88 45 17             	mov    BYTE PTR [ebp+0x17],al
  45cbb9:	c6 45 fc 07          	mov    BYTE PTR [ebp-0x4],0x7
  45cbbd:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  45cbc3:	6a 01                	push   0x1
  45cbc5:	8d 8d 3c ff ff ff    	lea    ecx,[ebp-0xc4]
  45cbcb:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45cbcf:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  45cbd5:	38 5d 17             	cmp    BYTE PTR [ebp+0x17],bl
  45cbd8:	74 46                	je     0x45cc20
  45cbda:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
  45cbdd:	bf a0 6b 50 00       	mov    edi,0x506ba0
  45cbe2:	8a 0e                	mov    cl,BYTE PTR [esi]
  45cbe4:	8a 17                	mov    dl,BYTE PTR [edi]
  45cbe6:	8a c1                	mov    al,cl
  45cbe8:	3a ca                	cmp    cl,dl
  45cbea:	75 1e                	jne    0x45cc0a
  45cbec:	3a c3                	cmp    al,bl
  45cbee:	74 16                	je     0x45cc06
  45cbf0:	8a 56 01             	mov    dl,BYTE PTR [esi+0x1]
  45cbf3:	8a 4f 01             	mov    cl,BYTE PTR [edi+0x1]
  45cbf6:	8a c2                	mov    al,dl
  45cbf8:	3a d1                	cmp    dl,cl
  45cbfa:	75 0e                	jne    0x45cc0a
  45cbfc:	83 c6 02             	add    esi,0x2
  45cbff:	83 c7 02             	add    edi,0x2
  45cc02:	3a c3                	cmp    al,bl
  45cc04:	75 dc                	jne    0x45cbe2
  45cc06:	33 c0                	xor    eax,eax
  45cc08:	eb 05                	jmp    0x45cc0f
  45cc0a:	1b c0                	sbb    eax,eax
  45cc0c:	83 d8 ff             	sbb    eax,0xffffffff
  45cc0f:	3b c3                	cmp    eax,ebx
  45cc11:	0f 84 b7 02 00 00    	je     0x45cece
  45cc17:	39 5d a0             	cmp    DWORD PTR [ebp-0x60],ebx
  45cc1a:	0f 85 ae 02 00 00    	jne    0x45cece
  45cc20:	8b 7d bc             	mov    edi,DWORD PTR [ebp-0x44]
  45cc23:	8d 85 5c ff ff ff    	lea    eax,[ebp-0xa4]
  45cc29:	68 0f f0 00 00       	push   0xf00f
  45cc2e:	50                   	push   eax
  45cc2f:	e8 ac fb 05 00       	call   0x4bc7e0
  45cc34:	83 c4 08             	add    esp,0x8
  45cc37:	8b f0                	mov    esi,eax
  45cc39:	8d 8d 4c ff ff ff    	lea    ecx,[ebp-0xb4]
  45cc3f:	51                   	push   ecx
  45cc40:	8b cf                	mov    ecx,edi
  45cc42:	c6 45 fc 09          	mov    BYTE PTR [ebp-0x4],0x9
  45cc46:	e8 b5 06 00 00       	call   0x45d300
  45cc4b:	56                   	push   esi
  45cc4c:	50                   	push   eax
  45cc4d:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  45cc51:	ff 15 48 e5 4d 00    	call   DWORD PTR ds:0x4de548
  45cc57:	83 c4 08             	add    esp,0x8
  45cc5a:	6a 01                	push   0x1
  45cc5c:	8d 8d 4c ff ff ff    	lea    ecx,[ebp-0xb4]
  45cc62:	88 45 17             	mov    BYTE PTR [ebp+0x17],al
  45cc65:	c6 45 fc 09          	mov    BYTE PTR [ebp-0x4],0x9
  45cc69:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  45cc6f:	6a 01                	push   0x1
  45cc71:	8d 8d 5c ff ff ff    	lea    ecx,[ebp-0xa4]
  45cc77:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45cc7b:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  45cc81:	38 5d 17             	cmp    BYTE PTR [ebp+0x17],bl
  45cc84:	74 08                	je     0x45cc8e
  45cc86:	89 7d b8             	mov    DWORD PTR [ebp-0x48],edi
  45cc89:	e9 28 02 00 00       	jmp    0x45ceb6
  45cc8e:	8a 55 13             	mov    dl,BYTE PTR [ebp+0x13]
  45cc91:	53                   	push   ebx
  45cc92:	53                   	push   ebx
  45cc93:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45cc96:	88 55 d8             	mov    BYTE PTR [ebp-0x28],dl
  45cc99:	e8 f2 10 fd ff       	call   0x42dd90
  45cc9e:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  45cca1:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  45cca4:	8d 47 34             	lea    eax,[edi+0x34]
  45cca7:	50                   	push   eax
  45cca8:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45ccab:	c6 45 fc 0b          	mov    BYTE PTR [ebp-0x4],0xb
  45ccaf:	e8 8c 15 00 00       	call   0x45e240
  45ccb4:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  45ccb7:	3b c3                	cmp    eax,ebx
  45ccb9:	75 2f                	jne    0x45ccea
  45ccbb:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  45ccbe:	51                   	push   ecx
  45ccbf:	8d 95 7c ff ff ff    	lea    edx,[ebp-0x84]
  45ccc5:	52                   	push   edx
  45ccc6:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45ccc9:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45cccd:	e8 0e 16 00 00       	call   0x45e2e0
  45ccd2:	8b 00                	mov    eax,DWORD PTR [eax]
  45ccd4:	50                   	push   eax
  45ccd5:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  45ccd8:	51                   	push   ecx
  45ccd9:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45ccdc:	e8 5f 1a 00 00       	call   0x45e740
  45cce1:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  45cce4:	52                   	push   edx
  45cce5:	e9 be 01 00 00       	jmp    0x45cea8
  45ccea:	83 f8 01             	cmp    eax,0x1
  45cced:	75 2e                	jne    0x45cd1d
  45ccef:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45ccf2:	3b c3                	cmp    eax,ebx
  45ccf4:	75 04                	jne    0x45ccfa
  45ccf6:	33 c0                	xor    eax,eax
  45ccf8:	eb 02                	jmp    0x45ccfc
  45ccfa:	8b 00                	mov    eax,DWORD PTR [eax]
  45ccfc:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  45ccff:	3b c3                	cmp    eax,ebx
  45cd01:	75 05                	jne    0x45cd08
  45cd03:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
  45cd08:	50                   	push   eax
  45cd09:	8d 45 f0             	lea    eax,[ebp-0x10]
  45cd0c:	50                   	push   eax
  45cd0d:	e8 de bb fe ff       	call   0x4488f0
  45cd12:	83 c4 08             	add    esp,0x8
  45cd15:	84 c0                	test   al,al
  45cd17:	0f 85 e9 01 00 00    	jne    0x45cf06
  45cd1d:	8b 47 40             	mov    eax,DWORD PTR [edi+0x40]
  45cd20:	48                   	dec    eax
  45cd21:	0f 84 0e 01 00 00    	je     0x45ce35
  45cd27:	48                   	dec    eax
  45cd28:	0f 84 ca 00 00 00    	je     0x45cdf8
  45cd2e:	48                   	dec    eax
  45cd2f:	0f 85 ad 00 00 00    	jne    0x45cde2
  45cd35:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  45cd38:	33 f6                	xor    esi,esi
  45cd3a:	33 ff                	xor    edi,edi
  45cd3c:	3b d3                	cmp    edx,ebx
  45cd3e:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
  45cd41:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
  45cd44:	89 5d 14             	mov    DWORD PTR [ebp+0x14],ebx
  45cd47:	74 6c                	je     0x45cdb5
  45cd49:	8b 0a                	mov    ecx,DWORD PTR [edx]
  45cd4b:	3b ca                	cmp    ecx,edx
  45cd4d:	74 66                	je     0x45cdb5
  45cd4f:	8b 41 0c             	mov    eax,DWORD PTR [ecx+0xc]
  45cd52:	3b c3                	cmp    eax,ebx
  45cd54:	8b 35 d8 e4 4d 00    	mov    esi,DWORD PTR ds:0x4de4d8
  45cd5a:	74 02                	je     0x45cd5e
  45cd5c:	8b f0                	mov    esi,eax
  45cd5e:	8b 01                	mov    eax,DWORD PTR [ecx]
  45cd60:	3b c2                	cmp    eax,edx
  45cd62:	74 51                	je     0x45cdb5
  45cd64:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  45cd67:	3b cb                	cmp    ecx,ebx
  45cd69:	75 06                	jne    0x45cd71
  45cd6b:	8b 0d d8 e4 4d 00    	mov    ecx,DWORD PTR ds:0x4de4d8
  45cd71:	8b 00                	mov    eax,DWORD PTR [eax]
  45cd73:	3b c2                	cmp    eax,edx
  45cd75:	89 4d a8             	mov    DWORD PTR [ebp-0x58],ecx
  45cd78:	74 3b                	je     0x45cdb5
  45cd7a:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  45cd7d:	3b cb                	cmp    ecx,ebx
  45cd7f:	75 06                	jne    0x45cd87
  45cd81:	8b 0d d8 e4 4d 00    	mov    ecx,DWORD PTR ds:0x4de4d8
  45cd87:	8b 00                	mov    eax,DWORD PTR [eax]
  45cd89:	3b c2                	cmp    eax,edx
  45cd8b:	89 4d a4             	mov    DWORD PTR [ebp-0x5c],ecx
  45cd8e:	74 25                	je     0x45cdb5
  45cd90:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  45cd93:	3b cb                	cmp    ecx,ebx
  45cd95:	75 06                	jne    0x45cd9d
  45cd97:	8b 0d d8 e4 4d 00    	mov    ecx,DWORD PTR ds:0x4de4d8
  45cd9d:	8b 00                	mov    eax,DWORD PTR [eax]
  45cd9f:	3b c2                	cmp    eax,edx
  45cda1:	89 4d 14             	mov    DWORD PTR [ebp+0x14],ecx
  45cda4:	74 0f                	je     0x45cdb5
  45cda6:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  45cda9:	3b c3                	cmp    eax,ebx
  45cdab:	8b 3d d8 e4 4d 00    	mov    edi,DWORD PTR ds:0x4de4d8
  45cdb1:	74 02                	je     0x45cdb5
  45cdb3:	8b f8                	mov    edi,eax
  45cdb5:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  45cdb8:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
  45cdbb:	8b 4d a8             	mov    ecx,DWORD PTR [ebp-0x58]
  45cdbe:	57                   	push   edi
  45cdbf:	52                   	push   edx
  45cdc0:	50                   	push   eax
  45cdc1:	51                   	push   ecx
  45cdc2:	56                   	push   esi
  45cdc3:	51                   	push   ecx
  45cdc4:	8d 55 f0             	lea    edx,[ebp-0x10]
  45cdc7:	8b cc                	mov    ecx,esp
  45cdc9:	89 65 14             	mov    DWORD PTR [ebp+0x14],esp
  45cdcc:	52                   	push   edx
  45cdcd:	e8 7a 4c 07 00       	call   0x4d1a4c
  45cdd2:	e8 49 98 fe ff       	call   0x446620
  45cdd7:	83 c4 18             	add    esp,0x18
  45cdda:	3b c3                	cmp    eax,ebx
  45cddc:	0f 85 b8 01 00 00    	jne    0x45cf9a
  45cde2:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45cde5:	3b c3                	cmp    eax,ebx
  45cde7:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45cdeb:	0f 85 87 00 00 00    	jne    0x45ce78
  45cdf1:	33 c9                	xor    ecx,ecx
  45cdf3:	e9 82 00 00 00       	jmp    0x45ce7a
  45cdf8:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45cdfb:	3b c3                	cmp    eax,ebx
  45cdfd:	75 04                	jne    0x45ce03
  45cdff:	33 f6                	xor    esi,esi
  45ce01:	eb 02                	jmp    0x45ce05
  45ce03:	8b 30                	mov    esi,DWORD PTR [eax]
  45ce05:	3b f0                	cmp    esi,eax
  45ce07:	74 dc                	je     0x45cde5
  45ce09:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  45ce0c:	3b c3                	cmp    eax,ebx
  45ce0e:	75 05                	jne    0x45ce15
  45ce10:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
  45ce15:	50                   	push   eax
  45ce16:	8d 45 f0             	lea    eax,[ebp-0x10]
  45ce19:	50                   	push   eax
  45ce1a:	e8 d1 ba fe ff       	call   0x4488f0
  45ce1f:	83 c4 08             	add    esp,0x8
  45ce22:	84 c0                	test   al,al
  45ce24:	0f 85 39 02 00 00    	jne    0x45d063
  45ce2a:	8b 36                	mov    esi,DWORD PTR [esi]
  45ce2c:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45ce2f:	3b f0                	cmp    esi,eax
  45ce31:	75 d6                	jne    0x45ce09
  45ce33:	eb b0                	jmp    0x45cde5
  45ce35:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45ce38:	3b c3                	cmp    eax,ebx
  45ce3a:	75 04                	jne    0x45ce40
  45ce3c:	33 f6                	xor    esi,esi
  45ce3e:	eb 02                	jmp    0x45ce42
  45ce40:	8b 30                	mov    esi,DWORD PTR [eax]
  45ce42:	3b f0                	cmp    esi,eax
  45ce44:	0f 84 ad 02 00 00    	je     0x45d0f7
  45ce4a:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  45ce4d:	3b c3                	cmp    eax,ebx
  45ce4f:	75 05                	jne    0x45ce56
  45ce51:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
  45ce56:	50                   	push   eax
  45ce57:	8d 4d f0             	lea    ecx,[ebp-0x10]
  45ce5a:	51                   	push   ecx
  45ce5b:	e8 90 ba fe ff       	call   0x4488f0
  45ce60:	83 c4 08             	add    esp,0x8
  45ce63:	84 c0                	test   al,al
  45ce65:	0f 84 77 ff ff ff    	je     0x45cde2
  45ce6b:	8b 36                	mov    esi,DWORD PTR [esi]
  45ce6d:	3b 75 dc             	cmp    esi,DWORD PTR [ebp-0x24]
  45ce70:	0f 84 81 02 00 00    	je     0x45d0f7
  45ce76:	eb d2                	jmp    0x45ce4a
  45ce78:	8b 08                	mov    ecx,DWORD PTR [eax]
  45ce7a:	3b c8                	cmp    ecx,eax
  45ce7c:	8b f0                	mov    esi,eax
  45ce7e:	89 4d 14             	mov    DWORD PTR [ebp+0x14],ecx
  45ce81:	74 24                	je     0x45cea7
  45ce83:	53                   	push   ebx
  45ce84:	8d 55 80             	lea    edx,[ebp-0x80]
  45ce87:	52                   	push   edx
  45ce88:	8d 4d 14             	lea    ecx,[ebp+0x14]
  45ce8b:	e8 80 14 00 00       	call   0x45e310
  45ce90:	8b 00                	mov    eax,DWORD PTR [eax]
  45ce92:	50                   	push   eax
  45ce93:	8d 4d 9c             	lea    ecx,[ebp-0x64]
  45ce96:	51                   	push   ecx
  45ce97:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45ce9a:	e8 21 0f fd ff       	call   0x42ddc0
  45ce9f:	39 75 14             	cmp    DWORD PTR [ebp+0x14],esi
  45cea2:	75 df                	jne    0x45ce83
  45cea4:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45cea7:	50                   	push   eax
  45cea8:	e8 b3 51 fe ff       	call   0x442060
  45cead:	83 c4 04             	add    esp,0x4
  45ceb0:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
  45ceb3:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  45ceb6:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  45ceb9:	8b 55 b0             	mov    edx,DWORD PTR [ebp-0x50]
  45cebc:	8b 0a                	mov    ecx,DWORD PTR [edx]
  45cebe:	3b c8                	cmp    ecx,eax
  45cec0:	89 4d b0             	mov    DWORD PTR [ebp-0x50],ecx
  45cec3:	0f 84 9b 02 00 00    	je     0x45d164
  45cec9:	e9 95 fc ff ff       	jmp    0x45cb63
  45cece:	8b 4d bc             	mov    ecx,DWORD PTR [ebp-0x44]
  45ced1:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  45ced4:	8d 45 c4             	lea    eax,[ebp-0x3c]
  45ced7:	50                   	push   eax
  45ced8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  45cedb:	51                   	push   ecx
  45cedc:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  45cedf:	52                   	push   edx
  45cee0:	50                   	push   eax
  45cee1:	51                   	push   ecx
  45cee2:	e8 a9 f9 ff ff       	call   0x45c890
  45cee7:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  45ceea:	83 c4 14             	add    esp,0x14
  45ceed:	52                   	push   edx
  45ceee:	8d 45 10             	lea    eax,[ebp+0x10]
  45cef1:	50                   	push   eax
  45cef2:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45cef5:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45cef9:	e8 72 0d 00 00       	call   0x45dc70
  45cefe:	8b 08                	mov    ecx,DWORD PTR [eax]
  45cf00:	51                   	push   ecx
  45cf01:	8d 55 08             	lea    edx,[ebp+0x8]
  45cf04:	eb 68                	jmp    0x45cf6e
  45cf06:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  45cf09:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  45cf0c:	8d 55 c4             	lea    edx,[ebp-0x3c]
  45cf0f:	52                   	push   edx
  45cf10:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  45cf13:	57                   	push   edi
  45cf14:	50                   	push   eax
  45cf15:	51                   	push   ecx
  45cf16:	52                   	push   edx
  45cf17:	e8 74 f9 ff ff       	call   0x45c890
  45cf1c:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45cf1f:	83 c4 14             	add    esp,0x14
  45cf22:	50                   	push   eax
  45cf23:	8d 4d 10             	lea    ecx,[ebp+0x10]
  45cf26:	51                   	push   ecx
  45cf27:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45cf2a:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45cf2e:	e8 ad 13 00 00       	call   0x45e2e0
  45cf33:	8b 10                	mov    edx,DWORD PTR [eax]
  45cf35:	52                   	push   edx
  45cf36:	8d 45 08             	lea    eax,[ebp+0x8]
  45cf39:	50                   	push   eax
  45cf3a:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45cf3d:	e8 fe 17 00 00       	call   0x45e740
  45cf42:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  45cf45:	51                   	push   ecx
  45cf46:	e8 15 51 fe ff       	call   0x442060
  45cf4b:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  45cf4e:	83 c4 04             	add    esp,0x4
  45cf51:	52                   	push   edx
  45cf52:	8d 45 10             	lea    eax,[ebp+0x10]
  45cf55:	50                   	push   eax
  45cf56:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45cf59:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
  45cf5c:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  45cf5f:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45cf63:	e8 08 0d 00 00       	call   0x45dc70
  45cf68:	8b 08                	mov    ecx,DWORD PTR [eax]
  45cf6a:	51                   	push   ecx
  45cf6b:	8d 55 08             	lea    edx,[ebp+0x8]
  45cf6e:	52                   	push   edx
  45cf6f:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45cf72:	e8 09 15 00 00       	call   0x45e480
  45cf77:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  45cf7a:	50                   	push   eax
  45cf7b:	e8 e0 50 fe ff       	call   0x442060
  45cf80:	83 c4 04             	add    esp,0x4
  45cf83:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45cf86:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  45cf89:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  45cf8c:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45cf90:	e8 3b 14 00 00       	call   0x45e3d0
  45cf95:	e9 10 03 00 00       	jmp    0x45d2aa
  45cf9a:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
  45cf9d:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  45cfa0:	8d 55 c4             	lea    edx,[ebp-0x3c]
  45cfa3:	52                   	push   edx
  45cfa4:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  45cfa7:	50                   	push   eax
  45cfa8:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  45cfab:	51                   	push   ecx
  45cfac:	52                   	push   edx
  45cfad:	50                   	push   eax
  45cfae:	e8 dd f8 ff ff       	call   0x45c890
  45cfb3:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45cfb6:	83 c4 14             	add    esp,0x14
  45cfb9:	3b c3                	cmp    eax,ebx
  45cfbb:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45cfbf:	75 04                	jne    0x45cfc5
  45cfc1:	33 c9                	xor    ecx,ecx
  45cfc3:	eb 02                	jmp    0x45cfc7
  45cfc5:	8b 08                	mov    ecx,DWORD PTR [eax]
  45cfc7:	3b c8                	cmp    ecx,eax
  45cfc9:	8b f0                	mov    esi,eax
  45cfcb:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  45cfce:	74 24                	je     0x45cff4
  45cfd0:	53                   	push   ebx
  45cfd1:	8d 4d 08             	lea    ecx,[ebp+0x8]
  45cfd4:	51                   	push   ecx
  45cfd5:	8d 4d 10             	lea    ecx,[ebp+0x10]
  45cfd8:	e8 33 13 00 00       	call   0x45e310
  45cfdd:	8b 10                	mov    edx,DWORD PTR [eax]
  45cfdf:	52                   	push   edx
  45cfe0:	8d 45 14             	lea    eax,[ebp+0x14]
  45cfe3:	50                   	push   eax
  45cfe4:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45cfe7:	e8 d4 0d fd ff       	call   0x42ddc0
  45cfec:	39 75 10             	cmp    DWORD PTR [ebp+0x10],esi
  45cfef:	75 df                	jne    0x45cfd0
  45cff1:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45cff4:	50                   	push   eax
  45cff5:	e8 66 50 fe ff       	call   0x442060
  45cffa:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  45cffd:	83 c4 04             	add    esp,0x4
  45d000:	3b c3                	cmp    eax,ebx
  45d002:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
  45d005:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  45d008:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45d00c:	75 04                	jne    0x45d012
  45d00e:	33 c9                	xor    ecx,ecx
  45d010:	eb 02                	jmp    0x45d014
  45d012:	8b 08                	mov    ecx,DWORD PTR [eax]
  45d014:	3b c8                	cmp    ecx,eax
  45d016:	8b f0                	mov    esi,eax
  45d018:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  45d01b:	74 24                	je     0x45d041
  45d01d:	53                   	push   ebx
  45d01e:	8d 4d 08             	lea    ecx,[ebp+0x8]
  45d021:	51                   	push   ecx
  45d022:	8d 4d 10             	lea    ecx,[ebp+0x10]
  45d025:	e8 76 0c 00 00       	call   0x45dca0
  45d02a:	8b 10                	mov    edx,DWORD PTR [eax]
  45d02c:	52                   	push   edx
  45d02d:	8d 45 14             	lea    eax,[ebp+0x14]
  45d030:	50                   	push   eax
  45d031:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45d034:	e8 c7 1a 00 00       	call   0x45eb00
  45d039:	39 75 10             	cmp    DWORD PTR [ebp+0x10],esi
  45d03c:	75 df                	jne    0x45d01d
  45d03e:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  45d041:	50                   	push   eax
  45d042:	e8 19 50 fe ff       	call   0x442060
  45d047:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  45d04a:	83 c4 04             	add    esp,0x4
  45d04d:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  45d050:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  45d053:	8b 08                	mov    ecx,DWORD PTR [eax]
  45d055:	50                   	push   eax
  45d056:	51                   	push   ecx
  45d057:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45d05b:	8d 4d 10             	lea    ecx,[ebp+0x10]
  45d05e:	e9 6e 01 00 00       	jmp    0x45d1d1
  45d063:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  45d066:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  45d069:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d06c:	51                   	push   ecx
  45d06d:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  45d070:	57                   	push   edi
  45d071:	52                   	push   edx
  45d072:	50                   	push   eax
  45d073:	51                   	push   ecx
  45d074:	e8 17 f8 ff ff       	call   0x45c890
  45d079:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  45d07c:	83 c4 14             	add    esp,0x14
  45d07f:	52                   	push   edx
  45d080:	8d 45 10             	lea    eax,[ebp+0x10]
  45d083:	50                   	push   eax
  45d084:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45d087:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45d08b:	e8 50 12 00 00       	call   0x45e2e0
  45d090:	8b 08                	mov    ecx,DWORD PTR [eax]
  45d092:	51                   	push   ecx
  45d093:	8d 55 08             	lea    edx,[ebp+0x8]
  45d096:	52                   	push   edx
  45d097:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45d09a:	e8 a1 16 00 00       	call   0x45e740
  45d09f:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45d0a2:	50                   	push   eax
  45d0a3:	e8 b8 4f fe ff       	call   0x442060
  45d0a8:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  45d0ab:	83 c4 04             	add    esp,0x4
  45d0ae:	51                   	push   ecx
  45d0af:	8d 55 10             	lea    edx,[ebp+0x10]
  45d0b2:	52                   	push   edx
  45d0b3:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45d0b6:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
  45d0b9:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  45d0bc:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45d0c0:	e8 ab 0b 00 00       	call   0x45dc70
  45d0c5:	8b 00                	mov    eax,DWORD PTR [eax]
  45d0c7:	50                   	push   eax
  45d0c8:	8d 4d 08             	lea    ecx,[ebp+0x8]
  45d0cb:	51                   	push   ecx
  45d0cc:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45d0cf:	e8 ac 13 00 00       	call   0x45e480
  45d0d4:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  45d0d7:	52                   	push   edx
  45d0d8:	e8 83 4f fe ff       	call   0x442060
  45d0dd:	83 c4 04             	add    esp,0x4
  45d0e0:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d0e3:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  45d0e6:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  45d0e9:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45d0ed:	e8 de 12 00 00       	call   0x45e3d0
  45d0f2:	e9 f5 00 00 00       	jmp    0x45d1ec
  45d0f7:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  45d0fa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  45d0fd:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d100:	51                   	push   ecx
  45d101:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
  45d104:	57                   	push   edi
  45d105:	52                   	push   edx
  45d106:	50                   	push   eax
  45d107:	51                   	push   ecx
  45d108:	e8 83 f7 ff ff       	call   0x45c890
  45d10d:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  45d110:	83 c4 14             	add    esp,0x14
  45d113:	52                   	push   edx
  45d114:	8d 45 10             	lea    eax,[ebp+0x10]
  45d117:	50                   	push   eax
  45d118:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45d11b:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  45d11f:	e8 bc 11 00 00       	call   0x45e2e0
  45d124:	8b 08                	mov    ecx,DWORD PTR [eax]
  45d126:	51                   	push   ecx
  45d127:	8d 55 08             	lea    edx,[ebp+0x8]
  45d12a:	52                   	push   edx
  45d12b:	8d 4d d8             	lea    ecx,[ebp-0x28]
  45d12e:	e8 0d 16 00 00       	call   0x45e740
  45d133:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  45d136:	50                   	push   eax
  45d137:	e8 24 4f fe ff       	call   0x442060
  45d13c:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  45d13f:	83 c4 04             	add    esp,0x4
  45d142:	51                   	push   ecx
  45d143:	8d 55 10             	lea    edx,[ebp+0x10]
  45d146:	52                   	push   edx
  45d147:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45d14a:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
  45d14d:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  45d150:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45d154:	e8 17 0b 00 00       	call   0x45dc70
  45d159:	8b 00                	mov    eax,DWORD PTR [eax]
  45d15b:	50                   	push   eax
  45d15c:	8d 4d 08             	lea    ecx,[ebp+0x8]
  45d15f:	e9 67 ff ff ff       	jmp    0x45d0cb
  45d164:	39 5d b8             	cmp    DWORD PTR [ebp-0x48],ebx
  45d167:	0f 85 bb 00 00 00    	jne    0x45d228
  45d16d:	3b c3                	cmp    eax,ebx
  45d16f:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45d173:	75 04                	jne    0x45d179
  45d175:	33 c9                	xor    ecx,ecx
  45d177:	eb 02                	jmp    0x45d17b
  45d179:	8b 08                	mov    ecx,DWORD PTR [eax]
  45d17b:	3b c8                	cmp    ecx,eax
  45d17d:	8b f0                	mov    esi,eax
  45d17f:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  45d182:	74 24                	je     0x45d1a8
  45d184:	53                   	push   ebx
  45d185:	8d 4d 08             	lea    ecx,[ebp+0x8]
  45d188:	51                   	push   ecx
  45d189:	8d 4d 10             	lea    ecx,[ebp+0x10]
  45d18c:	e8 0f 0b 00 00       	call   0x45dca0
  45d191:	8b 10                	mov    edx,DWORD PTR [eax]
  45d193:	52                   	push   edx
  45d194:	8d 45 14             	lea    eax,[ebp+0x14]
  45d197:	50                   	push   eax
  45d198:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45d19b:	e8 60 19 00 00       	call   0x45eb00
  45d1a0:	39 75 10             	cmp    DWORD PTR [ebp+0x10],esi
  45d1a3:	75 df                	jne    0x45d184
  45d1a5:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  45d1a8:	50                   	push   eax
  45d1a9:	e8 b2 4e fe ff       	call   0x442060
  45d1ae:	8b 4d c8             	mov    ecx,DWORD PTR [ebp-0x38]
  45d1b1:	83 c4 04             	add    esp,0x4
  45d1b4:	51                   	push   ecx
  45d1b5:	8d 55 10             	lea    edx,[ebp+0x10]
  45d1b8:	52                   	push   edx
  45d1b9:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d1bc:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  45d1bf:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  45d1c2:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45d1c6:	e8 25 17 00 00       	call   0x45e8f0
  45d1cb:	8b 00                	mov    eax,DWORD PTR [eax]
  45d1cd:	50                   	push   eax
  45d1ce:	8d 4d 08             	lea    ecx,[ebp+0x8]
  45d1d1:	51                   	push   ecx
  45d1d2:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d1d5:	e8 36 17 00 00       	call   0x45e910
  45d1da:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  45d1dd:	52                   	push   edx
  45d1de:	e8 7d 4e fe ff       	call   0x442060
  45d1e3:	83 c4 04             	add    esp,0x4
  45d1e6:	89 5d c8             	mov    DWORD PTR [ebp-0x38],ebx
  45d1e9:	89 5d cc             	mov    DWORD PTR [ebp-0x34],ebx
  45d1ec:	8d 4d d0             	lea    ecx,[ebp-0x30]
  45d1ef:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  45d1f3:	e8 48 48 07 00       	call   0x4d1a40
  45d1f8:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  45d1fb:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  45d1ff:	e8 3c 48 07 00       	call   0x4d1a40
  45d204:	8d 4d f0             	lea    ecx,[ebp-0x10]
  45d207:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  45d20a:	e8 31 48 07 00       	call   0x4d1a40
  45d20f:	68 40 1a 4d 00       	push   0x4d1a40
  45d214:	6a 05                	push   0x5
  45d216:	6a 04                	push   0x4
  45d218:	8d 45 88             	lea    eax,[ebp-0x78]
  45d21b:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  45d222:	50                   	push   eax
  45d223:	e9 b9 00 00 00       	jmp    0x45d2e1
  45d228:	8b 55 b8             	mov    edx,DWORD PTR [ebp-0x48]
  45d22b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  45d22e:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d231:	51                   	push   ecx
  45d232:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  45d235:	52                   	push   edx
  45d236:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  45d239:	50                   	push   eax
  45d23a:	51                   	push   ecx
  45d23b:	52                   	push   edx
  45d23c:	e8 4f f6 ff ff       	call   0x45c890
  45d241:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  45d244:	83 c4 14             	add    esp,0x14
  45d247:	3b c3                	cmp    eax,ebx
  45d249:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  45d24d:	75 04                	jne    0x45d253
  45d24f:	33 c9                	xor    ecx,ecx
  45d251:	eb 02                	jmp    0x45d255
  45d253:	8b 08                	mov    ecx,DWORD PTR [eax]
  45d255:	50                   	push   eax
  45d256:	51                   	push   ecx
  45d257:	8d 45 10             	lea    eax,[ebp+0x10]
  45d25a:	50                   	push   eax
  45d25b:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  45d25e:	e8 1d 12 00 00       	call   0x45e480
  45d263:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  45d266:	51                   	push   ecx
  45d267:	e8 f4 4d fe ff       	call   0x442060
  45d26c:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  45d26f:	83 c4 04             	add    esp,0x4
  45d272:	52                   	push   edx
  45d273:	8d 45 14             	lea    eax,[ebp+0x14]
  45d276:	50                   	push   eax
  45d277:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d27a:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  45d27d:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  45d280:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  45d284:	e8 67 16 00 00       	call   0x45e8f0
  45d289:	8b 08                	mov    ecx,DWORD PTR [eax]
  45d28b:	51                   	push   ecx
  45d28c:	8d 55 9c             	lea    edx,[ebp-0x64]
  45d28f:	52                   	push   edx
  45d290:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  45d293:	e8 78 16 00 00       	call   0x45e910
  45d298:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  45d29b:	50                   	push   eax
  45d29c:	e8 bf 4d fe ff       	call   0x442060
  45d2a1:	83 c4 04             	add    esp,0x4
  45d2a4:	89 5d c8             	mov    DWORD PTR [ebp-0x38],ebx
  45d2a7:	89 5d cc             	mov    DWORD PTR [ebp-0x34],ebx
  45d2aa:	8d 4d d0             	lea    ecx,[ebp-0x30]
  45d2ad:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  45d2b1:	e8 8a 47 07 00       	call   0x4d1a40
  45d2b6:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  45d2b9:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  45d2bd:	e8 7e 47 07 00       	call   0x4d1a40
  45d2c2:	8d 4d f0             	lea    ecx,[ebp-0x10]
  45d2c5:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  45d2c8:	e8 73 47 07 00       	call   0x4d1a40
  45d2cd:	68 40 1a 4d 00       	push   0x4d1a40
  45d2d2:	6a 05                	push   0x5
  45d2d4:	6a 04                	push   0x4
  45d2d6:	8d 4d 88             	lea    ecx,[ebp-0x78]
  45d2d9:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  45d2e0:	51                   	push   ecx
  45d2e1:	e8 aa 48 07 00       	call   0x4d1b90
  45d2e6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  45d2e9:	5f                   	pop    edi
  45d2ea:	5e                   	pop    esi
  45d2eb:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  45d2f2:	5b                   	pop    ebx
  45d2f3:	8b e5                	mov    esp,ebp
  45d2f5:	5d                   	pop    ebp
  45d2f6:	c2 14 00             	ret    0x14
  45d2f9:	90                   	nop
  45d2fa:	90                   	nop
  45d2fb:	90                   	nop
  45d2fc:	90                   	nop
  45d2fd:	90                   	nop
  45d2fe:	90                   	nop
  45d2ff:	90                   	nop
  45d300:	55                   	push   ebp
  45d301:	8b ec                	mov    ebp,esp
  45d303:	51                   	push   ecx
  45d304:	8a 41 14             	mov    al,BYTE PTR [ecx+0x14]
  45d307:	53                   	push   ebx
  45d308:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  45d30b:	56                   	push   esi
  45d30c:	33 d2                	xor    edx,edx
  45d30e:	8d 71 14             	lea    esi,[ecx+0x14]
  45d311:	88 03                	mov    BYTE PTR [ebx],al
  45d313:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  45d316:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
  45d319:	89 53 0c             	mov    DWORD PTR [ebx+0xc],edx
  45d31c:	a1 ec e4 4d 00       	mov    eax,ds:0x4de4ec
  45d321:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  45d324:	8b 00                	mov    eax,DWORD PTR [eax]
  45d326:	57                   	push   edi
  45d327:	8b f9                	mov    edi,ecx
  45d329:	3b c7                	cmp    eax,edi
  45d32b:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
  45d32e:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  45d331:	73 05                	jae    0x45d338
  45d333:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  45d336:	8b f8                	mov    edi,eax
  45d338:	3b de                	cmp    ebx,esi
  45d33a:	75 73                	jne    0x45d3af
  45d33c:	3b fa                	cmp    edi,edx
  45d33e:	8b f0                	mov    esi,eax
  45d340:	76 0a                	jbe    0x45d34c
  45d342:	8b cb                	mov    ecx,ebx
  45d344:	ff 15 e8 e4 4d 00    	call   DWORD PTR ds:0x4de4e8
  45d34a:	33 d2                	xor    edx,edx
  45d34c:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  45d34f:	2b c7                	sub    eax,edi
  45d351:	3b c6                	cmp    eax,esi
  45d353:	73 02                	jae    0x45d357
  45d355:	8b f0                	mov    esi,eax
  45d357:	3b f2                	cmp    esi,edx
  45d359:	0f 86 de 00 00 00    	jbe    0x45d43d
  45d35f:	8b cb                	mov    ecx,ebx
  45d361:	ff 15 e4 e4 4d 00    	call   DWORD PTR ds:0x4de4e4
  45d367:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  45d36a:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  45d36d:	2b d6                	sub    edx,esi
  45d36f:	8d 04 0f             	lea    eax,[edi+ecx*1]
  45d372:	2b d7                	sub    edx,edi
  45d374:	52                   	push   edx
  45d375:	8d 0c 30             	lea    ecx,[eax+esi*1]
  45d378:	51                   	push   ecx
  45d379:	50                   	push   eax
  45d37a:	ff 15 7c e3 4d 00    	call   DWORD PTR ds:0x4de37c
  45d380:	8b 7b 08             	mov    edi,DWORD PTR [ebx+0x8]
  45d383:	83 c4 0c             	add    esp,0xc
  45d386:	6a 00                	push   0x0
  45d388:	2b fe                	sub    edi,esi
  45d38a:	57                   	push   edi
  45d38b:	8b cb                	mov    ecx,ebx
  45d38d:	ff                   	.byte 0xff
  45d38e:	15                   	.byte 0x15
  45d38f:	e0                   	.byte 0xe0
