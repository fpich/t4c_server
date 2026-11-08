; PASSE46 — Character::attack, attacked et hit
; Binaire serveur SHA-256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Séquences disassemblées de .text et vérifiées octet par octet.
; Attention : preuve statique, non une exécution instrumentée.

; Character::attack | [0x41af00, 0x41b050[
; GetNaturalDamage, GetATTACK/GetAGI et GetBlowPrecision; dispatch à équipements; QueryBoost(0xA).
  41af00:	55                   	push   ebp
  41af01:	8b ec                	mov    ebp,esp
  41af03:	83 ec 0c             	sub    esp,0xc
  41af06:	53                   	push   ebx
  41af07:	56                   	push   esi
  41af08:	57                   	push   edi
  41af09:	8b f1                	mov    esi,ecx
  41af0b:	e8 70 4d 00 00       	call   0x41fc80
  41af10:	8b 06                	mov    eax,DWORD PTR [esi]
  41af12:	68 f4 01 00 00       	push   0x1f4
  41af17:	6a 00                	push   0x0
  41af19:	68 f4 01 00 00       	push   0x1f4
  41af1e:	8b ce                	mov    ecx,esi
  41af20:	ff 50 78             	call   DWORD PTR [eax+0x78]
  41af23:	56                   	push   esi
  41af24:	e8 77 d7 01 00       	call   0x4386a0
  41af29:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  41af2c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  41af2f:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
  41af36:	df 6d f4             	fild   QWORD PTR [ebp-0xc]
  41af39:	83 c4 04             	add    esp,0x4
  41af3c:	8b ce                	mov    ecx,esi
  41af3e:	dc 07                	fadd   QWORD PTR [edi]
  41af40:	dd 1f                	fstp   QWORD PTR [edi]
  41af42:	e8 a9 32 07 00       	call   0x48e1f0
  41af47:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  41af4a:	8b cb                	mov    ecx,ebx
  41af4c:	25 ff ff 00 00       	and    eax,0xffff
  41af51:	89 47 18             	mov    DWORD PTR [edi+0x18],eax
  41af54:	e8 57 32 07 00       	call   0x48e1b0
  41af59:	8b ce                	mov    ecx,esi
  41af5b:	25 ff ff 00 00       	and    eax,0xffff
  41af60:	50                   	push   eax
  41af61:	e8 4a 32 07 00       	call   0x48e1b0
  41af66:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  41af69:	8b 57 18             	mov    edx,DWORD PTR [edi+0x18]
  41af6c:	25 ff ff 00 00       	and    eax,0xffff
  41af71:	50                   	push   eax
  41af72:	51                   	push   ecx
  41af73:	52                   	push   edx
  41af74:	e8 a7 d6 01 00       	call   0x438620
  41af79:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
  41af7c:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  41af82:	83 c4 10             	add    esp,0x10
  41af85:	85 c9                	test   ecx,ecx
  41af87:	74 0f                	je     0x41af98
  41af89:	8b 01                	mov    eax,DWORD PTR [ecx]
  41af8b:	8d 55 fc             	lea    edx,[ebp-0x4]
  41af8e:	52                   	push   edx
  41af8f:	57                   	push   edi
  41af90:	53                   	push   ebx
  41af91:	56                   	push   esi
  41af92:	51                   	push   ecx
  41af93:	6a 01                	push   0x1
  41af95:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41af98:	8b 8e d0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d0]
  41af9e:	85 c9                	test   ecx,ecx
  41afa0:	74 0f                	je     0x41afb1
  41afa2:	8b 01                	mov    eax,DWORD PTR [ecx]
  41afa4:	8d 55 fc             	lea    edx,[ebp-0x4]
  41afa7:	52                   	push   edx
  41afa8:	57                   	push   edi
  41afa9:	53                   	push   ebx
  41afaa:	56                   	push   esi
  41afab:	51                   	push   ecx
  41afac:	6a 01                	push   0x1
  41afae:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41afb1:	8b 8e b8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b8]
  41afb7:	85 c9                	test   ecx,ecx
  41afb9:	74 0f                	je     0x41afca
  41afbb:	8b 01                	mov    eax,DWORD PTR [ecx]
  41afbd:	8d 55 fc             	lea    edx,[ebp-0x4]
  41afc0:	52                   	push   edx
  41afc1:	57                   	push   edi
  41afc2:	53                   	push   ebx
  41afc3:	56                   	push   esi
  41afc4:	51                   	push   ecx
  41afc5:	6a 01                	push   0x1
  41afc7:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41afca:	8b 8e bc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1bc]
  41afd0:	85 c9                	test   ecx,ecx
  41afd2:	74 0f                	je     0x41afe3
  41afd4:	8b 01                	mov    eax,DWORD PTR [ecx]
  41afd6:	8d 55 fc             	lea    edx,[ebp-0x4]
  41afd9:	52                   	push   edx
  41afda:	57                   	push   edi
  41afdb:	53                   	push   ebx
  41afdc:	56                   	push   esi
  41afdd:	51                   	push   ecx
  41afde:	6a 01                	push   0x1
  41afe0:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41afe3:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  41afe9:	85 c9                	test   ecx,ecx
  41afeb:	74 0f                	je     0x41affc
  41afed:	8b 01                	mov    eax,DWORD PTR [ecx]
  41afef:	8d 55 fc             	lea    edx,[ebp-0x4]
  41aff2:	52                   	push   edx
  41aff3:	57                   	push   edi
  41aff4:	53                   	push   ebx
  41aff5:	56                   	push   esi
  41aff6:	51                   	push   ecx
  41aff7:	6a 01                	push   0x1
  41aff9:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41affc:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  41b002:	39 8e c0 01 00 00    	cmp    DWORD PTR [esi+0x1c0],ecx
  41b008:	74 13                	je     0x41b01d
  41b00a:	85 c9                	test   ecx,ecx
  41b00c:	74 0f                	je     0x41b01d
  41b00e:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b010:	8d 55 fc             	lea    edx,[ebp-0x4]
  41b013:	52                   	push   edx
  41b014:	57                   	push   edi
  41b015:	53                   	push   ebx
  41b016:	56                   	push   esi
  41b017:	51                   	push   ecx
  41b018:	6a 01                	push   0x1
  41b01a:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41b01d:	6a 0a                	push   0xa
  41b01f:	8b ce                	mov    ecx,esi
  41b021:	e8 3a 2e 07 00       	call   0x48de60
  41b026:	3b de                	cmp    ebx,esi
  41b028:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  41b02b:	db 45 08             	fild   DWORD PTR [ebp+0x8]
  41b02e:	dc 07                	fadd   QWORD PTR [edi]
  41b030:	dd 1f                	fstp   QWORD PTR [edi]
  41b032:	74 0d                	je     0x41b041
  41b034:	53                   	push   ebx
  41b035:	6a 00                	push   0x0
  41b037:	57                   	push   edi
  41b038:	6a 01                	push   0x1
  41b03a:	8b ce                	mov    ecx,esi
  41b03c:	e8 cf 20 07 00       	call   0x48d110
  41b041:	5f                   	pop    edi
  41b042:	5e                   	pop    esi
  41b043:	b8 01 00 00 00       	mov    eax,0x1
  41b048:	5b                   	pop    ebx
  41b049:	8b e5                	mov    esp,ebp
  41b04b:	5d                   	pop    ebp
  41b04c:	c2 08 00             	ret    0x8
  41b04f:	90                   	nop

; Character::attacked | [0x41b050, 0x41b250[
; Réactions des équipements avec code 2, réduction des dégâts et effets sous code 4.
  41b050:	55                   	push   ebp
  41b051:	8b ec                	mov    ebp,esp
  41b053:	53                   	push   ebx
  41b054:	56                   	push   esi
  41b055:	57                   	push   edi
  41b056:	8b f1                	mov    esi,ecx
  41b058:	e8 23 4c 00 00       	call   0x41fc80
  41b05d:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  41b063:	85 c9                	test   ecx,ecx
  41b065:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  41b068:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  41b06b:	74 0d                	je     0x41b07a
  41b06d:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b06f:	6a 00                	push   0x0
  41b071:	57                   	push   edi
  41b072:	53                   	push   ebx
  41b073:	56                   	push   esi
  41b074:	51                   	push   ecx
  41b075:	6a 02                	push   0x2
  41b077:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41b07a:	8b 8e d0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d0]
  41b080:	85 c9                	test   ecx,ecx
  41b082:	74 0d                	je     0x41b091
  41b084:	8b 11                	mov    edx,DWORD PTR [ecx]
  41b086:	6a 00                	push   0x0
  41b088:	57                   	push   edi
  41b089:	53                   	push   ebx
  41b08a:	56                   	push   esi
  41b08b:	51                   	push   ecx
  41b08c:	6a 02                	push   0x2
  41b08e:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41b091:	8b 8e b8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b8]
  41b097:	85 c9                	test   ecx,ecx
  41b099:	74 0d                	je     0x41b0a8
  41b09b:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b09d:	6a 00                	push   0x0
  41b09f:	57                   	push   edi
  41b0a0:	53                   	push   ebx
  41b0a1:	56                   	push   esi
  41b0a2:	51                   	push   ecx
  41b0a3:	6a 02                	push   0x2
  41b0a5:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41b0a8:	8b 8e bc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1bc]
  41b0ae:	85 c9                	test   ecx,ecx
  41b0b0:	74 0d                	je     0x41b0bf
  41b0b2:	8b 11                	mov    edx,DWORD PTR [ecx]
  41b0b4:	6a 00                	push   0x0
  41b0b6:	57                   	push   edi
  41b0b7:	53                   	push   ebx
  41b0b8:	56                   	push   esi
  41b0b9:	51                   	push   ecx
  41b0ba:	6a 02                	push   0x2
  41b0bc:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41b0bf:	8b 8e a0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a0]
  41b0c5:	85 c9                	test   ecx,ecx
  41b0c7:	74 0d                	je     0x41b0d6
  41b0c9:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b0cb:	6a 00                	push   0x0
  41b0cd:	57                   	push   edi
  41b0ce:	53                   	push   ebx
  41b0cf:	56                   	push   esi
  41b0d0:	51                   	push   ecx
  41b0d1:	6a 02                	push   0x2
  41b0d3:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41b0d6:	8b 8e d8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d8]
  41b0dc:	85 c9                	test   ecx,ecx
  41b0de:	74 0d                	je     0x41b0ed
  41b0e0:	8b 11                	mov    edx,DWORD PTR [ecx]
  41b0e2:	6a 00                	push   0x0
  41b0e4:	57                   	push   edi
  41b0e5:	53                   	push   ebx
  41b0e6:	56                   	push   esi
  41b0e7:	51                   	push   ecx
  41b0e8:	6a 02                	push   0x2
  41b0ea:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41b0ed:	8b 8e a4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a4]
  41b0f3:	85 c9                	test   ecx,ecx
  41b0f5:	74 0d                	je     0x41b104
  41b0f7:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b0f9:	6a 00                	push   0x0
  41b0fb:	57                   	push   edi
  41b0fc:	53                   	push   ebx
  41b0fd:	56                   	push   esi
  41b0fe:	51                   	push   ecx
  41b0ff:	6a 02                	push   0x2
  41b101:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41b104:	8b 8e a8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a8]
  41b10a:	85 c9                	test   ecx,ecx
  41b10c:	74 0d                	je     0x41b11b
  41b10e:	8b 11                	mov    edx,DWORD PTR [ecx]
  41b110:	6a 00                	push   0x0
  41b112:	57                   	push   edi
  41b113:	53                   	push   ebx
  41b114:	56                   	push   esi
  41b115:	51                   	push   ecx
  41b116:	6a 02                	push   0x2
  41b118:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41b11b:	8b 8e ac 01 00 00    	mov    ecx,DWORD PTR [esi+0x1ac]
  41b121:	85 c9                	test   ecx,ecx
  41b123:	74 0d                	je     0x41b132
  41b125:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b127:	6a 00                	push   0x0
  41b129:	57                   	push   edi
  41b12a:	53                   	push   ebx
  41b12b:	56                   	push   esi
  41b12c:	51                   	push   ecx
  41b12d:	6a 02                	push   0x2
  41b12f:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41b132:	8b 8e b0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b0]
  41b138:	85 c9                	test   ecx,ecx
  41b13a:	74 0d                	je     0x41b149
  41b13c:	8b 11                	mov    edx,DWORD PTR [ecx]
  41b13e:	6a 00                	push   0x0
  41b140:	57                   	push   edi
  41b141:	53                   	push   ebx
  41b142:	56                   	push   esi
  41b143:	51                   	push   ecx
  41b144:	6a 02                	push   0x2
  41b146:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41b149:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  41b14f:	3b 8e c4 01 00 00    	cmp    ecx,DWORD PTR [esi+0x1c4]
  41b155:	75 06                	jne    0x41b15d
  41b157:	85 c9                	test   ecx,ecx
  41b159:	74 2a                	je     0x41b185
  41b15b:	eb 1b                	jmp    0x41b178
  41b15d:	85 c9                	test   ecx,ecx
  41b15f:	74 0d                	je     0x41b16e
  41b161:	8b 11                	mov    edx,DWORD PTR [ecx]
  41b163:	6a 00                	push   0x0
  41b165:	57                   	push   edi
  41b166:	53                   	push   ebx
  41b167:	56                   	push   esi
  41b168:	51                   	push   ecx
  41b169:	6a 02                	push   0x2
  41b16b:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41b16e:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  41b174:	85 c9                	test   ecx,ecx
  41b176:	74 0d                	je     0x41b185
  41b178:	8b 01                	mov    eax,DWORD PTR [ecx]
  41b17a:	6a 00                	push   0x0
  41b17c:	57                   	push   edi
  41b17d:	53                   	push   ebx
  41b17e:	56                   	push   esi
  41b17f:	51                   	push   ecx
  41b180:	6a 02                	push   0x2
  41b182:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41b185:	8b 16                	mov    edx,DWORD PTR [esi]
  41b187:	8b ce                	mov    ecx,esi
  41b189:	ff 92 68 01 00 00    	call   DWORD PTR [edx+0x168]
  41b18f:	dc 2f                	fsubr  QWORD PTR [edi]
  41b191:	dc 15 30 e6 4d 00    	fcom   QWORD PTR ds:0x4de630
  41b197:	dd 17                	fst    QWORD PTR [edi]
  41b199:	df e0                	fnstsw ax
  41b19b:	f6 c4 41             	test   ah,0x41
  41b19e:	74 08                	je     0x41b1a8
  41b1a0:	dd d8                	fstp   st(0)
  41b1a2:	dd 05 c0 e8 4d 00    	fld    QWORD PTR ds:0x4de8c0
  41b1a8:	dd 1f                	fstp   QWORD PTR [edi]
  41b1aa:	8b 86 90 02 00 00    	mov    eax,DWORD PTR [esi+0x290]
  41b1b0:	89 86 8c 02 00 00    	mov    DWORD PTR [esi+0x28c],eax
  41b1b6:	c7 86 ac 02 00 00 00 	mov    DWORD PTR [esi+0x2ac],0x0
  41b1bd:	00 00 00 
  41b1c0:	c6 86 a0 02 00 00 08 	mov    BYTE PTR [esi+0x2a0],0x8
  41b1c7:	8b 86 ac 02 00 00    	mov    eax,DWORD PTR [esi+0x2ac]
  41b1cd:	85 c0                	test   eax,eax
  41b1cf:	74 10                	je     0x41b1e1
  41b1d1:	8b 8e 8c 02 00 00    	mov    ecx,DWORD PTR [esi+0x28c]
  41b1d7:	8b 11                	mov    edx,DWORD PTR [ecx]
  41b1d9:	89 96 8c 02 00 00    	mov    DWORD PTR [esi+0x28c],edx
  41b1df:	eb 0a                	jmp    0x41b1eb
  41b1e1:	c7 86 ac 02 00 00 01 	mov    DWORD PTR [esi+0x2ac],0x1
  41b1e8:	00 00 00 
  41b1eb:	8b 86 8c 02 00 00    	mov    eax,DWORD PTR [esi+0x28c]
  41b1f1:	85 c0                	test   eax,eax
  41b1f3:	74 1a                	je     0x41b20f
  41b1f5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  41b1f8:	8b 08                	mov    ecx,DWORD PTR [eax]
  41b1fa:	50                   	push   eax
  41b1fb:	6a 00                	push   0x0
  41b1fd:	57                   	push   edi
  41b1fe:	53                   	push   ebx
  41b1ff:	6a 00                	push   0x0
  41b201:	56                   	push   esi
  41b202:	6a 04                	push   0x4
  41b204:	51                   	push   ecx
  41b205:	e8 f6 4d 04 00       	call   0x460000
  41b20a:	83 c4 20             	add    esp,0x20
  41b20d:	eb b8                	jmp    0x41b1c7
  41b20f:	8b 86 ac 02 00 00    	mov    eax,DWORD PTR [esi+0x2ac]
  41b215:	85 c0                	test   eax,eax
  41b217:	74 07                	je     0x41b220
  41b219:	c6 86 a0 02 00 00 07 	mov    BYTE PTR [esi+0x2a0],0x7
  41b220:	3b de                	cmp    ebx,esi
  41b222:	c7 86 ac 02 00 00 00 	mov    DWORD PTR [esi+0x2ac],0x0
  41b229:	00 00 00 
  41b22c:	74 0d                	je     0x41b23b
  41b22e:	53                   	push   ebx
  41b22f:	6a 00                	push   0x0
  41b231:	57                   	push   edi
  41b232:	6a 02                	push   0x2
  41b234:	8b ce                	mov    ecx,esi
  41b236:	e8 d5 1e 07 00       	call   0x48d110
  41b23b:	5f                   	pop    edi
  41b23c:	5e                   	pop    esi
  41b23d:	33 c0                	xor    eax,eax
  41b23f:	5b                   	pop    ebx
  41b240:	5d                   	pop    ebp
  41b241:	c2 08 00             	ret    0x8
  41b244:	90                   	nop
  41b245:	90                   	nop
  41b246:	90                   	nop
  41b247:	90                   	nop
  41b248:	90                   	nop
  41b249:	90                   	nop
  41b24a:	90                   	nop
  41b24b:	90                   	nop
  41b24c:	90                   	nop
  41b24d:	90                   	nop
  41b24e:	90                   	nop
  41b24f:	90                   	nop

; Character::hit | [0x41cc00, 0x41cf30[
; Réactions sous code 14, événement 8, paquet 0x21 et gestion conditionnelle des HP.
  41cc00:	55                   	push   ebp
  41cc01:	8b ec                	mov    ebp,esp
  41cc03:	6a ff                	push   0xffffffff
  41cc05:	68 b8 40 4d 00       	push   0x4d40b8
  41cc0a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  41cc10:	50                   	push   eax
  41cc11:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  41cc18:	83 ec 20             	sub    esp,0x20
  41cc1b:	53                   	push   ebx
  41cc1c:	56                   	push   esi
  41cc1d:	8b f1                	mov    esi,ecx
  41cc1f:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  41cc22:	8d 4e 30             	lea    ecx,[esi+0x30]
  41cc25:	57                   	push   edi
  41cc26:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  41cc29:	ff 50 04             	call   DWORD PTR [eax+0x4]
  41cc2c:	8b 8e d4 02 00 00    	mov    ecx,DWORD PTR [esi+0x2d4]
  41cc32:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  41cc35:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  41cc38:	89 8e d0 02 00 00    	mov    DWORD PTR [esi+0x2d0],ecx
  41cc3e:	c7 86 f0 02 00 00 00 	mov    DWORD PTR [esi+0x2f0],0x0
  41cc45:	00 00 00 
  41cc48:	c6 86 e4 02 00 00 08 	mov    BYTE PTR [esi+0x2e4],0x8
  41cc4f:	8b 86 f0 02 00 00    	mov    eax,DWORD PTR [esi+0x2f0]
  41cc55:	85 c0                	test   eax,eax
  41cc57:	74 10                	je     0x41cc69
  41cc59:	8b 96 d0 02 00 00    	mov    edx,DWORD PTR [esi+0x2d0]
  41cc5f:	8b 02                	mov    eax,DWORD PTR [edx]
  41cc61:	89 86 d0 02 00 00    	mov    DWORD PTR [esi+0x2d0],eax
  41cc67:	eb 0a                	jmp    0x41cc73
  41cc69:	c7 86 f0 02 00 00 01 	mov    DWORD PTR [esi+0x2f0],0x1
  41cc70:	00 00 00 
  41cc73:	8b 86 d0 02 00 00    	mov    eax,DWORD PTR [esi+0x2d0]
  41cc79:	85 c0                	test   eax,eax
  41cc7b:	74 1c                	je     0x41cc99
  41cc7d:	8b c8                	mov    ecx,eax
  41cc7f:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  41cc82:	8b 10                	mov    edx,DWORD PTR [eax]
  41cc84:	50                   	push   eax
  41cc85:	6a 00                	push   0x0
  41cc87:	53                   	push   ebx
  41cc88:	57                   	push   edi
  41cc89:	6a 00                	push   0x0
  41cc8b:	56                   	push   esi
  41cc8c:	6a 08                	push   0x8
  41cc8e:	52                   	push   edx
  41cc8f:	e8 6c 33 04 00       	call   0x460000
  41cc94:	83 c4 20             	add    esp,0x20
  41cc97:	eb b6                	jmp    0x41cc4f
  41cc99:	8b 86 f0 02 00 00    	mov    eax,DWORD PTR [esi+0x2f0]
  41cc9f:	85 c0                	test   eax,eax
  41cca1:	74 07                	je     0x41ccaa
  41cca3:	c6 86 e4 02 00 00 07 	mov    BYTE PTR [esi+0x2e4],0x7
  41ccaa:	3b fe                	cmp    edi,esi
  41ccac:	c7 86 f0 02 00 00 00 	mov    DWORD PTR [esi+0x2f0],0x0
  41ccb3:	00 00 00 
  41ccb6:	74 0d                	je     0x41ccc5
  41ccb8:	57                   	push   edi
  41ccb9:	6a 00                	push   0x0
  41ccbb:	53                   	push   ebx
  41ccbc:	6a 0e                	push   0xe
  41ccbe:	8b ce                	mov    ecx,esi
  41ccc0:	e8 4b 04 07 00       	call   0x48d110
  41ccc5:	8b 06                	mov    eax,DWORD PTR [esi]
  41ccc7:	8b ce                	mov    ecx,esi
  41ccc9:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  41cccf:	8b 16                	mov    edx,DWORD PTR [esi]
  41ccd1:	8b ce                	mov    ecx,esi
  41ccd3:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  41ccd6:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  41ccdc:	8b 8e 78 01 00 00    	mov    ecx,DWORD PTR [esi+0x178]
  41cce2:	85 c9                	test   ecx,ecx
  41cce4:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  41cce7:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
  41ccea:	74 1a                	je     0x41cd06
  41ccec:	e8 ef 7d 03 00       	call   0x454ae0
  41ccf1:	25 00 00 00 40       	and    eax,0x40000000
  41ccf6:	33 c9                	xor    ecx,ecx
  41ccf8:	0b c1                	or     eax,ecx
  41ccfa:	75 0a                	jne    0x41cd06
  41ccfc:	dd 03                	fld    QWORD PTR [ebx]
  41ccfe:	e8 77 50 0b 00       	call   0x4d1d7a
  41cd03:	29 45 0c             	sub    DWORD PTR [ebp+0xc],eax
  41cd06:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  41cd0c:	85 c9                	test   ecx,ecx
  41cd0e:	74 0d                	je     0x41cd1d
  41cd10:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd12:	6a 00                	push   0x0
  41cd14:	53                   	push   ebx
  41cd15:	57                   	push   edi
  41cd16:	56                   	push   esi
  41cd17:	51                   	push   ecx
  41cd18:	6a 0e                	push   0xe
  41cd1a:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cd1d:	8b 8e d0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d0]
  41cd23:	85 c9                	test   ecx,ecx
  41cd25:	74 0d                	je     0x41cd34
  41cd27:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cd29:	6a 00                	push   0x0
  41cd2b:	53                   	push   ebx
  41cd2c:	57                   	push   edi
  41cd2d:	56                   	push   esi
  41cd2e:	51                   	push   ecx
  41cd2f:	6a 0e                	push   0xe
  41cd31:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cd34:	8b 8e b8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b8]
  41cd3a:	85 c9                	test   ecx,ecx
  41cd3c:	74 0d                	je     0x41cd4b
  41cd3e:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd40:	6a 00                	push   0x0
  41cd42:	53                   	push   ebx
  41cd43:	57                   	push   edi
  41cd44:	56                   	push   esi
  41cd45:	51                   	push   ecx
  41cd46:	6a 0e                	push   0xe
  41cd48:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cd4b:	8b 8e bc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1bc]
  41cd51:	85 c9                	test   ecx,ecx
  41cd53:	74 0d                	je     0x41cd62
  41cd55:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cd57:	6a 00                	push   0x0
  41cd59:	53                   	push   ebx
  41cd5a:	57                   	push   edi
  41cd5b:	56                   	push   esi
  41cd5c:	51                   	push   ecx
  41cd5d:	6a 0e                	push   0xe
  41cd5f:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cd62:	8b 8e a0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a0]
  41cd68:	85 c9                	test   ecx,ecx
  41cd6a:	74 0d                	je     0x41cd79
  41cd6c:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd6e:	6a 00                	push   0x0
  41cd70:	53                   	push   ebx
  41cd71:	57                   	push   edi
  41cd72:	56                   	push   esi
  41cd73:	51                   	push   ecx
  41cd74:	6a 0e                	push   0xe
  41cd76:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cd79:	8b 8e d8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1d8]
  41cd7f:	85 c9                	test   ecx,ecx
  41cd81:	74 0d                	je     0x41cd90
  41cd83:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cd85:	6a 00                	push   0x0
  41cd87:	53                   	push   ebx
  41cd88:	57                   	push   edi
  41cd89:	56                   	push   esi
  41cd8a:	51                   	push   ecx
  41cd8b:	6a 0e                	push   0xe
  41cd8d:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cd90:	8b 8e a4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a4]
  41cd96:	85 c9                	test   ecx,ecx
  41cd98:	74 0d                	je     0x41cda7
  41cd9a:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cd9c:	6a 00                	push   0x0
  41cd9e:	53                   	push   ebx
  41cd9f:	57                   	push   edi
  41cda0:	56                   	push   esi
  41cda1:	51                   	push   ecx
  41cda2:	6a 0e                	push   0xe
  41cda4:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cda7:	8b 8e a8 01 00 00    	mov    ecx,DWORD PTR [esi+0x1a8]
  41cdad:	85 c9                	test   ecx,ecx
  41cdaf:	74 0d                	je     0x41cdbe
  41cdb1:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cdb3:	6a 00                	push   0x0
  41cdb5:	53                   	push   ebx
  41cdb6:	57                   	push   edi
  41cdb7:	56                   	push   esi
  41cdb8:	51                   	push   ecx
  41cdb9:	6a 0e                	push   0xe
  41cdbb:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cdbe:	8b 8e ac 01 00 00    	mov    ecx,DWORD PTR [esi+0x1ac]
  41cdc4:	85 c9                	test   ecx,ecx
  41cdc6:	74 0d                	je     0x41cdd5
  41cdc8:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cdca:	6a 00                	push   0x0
  41cdcc:	53                   	push   ebx
  41cdcd:	57                   	push   edi
  41cdce:	56                   	push   esi
  41cdcf:	51                   	push   ecx
  41cdd0:	6a 0e                	push   0xe
  41cdd2:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41cdd5:	8b 8e b0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1b0]
  41cddb:	85 c9                	test   ecx,ecx
  41cddd:	74 0d                	je     0x41cdec
  41cddf:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cde1:	6a 00                	push   0x0
  41cde3:	53                   	push   ebx
  41cde4:	57                   	push   edi
  41cde5:	56                   	push   esi
  41cde6:	51                   	push   ecx
  41cde7:	6a 0e                	push   0xe
  41cde9:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41cdec:	8b 8e c0 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c0]
  41cdf2:	3b 8e c4 01 00 00    	cmp    ecx,DWORD PTR [esi+0x1c4]
  41cdf8:	75 06                	jne    0x41ce00
  41cdfa:	85 c9                	test   ecx,ecx
  41cdfc:	74 2a                	je     0x41ce28
  41cdfe:	eb 1b                	jmp    0x41ce1b
  41ce00:	85 c9                	test   ecx,ecx
  41ce02:	74 0d                	je     0x41ce11
  41ce04:	8b 11                	mov    edx,DWORD PTR [ecx]
  41ce06:	6a 00                	push   0x0
  41ce08:	53                   	push   ebx
  41ce09:	57                   	push   edi
  41ce0a:	56                   	push   esi
  41ce0b:	51                   	push   ecx
  41ce0c:	6a 0e                	push   0xe
  41ce0e:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41ce11:	8b 8e c4 01 00 00    	mov    ecx,DWORD PTR [esi+0x1c4]
  41ce17:	85 c9                	test   ecx,ecx
  41ce19:	74 0d                	je     0x41ce28
  41ce1b:	8b 01                	mov    eax,DWORD PTR [ecx]
  41ce1d:	6a 00                	push   0x0
  41ce1f:	53                   	push   ebx
  41ce20:	57                   	push   edi
  41ce21:	56                   	push   esi
  41ce22:	51                   	push   ecx
  41ce23:	6a 0e                	push   0xe
  41ce25:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41ce28:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ce2b:	85 c0                	test   eax,eax
  41ce2d:	7d 07                	jge    0x41ce36
  41ce2f:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
  41ce36:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce39:	e8 b2 8f 06 00       	call   0x485df0
  41ce3e:	6a 21                	push   0x21
  41ce40:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce43:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  41ce4a:	e8 01 93 06 00       	call   0x486150
  41ce4f:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  41ce52:	51                   	push   ecx
  41ce53:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce56:	e8 95 93 06 00       	call   0x4861f0
  41ce5b:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  41ce5e:	52                   	push   edx
  41ce5f:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce62:	e8 89 93 06 00       	call   0x4861f0
  41ce67:	8b 06                	mov    eax,DWORD PTR [esi]
  41ce69:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce6c:	51                   	push   ecx
  41ce6d:	8b ce                	mov    ecx,esi
  41ce6f:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  41ce75:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ce78:	e8 43 90 06 00       	call   0x485ec0
  41ce7d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  41ce80:	85 c9                	test   ecx,ecx
  41ce82:	74 78                	je     0x41cefc
  41ce84:	8b 41 44             	mov    eax,DWORD PTR [ecx+0x44]
  41ce87:	85 c0                	test   eax,eax
  41ce89:	74 71                	je     0x41cefc
  41ce8b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ce8e:	85 c0                	test   eax,eax
  41ce90:	7f 5a                	jg     0x41ceec
  41ce92:	e8 49 7c 03 00       	call   0x454ae0
  41ce97:	25 00 00 00 40       	and    eax,0x40000000
  41ce9c:	33 c9                	xor    ecx,ecx
  41ce9e:	0b c1                	or     eax,ecx
  41cea0:	75 4a                	jne    0x41ceec
  41cea2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  41cea5:	e8 36 7c 03 00       	call   0x454ae0
  41ceaa:	81 e2 80 00 00 00    	and    edx,0x80
  41ceb0:	33 c0                	xor    eax,eax
  41ceb2:	0b c2                	or     eax,edx
  41ceb4:	75 36                	jne    0x41ceec
  41ceb6:	8b 16                	mov    edx,DWORD PTR [esi]
  41ceb8:	57                   	push   edi
  41ceb9:	53                   	push   ebx
  41ceba:	8b ce                	mov    ecx,esi
  41cebc:	ff 52 44             	call   DWORD PTR [edx+0x44]
  41cebf:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  41cec2:	8b 01                	mov    eax,DWORD PTR [ecx]
  41cec4:	ff 50 08             	call   DWORD PTR [eax+0x8]
  41cec7:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41ceca:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41ced1:	e8 aa 8f 06 00       	call   0x485e80
  41ced6:	5f                   	pop    edi
  41ced7:	5e                   	pop    esi
  41ced8:	83 c8 ff             	or     eax,0xffffffff
  41cedb:	5b                   	pop    ebx
  41cedc:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41cedf:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41cee6:	8b e5                	mov    esp,ebp
  41cee8:	5d                   	pop    ebp
  41cee9:	c2 08 00             	ret    0x8
  41ceec:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  41ceef:	8b 16                	mov    edx,DWORD PTR [esi]
  41cef1:	6a 00                	push   0x0
  41cef3:	50                   	push   eax
  41cef4:	8b ce                	mov    ecx,esi
  41cef6:	ff 92 dc 00 00 00    	call   DWORD PTR [edx+0xdc]
  41cefc:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  41ceff:	8b 11                	mov    edx,DWORD PTR [ecx]
  41cf01:	ff 52 08             	call   DWORD PTR [edx+0x8]
  41cf04:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  41cf07:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41cf0e:	e8 6d 8f 06 00       	call   0x485e80
  41cf13:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41cf16:	5f                   	pop    edi
  41cf17:	5e                   	pop    esi
  41cf18:	33 c0                	xor    eax,eax
  41cf1a:	5b                   	pop    ebx
  41cf1b:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41cf22:	8b e5                	mov    esp,ebp
  41cf24:	5d                   	pop    ebp
  41cf25:	c2 08 00             	ret    0x8
  41cf28:	90                   	nop
  41cf29:	90                   	nop
  41cf2a:	90                   	nop
  41cf2b:	90                   	nop
  41cf2c:	90                   	nop
  41cf2d:	90                   	nop
  41cf2e:	90                   	nop
  41cf2f:	90                   	nop

