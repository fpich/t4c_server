; Passe 25, preuves statiques T4C Server.exe (objdump -M intel);
; Extraits selectionnes, PAS un listing integral ni une reconstruction compilee.

; Introduction et enumeration des creatures ; 00493920--00493A80
  493920:	55                   	push   ebp
  493921:	8b ec                	mov    ebp,esp
  493923:	6a ff                	push   0xffffffff
  493925:	68 3c ab 4d 00       	push   0x4dab3c
  49392a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  493930:	50                   	push   eax
  493931:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  493938:	81 ec 80 01 00 00    	sub    esp,0x180
  49393e:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
  493941:	8b 10                	mov    edx,DWORD PTR [eax]
  493943:	53                   	push   ebx
  493944:	56                   	push   esi
  493945:	57                   	push   edi
  493946:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
  493949:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  49394c:	68 84 e6 50 00       	push   0x50e684
  493951:	51                   	push   ecx
  493952:	8b c8                	mov    ecx,eax
  493954:	ff 52 04             	call   DWORD PTR [edx+0x4]
  493957:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  49395a:	8d 55 f0             	lea    edx,[ebp-0x10]
  49395d:	52                   	push   edx
  49395e:	8b ce                	mov    ecx,esi
  493960:	e8 1b 62 00 00       	call   0x499b80
  493965:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  493968:	33 db                	xor    ebx,ebx
  49396a:	3b c3                	cmp    eax,ebx
  49396c:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  49396f:	0f 84 23 07 00 00    	je     0x494098
  493975:	8a 45 0f             	mov    al,BYTE PTR [ebp+0xf]
  493978:	53                   	push   ebx
  493979:	8d 8d a8 fe ff ff    	lea    ecx,[ebp-0x158]
  49397f:	88 9d a4 fe ff ff    	mov    BYTE PTR [ebp-0x15c],bl
  493985:	88 85 a8 fe ff ff    	mov    BYTE PTR [ebp-0x158],al
  49398b:	e8 f0 19 00 00       	call   0x495380
  493990:	8a 4d 0f             	mov    cl,BYTE PTR [ebp+0xf]
  493993:	88 8d b8 fe ff ff    	mov    BYTE PTR [ebp-0x148],cl
  493999:	53                   	push   ebx
  49399a:	8d 8d b8 fe ff ff    	lea    ecx,[ebp-0x148]
  4939a0:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  4939a3:	e8 d8 1a 00 00       	call   0x495480
  4939a8:	8d 8d c8 fe ff ff    	lea    ecx,[ebp-0x138]
  4939ae:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4939b2:	e8 d9 18 00 00       	call   0x495290
  4939b7:	8d 8d dc fe ff ff    	lea    ecx,[ebp-0x124]
  4939bd:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4939c1:	89 9d d8 fe ff ff    	mov    DWORD PTR [ebp-0x128],ebx
  4939c7:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  4939cd:	8d 8d ec fe ff ff    	lea    ecx,[ebp-0x114]
  4939d3:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  4939d7:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  4939dd:	89 9d fc fe ff ff    	mov    DWORD PTR [ebp-0x104],ebx
  4939e3:	89 9d 00 ff ff ff    	mov    DWORD PTR [ebp-0x100],ebx
  4939e9:	89 9d 04 ff ff ff    	mov    DWORD PTR [ebp-0xfc],ebx
  4939ef:	89 9d 08 ff ff ff    	mov    DWORD PTR [ebp-0xf8],ebx
  4939f5:	89 9d 0c ff ff ff    	mov    DWORD PTR [ebp-0xf4],ebx
  4939fb:	89 9d 10 ff ff ff    	mov    DWORD PTR [ebp-0xf0],ebx
  493a01:	89 9d 14 ff ff ff    	mov    DWORD PTR [ebp-0xec],ebx
  493a07:	89 9d 18 ff ff ff    	mov    DWORD PTR [ebp-0xe8],ebx
  493a0d:	89 9d 1c ff ff ff    	mov    DWORD PTR [ebp-0xe4],ebx
  493a13:	89 9d 20 ff ff ff    	mov    DWORD PTR [ebp-0xe0],ebx
  493a19:	89 9d 24 ff ff ff    	mov    DWORD PTR [ebp-0xdc],ebx
  493a1f:	89 9d 28 ff ff ff    	mov    DWORD PTR [ebp-0xd8],ebx
  493a25:	89 9d 2c ff ff ff    	mov    DWORD PTR [ebp-0xd4],ebx
  493a2b:	89 9d 30 ff ff ff    	mov    DWORD PTR [ebp-0xd0],ebx
  493a31:	89 9d 34 ff ff ff    	mov    DWORD PTR [ebp-0xcc],ebx
  493a37:	89 9d 38 ff ff ff    	mov    DWORD PTR [ebp-0xc8],ebx
  493a3d:	89 9d 3c ff ff ff    	mov    DWORD PTR [ebp-0xc4],ebx
  493a43:	89 9d 40 ff ff ff    	mov    DWORD PTR [ebp-0xc0],ebx
  493a49:	89 9d 44 ff ff ff    	mov    DWORD PTR [ebp-0xbc],ebx
  493a4f:	89 9d 48 ff ff ff    	mov    DWORD PTR [ebp-0xb8],ebx
  493a55:	89 9d 4c ff ff ff    	mov    DWORD PTR [ebp-0xb4],ebx
  493a5b:	89 9d 50 ff ff ff    	mov    DWORD PTR [ebp-0xb0],ebx
  493a61:	c7 85 54 ff ff ff 00 	mov    DWORD PTR [ebp-0xac],0x0
  493a68:	00 00 00 
  493a6b:	c7 85 58 ff ff ff 00 	mov    DWORD PTR [ebp-0xa8],0x0
  493a72:	00 00 00 
  493a75:	89 9d 5c ff ff ff    	mov    DWORD PTR [ebp-0xa4],ebx
  493a7b:	89                   	.byte 0x89
  493a7c:	9d                   	popf
  493a7d:	60                   	pusha
  493a7e:	ff                   	(bad)
  493a7f:	ff                   	.byte 0xff

; Attaques de creatures ; 00494B42--00494BC0
  494b42:	68 7c e7 50 00       	push   0x50e77c
  494b47:	6a 04                	push   0x4
  494b49:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494b4f:	c6 45 fc 0b          	mov    BYTE PTR [ebp-0x4],0xb
  494b53:	e8 20 d0 03 00       	call   0x4d1b78
  494b58:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494b5e:	e8 03 d0 03 00       	call   0x4d1b66
  494b63:	85 c0                	test   eax,eax
  494b65:	0f 85 1f 02 00 00    	jne    0x494d8a
  494b6b:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494b71:	e8 ea cf 03 00       	call   0x4d1b60
  494b76:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494b7c:	e8 e5 cf 03 00       	call   0x4d1b66
  494b81:	85 c0                	test   eax,eax
  494b83:	0f 85 01 02 00 00    	jne    0x494d8a
  494b89:	8d 45 e4             	lea    eax,[ebp-0x1c]
  494b8c:	50                   	push   eax
  494b8d:	e8 c8 cf 03 00       	call   0x4d1b5a
  494b92:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  494b95:	51                   	push   ecx
  494b96:	68 20 e9 50 00       	push   0x50e920
  494b9b:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494ba1:	c6 45 fc 0c          	mov    BYTE PTR [ebp-0x4],0xc
  494ba5:	e8 c8 cf 03 00       	call   0x4d1b72
  494baa:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  494bad:	8d 45 08             	lea    eax,[ebp+0x8]
  494bb0:	50                   	push   eax
  494bb1:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  494bb4:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
  494bb7:	e8 f4 26 00 00       	call   0x4972b0
  494bbc:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  494bbf:	3b                   	.byte 0x3b

; Drapeaux de mort des creatures ; 00494DA8--00494E10
  494da8:	68 04 e7 50 00       	push   0x50e704
  494dad:	6a 04                	push   0x4
  494daf:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494db5:	c6 45 fc 0e          	mov    BYTE PTR [ebp-0x4],0xe
  494db9:	e8 ba cd 03 00       	call   0x4d1b78
  494dbe:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494dc4:	e8 9d cd 03 00       	call   0x4d1b66
  494dc9:	85 c0                	test   eax,eax
  494dcb:	0f 85 34 01 00 00    	jne    0x494f05
  494dd1:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494dd7:	e8 84 cd 03 00       	call   0x4d1b60
  494ddc:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494de2:	e8 7f cd 03 00       	call   0x4d1b66
  494de7:	85 c0                	test   eax,eax
  494de9:	0f 85 16 01 00 00    	jne    0x494f05
  494def:	8d 4d c0             	lea    ecx,[ebp-0x40]
  494df2:	51                   	push   ecx
  494df3:	e8 62 cd 03 00       	call   0x4d1b5a
  494df8:	8d 55 c0             	lea    edx,[ebp-0x40]
  494dfb:	52                   	push   edx
  494dfc:	68 20 e9 50 00       	push   0x50e920
  494e01:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494e07:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  494e0b:	e8 62 cd 03 00       	call   0x4d1b72

; Butin: selection du jeu de donnees ; 00494F13--00495083
  494f13:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  494f16:	50                   	push   eax
  494f17:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f1d:	e8 5c cc 03 00       	call   0x4d1b7e
  494f22:	53                   	push   ebx
  494f23:	68 c4 e6 50 00       	push   0x50e6c4
  494f28:	6a 04                	push   0x4
  494f2a:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f30:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  494f34:	e8 3f cc 03 00       	call   0x4d1b78
  494f39:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f3f:	e8 22 cc 03 00       	call   0x4d1b66
  494f44:	85 c0                	test   eax,eax
  494f46:	0f 85 23 01 00 00    	jne    0x49506f
  494f4c:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f52:	e8 09 cc 03 00       	call   0x4d1b60
  494f57:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f5d:	e8 04 cc 03 00       	call   0x4d1b66
  494f62:	85 c0                	test   eax,eax
  494f64:	0f 85 05 01 00 00    	jne    0x49506f
  494f6a:	8d 4d c0             	lea    ecx,[ebp-0x40]
  494f6d:	51                   	push   ecx
  494f6e:	e8 e7 cb 03 00       	call   0x4d1b5a
  494f73:	8d 55 c0             	lea    edx,[ebp-0x40]
  494f76:	52                   	push   edx
  494f77:	68 20 e9 50 00       	push   0x50e920
  494f7c:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f82:	c6 45 fc 11          	mov    BYTE PTR [ebp-0x4],0x11
  494f86:	e8 e7 cb 03 00       	call   0x4d1b72
  494f8b:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  494f8e:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  494f91:	51                   	push   ecx
  494f92:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  494f95:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  494f98:	e8 13 23 00 00       	call   0x4972b0
  494f9d:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  494fa0:	3b c1                	cmp    eax,ecx
  494fa2:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  494fa5:	74 0d                	je     0x494fb4
  494fa7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  494faa:	3b 50 0c             	cmp    edx,DWORD PTR [eax+0xc]
  494fad:	72 05                	jb     0x494fb4
  494faf:	8d 45 08             	lea    eax,[ebp+0x8]
  494fb2:	eb 06                	jmp    0x494fba
  494fb4:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
  494fb7:	8d 45 e0             	lea    eax,[ebp-0x20]
  494fba:	8b 30                	mov    esi,DWORD PTR [eax]
  494fbc:	3b f1                	cmp    esi,ecx
  494fbe:	75 0d                	jne    0x494fcd
  494fc0:	8d 45 c0             	lea    eax,[ebp-0x40]
  494fc3:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  494fc7:	50                   	push   eax
  494fc8:	e9 89 00 00 00       	jmp    0x495056
  494fcd:	8d 4d c0             	lea    ecx,[ebp-0x40]
  494fd0:	51                   	push   ecx
  494fd1:	68 bc e6 50 00       	push   0x50e6bc
  494fd6:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494fdc:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
  494fdf:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
  494fe6:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  494fed:	e8 80 cb 03 00       	call   0x4d1b72
  494ff2:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  494ff5:	8d 45 c0             	lea    eax,[ebp-0x40]
  494ff8:	50                   	push   eax
  494ff9:	68 ac e6 50 00       	push   0x50e6ac
  494ffe:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  495004:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
  495007:	e8 66 cb 03 00       	call   0x4d1b72
  49500c:	8b 4d c8             	mov    ecx,DWORD PTR [ebp-0x38]
  49500f:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  495012:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
  495015:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
  495018:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  49501b:	8b 4f 1c             	mov    ecx,DWORD PTR [edi+0x1c]
  49501e:	8b d0                	mov    edx,eax
  495020:	c1 e2 05             	shl    edx,0x5
  495023:	03 d0                	add    edx,eax
  495025:	8d 04 d1             	lea    eax,[ecx+edx*8]
  495028:	8d 70 14             	lea    esi,[eax+0x14]
  49502b:	8d 45 e4             	lea    eax,[ebp-0x1c]
  49502e:	50                   	push   eax
  49502f:	51                   	push   ecx
  495030:	54                   	push   esp
  495031:	8b ce                	mov    ecx,esi
  495033:	e8 48 02 00 00       	call   0x495280
  495038:	8d 4d b8             	lea    ecx,[ebp-0x48]
  49503b:	51                   	push   ecx
  49503c:	8b ce                	mov    ecx,esi
  49503e:	e8 dd 03 00 00       	call   0x495420
  495043:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  495049:	e8 06 cb 03 00       	call   0x4d1b54
  49504e:	8d 55 c0             	lea    edx,[ebp-0x40]
  495051:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  495055:	52                   	push   edx
  495056:	ff 15 18 e4 4d 00    	call   DWORD PTR ds:0x4de418
  49505c:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  495062:	e8 ff ca 03 00       	call   0x4d1b66
  495067:	85 c0                	test   eax,eax
  495069:	0f 84 fb fe ff ff    	je     0x494f6a
  49506f:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  495075:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  495078:	e8 ef ca 03 00       	call   0x4d1b6c
  49507d:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  495080:	39 5d dc             	cmp    DWORD PTR [ebp-0x24],ebx

; Objets: debut du chargeur ; 0049E9C0--0049EBD0
  49e9c0:	55                   	push   ebp
  49e9c1:	8b ec                	mov    ebp,esp
  49e9c3:	6a ff                	push   0xffffffff
  49e9c5:	68 53 b5 4d 00       	push   0x4db553
  49e9ca:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  49e9d0:	50                   	push   eax
  49e9d1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  49e9d8:	81 ec 88 09 00 00    	sub    esp,0x988
  49e9de:	56                   	push   esi
  49e9df:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  49e9e2:	57                   	push   edi
  49e9e3:	8b f9                	mov    edi,ecx
  49e9e5:	8b ce                	mov    ecx,esi
  49e9e7:	89 7d cc             	mov    DWORD PTR [ebp-0x34],edi
  49e9ea:	e8 77 31 03 00       	call   0x4d1b66
  49e9ef:	85 c0                	test   eax,eax
  49e9f1:	0f 85 34 10 00 00    	jne    0x49fa2b
  49e9f7:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  49e9fa:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  49e9fd:	8b 01                	mov    eax,DWORD PTR [ecx]
  49e9ff:	53                   	push   ebx
  49ea00:	68 0c f3 50 00       	push   0x50f30c
  49ea05:	52                   	push   edx
  49ea06:	ff 50 04             	call   DWORD PTR [eax+0x4]
  49ea09:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  49ea0c:	50                   	push   eax
  49ea0d:	8d 4d 0b             	lea    ecx,[ebp+0xb]
  49ea10:	51                   	push   ecx
  49ea11:	8d 4d d0             	lea    ecx,[ebp-0x30]
  49ea14:	e8 27 30 00 00       	call   0x4a1a40
  49ea19:	8d 4d d0             	lea    ecx,[ebp-0x30]
  49ea1c:	e8 0f 4f f8 ff       	call   0x423930
  49ea21:	33 db                	xor    ebx,ebx
  49ea23:	8b ce                	mov    ecx,esi
  49ea25:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  49ea28:	88 9d 6c f6 ff ff    	mov    BYTE PTR [ebp-0x994],bl
  49ea2e:	e8 2d 31 03 00       	call   0x4d1b60
  49ea33:	8b ce                	mov    ecx,esi
  49ea35:	e8 2c 31 03 00       	call   0x4d1b66
  49ea3a:	85 c0                	test   eax,eax
  49ea3c:	0f 85 d1 07 00 00    	jne    0x49f213
  49ea42:	8d 55 e4             	lea    edx,[ebp-0x1c]
  49ea45:	52                   	push   edx
  49ea46:	e8 0f 31 03 00       	call   0x4d1b5a
  49ea4b:	8a 45 0f             	mov    al,BYTE PTR [ebp+0xf]
  49ea4e:	53                   	push   ebx
  49ea4f:	8d 8d a4 fe ff ff    	lea    ecx,[ebp-0x15c]
  49ea55:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  49ea59:	88 85 a4 fe ff ff    	mov    BYTE PTR [ebp-0x15c],al
  49ea5f:	e8 ec 11 00 00       	call   0x49fc50
  49ea64:	8d 8d b4 fe ff ff    	lea    ecx,[ebp-0x14c]
  49ea6a:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  49ea6e:	e8 1d 10 00 00       	call   0x49fa90
  49ea73:	8d 8d c4 fe ff ff    	lea    ecx,[ebp-0x13c]
  49ea79:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  49ea7d:	e8 7e 10 00 00       	call   0x49fb00
  49ea82:	8d 8d d8 fe ff ff    	lea    ecx,[ebp-0x128]
  49ea88:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  49ea8c:	88 9d d4 fe ff ff    	mov    BYTE PTR [ebp-0x12c],bl
  49ea92:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  49ea98:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  49ea9e:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  49eaa2:	89 9d e8 fe ff ff    	mov    DWORD PTR [ebp-0x118],ebx
  49eaa8:	89 9d ec fe ff ff    	mov    DWORD PTR [ebp-0x114],ebx
  49eaae:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  49eab4:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  49eaba:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  49eabe:	89 9d 00 ff ff ff    	mov    DWORD PTR [ebp-0x100],ebx
  49eac4:	89 9d 04 ff ff ff    	mov    DWORD PTR [ebp-0xfc],ebx
  49eaca:	89 9d 08 ff ff ff    	mov    DWORD PTR [ebp-0xf8],ebx
  49ead0:	89 9d 0c ff ff ff    	mov    DWORD PTR [ebp-0xf4],ebx
  49ead6:	89 9d 10 ff ff ff    	mov    DWORD PTR [ebp-0xf0],ebx
  49eadc:	c7 85 14 ff ff ff 00 	mov    DWORD PTR [ebp-0xec],0x0
  49eae3:	00 00 00 
  49eae6:	c7 85 18 ff ff ff 00 	mov    DWORD PTR [ebp-0xe8],0x0
  49eaed:	00 00 00 
  49eaf0:	89 9d 1c ff ff ff    	mov    DWORD PTR [ebp-0xe4],ebx
  49eaf6:	89 9d 20 ff ff ff    	mov    DWORD PTR [ebp-0xe0],ebx
  49eafc:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  49eb02:	8d 8d 40 ff ff ff    	lea    ecx,[ebp-0xc0]
  49eb08:	c6 45 fc 07          	mov    BYTE PTR [ebp-0x4],0x7
  49eb0c:	89 9d 34 ff ff ff    	mov    DWORD PTR [ebp-0xcc],ebx
  49eb12:	89 9d 38 ff ff ff    	mov    DWORD PTR [ebp-0xc8],ebx
  49eb18:	89 9d 3c ff ff ff    	mov    DWORD PTR [ebp-0xc4],ebx
  49eb1e:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  49eb24:	8d 8d 54 ff ff ff    	lea    ecx,[ebp-0xac]
  49eb2a:	c6 45 fc 08          	mov    BYTE PTR [ebp-0x4],0x8
  49eb2e:	89 9d 50 ff ff ff    	mov    DWORD PTR [ebp-0xb0],ebx
  49eb34:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  49eb3a:	8d 8d 70 ff ff ff    	lea    ecx,[ebp-0x90]
  49eb40:	c6 45 fc 09          	mov    BYTE PTR [ebp-0x4],0x9
  49eb44:	89 9d 64 ff ff ff    	mov    DWORD PTR [ebp-0x9c],ebx
  49eb4a:	89 9d 68 ff ff ff    	mov    DWORD PTR [ebp-0x98],ebx
  49eb50:	89 9d 6c ff ff ff    	mov    DWORD PTR [ebp-0x94],ebx
  49eb56:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  49eb5c:	8d 4d 9c             	lea    ecx,[ebp-0x64]
  49eb5f:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  49eb63:	89 5d 80             	mov    DWORD PTR [ebp-0x80],ebx
  49eb66:	89 5d 84             	mov    DWORD PTR [ebp-0x7c],ebx
  49eb69:	89 5d 88             	mov    DWORD PTR [ebp-0x78],ebx
  49eb6c:	89 5d 8c             	mov    DWORD PTR [ebp-0x74],ebx
  49eb6f:	89 5d 90             	mov    DWORD PTR [ebp-0x70],ebx
  49eb72:	89 5d 94             	mov    DWORD PTR [ebp-0x6c],ebx
  49eb75:	88 5d 98             	mov    BYTE PTR [ebp-0x68],bl
  49eb78:	ff 15 f8 e4 4d 00    	call   DWORD PTR ds:0x4de4f8
  49eb7e:	c6 45 ac 01          	mov    BYTE PTR [ebp-0x54],0x1
  49eb82:	88 5d ad             	mov    BYTE PTR [ebp-0x53],bl
  49eb85:	c6 45 ae 01          	mov    BYTE PTR [ebp-0x52],0x1
  49eb89:	8b 16                	mov    edx,DWORD PTR [esi]
  49eb8b:	8d 45 e4             	lea    eax,[ebp-0x1c]
  49eb8e:	50                   	push   eax
  49eb8f:	c6 45 fc 0b          	mov    BYTE PTR [ebp-0x4],0xb
  49eb93:	68 00 f3 50 00       	push   0x50f300
  49eb98:	8b ce                	mov    ecx,esi
  49eb9a:	ff 52 4c             	call   DWORD PTR [edx+0x4c]
  49eb9d:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  49eba0:	83 c9 ff             	or     ecx,0xffffffff
  49eba3:	33 c0                	xor    eax,eax
  49eba5:	8b fa                	mov    edi,edx
  49eba7:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  49eba9:	f7 d1                	not    ecx
  49ebab:	49                   	dec    ecx
  49ebac:	51                   	push   ecx
  49ebad:	52                   	push   edx
  49ebae:	8d 8d d8 fe ff ff    	lea    ecx,[ebp-0x128]
  49ebb4:	ff 15 f4 e4 4d 00    	call   DWORD PTR ds:0x4de4f4
  49ebba:	8b 16                	mov    edx,DWORD PTR [esi]
  49ebbc:	8d 45 e4             	lea    eax,[ebp-0x1c]
  49ebbf:	50                   	push   eax
  49ebc0:	68 2c e9 50 00       	push   0x50e92c
  49ebc5:	8b ce                	mov    ecx,esi
  49ebc7:	ff 52 4c             	call   DWORD PTR [edx+0x4c]
  49ebca:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  49ebcd:	8b 16                	mov    edx,DWORD PTR [esi]
  49ebcf:	8d                   	.byte 0x8d

; Objets: groupes de contenants ; 0049F1F0--0049F2AD
  49f1f0:	fc                   	cld
  49f1f1:	01 e8                	add    eax,ebp
  49f1f3:	a9 0a 00 00 8d       	test   eax,0x8d00000a
  49f1f8:	55                   	push   ebp
  49f1f9:	e4 52                	in     al,0x52
  49f1fb:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  49f1fe:	ff 15 18 e4 4d 00    	call   DWORD PTR ds:0x4de418
  49f204:	8b ce                	mov    ecx,esi
  49f206:	e8 5b 29 03 00       	call   0x4d1b66
  49f20b:	85 c0                	test   eax,eax
  49f20d:	0f 84 2f f8 ff ff    	je     0x49ea42
  49f213:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  49f216:	50                   	push   eax
  49f217:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f21d:	e8 5c 29 03 00       	call   0x4d1b7e
  49f222:	53                   	push   ebx
  49f223:	68 78 ef 50 00       	push   0x50ef78
  49f228:	6a 04                	push   0x4
  49f22a:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f230:	c6 45 fc 16          	mov    BYTE PTR [ebp-0x4],0x16
  49f234:	e8 3f 29 03 00       	call   0x4d1b78
  49f239:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f23f:	e8 22 29 03 00       	call   0x4d1b66
  49f244:	85 c0                	test   eax,eax
  49f246:	0f 85 b4 01 00 00    	jne    0x49f400
  49f24c:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f252:	e8 09 29 03 00       	call   0x4d1b60
  49f257:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f25d:	e8 04 29 03 00       	call   0x4d1b66
  49f262:	85 c0                	test   eax,eax
  49f264:	0f 85 96 01 00 00    	jne    0x49f400
  49f26a:	8d 4d b8             	lea    ecx,[ebp-0x48]
  49f26d:	51                   	push   ecx
  49f26e:	e8 e7 28 03 00       	call   0x4d1b5a
  49f273:	8d 55 b8             	lea    edx,[ebp-0x48]
  49f276:	52                   	push   edx
  49f277:	68 00 f3 50 00       	push   0x50f300
  49f27c:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f282:	c6 45 fc 17          	mov    BYTE PTR [ebp-0x4],0x17
  49f286:	e8 e7 28 03 00       	call   0x4d1b72
  49f28b:	8a 45 0f             	mov    al,BYTE PTR [ebp+0xf]
  49f28e:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
  49f291:	53                   	push   ebx
  49f292:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49f295:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
  49f298:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  49f29e:	83 c9 ff             	or     ecx,0xffffffff
  49f2a1:	33 c0                	xor    eax,eax
  49f2a3:	8b fe                	mov    edi,esi
  49f2a5:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  49f2a7:	f7 d1                	not    ecx
  49f2a9:	49                   	dec    ecx
  49f2aa:	51                   	push   ecx
  49f2ab:	56                   	push   esi
  49f2ac:	8d                   	.byte 0x8d

; Objets: attributs supplementaires ; 0049F3F0--0049F4B0
  49f3f0:	ff                   	(bad)
  49f3f1:	ff                   	(bad)
  49f3f2:	ff                   	jmp    (bad)
  49f3f3:	e8 6e 27 03 00       	call   0x4d1b66
  49f3f8:	85 c0                	test   eax,eax
  49f3fa:	0f 84 6a fe ff ff    	je     0x49f26a
  49f400:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f406:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  49f409:	e8 5e 27 03 00       	call   0x4d1b6c
  49f40e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  49f411:	52                   	push   edx
  49f412:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f418:	e8 61 27 03 00       	call   0x4d1b7e
  49f41d:	53                   	push   ebx
  49f41e:	68 24 ef 50 00       	push   0x50ef24
  49f423:	6a 04                	push   0x4
  49f425:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f42b:	c6 45 fc 1a          	mov    BYTE PTR [ebp-0x4],0x1a
  49f42f:	e8 44 27 03 00       	call   0x4d1b78
  49f434:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f43a:	e8 27 27 03 00       	call   0x4d1b66
  49f43f:	85 c0                	test   eax,eax
  49f441:	0f 85 38 02 00 00    	jne    0x49f67f
  49f447:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f44d:	e8 0e 27 03 00       	call   0x4d1b60
  49f452:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f458:	e8 09 27 03 00       	call   0x4d1b66
  49f45d:	85 c0                	test   eax,eax
  49f45f:	0f 85 1a 02 00 00    	jne    0x49f67f
  49f465:	8d 45 b8             	lea    eax,[ebp-0x48]
  49f468:	50                   	push   eax
  49f469:	e8 ec 26 03 00       	call   0x4d1b5a
  49f46e:	8d 4d b8             	lea    ecx,[ebp-0x48]
  49f471:	51                   	push   ecx
  49f472:	68 00 f3 50 00       	push   0x50f300
  49f477:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f47d:	c6 45 fc 1b          	mov    BYTE PTR [ebp-0x4],0x1b
  49f481:	e8 ec 26 03 00       	call   0x4d1b72
  49f486:	8a 55 0f             	mov    dl,BYTE PTR [ebp+0xf]
  49f489:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
  49f48c:	53                   	push   ebx
  49f48d:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49f490:	88 55 e4             	mov    BYTE PTR [ebp-0x1c],dl
  49f493:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  49f499:	83 c9 ff             	or     ecx,0xffffffff
  49f49c:	33 c0                	xor    eax,eax
  49f49e:	8b fe                	mov    edi,esi
  49f4a0:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  49f4a2:	f7 d1                	not    ecx
  49f4a4:	49                   	dec    ecx
  49f4a5:	8b f9                	mov    edi,ecx
  49f4a7:	56                   	push   esi
  49f4a8:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49f4ab:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  49f4ae:	ff                   	.byte 0xff
  49f4af:	15                   	.byte 0x15

; Objets: sorts associes ; 0049F670--0049F72A
  49f670:	ff                   	(bad)
  49f671:	ff                   	jmp    (bad)
  49f672:	e8 ef 24 03 00       	call   0x4d1b66
  49f677:	85 c0                	test   eax,eax
  49f679:	0f 84 e6 fd ff ff    	je     0x49f465
  49f67f:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f685:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  49f688:	e8 df 24 03 00       	call   0x4d1b6c
  49f68d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  49f690:	50                   	push   eax
  49f691:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f697:	e8 e2 24 03 00       	call   0x4d1b7e
  49f69c:	53                   	push   ebx
  49f69d:	68 04 ef 50 00       	push   0x50ef04
  49f6a2:	6a 04                	push   0x4
  49f6a4:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f6aa:	c6 45 fc 1e          	mov    BYTE PTR [ebp-0x4],0x1e
  49f6ae:	e8 c5 24 03 00       	call   0x4d1b78
  49f6b3:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f6b9:	e8 a8 24 03 00       	call   0x4d1b66
  49f6be:	85 c0                	test   eax,eax
  49f6c0:	0f 85 d3 01 00 00    	jne    0x49f899
  49f6c6:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f6cc:	e8 8f 24 03 00       	call   0x4d1b60
  49f6d1:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f6d7:	e8 8a 24 03 00       	call   0x4d1b66
  49f6dc:	85 c0                	test   eax,eax
  49f6de:	0f 85 b5 01 00 00    	jne    0x49f899
  49f6e4:	8d 4d b8             	lea    ecx,[ebp-0x48]
  49f6e7:	51                   	push   ecx
  49f6e8:	e8 6d 24 03 00       	call   0x4d1b5a
  49f6ed:	8d 55 b8             	lea    edx,[ebp-0x48]
  49f6f0:	52                   	push   edx
  49f6f1:	68 00 f3 50 00       	push   0x50f300
  49f6f6:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f6fc:	c6 45 fc 1f          	mov    BYTE PTR [ebp-0x4],0x1f
  49f700:	e8 6d 24 03 00       	call   0x4d1b72
  49f705:	8a 45 0f             	mov    al,BYTE PTR [ebp+0xf]
  49f708:	8b 55 c0             	mov    edx,DWORD PTR [ebp-0x40]
  49f70b:	83 c9 ff             	or     ecx,0xffffffff
  49f70e:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
  49f711:	33 c0                	xor    eax,eax
  49f713:	8b fa                	mov    edi,edx
  49f715:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  49f718:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  49f71b:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  49f71e:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  49f720:	f7 d1                	not    ecx
  49f722:	49                   	dec    ecx
  49f723:	51                   	push   ecx
  49f724:	52                   	push   edx
  49f725:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49f728:	ff                   	.byte 0xff
  49f729:	15                   	.byte 0x15

; Objets: contenu du conteneur ; 004A5950--004A5A05
  4a5950:	00 ff                	add    bh,bh
  4a5952:	52                   	push   edx
  4a5953:	4c                   	dec    esp
  4a5954:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4a5957:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a595a:	50                   	push   eax
  4a595b:	8d 95 24 f7 ff ff    	lea    edx,[ebp-0x8dc]
  4a5961:	68 ec f3 50 00       	push   0x50f3ec
  4a5966:	c6 85 24 f7 ff ff 00 	mov    BYTE PTR [ebp-0x8dc],0x0
  4a596d:	8b 19                	mov    ebx,DWORD PTR [ecx]
  4a596f:	52                   	push   edx
  4a5970:	8b f8                	mov    edi,eax
  4a5972:	e8 c9 df f5 ff       	call   0x403940
  4a5977:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a597a:	83 c4 0c             	add    esp,0xc
  4a597d:	50                   	push   eax
  4a597e:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  4a5981:	50                   	push   eax
  4a5982:	ff 53 04             	call   DWORD PTR [ebx+0x4]
  4a5985:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  4a5988:	53                   	push   ebx
  4a5989:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a598f:	e8 ea c1 02 00       	call   0x4d1b7e
  4a5994:	6a 00                	push   0x0
  4a5996:	57                   	push   edi
  4a5997:	8d 8d 24 f7 ff ff    	lea    ecx,[ebp-0x8dc]
  4a599d:	68 ac f3 50 00       	push   0x50f3ac
  4a59a2:	51                   	push   ecx
  4a59a3:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4a59a7:	e8 94 df f5 ff       	call   0x403940
  4a59ac:	83 c4 0c             	add    esp,0xc
  4a59af:	50                   	push   eax
  4a59b0:	6a 04                	push   0x4
  4a59b2:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a59b8:	e8 bb c1 02 00       	call   0x4d1b78
  4a59bd:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a59c3:	e8 9e c1 02 00       	call   0x4d1b66
  4a59c8:	85 c0                	test   eax,eax
  4a59ca:	0f 85 81 00 00 00    	jne    0x4a5a51
  4a59d0:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a59d6:	e8 85 c1 02 00       	call   0x4d1b60
  4a59db:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a59e1:	e8 80 c1 02 00       	call   0x4d1b66
  4a59e6:	85 c0                	test   eax,eax
  4a59e8:	75 78                	jne    0x4a5a62
  4a59ea:	8d 7e 18             	lea    edi,[esi+0x18]
  4a59ed:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  4a59f0:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  4a59f3:	52                   	push   edx
  4a59f4:	50                   	push   eax
  4a59f5:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4a59f8:	e8 b3 0a 00 00       	call   0x4a64b0
  4a59fd:	53                   	push   ebx
  4a59fe:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a5a04:	51                   	push   ecx
