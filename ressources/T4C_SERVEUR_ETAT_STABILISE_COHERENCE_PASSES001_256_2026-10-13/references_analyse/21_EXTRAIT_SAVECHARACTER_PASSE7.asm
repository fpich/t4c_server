
/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00413d50 <.text+0x12d50>:
  413d50:	55                   	push   ebp
  413d51:	8b ec                	mov    ebp,esp
  413d53:	6a ff                	push   0xffffffff
  413d55:	68 41 3b 4d 00       	push   0x4d3b41
  413d5a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  413d60:	50                   	push   eax
  413d61:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  413d68:	81 ec 9c 00 00 00    	sub    esp,0x9c
  413d6e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  413d71:	53                   	push   ebx
  413d72:	56                   	push   esi
  413d73:	33 db                	xor    ebx,ebx
  413d75:	3b c3                	cmp    eax,ebx
  413d77:	57                   	push   edi
  413d78:	8b f1                	mov    esi,ecx
  413d7a:	74 3d                	je     0x413db9
  413d7c:	8d 45 e8             	lea    eax,[ebp-0x18]
  413d7f:	50                   	push   eax
  413d80:	e8 cb 9c 00 00       	call   0x41da50
  413d85:	8b 00                	mov    eax,DWORD PTR [eax]
  413d87:	50                   	push   eax
  413d88:	68 2c 18 50 00       	push   0x50182c
  413d8d:	68 00 08 00 00       	push   0x800
  413d92:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  413d95:	e8 a6 df 05 00       	call   0x471d40
  413d9a:	83 c4 0c             	add    esp,0xc
  413d9d:	8d 4d e8             	lea    ecx,[ebp-0x18]
  413da0:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  413da7:	e8 94 dc 0b 00       	call   0x4d1a40
  413dac:	8b 8e 20 01 00 00    	mov    ecx,DWORD PTR [esi+0x120]
  413db2:	51                   	push   ecx
  413db3:	ff 15 3c e1 4d 00    	call   DWORD PTR ds:0x4de13c
  413db9:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  413dbc:	8d 4e 30             	lea    ecx,[esi+0x30]
  413dbf:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
  413dc2:	ff 52 04             	call   DWORD PTR [edx+0x4]
  413dc5:	8b ce                	mov    ecx,esi
  413dc7:	e8 24 ac 07 00       	call   0x48e9f0
  413dcc:	8d 4d ec             	lea    ecx,[ebp-0x14]
  413dcf:	e8 8a dc 0b 00       	call   0x4d1a5e
  413dd4:	8d 4d c0             	lea    ecx,[ebp-0x40]
  413dd7:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  413dde:	e8 7b dc 0b 00       	call   0x4d1a5e
  413de3:	8b ce                	mov    ecx,esi
  413de5:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  413de9:	e8 12 79 07 00       	call   0x48b700
  413dee:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
  413df1:	39 9e 70 01 00 00    	cmp    DWORD PTR [esi+0x170],ebx
  413df7:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
  413dfa:	74 26                	je     0x413e22
  413dfc:	8b 15 50 e6 4d 00    	mov    edx,DWORD PTR ds:0x4de650
  413e02:	8b 06                	mov    eax,DWORD PTR [esi]
  413e04:	83 ec 0c             	sub    esp,0xc
  413e07:	8b cc                	mov    ecx,esp
  413e09:	89 11                	mov    DWORD PTR [ecx],edx
  413e0b:	8b 15 54 e6 4d 00    	mov    edx,DWORD PTR ds:0x4de654
  413e11:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  413e14:	8b 15 58 e6 4d 00    	mov    edx,DWORD PTR ds:0x4de658
  413e1a:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  413e1d:	8b ce                	mov    ecx,esi
  413e1f:	ff 50 20             	call   DWORD PTR [eax+0x20]
  413e22:	6a 44                	push   0x44
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
  413f9d:	e8 f2 da 0b 00       	call   0x4d1a94
  413fa2:	6a 08                	push   0x8
  413fa4:	e8 47 e0 02 00       	call   0x441ff0
  413fa9:	8b d8                	mov    ebx,eax
  413fab:	83 c4 10             	add    esp,0x10
  413fae:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  413fb1:	85 db                	test   ebx,ebx
  413fb3:	c6 45 fc 07          	mov    BYTE PTR [ebp-0x4],0x7
  413fb7:	74 0a                	je     0x413fc3
  413fb9:	8d 4b 04             	lea    ecx,[ebx+0x4]
  413fbc:	e8 9d da 0b 00       	call   0x4d1a5e
  413fc1:	eb 02                	jmp    0x413fc5
  413fc3:	33 db                	xor    ebx,ebx
  413fc5:	8d 45 ec             	lea    eax,[ebp-0x14]
  413fc8:	50                   	push   eax
  413fc9:	8d 4b 04             	lea    ecx,[ebx+0x4]
  413fcc:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  413fd0:	e8 71 da 0b 00       	call   0x4d1a46
  413fd5:	53                   	push   ebx
  413fd6:	8b cf                	mov    ecx,edi
  413fd8:	e8 c3 12 01 00       	call   0x4252a0
  413fdd:	68 40 17 50 00       	push   0x501740
  413fe2:	68 00 08 00 00       	push   0x800
  413fe7:	e8 54 dd 05 00       	call   0x471d40
  413fec:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  413ff2:	8b 11                	mov    edx,DWORD PTR [ecx]
  413ff4:	83 c4 08             	add    esp,0x8
  413ff7:	ff 52 04             	call   DWORD PTR [edx+0x4]
  413ffa:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  414000:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  414003:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  414006:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  41400d:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  414011:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  414017:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41401a:	85 c9                	test   ecx,ecx
  41401c:	74 0a                	je     0x414028
  41401e:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  414021:	8b 0a                	mov    ecx,DWORD PTR [edx]
  414023:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  414026:	eb 07                	jmp    0x41402f
  414028:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  41402f:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  414032:	85 c9                	test   ecx,ecx
  414034:	0f 84 23 01 00 00    	je     0x41415d
  41403a:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  41403d:	85 c0                	test   eax,eax
  41403f:	0f 85 2a 01 00 00    	jne    0x41416f
  414045:	8b 96 9c 01 00 00    	mov    edx,DWORD PTR [esi+0x19c]
  41404b:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  41404e:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
  414051:	8b 13                	mov    edx,DWORD PTR [ebx]
  414053:	8b cb                	mov    ecx,ebx
  414055:	ff 52 28             	call   DWORD PTR [edx+0x28]
  414058:	8b 0d 5c 05 4e 00    	mov    ecx,DWORD PTR ds:0x4e055c
  41405e:	3b 01                	cmp    eax,DWORD PTR [ecx]
  414060:	74 af                	je     0x414011
  414062:	8b 03                	mov    eax,DWORD PTR [ebx]
  414064:	6a 03                	push   0x3
  414066:	8d 95 58 ff ff ff    	lea    edx,[ebp-0xa8]
  41406c:	52                   	push   edx
  41406d:	8b cb                	mov    ecx,ebx
  41406f:	ff 50 28             	call   DWORD PTR [eax+0x28]
  414072:	50                   	push   eax
  414073:	e8 38 5e 07 00       	call   0x489eb0
  414078:	83 c4 0c             	add    esp,0xc
  41407b:	85 c0                	test   eax,eax
  41407d:	74 92                	je     0x414011
  41407f:	8b cb                	mov    ecx,ebx
  414081:	e8 6a 83 03 00       	call   0x44c3f0
  414086:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
  414089:	50                   	push   eax
  41408a:	8d 8d 58 ff ff ff    	lea    ecx,[ebp-0xa8]
  414090:	51                   	push   ecx
  414091:	52                   	push   edx
  414092:	8b cb                	mov    ecx,ebx
  414094:	e8 67 76 07 00       	call   0x48b700
  414099:	50                   	push   eax
  41409a:	8d 45 ec             	lea    eax,[ebp-0x14]
  41409d:	68 e0 16 50 00       	push   0x5016e0
  4140a2:	50                   	push   eax
  4140a3:	e8 ec d9 0b 00       	call   0x4d1a94
  4140a8:	6a 08                	push   0x8
  4140aa:	e8 41 df 02 00       	call   0x441ff0
  4140af:	83 c4 1c             	add    esp,0x1c
  4140b2:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4140b5:	85 c0                	test   eax,eax
  4140b7:	c6 45 fc 08          	mov    BYTE PTR [ebp-0x4],0x8
  4140bb:	74 12                	je     0x4140cf
  4140bd:	8b c8                	mov    ecx,eax
  4140bf:	83 c1 04             	add    ecx,0x4
  4140c2:	e8 97 d9 0b 00       	call   0x4d1a5e
  4140c7:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  4140ca:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
  4140cd:	eb 07                	jmp    0x4140d6
  4140cf:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  4140d6:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  4140d9:	8d 45 ec             	lea    eax,[ebp-0x14]
  4140dc:	50                   	push   eax
  4140dd:	83 c1 04             	add    ecx,0x4
  4140e0:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4140e4:	e8 5d d9 0b 00       	call   0x4d1a46
  4140e9:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  4140ec:	52                   	push   edx
  4140ed:	8b cf                	mov    ecx,edi
  4140ef:	e8 ac 11 01 00       	call   0x4252a0
  4140f4:	8b cb                	mov    ecx,ebx
  4140f6:	e8 05 84 03 00       	call   0x44c500
  4140fb:	84 c0                	test   al,al
  4140fd:	75 09                	jne    0x414108
  4140ff:	8b 03                	mov    eax,DWORD PTR [ebx]
  414101:	6a 1b                	push   0x1b
  414103:	8b cb                	mov    ecx,ebx
  414105:	ff 50 08             	call   DWORD PTR [eax+0x8]
  414108:	8b ce                	mov    ecx,esi
  41410a:	e8 f1 75 07 00       	call   0x48b700
  41410f:	50                   	push   eax
  414110:	57                   	push   edi
  414111:	8b cb                	mov    ecx,ebx
  414113:	e8 c8 b0 07 00       	call   0x48f1e0
  414118:	85 c0                	test   eax,eax
  41411a:	74 07                	je     0x414123
  41411c:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
  414123:	8b ce                	mov    ecx,esi
  414125:	e8 d6 75 07 00       	call   0x48b700
  41412a:	50                   	push   eax
  41412b:	57                   	push   edi
  41412c:	8b cb                	mov    ecx,ebx
  41412e:	e8 7d ad 07 00       	call   0x48eeb0
  414133:	85 c0                	test   eax,eax
  414135:	74 07                	je     0x41413e
  414137:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
  41413e:	8b cb                	mov    ecx,ebx
  414140:	e8 bb 83 03 00       	call   0x44c500
  414145:	84 c0                	test   al,al
  414147:	0f 85 c4 fe ff ff    	jne    0x414011
  41414d:	8b 13                	mov    edx,DWORD PTR [ebx]
  41414f:	6a 01                	push   0x1
  414151:	6a 1b                	push   0x1b
  414153:	8b cb                	mov    ecx,ebx
  414155:	ff 52 04             	call   DWORD PTR [edx+0x4]
  414158:	e9 b4 fe ff ff       	jmp    0x414011
  41415d:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  414160:	85 c9                	test   ecx,ecx
  414162:	74 04                	je     0x414168
  414164:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  414168:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  41416f:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  414175:	8b 01                	mov    eax,DWORD PTR [ecx]
  414177:	ff 50 08             	call   DWORD PTR [eax+0x8]
  41417a:	68 cc 16 50 00       	push   0x5016cc
  41417f:	68 00 08 00 00       	push   0x800
  414184:	e8 b7 db 05 00       	call   0x471d40
  414189:	83 c4 08             	add    esp,0x8
  41418c:	33 c0                	xor    eax,eax
  41418e:	8b 9c 86 a0 01 00 00 	mov    ebx,DWORD PTR [esi+eax*4+0x1a0]
  414195:	85 db                	test   ebx,ebx
  414197:	8d 48 01             	lea    ecx,[eax+0x1]
  41419a:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
  41419d:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  4141a0:	0f 84 03 01 00 00    	je     0x4142a9
  4141a6:	83 f8 08             	cmp    eax,0x8
  4141a9:	75 17                	jne    0x4141c2
  4141ab:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  4141b1:	3b 8e c0 01 00 00    	cmp    ecx,DWORD PTR [esi+0x1c0]
  4141b7:	75 20                	jne    0x4141d9
  4141b9:	c7 45 f0 0b 00 00 00 	mov    DWORD PTR [ebp-0x10],0xb
  4141c0:	eb 17                	jmp    0x4141d9
  4141c2:	83 f8 09             	cmp    eax,0x9
  4141c5:	75 12                	jne    0x4141d9
  4141c7:	8b 96 c4 01 00 00    	mov    edx,DWORD PTR [esi+0x1c4]
  4141cd:	3b 96 c0 01 00 00    	cmp    edx,DWORD PTR [esi+0x1c0]
  4141d3:	0f 84 d0 00 00 00    	je     0x4142a9
  4141d9:	8b 13                	mov    edx,DWORD PTR [ebx]
  4141db:	6a 03                	push   0x3
  4141dd:	8d 85 58 ff ff ff    	lea    eax,[ebp-0xa8]
  4141e3:	50                   	push   eax
  4141e4:	8b cb                	mov    ecx,ebx
  4141e6:	ff 52 28             	call   DWORD PTR [edx+0x28]
  4141e9:	50                   	push   eax
  4141ea:	e8 c1 5c 07 00       	call   0x489eb0
  4141ef:	83 c4 0c             	add    esp,0xc
  4141f2:	85 c0                	test   eax,eax
  4141f4:	0f 84 af 00 00 00    	je     0x4142a9
  4141fa:	8b cb                	mov    ecx,ebx
  4141fc:	e8 ef 81 03 00       	call   0x44c3f0
  414201:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  414204:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
  414207:	50                   	push   eax
  414208:	8d 85 58 ff ff ff    	lea    eax,[ebp-0xa8]
  41420e:	50                   	push   eax
  41420f:	51                   	push   ecx
  414210:	52                   	push   edx
  414211:	8b cb                	mov    ecx,ebx
  414213:	e8 e8 74 07 00       	call   0x48b700
  414218:	50                   	push   eax
  414219:	8d 45 ec             	lea    eax,[ebp-0x14]
  41421c:	68 6c 16 50 00       	push   0x50166c
  414221:	50                   	push   eax
  414222:	e8 6d d8 0b 00       	call   0x4d1a94
  414227:	6a 08                	push   0x8
  414229:	e8 c2 dd 02 00       	call   0x441ff0
  41422e:	83 c4 20             	add    esp,0x20
  414231:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  414234:	85 c0                	test   eax,eax
  414236:	c6 45 fc 09          	mov    BYTE PTR [ebp-0x4],0x9
  41423a:	74 12                	je     0x41424e
  41423c:	8b c8                	mov    ecx,eax
  41423e:	83 c1 04             	add    ecx,0x4
  414241:	e8 18 d8 0b 00       	call   0x4d1a5e
  414246:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  414249:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
  41424c:	eb 07                	jmp    0x414255
  41424e:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  414255:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  414258:	8d 45 ec             	lea    eax,[ebp-0x14]
  41425b:	50                   	push   eax
  41425c:	83 c1 04             	add    ecx,0x4
  41425f:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  414263:	e8 de d7 0b 00       	call   0x4d1a46
  414268:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  41426b:	52                   	push   edx
  41426c:	8b cf                	mov    ecx,edi
  41426e:	e8 2d 10 01 00       	call   0x4252a0
  414273:	8b ce                	mov    ecx,esi
  414275:	e8 86 74 07 00       	call   0x48b700
  41427a:	50                   	push   eax
  41427b:	57                   	push   edi
  41427c:	8b cb                	mov    ecx,ebx
  41427e:	e8 5d af 07 00       	call   0x48f1e0
  414283:	85 c0                	test   eax,eax
  414285:	74 07                	je     0x41428e
  414287:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
  41428e:	8b ce                	mov    ecx,esi
  414290:	e8 6b 74 07 00       	call   0x48b700
  414295:	50                   	push   eax
  414296:	57                   	push   edi
  414297:	8b cb                	mov    ecx,ebx
  414299:	e8 12 ac 07 00       	call   0x48eeb0
  41429e:	85 c0                	test   eax,eax
  4142a0:	74 07                	je     0x4142a9
  4142a2:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
  4142a9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  4142ac:	83 f8 10             	cmp    eax,0x10
  4142af:	0f 8c d9 fe ff ff    	jl     0x41418e
  4142b5:	68 5c 16 50 00       	push   0x50165c
  4142ba:	68 00 08 00 00       	push   0x800
  4142bf:	e8 7c da 05 00       	call   0x471d40
  4142c4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  4142c7:	83 c4 08             	add    esp,0x8
  4142ca:	50                   	push   eax
  4142cb:	8d 4d ec             	lea    ecx,[ebp-0x14]
  4142ce:	68 30 16 50 00       	push   0x501630
  4142d3:	51                   	push   ecx
  4142d4:	e8 bb d7 0b 00       	call   0x4d1a94
  4142d9:	6a 08                	push   0x8
  4142db:	e8 10 dd 02 00       	call   0x441ff0
  4142e0:	8b d8                	mov    ebx,eax
  4142e2:	83 c4 10             	add    esp,0x10
  4142e5:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  4142e8:	85 db                	test   ebx,ebx
  4142ea:	c6 45 fc 0a          	mov    BYTE PTR [ebp-0x4],0xa
  4142ee:	74 0a                	je     0x4142fa
  4142f0:	8d 4b 04             	lea    ecx,[ebx+0x4]
  4142f3:	e8 66 d7 0b 00       	call   0x4d1a5e
  4142f8:	eb 02                	jmp    0x4142fc
  4142fa:	33 db                	xor    ebx,ebx
  4142fc:	8d 55 ec             	lea    edx,[ebp-0x14]
  4142ff:	52                   	push   edx
  414300:	8d 4b 04             	lea    ecx,[ebx+0x4]
  414303:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  414307:	e8 3a d7 0b 00       	call   0x4d1a46
  41430c:	53                   	push   ebx
  41430d:	8b cf                	mov    ecx,edi
  41430f:	e8 8c 0f 01 00       	call   0x4252a0
  414314:	8d 9e 04 02 00 00    	lea    ebx,[esi+0x204]
  41431a:	89 5d d4             	mov    DWORD PTR [ebp-0x2c],ebx
  41431d:	c7 45 e8 07 00 00 00 	mov    DWORD PTR [ebp-0x18],0x7
  414324:	8b 43 e0             	mov    eax,DWORD PTR [ebx-0x20]
  414327:	8d 4b e0             	lea    ecx,[ebx-0x20]
  41432a:	ff 50 04             	call   DWORD PTR [eax+0x4]
  41432d:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  414330:	89 0b                	mov    DWORD PTR [ebx],ecx
  414332:	c7 43 20 00 00 00 00 	mov    DWORD PTR [ebx+0x20],0x0
  414339:	c6 43 14 08          	mov    BYTE PTR [ebx+0x14],0x8
  41433d:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  414340:	85 c0                	test   eax,eax
  414342:	74 08                	je     0x41434c
  414344:	8b 13                	mov    edx,DWORD PTR [ebx]
  414346:	8b 02                	mov    eax,DWORD PTR [edx]
  414348:	89 03                	mov    DWORD PTR [ebx],eax
  41434a:	eb 07                	jmp    0x414353
  41434c:	c7 43 20 01 00 00 00 	mov    DWORD PTR [ebx+0x20],0x1
  414353:	8b 03                	mov    eax,DWORD PTR [ebx]
  414355:	85 c0                	test   eax,eax
  414357:	8d 4b e0             	lea    ecx,[ebx-0x20]
  41435a:	0f 84 47 01 00 00    	je     0x4144a7
  414360:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  414363:	85 c0                	test   eax,eax
  414365:	0f 85 4e 01 00 00    	jne    0x4144b9
  41436b:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  41436d:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  414370:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  414373:	8b 1e                	mov    ebx,DWORD PTR [esi]
  414375:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  414378:	8b 00                	mov    eax,DWORD PTR [eax]
  41437a:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
  41437d:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
  414380:	e8 db 96 02 00       	call   0x43da60
  414385:	8d 4d cc             	lea    ecx,[ebp-0x34]
  414388:	50                   	push   eax
  414389:	51                   	push   ecx
  41438a:	8b ce                	mov    ecx,esi
  41438c:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  41438f:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  414392:	8b 4d c8             	mov    ecx,DWORD PTR [ebp-0x38]
  414395:	8b 5d d8             	mov    ebx,DWORD PTR [ebp-0x28]
  414398:	8b 00                	mov    eax,DWORD PTR [eax]
  41439a:	52                   	push   edx
  41439b:	51                   	push   ecx
  41439c:	53                   	push   ebx
  41439d:	50                   	push   eax
  41439e:	68 fc 15 50 00       	push   0x5015fc
  4143a3:	68 00 04 00 00       	push   0x400
  4143a8:	c6 45 fc 0b          	mov    BYTE PTR [ebp-0x4],0xb
  4143ac:	e8 8f d9 05 00       	call   0x471d40
  4143b1:	83 c4 18             	add    esp,0x18
  4143b4:	8d 4d cc             	lea    ecx,[ebp-0x34]
  4143b7:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4143bb:	e8 80 d6 0b 00       	call   0x4d1a40
  4143c0:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  4143c3:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  4143c6:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4143c8:	50                   	push   eax
  4143c9:	51                   	push   ecx
  4143ca:	53                   	push   ebx
  4143cb:	8d 55 ec             	lea    edx,[ebp-0x14]
  4143ce:	68 b0 15 50 00       	push   0x5015b0
  4143d3:	52                   	push   edx
  4143d4:	e8 bb d6 0b 00       	call   0x4d1a94
  4143d9:	6a 08                	push   0x8
  4143db:	e8 10 dc 02 00       	call   0x441ff0
  4143e0:	8b d8                	mov    ebx,eax
  4143e2:	83 c4 18             	add    esp,0x18
  4143e5:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  4143e8:	85 db                	test   ebx,ebx
  4143ea:	c6 45 fc 0c          	mov    BYTE PTR [ebp-0x4],0xc
  4143ee:	74 0f                	je     0x4143ff
  4143f0:	8d 4b 04             	lea    ecx,[ebx+0x4]
  4143f3:	e8 66 d6 0b 00       	call   0x4d1a5e
  4143f8:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  4143fb:	33 db                	xor    ebx,ebx
  4143fd:	eb 05                	jmp    0x414404
  4143ff:	33 db                	xor    ebx,ebx
  414401:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  414404:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  414407:	8d 45 ec             	lea    eax,[ebp-0x14]
  41440a:	50                   	push   eax
  41440b:	83 c1 04             	add    ecx,0x4
  41440e:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  414412:	e8 2f d6 0b 00       	call   0x4d1a46
  414417:	8b 47 28             	mov    eax,DWORD PTR [edi+0x28]
  41441a:	8b 57 38             	mov    edx,DWORD PTR [edi+0x38]
  41441d:	42                   	inc    edx
  41441e:	3b c3                	cmp    eax,ebx
  414420:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  414423:	89 5f 40             	mov    DWORD PTR [edi+0x40],ebx
  414426:	c6 47 34 08          	mov    BYTE PTR [edi+0x34],0x8
  41442a:	89 47 2c             	mov    DWORD PTR [edi+0x2c],eax
  41442d:	89 57 38             	mov    DWORD PTR [edi+0x38],edx
  414430:	6a 0c                	push   0xc
  414432:	75 37                	jne    0x41446b
  414434:	e8 b7 db 02 00       	call   0x441ff0
  414439:	83 c4 04             	add    esp,0x4
  41443c:	3b c3                	cmp    eax,ebx
  41443e:	74 07                	je     0x414447
  414440:	89 18                	mov    DWORD PTR [eax],ebx
  414442:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  414445:	eb 02                	jmp    0x414449
  414447:	33 c0                	xor    eax,eax
  414449:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  41444c:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  41444f:	89                   	.byte 0x89
