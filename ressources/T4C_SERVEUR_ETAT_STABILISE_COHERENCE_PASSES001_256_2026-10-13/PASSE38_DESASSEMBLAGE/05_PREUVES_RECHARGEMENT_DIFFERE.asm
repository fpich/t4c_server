; Passe 38, analyse statique de T4C Server(1).exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses x86, cote stop exclusif; preuves selectionnees pour des contrats documentes, pas des dumps aveugles.

; Unit::LoadEffects: construction du lot de donnees pour traitement differe  [0x48E8A0,0x48E9F0)  112 instructions
  48e8a0:	55                   	push   ebp
  48e8a1:	8b ec                	mov    ebp,esp
  48e8a3:	6a ff                	push   0xffffffff
  48e8a5:	68 20 a8 4d 00       	push   0x4da820
  48e8aa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48e8b0:	50                   	push   eax
  48e8b1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48e8b8:	81 ec 20 01 00 00    	sub    esp,0x120
  48e8be:	56                   	push   esi
  48e8bf:	57                   	push   edi
  48e8c0:	8b f9                	mov    edi,ecx
  48e8c2:	8d 4d f0             	lea    ecx,[ebp-0x10]
  48e8c5:	e8 94 31 04 00       	call   0x4d1a5e
  48e8ca:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48e8cd:	8b 47 78             	mov    eax,DWORD PTR [edi+0x78]
  48e8d0:	51                   	push   ecx
  48e8d1:	50                   	push   eax
  48e8d2:	8d 55 f0             	lea    edx,[ebp-0x10]
  48e8d5:	68 1c e0 50 00       	push   0x50e01c
  48e8da:	52                   	push   edx
  48e8db:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48e8e2:	e8 ad 31 04 00       	call   0x4d1a94
  48e8e7:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  48e8ea:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  48e8ed:	83 c4 10             	add    esp,0x10
  48e8f0:	6a 00                	push   0x0
  48e8f2:	50                   	push   eax
  48e8f3:	8b ce                	mov    ecx,esi
  48e8f5:	e8 86 04 fc ff       	call   0x44ed80
  48e8fa:	85 c0                	test   eax,eax
  48e8fc:	0f 84 bd 00 00 00    	je     0x48e9bf
  48e902:	8b ce                	mov    ecx,esi
  48e904:	e8 57 04 fc ff       	call   0x44ed60
  48e909:	85 c0                	test   eax,eax
  48e90b:	0f 84 ae 00 00 00    	je     0x48e9bf
  48e911:	81 c7 94 00 00 00    	add    edi,0x94
  48e917:	8d 4d e8             	lea    ecx,[ebp-0x18]
  48e91a:	e8 3f 31 04 00       	call   0x4d1a5e
  48e91f:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  48e922:	51                   	push   ecx
  48e923:	6a 01                	push   0x1
  48e925:	8b ce                	mov    ecx,esi
  48e927:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  48e92b:	e8 e0 05 fc ff       	call   0x44ef10
  48e930:	8d 55 d8             	lea    edx,[ebp-0x28]
  48e933:	52                   	push   edx
  48e934:	6a 02                	push   0x2
  48e936:	8b ce                	mov    ecx,esi
  48e938:	e8 b3 06 fc ff       	call   0x44eff0
  48e93d:	8d 45 dc             	lea    eax,[ebp-0x24]
  48e940:	50                   	push   eax
  48e941:	6a 03                	push   0x3
  48e943:	8b ce                	mov    ecx,esi
  48e945:	e8 c6 05 fc ff       	call   0x44ef10
  48e94a:	68 00 01 00 00       	push   0x100
  48e94f:	8d 8d d4 fe ff ff    	lea    ecx,[ebp-0x12c]
  48e955:	51                   	push   ecx
  48e956:	6a 04                	push   0x4
  48e958:	8b ce                	mov    ecx,esi
  48e95a:	e8 c1 07 fc ff       	call   0x44f120
  48e95f:	8d 55 e0             	lea    edx,[ebp-0x20]
  48e962:	52                   	push   edx
  48e963:	6a 05                	push   0x5
  48e965:	8b ce                	mov    ecx,esi
  48e967:	e8 a4 05 fc ff       	call   0x44ef10
  48e96c:	8d 45 e4             	lea    eax,[ebp-0x1c]
  48e96f:	50                   	push   eax
  48e970:	6a 06                	push   0x6
  48e972:	8b ce                	mov    ecx,esi
  48e974:	e8 97 05 fc ff       	call   0x44ef10
  48e979:	8d 4d ec             	lea    ecx,[ebp-0x14]
  48e97c:	51                   	push   ecx
  48e97d:	6a 07                	push   0x7
  48e97f:	8b ce                	mov    ecx,esi
  48e981:	e8 8a 05 fc ff       	call   0x44ef10
  48e986:	8d 95 d4 fe ff ff    	lea    edx,[ebp-0x12c]
  48e98c:	52                   	push   edx
  48e98d:	8d 4d e8             	lea    ecx,[ebp-0x18]
  48e990:	e8 c3 30 04 00       	call   0x4d1a58
  48e995:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  48e998:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  48e99b:	51                   	push   ecx
  48e99c:	50                   	push   eax
  48e99d:	8b cf                	mov    ecx,edi
  48e99f:	e8 6c 14 00 00       	call   0x48fe10
  48e9a4:	8d 4d e8             	lea    ecx,[ebp-0x18]
  48e9a7:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  48e9ab:	e8 90 30 04 00       	call   0x4d1a40
  48e9b0:	8b ce                	mov    ecx,esi
  48e9b2:	e8 a9 03 fc ff       	call   0x44ed60
  48e9b7:	85 c0                	test   eax,eax
  48e9b9:	0f 85 58 ff ff ff    	jne    0x48e917
  48e9bf:	8d 4d f0             	lea    ecx,[ebp-0x10]
  48e9c2:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48e9c9:	e8 72 30 04 00       	call   0x4d1a40
  48e9ce:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48e9d1:	5f                   	pop    edi
  48e9d2:	5e                   	pop    esi
  48e9d3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48e9da:	8b e5                	mov    esp,ebp
  48e9dc:	5d                   	pop    ebp
  48e9dd:	c2 08 00             	ret    0x8
  48e9e0:	83 c1 14             	add    ecx,0x14
  48e9e3:	e9 58 30 04 00       	jmp    0x4d1a40
  48e9e8:	90                   	nop
  48e9e9:	90                   	nop
  48e9ea:	90                   	nop
  48e9eb:	90                   	nop
  48e9ec:	90                   	nop
  48e9ed:	90                   	nop
  48e9ee:	90                   	nop
  48e9ef:	90                   	nop

; Unit::DeferredLoadEffects: debut et selection callback  [0x48E9F0,0x48EAA0)  58 instructions
  48e9f0:	55                   	push   ebp
  48e9f1:	8b ec                	mov    ebp,esp
  48e9f3:	6a ff                	push   0xffffffff
  48e9f5:	68 46 a8 4d 00       	push   0x4da846
  48e9fa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48ea00:	50                   	push   eax
  48ea01:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48ea08:	81 ec 1c 02 00 00    	sub    esp,0x21c
  48ea0e:	53                   	push   ebx
  48ea0f:	56                   	push   esi
  48ea10:	57                   	push   edi
  48ea11:	8b f9                	mov    edi,ecx
  48ea13:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  48ea16:	8d 4f 30             	lea    ecx,[edi+0x30]
  48ea19:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48ea1c:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
  48ea1f:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48ea22:	8b 87 98 00 00 00    	mov    eax,DWORD PTR [edi+0x98]
  48ea28:	85 c0                	test   eax,eax
  48ea2a:	75 04                	jne    0x48ea30
  48ea2c:	33 f6                	xor    esi,esi
  48ea2e:	eb 02                	jmp    0x48ea32
  48ea30:	8b 30                	mov    esi,DWORD PTR [eax]
  48ea32:	8b 87 98 00 00 00    	mov    eax,DWORD PTR [edi+0x98]
  48ea38:	3b f0                	cmp    esi,eax
  48ea3a:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  48ea3d:	0f 84 b9 01 00 00    	je     0x48ebfc
  48ea43:	eb 03                	jmp    0x48ea48
  48ea45:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
  48ea48:	6a 20                	push   0x20
  48ea4a:	e8 a1 35 fb ff       	call   0x441ff0
  48ea4f:	8b d8                	mov    ebx,eax
  48ea51:	e8 3a 38 fe ff       	call   0x472290
  48ea56:	03 46 10             	add    eax,DWORD PTR [esi+0x10]
  48ea59:	89 43 10             	mov    DWORD PTR [ebx+0x10],eax
  48ea5c:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  48ea5f:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  48ea62:	8a 56 0c             	mov    dl,BYTE PTR [esi+0xc]
  48ea65:	88 13                	mov    BYTE PTR [ebx],dl
  48ea67:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  48ea6a:	89 43 14             	mov    DWORD PTR [ebx+0x14],eax
  48ea6d:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  48ea70:	89 4b 18             	mov    DWORD PTR [ebx+0x18],ecx
  48ea73:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48ea76:	89 53 1c             	mov    DWORD PTR [ebx+0x1c],edx
  48ea79:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  48ea7c:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  48ea7f:	8b 48 f8             	mov    ecx,DWORD PTR [eax-0x8]
  48ea82:	52                   	push   edx
  48ea83:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
  48ea86:	e8 b5 20 00 00       	call   0x490b40
  48ea8b:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  48ea8e:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  48ea91:	83 c4 08             	add    esp,0x8
  48ea94:	85 c0                	test   eax,eax
  48ea96:	0f 86 4f 01 00 00    	jbe    0x48ebeb
  48ea9c:	8b 76 1c             	mov    esi,DWORD PTR [esi+0x1c]
  48ea9f:	83                   	.byte 0x83

; Unit::DeferredLoadEffects: appel code 0x18 et ajout a Unit+0xF4  [0x48EA9F,0x48EBFC)  116 instructions
  48ea9f:	83 c9 ff             	or     ecx,0xffffffff
  48eaa2:	33 c0                	xor    eax,eax
  48eaa4:	8b fe                	mov    edi,esi
  48eaa6:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  48eaa8:	f7 d1                	not    ecx
  48eaaa:	2b f9                	sub    edi,ecx
  48eaac:	8b c1                	mov    eax,ecx
  48eaae:	c1 e9 02             	shr    ecx,0x2
  48eab1:	8d 95 d8 fd ff ff    	lea    edx,[ebp-0x228]
  48eab7:	8b f7                	mov    esi,edi
  48eab9:	8b fa                	mov    edi,edx
  48eabb:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  48eabd:	8b c8                	mov    ecx,eax
  48eabf:	83 e1 03             	and    ecx,0x3
  48eac2:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  48eac4:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
  48eac7:	33 c9                	xor    ecx,ecx
  48eac9:	8b c6                	mov    eax,esi
  48eacb:	d1 e8                	shr    eax,1
  48eacd:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
  48ead0:	88 45 d8             	mov    BYTE PTR [ebp-0x28],al
  48ead3:	40                   	inc    eax
  48ead4:	89 4d dc             	mov    DWORD PTR [ebp-0x24],ecx
  48ead7:	50                   	push   eax
  48ead8:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
  48eadb:	e8 20 fa 03 00       	call   0x4ce500
  48eae0:	56                   	push   esi
  48eae1:	50                   	push   eax
  48eae2:	8d 95 d8 fd ff ff    	lea    edx,[ebp-0x228]
  48eae8:	52                   	push   edx
  48eae9:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  48eaec:	e8 bf fb ff ff       	call   0x48e6b0
  48eaf1:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  48eaf4:	83 c4 10             	add    esp,0x10
  48eaf7:	85 c0                	test   eax,eax
  48eaf9:	0f 84 c7 00 00 00    	je     0x48ebc6
  48eaff:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  48eb02:	8d 85 d8 fd ff ff    	lea    eax,[ebp-0x228]
  48eb08:	50                   	push   eax
  48eb09:	51                   	push   ecx
  48eb0a:	68 d8 e0 50 00       	push   0x50e0d8
  48eb0f:	68 00 02 00 00       	push   0x200
  48eb14:	e8 27 32 fe ff       	call   0x471d40
  48eb19:	8b 7d ec             	mov    edi,DWORD PTR [ebp-0x14]
  48eb1c:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  48eb1f:	8d 55 d8             	lea    edx,[ebp-0x28]
  48eb22:	52                   	push   edx
  48eb23:	53                   	push   ebx
  48eb24:	6a 00                	push   0x0
  48eb26:	6a 00                	push   0x0
  48eb28:	57                   	push   edi
  48eb29:	50                   	push   eax
  48eb2a:	6a 18                	push   0x18
  48eb2c:	ff 53 08             	call   DWORD PTR [ebx+0x8]
  48eb2f:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  48eb32:	8b 16                	mov    edx,DWORD PTR [esi]
  48eb34:	83 c4 2c             	add    esp,0x2c
  48eb37:	8b ce                	mov    ecx,esi
  48eb39:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48eb3c:	8b 87 f4 00 00 00    	mov    eax,DWORD PTR [edi+0xf4]
  48eb42:	85 c0                	test   eax,eax
  48eb44:	75 53                	jne    0x48eb99
  48eb46:	6a 44                	push   0x44
  48eb48:	e8 a3 34 fb ff       	call   0x441ff0
  48eb4d:	8b f0                	mov    esi,eax
  48eb4f:	83 c4 04             	add    esp,0x4
  48eb52:	89 75 e8             	mov    DWORD PTR [ebp-0x18],esi
  48eb55:	85 f6                	test   esi,esi
  48eb57:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48eb5e:	74 27                	je     0x48eb87
  48eb60:	8b ce                	mov    ecx,esi
  48eb62:	e8 89 42 f9 ff       	call   0x422df0
  48eb67:	33 c0                	xor    eax,eax
  48eb69:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48eb6c:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48eb6f:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  48eb72:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  48eb75:	c7 06 3c f8 4d 00    	mov    DWORD PTR [esi],0x4df83c
  48eb7b:	89 46 40             	mov    DWORD PTR [esi+0x40],eax
  48eb7e:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  48eb82:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  48eb85:	eb 02                	jmp    0x48eb89
  48eb87:	33 f6                	xor    esi,esi
  48eb89:	89 b7 f4 00 00 00    	mov    DWORD PTR [edi+0xf4],esi
  48eb8f:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  48eb92:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48eb99:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48eb9f:	8b 01                	mov    eax,DWORD PTR [ecx]
  48eba1:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48eba4:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48ebaa:	53                   	push   ebx
  48ebab:	e8 70 1e 00 00       	call   0x490a20
  48ebb0:	8b bf f4 00 00 00    	mov    edi,DWORD PTR [edi+0xf4]
  48ebb6:	8b 17                	mov    edx,DWORD PTR [edi]
  48ebb8:	8b cf                	mov    ecx,edi
  48ebba:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48ebbd:	8b 06                	mov    eax,DWORD PTR [esi]
  48ebbf:	8b ce                	mov    ecx,esi
  48ebc1:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48ebc4:	eb 13                	jmp    0x48ebd9
  48ebc6:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  48ebc9:	51                   	push   ecx
  48ebca:	68 a8 e0 50 00       	push   0x50e0a8
  48ebcf:	6a 04                	push   0x4
  48ebd1:	e8 6a 31 fe ff       	call   0x471d40
  48ebd6:	83 c4 0c             	add    esp,0xc
  48ebd9:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  48ebdc:	52                   	push   edx
  48ebdd:	e8 7e 34 fb ff       	call   0x442060
  48ebe2:	8b 7d ec             	mov    edi,DWORD PTR [ebp-0x14]
  48ebe5:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
  48ebe8:	83 c4 04             	add    esp,0x4
  48ebeb:	8b 36                	mov    esi,DWORD PTR [esi]
  48ebed:	3b b7 98 00 00 00    	cmp    esi,DWORD PTR [edi+0x98]
  48ebf3:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  48ebf6:	0f 85 49 fe ff ff    	jne    0x48ea45

