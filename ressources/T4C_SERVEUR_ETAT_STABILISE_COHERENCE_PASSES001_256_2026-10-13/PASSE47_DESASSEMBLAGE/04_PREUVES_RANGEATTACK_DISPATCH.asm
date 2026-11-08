; PASSE47 — Character::RangeAttack, controle zone et aiguillage
; Binaire serveur SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; .text — instructions originales validées octet par octet ; adresses VA PE32 x86
; Extrait documentaire statique, non preuve de fonctionnement dynamique

; GAME_RULES::InSafeHaven | [0x439190,0x4391ec[
; Teste UnderBlock 6 et 7 de chaque partie, puis GetType == 1 pour les deux.
  439190:	55                   	push   ebp
  439191:	8b ec                	mov    ebp,esp
  439193:	56                   	push   esi
  439194:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  439197:	57                   	push   edi
  439198:	8b ce                	mov    ecx,esi
  43919a:	e8 f1 62 05 00       	call   0x48f490
  43919f:	3c 06                	cmp    al,0x6
  4391a1:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  4391a4:	74 21                	je     0x4391c7
  4391a6:	8b ce                	mov    ecx,esi
  4391a8:	e8 e3 62 05 00       	call   0x48f490
  4391ad:	3c 07                	cmp    al,0x7
  4391af:	74 16                	je     0x4391c7
  4391b1:	8b cf                	mov    ecx,edi
  4391b3:	e8 d8 62 05 00       	call   0x48f490
  4391b8:	3c 06                	cmp    al,0x6
  4391ba:	74 0b                	je     0x4391c7
  4391bc:	8b cf                	mov    ecx,edi
  4391be:	e8 cd 62 05 00       	call   0x48f490
  4391c3:	3c 07                	cmp    al,0x7
  4391c5:	75 1f                	jne    0x4391e6
  4391c7:	8b ce                	mov    ecx,esi
  4391c9:	e8 a2 24 05 00       	call   0x48b670
  4391ce:	3c 01                	cmp    al,0x1
  4391d0:	75 14                	jne    0x4391e6
  4391d2:	8b cf                	mov    ecx,edi
  4391d4:	e8 97 24 05 00       	call   0x48b670
  4391d9:	3c 01                	cmp    al,0x1
  4391db:	75 09                	jne    0x4391e6
  4391dd:	5f                   	pop    edi
  4391de:	b8 01 00 00 00       	mov    eax,0x1
  4391e3:	5e                   	pop    esi
  4391e4:	5d                   	pop    ebp
  4391e5:	c3                   	ret
  4391e6:	5f                   	pop    edi
  4391e7:	33 c0                	xor    eax,eax
  4391e9:	5e                   	pop    esi
  4391ea:	5d                   	pop    ebp
  4391eb:	c3                   	ret

; Character::RangeAttack | [0x421d80,0x422300[
; Prédicat RangedAttack, InSafeHaven, messages 0x3F et branches avec appels 95/96.
  421d80:	55                   	push   ebp
  421d81:	8b ec                	mov    ebp,esp
  421d83:	6a ff                	push   0xffffffff
  421d85:	68 2b 44 4d 00       	push   0x4d442b
  421d8a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  421d90:	50                   	push   eax
  421d91:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  421d98:	81 ec 98 00 00 00    	sub    esp,0x98
  421d9e:	53                   	push   ebx
  421d9f:	56                   	push   esi
  421da0:	57                   	push   edi
  421da1:	8b f1                	mov    esi,ecx
  421da3:	e8 78 f8 ff ff       	call   0x421620
  421da8:	84 c0                	test   al,al
  421daa:	0f 84 da 02 00 00    	je     0x42208a
  421db0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  421db3:	50                   	push   eax
  421db4:	56                   	push   esi
  421db5:	e8 d6 73 01 00       	call   0x439190
  421dba:	83 c4 08             	add    esp,0x8
  421dbd:	85 c0                	test   eax,eax
  421dbf:	0f 84 8d 00 00 00    	je     0x421e52
  421dc5:	8b ce                	mov    ecx,esi
  421dc7:	e8 74 e0 ff ff       	call   0x41fe40
  421dcc:	8d 4d cc             	lea    ecx,[ebp-0x34]
  421dcf:	e8 1c 40 06 00       	call   0x485df0
  421dd4:	33 db                	xor    ebx,ebx
  421dd6:	6a 3f                	push   0x3f
  421dd8:	8d 4d cc             	lea    ecx,[ebp-0x34]
  421ddb:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  421dde:	e8 6d 43 06 00       	call   0x486150
  421de3:	6a 1e                	push   0x1e
  421de5:	8d 4d cc             	lea    ecx,[ebp-0x34]
  421de8:	e8 63 43 06 00       	call   0x486150
  421ded:	6a 03                	push   0x3
  421def:	8d 4d cc             	lea    ecx,[ebp-0x34]
  421df2:	e8 59 43 06 00       	call   0x486150
  421df7:	8b 16                	mov    edx,DWORD PTR [esi]
  421df9:	68 58 13 51 00       	push   0x511358
  421dfe:	8b ce                	mov    ecx,esi
  421e00:	ff 92 94 01 00 00    	call   DWORD PTR [edx+0x194]
  421e06:	50                   	push   eax
  421e07:	6a 16                	push   0x16
  421e09:	e8 e2 bb 01 00       	call   0x43d9f0
  421e0e:	83 c4 0c             	add    esp,0xc
  421e11:	50                   	push   eax
  421e12:	8d 4d 08             	lea    ecx,[ebp+0x8]
  421e15:	e8 4a fc 0a 00       	call   0x4d1a64
  421e1a:	8d 45 08             	lea    eax,[ebp+0x8]
  421e1d:	50                   	push   eax
  421e1e:	8d 4d cc             	lea    ecx,[ebp-0x34]
  421e21:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  421e25:	e8 26 45 06 00       	call   0x486350
  421e2a:	8b 16                	mov    edx,DWORD PTR [esi]
  421e2c:	8d 45 cc             	lea    eax,[ebp-0x34]
  421e2f:	50                   	push   eax
  421e30:	8b ce                	mov    ecx,esi
  421e32:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  421e38:	8d 4d 08             	lea    ecx,[ebp+0x8]
  421e3b:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  421e3e:	e8 fd fb 0a 00       	call   0x4d1a40
  421e43:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  421e4a:	8d 4d cc             	lea    ecx,[ebp-0x34]
  421e4d:	e9 33 02 00 00       	jmp    0x422085
  421e52:	8b 16                	mov    edx,DWORD PTR [esi]
  421e54:	33 db                	xor    ebx,ebx
  421e56:	53                   	push   ebx
  421e57:	68 31 4e 00 00       	push   0x4e31
  421e5c:	8b ce                	mov    ecx,esi
  421e5e:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  421e61:	85 c0                	test   eax,eax
  421e63:	0f 85 21 02 00 00    	jne    0x42208a
  421e69:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  421e6f:	8b be c4 01 00 00    	mov    edi,DWORD PTR [esi+0x1c4]
  421e75:	8d 55 e4             	lea    edx,[ebp-0x1c]
  421e78:	52                   	push   edx
  421e79:	53                   	push   ebx
  421e7a:	53                   	push   ebx
  421e7b:	53                   	push   ebx
  421e7c:	53                   	push   ebx
  421e7d:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
  421e80:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  421e83:	8b 01                	mov    eax,DWORD PTR [ecx]
  421e85:	6a 14                	push   0x14
  421e87:	89 7d e8             	mov    DWORD PTR [ebp-0x18],edi
  421e8a:	ff 50 24             	call   DWORD PTR [eax+0x24]
  421e8d:	8b 07                	mov    eax,DWORD PTR [edi]
  421e8f:	8d 4d ec             	lea    ecx,[ebp-0x14]
  421e92:	51                   	push   ecx
  421e93:	53                   	push   ebx
  421e94:	53                   	push   ebx
  421e95:	53                   	push   ebx
  421e96:	53                   	push   ebx
  421e97:	6a 14                	push   0x14
  421e99:	8b cf                	mov    ecx,edi
  421e9b:	ff 50 24             	call   DWORD PTR [eax+0x24]
  421e9e:	8b 16                	mov    edx,DWORD PTR [esi]
  421ea0:	8d 45 bc             	lea    eax,[ebp-0x44]
  421ea3:	50                   	push   eax
  421ea4:	8b ce                	mov    ecx,esi
  421ea6:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421ea9:	33 c9                	xor    ecx,ecx
  421eab:	66 8b 48 08          	mov    cx,WORD PTR [eax+0x8]
  421eaf:	51                   	push   ecx
  421eb0:	e8 0b 00 05 00       	call   0x471ec0
  421eb5:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  421eb8:	83 c4 04             	add    esp,0x4
  421ebb:	3b cb                	cmp    ecx,ebx
  421ebd:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
  421ec0:	0f 84 c4 01 00 00    	je     0x42208a
  421ec6:	39 5d ec             	cmp    DWORD PTR [ebp-0x14],ebx
  421ec9:	0f 84 bb 01 00 00    	je     0x42208a
  421ecf:	3b c3                	cmp    eax,ebx
  421ed1:	0f 84 b3 01 00 00    	je     0x42208a
  421ed7:	8b 16                	mov    edx,DWORD PTR [esi]
  421ed9:	8d 45 b0             	lea    eax,[ebp-0x50]
  421edc:	50                   	push   eax
  421edd:	8b ce                	mov    ecx,esi
  421edf:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421ee2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  421ee5:	8b 11                	mov    edx,DWORD PTR [ecx]
  421ee7:	8d 45 a0             	lea    eax,[ebp-0x60]
  421eea:	50                   	push   eax
  421eeb:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421eee:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  421ef1:	89 75 bc             	mov    DWORD PTR [ebp-0x44],esi
  421ef4:	89 7d c0             	mov    DWORD PTR [ebp-0x40],edi
  421ef7:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
  421efa:	8b 55 b8             	mov    edx,DWORD PTR [ebp-0x48]
  421efd:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  421f00:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
  421f03:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  421f0a:	89 5d c8             	mov    DWORD PTR [ebp-0x38],ebx
  421f0d:	8b 5d a0             	mov    ebx,DWORD PTR [ebp-0x60]
  421f10:	6a 01                	push   0x1
  421f12:	6a 01                	push   0x1
  421f14:	8d 7d f0             	lea    edi,[ebp-0x10]
  421f17:	57                   	push   edi
  421f18:	8d 7d 94             	lea    edi,[ebp-0x6c]
  421f1b:	57                   	push   edi
  421f1c:	83 ec 0c             	sub    esp,0xc
  421f1f:	8b fc                	mov    edi,esp
  421f21:	89 1f                	mov    DWORD PTR [edi],ebx
  421f23:	8b 5d a4             	mov    ebx,DWORD PTR [ebp-0x5c]
  421f26:	89 5f 04             	mov    DWORD PTR [edi+0x4],ebx
  421f29:	8b 5d a8             	mov    ebx,DWORD PTR [ebp-0x58]
  421f2c:	89 5f 08             	mov    DWORD PTR [edi+0x8],ebx
  421f2f:	83 ec 0c             	sub    esp,0xc
  421f32:	8b fc                	mov    edi,esp
  421f34:	89 07                	mov    DWORD PTR [edi],eax
  421f36:	89 4f 04             	mov    DWORD PTR [edi+0x4],ecx
  421f39:	8b 4d ac             	mov    ecx,DWORD PTR [ebp-0x54]
  421f3c:	89 57 08             	mov    DWORD PTR [edi+0x8],edx
  421f3f:	e8 bc 07 09 00       	call   0x4b2700
  421f44:	85 c0                	test   eax,eax
  421f46:	75 0a                	jne    0x421f52
  421f48:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  421f4b:	8b d3                	mov    edx,ebx
  421f4d:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
  421f50:	eb 06                	jmp    0x421f58
  421f52:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  421f55:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  421f58:	85 d2                	test   edx,edx
  421f5a:	0f 84 84 02 00 00    	je     0x4221e4
  421f60:	33 c0                	xor    eax,eax
  421f62:	b9 08 00 00 00       	mov    ecx,0x8
  421f67:	8d bd 5c ff ff ff    	lea    edi,[ebp-0xa4]
  421f6d:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  421f6f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  421f72:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  421f75:	50                   	push   eax
  421f76:	51                   	push   ecx
  421f77:	52                   	push   edx
  421f78:	8d 95 5c ff ff ff    	lea    edx,[ebp-0xa4]
  421f7e:	56                   	push   esi
  421f7f:	52                   	push   edx
  421f80:	e8 1b f7 ff ff       	call   0x4216a0
  421f85:	8b 85 6c ff ff ff    	mov    eax,DWORD PTR [ebp-0x94]
  421f8b:	83 c4 14             	add    esp,0x14
  421f8e:	85 c0                	test   eax,eax
  421f90:	0f 8f b4 01 00 00    	jg     0x42214a
  421f96:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  421f99:	8b 01                	mov    eax,DWORD PTR [ecx]
  421f9b:	6a 00                	push   0x0
  421f9d:	68 31 4e 00 00       	push   0x4e31
  421fa2:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  421fa5:	85 c0                	test   eax,eax
  421fa7:	0f 85 9d 01 00 00    	jne    0x42214a
  421fad:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  421fb0:	3b cb                	cmp    ecx,ebx
  421fb2:	0f 84 e5 00 00 00    	je     0x42209d
  421fb8:	8b 11                	mov    edx,DWORD PTR [ecx]
  421fba:	8d 45 d8             	lea    eax,[ebp-0x28]
  421fbd:	50                   	push   eax
  421fbe:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421fc1:	8b 7d c8             	mov    edi,DWORD PTR [ebp-0x38]
  421fc4:	8b d0                	mov    edx,eax
  421fc6:	8b 02                	mov    eax,DWORD PTR [edx]
  421fc8:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
  421fcb:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  421fce:	47                   	inc    edi
  421fcf:	83 ff 0a             	cmp    edi,0xa
  421fd2:	89 4d b4             	mov    DWORD PTR [ebp-0x4c],ecx
  421fd5:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  421fd8:	89 55 b8             	mov    DWORD PTR [ebp-0x48],edx
  421fdb:	89 7d c8             	mov    DWORD PTR [ebp-0x38],edi
  421fde:	0f 8c 29 ff ff ff    	jl     0x421f0d
  421fe4:	8b 13                	mov    edx,DWORD PTR [ebx]
  421fe6:	6a 00                	push   0x0
  421fe8:	8d 45 d8             	lea    eax,[ebp-0x28]
  421feb:	50                   	push   eax
  421fec:	8b cb                	mov    ecx,ebx
  421fee:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  421ff1:	8b 10                	mov    edx,DWORD PTR [eax]
  421ff3:	83 ec 0c             	sub    esp,0xc
  421ff6:	8b cc                	mov    ecx,esp
  421ff8:	89 11                	mov    DWORD PTR [ecx],edx
  421ffa:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  421ffd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  422000:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  422003:	56                   	push   esi
  422004:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  422007:	e8 e4 f8 ff ff       	call   0x4218f0
  42200c:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  42200f:	8a 81 27 01 00 00    	mov    al,BYTE PTR [ecx+0x127]
  422015:	83 cb ff             	or     ebx,0xffffffff
  422018:	83 c4 14             	add    esp,0x14
  42201b:	84 c0                	test   al,al
  42201d:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  422020:	75 68                	jne    0x42208a
  422022:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
  422025:	6a 01                	push   0x1
  422027:	8b cf                	mov    ecx,edi
  422029:	e8 72 a4 02 00       	call   0x44c4a0
  42202e:	8b cf                	mov    ecx,edi
  422030:	e8 bb a3 02 00       	call   0x44c3f0
  422035:	85 c0                	test   eax,eax
  422037:	75 10                	jne    0x422049
  422039:	89 86 c4 01 00 00    	mov    DWORD PTR [esi+0x1c4],eax
  42203f:	8b 17                	mov    edx,DWORD PTR [edi]
  422041:	8b cf                	mov    ecx,edi
  422043:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  422049:	8d 8d 7c ff ff ff    	lea    ecx,[ebp-0x84]
  42204f:	e8 9c 3d 06 00       	call   0x485df0
  422054:	6a 00                	push   0x0
  422056:	8d 85 7c ff ff ff    	lea    eax,[ebp-0x84]
  42205c:	50                   	push   eax
  42205d:	8b ce                	mov    ecx,esi
  42205f:	c7 45 fc 06 00 00 00 	mov    DWORD PTR [ebp-0x4],0x6
  422066:	e8 05 78 ff ff       	call   0x419870
  42206b:	8b 16                	mov    edx,DWORD PTR [esi]
  42206d:	8d 85 7c ff ff ff    	lea    eax,[ebp-0x84]
  422073:	50                   	push   eax
  422074:	8b ce                	mov    ecx,esi
  422076:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  42207c:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  42207f:	8d 8d 7c ff ff ff    	lea    ecx,[ebp-0x84]
  422085:	e8 f6 3d 06 00       	call   0x485e80
  42208a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  42208d:	5f                   	pop    edi
  42208e:	5e                   	pop    esi
  42208f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  422096:	5b                   	pop    ebx
  422097:	8b e5                	mov    esp,ebp
  422099:	5d                   	pop    ebp
  42209a:	c2 04 00             	ret    0x4
  42209d:	8b 06                	mov    eax,DWORD PTR [esi]
  42209f:	68 e8 03 00 00       	push   0x3e8
  4220a4:	6a 00                	push   0x0
  4220a6:	68 f4 01 00 00       	push   0x1f4
  4220ab:	8b ce                	mov    ecx,esi
  4220ad:	ff 50 78             	call   DWORD PTR [eax+0x78]
  4220b0:	8b 13                	mov    edx,DWORD PTR [ebx]
  4220b2:	6a 00                	push   0x0
  4220b4:	8d 45 d8             	lea    eax,[ebp-0x28]
  4220b7:	50                   	push   eax
  4220b8:	8b cb                	mov    ecx,ebx
  4220ba:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4220bd:	8b 10                	mov    edx,DWORD PTR [eax]
  4220bf:	83 ec 0c             	sub    esp,0xc
  4220c2:	8b cc                	mov    ecx,esp
  4220c4:	89 11                	mov    DWORD PTR [ecx],edx
  4220c6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4220c9:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4220cc:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4220cf:	56                   	push   esi
  4220d0:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4220d3:	e8 18 f8 ff ff       	call   0x4218f0
  4220d8:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  4220db:	8a 81 27 01 00 00    	mov    al,BYTE PTR [ecx+0x127]
  4220e1:	83 cb ff             	or     ebx,0xffffffff
  4220e4:	83 c4 14             	add    esp,0x14
  4220e7:	84 c0                	test   al,al
  4220e9:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  4220ec:	75 9c                	jne    0x42208a
  4220ee:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
  4220f1:	6a 01                	push   0x1
  4220f3:	8b cf                	mov    ecx,edi
  4220f5:	e8 a6 a3 02 00       	call   0x44c4a0
  4220fa:	8b cf                	mov    ecx,edi
  4220fc:	e8 ef a2 02 00       	call   0x44c3f0
  422101:	85 c0                	test   eax,eax
  422103:	75 10                	jne    0x422115
  422105:	89 86 c4 01 00 00    	mov    DWORD PTR [esi+0x1c4],eax
  42210b:	8b 17                	mov    edx,DWORD PTR [edi]
  42210d:	8b cf                	mov    ecx,edi
  42210f:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  422115:	8d 4d cc             	lea    ecx,[ebp-0x34]
  422118:	e8 d3 3c 06 00       	call   0x485df0
  42211d:	6a 00                	push   0x0
  42211f:	8d 45 cc             	lea    eax,[ebp-0x34]
  422122:	50                   	push   eax
  422123:	8b ce                	mov    ecx,esi
  422125:	c7 45 fc 04 00 00 00 	mov    DWORD PTR [ebp-0x4],0x4
  42212c:	e8 3f 77 ff ff       	call   0x419870
  422131:	8b 16                	mov    edx,DWORD PTR [esi]
  422133:	8d 45 cc             	lea    eax,[ebp-0x34]
  422136:	50                   	push   eax
  422137:	8b ce                	mov    ecx,esi
  422139:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  42213f:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  422142:	8d 4d cc             	lea    ecx,[ebp-0x34]
  422145:	e9 3b ff ff ff       	jmp    0x422085
  42214a:	8b 16                	mov    edx,DWORD PTR [esi]
  42214c:	68 e8 03 00 00       	push   0x3e8
  422151:	6a 00                	push   0x0
  422153:	68 f4 01 00 00       	push   0x1f4
  422158:	8b ce                	mov    ecx,esi
  42215a:	ff 52 78             	call   DWORD PTR [edx+0x78]
  42215d:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  422160:	8d 85 5c ff ff ff    	lea    eax,[ebp-0xa4]
  422166:	50                   	push   eax
  422167:	51                   	push   ecx
  422168:	56                   	push   esi
  422169:	e8 62 f8 ff ff       	call   0x4219d0
  42216e:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
  422171:	8a 82 27 01 00 00    	mov    al,BYTE PTR [edx+0x127]
  422177:	83 cb ff             	or     ebx,0xffffffff
  42217a:	83 c4 0c             	add    esp,0xc
  42217d:	84 c0                	test   al,al
  42217f:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  422182:	0f 85 02 ff ff ff    	jne    0x42208a
  422188:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
  42218b:	6a 01                	push   0x1
  42218d:	8b cf                	mov    ecx,edi
  42218f:	e8 0c a3 02 00       	call   0x44c4a0
  422194:	8b cf                	mov    ecx,edi
  422196:	e8 55 a2 02 00       	call   0x44c3f0
  42219b:	85 c0                	test   eax,eax
  42219d:	75 10                	jne    0x4221af
  42219f:	89 86 c4 01 00 00    	mov    DWORD PTR [esi+0x1c4],eax
  4221a5:	8b 07                	mov    eax,DWORD PTR [edi]
  4221a7:	8b cf                	mov    ecx,edi
  4221a9:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  4221af:	8d 4d cc             	lea    ecx,[ebp-0x34]
  4221b2:	e8 39 3c 06 00       	call   0x485df0
  4221b7:	6a 00                	push   0x0
  4221b9:	8d 4d cc             	lea    ecx,[ebp-0x34]
  4221bc:	51                   	push   ecx
  4221bd:	8b ce                	mov    ecx,esi
  4221bf:	c7 45 fc 03 00 00 00 	mov    DWORD PTR [ebp-0x4],0x3
  4221c6:	e8 a5 76 ff ff       	call   0x419870
  4221cb:	8b 16                	mov    edx,DWORD PTR [esi]
  4221cd:	8d 45 cc             	lea    eax,[ebp-0x34]
  4221d0:	50                   	push   eax
  4221d1:	8b ce                	mov    ecx,esi
  4221d3:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  4221d9:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  4221dc:	8d 4d cc             	lea    ecx,[ebp-0x34]
  4221df:	e9 a1 fe ff ff       	jmp    0x422085
  4221e4:	8b 16                	mov    edx,DWORD PTR [esi]
  4221e6:	68 e8 03 00 00       	push   0x3e8
  4221eb:	6a 00                	push   0x0
  4221ed:	68 f4 01 00 00       	push   0x1f4
  4221f2:	8b ce                	mov    ecx,esi
  4221f4:	ff 52 78             	call   DWORD PTR [edx+0x78]
  4221f7:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  4221fa:	8b 3e                	mov    edi,DWORD PTR [esi]
  4221fc:	6a 00                	push   0x0
  4221fe:	6a 00                	push   0x0
  422200:	6a 00                	push   0x0
  422202:	6a 00                	push   0x0
  422204:	6a 00                	push   0x0
  422206:	6a 00                	push   0x0
  422208:	6a 00                	push   0x0
  42220a:	6a 00                	push   0x0
  42220c:	6a 00                	push   0x0
  42220e:	6a 00                	push   0x0
  422210:	56                   	push   esi
  422211:	8d 88 b0 00 00 00    	lea    ecx,[eax+0xb0]
  422217:	e8 34 a1 fe ff       	call   0x40c350
  42221c:	e8 59 fb 0a 00       	call   0x4d1d7a
  422221:	50                   	push   eax
  422222:	8b ce                	mov    ecx,esi
  422224:	ff 57 78             	call   DWORD PTR [edi+0x78]
  422227:	8b ce                	mov    ecx,esi
  422229:	e8 c2 88 ff ff       	call   0x41aaf0
  42222e:	8b c8                	mov    ecx,eax
  422230:	e8 ab 28 03 00       	call   0x454ae0
  422235:	25 00 00 00 80       	and    eax,0x80000000
  42223a:	33 c9                	xor    ecx,ecx
  42223c:	0b c1                	or     eax,ecx
  42223e:	74 17                	je     0x422257
  422240:	51                   	push   ecx
  422241:	8b cc                	mov    ecx,esp
  422243:	89 65 08             	mov    DWORD PTR [ebp+0x8],esp
  422246:	68 74 26 50 00       	push   0x502674
  42224b:	e8 14 f8 0a 00       	call   0x4d1a64
  422250:	8b ce                	mov    ecx,esi
  422252:	e8 39 0c 00 00       	call   0x422e90
  422257:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  42225a:	8a 81 27 01 00 00    	mov    al,BYTE PTR [ecx+0x127]
  422260:	84 c0                	test   al,al
  422262:	75 07                	jne    0x42226b
  422264:	8b ce                	mov    ecx,esi
  422266:	e8 d5 db ff ff       	call   0x41fe40
  42226b:	8b 45 94             	mov    eax,DWORD PTR [ebp-0x6c]
  42226e:	8b 4d 98             	mov    ecx,DWORD PTR [ebp-0x68]
  422271:	6a 01                	push   0x1
  422273:	83 ec 0c             	sub    esp,0xc
  422276:	8b d4                	mov    edx,esp
  422278:	89 02                	mov    DWORD PTR [edx],eax
  42227a:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  42227d:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  422280:	56                   	push   esi
  422281:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  422284:	e8 67 f6 ff ff       	call   0x4218f0
  422289:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
  42228c:	8a 81 27 01 00 00    	mov    al,BYTE PTR [ecx+0x127]
  422292:	83 cb ff             	or     ebx,0xffffffff
  422295:	83 c4 14             	add    esp,0x14
  422298:	84 c0                	test   al,al
  42229a:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  42229d:	0f 85 e7 fd ff ff    	jne    0x42208a
  4222a3:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
  4222a6:	6a 01                	push   0x1
  4222a8:	8b cf                	mov    ecx,edi
  4222aa:	e8 f1 a1 02 00       	call   0x44c4a0
  4222af:	8b cf                	mov    ecx,edi
  4222b1:	e8 3a a1 02 00       	call   0x44c3f0
  4222b6:	85 c0                	test   eax,eax
  4222b8:	75 10                	jne    0x4222ca
  4222ba:	89 86 c4 01 00 00    	mov    DWORD PTR [esi+0x1c4],eax
  4222c0:	8b 17                	mov    edx,DWORD PTR [edi]
  4222c2:	8b cf                	mov    ecx,edi
  4222c4:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  4222ca:	8d 4d cc             	lea    ecx,[ebp-0x34]
  4222cd:	e8 1e 3b 06 00       	call   0x485df0
  4222d2:	6a 00                	push   0x0
  4222d4:	8d 45 cc             	lea    eax,[ebp-0x34]
  4222d7:	50                   	push   eax
  4222d8:	8b ce                	mov    ecx,esi
  4222da:	c7 45 fc 05 00 00 00 	mov    DWORD PTR [ebp-0x4],0x5
  4222e1:	e8 8a 75 ff ff       	call   0x419870
  4222e6:	8b 16                	mov    edx,DWORD PTR [esi]
  4222e8:	8d 45 cc             	lea    eax,[ebp-0x34]
  4222eb:	50                   	push   eax
  4222ec:	8b ce                	mov    ecx,esi
  4222ee:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  4222f4:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  4222f7:	8d 4d cc             	lea    ecx,[ebp-0x34]
  4222fa:	e9 86 fd ff ff       	jmp    0x422085
  4222ff:	90                   	nop

; Character::RangeAttack appelant | [0x420385,0x4203dc[
; Site de déclenchement Character::RangeAttack depuis autre méthode Character.
  420386:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  420389:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  420390:	5f                   	pop    edi
  420391:	5e                   	pop    esi
  420392:	5b                   	pop    ebx
  420393:	8b e5                	mov    esp,ebp
  420395:	5d                   	pop    ebp
  420396:	c3                   	ret
  420397:	8a 45 f3             	mov    al,BYTE PTR [ebp-0xd]
  42039a:	8b 4d e4             	mov    ecx,DWORD PTR [ebp-0x1c]
  42039d:	3b d9                	cmp    ebx,ecx
  42039f:	7f 2c                	jg     0x4203cd
  4203a1:	39 4d dc             	cmp    DWORD PTR [ebp-0x24],ecx
  4203a4:	7f 27                	jg     0x4203cd
  4203a6:	84 c0                	test   al,al
  4203a8:	75 16                	jne    0x4203c0
  4203aa:	88 45 f3             	mov    BYTE PTR [ebp-0xd],al
  4203ad:	8d 45 f3             	lea    eax,[ebp-0xd]
  4203b0:	50                   	push   eax
  4203b1:	57                   	push   edi
  4203b2:	56                   	push   esi
  4203b3:	e8 e8 1e 05 00       	call   0x4722a0
  4203b8:	83 c4 0c             	add    esp,0xc
  4203bb:	e9 75 03 00 00       	jmp    0x420735
  4203c0:	57                   	push   edi
  4203c1:	8b ce                	mov    ecx,esi
  4203c3:	e8 b8 19 00 00       	call   0x421d80
  4203c8:	e9 68 03 00 00       	jmp    0x420735
  4203cd:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  4203d0:	8d 4e 30             	lea    ecx,[esi+0x30]
  4203d3:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4203d6:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  4203d9:	8b 01                	mov    eax,DWORD PTR [ecx]
  4203db:	ff 50 08             	call   DWORD PTR [eax+0x8]

