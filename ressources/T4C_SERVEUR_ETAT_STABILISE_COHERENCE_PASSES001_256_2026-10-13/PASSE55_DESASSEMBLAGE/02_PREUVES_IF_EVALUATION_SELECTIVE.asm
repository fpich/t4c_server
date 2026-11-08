; Preuves assembleur PASSE55 du serveur original SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les plages VA sont semi-ouvertes; tables de saut et donnees exclues.

; [0x00409c10, 0x00409cd4) : expression binaire, comparaison: distinct de IF
  409c10:	55                   	push   ebp
  409c11:	8b ec                	mov    ebp,esp
  409c13:	6a ff                	push   0xffffffff
  409c15:	68 a1 36 4d 00       	push   0x4d36a1
  409c1a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  409c20:	50                   	push   eax
  409c21:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  409c28:	83 ec 58             	sub    esp,0x58
  409c2b:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  409c31:	53                   	push   ebx
  409c32:	56                   	push   esi
  409c33:	dd 55 e0             	fst    QWORD PTR [ebp-0x20]
  409c36:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  409c39:	8a 06                	mov    al,BYTE PTR [esi]
  409c3b:	33 db                	xor    ebx,ebx
  409c3d:	3a c3                	cmp    al,bl
  409c3f:	57                   	push   edi
  409c40:	8b f9                	mov    edi,ecx
  409c42:	0f 84 15 03 00 00    	je     0x409f5d
  409c48:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  409c4b:	3b c3                	cmp    eax,ebx
  409c4d:	0f 84 72 01 00 00    	je     0x409dc5
  409c53:	39 5e 1c             	cmp    DWORD PTR [esi+0x1c],ebx
  409c56:	0f 84 69 01 00 00    	je     0x409dc5
  409c5c:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  409c5f:	dd d8                	fstp   st(0)
  409c61:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  409c64:	51                   	push   ecx
  409c65:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  409c68:	52                   	push   edx
  409c69:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  409c6c:	51                   	push   ecx
  409c6d:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  409c70:	52                   	push   edx
  409c71:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  409c74:	51                   	push   ecx
  409c75:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  409c78:	52                   	push   edx
  409c79:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  409c7c:	51                   	push   ecx
  409c7d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  409c80:	52                   	push   edx
  409c81:	51                   	push   ecx
  409c82:	50                   	push   eax
  409c83:	8b cf                	mov    ecx,edi
  409c85:	e8 86 ff ff ff       	call   0x409c10
  409c8a:	dd 5d ec             	fstp   QWORD PTR [ebp-0x14]
  409c8d:	8b 55 2c             	mov    edx,DWORD PTR [ebp+0x2c]
  409c90:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  409c93:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  409c96:	52                   	push   edx
  409c97:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  409c9a:	50                   	push   eax
  409c9b:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  409c9e:	51                   	push   ecx
  409c9f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  409ca2:	52                   	push   edx
  409ca3:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  409ca6:	50                   	push   eax
  409ca7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  409caa:	51                   	push   ecx
  409cab:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  409cae:	52                   	push   edx
  409caf:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
  409cb2:	50                   	push   eax
  409cb3:	51                   	push   ecx
  409cb4:	52                   	push   edx
  409cb5:	8b cf                	mov    ecx,edi
  409cb7:	e8 54 ff ff ff       	call   0x409c10
  409cbc:	dd 5d 14             	fstp   QWORD PTR [ebp+0x14]
  409cbf:	33 c0                	xor    eax,eax
  409cc1:	8a 06                	mov    al,BYTE PTR [esi]
  409cc3:	48                   	dec    eax
  409cc4:	83 f8 0b             	cmp    eax,0xb
  409cc7:	0f 87 f5 00 00 00    	ja     0x409dc2
  409ccd:	ff 24 85 14 c1 40 00 	jmp    DWORD PTR [eax*4+0x40c114]

; [0x00409f5d, 0x0040a0e4) : IF sous-type 2: deux operandes de comparaison toujours evalues; branche vraie +0x20 OU branche fausse +0x00
  409f5d:	33 c0                	xor    eax,eax
  409f5f:	8a 46 11             	mov    al,BYTE PTR [esi+0x11]
  409f62:	3a c3                	cmp    al,bl
  409f64:	0f 84 b5 06 00 00    	je     0x40a61f
  409f6a:	25 ff 00 00 00       	and    eax,0xff
  409f6f:	83 c0 fe             	add    eax,0xfffffffe
  409f72:	83 f8 0b             	cmp    eax,0xb
  409f75:	0f 87 4a fe ff ff    	ja     0x409dc5
  409f7b:	ff 24 85 44 c1 40 00 	jmp    DWORD PTR [eax*4+0x40c144]
  409f82:	8b 5d 2c             	mov    ebx,DWORD PTR [ebp+0x2c]
  409f85:	dd d8                	fstp   st(0)
  409f87:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  409f8a:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  409f8d:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  409f90:	53                   	push   ebx
  409f91:	52                   	push   edx
  409f92:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  409f95:	50                   	push   eax
  409f96:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  409f99:	51                   	push   ecx
  409f9a:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  409f9d:	52                   	push   edx
  409f9e:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  409fa1:	50                   	push   eax
  409fa2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  409fa5:	51                   	push   ecx
  409fa6:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  409fa9:	52                   	push   edx
  409faa:	50                   	push   eax
  409fab:	51                   	push   ecx
  409fac:	8b cf                	mov    ecx,edi
  409fae:	e8 5d fc ff ff       	call   0x409c10
  409fb3:	dd 5d ec             	fstp   QWORD PTR [ebp-0x14]
  409fb6:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  409fb9:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  409fbc:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  409fbf:	53                   	push   ebx
  409fc0:	52                   	push   edx
  409fc1:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  409fc4:	50                   	push   eax
  409fc5:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  409fc8:	51                   	push   ecx
  409fc9:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  409fcc:	52                   	push   edx
  409fcd:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  409fd0:	50                   	push   eax
  409fd1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  409fd4:	51                   	push   ecx
  409fd5:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  409fd8:	52                   	push   edx
  409fd9:	50                   	push   eax
  409fda:	51                   	push   ecx
  409fdb:	8b cf                	mov    ecx,edi
  409fdd:	e8 2e fc ff ff       	call   0x409c10
  409fe2:	dd 46 08             	fld    QWORD PTR [esi+0x8]
  409fe5:	e8 90 7d 0c 00       	call   0x4d1d7a
  409fea:	48                   	dec    eax
  409feb:	83 f8 05             	cmp    eax,0x5
  409fee:	0f 87 af 00 00 00    	ja     0x40a0a3
  409ff4:	ff 24 85 74 c1 40 00 	jmp    DWORD PTR [eax*4+0x40c174]
  409ffb:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  409ffe:	d8 d9                	fcomp  st(1)
  40a000:	df e0                	fnstsw ax
  40a002:	dd d8                	fstp   st(0)
  40a004:	f6 c4 40             	test   ah,0x40
  40a007:	0f 84 98 00 00 00    	je     0x40a0a5
  40a00d:	eb 52                	jmp    0x40a061
  40a00f:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a012:	d8 d9                	fcomp  st(1)
  40a014:	df e0                	fnstsw ax
  40a016:	dd d8                	fstp   st(0)
  40a018:	f6 c4 41             	test   ah,0x41
  40a01b:	0f 85 84 00 00 00    	jne    0x40a0a5
  40a021:	eb 3e                	jmp    0x40a061
  40a023:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a026:	d8 d9                	fcomp  st(1)
  40a028:	df e0                	fnstsw ax
  40a02a:	dd d8                	fstp   st(0)
  40a02c:	f6 c4 01             	test   ah,0x1
  40a02f:	74 74                	je     0x40a0a5
  40a031:	eb 2e                	jmp    0x40a061
  40a033:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a036:	d8 d9                	fcomp  st(1)
  40a038:	df e0                	fnstsw ax
  40a03a:	dd d8                	fstp   st(0)
  40a03c:	f6 c4 01             	test   ah,0x1
  40a03f:	75 64                	jne    0x40a0a5
  40a041:	eb 1e                	jmp    0x40a061
  40a043:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a046:	d8 d9                	fcomp  st(1)
  40a048:	df e0                	fnstsw ax
  40a04a:	dd d8                	fstp   st(0)
  40a04c:	f6 c4 41             	test   ah,0x41
  40a04f:	74 54                	je     0x40a0a5
  40a051:	eb 0e                	jmp    0x40a061
  40a053:	dd 45 ec             	fld    QWORD PTR [ebp-0x14]
  40a056:	d8 d9                	fcomp  st(1)
  40a058:	df e0                	fnstsw ax
  40a05a:	dd d8                	fstp   st(0)
  40a05c:	f6 c4 40             	test   ah,0x40
  40a05f:	75 44                	jne    0x40a0a5
  40a061:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  40a064:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  40a067:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  40a06a:	53                   	push   ebx
  40a06b:	52                   	push   edx
  40a06c:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  40a06f:	50                   	push   eax
  40a070:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40a073:	51                   	push   ecx
  40a074:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  40a077:	52                   	push   edx
  40a078:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  40a07b:	50                   	push   eax
  40a07c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40a07f:	51                   	push   ecx
  40a080:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  40a083:	52                   	push   edx
  40a084:	83 c1 20             	add    ecx,0x20
  40a087:	50                   	push   eax
  40a088:	51                   	push   ecx
  40a089:	8b cf                	mov    ecx,edi
  40a08b:	e8 80 fb ff ff       	call   0x409c10
  40a090:	5f                   	pop    edi
  40a091:	5e                   	pop    esi
  40a092:	5b                   	pop    ebx
  40a093:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a096:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a09d:	8b e5                	mov    esp,ebp
  40a09f:	5d                   	pop    ebp
  40a0a0:	c2 28 00             	ret    0x28
  40a0a3:	dd d8                	fstp   st(0)
  40a0a5:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  40a0a8:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  40a0ab:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  40a0ae:	53                   	push   ebx
  40a0af:	52                   	push   edx
  40a0b0:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  40a0b3:	50                   	push   eax
  40a0b4:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40a0b7:	51                   	push   ecx
  40a0b8:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  40a0bb:	52                   	push   edx
  40a0bc:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  40a0bf:	50                   	push   eax
  40a0c0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40a0c3:	51                   	push   ecx
  40a0c4:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  40a0c7:	52                   	push   edx
  40a0c8:	50                   	push   eax
  40a0c9:	51                   	push   ecx
  40a0ca:	8b cf                	mov    ecx,edi
  40a0cc:	e8 3f fb ff ff       	call   0x409c10
  40a0d1:	5f                   	pop    edi
  40a0d2:	5e                   	pop    esi
  40a0d3:	5b                   	pop    ebx
  40a0d4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a0d7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a0de:	8b e5                	mov    esp,ebp
  40a0e0:	5d                   	pop    ebp
  40a0e1:	c2 28 00             	ret    0x28

