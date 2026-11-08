; T4C Server (1).exe, passe 35 — preuve objdump x86, vérifier octets en .text; séquences décrites sans inférer les règles métier complètes.

; callback dynamique famille C: 0x004C4C60..0x004C4F30 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c4c60 <.text+0xc3c60>:
  4c4c60:	55                   	push   ebp
  4c4c61:	8b ec                	mov    ebp,esp
  4c4c63:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  4c4c67:	66 3d 05 00          	cmp    ax,0x5
  4c4c6b:	56                   	push   esi
  4c4c6c:	57                   	push   edi
  4c4c6d:	75 31                	jne    0x4c4ca0
  4c4c6f:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c4c72:	8b 06                	mov    eax,DWORD PTR [esi]
  4c4c74:	68 54 4e 00 00       	push   0x4e54
  4c4c79:	8b ce                	mov    ecx,esi
  4c4c7b:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c4c7e:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c4c81:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4c4c84:	51                   	push   ecx
  4c4c85:	56                   	push   esi
  4c4c86:	e8 f5 bc f9 ff       	call   0x460980
  4c4c8b:	8b 17                	mov    edx,DWORD PTR [edi]
  4c4c8d:	52                   	push   edx
  4c4c8e:	56                   	push   esi
  4c4c8f:	68 52 4e 00 00       	push   0x4e52
  4c4c94:	e8 c7 fb ff ff       	call   0x4c4860
  4c4c99:	83 c4 14             	add    esp,0x14
  4c4c9c:	5f                   	pop    edi
  4c4c9d:	5e                   	pop    esi
  4c4c9e:	5d                   	pop    ebp
  4c4c9f:	c3                   	ret
  4c4ca0:	66 3d 1b 00          	cmp    ax,0x1b
  4c4ca4:	75 3f                	jne    0x4c4ce5
  4c4ca6:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c4ca9:	8b 06                	mov    eax,DWORD PTR [esi]
  4c4cab:	68 54 4e 00 00       	push   0x4e54
  4c4cb0:	8b ce                	mov    ecx,esi
  4c4cb2:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c4cb5:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c4cb8:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4c4cbb:	51                   	push   ecx
  4c4cbc:	56                   	push   esi
  4c4cbd:	e8 be bc f9 ff       	call   0x460980
  4c4cc2:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4c4cc5:	83 c4 08             	add    esp,0x8
  4c4cc8:	52                   	push   edx
  4c4cc9:	8b ce                	mov    ecx,esi
  4c4ccb:	e8 60 7c fc ff       	call   0x48c930
  4c4cd0:	8b 07                	mov    eax,DWORD PTR [edi]
  4c4cd2:	50                   	push   eax
  4c4cd3:	56                   	push   esi
  4c4cd4:	68 52 4e 00 00       	push   0x4e52
  4c4cd9:	e8 82 fb ff ff       	call   0x4c4860
  4c4cde:	83 c4 0c             	add    esp,0xc
  4c4ce1:	5f                   	pop    edi
  4c4ce2:	5e                   	pop    esi
  4c4ce3:	5d                   	pop    ebp
  4c4ce4:	c3                   	ret
  4c4ce5:	66 3d 17 00          	cmp    ax,0x17
  4c4ce9:	75 2a                	jne    0x4c4d15
  4c4ceb:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  4c4cee:	6a 0c                	push   0xc
  4c4cf0:	c6 06 0c             	mov    BYTE PTR [esi],0xc
  4c4cf3:	e8 08 98 00 00       	call   0x4ce500
  4c4cf8:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c4cfb:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c4cfe:	8b 11                	mov    edx,DWORD PTR [ecx]
  4c4d00:	89 10                	mov    DWORD PTR [eax],edx
  4c4d02:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c4d05:	83 c4 04             	add    esp,0x4
  4c4d08:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4c4d0b:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4c4d0e:	5f                   	pop    edi
  4c4d0f:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c4d12:	5e                   	pop    esi
  4c4d13:	5d                   	pop    ebp
  4c4d14:	c3                   	ret
  4c4d15:	66 3d 18 00          	cmp    ax,0x18
  4c4d19:	75 78                	jne    0x4c4d93
  4c4d1b:	6a 0c                	push   0xc
  4c4d1d:	e8 ce d2 f7 ff       	call   0x441ff0
  4c4d22:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c4d25:	8b f0                	mov    esi,eax
  4c4d27:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4c4d2a:	8a 08                	mov    cl,BYTE PTR [eax]
  4c4d2c:	83 c4 04             	add    esp,0x4
  4c4d2f:	80 f9 0c             	cmp    cl,0xc
  4c4d32:	75 58                	jne    0x4c4d8c
  4c4d34:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c4d37:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4c4d39:	8b c6                	mov    eax,esi
  4c4d3b:	89 08                	mov    DWORD PTR [eax],ecx
  4c4d3d:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  4c4d40:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c4d43:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  4c4d46:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  4c4d49:	33 c0                	xor    eax,eax
  4c4d4b:	66 8b 46 08          	mov    ax,WORD PTR [esi+0x8]
  4c4d4f:	50                   	push   eax
  4c4d50:	e8 db d4 f9 ff       	call   0x462230
  4c4d55:	83 c4 04             	add    esp,0x4
  4c4d58:	85 c0                	test   eax,eax
  4c4d5a:	74 30                	je     0x4c4d8c
  4c4d5c:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  4c4d5f:	50                   	push   eax
  4c4d60:	51                   	push   ecx
  4c4d61:	e8 2a d5 fa ff       	call   0x472290
  4c4d66:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  4c4d69:	8d 04 80             	lea    eax,[eax+eax*4]
  4c4d6c:	8d 14 80             	lea    edx,[eax+eax*4]
  4c4d6f:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  4c4d72:	8d 04 80             	lea    eax,[eax+eax*4]
  4c4d75:	8d 04 80             	lea    eax,[eax+eax*4]
  4c4d78:	d1 e2                	shl    edx,1
  4c4d7a:	d1 e0                	shl    eax,1
  4c4d7c:	2b c2                	sub    eax,edx
  4c4d7e:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c4d81:	50                   	push   eax
  4c4d82:	51                   	push   ecx
  4c4d83:	52                   	push   edx
  4c4d84:	e8 97 ba f9 ff       	call   0x460820
  4c4d89:	83 c4 14             	add    esp,0x14
  4c4d8c:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c4d8f:	5f                   	pop    edi
  4c4d90:	5e                   	pop    esi
  4c4d91:	5d                   	pop    ebp
  4c4d92:	c3                   	ret
  4c4d93:	66 3d 09 00          	cmp    ax,0x9
  4c4d97:	75 0c                	jne    0x4c4da5
  4c4d99:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4c4d9c:	50                   	push   eax
  4c4d9d:	e8 be d2 f7 ff       	call   0x442060
  4c4da2:	83 c4 04             	add    esp,0x4
  4c4da5:	5f                   	pop    edi
  4c4da6:	5e                   	pop    esi
  4c4da7:	5d                   	pop    ebp
  4c4da8:	c3                   	ret
  4c4da9:	90                   	nop
  4c4daa:	90                   	nop
  4c4dab:	90                   	nop
  4c4dac:	90                   	nop
  4c4dad:	90                   	nop
  4c4dae:	90                   	nop
  4c4daf:	90                   	nop
  4c4db0:	55                   	push   ebp
  4c4db1:	8b ec                	mov    ebp,esp
  4c4db3:	83 ec 08             	sub    esp,0x8
  4c4db6:	53                   	push   ebx
  4c4db7:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  4c4dba:	85 db                	test   ebx,ebx
  4c4dbc:	56                   	push   esi
  4c4dbd:	57                   	push   edi
  4c4dbe:	8b f9                	mov    edi,ecx
  4c4dc0:	0f 84 4c 01 00 00    	je     0x4c4f12
  4c4dc6:	a0 a9 71 55 00       	mov    al,ds:0x5571a9
  4c4dcb:	a8 01                	test   al,0x1
  4c4dcd:	75 18                	jne    0x4c4de7
  4c4dcf:	8a d0                	mov    dl,al
  4c4dd1:	80 ca 01             	or     dl,0x1
  4c4dd4:	68 20 4f 4c 00       	push   0x4c4f20
  4c4dd9:	88 15 a9 71 55 00    	mov    BYTE PTR ds:0x5571a9,dl
  4c4ddf:	e8 27 cf 00 00       	call   0x4d1d0b
  4c4de4:	83 c4 04             	add    esp,0x4
  4c4de7:	6a 64                	push   0x64
  4c4de9:	6a 01                	push   0x1
  4c4deb:	b9 a8 71 55 00       	mov    ecx,0x5571a8
  4c4df0:	e8 ab 42 f9 ff       	call   0x4590a0
  4c4df5:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4c4df8:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c4dfb:	6a 00                	push   0x0
  4c4dfd:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4c4e00:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  4c4e03:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  4c4e06:	50                   	push   eax
  4c4e07:	51                   	push   ecx
  4c4e08:	6a 00                	push   0x0
  4c4e0a:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  4c4e0d:	6a 00                	push   0x0
  4c4e0f:	6a 00                	push   0x0
  4c4e11:	6a 00                	push   0x0
  4c4e13:	53                   	push   ebx
  4c4e14:	56                   	push   esi
  4c4e15:	8d 4f 10             	lea    ecx,[edi+0x10]
  4c4e18:	e8 33 75 f4 ff       	call   0x40c350
  4c4e1d:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
  4c4e20:	df e0                	fnstsw ax
  4c4e22:	f6 c4 41             	test   ah,0x41
  4c4e25:	0f 85 e7 00 00 00    	jne    0x4c4f12
  4c4e2b:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c4e2e:	6a 00                	push   0x0
  4c4e30:	6a 00                	push   0x0
  4c4e32:	6a 00                	push   0x0
  4c4e34:	6a 00                	push   0x0
  4c4e36:	6a 00                	push   0x0
  4c4e38:	6a 00                	push   0x0
  4c4e3a:	6a 00                	push   0x0
  4c4e3c:	53                   	push   ebx
  4c4e3d:	56                   	push   esi
  4c4e3e:	83 c1 78             	add    ecx,0x78
  4c4e41:	e8 0a 75 f4 ff       	call   0x40c350
  4c4e46:	e8 2f cf 00 00       	call   0x4d1d7a
  4c4e4b:	8b f0                	mov    esi,eax
  4c4e4d:	85 f6                	test   esi,esi
  4c4e4f:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
  4c4e52:	0f 84 ba 00 00 00    	je     0x4c4f12
  4c4e58:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c4e5b:	52                   	push   edx
  4c4e5c:	8b cb                	mov    ecx,ebx
  4c4e5e:	e8 cd 7a fc ff       	call   0x48c930
  4c4e63:	8b 03                	mov    eax,DWORD PTR [ebx]
  4c4e65:	6a 01                	push   0x1
  4c4e67:	68 54 4e 00 00       	push   0x4e54
  4c4e6c:	8b cb                	mov    ecx,ebx
  4c4e6e:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4c4e71:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4c4e74:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c4e77:	51                   	push   ecx
  4c4e78:	52                   	push   edx
  4c4e79:	68 52 4e 00 00       	push   0x4e52
  4c4e7e:	e8 ed fb ff ff       	call   0x4c4a70
  4c4e83:	6a 0c                	push   0xc
  4c4e85:	e8 66 d1 f7 ff       	call   0x441ff0
  4c4e8a:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4c4e8d:	89 08                	mov    DWORD PTR [eax],ecx
  4c4e8f:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  4c4e92:	33 c9                	xor    ecx,ecx
  4c4e94:	66 8b 0a             	mov    cx,WORD PTR [edx]
  4c4e97:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c4e9a:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c4e9d:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c4ea0:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4c4ea3:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  4c4ea6:	33 c9                	xor    ecx,ecx
  4c4ea8:	66 8b 08             	mov    cx,WORD PTR [eax]
  4c4eab:	50                   	push   eax
  4c4eac:	56                   	push   esi
  4c4ead:	56                   	push   esi
  4c4eae:	51                   	push   ecx
  4c4eaf:	53                   	push   ebx
  4c4eb0:	e8 6b b9 f9 ff       	call   0x460820
  4c4eb5:	6a 20                	push   0x20
  4c4eb7:	e8 34 d1 f7 ff       	call   0x441ff0
  4c4ebc:	8b f0                	mov    esi,eax
  4c4ebe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c4ec1:	c6 06 05             	mov    BYTE PTR [esi],0x5
  4c4ec4:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c4ec7:	83 c4 28             	add    esp,0x28
  4c4eca:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  4c4ecd:	c7 46 08 60 4c 4c 00 	mov    DWORD PTR [esi+0x8],0x4c4c60
  4c4ed4:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  4c4ed7:	e8 b4 d3 fa ff       	call   0x472290
  4c4edc:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c4edf:	8b c8                	mov    ecx,eax
  4c4ee1:	03 d2                	add    edx,edx
  4c4ee3:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c4ee8:	f7 e2                	mul    edx
  4c4eea:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c4eed:	c1 ea 05             	shr    edx,0x5
  4c4ef0:	03 ca                	add    ecx,edx
  4c4ef2:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  4c4ef5:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  4c4ef8:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c4efb:	33 d2                	xor    edx,edx
  4c4efd:	66 8b 11             	mov    dx,WORD PTR [ecx]
  4c4f00:	56                   	push   esi
  4c4f01:	8b cb                	mov    ecx,ebx
  4c4f03:	c7 46 1c 54 4e 00 00 	mov    DWORD PTR [esi+0x1c],0x4e54
  4c4f0a:	89 56 18             	mov    DWORD PTR [esi+0x18],edx
  4c4f0d:	e8 fe 78 fc ff       	call   0x48c810
  4c4f12:	5f                   	pop    edi
  4c4f13:	5e                   	pop    esi
  4c4f14:	5b                   	pop    ebx
  4c4f15:	8b e5                	mov    esp,ebp
  4c4f17:	5d                   	pop    ebp
  4c4f18:	c2 20 00             	ret    0x20
  4c4f1b:	90                   	nop
  4c4f1c:	90                   	nop
  4c4f1d:	90                   	nop
  4c4f1e:	90                   	nop
  4c4f1f:	90                   	nop
  4c4f20:	c3                   	ret
  4c4f21:	90                   	nop
  4c4f22:	90                   	nop
  4c4f23:	90                   	nop
  4c4f24:	90                   	nop
  4c4f25:	90                   	nop
  4c4f26:	90                   	nop
  4c4f27:	90                   	nop
  4c4f28:	90                   	nop
  4c4f29:	90                   	nop
  4c4f2a:	90                   	nop
  4c4f2b:	90                   	nop
  4c4f2c:	90                   	nop
  4c4f2d:	90                   	nop
  4c4f2e:	90                   	nop
  4c4f2f:	90                   	nop


; callback dynamique famille D: 0x004C5C90..0x004C5EF0 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c5c90 <.text+0xc4c90>:
  4c5c90:	55                   	push   ebp
  4c5c91:	8b ec                	mov    ebp,esp
  4c5c93:	83 ec 08             	sub    esp,0x8
  4c5c96:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  4c5c9a:	66 3d 05 00          	cmp    ax,0x5
  4c5c9e:	56                   	push   esi
  4c5c9f:	57                   	push   edi
  4c5ca0:	75 23                	jne    0x4c5cc5
  4c5ca2:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c5ca5:	8b 0f                	mov    ecx,DWORD PTR [edi]
  4c5ca7:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c5caa:	8b 06                	mov    eax,DWORD PTR [esi]
  4c5cac:	51                   	push   ecx
  4c5cad:	8b ce                	mov    ecx,esi
  4c5caf:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c5cb2:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c5cb5:	52                   	push   edx
  4c5cb6:	56                   	push   esi
  4c5cb7:	e8 c4 ac f9 ff       	call   0x460980
  4c5cbc:	83 c4 08             	add    esp,0x8
  4c5cbf:	5f                   	pop    edi
  4c5cc0:	5e                   	pop    esi
  4c5cc1:	8b e5                	mov    esp,ebp
  4c5cc3:	5d                   	pop    ebp
  4c5cc4:	c3                   	ret
  4c5cc5:	66 3d 1b 00          	cmp    ax,0x1b
  4c5cc9:	75 2e                	jne    0x4c5cf9
  4c5ccb:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c5cce:	8b 0f                	mov    ecx,DWORD PTR [edi]
  4c5cd0:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c5cd3:	8b 06                	mov    eax,DWORD PTR [esi]
  4c5cd5:	51                   	push   ecx
  4c5cd6:	8b ce                	mov    ecx,esi
  4c5cd8:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c5cdb:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c5cde:	52                   	push   edx
  4c5cdf:	56                   	push   esi
  4c5ce0:	e8 9b ac f9 ff       	call   0x460980
  4c5ce5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4c5ce8:	83 c4 08             	add    esp,0x8
  4c5ceb:	50                   	push   eax
  4c5cec:	8b ce                	mov    ecx,esi
  4c5cee:	e8 3d 6c fc ff       	call   0x48c930
  4c5cf3:	5f                   	pop    edi
  4c5cf4:	5e                   	pop    esi
  4c5cf5:	8b e5                	mov    esp,ebp
  4c5cf7:	5d                   	pop    ebp
  4c5cf8:	c3                   	ret
  4c5cf9:	66 3d 17 00          	cmp    ax,0x17
  4c5cfd:	75 2c                	jne    0x4c5d2b
  4c5cff:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  4c5d02:	6a 0c                	push   0xc
  4c5d04:	c6 06 0c             	mov    BYTE PTR [esi],0xc
  4c5d07:	e8 f4 87 00 00       	call   0x4ce500
  4c5d0c:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c5d0f:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c5d12:	8b 11                	mov    edx,DWORD PTR [ecx]
  4c5d14:	89 10                	mov    DWORD PTR [eax],edx
  4c5d16:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c5d19:	83 c4 04             	add    esp,0x4
  4c5d1c:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4c5d1f:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4c5d22:	5f                   	pop    edi
  4c5d23:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c5d26:	5e                   	pop    esi
  4c5d27:	8b e5                	mov    esp,ebp
  4c5d29:	5d                   	pop    ebp
  4c5d2a:	c3                   	ret
  4c5d2b:	66 3d 18 00          	cmp    ax,0x18
  4c5d2f:	0f 85 a3 00 00 00    	jne    0x4c5dd8
  4c5d35:	6a 0c                	push   0xc
  4c5d37:	e8 b4 c2 f7 ff       	call   0x441ff0
  4c5d3c:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c5d3f:	8b f0                	mov    esi,eax
  4c5d41:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4c5d44:	8a 08                	mov    cl,BYTE PTR [eax]
  4c5d46:	83 c4 04             	add    esp,0x4
  4c5d49:	80 f9 0c             	cmp    cl,0xc
  4c5d4c:	75 61                	jne    0x4c5daf
  4c5d4e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c5d51:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4c5d53:	8b c6                	mov    eax,esi
  4c5d55:	89 08                	mov    DWORD PTR [eax],ecx
  4c5d57:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  4c5d5a:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c5d5d:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  4c5d60:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  4c5d63:	33 c0                	xor    eax,eax
  4c5d65:	66 8b 46 08          	mov    ax,WORD PTR [esi+0x8]
  4c5d69:	50                   	push   eax
  4c5d6a:	e8 c1 c4 f9 ff       	call   0x462230
  4c5d6f:	83 c4 04             	add    esp,0x4
  4c5d72:	85 c0                	test   eax,eax
  4c5d74:	74 59                	je     0x4c5dcf
  4c5d76:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  4c5d79:	50                   	push   eax
  4c5d7a:	51                   	push   ecx
  4c5d7b:	e8 10 c5 fa ff       	call   0x472290
  4c5d80:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  4c5d83:	8d 04 80             	lea    eax,[eax+eax*4]
  4c5d86:	8d 14 80             	lea    edx,[eax+eax*4]
  4c5d89:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  4c5d8c:	8d 04 80             	lea    eax,[eax+eax*4]
  4c5d8f:	8d 04 80             	lea    eax,[eax+eax*4]
  4c5d92:	d1 e2                	shl    edx,1
  4c5d94:	d1 e0                	shl    eax,1
  4c5d96:	2b c2                	sub    eax,edx
  4c5d98:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c5d9b:	50                   	push   eax
  4c5d9c:	51                   	push   ecx
  4c5d9d:	52                   	push   edx
  4c5d9e:	e8 7d aa f9 ff       	call   0x460820
  4c5da3:	83 c4 14             	add    esp,0x14
  4c5da6:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c5da9:	5f                   	pop    edi
  4c5daa:	5e                   	pop    esi
  4c5dab:	8b e5                	mov    esp,ebp
  4c5dad:	5d                   	pop    ebp
  4c5dae:	c3                   	ret
  4c5daf:	80 f9 04             	cmp    cl,0x4
  4c5db2:	75 1b                	jne    0x4c5dcf
  4c5db4:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4c5db7:	8b 01                	mov    eax,DWORD PTR [ecx]
  4c5db9:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c5dbc:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4c5dbf:	89 06                	mov    DWORD PTR [esi],eax
  4c5dc1:	33 c0                	xor    eax,eax
  4c5dc3:	89 55 fc             	mov    DWORD PTR [ebp-0x4],edx
  4c5dc6:	89 4d 00             	mov    DWORD PTR [ebp+0x0],ecx
  4c5dc9:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c5dcc:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  4c5dcf:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c5dd2:	5f                   	pop    edi
  4c5dd3:	5e                   	pop    esi
  4c5dd4:	8b e5                	mov    esp,ebp
  4c5dd6:	5d                   	pop    ebp
  4c5dd7:	c3                   	ret
  4c5dd8:	66 3d 09 00          	cmp    ax,0x9
  4c5ddc:	75 0c                	jne    0x4c5dea
  4c5dde:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  4c5de1:	52                   	push   edx
  4c5de2:	e8 79 c2 f7 ff       	call   0x442060
  4c5de7:	83 c4 04             	add    esp,0x4
  4c5dea:	5f                   	pop    edi
  4c5deb:	5e                   	pop    esi
  4c5dec:	8b e5                	mov    esp,ebp
  4c5dee:	5d                   	pop    ebp
  4c5def:	c3                   	ret
  4c5df0:	55                   	push   ebp
  4c5df1:	8b ec                	mov    ebp,esp
  4c5df3:	53                   	push   ebx
  4c5df4:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  4c5df7:	85 db                	test   ebx,ebx
  4c5df9:	56                   	push   esi
  4c5dfa:	57                   	push   edi
  4c5dfb:	8b f9                	mov    edi,ecx
  4c5dfd:	0f 84 df 00 00 00    	je     0x4c5ee2
  4c5e03:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  4c5e06:	50                   	push   eax
  4c5e07:	8b cb                	mov    ecx,ebx
  4c5e09:	e8 d2 6e fc ff       	call   0x48cce0
  4c5e0e:	85 c0                	test   eax,eax
  4c5e10:	0f 85 cc 00 00 00    	jne    0x4c5ee2
  4c5e16:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c5e19:	50                   	push   eax
  4c5e1a:	50                   	push   eax
  4c5e1b:	50                   	push   eax
  4c5e1c:	50                   	push   eax
  4c5e1d:	50                   	push   eax
  4c5e1e:	50                   	push   eax
  4c5e1f:	50                   	push   eax
  4c5e20:	53                   	push   ebx
  4c5e21:	56                   	push   esi
  4c5e22:	8d 4f 10             	lea    ecx,[edi+0x10]
  4c5e25:	e8 26 65 f4 ff       	call   0x40c350
  4c5e2a:	e8 4b bf 00 00       	call   0x4d1d7a
  4c5e2f:	8b 13                	mov    edx,DWORD PTR [ebx]
  4c5e31:	50                   	push   eax
  4c5e32:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  4c5e35:	50                   	push   eax
  4c5e36:	8b cb                	mov    ecx,ebx
  4c5e38:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4c5e3b:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c5e3e:	6a 00                	push   0x0
  4c5e40:	6a 00                	push   0x0
  4c5e42:	6a 00                	push   0x0
  4c5e44:	6a 00                	push   0x0
  4c5e46:	6a 00                	push   0x0
  4c5e48:	6a 00                	push   0x0
  4c5e4a:	6a 00                	push   0x0
  4c5e4c:	53                   	push   ebx
  4c5e4d:	56                   	push   esi
  4c5e4e:	83 c1 78             	add    ecx,0x78
  4c5e51:	e8 fa 64 f4 ff       	call   0x40c350
  4c5e56:	e8 1f bf 00 00       	call   0x4d1d7a
  4c5e5b:	8b f0                	mov    esi,eax
  4c5e5d:	85 f6                	test   esi,esi
  4c5e5f:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
  4c5e62:	74 7e                	je     0x4c5ee2
  4c5e64:	6a 0c                	push   0xc
  4c5e66:	e8 85 c1 f7 ff       	call   0x441ff0
  4c5e6b:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  4c5e6e:	89 08                	mov    DWORD PTR [eax],ecx
  4c5e70:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c5e73:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  4c5e76:	33 d2                	xor    edx,edx
  4c5e78:	66 8b 10             	mov    dx,WORD PTR [eax]
  4c5e7b:	50                   	push   eax
  4c5e7c:	56                   	push   esi
  4c5e7d:	56                   	push   esi
  4c5e7e:	52                   	push   edx
  4c5e7f:	53                   	push   ebx
  4c5e80:	e8 9b a9 f9 ff       	call   0x460820
  4c5e85:	6a 20                	push   0x20
  4c5e87:	e8 64 c1 f7 ff       	call   0x441ff0
  4c5e8c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c5e8f:	8b f0                	mov    esi,eax
  4c5e91:	c6 06 05             	mov    BYTE PTR [esi],0x5
  4c5e94:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  4c5e97:	83 c4 1c             	add    esp,0x1c
  4c5e9a:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c5e9d:	c7 46 08 90 5c 4c 00 	mov    DWORD PTR [esi+0x8],0x4c5c90
  4c5ea4:	89 4e 0c             	mov    DWORD PTR [esi+0xc],ecx
  4c5ea7:	e8 e4 c3 fa ff       	call   0x472290
  4c5eac:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c5eaf:	8b c8                	mov    ecx,eax
  4c5eb1:	03 d2                	add    edx,edx
  4c5eb3:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c5eb8:	f7 e2                	mul    edx
  4c5eba:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c5ebd:	c1 ea 05             	shr    edx,0x5
  4c5ec0:	03 ca                	add    ecx,edx
  4c5ec2:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  4c5ec5:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  4c5ec8:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c5ecb:	33 d2                	xor    edx,edx
  4c5ecd:	66 8b 11             	mov    dx,WORD PTR [ecx]
  4c5ed0:	56                   	push   esi
  4c5ed1:	8b cb                	mov    ecx,ebx
  4c5ed3:	c7 46 1c 00 00 00 00 	mov    DWORD PTR [esi+0x1c],0x0
  4c5eda:	89 56 18             	mov    DWORD PTR [esi+0x18],edx
  4c5edd:	e8 2e 69 fc ff       	call   0x48c810
  4c5ee2:	5f                   	pop    edi
  4c5ee3:	5e                   	pop    esi
  4c5ee4:	5b                   	pop    ebx
  4c5ee5:	5d                   	pop    ebp
  4c5ee6:	c2 20 00             	ret    0x20
  4c5ee9:	90                   	nop
  4c5eea:	90                   	nop
  4c5eeb:	90                   	nop
  4c5eec:	90                   	nop
  4c5eed:	90                   	nop
  4c5eee:	90                   	nop
  4c5eef:	90                   	nop


; callback dynamique famille E: 0x004C6BE0..0x004C6FD0 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c6be0 <.text+0xc5be0>:
  4c6be0:	55                   	push   ebp
  4c6be1:	8b ec                	mov    ebp,esp
  4c6be3:	83 ec 0c             	sub    esp,0xc
  4c6be6:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  4c6bea:	66 3d 05 00          	cmp    ax,0x5
  4c6bee:	53                   	push   ebx
  4c6bef:	56                   	push   esi
  4c6bf0:	57                   	push   edi
  4c6bf1:	0f 85 bc 00 00 00    	jne    0x4c6cb3
  4c6bf7:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c6bfa:	8b 06                	mov    eax,DWORD PTR [esi]
  4c6bfc:	68 52 4e 00 00       	push   0x4e52
  4c6c01:	8b ce                	mov    ecx,esi
  4c6c03:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c6c06:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6c08:	8d 45 f4             	lea    eax,[ebp-0xc]
  4c6c0b:	50                   	push   eax
  4c6c0c:	8b ce                	mov    ecx,esi
  4c6c0e:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4c6c11:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c6c14:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4c6c17:	51                   	push   ecx
  4c6c18:	56                   	push   esi
  4c6c19:	e8 62 9d f9 ff       	call   0x460980
  4c6c1e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
  4c6c21:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  4c6c24:	83 c4 08             	add    esp,0x8
  4c6c27:	6a 01                	push   0x1
  4c6c29:	83 ec 0c             	sub    esp,0xc
  4c6c2c:	8b d4                	mov    edx,esp
  4c6c2e:	89 02                	mov    DWORD PTR [edx],eax
  4c6c30:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  4c6c33:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  4c6c36:	8b ce                	mov    ecx,esi
  4c6c38:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4c6c3b:	e8 a0 8b fc ff       	call   0x48f7e0
  4c6c40:	83 3f 00             	cmp    DWORD PTR [edi],0x0
  4c6c43:	0f 84 fd 01 00 00    	je     0x4c6e46
  4c6c49:	6a 00                	push   0x0
  4c6c4b:	6a 00                	push   0x0
  4c6c4d:	e8 be bb f9 ff       	call   0x462810
  4c6c52:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  4c6c55:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  4c6c58:	50                   	push   eax
  4c6c59:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
  4c6c5c:	83 ec 0c             	sub    esp,0xc
  4c6c5f:	8b dc                	mov    ebx,esp
  4c6c61:	89 03                	mov    DWORD PTR [ebx],eax
  4c6c63:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  4c6c66:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
  4c6c69:	83 ec 0c             	sub    esp,0xc
  4c6c6c:	8b dc                	mov    ebx,esp
  4c6c6e:	89 03                	mov    DWORD PTR [ebx],eax
  4c6c70:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  4c6c73:	8b ce                	mov    ecx,esi
  4c6c75:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
  4c6c78:	e8 83 4a fc ff       	call   0x48b700
  4c6c7d:	50                   	push   eax
  4c6c7e:	8b ce                	mov    ecx,esi
  4c6c80:	e8 7b 4a fc ff       	call   0x48b700
  4c6c85:	33 c9                	xor    ecx,ecx
  4c6c87:	66 8b 0f             	mov    cx,WORD PTR [edi]
  4c6c8a:	50                   	push   eax
  4c6c8b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
  4c6c8e:	51                   	push   ecx
  4c6c8f:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  4c6c92:	6a 1e                	push   0x1e
  4c6c94:	83 ec 0c             	sub    esp,0xc
  4c6c97:	8b d4                	mov    edx,esp
  4c6c99:	89 02                	mov    DWORD PTR [edx],eax
  4c6c9b:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  4c6c9e:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  4c6ca1:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4c6ca4:	e8 57 92 f4 ff       	call   0x40ff00
  4c6ca9:	83 c4 40             	add    esp,0x40
  4c6cac:	5f                   	pop    edi
  4c6cad:	5e                   	pop    esi
  4c6cae:	5b                   	pop    ebx
  4c6caf:	8b e5                	mov    esp,ebp
  4c6cb1:	5d                   	pop    ebp
  4c6cb2:	c3                   	ret
  4c6cb3:	66 3d 1b 00          	cmp    ax,0x1b
  4c6cb7:	0f 85 c3 00 00 00    	jne    0x4c6d80
  4c6cbd:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c6cc0:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6cc2:	68 52 4e 00 00       	push   0x4e52
  4c6cc7:	8b ce                	mov    ecx,esi
  4c6cc9:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4c6ccc:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c6ccf:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  4c6cd2:	50                   	push   eax
  4c6cd3:	56                   	push   esi
  4c6cd4:	e8 a7 9c f9 ff       	call   0x460980
  4c6cd9:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6cdb:	83 c4 08             	add    esp,0x8
  4c6cde:	8d 45 f4             	lea    eax,[ebp-0xc]
  4c6ce1:	50                   	push   eax
  4c6ce2:	8b ce                	mov    ecx,esi
  4c6ce4:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4c6ce7:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
  4c6cea:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
  4c6ced:	6a 01                	push   0x1
  4c6cef:	83 ec 0c             	sub    esp,0xc
  4c6cf2:	8b cc                	mov    ecx,esp
  4c6cf4:	89 11                	mov    DWORD PTR [ecx],edx
  4c6cf6:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  4c6cf9:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  4c6cfc:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4c6cff:	8b ce                	mov    ecx,esi
  4c6d01:	e8 da 8a fc ff       	call   0x48f7e0
  4c6d06:	83 3f 00             	cmp    DWORD PTR [edi],0x0
  4c6d09:	74 63                	je     0x4c6d6e
  4c6d0b:	6a 00                	push   0x0
  4c6d0d:	6a 00                	push   0x0
  4c6d0f:	e8 fc ba f9 ff       	call   0x462810
  4c6d14:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  4c6d17:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  4c6d1a:	50                   	push   eax
  4c6d1b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
  4c6d1e:	83 ec 0c             	sub    esp,0xc
  4c6d21:	8b dc                	mov    ebx,esp
  4c6d23:	89 03                	mov    DWORD PTR [ebx],eax
  4c6d25:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  4c6d28:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
  4c6d2b:	83 ec 0c             	sub    esp,0xc
  4c6d2e:	8b dc                	mov    ebx,esp
  4c6d30:	89 03                	mov    DWORD PTR [ebx],eax
  4c6d32:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  4c6d35:	8b ce                	mov    ecx,esi
  4c6d37:	89 53 08             	mov    DWORD PTR [ebx+0x8],edx
  4c6d3a:	e8 c1 49 fc ff       	call   0x48b700
  4c6d3f:	50                   	push   eax
  4c6d40:	8b ce                	mov    ecx,esi
  4c6d42:	e8 b9 49 fc ff       	call   0x48b700
  4c6d47:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
  4c6d4a:	50                   	push   eax
  4c6d4b:	33 c0                	xor    eax,eax
  4c6d4d:	66 8b 07             	mov    ax,WORD PTR [edi]
  4c6d50:	50                   	push   eax
  4c6d51:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
  4c6d54:	6a 1e                	push   0x1e
  4c6d56:	83 ec 0c             	sub    esp,0xc
  4c6d59:	8b cc                	mov    ecx,esp
  4c6d5b:	89 11                	mov    DWORD PTR [ecx],edx
  4c6d5d:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  4c6d60:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  4c6d63:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4c6d66:	e8 95 91 f4 ff       	call   0x40ff00
  4c6d6b:	83 c4 40             	add    esp,0x40
  4c6d6e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4c6d71:	50                   	push   eax
  4c6d72:	8b ce                	mov    ecx,esi
  4c6d74:	e8 b7 5b fc ff       	call   0x48c930
  4c6d79:	5f                   	pop    edi
  4c6d7a:	5e                   	pop    esi
  4c6d7b:	5b                   	pop    ebx
  4c6d7c:	8b e5                	mov    esp,ebp
  4c6d7e:	5d                   	pop    ebp
  4c6d7f:	c3                   	ret
  4c6d80:	66 3d 17 00          	cmp    ax,0x17
  4c6d84:	75 2d                	jne    0x4c6db3
  4c6d86:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  4c6d89:	6a 0c                	push   0xc
  4c6d8b:	c6 06 0c             	mov    BYTE PTR [esi],0xc
  4c6d8e:	e8 6d 77 00 00       	call   0x4ce500
  4c6d93:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c6d96:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c6d99:	8b 11                	mov    edx,DWORD PTR [ecx]
  4c6d9b:	89 10                	mov    DWORD PTR [eax],edx
  4c6d9d:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c6da0:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4c6da3:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4c6da6:	83 c4 04             	add    esp,0x4
  4c6da9:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c6dac:	5f                   	pop    edi
  4c6dad:	5e                   	pop    esi
  4c6dae:	5b                   	pop    ebx
  4c6daf:	8b e5                	mov    esp,ebp
  4c6db1:	5d                   	pop    ebp
  4c6db2:	c3                   	ret
  4c6db3:	66 3d 18 00          	cmp    ax,0x18
  4c6db7:	75 7b                	jne    0x4c6e34
  4c6db9:	6a 0c                	push   0xc
  4c6dbb:	e8 30 b2 f7 ff       	call   0x441ff0
  4c6dc0:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c6dc3:	8b f0                	mov    esi,eax
  4c6dc5:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4c6dc8:	8a 08                	mov    cl,BYTE PTR [eax]
  4c6dca:	83 c4 04             	add    esp,0x4
  4c6dcd:	80 f9 0c             	cmp    cl,0xc
  4c6dd0:	75 58                	jne    0x4c6e2a
  4c6dd2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c6dd5:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4c6dd7:	8b c6                	mov    eax,esi
  4c6dd9:	89 08                	mov    DWORD PTR [eax],ecx
  4c6ddb:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  4c6dde:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c6de1:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  4c6de4:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  4c6de7:	33 c0                	xor    eax,eax
  4c6de9:	66 8b 46 08          	mov    ax,WORD PTR [esi+0x8]
  4c6ded:	50                   	push   eax
  4c6dee:	e8 3d b4 f9 ff       	call   0x462230
  4c6df3:	83 c4 04             	add    esp,0x4
  4c6df6:	85 c0                	test   eax,eax
  4c6df8:	74 30                	je     0x4c6e2a
  4c6dfa:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  4c6dfd:	50                   	push   eax
  4c6dfe:	51                   	push   ecx
  4c6dff:	e8 8c b4 fa ff       	call   0x472290
  4c6e04:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  4c6e07:	8d 04 80             	lea    eax,[eax+eax*4]
  4c6e0a:	8d 14 80             	lea    edx,[eax+eax*4]
  4c6e0d:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  4c6e10:	8d 04 80             	lea    eax,[eax+eax*4]
  4c6e13:	8d 04 80             	lea    eax,[eax+eax*4]
  4c6e16:	d1 e2                	shl    edx,1
  4c6e18:	d1 e0                	shl    eax,1
  4c6e1a:	2b c2                	sub    eax,edx
  4c6e1c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c6e1f:	50                   	push   eax
  4c6e20:	51                   	push   ecx
  4c6e21:	52                   	push   edx
  4c6e22:	e8 f9 99 f9 ff       	call   0x460820
  4c6e27:	83 c4 14             	add    esp,0x14
  4c6e2a:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c6e2d:	5f                   	pop    edi
  4c6e2e:	5e                   	pop    esi
  4c6e2f:	5b                   	pop    ebx
  4c6e30:	8b e5                	mov    esp,ebp
  4c6e32:	5d                   	pop    ebp
  4c6e33:	c3                   	ret
  4c6e34:	66 3d 09 00          	cmp    ax,0x9
  4c6e38:	75 0c                	jne    0x4c6e46
  4c6e3a:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4c6e3d:	50                   	push   eax
  4c6e3e:	e8 1d b2 f7 ff       	call   0x442060
  4c6e43:	83 c4 04             	add    esp,0x4
  4c6e46:	5f                   	pop    edi
  4c6e47:	5e                   	pop    esi
  4c6e48:	5b                   	pop    ebx
  4c6e49:	8b e5                	mov    esp,ebp
  4c6e4b:	5d                   	pop    ebp
  4c6e4c:	c3                   	ret
  4c6e4d:	90                   	nop
  4c6e4e:	90                   	nop
  4c6e4f:	90                   	nop
  4c6e50:	55                   	push   ebp
  4c6e51:	8b ec                	mov    ebp,esp
  4c6e53:	83 ec 08             	sub    esp,0x8
  4c6e56:	53                   	push   ebx
  4c6e57:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  4c6e5a:	85 db                	test   ebx,ebx
  4c6e5c:	56                   	push   esi
  4c6e5d:	57                   	push   edi
  4c6e5e:	8b f9                	mov    edi,ecx
  4c6e60:	0f 84 45 01 00 00    	je     0x4c6fab
  4c6e66:	a0 b9 71 55 00       	mov    al,ds:0x5571b9
  4c6e6b:	a8 01                	test   al,0x1
  4c6e6d:	75 18                	jne    0x4c6e87
  4c6e6f:	8a d0                	mov    dl,al
  4c6e71:	80 ca 01             	or     dl,0x1
  4c6e74:	68 c0 6f 4c 00       	push   0x4c6fc0
  4c6e79:	88 15 b9 71 55 00    	mov    BYTE PTR ds:0x5571b9,dl
  4c6e7f:	e8 87 ae 00 00       	call   0x4d1d0b
  4c6e84:	83 c4 04             	add    esp,0x4
  4c6e87:	6a 64                	push   0x64
  4c6e89:	6a 01                	push   0x1
  4c6e8b:	b9 b8 71 55 00       	mov    ecx,0x5571b8
  4c6e90:	e8 0b 22 f9 ff       	call   0x4590a0
  4c6e95:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4c6e98:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c6e9b:	6a 00                	push   0x0
  4c6e9d:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4c6ea0:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  4c6ea3:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  4c6ea6:	50                   	push   eax
  4c6ea7:	51                   	push   ecx
  4c6ea8:	6a 00                	push   0x0
  4c6eaa:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  4c6ead:	6a 00                	push   0x0
  4c6eaf:	6a 00                	push   0x0
  4c6eb1:	6a 00                	push   0x0
  4c6eb3:	53                   	push   ebx
  4c6eb4:	56                   	push   esi
  4c6eb5:	8d 4f 10             	lea    ecx,[edi+0x10]
  4c6eb8:	e8 93 54 f4 ff       	call   0x40c350
  4c6ebd:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
  4c6ec0:	df e0                	fnstsw ax
  4c6ec2:	f6 c4 41             	test   ah,0x41
  4c6ec5:	0f 85 e0 00 00 00    	jne    0x4c6fab
  4c6ecb:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c6ece:	6a 00                	push   0x0
  4c6ed0:	6a 00                	push   0x0
  4c6ed2:	6a 00                	push   0x0
  4c6ed4:	6a 00                	push   0x0
  4c6ed6:	6a 00                	push   0x0
  4c6ed8:	6a 00                	push   0x0
  4c6eda:	6a 00                	push   0x0
  4c6edc:	53                   	push   ebx
  4c6edd:	56                   	push   esi
  4c6ede:	83 c1 78             	add    ecx,0x78
  4c6ee1:	e8 6a 54 f4 ff       	call   0x40c350
  4c6ee6:	e8 8f ae 00 00       	call   0x4d1d7a
  4c6eeb:	8b f0                	mov    esi,eax
  4c6eed:	85 f6                	test   esi,esi
  4c6eef:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
  4c6ef2:	0f 84 b3 00 00 00    	je     0x4c6fab
  4c6ef8:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c6efb:	52                   	push   edx
  4c6efc:	8b cb                	mov    ecx,ebx
  4c6efe:	e8 2d 5a fc ff       	call   0x48c930
  4c6f03:	8b 03                	mov    eax,DWORD PTR [ebx]
  4c6f05:	6a 01                	push   0x1
  4c6f07:	68 52 4e 00 00       	push   0x4e52
  4c6f0c:	8b cb                	mov    ecx,ebx
  4c6f0e:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4c6f11:	53                   	push   ebx
  4c6f12:	8b cf                	mov    ecx,edi
  4c6f14:	e8 77 fb ff ff       	call   0x4c6a90
  4c6f19:	6a 0c                	push   0xc
  4c6f1b:	e8 d0 b0 f7 ff       	call   0x441ff0
  4c6f20:	8b 8f 80 00 00 00    	mov    ecx,DWORD PTR [edi+0x80]
  4c6f26:	89 08                	mov    DWORD PTR [eax],ecx
  4c6f28:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  4c6f2b:	33 c9                	xor    ecx,ecx
  4c6f2d:	66 8b 0a             	mov    cx,WORD PTR [edx]
  4c6f30:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c6f33:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c6f36:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c6f39:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4c6f3c:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  4c6f3f:	33 c9                	xor    ecx,ecx
  4c6f41:	66 8b 08             	mov    cx,WORD PTR [eax]
  4c6f44:	50                   	push   eax
  4c6f45:	56                   	push   esi
  4c6f46:	56                   	push   esi
  4c6f47:	51                   	push   ecx
  4c6f48:	53                   	push   ebx
  4c6f49:	e8 d2 98 f9 ff       	call   0x460820
  4c6f4e:	6a 20                	push   0x20
  4c6f50:	e8 9b b0 f7 ff       	call   0x441ff0
  4c6f55:	8b f0                	mov    esi,eax
  4c6f57:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c6f5a:	c6 06 05             	mov    BYTE PTR [esi],0x5
  4c6f5d:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  4c6f60:	83 c4 1c             	add    esp,0x1c
  4c6f63:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  4c6f66:	c7 46 08 e0 6b 4c 00 	mov    DWORD PTR [esi+0x8],0x4c6be0
  4c6f6d:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  4c6f70:	e8 1b b3 fa ff       	call   0x472290
  4c6f75:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c6f78:	8b c8                	mov    ecx,eax
  4c6f7a:	03 d2                	add    edx,edx
  4c6f7c:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c6f81:	f7 e2                	mul    edx
  4c6f83:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c6f86:	c1 ea 05             	shr    edx,0x5
  4c6f89:	03 ca                	add    ecx,edx
  4c6f8b:	89 4e 10             	mov    DWORD PTR [esi+0x10],ecx
  4c6f8e:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  4c6f91:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c6f94:	33 d2                	xor    edx,edx
  4c6f96:	66 8b 11             	mov    dx,WORD PTR [ecx]
  4c6f99:	56                   	push   esi
  4c6f9a:	8b cb                	mov    ecx,ebx
  4c6f9c:	c7 46 1c 52 4e 00 00 	mov    DWORD PTR [esi+0x1c],0x4e52
  4c6fa3:	89 56 18             	mov    DWORD PTR [esi+0x18],edx
  4c6fa6:	e8 65 58 fc ff       	call   0x48c810
  4c6fab:	5f                   	pop    edi
  4c6fac:	5e                   	pop    esi
  4c6fad:	5b                   	pop    ebx
  4c6fae:	8b e5                	mov    esp,ebp
  4c6fb0:	5d                   	pop    ebp
  4c6fb1:	c2 20 00             	ret    0x20
  4c6fb4:	90                   	nop
  4c6fb5:	90                   	nop
  4c6fb6:	90                   	nop
  4c6fb7:	90                   	nop
  4c6fb8:	90                   	nop
  4c6fb9:	90                   	nop
  4c6fba:	90                   	nop
  4c6fbb:	90                   	nop
  4c6fbc:	90                   	nop
  4c6fbd:	90                   	nop
  4c6fbe:	90                   	nop
  4c6fbf:	90                   	nop
  4c6fc0:	c3                   	ret
  4c6fc1:	90                   	nop
  4c6fc2:	90                   	nop
  4c6fc3:	90                   	nop
  4c6fc4:	90                   	nop
  4c6fc5:	90                   	nop
  4c6fc6:	90                   	nop
  4c6fc7:	90                   	nop
  4c6fc8:	90                   	nop
  4c6fc9:	90                   	nop
  4c6fca:	90                   	nop
  4c6fcb:	90                   	nop
  4c6fcc:	90                   	nop
  4c6fcd:	90                   	nop
  4c6fce:	90                   	nop
  4c6fcf:	90                   	nop


; callback dynamique famille F; timers et suivi: 0x004C7990..0x004C7C36 (non inclus)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c7990 <.text+0xc6990>:
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
  4c7c30:	5e                   	pop    esi
  4c7c31:	5b                   	pop    ebx
  4c7c32:	8b e5                	mov    esp,ebp
  4c7c34:	5d                   	pop    ebp
  4c7c35:	c3                   	ret

