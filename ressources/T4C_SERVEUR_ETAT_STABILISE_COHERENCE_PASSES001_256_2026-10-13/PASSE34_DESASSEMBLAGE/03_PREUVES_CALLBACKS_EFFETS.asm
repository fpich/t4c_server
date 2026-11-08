; T4C Server(1).exe / passe 34 : désassemblage objdump x86 validé contre les octets PE32.
; Les portions sont des plages de preuves, pas une garantie de comportement complet.

; UnitEffectManager Register/GetEffectProc et auxiliaires -- VA 0x00490B10 jusqu’à 0x00490D40 (exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00490b10 <.text+0x8fb10>:
  490b10:	55                   	push   ebp
  490b11:	8b ec                	mov    ebp,esp
  490b13:	6a 08                	push   0x8
  490b15:	e8 d6 14 fb ff       	call   0x441ff0
  490b1a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  490b1d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  490b20:	83 c4 04             	add    esp,0x4
  490b23:	89 08                	mov    DWORD PTR [eax],ecx
  490b25:	50                   	push   eax
  490b26:	b9 00 64 55 00       	mov    ecx,0x556400
  490b2b:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  490b2e:	e8 0d 04 00 00       	call   0x490f40
  490b33:	5d                   	pop    ebp
  490b34:	c3                   	ret
  490b35:	90                   	nop
  490b36:	90                   	nop
  490b37:	90                   	nop
  490b38:	90                   	nop
  490b39:	90                   	nop
  490b3a:	90                   	nop
  490b3b:	90                   	nop
  490b3c:	90                   	nop
  490b3d:	90                   	nop
  490b3e:	90                   	nop
  490b3f:	90                   	nop
  490b40:	55                   	push   ebp
  490b41:	8b ec                	mov    ebp,esp
  490b43:	83 ec 08             	sub    esp,0x8
  490b46:	56                   	push   esi
  490b47:	57                   	push   edi
  490b48:	33 f6                	xor    esi,esi
  490b4a:	50                   	push   eax
  490b4b:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  490b4e:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  490b51:	58                   	pop    eax
  490b52:	e8 a9 36 fa ff       	call   0x434200
  490b57:	8b 10                	mov    edx,DWORD PTR [eax]
  490b59:	8d 4d fc             	lea    ecx,[ebp-0x4]
  490b5c:	51                   	push   ecx
  490b5d:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  490b60:	68 00 64 55 00       	push   0x556400
  490b65:	51                   	push   ecx
  490b66:	8b c8                	mov    ecx,eax
  490b68:	ff 12                	call   DWORD PTR [edx]
  490b6a:	68 08 64 55 00       	push   0x556408
  490b6f:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  490b75:	e8 86 36 fa ff       	call   0x434200
  490b7a:	8b 10                	mov    edx,DWORD PTR [eax]
  490b7c:	68 04 64 55 00       	push   0x556404
  490b81:	8d 4d fc             	lea    ecx,[ebp-0x4]
  490b84:	51                   	push   ecx
  490b85:	8b c8                	mov    ecx,eax
  490b87:	ff 52 04             	call   DWORD PTR [edx+0x4]
  490b8a:	a1 24 64 55 00       	mov    eax,ds:0x556424
  490b8f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  490b92:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  490b95:	33 c9                	xor    ecx,ecx
  490b97:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490b9c:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490ba2:	c6 05 34 64 55 00 08 	mov    BYTE PTR ds:0x556434,0x8
  490ba9:	85 c9                	test   ecx,ecx
  490bab:	74 09                	je     0x490bb6
  490bad:	8b 00                	mov    eax,DWORD PTR [eax]
  490baf:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490bb4:	eb 0b                	jmp    0x490bc1
  490bb6:	b9 01 00 00 00       	mov    ecx,0x1
  490bbb:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490bc1:	85 c0                	test   eax,eax
  490bc3:	74 12                	je     0x490bd7
  490bc5:	85 f6                	test   esi,esi
  490bc7:	75 23                	jne    0x490bec
  490bc9:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  490bcc:	39 17                	cmp    DWORD PTR [edi],edx
  490bce:	75 d9                	jne    0x490ba9
  490bd0:	be 01 00 00 00       	mov    esi,0x1
  490bd5:	eb d2                	jmp    0x490ba9
  490bd7:	85 c9                	test   ecx,ecx
  490bd9:	74 07                	je     0x490be2
  490bdb:	c6 05 34 64 55 00 07 	mov    BYTE PTR ds:0x556434,0x7
  490be2:	c7 05 40 64 55 00 00 	mov    DWORD PTR ds:0x556440,0x0
  490be9:	00 00 00 
  490bec:	e8 0f 36 fa ff       	call   0x434200
  490bf1:	8b 10                	mov    edx,DWORD PTR [eax]
  490bf3:	68 04 64 55 00       	push   0x556404
  490bf8:	8b c8                	mov    ecx,eax
  490bfa:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  490bfd:	68 08 64 55 00       	push   0x556408
  490c02:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  490c08:	85 f6                	test   esi,esi
  490c0a:	74 09                	je     0x490c15
  490c0c:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  490c0f:	5f                   	pop    edi
  490c10:	5e                   	pop    esi
  490c11:	8b e5                	mov    esp,ebp
  490c13:	5d                   	pop    ebp
  490c14:	c3                   	ret
  490c15:	5f                   	pop    edi
  490c16:	5e                   	pop    esi
  490c17:	33 c0                	xor    eax,eax
  490c19:	8b e5                	mov    esp,ebp
  490c1b:	5d                   	pop    ebp
  490c1c:	c3                   	ret
  490c1d:	90                   	nop
  490c1e:	90                   	nop
  490c1f:	90                   	nop
  490c20:	8b 15 24 64 55 00    	mov    edx,DWORD PTR ds:0x556424
  490c26:	56                   	push   esi
  490c27:	33 f6                	xor    esi,esi
  490c29:	8b c2                	mov    eax,edx
  490c2b:	33 c9                	xor    ecx,ecx
  490c2d:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490c32:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490c38:	c6 05 34 64 55 00 08 	mov    BYTE PTR ds:0x556434,0x8
  490c3f:	3b ce                	cmp    ecx,esi
  490c41:	74 09                	je     0x490c4c
  490c43:	8b 00                	mov    eax,DWORD PTR [eax]
  490c45:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490c4a:	eb 0b                	jmp    0x490c57
  490c4c:	b9 01 00 00 00       	mov    ecx,0x1
  490c51:	89 0d 40 64 55 00    	mov    DWORD PTR ds:0x556440,ecx
  490c57:	3b c6                	cmp    eax,esi
  490c59:	0f 84 01 01 00 00    	je     0x490d60
  490c5f:	ff 0d 38 64 55 00    	dec    DWORD PTR ds:0x556438
  490c65:	8b 0d 28 64 55 00    	mov    ecx,DWORD PTR ds:0x556428
  490c6b:	3b c1                	cmp    eax,ecx
  490c6d:	a3 2c 64 55 00       	mov    ds:0x55642c,eax
  490c72:	74 4d                	je     0x490cc1
  490c74:	3b c2                	cmp    eax,edx
  490c76:	74 45                	je     0x490cbd
  490c78:	8b 08                	mov    ecx,DWORD PTR [eax]
  490c7a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  490c7d:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  490c80:	a1 20 64 55 00       	mov    eax,ds:0x556420
  490c85:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  490c88:	8b 10                	mov    edx,DWORD PTR [eax]
  490c8a:	89 11                	mov    DWORD PTR [ecx],edx
  490c8c:	a1 40 64 55 00       	mov    eax,ds:0x556440
  490c91:	83 f8 01             	cmp    eax,0x1
  490c94:	75 13                	jne    0x490ca9
  490c96:	a1 20 64 55 00       	mov    eax,ds:0x556420
  490c9b:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  490c9e:	89 0d 20 64 55 00    	mov    DWORD PTR ds:0x556420,ecx
  490ca4:	e9 84 00 00 00       	jmp    0x490d2d
  490ca9:	83 f8 02             	cmp    eax,0x2
  490cac:	75 7f                	jne    0x490d2d
  490cae:	8b 15 20 64 55 00    	mov    edx,DWORD PTR ds:0x556420
  490cb4:	8b 02                	mov    eax,DWORD PTR [edx]
  490cb6:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490cbb:	eb 70                	jmp    0x490d2d
  490cbd:	3b c1                	cmp    eax,ecx
  490cbf:	75 2a                	jne    0x490ceb
  490cc1:	3b c2                	cmp    eax,edx
  490cc3:	74 2a                	je     0x490cef
  490cc5:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  490cc8:	89 31                	mov    DWORD PTR [ecx],esi
  490cca:	a1 20 64 55 00       	mov    eax,ds:0x556420
  490ccf:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  490cd2:	89 15 28 64 55 00    	mov    DWORD PTR ds:0x556428,edx
  490cd8:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  490cdb:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490ce0:	83 3d 40 64 55 00 02 	cmp    DWORD PTR ds:0x556440,0x2
  490ce7:	75 44                	jne    0x490d2d
  490ce9:	eb 3c                	jmp    0x490d27
  490ceb:	3b c2                	cmp    eax,edx
  490ced:	75 26                	jne    0x490d15
  490cef:	3b c1                	cmp    eax,ecx
  490cf1:	74 22                	je     0x490d15
  490cf3:	8b 08                	mov    ecx,DWORD PTR [eax]
  490cf5:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
  490cf8:	8b 15 20 64 55 00    	mov    edx,DWORD PTR ds:0x556420
  490cfe:	8b 02                	mov    eax,DWORD PTR [edx]
  490d00:	a3 20 64 55 00       	mov    ds:0x556420,eax
  490d05:	a3 24 64 55 00       	mov    ds:0x556424,eax
  490d0a:	83 3d 40 64 55 00 01 	cmp    DWORD PTR ds:0x556440,0x1
  490d11:	75 1a                	jne    0x490d2d
  490d13:	eb 12                	jmp    0x490d27
  490d15:	89 35 20 64 55 00    	mov    DWORD PTR ds:0x556420,esi
  490d1b:	89 35 24 64 55 00    	mov    DWORD PTR ds:0x556424,esi
  490d21:	89 35 28 64 55 00    	mov    DWORD PTR ds:0x556428,esi
  490d27:	89 35 40 64 55 00    	mov    DWORD PTR ds:0x556440,esi
  490d2d:	a1 2c 64 55 00       	mov    eax,ds:0x55642c
  490d32:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  490d35:	51                   	push   ecx
  490d36:	e8 25 13 fb ff       	call   0x442060
  490d3b:	8b                   	.byte 0x8b
  490d3c:	15                   	.byte 0x15
  490d3d:	2c 64                	sub    al,0x64
  490d3f:	55                   	push   ebp


; Unit::SendGlobalEffectMessage - distribution des callbacks -- VA 0x0048CF40 jusqu’à 0x0048D110 (exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0048cf40 <.text+0x8bf40>:
  48cf40:	55                   	push   ebp
  48cf41:	8b ec                	mov    ebp,esp
  48cf43:	6a ff                	push   0xffffffff
  48cf45:	68 30 a7 4d 00       	push   0x4da730
  48cf4a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48cf50:	50                   	push   eax
  48cf51:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48cf58:	83 ec 48             	sub    esp,0x48
  48cf5b:	53                   	push   ebx
  48cf5c:	56                   	push   esi
  48cf5d:	57                   	push   edi
  48cf5e:	8d 45 b4             	lea    eax,[ebp-0x4c]
  48cf61:	50                   	push   eax
  48cf62:	8b f1                	mov    esi,ecx
  48cf64:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  48cf6b:	c7 45 b0 ff ff ff ff 	mov    DWORD PTR [ebp-0x50],0xffffffff
  48cf72:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  48cf78:	33 ff                	xor    edi,edi
  48cf7a:	89 7d d0             	mov    DWORD PTR [ebp-0x30],edi
  48cf7d:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
  48cf80:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
  48cf83:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
  48cf86:	c7 45 ac 3c f8 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df83c
  48cf8d:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48cf90:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48cf94:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
  48cf97:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  48cf9a:	8d 4e 30             	lea    ecx,[esi+0x30]
  48cf9d:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  48cfa0:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  48cfa3:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48cfa6:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48cfac:	3b cf                	cmp    ecx,edi
  48cfae:	74 67                	je     0x48d017
  48cfb0:	8b 01                	mov    eax,DWORD PTR [ecx]
  48cfb2:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48cfb5:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cfbb:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48cfbe:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cfc1:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  48cfc4:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48cfc8:	8b 86 f4 00 00 00    	mov    eax,DWORD PTR [esi+0xf4]
  48cfce:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  48cfd1:	74 0a                	je     0x48cfdd
  48cfd3:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48cfd6:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48cfd8:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48cfdb:	eb 07                	jmp    0x48cfe4
  48cfdd:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48cfe4:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  48cfe7:	74 17                	je     0x48d000
  48cfe9:	8b 96 f4 00 00 00    	mov    edx,DWORD PTR [esi+0xf4]
  48cfef:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48cff2:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48cff5:	51                   	push   ecx
  48cff6:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48cff9:	e8 22 3a 00 00       	call   0x490a20
  48cffe:	eb c8                	jmp    0x48cfc8
  48d000:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  48d003:	74 04                	je     0x48d009
  48d005:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48d009:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  48d00c:	8b 8e f4 00 00 00    	mov    ecx,DWORD PTR [esi+0xf4]
  48d012:	8b 11                	mov    edx,DWORD PTR [ecx]
  48d014:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48d017:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  48d01a:	8a 5d 08             	mov    bl,BYTE PTR [ebp+0x8]
  48d01d:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48d020:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48d023:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48d027:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  48d02a:	3b cf                	cmp    ecx,edi
  48d02c:	74 07                	je     0x48d035
  48d02e:	8b 00                	mov    eax,DWORD PTR [eax]
  48d030:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48d033:	eb 08                	jmp    0x48d03d
  48d035:	b9 01 00 00 00       	mov    ecx,0x1
  48d03a:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
  48d03d:	3b c7                	cmp    eax,edi
  48d03f:	74 3a                	je     0x48d07b
  48d041:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  48d044:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48d047:	3b cf                	cmp    ecx,edi
  48d049:	75 14                	jne    0x48d05f
  48d04b:	68 24 dd 50 00       	push   0x50dd24
  48d050:	6a 01                	push   0x1
  48d052:	e8 e9 4c fe ff       	call   0x471d40
  48d057:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  48d05a:	83 c4 08             	add    esp,0x8
  48d05d:	eb c8                	jmp    0x48d027
  48d05f:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  48d062:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  48d065:	57                   	push   edi
  48d066:	52                   	push   edx
  48d067:	57                   	push   edi
  48d068:	66 33 d2             	xor    dx,dx
  48d06b:	8a d3                	mov    dl,bl
  48d06d:	57                   	push   edi
  48d06e:	56                   	push   esi
  48d06f:	50                   	push   eax
  48d070:	52                   	push   edx
  48d071:	ff d1                	call   ecx
  48d073:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  48d076:	83 c4 1c             	add    esp,0x1c
  48d079:	eb ac                	jmp    0x48d027
  48d07b:	3b cf                	cmp    ecx,edi
  48d07d:	74 04                	je     0x48d083
  48d07f:	c6 45 e0 07          	mov    BYTE PTR [ebp-0x20],0x7
  48d083:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48d086:	8b 01                	mov    eax,DWORD PTR [ecx]
  48d088:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48d08b:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48d08e:	c7 45 ac 3c f8 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df83c
  48d095:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  48d098:	33 c0                	xor    eax,eax
  48d09a:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  48d0a1:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  48d0a4:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  48d0a7:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48d0ab:	3b c7                	cmp    eax,edi
  48d0ad:	74 07                	je     0x48d0b6
  48d0af:	8b 09                	mov    ecx,DWORD PTR [ecx]
  48d0b1:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  48d0b4:	eb 08                	jmp    0x48d0be
  48d0b6:	b8 01 00 00 00       	mov    eax,0x1
  48d0bb:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  48d0be:	3b cf                	cmp    ecx,edi
  48d0c0:	74 10                	je     0x48d0d2
  48d0c2:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48d0c5:	e8 46 34 00 00       	call   0x490510
  48d0ca:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  48d0cd:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  48d0d0:	eb d9                	jmp    0x48d0ab
  48d0d2:	3b c7                	cmp    eax,edi
  48d0d4:	74 04                	je     0x48d0da
  48d0d6:	c6 45 e0 07          	mov    BYTE PTR [ebp-0x20],0x7
  48d0da:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  48d0dd:	51                   	push   ecx
  48d0de:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48d0e1:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  48d0e8:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  48d0ee:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48d0f1:	5f                   	pop    edi
  48d0f2:	5e                   	pop    esi
  48d0f3:	5b                   	pop    ebx
  48d0f4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48d0fb:	8b e5                	mov    esp,ebp
  48d0fd:	5d                   	pop    ebp
  48d0fe:	c2 10 00             	ret    0x10
  48d101:	90                   	nop
  48d102:	90                   	nop
  48d103:	90                   	nop
  48d104:	90                   	nop
  48d105:	90                   	nop
  48d106:	90                   	nop
  48d107:	90                   	nop
  48d108:	90                   	nop
  48d109:	90                   	nop
  48d10a:	90                   	nop
  48d10b:	90                   	nop
  48d10c:	90                   	nop
  48d10d:	90                   	nop
  48d10e:	90                   	nop
  48d10f:	90                   	nop

