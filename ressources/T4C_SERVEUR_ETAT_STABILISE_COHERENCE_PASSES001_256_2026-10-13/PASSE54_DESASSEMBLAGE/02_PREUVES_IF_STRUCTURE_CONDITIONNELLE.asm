; T4C Server.exe — preuve passe 54 SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; VA demi-ouvertes. Code seulement, tables de données explicitement exclues.

; [0x0040e908,0x0040ed7e) — IF: allocations de trois branches, analyse ? et :, comparateurs, réanalyse récursive, diagnostics
  40e908:	6a 0c                	push   0xc
  40e90a:	75 38                	jne    0x40e944
  40e90c:	e8 df 36 03 00       	call   0x441ff0
  40e911:	83 c4 04             	add    esp,0x4
  40e914:	85 c0                	test   eax,eax
  40e916:	74 0f                	je     0x40e927
  40e918:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e91e:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40e925:	eb 02                	jmp    0x40e929
  40e927:	33 c0                	xor    eax,eax
  40e929:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e92c:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e92f:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40e932:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e938:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40e93b:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40e942:	eb 37                	jmp    0x40e97b
  40e944:	e8 a7 36 03 00       	call   0x441ff0
  40e949:	83 c4 04             	add    esp,0x4
  40e94c:	85 c0                	test   eax,eax
  40e94e:	74 0f                	je     0x40e95f
  40e950:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e956:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40e95d:	eb 02                	jmp    0x40e961
  40e95f:	33 c0                	xor    eax,eax
  40e961:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e964:	89 01                	mov    DWORD PTR [ecx],eax
  40e966:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40e969:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e96c:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e96f:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40e972:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40e975:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e97b:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e97e:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40e981:	8b 7b 18             	mov    edi,DWORD PTR [ebx+0x18]
  40e984:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40e987:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40e98a:	42                   	inc    edx
  40e98b:	85 c0                	test   eax,eax
  40e98d:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e990:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40e997:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40e99b:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40e99e:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40e9a1:	6a 0c                	push   0xc
  40e9a3:	75 38                	jne    0x40e9dd
  40e9a5:	e8 46 36 03 00       	call   0x441ff0
  40e9aa:	83 c4 04             	add    esp,0x4
  40e9ad:	85 c0                	test   eax,eax
  40e9af:	74 0f                	je     0x40e9c0
  40e9b1:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e9b7:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40e9be:	eb 02                	jmp    0x40e9c2
  40e9c0:	33 c0                	xor    eax,eax
  40e9c2:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40e9c5:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40e9c8:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40e9cb:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e9d1:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  40e9d4:	c7 42 04 00 00 00 00 	mov    DWORD PTR [edx+0x4],0x0
  40e9db:	eb 37                	jmp    0x40ea14
  40e9dd:	e8 0e 36 03 00       	call   0x441ff0
  40e9e2:	83 c4 04             	add    esp,0x4
  40e9e5:	85 c0                	test   eax,eax
  40e9e7:	74 0f                	je     0x40e9f8
  40e9e9:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40e9ef:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40e9f6:	eb 02                	jmp    0x40e9fa
  40e9f8:	33 c0                	xor    eax,eax
  40e9fa:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40e9fd:	89 01                	mov    DWORD PTR [ecx],eax
  40e9ff:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40ea02:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40ea05:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40ea08:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40ea0b:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40ea0e:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40ea14:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40ea17:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40ea1a:	8b 7b 14             	mov    edi,DWORD PTR [ebx+0x14]
  40ea1d:	8b 46 54             	mov    eax,DWORD PTR [esi+0x54]
  40ea20:	8b 56 64             	mov    edx,DWORD PTR [esi+0x64]
  40ea23:	42                   	inc    edx
  40ea24:	85 c0                	test   eax,eax
  40ea26:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40ea29:	c7 46 6c 00 00 00 00 	mov    DWORD PTR [esi+0x6c],0x0
  40ea30:	c6 46 60 08          	mov    BYTE PTR [esi+0x60],0x8
  40ea34:	89 46 58             	mov    DWORD PTR [esi+0x58],eax
  40ea37:	89 56 64             	mov    DWORD PTR [esi+0x64],edx
  40ea3a:	6a 0c                	push   0xc
  40ea3c:	75 38                	jne    0x40ea76
  40ea3e:	e8 ad 35 03 00       	call   0x441ff0
  40ea43:	83 c4 04             	add    esp,0x4
  40ea46:	85 c0                	test   eax,eax
  40ea48:	74 0f                	je     0x40ea59
  40ea4a:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40ea50:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40ea57:	eb 02                	jmp    0x40ea5b
  40ea59:	33 c0                	xor    eax,eax
  40ea5b:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40ea5e:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40ea61:	89 46 50             	mov    DWORD PTR [esi+0x50],eax
  40ea64:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40ea6a:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  40ea6d:	c7 42 04 00 00 00 00 	mov    DWORD PTR [edx+0x4],0x0
  40ea74:	eb 37                	jmp    0x40eaad
  40ea76:	e8 75 35 03 00       	call   0x441ff0
  40ea7b:	83 c4 04             	add    esp,0x4
  40ea7e:	85 c0                	test   eax,eax
  40ea80:	74 0f                	je     0x40ea91
  40ea82:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40ea88:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
  40ea8f:	eb 02                	jmp    0x40ea93
  40ea91:	33 c0                	xor    eax,eax
  40ea93:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40ea96:	89 01                	mov    DWORD PTR [ecx],eax
  40ea98:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  40ea9b:	89 46 54             	mov    DWORD PTR [esi+0x54],eax
  40ea9e:	89 46 4c             	mov    DWORD PTR [esi+0x4c],eax
  40eaa1:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  40eaa4:	8b 46 4c             	mov    eax,DWORD PTR [esi+0x4c]
  40eaa7:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
  40eaad:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  40eab0:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  40eab3:	8b 7b 1c             	mov    edi,DWORD PTR [ebx+0x1c]
  40eab6:	33 c0                	xor    eax,eax
  40eab8:	c6 43 11 02          	mov    BYTE PTR [ebx+0x11],0x2
  40eabc:	b9 08 00 00 00       	mov    ecx,0x8
  40eac1:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40eac3:	8b 7b 18             	mov    edi,DWORD PTR [ebx+0x18]
  40eac6:	b9 08 00 00 00       	mov    ecx,0x8
  40eacb:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40eacd:	8b 7b 14             	mov    edi,DWORD PTR [ebx+0x14]
  40ead0:	b9 08 00 00 00       	mov    ecx,0x8
  40ead5:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40ead7:	8b 7b 14             	mov    edi,DWORD PTR [ebx+0x14]
  40eada:	83 c7 20             	add    edi,0x20
  40eadd:	b9 08 00 00 00       	mov    ecx,0x8
  40eae2:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  40eae4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40eae7:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  40eaea:	8d 50 01             	lea    edx,[eax+0x1]
  40eaed:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
  40eaf0:	c7 45 e4 ff ff ff ff 	mov    DWORD PTR [ebp-0x1c],0xffffffff
  40eaf7:	c6 45 0c 00          	mov    BYTE PTR [ebp+0xc],0x0
  40eafb:	40                   	inc    eax
  40eafc:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40eaff:	0f be 0c 38          	movsx  ecx,BYTE PTR [eax+edi*1]
  40eb03:	83 f9 3e             	cmp    ecx,0x3e
  40eb06:	77 f3                	ja     0x40eafb
  40eb08:	33 d2                	xor    edx,edx
  40eb0a:	8a 91 98 f1 40 00    	mov    dl,BYTE PTR [ecx+0x40f198]
  40eb10:	ff 24 95 84 f1 40 00 	jmp    DWORD PTR [edx*4+0x40f184]
  40eb17:	8a 4c 38 01          	mov    cl,BYTE PTR [eax+edi*1+0x1]
  40eb1b:	80 f9 3e             	cmp    cl,0x3e
  40eb1e:	8b d0                	mov    edx,eax
  40eb20:	75 0f                	jne    0x40eb31
  40eb22:	83 c0 02             	add    eax,0x2
  40eb25:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40eb28:	c6 45 0c 06          	mov    BYTE PTR [ebp+0xc],0x6
  40eb2c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40eb2f:	eb 53                	jmp    0x40eb84
  40eb31:	80 f9 3d             	cmp    cl,0x3d
  40eb34:	75 0f                	jne    0x40eb45
  40eb36:	83 c0 02             	add    eax,0x2
  40eb39:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40eb3c:	c6 45 0c 05          	mov    BYTE PTR [ebp+0xc],0x5
  40eb40:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40eb43:	eb 3f                	jmp    0x40eb84
  40eb45:	40                   	inc    eax
  40eb46:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40eb49:	c6 45 0c 02          	mov    BYTE PTR [ebp+0xc],0x2
  40eb4d:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40eb50:	eb 32                	jmp    0x40eb84
  40eb52:	80 7c 38 01 3d       	cmp    BYTE PTR [eax+edi*1+0x1],0x3d
  40eb57:	8b d0                	mov    edx,eax
  40eb59:	75 0f                	jne    0x40eb6a
  40eb5b:	83 c0 02             	add    eax,0x2
  40eb5e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40eb61:	c6 45 0c 04          	mov    BYTE PTR [ebp+0xc],0x4
  40eb65:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40eb68:	eb 1a                	jmp    0x40eb84
  40eb6a:	40                   	inc    eax
  40eb6b:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40eb6e:	c6 45 0c 01          	mov    BYTE PTR [ebp+0xc],0x1
  40eb72:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40eb75:	eb 0d                	jmp    0x40eb84
  40eb77:	8b d0                	mov    edx,eax
  40eb79:	40                   	inc    eax
  40eb7a:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40eb7d:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  40eb80:	c6 45 0c 03          	mov    BYTE PTR [ebp+0xc],0x3
  40eb84:	83 fa ff             	cmp    edx,0xffffffff
  40eb87:	75 07                	jne    0x40eb90
  40eb89:	e9 6d ff ff ff       	jmp    0x40eafb
  40eb8e:	33 d2                	xor    edx,edx
  40eb90:	83 7d e4 ff          	cmp    DWORD PTR [ebp-0x1c],0xffffffff
  40eb94:	0f 84 b4 01 00 00    	je     0x40ed4e
  40eb9a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40eb9d:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  40eba0:	25 ff 00 00 00       	and    eax,0xff
  40eba5:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  40eba8:	db 45 0c             	fild   DWORD PTR [ebp+0xc]
  40ebab:	8d 04 39             	lea    eax,[ecx+edi*1]
  40ebae:	8b ce                	mov    ecx,esi
  40ebb0:	dd 5b 08             	fstp   QWORD PTR [ebx+0x8]
  40ebb3:	c6 04 3a 00          	mov    BYTE PTR [edx+edi*1],0x0
  40ebb7:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
  40ebba:	52                   	push   edx
  40ebbb:	50                   	push   eax
  40ebbc:	e8 3f d8 ff ff       	call   0x40c400
  40ebc1:	85 c0                	test   eax,eax
  40ebc3:	75 07                	jne    0x40ebcc
  40ebc5:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40ebcc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40ebcf:	8a 0c 38             	mov    cl,BYTE PTR [eax+edi*1]
  40ebd2:	80 f9 3f             	cmp    cl,0x3f
  40ebd5:	74 5c                	je     0x40ec33
  40ebd7:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  40ebda:	85 d2                	test   edx,edx
  40ebdc:	0f 85 f9 04 00 00    	jne    0x40f0db
  40ebe2:	80 f9 28             	cmp    cl,0x28
  40ebe5:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  40ebe8:	75 1e                	jne    0x40ec08
  40ebea:	57                   	push   edi
  40ebeb:	8d 45 f0             	lea    eax,[ebp-0x10]
  40ebee:	50                   	push   eax
  40ebef:	8b ce                	mov    ecx,esi
  40ebf1:	e8 9a d7 ff ff       	call   0x40c390
  40ebf6:	85 c0                	test   eax,eax
  40ebf8:	75 07                	jne    0x40ec01
  40ebfa:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40ec01:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40ec04:	48                   	dec    eax
  40ec05:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40ec08:	80 3c 38 00          	cmp    BYTE PTR [eax+edi*1],0x0
  40ec0c:	75 19                	jne    0x40ec27
  40ec0e:	68 48 09 50 00       	push   0x500948
  40ec13:	6a 08                	push   0x8
  40ec15:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40ec1c:	e8 1f 31 06 00       	call   0x471d40
  40ec21:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  40ec24:	83 c4 08             	add    esp,0x8
  40ec27:	40                   	inc    eax
  40ec28:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  40ec2b:	8a 0c 38             	mov    cl,BYTE PTR [eax+edi*1]
  40ec2e:	80 f9 3f             	cmp    cl,0x3f
  40ec31:	75 a4                	jne    0x40ebd7
  40ec33:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  40ec36:	85 c9                	test   ecx,ecx
  40ec38:	0f 85 9d 04 00 00    	jne    0x40f0db
  40ec3e:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  40ec41:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  40ec44:	c6 04 38 00          	mov    BYTE PTR [eax+edi*1],0x0
  40ec48:	8b 53 1c             	mov    edx,DWORD PTR [ebx+0x1c]
  40ec4b:	03 cf                	add    ecx,edi
  40ec4d:	52                   	push   edx
  40ec4e:	51                   	push   ecx
  40ec4f:	8b ce                	mov    ecx,esi
  40ec51:	e8 aa d7 ff ff       	call   0x40c400
  40ec56:	85 c0                	test   eax,eax
  40ec58:	75 07                	jne    0x40ec61
  40ec5a:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40ec61:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  40ec64:	41                   	inc    ecx
  40ec65:	8d 04 39             	lea    eax,[ecx+edi*1]
  40ec68:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  40ec6b:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  40ec6e:	8a 00                	mov    al,BYTE PTR [eax]
  40ec70:	3c 3a                	cmp    al,0x3a
  40ec72:	74 32                	je     0x40eca6
  40ec74:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  40ec77:	85 d2                	test   edx,edx
  40ec79:	75 2b                	jne    0x40eca6
  40ec7b:	3c 28                	cmp    al,0x28
  40ec7d:	75 19                	jne    0x40ec98
  40ec7f:	57                   	push   edi
  40ec80:	8d 45 f0             	lea    eax,[ebp-0x10]
  40ec83:	50                   	push   eax
  40ec84:	8b ce                	mov    ecx,esi
  40ec86:	e8 05 d7 ff ff       	call   0x40c390
  40ec8b:	85 c0                	test   eax,eax
  40ec8d:	75 0d                	jne    0x40ec9c
  40ec8f:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40ec96:	eb 04                	jmp    0x40ec9c
  40ec98:	41                   	inc    ecx
  40ec99:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  40ec9c:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  40ec9f:	8a 04 39             	mov    al,BYTE PTR [ecx+edi*1]
  40eca2:	3c 3a                	cmp    al,0x3a
  40eca4:	75 ce                	jne    0x40ec74
  40eca6:	c6 04 39 00          	mov    BYTE PTR [ecx+edi*1],0x0
  40ecaa:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  40ecad:	41                   	inc    ecx
  40ecae:	8d 04 39             	lea    eax,[ecx+edi*1]
  40ecb1:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  40ecb4:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  40ecb7:	8a 00                	mov    al,BYTE PTR [eax]
  40ecb9:	3c 29                	cmp    al,0x29
  40ecbb:	74 32                	je     0x40ecef
  40ecbd:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  40ecc0:	85 d2                	test   edx,edx
  40ecc2:	75 76                	jne    0x40ed3a
  40ecc4:	3c 28                	cmp    al,0x28
  40ecc6:	75 19                	jne    0x40ece1
  40ecc8:	57                   	push   edi
  40ecc9:	8d 4d f0             	lea    ecx,[ebp-0x10]
  40eccc:	51                   	push   ecx
  40eccd:	8b ce                	mov    ecx,esi
  40eccf:	e8 bc d6 ff ff       	call   0x40c390
  40ecd4:	85 c0                	test   eax,eax
  40ecd6:	75 0d                	jne    0x40ece5
  40ecd8:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40ecdf:	eb 04                	jmp    0x40ece5
  40ece1:	41                   	inc    ecx
  40ece2:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  40ece5:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  40ece8:	8a 04 39             	mov    al,BYTE PTR [ecx+edi*1]
  40eceb:	3c 29                	cmp    al,0x29
  40eced:	75 ce                	jne    0x40ecbd
  40ecef:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  40ecf2:	85 c0                	test   eax,eax
  40ecf4:	75 44                	jne    0x40ed3a
  40ecf6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40ecf9:	c6 04 39 00          	mov    BYTE PTR [ecx+edi*1],0x0
  40ecfd:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  40ed00:	8b 53 14             	mov    edx,DWORD PTR [ebx+0x14]
  40ed03:	41                   	inc    ecx
  40ed04:	83 c2 20             	add    edx,0x20
  40ed07:	52                   	push   edx
  40ed08:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  40ed0b:	50                   	push   eax
  40ed0c:	8b ce                	mov    ecx,esi
  40ed0e:	e8 ed d6 ff ff       	call   0x40c400
  40ed13:	85 c0                	test   eax,eax
  40ed15:	74 17                	je     0x40ed2e
  40ed17:	8b 4b 14             	mov    ecx,DWORD PTR [ebx+0x14]
  40ed1a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  40ed1d:	51                   	push   ecx
  40ed1e:	52                   	push   edx
  40ed1f:	8b ce                	mov    ecx,esi
  40ed21:	e8 da d6 ff ff       	call   0x40c400
  40ed26:	85 c0                	test   eax,eax
  40ed28:	0f 85 ad 03 00 00    	jne    0x40f0db
  40ed2e:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40ed35:	e9 a1 03 00 00       	jmp    0x40f0db
  40ed3a:	68 fc 08 50 00       	push   0x5008fc
  40ed3f:	6a 08                	push   0x8
  40ed41:	e8 fa 2f 06 00       	call   0x471d40
  40ed46:	83 c4 08             	add    esp,0x8
  40ed49:	e9 8d 03 00 00       	jmp    0x40f0db
  40ed4e:	68 b4 08 50 00       	push   0x5008b4
  40ed53:	6a 04                	push   0x4
  40ed55:	e8 e6 2f 06 00       	call   0x471d40
  40ed5a:	83 c4 08             	add    esp,0x8
  40ed5d:	e9 79 03 00 00       	jmp    0x40f0db
  40ed62:	57                   	push   edi
  40ed63:	68 80 08 50 00       	push   0x500880
  40ed68:	6a 08                	push   0x8
  40ed6a:	c7 45 ec 01 00 00 00 	mov    DWORD PTR [ebp-0x14],0x1
  40ed71:	e8 ca 2f 06 00       	call   0x471d40
  40ed76:	83 c4 0c             	add    esp,0xc
  40ed79:	e9 5d 03 00 00       	jmp    0x40f0db

