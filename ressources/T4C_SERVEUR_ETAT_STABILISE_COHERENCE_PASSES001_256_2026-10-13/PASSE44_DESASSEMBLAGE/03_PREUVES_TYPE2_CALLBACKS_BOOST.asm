; PASSE 44 — PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Extraits analyses : adresses et bytes verifies statiquement sur T4C Server(1).exe
; Avertissement : preuves d octets x86, pas un test dynamique.

; Callback de boost et codes 5, 0x1b, 0x17, 0x18, 9, 0xd : de 0x004c3b70 a 0x004c3f33
  4c3b70:	55                   	push   ebp
  4c3b71:	8b ec                	mov    ebp,esp
  4c3b73:	6a ff                	push   0xffffffff
  4c3b75:	68 a0 d5 4d 00       	push   0x4dd5a0
  4c3b7a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c3b80:	50                   	push   eax
  4c3b81:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c3b88:	83 ec 54             	sub    esp,0x54
  4c3b8b:	66 8b 45 08          	mov    ax,WORD PTR [ebp+0x8]
  4c3b8f:	66 3d 05 00          	cmp    ax,0x5
  4c3b93:	53                   	push   ebx
  4c3b94:	56                   	push   esi
  4c3b95:	57                   	push   edi
  4c3b96:	0f 85 fd 00 00 00    	jne    0x4c3c99
  4c3b9c:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c3b9f:	8b 07                	mov    eax,DWORD PTR [edi]
  4c3ba1:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c3ba4:	50                   	push   eax
  4c3ba5:	8b ce                	mov    ecx,esi
  4c3ba7:	e8 14 a2 fc ff       	call   0x48ddc0
  4c3bac:	85 c0                	test   eax,eax
  4c3bae:	74 68                	je     0x4c3c18
  4c3bb0:	66 8b 40 04          	mov    ax,WORD PTR [eax+0x4]
  4c3bb4:	66 3d 19 00          	cmp    ax,0x19
  4c3bb8:	74 0a                	je     0x4c3bc4
  4c3bba:	66 3d 1a 00          	cmp    ax,0x1a
  4c3bbe:	74 04                	je     0x4c3bc4
  4c3bc0:	32 db                	xor    bl,bl
  4c3bc2:	eb 02                	jmp    0x4c3bc6
  4c3bc4:	b3 01                	mov    bl,0x1
  4c3bc6:	8b 0f                	mov    ecx,DWORD PTR [edi]
  4c3bc8:	51                   	push   ecx
  4c3bc9:	8b ce                	mov    ecx,esi
  4c3bcb:	e8 20 9f fc ff       	call   0x48daf0
  4c3bd0:	84 db                	test   bl,bl
  4c3bd2:	74 44                	je     0x4c3c18
  4c3bd4:	8b ce                	mov    ecx,esi
  4c3bd6:	e8 95 7a fc ff       	call   0x48b670
  4c3bdb:	3c 01                	cmp    al,0x1
  4c3bdd:	75 39                	jne    0x4c3c18
  4c3bdf:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4c3be2:	e8 09 22 fc ff       	call   0x485df0
  4c3be7:	6a 00                	push   0x0
  4c3be9:	8d 55 dc             	lea    edx,[ebp-0x24]
  4c3bec:	52                   	push   edx
  4c3bed:	8b ce                	mov    ecx,esi
  4c3bef:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c3bf6:	e8 a5 b9 f5 ff       	call   0x41f5a0
  4c3bfb:	8b 06                	mov    eax,DWORD PTR [esi]
  4c3bfd:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4c3c00:	51                   	push   ecx
  4c3c01:	8b ce                	mov    ecx,esi
  4c3c03:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  4c3c09:	8d 4d dc             	lea    ecx,[ebp-0x24]
  4c3c0c:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3c13:	e8 68 22 fc ff       	call   0x485e80
  4c3c18:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3c1b:	e8 d0 21 fc ff       	call   0x485df0
  4c3c20:	6a 45                	push   0x45
  4c3c22:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3c25:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  4c3c2c:	e8 1f 25 fc ff       	call   0x486150
  4c3c31:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3c33:	8d 45 b8             	lea    eax,[ebp-0x48]
  4c3c36:	50                   	push   eax
  4c3c37:	8b ce                	mov    ecx,esi
  4c3c39:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4c3c3f:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3c41:	6a 00                	push   0x0
  4c3c43:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3c46:	51                   	push   ecx
  4c3c47:	6a 14                	push   0x14
  4c3c49:	8d 45 e8             	lea    eax,[ebp-0x18]
  4c3c4c:	50                   	push   eax
  4c3c4d:	8b ce                	mov    ecx,esi
  4c3c4f:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4c3c52:	8b 10                	mov    edx,DWORD PTR [eax]
  4c3c54:	83 ec 0c             	sub    esp,0xc
  4c3c57:	8b cc                	mov    ecx,esp
  4c3c59:	89 11                	mov    DWORD PTR [ecx],edx
  4c3c5b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c3c5e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4c3c61:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4c3c64:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4c3c67:	e8 84 be f4 ff       	call   0x40faf0
  4c3c6c:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c3c6f:	51                   	push   ecx
  4c3c70:	56                   	push   esi
  4c3c71:	e8 0a cd f9 ff       	call   0x460980
  4c3c76:	83 c4 20             	add    esp,0x20
  4c3c79:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3c7c:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3c83:	e8 f8 21 fc ff       	call   0x485e80
  4c3c88:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3c8b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3c92:	5f                   	pop    edi
  4c3c93:	5e                   	pop    esi
  4c3c94:	5b                   	pop    ebx
  4c3c95:	8b e5                	mov    esp,ebp
  4c3c97:	5d                   	pop    ebp
  4c3c98:	c3                   	ret
  4c3c99:	66 3d 1b 00          	cmp    ax,0x1b
  4c3c9d:	0f 85 08 01 00 00    	jne    0x4c3dab
  4c3ca3:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c3ca6:	8b 17                	mov    edx,DWORD PTR [edi]
  4c3ca8:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c3cab:	52                   	push   edx
  4c3cac:	8b ce                	mov    ecx,esi
  4c3cae:	e8 0d a1 fc ff       	call   0x48ddc0
  4c3cb3:	85 c0                	test   eax,eax
  4c3cb5:	74 68                	je     0x4c3d1f
  4c3cb7:	66 8b 40 04          	mov    ax,WORD PTR [eax+0x4]
  4c3cbb:	66 3d 19 00          	cmp    ax,0x19
  4c3cbf:	74 0a                	je     0x4c3ccb
  4c3cc1:	66 3d 1a 00          	cmp    ax,0x1a
  4c3cc5:	74 04                	je     0x4c3ccb
  4c3cc7:	32 db                	xor    bl,bl
  4c3cc9:	eb 02                	jmp    0x4c3ccd
  4c3ccb:	b3 01                	mov    bl,0x1
  4c3ccd:	8b 07                	mov    eax,DWORD PTR [edi]
  4c3ccf:	50                   	push   eax
  4c3cd0:	8b ce                	mov    ecx,esi
  4c3cd2:	e8 19 9e fc ff       	call   0x48daf0
  4c3cd7:	84 db                	test   bl,bl
  4c3cd9:	74 44                	je     0x4c3d1f
  4c3cdb:	8b ce                	mov    ecx,esi
  4c3cdd:	e8 8e 79 fc ff       	call   0x48b670
  4c3ce2:	3c 01                	cmp    al,0x1
  4c3ce4:	75 39                	jne    0x4c3d1f
  4c3ce6:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3ce9:	e8 02 21 fc ff       	call   0x485df0
  4c3cee:	6a 00                	push   0x0
  4c3cf0:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3cf3:	51                   	push   ecx
  4c3cf4:	8b ce                	mov    ecx,esi
  4c3cf6:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  4c3cfd:	e8 9e b8 f5 ff       	call   0x41f5a0
  4c3d02:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3d04:	8d 45 b8             	lea    eax,[ebp-0x48]
  4c3d07:	50                   	push   eax
  4c3d08:	8b ce                	mov    ecx,esi
  4c3d0a:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  4c3d10:	8d 4d b8             	lea    ecx,[ebp-0x48]
  4c3d13:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3d1a:	e8 61 21 fc ff       	call   0x485e80
  4c3d1f:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4c3d22:	e8 c9 20 fc ff       	call   0x485df0
  4c3d27:	6a 45                	push   0x45
  4c3d29:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4c3d2c:	c7 45 fc 03 00 00 00 	mov    DWORD PTR [ebp-0x4],0x3
  4c3d33:	e8 18 24 fc ff       	call   0x486150
  4c3d38:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3d3a:	8d 45 a0             	lea    eax,[ebp-0x60]
  4c3d3d:	50                   	push   eax
  4c3d3e:	8b ce                	mov    ecx,esi
  4c3d40:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4c3d46:	8b 16                	mov    edx,DWORD PTR [esi]
  4c3d48:	6a 00                	push   0x0
  4c3d4a:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4c3d4d:	51                   	push   ecx
  4c3d4e:	6a 14                	push   0x14
  4c3d50:	8d 45 d0             	lea    eax,[ebp-0x30]
  4c3d53:	50                   	push   eax
  4c3d54:	8b ce                	mov    ecx,esi
  4c3d56:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4c3d59:	8b 10                	mov    edx,DWORD PTR [eax]
  4c3d5b:	83 ec 0c             	sub    esp,0xc
  4c3d5e:	8b cc                	mov    ecx,esp
  4c3d60:	89 11                	mov    DWORD PTR [ecx],edx
  4c3d62:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c3d65:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4c3d68:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4c3d6b:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4c3d6e:	e8 7d bd f4 ff       	call   0x40faf0
  4c3d73:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  4c3d76:	51                   	push   ecx
  4c3d77:	56                   	push   esi
  4c3d78:	e8 03 cc f9 ff       	call   0x460980
  4c3d7d:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4c3d80:	83 c4 20             	add    esp,0x20
  4c3d83:	52                   	push   edx
  4c3d84:	8b ce                	mov    ecx,esi
  4c3d86:	e8 a5 8b fc ff       	call   0x48c930
  4c3d8b:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4c3d8e:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3d95:	e8 e6 20 fc ff       	call   0x485e80
  4c3d9a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3d9d:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3da4:	5f                   	pop    edi
  4c3da5:	5e                   	pop    esi
  4c3da6:	5b                   	pop    ebx
  4c3da7:	8b e5                	mov    esp,ebp
  4c3da9:	5d                   	pop    ebp
  4c3daa:	c3                   	ret
  4c3dab:	66 3d 17 00          	cmp    ax,0x17
  4c3daf:	75 31                	jne    0x4c3de2
  4c3db1:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  4c3db4:	6a 08                	push   0x8
  4c3db6:	c6 06 08             	mov    BYTE PTR [esi],0x8
  4c3db9:	e8 42 a7 00 00       	call   0x4ce500
  4c3dbe:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  4c3dc1:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4c3dc4:	8b 11                	mov    edx,DWORD PTR [ecx]
  4c3dc6:	89 10                	mov    DWORD PTR [eax],edx
  4c3dc8:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  4c3dcb:	83 c4 04             	add    esp,0x4
  4c3dce:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c3dd1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3dd4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3ddb:	5f                   	pop    edi
  4c3ddc:	5e                   	pop    esi
  4c3ddd:	5b                   	pop    ebx
  4c3dde:	8b e5                	mov    esp,ebp
  4c3de0:	5d                   	pop    ebp
  4c3de1:	c3                   	ret
  4c3de2:	66 3d 18 00          	cmp    ax,0x18
  4c3de6:	0f 85 a2 00 00 00    	jne    0x4c3e8e
  4c3dec:	6a 08                	push   0x8
  4c3dee:	e8 fd e1 f7 ff       	call   0x441ff0
  4c3df3:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4c3df6:	8b 7d 1c             	mov    edi,DWORD PTR [ebp+0x1c]
  4c3df9:	8b f0                	mov    esi,eax
  4c3dfb:	8a 01                	mov    al,BYTE PTR [ecx]
  4c3dfd:	83 c4 04             	add    esp,0x4
  4c3e00:	3c 08                	cmp    al,0x8
  4c3e02:	75 64                	jne    0x4c3e68
  4c3e04:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c3e07:	8b 02                	mov    eax,DWORD PTR [edx]
  4c3e09:	89 06                	mov    DWORD PTR [esi],eax
  4c3e0b:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  4c3e0e:	33 d2                	xor    edx,edx
  4c3e10:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  4c3e13:	66 8b 56 04          	mov    dx,WORD PTR [esi+0x4]
  4c3e17:	52                   	push   edx
  4c3e18:	e8 13 e4 f9 ff       	call   0x462230
  4c3e1d:	83 c4 04             	add    esp,0x4
  4c3e20:	85 c0                	test   eax,eax
  4c3e22:	74 56                	je     0x4c3e7a
  4c3e24:	50                   	push   eax
  4c3e25:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
  4c3e28:	50                   	push   eax
  4c3e29:	e8 62 e4 fa ff       	call   0x472290
  4c3e2e:	8d 04 80             	lea    eax,[eax+eax*4]
  4c3e31:	8d 0c 80             	lea    ecx,[eax+eax*4]
  4c3e34:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  4c3e37:	8d 04 80             	lea    eax,[eax+eax*4]
  4c3e3a:	8d 14 80             	lea    edx,[eax+eax*4]
  4c3e3d:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4c3e40:	d1 e1                	shl    ecx,1
  4c3e42:	d1 e2                	shl    edx,1
  4c3e44:	2b d1                	sub    edx,ecx
  4c3e46:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4c3e49:	52                   	push   edx
  4c3e4a:	50                   	push   eax
  4c3e4b:	51                   	push   ecx
  4c3e4c:	e8 cf c9 f9 ff       	call   0x460820
  4c3e51:	83 c4 14             	add    esp,0x14
  4c3e54:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c3e57:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3e5a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3e61:	5f                   	pop    edi
  4c3e62:	5e                   	pop    esi
  4c3e63:	5b                   	pop    ebx
  4c3e64:	8b e5                	mov    esp,ebp
  4c3e66:	5d                   	pop    ebp
  4c3e67:	c3                   	ret
  4c3e68:	3c 04                	cmp    al,0x4
  4c3e6a:	75 0e                	jne    0x4c3e7a
  4c3e6c:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4c3e6f:	8b 02                	mov    eax,DWORD PTR [edx]
  4c3e71:	89 06                	mov    DWORD PTR [esi],eax
  4c3e73:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
  4c3e7a:	89 77 0c             	mov    DWORD PTR [edi+0xc],esi
  4c3e7d:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3e80:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3e87:	5f                   	pop    edi
  4c3e88:	5e                   	pop    esi
  4c3e89:	5b                   	pop    ebx
  4c3e8a:	8b e5                	mov    esp,ebp
  4c3e8c:	5d                   	pop    ebp
  4c3e8d:	c3                   	ret
  4c3e8e:	66 3d 09 00          	cmp    ax,0x9
  4c3e92:	75 0c                	jne    0x4c3ea0
  4c3e94:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  4c3e97:	50                   	push   eax
  4c3e98:	e8 c3 e1 f7 ff       	call   0x442060
  4c3e9d:	83 c4 04             	add    esp,0x4
  4c3ea0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3ea3:	5f                   	pop    edi
  4c3ea4:	5e                   	pop    esi
  4c3ea5:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3eac:	5b                   	pop    ebx
  4c3ead:	8b e5                	mov    esp,ebp
  4c3eaf:	5d                   	pop    ebp
  4c3eb0:	c3                   	ret
  4c3eb1:	90                   	nop
  4c3eb2:	90                   	nop
  4c3eb3:	90                   	nop
  4c3eb4:	90                   	nop
  4c3eb5:	90                   	nop
  4c3eb6:	90                   	nop
  4c3eb7:	90                   	nop
  4c3eb8:	90                   	nop
  4c3eb9:	90                   	nop
  4c3eba:	90                   	nop
  4c3ebb:	90                   	nop
  4c3ebc:	90                   	nop
  4c3ebd:	90                   	nop
  4c3ebe:	90                   	nop
  4c3ebf:	90                   	nop
  4c3ec0:	55                   	push   ebp
  4c3ec1:	8b ec                	mov    ebp,esp
  4c3ec3:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c3ec9:	6a ff                	push   0xffffffff
  4c3ecb:	68 bb d5 4d 00       	push   0x4dd5bb
  4c3ed0:	50                   	push   eax
  4c3ed1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c3ed8:	56                   	push   esi
  4c3ed9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c3edc:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c3ee2:	68 70 3b 4c 00       	push   0x4c3b70
  4c3ee7:	50                   	push   eax
  4c3ee8:	e8 23 cc fc ff       	call   0x490b10
  4c3eed:	68 88 00 00 00       	push   0x88
  4c3ef2:	e8 f9 e0 f7 ff       	call   0x441ff0
  4c3ef7:	83 c4 0c             	add    esp,0xc
  4c3efa:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c3efd:	85 c0                	test   eax,eax
  4c3eff:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c3f06:	74 09                	je     0x4c3f11
  4c3f08:	8b c8                	mov    ecx,eax
  4c3f0a:	e8 51 f3 ff ff       	call   0x4c3260
  4c3f0f:	eb 02                	jmp    0x4c3f13
  4c3f11:	33 c0                	xor    eax,eax
  4c3f13:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c3f16:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c3f1c:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c3f1f:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c3f25:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c3f28:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c3f2f:	5e                   	pop    esi
  4c3f30:	8b e5                	mov    esp,ebp
  4c3f32:	5d                   	pop    ebp
  4c3f33:	c3                   	ret

; Unit::RemoveBoost et retrait par cle : de 0x0048daf0 a 0x0048dc4a
  48daf0:	55                   	push   ebp
  48daf1:	8b ec                	mov    ebp,esp
  48daf3:	51                   	push   ecx
  48daf4:	53                   	push   ebx
  48daf5:	57                   	push   edi
  48daf6:	8b f9                	mov    edi,ecx
  48daf8:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48dafe:	33 db                	xor    ebx,ebx
  48db00:	3b cb                	cmp    ecx,ebx
  48db02:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  48db05:	0f 84 3a 01 00 00    	je     0x48dc45
  48db0b:	8b 01                	mov    eax,DWORD PTR [ecx]
  48db0d:	56                   	push   esi
  48db0e:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48db11:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  48db17:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48db1a:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48db1d:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48db20:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48db24:	8b 87 f8 00 00 00    	mov    eax,DWORD PTR [edi+0xf8]
  48db2a:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48db2d:	74 0a                	je     0x48db39
  48db2f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48db32:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48db34:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48db37:	eb 07                	jmp    0x48db40
  48db39:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48db40:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  48db43:	0f 84 e4 00 00 00    	je     0x48dc2d
  48db49:	8b b7 f8 00 00 00    	mov    esi,DWORD PTR [edi+0xf8]
  48db4f:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48db52:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  48db55:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48db58:	39 08                	cmp    DWORD PTR [eax],ecx
  48db5a:	75 c8                	jne    0x48db24
  48db5c:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48db5f:	8b 7e 38             	mov    edi,DWORD PTR [esi+0x38]
  48db62:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  48db65:	4f                   	dec    edi
  48db66:	8b c2                	mov    eax,edx
  48db68:	3b c1                	cmp    eax,ecx
  48db6a:	89 56 2c             	mov    DWORD PTR [esi+0x2c],edx
  48db6d:	89 7e 38             	mov    DWORD PTR [esi+0x38],edi
  48db70:	74 3d                	je     0x48dbaf
  48db72:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48db75:	74 34                	je     0x48dbab
  48db77:	8b 08                	mov    ecx,DWORD PTR [eax]
  48db79:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  48db7c:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  48db7f:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48db82:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48db85:	8b 10                	mov    edx,DWORD PTR [eax]
  48db87:	89 11                	mov    DWORD PTR [ecx],edx
  48db89:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  48db8c:	83 f8 01             	cmp    eax,0x1
  48db8f:	75 0b                	jne    0x48db9c
  48db91:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  48db94:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48db97:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  48db9a:	eb 63                	jmp    0x48dbff
  48db9c:	83 f8 02             	cmp    eax,0x2
  48db9f:	75 5e                	jne    0x48dbff
  48dba1:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48dba4:	8b 02                	mov    eax,DWORD PTR [edx]
  48dba6:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48dba9:	eb 54                	jmp    0x48dbff
  48dbab:	3b c1                	cmp    eax,ecx
  48dbad:	75 23                	jne    0x48dbd2
  48dbaf:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48dbb2:	74 23                	je     0x48dbd7
  48dbb4:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  48dbb7:	89 19                	mov    DWORD PTR [ecx],ebx
  48dbb9:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  48dbbc:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  48dbbf:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  48dbc2:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  48dbc6:	8b ca                	mov    ecx,edx
  48dbc8:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48dbcb:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  48dbce:	75 2f                	jne    0x48dbff
  48dbd0:	eb 2a                	jmp    0x48dbfc
  48dbd2:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  48dbd5:	75 1c                	jne    0x48dbf3
  48dbd7:	3b c1                	cmp    eax,ecx
  48dbd9:	74 18                	je     0x48dbf3
  48dbdb:	8b 00                	mov    eax,DWORD PTR [eax]
  48dbdd:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  48dbe0:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  48dbe3:	8b 01                	mov    eax,DWORD PTR [ecx]
  48dbe5:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  48dbe8:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  48dbeb:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  48dbef:	75 0e                	jne    0x48dbff
  48dbf1:	eb 09                	jmp    0x48dbfc
  48dbf3:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  48dbf6:	89 5e 24             	mov    DWORD PTR [esi+0x24],ebx
  48dbf9:	89 5e 28             	mov    DWORD PTR [esi+0x28],ebx
  48dbfc:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  48dbff:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  48dc02:	8b 7a 08             	mov    edi,DWORD PTR [edx+0x8]
  48dc05:	3b fb                	cmp    edi,ebx
  48dc07:	74 10                	je     0x48dc19
  48dc09:	8b cf                	mov    ecx,edi
  48dc0b:	e8 40 00 00 00       	call   0x48dc50
  48dc10:	57                   	push   edi
  48dc11:	e8 4a 44 fb ff       	call   0x442060
  48dc16:	83 c4 04             	add    esp,0x4
  48dc19:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  48dc1c:	50                   	push   eax
  48dc1d:	e8 3e 44 fb ff       	call   0x442060
  48dc22:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
  48dc25:	83 c4 04             	add    esp,0x4
  48dc28:	e9 f7 fe ff ff       	jmp    0x48db24
  48dc2d:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48dc30:	5e                   	pop    esi
  48dc31:	74 04                	je     0x48dc37
  48dc33:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48dc37:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48dc3a:	8b 8f f8 00 00 00    	mov    ecx,DWORD PTR [edi+0xf8]
  48dc40:	8b 11                	mov    edx,DWORD PTR [ecx]
  48dc42:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48dc45:	5f                   	pop    edi
  48dc46:	5b                   	pop    ebx
  48dc47:	8b e5                	mov    esp,ebp
  48dc49:	5d                   	pop    ebp
  48dc4a:	c2                   	.byte 0xc2

; Unit::GetBoost et parcours du stockage : de 0x0048ddc0 a 0x0048de5f
  48ddc0:	55                   	push   ebp
  48ddc1:	8b ec                	mov    ebp,esp
  48ddc3:	53                   	push   ebx
  48ddc4:	56                   	push   esi
  48ddc5:	8b f1                	mov    esi,ecx
  48ddc7:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48ddcd:	33 db                	xor    ebx,ebx
  48ddcf:	85 c9                	test   ecx,ecx
  48ddd1:	0f 84 80 00 00 00    	je     0x48de57
  48ddd7:	8b 01                	mov    eax,DWORD PTR [ecx]
  48ddd9:	57                   	push   edi
  48ddda:	33 ff                	xor    edi,edi
  48dddc:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48dddf:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  48dde5:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48dde8:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48ddeb:	33 c9                	xor    ecx,ecx
  48dded:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  48ddf0:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48ddf4:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  48ddfa:	39 48 40             	cmp    DWORD PTR [eax+0x40],ecx
  48ddfd:	74 0a                	je     0x48de09
  48ddff:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48de02:	8b 12                	mov    edx,DWORD PTR [edx]
  48de04:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  48de07:	eb 07                	jmp    0x48de10
  48de09:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48de10:	39 48 20             	cmp    DWORD PTR [eax+0x20],ecx
  48de13:	74 1e                	je     0x48de33
  48de15:	3b f9                	cmp    edi,ecx
  48de17:	75 26                	jne    0x48de3f
  48de19:	8b 86 f8 00 00 00    	mov    eax,DWORD PTR [esi+0xf8]
  48de1f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48de22:	8b 5a 08             	mov    ebx,DWORD PTR [edx+0x8]
  48de25:	8b 03                	mov    eax,DWORD PTR [ebx]
  48de27:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
  48de2a:	75 c8                	jne    0x48ddf4
  48de2c:	bf 01 00 00 00       	mov    edi,0x1
  48de31:	eb c1                	jmp    0x48ddf4
  48de33:	39 48 40             	cmp    DWORD PTR [eax+0x40],ecx
  48de36:	74 04                	je     0x48de3c
  48de38:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48de3c:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  48de3f:	8b 8e f8 00 00 00    	mov    ecx,DWORD PTR [esi+0xf8]
  48de45:	8b 11                	mov    edx,DWORD PTR [ecx]
  48de47:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48de4a:	85 ff                	test   edi,edi
  48de4c:	5f                   	pop    edi
  48de4d:	75 08                	jne    0x48de57
  48de4f:	5e                   	pop    esi
  48de50:	33 c0                	xor    eax,eax
  48de52:	5b                   	pop    ebx
  48de53:	5d                   	pop    ebp
  48de54:	c2 04 00             	ret    0x4
  48de57:	5e                   	pop    esi
  48de58:	8b c3                	mov    eax,ebx
  48de5a:	5b                   	pop    ebx
  48de5b:	5d                   	pop    ebp
  48de5c:	c2 04 00             	ret    0x4
  48de5f:	90                   	nop
