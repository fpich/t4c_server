; T4C Server(1).exe / passe 34 : désassemblage objdump x86 validé contre les octets PE32.
; Les portions sont des plages de preuves, pas une garantie de comportement complet.

; TFCTimers AddTimer/Remove/Verify/Destroy & manager wrappers -- VA 0x00488C00 jusqu’à 0x004897D0 (exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00488c00 <.text+0x87c00>:
  488c00:	56                   	push   esi
  488c01:	8b f1                	mov    esi,ecx
  488c03:	8d 46 10             	lea    eax,[esi+0x10]
  488c06:	50                   	push   eax
  488c07:	c7 46 08 8c e5 4d 00 	mov    DWORD PTR [esi+0x8],0x4de58c
  488c0e:	c7 46 0c ff ff ff ff 	mov    DWORD PTR [esi+0xc],0xffffffff
  488c15:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  488c1b:	c7 06 24 f5 4d 00    	mov    DWORD PTR [esi],0x4df524
  488c21:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
  488c28:	8b c6                	mov    eax,esi
  488c2a:	5e                   	pop    esi
  488c2b:	c3                   	ret
  488c2c:	90                   	nop
  488c2d:	90                   	nop
  488c2e:	90                   	nop
  488c2f:	90                   	nop
  488c30:	55                   	push   ebp
  488c31:	8b ec                	mov    ebp,esp
  488c33:	6a ff                	push   0xffffffff
  488c35:	68 3b a5 4d 00       	push   0x4da53b
  488c3a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  488c40:	50                   	push   eax
  488c41:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  488c48:	51                   	push   ecx
  488c49:	56                   	push   esi
  488c4a:	8b f1                	mov    esi,ecx
  488c4c:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  488c4f:	c7 06 24 f5 4d 00    	mov    DWORD PTR [esi],0x4df524
  488c55:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  488c58:	85 c9                	test   ecx,ecx
  488c5a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  488c61:	74 06                	je     0x488c69
  488c63:	8b 01                	mov    eax,DWORD PTR [ecx]
  488c65:	6a 01                	push   0x1
  488c67:	ff 10                	call   DWORD PTR [eax]
  488c69:	c7 46 08 8c e5 4d 00 	mov    DWORD PTR [esi+0x8],0x4de58c
  488c70:	83 c6 10             	add    esi,0x10
  488c73:	56                   	push   esi
  488c74:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  488c7a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  488c7d:	5e                   	pop    esi
  488c7e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  488c85:	8b e5                	mov    esp,ebp
  488c87:	5d                   	pop    ebp
  488c88:	c3                   	ret
  488c89:	90                   	nop
  488c8a:	90                   	nop
  488c8b:	90                   	nop
  488c8c:	90                   	nop
  488c8d:	90                   	nop
  488c8e:	90                   	nop
  488c8f:	90                   	nop
  488c90:	55                   	push   ebp
  488c91:	8b ec                	mov    ebp,esp
  488c93:	83 ec 08             	sub    esp,0x8
  488c96:	53                   	push   ebx
  488c97:	8b d9                	mov    ebx,ecx
  488c99:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  488c9c:	8d 4b 08             	lea    ecx,[ebx+0x8]
  488c9f:	56                   	push   esi
  488ca0:	57                   	push   edi
  488ca1:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  488ca4:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
  488ca7:	ff 50 04             	call   DWORD PTR [eax+0x4]
  488caa:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  488cad:	33 ff                	xor    edi,edi
  488caf:	3b c7                	cmp    eax,edi
  488cb1:	75 4a                	jne    0x488cfd
  488cb3:	6a 44                	push   0x44
  488cb5:	e8 36 93 fb ff       	call   0x441ff0
  488cba:	8b f0                	mov    esi,eax
  488cbc:	83 c4 04             	add    esp,0x4
  488cbf:	3b f7                	cmp    esi,edi
  488cc1:	74 35                	je     0x488cf8
  488cc3:	8d 4e 08             	lea    ecx,[esi+0x8]
  488cc6:	51                   	push   ecx
  488cc7:	c7 06 8c e5 4d 00    	mov    DWORD PTR [esi],0x4de58c
  488ccd:	c7 46 04 ff ff ff ff 	mov    DWORD PTR [esi+0x4],0xffffffff
  488cd4:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  488cda:	89 7e 24             	mov    DWORD PTR [esi+0x24],edi
  488cdd:	89 7e 28             	mov    DWORD PTR [esi+0x28],edi
  488ce0:	89 7e 2c             	mov    DWORD PTR [esi+0x2c],edi
  488ce3:	89 7e 30             	mov    DWORD PTR [esi+0x30],edi
  488ce6:	c7 06 28 f6 4d 00    	mov    DWORD PTR [esi],0x4df628
  488cec:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  488cef:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  488cf3:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  488cf6:	eb 02                	jmp    0x488cfa
  488cf8:	33 f6                	xor    esi,esi
  488cfa:	89 73 04             	mov    DWORD PTR [ebx+0x4],esi
  488cfd:	6a 10                	push   0x10
  488cff:	e8 ec 92 fb ff       	call   0x441ff0
  488d04:	8b d8                	mov    ebx,eax
  488d06:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  488d09:	83 c4 04             	add    esp,0x4
  488d0c:	3b c7                	cmp    eax,edi
  488d0e:	74 0d                	je     0x488d1d
  488d10:	e8 7b 95 fe ff       	call   0x472290
  488d15:	03 45 0c             	add    eax,DWORD PTR [ebp+0xc]
  488d18:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  488d1b:	eb 06                	jmp    0x488d23
  488d1d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  488d20:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  488d23:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  488d27:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  488d2a:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  488d2d:	66 89 03             	mov    WORD PTR [ebx],ax
  488d30:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  488d33:	89 53 0c             	mov    DWORD PTR [ebx+0xc],edx
  488d36:	89 4b 08             	mov    DWORD PTR [ebx+0x8],ecx
  488d39:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  488d3c:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  488d3f:	8b 56 38             	mov    edx,DWORD PTR [esi+0x38]
  488d42:	42                   	inc    edx
  488d43:	3b c7                	cmp    eax,edi
  488d45:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  488d48:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  488d4b:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  488d4f:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  488d52:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  488d55:	6a 0c                	push   0xc
  488d57:	75 28                	jne    0x488d81
  488d59:	e8 92 92 fb ff       	call   0x441ff0
  488d5e:	83 c4 04             	add    esp,0x4
  488d61:	3b c7                	cmp    eax,edi
  488d63:	74 07                	je     0x488d6c
  488d65:	89 38                	mov    DWORD PTR [eax],edi
  488d67:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  488d6a:	eb 02                	jmp    0x488d6e
  488d6c:	33 c0                	xor    eax,eax
  488d6e:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  488d71:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  488d74:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  488d77:	89 38                	mov    DWORD PTR [eax],edi
  488d79:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  488d7c:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  488d7f:	eb 2b                	jmp    0x488dac
  488d81:	e8 6a 92 fb ff       	call   0x441ff0
  488d86:	83 c4 04             	add    esp,0x4
  488d89:	3b c7                	cmp    eax,edi
  488d8b:	74 07                	je     0x488d94
  488d8d:	89 38                	mov    DWORD PTR [eax],edi
  488d8f:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  488d92:	eb 02                	jmp    0x488d96
  488d94:	33 c0                	xor    eax,eax
  488d96:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488d99:	89 02                	mov    DWORD PTR [edx],eax
  488d9b:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  488d9e:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  488da1:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  488da4:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  488da7:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488daa:	89 3a                	mov    DWORD PTR [edx],edi
  488dac:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  488daf:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  488db2:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  488db5:	8b 11                	mov    edx,DWORD PTR [ecx]
  488db7:	ff 52 08             	call   DWORD PTR [edx+0x8]
  488dba:	5f                   	pop    edi
  488dbb:	5e                   	pop    esi
  488dbc:	5b                   	pop    ebx
  488dbd:	8b e5                	mov    esp,ebp
  488dbf:	5d                   	pop    ebp
  488dc0:	c2 14 00             	ret    0x14
  488dc3:	90                   	nop
  488dc4:	90                   	nop
  488dc5:	90                   	nop
  488dc6:	90                   	nop
  488dc7:	90                   	nop
  488dc8:	90                   	nop
  488dc9:	90                   	nop
  488dca:	90                   	nop
  488dcb:	90                   	nop
  488dcc:	90                   	nop
  488dcd:	90                   	nop
  488dce:	90                   	nop
  488dcf:	90                   	nop
  488dd0:	55                   	push   ebp
  488dd1:	8b ec                	mov    ebp,esp
  488dd3:	83 ec 08             	sub    esp,0x8
  488dd6:	53                   	push   ebx
  488dd7:	56                   	push   esi
  488dd8:	8b f1                	mov    esi,ecx
  488dda:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  488ddd:	57                   	push   edi
  488dde:	33 db                	xor    ebx,ebx
  488de0:	33 ff                	xor    edi,edi
  488de2:	3b c3                	cmp    eax,ebx
  488de4:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  488de7:	0f 84 2d 01 00 00    	je     0x488f1a
  488ded:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  488df0:	8d 4e 08             	lea    ecx,[esi+0x8]
  488df3:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
  488df6:	ff 50 04             	call   DWORD PTR [eax+0x4]
  488df9:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  488dfc:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  488dff:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  488e02:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  488e05:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  488e09:	eb 03                	jmp    0x488e0e
  488e0b:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
  488e0e:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  488e11:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  488e14:	74 0a                	je     0x488e20
  488e16:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  488e19:	8b 0a                	mov    ecx,DWORD PTR [edx]
  488e1b:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  488e1e:	eb 07                	jmp    0x488e27
  488e20:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  488e27:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  488e2a:	0f 84 d6 00 00 00    	je     0x488f06
  488e30:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  488e33:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488e36:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  488e39:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  488e3c:	39 48 08             	cmp    DWORD PTR [eax+0x8],ecx
  488e3f:	75 ca                	jne    0x488e0b
  488e41:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488e44:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
  488e47:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  488e4a:	4f                   	dec    edi
  488e4b:	8b c2                	mov    eax,edx
  488e4d:	3b c1                	cmp    eax,ecx
  488e4f:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  488e52:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  488e55:	74 3d                	je     0x488e94
  488e57:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  488e5a:	74 34                	je     0x488e90
  488e5c:	8b 08                	mov    ecx,DWORD PTR [eax]
  488e5e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  488e61:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  488e64:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  488e67:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  488e6a:	8b 10                	mov    edx,DWORD PTR [eax]
  488e6c:	89 11                	mov    DWORD PTR [ecx],edx
  488e6e:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  488e71:	83 f8 01             	cmp    eax,0x1
  488e74:	75 0b                	jne    0x488e81
  488e76:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  488e79:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  488e7c:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  488e7f:	eb 63                	jmp    0x488ee4
  488e81:	83 f8 02             	cmp    eax,0x2
  488e84:	75 5e                	jne    0x488ee4
  488e86:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488e89:	8b 02                	mov    eax,DWORD PTR [edx]
  488e8b:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  488e8e:	eb 54                	jmp    0x488ee4
  488e90:	3b c1                	cmp    eax,ecx
  488e92:	75 23                	jne    0x488eb7
  488e94:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  488e97:	74 23                	je     0x488ebc
  488e99:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  488e9c:	89 19                	mov    DWORD PTR [ecx],ebx
  488e9e:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488ea1:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  488ea4:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  488ea7:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  488eab:	8b ca                	mov    ecx,edx
  488ead:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  488eb0:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  488eb3:	75 2f                	jne    0x488ee4
  488eb5:	eb 2a                	jmp    0x488ee1
  488eb7:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  488eba:	75 1c                	jne    0x488ed8
  488ebc:	3b c1                	cmp    eax,ecx
  488ebe:	74 18                	je     0x488ed8
  488ec0:	8b 00                	mov    eax,DWORD PTR [eax]
  488ec2:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  488ec5:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  488ec8:	8b 01                	mov    eax,DWORD PTR [ecx]
  488eca:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  488ecd:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  488ed0:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  488ed4:	75 0e                	jne    0x488ee4
  488ed6:	eb 09                	jmp    0x488ee1
  488ed8:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  488edb:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  488ede:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  488ee1:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  488ee4:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  488ee7:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  488eea:	50                   	push   eax
  488eeb:	e8 70 91 fb ff       	call   0x442060
  488ef0:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  488ef3:	51                   	push   ecx
  488ef4:	e8 67 91 fb ff       	call   0x442060
  488ef9:	83 c4 08             	add    esp,0x8
  488efc:	bf 01 00 00 00       	mov    edi,0x1
  488f01:	e9 05 ff ff ff       	jmp    0x488e0b
  488f06:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  488f09:	74 04                	je     0x488f0f
  488f0b:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  488f0f:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  488f12:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  488f15:	8b 11                	mov    edx,DWORD PTR [ecx]
  488f17:	ff 52 08             	call   DWORD PTR [edx+0x8]
  488f1a:	8b c7                	mov    eax,edi
  488f1c:	5f                   	pop    edi
  488f1d:	5e                   	pop    esi
  488f1e:	5b                   	pop    ebx
  488f1f:	8b e5                	mov    esp,ebp
  488f21:	5d                   	pop    ebp
  488f22:	c2 04 00             	ret    0x4
  488f25:	90                   	nop
  488f26:	90                   	nop
  488f27:	90                   	nop
  488f28:	90                   	nop
  488f29:	90                   	nop
  488f2a:	90                   	nop
  488f2b:	90                   	nop
  488f2c:	90                   	nop
  488f2d:	90                   	nop
  488f2e:	90                   	nop
  488f2f:	90                   	nop
  488f30:	55                   	push   ebp
  488f31:	8b ec                	mov    ebp,esp
  488f33:	83 ec 08             	sub    esp,0x8
  488f36:	53                   	push   ebx
  488f37:	56                   	push   esi
  488f38:	8b f1                	mov    esi,ecx
  488f3a:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  488f3d:	57                   	push   edi
  488f3e:	33 db                	xor    ebx,ebx
  488f40:	33 ff                	xor    edi,edi
  488f42:	3b c3                	cmp    eax,ebx
  488f44:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  488f47:	0f 84 2d 01 00 00    	je     0x48907a
  488f4d:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  488f50:	8d 4e 08             	lea    ecx,[esi+0x8]
  488f53:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
  488f56:	ff 50 04             	call   DWORD PTR [eax+0x4]
  488f59:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  488f5c:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  488f5f:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  488f62:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  488f65:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  488f69:	eb 03                	jmp    0x488f6e
  488f6b:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
  488f6e:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  488f71:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  488f74:	74 0a                	je     0x488f80
  488f76:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  488f79:	8b 0a                	mov    ecx,DWORD PTR [edx]
  488f7b:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  488f7e:	eb 07                	jmp    0x488f87
  488f80:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  488f87:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  488f8a:	0f 84 d6 00 00 00    	je     0x489066
  488f90:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  488f93:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488f96:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  488f99:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  488f9c:	39 48 0c             	cmp    DWORD PTR [eax+0xc],ecx
  488f9f:	75 ca                	jne    0x488f6b
  488fa1:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488fa4:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
  488fa7:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  488faa:	4f                   	dec    edi
  488fab:	8b c2                	mov    eax,edx
  488fad:	3b c1                	cmp    eax,ecx
  488faf:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  488fb2:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  488fb5:	74 3d                	je     0x488ff4
  488fb7:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  488fba:	74 34                	je     0x488ff0
  488fbc:	8b 08                	mov    ecx,DWORD PTR [eax]
  488fbe:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  488fc1:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  488fc4:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  488fc7:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  488fca:	8b 10                	mov    edx,DWORD PTR [eax]
  488fcc:	89 11                	mov    DWORD PTR [ecx],edx
  488fce:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  488fd1:	83 f8 01             	cmp    eax,0x1
  488fd4:	75 0b                	jne    0x488fe1
  488fd6:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  488fd9:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  488fdc:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  488fdf:	eb 63                	jmp    0x489044
  488fe1:	83 f8 02             	cmp    eax,0x2
  488fe4:	75 5e                	jne    0x489044
  488fe6:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  488fe9:	8b 02                	mov    eax,DWORD PTR [edx]
  488feb:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  488fee:	eb 54                	jmp    0x489044
  488ff0:	3b c1                	cmp    eax,ecx
  488ff2:	75 23                	jne    0x489017
  488ff4:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  488ff7:	74 23                	je     0x48901c
  488ff9:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  488ffc:	89 19                	mov    DWORD PTR [ecx],ebx
  488ffe:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  489001:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  489004:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  489007:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  48900b:	8b ca                	mov    ecx,edx
  48900d:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  489010:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  489013:	75 2f                	jne    0x489044
  489015:	eb 2a                	jmp    0x489041
  489017:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48901a:	75 1c                	jne    0x489038
  48901c:	3b c1                	cmp    eax,ecx
  48901e:	74 18                	je     0x489038
  489020:	8b 00                	mov    eax,DWORD PTR [eax]
  489022:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  489025:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  489028:	8b 01                	mov    eax,DWORD PTR [ecx]
  48902a:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48902d:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  489030:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  489034:	75 0e                	jne    0x489044
  489036:	eb 09                	jmp    0x489041
  489038:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  48903b:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  48903e:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  489041:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  489044:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  489047:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  48904a:	50                   	push   eax
  48904b:	e8 10 90 fb ff       	call   0x442060
  489050:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  489053:	51                   	push   ecx
  489054:	e8 07 90 fb ff       	call   0x442060
  489059:	83 c4 08             	add    esp,0x8
  48905c:	bf 01 00 00 00       	mov    edi,0x1
  489061:	e9 05 ff ff ff       	jmp    0x488f6b
  489066:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  489069:	74 04                	je     0x48906f
  48906b:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48906f:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  489072:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  489075:	8b 11                	mov    edx,DWORD PTR [ecx]
  489077:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48907a:	8b c7                	mov    eax,edi
  48907c:	5f                   	pop    edi
  48907d:	5e                   	pop    esi
  48907e:	5b                   	pop    ebx
  48907f:	8b e5                	mov    esp,ebp
  489081:	5d                   	pop    ebp
  489082:	c2 04 00             	ret    0x4
  489085:	90                   	nop
  489086:	90                   	nop
  489087:	90                   	nop
  489088:	90                   	nop
  489089:	90                   	nop
  48908a:	90                   	nop
  48908b:	90                   	nop
  48908c:	90                   	nop
  48908d:	90                   	nop
  48908e:	90                   	nop
  48908f:	90                   	nop
  489090:	55                   	push   ebp
  489091:	8b ec                	mov    ebp,esp
  489093:	83 ec 08             	sub    esp,0x8
  489096:	53                   	push   ebx
  489097:	56                   	push   esi
  489098:	8b f1                	mov    esi,ecx
  48909a:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  48909d:	57                   	push   edi
  48909e:	33 db                	xor    ebx,ebx
  4890a0:	33 ff                	xor    edi,edi
  4890a2:	3b c3                	cmp    eax,ebx
  4890a4:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  4890a7:	0f 84 33 01 00 00    	je     0x4891e0
  4890ad:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  4890b0:	8d 4e 08             	lea    ecx,[esi+0x8]
  4890b3:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
  4890b6:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4890b9:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4890bc:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  4890bf:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4890c2:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  4890c5:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  4890c9:	eb 03                	jmp    0x4890ce
  4890cb:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
  4890ce:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4890d1:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  4890d4:	74 0a                	je     0x4890e0
  4890d6:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  4890d9:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4890db:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4890de:	eb 07                	jmp    0x4890e7
  4890e0:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  4890e7:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  4890ea:	0f 84 dc 00 00 00    	je     0x4891cc
  4890f0:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  4890f3:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  4890f6:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  4890f9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4890fc:	39 48 0c             	cmp    DWORD PTR [eax+0xc],ecx
  4890ff:	75 ca                	jne    0x4890cb
  489101:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  489104:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
  489107:	75 c2                	jne    0x4890cb
  489109:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
  48910c:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48910f:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  489112:	4f                   	dec    edi
  489113:	3b c1                	cmp    eax,ecx
  489115:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  489118:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  48911b:	74 3d                	je     0x48915a
  48911d:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  489120:	74 34                	je     0x489156
  489122:	8b 08                	mov    ecx,DWORD PTR [eax]
  489124:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  489127:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  48912a:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48912d:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  489130:	8b 10                	mov    edx,DWORD PTR [eax]
  489132:	89 11                	mov    DWORD PTR [ecx],edx
  489134:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  489137:	83 f8 01             	cmp    eax,0x1
  48913a:	75 0b                	jne    0x489147
  48913c:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48913f:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  489142:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  489145:	eb 63                	jmp    0x4891aa
  489147:	83 f8 02             	cmp    eax,0x2
  48914a:	75 5e                	jne    0x4891aa
  48914c:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48914f:	8b 02                	mov    eax,DWORD PTR [edx]
  489151:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  489154:	eb 54                	jmp    0x4891aa
  489156:	3b c1                	cmp    eax,ecx
  489158:	75 23                	jne    0x48917d
  48915a:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48915d:	74 23                	je     0x489182
  48915f:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  489162:	89 19                	mov    DWORD PTR [ecx],ebx
  489164:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  489167:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  48916a:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48916d:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  489171:	8b ca                	mov    ecx,edx
  489173:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  489176:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  489179:	75 2f                	jne    0x4891aa
  48917b:	eb 2a                	jmp    0x4891a7
  48917d:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  489180:	75 1c                	jne    0x48919e
  489182:	3b c1                	cmp    eax,ecx
  489184:	74 18                	je     0x48919e
  489186:	8b 00                	mov    eax,DWORD PTR [eax]
  489188:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48918b:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48918e:	8b 01                	mov    eax,DWORD PTR [ecx]
  489190:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  489193:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  489196:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  48919a:	75 0e                	jne    0x4891aa
  48919c:	eb 09                	jmp    0x4891a7
  48919e:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  4891a1:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  4891a4:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  4891a7:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  4891aa:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  4891ad:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  4891b0:	50                   	push   eax
  4891b1:	e8 aa 8e fb ff       	call   0x442060
  4891b6:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  4891b9:	51                   	push   ecx
  4891ba:	e8 a1 8e fb ff       	call   0x442060
  4891bf:	83 c4 08             	add    esp,0x8
  4891c2:	bf 01 00 00 00       	mov    edi,0x1
  4891c7:	e9 ff fe ff ff       	jmp    0x4890cb
  4891cc:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  4891cf:	74 04                	je     0x4891d5
  4891d1:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  4891d5:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  4891d8:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  4891db:	8b 11                	mov    edx,DWORD PTR [ecx]
  4891dd:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4891e0:	8b c7                	mov    eax,edi
  4891e2:	5f                   	pop    edi
  4891e3:	5e                   	pop    esi
  4891e4:	5b                   	pop    ebx
  4891e5:	8b e5                	mov    esp,ebp
  4891e7:	5d                   	pop    ebp
  4891e8:	c2 08 00             	ret    0x8
  4891eb:	90                   	nop
  4891ec:	90                   	nop
  4891ed:	90                   	nop
  4891ee:	90                   	nop
  4891ef:	90                   	nop
  4891f0:	55                   	push   ebp
  4891f1:	8b ec                	mov    ebp,esp
  4891f3:	83 ec 08             	sub    esp,0x8
  4891f6:	53                   	push   ebx
  4891f7:	56                   	push   esi
  4891f8:	8b f1                	mov    esi,ecx
  4891fa:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4891fd:	57                   	push   edi
  4891fe:	33 db                	xor    ebx,ebx
  489200:	33 ff                	xor    edi,edi
  489202:	3b c3                	cmp    eax,ebx
  489204:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  489207:	0f 84 2c 01 00 00    	je     0x489339
  48920d:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  489210:	8d 4e 08             	lea    ecx,[esi+0x8]
  489213:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
  489216:	ff 50 04             	call   DWORD PTR [eax+0x4]
  489219:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  48921c:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48921f:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  489222:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  489225:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  489229:	eb 03                	jmp    0x48922e
  48922b:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
  48922e:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  489231:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  489234:	74 0a                	je     0x489240
  489236:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  489239:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48923b:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48923e:	eb 07                	jmp    0x489247
  489240:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  489247:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  48924a:	0f 84 d5 00 00 00    	je     0x489325
  489250:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  489253:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  489256:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  489259:	66 8b 4d 08          	mov    cx,WORD PTR [ebp+0x8]
  48925d:	66 39 08             	cmp    WORD PTR [eax],cx
  489260:	75 c9                	jne    0x48922b
  489262:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
  489265:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  489268:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  48926b:	4f                   	dec    edi
  48926c:	3b c1                	cmp    eax,ecx
  48926e:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  489271:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  489274:	74 3d                	je     0x4892b3
  489276:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  489279:	74 34                	je     0x4892af
  48927b:	8b 08                	mov    ecx,DWORD PTR [eax]
  48927d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  489280:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  489283:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  489286:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  489289:	8b 10                	mov    edx,DWORD PTR [eax]
  48928b:	89 11                	mov    DWORD PTR [ecx],edx
  48928d:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  489290:	83 f8 01             	cmp    eax,0x1
  489293:	75 0b                	jne    0x4892a0
  489295:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  489298:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48929b:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  48929e:	eb 63                	jmp    0x489303
  4892a0:	83 f8 02             	cmp    eax,0x2
  4892a3:	75 5e                	jne    0x489303
  4892a5:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  4892a8:	8b 02                	mov    eax,DWORD PTR [edx]
  4892aa:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4892ad:	eb 54                	jmp    0x489303
  4892af:	3b c1                	cmp    eax,ecx
  4892b1:	75 23                	jne    0x4892d6
  4892b3:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  4892b6:	74 23                	je     0x4892db
  4892b8:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4892bb:	89 19                	mov    DWORD PTR [ecx],ebx
  4892bd:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  4892c0:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  4892c3:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  4892c6:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  4892ca:	8b ca                	mov    ecx,edx
  4892cc:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4892cf:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  4892d2:	75 2f                	jne    0x489303
  4892d4:	eb 2a                	jmp    0x489300
  4892d6:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  4892d9:	75 1c                	jne    0x4892f7
  4892db:	3b c1                	cmp    eax,ecx
  4892dd:	74 18                	je     0x4892f7
  4892df:	8b 00                	mov    eax,DWORD PTR [eax]
  4892e1:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  4892e4:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  4892e7:	8b 01                	mov    eax,DWORD PTR [ecx]
  4892e9:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4892ec:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4892ef:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  4892f3:	75 0e                	jne    0x489303
  4892f5:	eb 09                	jmp    0x489300
  4892f7:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  4892fa:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  4892fd:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  489300:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  489303:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  489306:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  489309:	50                   	push   eax
  48930a:	e8 51 8d fb ff       	call   0x442060
  48930f:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  489312:	51                   	push   ecx
  489313:	e8 48 8d fb ff       	call   0x442060
  489318:	83 c4 08             	add    esp,0x8
  48931b:	bf 01 00 00 00       	mov    edi,0x1
  489320:	e9 06 ff ff ff       	jmp    0x48922b
  489325:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  489328:	74 04                	je     0x48932e
  48932a:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48932e:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  489331:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  489334:	8b 11                	mov    edx,DWORD PTR [ecx]
  489336:	ff 52 08             	call   DWORD PTR [edx+0x8]
  489339:	8b c7                	mov    eax,edi
  48933b:	5f                   	pop    edi
  48933c:	5e                   	pop    esi
  48933d:	5b                   	pop    ebx
  48933e:	8b e5                	mov    esp,ebp
  489340:	5d                   	pop    ebp
  489341:	c2 04 00             	ret    0x4
  489344:	90                   	nop
  489345:	90                   	nop
  489346:	90                   	nop
  489347:	90                   	nop
  489348:	90                   	nop
  489349:	90                   	nop
  48934a:	90                   	nop
  48934b:	90                   	nop
  48934c:	90                   	nop
  48934d:	90                   	nop
  48934e:	90                   	nop
  48934f:	90                   	nop
  489350:	55                   	push   ebp
  489351:	8b ec                	mov    ebp,esp
  489353:	6a ff                	push   0xffffffff
  489355:	68 60 a5 4d 00       	push   0x4da560
  48935a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  489360:	50                   	push   eax
  489361:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  489368:	83 ec 48             	sub    esp,0x48
  48936b:	53                   	push   ebx
  48936c:	8b d9                	mov    ebx,ecx
  48936e:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  489371:	57                   	push   edi
  489372:	33 ff                	xor    edi,edi
  489374:	3b c7                	cmp    eax,edi
  489376:	0f 84 34 02 00 00    	je     0x4895b0
  48937c:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  48937f:	8d 4b 08             	lea    ecx,[ebx+0x8]
  489382:	56                   	push   esi
  489383:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  489386:	ff 50 04             	call   DWORD PTR [eax+0x4]
  489389:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  48938c:	51                   	push   ecx
  48938d:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  489394:	c7 45 b0 ff ff ff ff 	mov    DWORD PTR [ebp-0x50],0xffffffff
  48939b:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  4893a1:	89 7d d0             	mov    DWORD PTR [ebp-0x30],edi
  4893a4:	89 7d d4             	mov    DWORD PTR [ebp-0x2c],edi
  4893a7:	89 7d d8             	mov    DWORD PTR [ebp-0x28],edi
  4893aa:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
  4893ad:	c7 45 ac 28 f6 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df628
  4893b4:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  4893b7:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  4893bb:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
  4893be:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  4893c1:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  4893c4:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  4893c7:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  4893ca:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  4893cd:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  4893d1:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  4893d4:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  4893d7:	74 0f                	je     0x4893e8
  4893d9:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  4893dc:	8b 11                	mov    edx,DWORD PTR [ecx]
  4893de:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  4893e1:	be 01 00 00 00       	mov    esi,0x1
  4893e6:	eb 08                	jmp    0x4893f0
  4893e8:	be 01 00 00 00       	mov    esi,0x1
  4893ed:	89 70 40             	mov    DWORD PTR [eax+0x40],esi
  4893f0:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  4893f3:	0f 84 17 01 00 00    	je     0x489510
  4893f9:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  4893fc:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  4893ff:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  489402:	e8 89 8e fe ff       	call   0x472290
  489407:	39 46 04             	cmp    DWORD PTR [esi+0x4],eax
  48940a:	77 c5                	ja     0x4893d1
  48940c:	56                   	push   esi
  48940d:	8d 4d ac             	lea    ecx,[ebp-0x54]
  489410:	e8 3b 07 00 00       	call   0x489b50
  489415:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  489418:	8b 48 38             	mov    ecx,DWORD PTR [eax+0x38]
  48941b:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48941e:	49                   	dec    ecx
  48941f:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
  489422:	8b ca                	mov    ecx,edx
  489424:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
  489427:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  48942a:	3b ca                	cmp    ecx,edx
  48942c:	74 5f                	je     0x48948d
  48942e:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  489431:	74 56                	je     0x489489
  489433:	8b 11                	mov    edx,DWORD PTR [ecx]
  489435:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  489438:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  48943b:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48943e:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  489441:	8b 09                	mov    ecx,DWORD PTR [ecx]
  489443:	89 0a                	mov    DWORD PTR [edx],ecx
  489445:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  489448:	83 f9 01             	cmp    ecx,0x1
  48944b:	75 1a                	jne    0x489467
  48944d:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  489450:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  489453:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  489456:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  489459:	50                   	push   eax
  48945a:	e8 01 8c fb ff       	call   0x442060
  48945f:	83 c4 04             	add    esp,0x4
  489462:	e9 6a ff ff ff       	jmp    0x4893d1
  489467:	83 f9 02             	cmp    ecx,0x2
  48946a:	0f 85 8f 00 00 00    	jne    0x4894ff
  489470:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  489473:	8b 0a                	mov    ecx,DWORD PTR [edx]
  489475:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  489478:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  48947b:	50                   	push   eax
  48947c:	e8 df 8b fb ff       	call   0x442060
  489481:	83 c4 04             	add    esp,0x4
  489484:	e9 48 ff ff ff       	jmp    0x4893d1
  489489:	3b ca                	cmp    ecx,edx
  48948b:	75 33                	jne    0x4894c0
  48948d:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  489490:	74 33                	je     0x4894c5
  489492:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  489495:	89 3a                	mov    DWORD PTR [edx],edi
  489497:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48949a:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48949d:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  4894a0:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4894a3:	83 78 40 02          	cmp    DWORD PTR [eax+0x40],0x2
  4894a7:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  4894aa:	75 53                	jne    0x4894ff
  4894ac:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  4894af:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  4894b2:	50                   	push   eax
  4894b3:	e8 a8 8b fb ff       	call   0x442060
  4894b8:	83 c4 04             	add    esp,0x4
  4894bb:	e9 11 ff ff ff       	jmp    0x4893d1
  4894c0:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  4894c3:	75 2e                	jne    0x4894f3
  4894c5:	3b ca                	cmp    ecx,edx
  4894c7:	74 2a                	je     0x4894f3
  4894c9:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4894cb:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  4894ce:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  4894d1:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4894d3:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4894d6:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  4894d9:	83 78 40 01          	cmp    DWORD PTR [eax+0x40],0x1
  4894dd:	75 20                	jne    0x4894ff
  4894df:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  4894e2:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  4894e5:	50                   	push   eax
  4894e6:	e8 75 8b fb ff       	call   0x442060
  4894eb:	83 c4 04             	add    esp,0x4
  4894ee:	e9 de fe ff ff       	jmp    0x4893d1
  4894f3:	89 78 20             	mov    DWORD PTR [eax+0x20],edi
  4894f6:	89 78 24             	mov    DWORD PTR [eax+0x24],edi
  4894f9:	89 78 28             	mov    DWORD PTR [eax+0x28],edi
  4894fc:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  4894ff:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  489502:	50                   	push   eax
  489503:	e8 58 8b fb ff       	call   0x442060
  489508:	83 c4 04             	add    esp,0x4
  48950b:	e9 c1 fe ff ff       	jmp    0x4893d1
  489510:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  489513:	74 04                	je     0x489519
  489515:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  489519:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48951c:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  48951f:	8b 11                	mov    edx,DWORD PTR [ecx]
  489521:	ff 52 08             	call   DWORD PTR [edx+0x8]
  489524:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  489527:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48952a:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48952d:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  489531:	39 7d ec             	cmp    DWORD PTR [ebp-0x14],edi
  489534:	74 07                	je     0x48953d
  489536:	8b 00                	mov    eax,DWORD PTR [eax]
  489538:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48953b:	eb 03                	jmp    0x489540
  48953d:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
  489540:	3b c7                	cmp    eax,edi
  489542:	74 23                	je     0x489567
  489544:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  489547:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  48954a:	33 d2                	xor    edx,edx
  48954c:	66 8b 10             	mov    dx,WORD PTR [eax]
  48954f:	57                   	push   edi
  489550:	51                   	push   ecx
  489551:	6a 05                	push   0x5
  489553:	52                   	push   edx
  489554:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  489557:	83 c4 10             	add    esp,0x10
  48955a:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48955d:	e8 ae 04 00 00       	call   0x489a10
  489562:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  489565:	eb ca                	jmp    0x489531
  489567:	c7 45 ac 28 f6 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df628
  48956e:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  489571:	8d 4d ac             	lea    ecx,[ebp-0x54]
  489574:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  489577:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48957a:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  48957d:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  489581:	e8 5a 05 00 00       	call   0x489ae0
  489586:	85 c0                	test   eax,eax
  489588:	5e                   	pop    esi
  489589:	74 14                	je     0x48959f
  48958b:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48958e:	e8 8d 03 00 00       	call   0x489920
  489593:	8d 4d ac             	lea    ecx,[ebp-0x54]
  489596:	e8 45 05 00 00       	call   0x489ae0
  48959b:	85 c0                	test   eax,eax
  48959d:	75 ec                	jne    0x48958b
  48959f:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  4895a2:	51                   	push   ecx
  4895a3:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  4895aa:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  4895b0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4895b3:	5f                   	pop    edi
  4895b4:	5b                   	pop    ebx
  4895b5:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4895bc:	8b e5                	mov    esp,ebp
  4895be:	5d                   	pop    ebp
  4895bf:	c3                   	ret
  4895c0:	55                   	push   ebp
  4895c1:	8b ec                	mov    ebp,esp
  4895c3:	51                   	push   ecx
  4895c4:	53                   	push   ebx
  4895c5:	8b d9                	mov    ebx,ecx
  4895c7:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  4895ca:	57                   	push   edi
  4895cb:	33 ff                	xor    edi,edi
  4895cd:	3b c7                	cmp    eax,edi
  4895cf:	0f 84 1b 01 00 00    	je     0x4896f0
  4895d5:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  4895d8:	56                   	push   esi
  4895d9:	8d 73 08             	lea    esi,[ebx+0x8]
  4895dc:	8b ce                	mov    ecx,esi
  4895de:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  4895e1:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4895e4:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  4895e7:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  4895ea:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4895ed:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  4895f0:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  4895f4:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  4895f7:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  4895fa:	74 0a                	je     0x489606
  4895fc:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  4895ff:	8b 0a                	mov    ecx,DWORD PTR [edx]
  489601:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  489604:	eb 07                	jmp    0x48960d
  489606:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48960d:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  489610:	0f 84 c6 00 00 00    	je     0x4896dc
  489616:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
  489619:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  48961c:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48961f:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  489622:	48                   	dec    eax
  489623:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  489626:	8b c2                	mov    eax,edx
  489628:	3b c1                	cmp    eax,ecx
  48962a:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  48962d:	74 3d                	je     0x48966c
  48962f:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  489632:	74 34                	je     0x489668
  489634:	8b 08                	mov    ecx,DWORD PTR [eax]
  489636:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  489639:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  48963c:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48963f:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  489642:	8b 10                	mov    edx,DWORD PTR [eax]
  489644:	89 11                	mov    DWORD PTR [ecx],edx
  489646:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  489649:	83 f8 01             	cmp    eax,0x1
  48964c:	75 0b                	jne    0x489659
  48964e:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  489651:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  489654:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  489657:	eb 63                	jmp    0x4896bc
  489659:	83 f8 02             	cmp    eax,0x2
  48965c:	75 5e                	jne    0x4896bc
  48965e:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  489661:	8b 02                	mov    eax,DWORD PTR [edx]
  489663:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  489666:	eb 54                	jmp    0x4896bc
  489668:	3b c1                	cmp    eax,ecx
  48966a:	75 23                	jne    0x48968f
  48966c:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48966f:	74 23                	je     0x489694
  489671:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  489674:	89 39                	mov    DWORD PTR [ecx],edi
  489676:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  489679:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  48967c:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48967f:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  489683:	8b ca                	mov    ecx,edx
  489685:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  489688:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  48968b:	75 2f                	jne    0x4896bc
  48968d:	eb 2a                	jmp    0x4896b9
  48968f:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  489692:	75 1c                	jne    0x4896b0
  489694:	3b c1                	cmp    eax,ecx
  489696:	74 18                	je     0x4896b0
  489698:	8b 00                	mov    eax,DWORD PTR [eax]
  48969a:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  48969d:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  4896a0:	8b 01                	mov    eax,DWORD PTR [ecx]
  4896a2:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4896a5:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4896a8:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  4896ac:	75 0e                	jne    0x4896bc
  4896ae:	eb 09                	jmp    0x4896b9
  4896b0:	89 7e 20             	mov    DWORD PTR [esi+0x20],edi
  4896b3:	89 7e 24             	mov    DWORD PTR [esi+0x24],edi
  4896b6:	89 7e 28             	mov    DWORD PTR [esi+0x28],edi
  4896b9:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  4896bc:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  4896bf:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  4896c2:	50                   	push   eax
  4896c3:	e8 98 89 fb ff       	call   0x442060
  4896c8:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  4896cb:	51                   	push   ecx
  4896cc:	e8 8f 89 fb ff       	call   0x442060
  4896d1:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
  4896d4:	83 c4 08             	add    esp,0x8
  4896d7:	e9 18 ff ff ff       	jmp    0x4895f4
  4896dc:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  4896df:	74 04                	je     0x4896e5
  4896e1:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  4896e5:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  4896e8:	8b 16                	mov    edx,DWORD PTR [esi]
  4896ea:	8b ce                	mov    ecx,esi
  4896ec:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4896ef:	5e                   	pop    esi
  4896f0:	5f                   	pop    edi
  4896f1:	5b                   	pop    ebx
  4896f2:	8b e5                	mov    esp,ebp
  4896f4:	5d                   	pop    ebp
  4896f5:	c3                   	ret
  4896f6:	90                   	nop
  4896f7:	90                   	nop
  4896f8:	90                   	nop
  4896f9:	90                   	nop
  4896fa:	90                   	nop
  4896fb:	90                   	nop
  4896fc:	90                   	nop
  4896fd:	90                   	nop
  4896fe:	90                   	nop
  4896ff:	90                   	nop
  489700:	55                   	push   ebp
  489701:	8b ec                	mov    ebp,esp
  489703:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  489706:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  489709:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  48970c:	50                   	push   eax
  48970d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  489710:	51                   	push   ecx
  489711:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  489714:	52                   	push   edx
  489715:	50                   	push   eax
  489716:	51                   	push   ecx
  489717:	b9 58 63 51 00       	mov    ecx,0x516358
  48971c:	e8 6f f5 ff ff       	call   0x488c90
  489721:	5d                   	pop    ebp
  489722:	c3                   	ret
  489723:	90                   	nop
  489724:	90                   	nop
  489725:	90                   	nop
  489726:	90                   	nop
  489727:	90                   	nop
  489728:	90                   	nop
  489729:	90                   	nop
  48972a:	90                   	nop
  48972b:	90                   	nop
  48972c:	90                   	nop
  48972d:	90                   	nop
  48972e:	90                   	nop
  48972f:	90                   	nop
  489730:	55                   	push   ebp
  489731:	8b ec                	mov    ebp,esp
  489733:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  489736:	50                   	push   eax
  489737:	b9 58 63 51 00       	mov    ecx,0x516358
  48973c:	e8 8f f6 ff ff       	call   0x488dd0
  489741:	5d                   	pop    ebp
  489742:	c3                   	ret
  489743:	90                   	nop
  489744:	90                   	nop
  489745:	90                   	nop
  489746:	90                   	nop
  489747:	90                   	nop
  489748:	90                   	nop
  489749:	90                   	nop
  48974a:	90                   	nop
  48974b:	90                   	nop
  48974c:	90                   	nop
  48974d:	90                   	nop
  48974e:	90                   	nop
  48974f:	90                   	nop
  489750:	55                   	push   ebp
  489751:	8b ec                	mov    ebp,esp
  489753:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  489756:	50                   	push   eax
  489757:	b9 58 63 51 00       	mov    ecx,0x516358
  48975c:	e8 6f f6 ff ff       	call   0x488dd0
  489761:	5d                   	pop    ebp
  489762:	c3                   	ret
  489763:	90                   	nop
  489764:	90                   	nop
  489765:	90                   	nop
  489766:	90                   	nop
  489767:	90                   	nop
  489768:	90                   	nop
  489769:	90                   	nop
  48976a:	90                   	nop
  48976b:	90                   	nop
  48976c:	90                   	nop
  48976d:	90                   	nop
  48976e:	90                   	nop
  48976f:	90                   	nop
  489770:	55                   	push   ebp
  489771:	8b ec                	mov    ebp,esp
  489773:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  489776:	50                   	push   eax
  489777:	b9 58 63 51 00       	mov    ecx,0x516358
  48977c:	e8 6f fa ff ff       	call   0x4891f0
  489781:	5d                   	pop    ebp
  489782:	c3                   	ret
  489783:	90                   	nop
  489784:	90                   	nop
  489785:	90                   	nop
  489786:	90                   	nop
  489787:	90                   	nop
  489788:	90                   	nop
  489789:	90                   	nop
  48978a:	90                   	nop
  48978b:	90                   	nop
  48978c:	90                   	nop
  48978d:	90                   	nop
  48978e:	90                   	nop
  48978f:	90                   	nop
  489790:	55                   	push   ebp
  489791:	8b ec                	mov    ebp,esp
  489793:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  489796:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  489799:	50                   	push   eax
  48979a:	51                   	push   ecx
  48979b:	b9 58 63 51 00       	mov    ecx,0x516358
  4897a0:	e8 eb f8 ff ff       	call   0x489090
  4897a5:	5d                   	pop    ebp
  4897a6:	c3                   	ret
  4897a7:	90                   	nop
  4897a8:	90                   	nop
  4897a9:	90                   	nop
  4897aa:	90                   	nop
  4897ab:	90                   	nop
  4897ac:	90                   	nop
  4897ad:	90                   	nop
  4897ae:	90                   	nop
  4897af:	90                   	nop
  4897b0:	b9 58 63 51 00       	mov    ecx,0x516358
  4897b5:	e9 96 fb ff ff       	jmp    0x489350
  4897ba:	90                   	nop
  4897bb:	90                   	nop
  4897bc:	90                   	nop
  4897bd:	90                   	nop
  4897be:	90                   	nop
  4897bf:	90                   	nop
  4897c0:	b9 58 63 51 00       	mov    ecx,0x516358
  4897c5:	e9 f6 fd ff ff       	jmp    0x4895c0
  4897ca:	90                   	nop
  4897cb:	90                   	nop
  4897cc:	90                   	nop
  4897cd:	90                   	nop
  4897ce:	90                   	nop
  4897cf:	90                   	nop

