; Preuves assembleur T4C Server(1).exe : comparaison octet par octet avec .text.
; Les VA et les octets sont issus de objdump -d -M intel ; ne pas confondre octets verifies et comprehension exhaustive.
; Cette piece est une nouvelle contribution de la passe 33.

; Section : BeforeNPCThread context near ObjectTimer VerifyTimers : 0x00444D7D..0x00444DFC (fin exclusive)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00444d7d <.text+0x43d7d>:
  444d7d:	a1 cc 43 51 00       	mov    eax,ds:0x5143cc
  444d82:	50                   	push   eax
  444d83:	e8 d8 d2 ff ff       	call   0x442060
  444d88:	a1 c0 43 51 00       	mov    eax,ds:0x5143c0
  444d8d:	8b 0d e0 43 51 00    	mov    ecx,DWORD PTR ds:0x5143e0
  444d93:	83 c4 04             	add    esp,0x4
  444d96:	e9 5a fe ff ff       	jmp    0x444bf5
  444d9b:	3b cf                	cmp    ecx,edi
  444d9d:	74 07                	je     0x444da6
  444d9f:	c6 05 d4 43 51 00 07 	mov    BYTE PTR ds:0x5143d4,0x7
  444da6:	c7 05 e0 43 51 00 00 	mov    DWORD PTR ds:0x5143e0,0x0
  444dad:	00 00 00 
  444db0:	e8 4b f4 fe ff       	call   0x434200
  444db5:	8b 10                	mov    edx,DWORD PTR [eax]
  444db7:	68 a4 43 51 00       	push   0x5143a4
  444dbc:	8b c8                	mov    ecx,eax
  444dbe:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  444dc1:	68 a8 43 51 00       	push   0x5143a8
  444dc6:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  444dcc:	8d 8d 50 fe ff ff    	lea    ecx,[ebp-0x1b0]
  444dd2:	e8 d9 eb fe ff       	call   0x4339b0
  444dd7:	e8 64 92 00 00       	call   0x44e040
  444ddc:	e8 cf 49 04 00       	call   0x4897b0
  444de1:	6a 14                	push   0x14
  444de3:	ff 15 20 e1 4d 00    	call   DWORD PTR ds:0x4de120
  444de9:	8b 1d f8 e0 4d 00    	mov    ebx,DWORD PTR ds:0x4de0f8
  444def:	8b b5 c4 fe ff ff    	mov    esi,DWORD PTR [ebp-0x13c]
  444df5:	33 ff                	xor    edi,edi
  444df7:	e9 9c da ff ff       	jmp    0x442898


; Section : CPlayerManager::PlayerMaintenance selection + timer call : 0x00452870..0x00452C60 (fin exclusive)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00452870 <.text+0x51870>:
  452870:	55                   	push   ebp
  452871:	8b ec                	mov    ebp,esp
  452873:	6a ff                	push   0xffffffff
  452875:	68 49 6c 4d 00       	push   0x4d6c49
  45287a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  452880:	50                   	push   eax
  452881:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  452888:	81 ec f4 00 00 00    	sub    esp,0xf4
  45288e:	53                   	push   ebx
  45288f:	56                   	push   esi
  452890:	8b 35 14 e1 4d 00    	mov    esi,DWORD PTR ds:0x4de114
  452896:	57                   	push   edi
  452897:	ff d6                	call   esi
  452899:	50                   	push   eax
  45289a:	68 50 61 50 00       	push   0x506150
  45289f:	6a 04                	push   0x4
  4528a1:	e8 9a f4 01 00       	call   0x471d40
  4528a6:	a1 b4 42 51 00       	mov    eax,ds:0x5142b4
  4528ab:	25 ff ff 00 00       	and    eax,0xffff
  4528b0:	8d 04 40             	lea    eax,[eax+eax*2]
  4528b3:	8d 04 80             	lea    eax,[eax+eax*4]
  4528b6:	c1 e0 02             	shl    eax,0x2
  4528b9:	83 c4 0c             	add    esp,0xc
  4528bc:	8d 8d 00 ff ff ff    	lea    ecx,[ebp-0x100]
  4528c2:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
  4528c5:	e8 56 0e fe ff       	call   0x433720
  4528ca:	33 ff                	xor    edi,edi
  4528cc:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  4528cf:	ff d6                	call   esi
  4528d1:	50                   	push   eax
  4528d2:	68 c0 d4 01 00       	push   0x1d4c0
  4528d7:	51                   	push   ecx
  4528d8:	8b cc                	mov    ecx,esp
  4528da:	89 65 8c             	mov    DWORD PTR [ebp-0x74],esp
  4528dd:	68 34 61 50 00       	push   0x506134
  4528e2:	e8 7d f1 07 00       	call   0x4d1a64
  4528e7:	a1 ac 4a 51 00       	mov    eax,ds:0x514aac
  4528ec:	50                   	push   eax
  4528ed:	8d 8d 00 ff ff ff    	lea    ecx,[ebp-0x100]
  4528f3:	e8 e8 0e fe ff       	call   0x4337e0
  4528f8:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  4528fb:	51                   	push   ecx
  4528fc:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  452903:	c7 45 b0 ff ff ff ff 	mov    DWORD PTR [ebp-0x50],0xffffffff
  45290a:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  452910:	89 7d d0             	mov    DWORD PTR [ebp-0x30],edi
  452913:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
  452916:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
  452919:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
  45291c:	c7 45 ac 08 f4 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df408
  452923:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  452926:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  45292a:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
  45292d:	66 39 3d b6 42 51 00 	cmp    WORD PTR ds:0x5142b6,di
  452934:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  452938:	74 0d                	je     0x452947
  45293a:	8d 55 9c             	lea    edx,[ebp-0x64]
  45293d:	52                   	push   edx
  45293e:	ff 15 78 e3 4d 00    	call   DWORD PTR ds:0x4de378
  452944:	83 c4 04             	add    esp,0x4
  452947:	39 3d 30 4a 51 00    	cmp    DWORD PTR ds:0x514a30,edi
  45294d:	0f 84 55 07 00 00    	je     0x4530a8
  452953:	33 ff                	xor    edi,edi
  452955:	83 cb ff             	or     ebx,0xffffffff
  452958:	eb 05                	jmp    0x45295f
  45295a:	83 cb ff             	or     ebx,0xffffffff
  45295d:	33 ff                	xor    edi,edi
  45295f:	8d 8d 00 ff ff ff    	lea    ecx,[ebp-0x100]
  452965:	e8 46 10 fe ff       	call   0x4339b0
  45296a:	50                   	push   eax
  45296b:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  45296e:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
  452971:	58                   	pop    eax
  452972:	e8 89 18 fe ff       	call   0x434200
  452977:	8b 10                	mov    edx,DWORD PTR [eax]
  452979:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  45297c:	51                   	push   ecx
  45297d:	8b 4d 80             	mov    ecx,DWORD PTR [ebp-0x80]
  452980:	68 58 4a 51 00       	push   0x514a58
  452985:	51                   	push   ecx
  452986:	8b c8                	mov    ecx,eax
  452988:	ff 12                	call   DWORD PTR [edx]
  45298a:	68 60 4a 51 00       	push   0x514a60
  45298f:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  452995:	e8 66 18 fe ff       	call   0x434200
  45299a:	8b 10                	mov    edx,DWORD PTR [eax]
  45299c:	68 5c 4a 51 00       	push   0x514a5c
  4529a1:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  4529a4:	51                   	push   ecx
  4529a5:	8b c8                	mov    ecx,eax
  4529a7:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4529aa:	e8 d1 ee ff ff       	call   0x451880
  4529af:	8b f0                	mov    esi,eax
  4529b1:	3b f7                	cmp    esi,edi
  4529b3:	89 75 a8             	mov    DWORD PTR [ebp-0x58],esi
  4529b6:	0f 84 0f 01 00 00    	je     0x452acb
  4529bc:	8b ce                	mov    ecx,esi
  4529be:	e8 ed df fd ff       	call   0x4309b0
  4529c3:	8b d8                	mov    ebx,eax
  4529c5:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  4529c8:	3b cf                	cmp    ecx,edi
  4529ca:	0f 84 ef 00 00 00    	je     0x452abf
  4529d0:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  4529d3:	2b c1                	sub    eax,ecx
  4529d5:	c1 f8 04             	sar    eax,0x4
  4529d8:	0f 84 e1 00 00 00    	je     0x452abf
  4529de:	50                   	push   eax
  4529df:	68 14 61 50 00       	push   0x506114
  4529e4:	68 00 04 00 00       	push   0x400
  4529e9:	e8 52 f3 01 00       	call   0x471d40
  4529ee:	8b 0d a8 4a 51 00    	mov    ecx,DWORD PTR ds:0x514aa8
  4529f4:	33 c0                	xor    eax,eax
  4529f6:	83 c4 0c             	add    esp,0xc
  4529f9:	3b cf                	cmp    ecx,edi
  4529fb:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4529fe:	0f 8e bb 00 00 00    	jle    0x452abf
  452a04:	eb 02                	jmp    0x452a08
  452a06:	33 ff                	xor    edi,edi
  452a08:	8b 15 a0 4a 51 00    	mov    edx,DWORD PTR ds:0x514aa0
  452a0e:	8b 34 82             	mov    esi,DWORD PTR [edx+eax*4]
  452a11:	3b f7                	cmp    esi,edi
  452a13:	0f 84 8c 00 00 00    	je     0x452aa5
  452a19:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  452a1c:	3b 43 08             	cmp    eax,DWORD PTR [ebx+0x8]
  452a1f:	0f 84 80 00 00 00    	je     0x452aa5
  452a25:	8d 78 02             	lea    edi,[eax+0x2]
  452a28:	8b 47 02             	mov    eax,DWORD PTR [edi+0x2]
  452a2b:	3b 46 28             	cmp    eax,DWORD PTR [esi+0x28]
  452a2e:	75 68                	jne    0x452a98
  452a30:	66 8b 0f             	mov    cx,WORD PTR [edi]
  452a33:	66 3b 4e 26          	cmp    cx,WORD PTR [esi+0x26]
  452a37:	75 5f                	jne    0x452a98
  452a39:	68 f0 60 50 00       	push   0x5060f0
  452a3e:	68 00 04 00 00       	push   0x400
  452a43:	e8 f8 f2 01 00       	call   0x471d40
  452a48:	6a 05                	push   0x5
  452a4a:	e8 c1 f2 01 00       	call   0x471d10
  452a4f:	83 c4 0c             	add    esp,0xc
  452a52:	85 c0                	test   eax,eax
  452a54:	74 38                	je     0x452a8e
  452a56:	8d 55 84             	lea    edx,[ebp-0x7c]
  452a59:	52                   	push   edx
  452a5a:	8b ce                	mov    ecx,esi
  452a5c:	e8 ff 61 00 00       	call   0x458c60
  452a61:	8b 00                	mov    eax,DWORD PTR [eax]
  452a63:	50                   	push   eax
  452a64:	68 98 60 50 00       	push   0x506098
  452a69:	6a 40                	push   0x40
  452a6b:	6a 05                	push   0x5
  452a6d:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  452a71:	e8 9a f2 01 00       	call   0x471d10
  452a76:	83 c4 04             	add    esp,0x4
  452a79:	50                   	push   eax
  452a7a:	e8 71 c0 07 00       	call   0x4ceaf0
  452a7f:	83 c4 10             	add    esp,0x10
  452a82:	8d 4d 84             	lea    ecx,[ebp-0x7c]
  452a85:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  452a89:	e8 b2 ef 07 00       	call   0x4d1a40
  452a8e:	c7 86 18 01 00 00 01 	mov    DWORD PTR [esi+0x118],0x1
  452a95:	00 00 00 
  452a98:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  452a9b:	83 c7 10             	add    edi,0x10
  452a9e:	8d 4f fe             	lea    ecx,[edi-0x2]
  452aa1:	3b c8                	cmp    ecx,eax
  452aa3:	75 83                	jne    0x452a28
  452aa5:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  452aa8:	8b 0d a8 4a 51 00    	mov    ecx,DWORD PTR ds:0x514aa8
  452aae:	40                   	inc    eax
  452aaf:	3b c1                	cmp    eax,ecx
  452ab1:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  452ab4:	0f 8c 4c ff ff ff    	jl     0x452a06
  452aba:	8b 75 a8             	mov    esi,DWORD PTR [ebp-0x58]
  452abd:	33 ff                	xor    edi,edi
  452abf:	6a 01                	push   0x1
  452ac1:	8b ce                	mov    ecx,esi
  452ac3:	e8 08 df fd ff       	call   0x4309d0
  452ac8:	83 cb ff             	or     ebx,0xffffffff
  452acb:	a1 a8 4a 51 00       	mov    eax,ds:0x514aa8
  452ad0:	3b c7                	cmp    eax,edi
  452ad2:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  452ad5:	0f 8e a4 03 00 00    	jle    0x452e7f
  452adb:	8d 8d 00 ff ff ff    	lea    ecx,[ebp-0x100]
  452ae1:	e8 ca 0e fe ff       	call   0x4339b0
  452ae6:	8b 15 a0 4a 51 00    	mov    edx,DWORD PTR ds:0x514aa0
  452aec:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  452aef:	8b 34 82             	mov    esi,DWORD PTR [edx+eax*4]
  452af2:	3b f7                	cmp    esi,edi
  452af4:	0f 84 71 03 00 00    	je     0x452e6b
  452afa:	8b 16                	mov    edx,DWORD PTR [esi]
  452afc:	8b ce                	mov    ecx,esi
  452afe:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  452b01:	85 c0                	test   eax,eax
  452b03:	0f 84 62 03 00 00    	je     0x452e6b
  452b09:	39 be 18 01 00 00    	cmp    DWORD PTR [esi+0x118],edi
  452b0f:	75 0f                	jne    0x452b20
  452b11:	8b ce                	mov    ecx,esi
  452b13:	e8 88 4e 00 00       	call   0x4579a0
  452b18:	85 c0                	test   eax,eax
  452b1a:	0f 84 cb 00 00 00    	je     0x452beb
  452b20:	8b ce                	mov    ecx,esi
  452b22:	e8 e9 45 00 00       	call   0x457110
  452b27:	84 c0                	test   al,al
  452b29:	0f 85 bc 00 00 00    	jne    0x452beb
  452b2f:	39 be 18 01 00 00    	cmp    DWORD PTR [esi+0x118],edi
  452b35:	74 30                	je     0x452b67
  452b37:	8d 45 8c             	lea    eax,[ebp-0x74]
  452b3a:	50                   	push   eax
  452b3b:	8b ce                	mov    ecx,esi
  452b3d:	e8 1e 61 00 00       	call   0x458c60
  452b42:	8b 00                	mov    eax,DWORD PTR [eax]
  452b44:	50                   	push   eax
  452b45:	68 64 60 50 00       	push   0x506064
  452b4a:	68 00 08 00 00       	push   0x800
  452b4f:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  452b53:	e8 e8 f1 01 00       	call   0x471d40
  452b58:	83 c4 0c             	add    esp,0xc
  452b5b:	8d 4d 8c             	lea    ecx,[ebp-0x74]
  452b5e:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  452b62:	e8 d9 ee 07 00       	call   0x4d1a40
  452b67:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  452b6a:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  452b6d:	42                   	inc    edx
  452b6e:	3b c7                	cmp    eax,edi
  452b70:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  452b73:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  452b76:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  452b7a:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
  452b7d:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
  452b80:	6a 0c                	push   0xc
  452b82:	75 31                	jne    0x452bb5
  452b84:	e8 67 f4 fe ff       	call   0x441ff0
  452b89:	83 c4 04             	add    esp,0x4
  452b8c:	3b c7                	cmp    eax,edi
  452b8e:	74 07                	je     0x452b97
  452b90:	89 38                	mov    DWORD PTR [eax],edi
  452b92:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  452b95:	eb 02                	jmp    0x452b99
  452b97:	33 c0                	xor    eax,eax
  452b99:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  452b9c:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
  452b9f:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
  452ba2:	89 38                	mov    DWORD PTR [eax],edi
  452ba4:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  452ba7:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  452baa:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  452bad:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
  452bb0:	e9 af 02 00 00       	jmp    0x452e64
  452bb5:	e8 36 f4 fe ff       	call   0x441ff0
  452bba:	83 c4 04             	add    esp,0x4
  452bbd:	3b c7                	cmp    eax,edi
  452bbf:	74 07                	je     0x452bc8
  452bc1:	89 38                	mov    DWORD PTR [eax],edi
  452bc3:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  452bc6:	eb 02                	jmp    0x452bca
  452bc8:	33 c0                	xor    eax,eax
  452bca:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  452bcd:	89 02                	mov    DWORD PTR [edx],eax
  452bcf:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  452bd2:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  452bd5:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
  452bd8:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  452bdb:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  452bde:	89 3a                	mov    DWORD PTR [edx],edi
  452be0:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  452be3:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
  452be6:	e9 79 02 00 00       	jmp    0x452e64
  452beb:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  452bee:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  452bf1:	8d 48 30             	lea    ecx,[eax+0x30]
  452bf4:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  452bf7:	85 c0                	test   eax,eax
  452bf9:	74 59                	je     0x452c54
  452bfb:	8b ce                	mov    ecx,esi
  452bfd:	e8 ee 4c 00 00       	call   0x4578f0
  452c02:	8d 8d 00 ff ff ff    	lea    ecx,[ebp-0x100]
  452c08:	e8 73 0d fe ff       	call   0x433980
  452c0d:	8b ce                	mov    ecx,esi
  452c0f:	e8 dc 55 00 00       	call   0x4581f0
  452c14:	8d 8d 00 ff ff ff    	lea    ecx,[ebp-0x100]
  452c1a:	e8 81 0d fe ff       	call   0x4339a0
  452c1f:	39 7e 44             	cmp    DWORD PTR [esi+0x44],edi
  452c22:	74 1d                	je     0x452c41
  452c24:	e8 67 f6 01 00       	call   0x472290
  452c29:	39 46 34             	cmp    DWORD PTR [esi+0x34],eax
  452c2c:	77 13                	ja     0x452c41
  452c2e:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  452c31:	e8 ea b3 fc ff       	call   0x41e020
  452c36:	e8 55 f6 01 00       	call   0x472290
  452c3b:	83 c0 28             	add    eax,0x28
  452c3e:	89 46 34             	mov    DWORD PTR [esi+0x34],eax
  452c41:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  452c44:	e8 e7 a6 03 00       	call   0x48d330
  452c49:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  452c4c:	8d 48 30             	lea    ecx,[eax+0x30]
  452c4f:	8b 01                	mov    eax,DWORD PTR [ecx]
  452c51:	ff 50 08             	call   DWORD PTR [eax+0x8]
  452c54:	8a 46 41             	mov    al,BYTE PTR [esi+0x41]
  452c57:	84 c0                	test   al,al
  452c59:	0f 84 05 02 00 00    	je     0x452e64
  452c5f:	8b                   	.byte 0x8b


; Section : TFCMAIN internal worker (Sleep50 + round adjustment) and StartBeat : 0x004721F0..0x00472290 (fin exclusive)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004721f0 <.text+0x711f0>:
  4721f0:	53                   	push   ebx
  4721f1:	56                   	push   esi
  4721f2:	57                   	push   edi
  4721f3:	e8 f8 79 01 00       	call   0x489bf0
  4721f8:	8b 1d 20 e1 4d 00    	mov    ebx,DWORD PTR ds:0x4de120
  4721fe:	8b f8                	mov    edi,eax
  472200:	6a 32                	push   0x32
  472202:	ff d3                	call   ebx
  472204:	a1 88 5e 51 00       	mov    eax,ds:0x515e88
  472209:	8d 70 01             	lea    esi,[eax+0x1]
  47220c:	33 d2                	xor    edx,edx
  47220e:	8b c6                	mov    eax,esi
  472210:	b9 14 00 00 00       	mov    ecx,0x14
  472215:	f7 f1                	div    ecx
  472217:	85 d2                	test   edx,edx
  472219:	75 1d                	jne    0x472238
  47221b:	e8 d0 79 01 00       	call   0x489bf0
  472220:	8b c8                	mov    ecx,eax
  472222:	3b cf                	cmp    ecx,edi
  472224:	73 04                	jae    0x47222a
  472226:	8b f9                	mov    edi,ecx
  472228:	eb 0e                	jmp    0x472238
  47222a:	2b cf                	sub    ecx,edi
  47222c:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  472231:	f7 e1                	mul    ecx
  472233:	8b f2                	mov    esi,edx
  472235:	c1 ee 04             	shr    esi,0x4
  472238:	56                   	push   esi
  472239:	68 88 5e 51 00       	push   0x515e88
  47223e:	ff 15 b4 e0 4d 00    	call   DWORD PTR ds:0x4de0b4
  472244:	e8 a7 68 01 00       	call   0x488af0
  472249:	eb b5                	jmp    0x472200
  47224b:	90                   	nop
  47224c:	90                   	nop
  47224d:	90                   	nop
  47224e:	90                   	nop
  47224f:	90                   	nop
  472250:	55                   	push   ebp
  472251:	8b ec                	mov    ebp,esp
  472253:	51                   	push   ecx
  472254:	a1 84 5e 51 00       	mov    eax,ds:0x515e84
  472259:	85 c0                	test   eax,eax
  47225b:	75 28                	jne    0x472285
  47225d:	8d 45 fc             	lea    eax,[ebp-0x4]
  472260:	50                   	push   eax
  472261:	6a 00                	push   0x0
  472263:	6a 00                	push   0x0
  472265:	68 f0 21 47 00       	push   0x4721f0
  47226a:	6a 00                	push   0x0
  47226c:	6a 00                	push   0x0
  47226e:	ff 15 5c e3 4d 00    	call   DWORD PTR ds:0x4de35c
  472274:	83 c4 18             	add    esp,0x18
  472277:	6a 02                	push   0x2
  472279:	50                   	push   eax
  47227a:	a3 84 5e 51 00       	mov    ds:0x515e84,eax
  47227f:	ff 15 44 e1 4d 00    	call   DWORD PTR ds:0x4de144
  472285:	8b e5                	mov    esp,ebp
  472287:	5d                   	pop    ebp
  472288:	c3                   	ret
  472289:	90                   	nop
  47228a:	90                   	nop
  47228b:	90                   	nop
  47228c:	90                   	nop
  47228d:	90                   	nop
  47228e:	90                   	nop
  47228f:	90                   	nop


; Section : BeforeNPCThread direct per-unit VerifyTimers path : 0x00443247..0x004432A9 (fin exclusive)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00443247 <.text+0x42247>:
  443247:	8b 06                	mov    eax,DWORD PTR [esi]
  443249:	57                   	push   edi
  44324a:	8b ce                	mov    ecx,esi
  44324c:	ff 90 ac 00 00 00    	call   DWORD PTR [eax+0xac]
  443252:	8b 16                	mov    edx,DWORD PTR [esi]
  443254:	6a 03                	push   0x3
  443256:	8b ce                	mov    ecx,esi
  443258:	ff 92 80 00 00 00    	call   DWORD PTR [edx+0x80]
  44325e:	8b 3e                	mov    edi,DWORD PTR [esi]
  443260:	83 ec 0c             	sub    esp,0xc
  443263:	83 c8 ff             	or     eax,0xffffffff
  443266:	8b dc                	mov    ebx,esp
  443268:	83 c9 ff             	or     ecx,0xffffffff
  44326b:	89 03                	mov    DWORD PTR [ebx],eax
  44326d:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  443270:	83 ca ff             	or     edx,0xffffffff
  443273:	8b ce                	mov    ecx,esi
  443275:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
  443278:	ff 97 94 00 00 00    	call   DWORD PTR [edi+0x94]
  44327e:	33 ff                	xor    edi,edi
  443280:	8b ce                	mov    ecx,esi
  443282:	e8 a9 a0 04 00       	call   0x48d330
  443287:	8b 06                	mov    eax,DWORD PTR [esi]
  443289:	8d 4d cc             	lea    ecx,[ebp-0x34]
  44328c:	51                   	push   ecx
  44328d:	57                   	push   edi
  44328e:	57                   	push   edi
  44328f:	57                   	push   edi
  443290:	56                   	push   esi
  443291:	6a 14                	push   0x14
  443293:	8b ce                	mov    ecx,esi
  443295:	89 7d cc             	mov    DWORD PTR [ebp-0x34],edi
  443298:	ff 50 24             	call   DWORD PTR [eax+0x24]
  44329b:	8a 86 b0 00 00 00    	mov    al,BYTE PTR [esi+0xb0]
  4432a1:	84 c0                	test   al,al
  4432a3:	0f 84 14 01 00 00    	je     0x4433bd

