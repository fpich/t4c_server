
/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00413e20 <.text+0x12e20>:
  413e20:	50                   	push   eax
  413e21:	20 6a 44             	and    BYTE PTR [edx+0x44],ch
  413e24:	e8 c7 e1 02 00       	call   0x441ff0
  413e29:	8b f8                	mov    edi,eax
  413e2b:	83 c4 04             	add    esp,0x4
  413e2e:	3b fb                	cmp    edi,ebx
  413e30:	74 35                	je     0x413e67
  413e32:	8d 47 08             	lea    eax,[edi+0x8]
  413e35:	50                   	push   eax
  413e36:	c7 07 8c e5 4d 00    	mov    DWORD PTR [edi],0x4de58c
  413e3c:	c7 47 04 ff ff ff ff 	mov    DWORD PTR [edi+0x4],0xffffffff
  413e43:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  413e49:	89 5f 24             	mov    DWORD PTR [edi+0x24],ebx
  413e4c:	89 5f 28             	mov    DWORD PTR [edi+0x28],ebx
  413e4f:	89 5f 2c             	mov    DWORD PTR [edi+0x2c],ebx
  413e52:	89 5f 30             	mov    DWORD PTR [edi+0x30],ebx
  413e55:	c7 07 88 e8 4d 00    	mov    DWORD PTR [edi],0x4de888
  413e5b:	89 5f 40             	mov    DWORD PTR [edi+0x40],ebx
  413e5e:	c6 47 34 08          	mov    BYTE PTR [edi+0x34],0x8
  413e62:	89 5f 38             	mov    DWORD PTR [edi+0x38],ebx
  413e65:	eb 02                	jmp    0x413e69
  413e67:	33 ff                	xor    edi,edi
  413e69:	8d 4d e8             	lea    ecx,[ebp-0x18]
  413e6c:	51                   	push   ecx
  413e6d:	8b ce                	mov    ecx,esi
  413e6f:	e8 dc 9b 00 00       	call   0x41da50
  413e74:	8b 00                	mov    eax,DWORD PTR [eax]
  413e76:	50                   	push   eax
  413e77:	68 f8 17 50 00       	push   0x5017f8
  413e7c:	68 00 02 00 00       	push   0x200
  413e81:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  413e85:	e8 b6 de 05 00       	call   0x471d40
  413e8a:	83 c4 0c             	add    esp,0xc
  413e8d:	8d 4d e8             	lea    ecx,[ebp-0x18]
  413e90:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  413e94:	e8 a7 db 0b 00       	call   0x4d1a40
  413e99:	8b ce                	mov    ecx,esi
  413e9b:	e8 60 78 07 00       	call   0x48b700
  413ea0:	50                   	push   eax
  413ea1:	8d 55 ec             	lea    edx,[ebp-0x14]
  413ea4:	68 cc 17 50 00       	push   0x5017cc
  413ea9:	52                   	push   edx
  413eaa:	e8 e5 db 0b 00       	call   0x4d1a94
  413eaf:	6a 08                	push   0x8
  413eb1:	e8 3a e1 02 00       	call   0x441ff0
  413eb6:	8b d8                	mov    ebx,eax
  413eb8:	83 c4 10             	add    esp,0x10
  413ebb:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  413ebe:	85 db                	test   ebx,ebx
  413ec0:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  413ec4:	74 0a                	je     0x413ed0
  413ec6:	8d 4b 04             	lea    ecx,[ebx+0x4]
  413ec9:	e8 90 db 0b 00       	call   0x4d1a5e
  413ece:	eb 02                	jmp    0x413ed2
  413ed0:	33 db                	xor    ebx,ebx
  413ed2:	8d 45 ec             	lea    eax,[ebp-0x14]
  413ed5:	50                   	push   eax
  413ed6:	8d 4b 04             	lea    ecx,[ebx+0x4]
  413ed9:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  413edd:	e8 64 db 0b 00       	call   0x4d1a46
  413ee2:	53                   	push   ebx
  413ee3:	8b cf                	mov    ecx,edi
  413ee5:	e8 b6 13 01 00       	call   0x4252a0
  413eea:	8b ce                	mov    ecx,esi
  413eec:	e8 0f 78 07 00       	call   0x48b700
  413ef1:	50                   	push   eax
  413ef2:	8d 4d ec             	lea    ecx,[ebp-0x14]
  413ef5:	68 a4 17 50 00       	push   0x5017a4
  413efa:	51                   	push   ecx
  413efb:	e8 94 db 0b 00       	call   0x4d1a94
  413f00:	6a 08                	push   0x8
  413f02:	e8 e9 e0 02 00       	call   0x441ff0
  413f07:	8b d8                	mov    ebx,eax
  413f09:	83 c4 10             	add    esp,0x10
  413f0c:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  413f0f:	85 db                	test   ebx,ebx
  413f11:	c6 45 fc 05          	mov    BYTE PTR [ebp-0x4],0x5
  413f15:	74 0a                	je     0x413f21
  413f17:	8d 4b 04             	lea    ecx,[ebx+0x4]
  413f1a:	e8 3f db 0b 00       	call   0x4d1a5e
  413f1f:	eb 02                	jmp    0x413f23
  413f21:	33 db                	xor    ebx,ebx
  413f23:	8d 55 ec             	lea    edx,[ebp-0x14]
  413f26:	52                   	push   edx
  413f27:	8d 4b 04             	lea    ecx,[ebx+0x4]
  413f2a:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  413f2e:	e8 13 db 0b 00       	call   0x4d1a46
  413f33:	53                   	push   ebx
  413f34:	8b cf                	mov    ecx,edi
  413f36:	e8 65 13 01 00       	call   0x4252a0
  413f3b:	8b ce                	mov    ecx,esi
  413f3d:	e8 be 77 07 00       	call   0x48b700
  413f42:	50                   	push   eax
  413f43:	8d 45 ec             	lea    eax,[ebp-0x14]
  413f46:	68 7c 17 50 00       	push   0x50177c
  413f4b:	50                   	push   eax
  413f4c:	e8 43 db 0b 00       	call   0x4d1a94
  413f51:	6a 08                	push   0x8
  413f53:	e8 98 e0 02 00       	call   0x441ff0
  413f58:	8b d8                	mov    ebx,eax
  413f5a:	83 c4 10             	add    esp,0x10
  413f5d:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  413f60:	85 db                	test   ebx,ebx
  413f62:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  413f66:	74 0a                	je     0x413f72
  413f68:	8d 4b 04             	lea    ecx,[ebx+0x4]
  413f6b:	e8 ee da 0b 00       	call   0x4d1a5e
  413f70:	eb 02                	jmp    0x413f74
  413f72:	33 db                	xor    ebx,ebx
  413f74:	8d 4d ec             	lea    ecx,[ebp-0x14]
  413f77:	51                   	push   ecx
  413f78:	8d 4b 04             	lea    ecx,[ebx+0x4]
  413f7b:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  413f7f:	e8 c2 da 0b 00       	call   0x4d1a46
  413f84:	53                   	push   ebx
  413f85:	8b cf                	mov    ecx,edi
  413f87:	e8 14 13 01 00       	call   0x4252a0
  413f8c:	8b ce                	mov    ecx,esi
  413f8e:	e8 6d 77 07 00       	call   0x48b700
  413f93:	50                   	push   eax
  413f94:	8d 55 ec             	lea    edx,[ebp-0x14]
  413f97:	68 50 17 50 00       	push   0x501750
  413f9c:	52                   	push   edx
  413f9d:	e8                   	.byte 0xe8
  413f9e:	f2                   	repnz
  413f9f:	da                   	.byte 0xda
