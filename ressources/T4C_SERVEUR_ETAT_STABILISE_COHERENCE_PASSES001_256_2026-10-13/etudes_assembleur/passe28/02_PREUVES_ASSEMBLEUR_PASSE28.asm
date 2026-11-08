; T4C Server.exe — passe 28, preuves désassemblées statiquement
; Format objdump x86 Intel; les octets doivent être validés à l’adresse indiquée dans le PE.
; Les blocs couvrent des fonctions entières quand l’entrée et le retour sont déterminables.

; Character::use_item, gestion d’un objet identifié par ID, inventaire et équipement
; Intervalle 0x0041A030 à 0x0041A5B9 (borne supérieure exclue)
  41a030:	55                   	push   ebp
  41a031:	8b ec                	mov    ebp,esp
  41a033:	6a ff                	push   0xffffffff
  41a035:	68 38 3f 4d 00       	push   0x4d3f38
  41a03a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  41a040:	50                   	push   eax
  41a041:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  41a048:	83 ec 44             	sub    esp,0x44
  41a04b:	53                   	push   ebx
  41a04c:	56                   	push   esi
  41a04d:	57                   	push   edi
  41a04e:	8b f1                	mov    esi,ecx
  41a050:	e8 2b 5c 00 00       	call   0x41fc80
  41a055:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a05b:	33 ff                	xor    edi,edi
  41a05d:	3b cf                	cmp    ecx,edi
  41a05f:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  41a062:	c7 45 e8 04 00 00 00 	mov    DWORD PTR [ebp-0x18],0x4
  41a069:	0f 84 3b 05 00 00    	je     0x41a5aa
  41a06f:	8b 01                	mov    eax,DWORD PTR [ecx]
  41a071:	33 db                	xor    ebx,ebx
  41a073:	ff 50 04             	call   DWORD PTR [eax+0x4]
  41a076:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a07c:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  41a07f:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a082:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a085:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  41a089:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a08f:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  41a092:	74 0a                	je     0x41a09e
  41a094:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a097:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a099:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a09c:	eb 07                	jmp    0x41a0a5
  41a09e:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  41a0a5:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  41a0a8:	0f 84 70 01 00 00    	je     0x41a21e
  41a0ae:	39 7d f0             	cmp    DWORD PTR [ebp-0x10],edi
  41a0b1:	0f 85 73 01 00 00    	jne    0x41a22a
  41a0b7:	8b 96 9c 01 00 00    	mov    edx,DWORD PTR [esi+0x19c]
  41a0bd:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  41a0c0:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
  41a0c3:	8b cb                	mov    ecx,ebx
  41a0c5:	e8 36 16 07 00       	call   0x48b700
  41a0ca:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
  41a0cd:	75 ba                	jne    0x41a089
  41a0cf:	8b 13                	mov    edx,DWORD PTR [ebx]
  41a0d1:	57                   	push   edi
  41a0d2:	8d 45 e8             	lea    eax,[ebp-0x18]
  41a0d5:	50                   	push   eax
  41a0d6:	56                   	push   esi
  41a0d7:	56                   	push   esi
  41a0d8:	53                   	push   ebx
  41a0d9:	6a 03                	push   0x3
  41a0db:	8b cb                	mov    ecx,ebx
  41a0dd:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41a0e0:	8b cb                	mov    ecx,ebx
  41a0e2:	e8 69 36 07 00       	call   0x48d750
  41a0e7:	a8 01                	test   al,0x1
  41a0e9:	0f 84 23 01 00 00    	je     0x41a212
  41a0ef:	6a 01                	push   0x1
  41a0f1:	8b cb                	mov    ecx,ebx
  41a0f3:	e8 a8 23 03 00       	call   0x44c4a0
  41a0f8:	8b cb                	mov    ecx,ebx
  41a0fa:	e8 f1 22 03 00       	call   0x44c3f0
  41a0ff:	85 c0                	test   eax,eax
  41a101:	75 86                	jne    0x41a089
  41a103:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a109:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  41a10c:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  41a10f:	8b 01                	mov    eax,DWORD PTR [ecx]
  41a111:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  41a117:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a11d:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a120:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  41a123:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  41a126:	ff 48 38             	dec    DWORD PTR [eax+0x38]
  41a129:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a12c:	3b ca                	cmp    ecx,edx
  41a12e:	74 5f                	je     0x41a18f
  41a130:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a133:	74 56                	je     0x41a18b
  41a135:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a137:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  41a13a:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  41a13d:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a140:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a143:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41a145:	89 0a                	mov    DWORD PTR [edx],ecx
  41a147:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41a14a:	83 f9 01             	cmp    ecx,0x1
  41a14d:	75 1a                	jne    0x41a169
  41a14f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a152:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  41a155:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a158:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a15b:	50                   	push   eax
  41a15c:	e8 ff 7e 02 00       	call   0x442060
  41a161:	83 c4 04             	add    esp,0x4
  41a164:	e9 20 ff ff ff       	jmp    0x41a089
  41a169:	83 f9 02             	cmp    ecx,0x2
  41a16c:	0f 85 8f 00 00 00    	jne    0x41a201
  41a172:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a175:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a177:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a17a:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a17d:	50                   	push   eax
  41a17e:	e8 dd 7e 02 00       	call   0x442060
  41a183:	83 c4 04             	add    esp,0x4
  41a186:	e9 fe fe ff ff       	jmp    0x41a089
  41a18b:	3b ca                	cmp    ecx,edx
  41a18d:	75 33                	jne    0x41a1c2
  41a18f:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a192:	74 33                	je     0x41a1c7
  41a194:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a197:	89 3a                	mov    DWORD PTR [edx],edi
  41a199:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a19c:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a19f:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  41a1a2:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a1a5:	83 78 40 02          	cmp    DWORD PTR [eax+0x40],0x2
  41a1a9:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  41a1ac:	75 53                	jne    0x41a201
  41a1ae:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a1b1:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a1b4:	50                   	push   eax
  41a1b5:	e8 a6 7e 02 00       	call   0x442060
  41a1ba:	83 c4 04             	add    esp,0x4
  41a1bd:	e9 c7 fe ff ff       	jmp    0x41a089
  41a1c2:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a1c5:	75 2e                	jne    0x41a1f5
  41a1c7:	3b ca                	cmp    ecx,edx
  41a1c9:	74 2a                	je     0x41a1f5
  41a1cb:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41a1cd:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  41a1d0:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a1d3:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a1d5:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a1d8:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  41a1db:	83 78 40 01          	cmp    DWORD PTR [eax+0x40],0x1
  41a1df:	75 20                	jne    0x41a201
  41a1e1:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a1e4:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a1e7:	50                   	push   eax
  41a1e8:	e8 73 7e 02 00       	call   0x442060
  41a1ed:	83 c4 04             	add    esp,0x4
  41a1f0:	e9 94 fe ff ff       	jmp    0x41a089
  41a1f5:	89 78 20             	mov    DWORD PTR [eax+0x20],edi
  41a1f8:	89 78 24             	mov    DWORD PTR [eax+0x24],edi
  41a1fb:	89 78 28             	mov    DWORD PTR [eax+0x28],edi
  41a1fe:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a201:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a204:	50                   	push   eax
  41a205:	e8 56 7e 02 00       	call   0x442060
  41a20a:	83 c4 04             	add    esp,0x4
  41a20d:	e9 77 fe ff ff       	jmp    0x41a089
  41a212:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
  41a219:	e9 6b fe ff ff       	jmp    0x41a089
  41a21e:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  41a221:	74 04                	je     0x41a227
  41a223:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  41a227:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a22a:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a230:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a232:	ff 52 08             	call   DWORD PTR [edx+0x8]
  41a235:	39 7d f0             	cmp    DWORD PTR [ebp-0x10],edi
  41a238:	75 6b                	jne    0x41a2a5
  41a23a:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  41a23d:	8d be a0 01 00 00    	lea    edi,[esi+0x1a0]
  41a243:	8b 0f                	mov    ecx,DWORD PTR [edi]
  41a245:	85 c9                	test   ecx,ecx
  41a247:	74 48                	je     0x41a291
  41a249:	e8 b2 14 07 00       	call   0x48b700
  41a24e:	3b 45 08             	cmp    eax,DWORD PTR [ebp+0x8]
  41a251:	75 3e                	jne    0x41a291
  41a253:	8b 1f                	mov    ebx,DWORD PTR [edi]
  41a255:	8b 03                	mov    eax,DWORD PTR [ebx]
  41a257:	6a 00                	push   0x0
  41a259:	8d 4d e8             	lea    ecx,[ebp-0x18]
  41a25c:	51                   	push   ecx
  41a25d:	56                   	push   esi
  41a25e:	56                   	push   esi
  41a25f:	53                   	push   ebx
  41a260:	6a 03                	push   0x3
  41a262:	8b cb                	mov    ecx,ebx
  41a264:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41a267:	8b cb                	mov    ecx,ebx
  41a269:	e8 e2 34 07 00       	call   0x48d750
  41a26e:	a8 01                	test   al,0x1
  41a270:	74 12                	je     0x41a284
  41a272:	8b 13                	mov    edx,DWORD PTR [ebx]
  41a274:	8b cb                	mov    ecx,ebx
  41a276:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  41a27c:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  41a282:	eb 0d                	jmp    0x41a291
  41a284:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  41a287:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
  41a28e:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  41a291:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  41a294:	40                   	inc    eax
  41a295:	83 c7 04             	add    edi,0x4
  41a298:	83 f8 10             	cmp    eax,0x10
  41a29b:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  41a29e:	7c a3                	jl     0x41a243
  41a2a0:	8b 7d e0             	mov    edi,DWORD PTR [ebp-0x20]
  41a2a3:	eb 05                	jmp    0x41a2aa
  41a2a5:	bf ff ff 00 00       	mov    edi,0xffff
  41a2aa:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  41a2ad:	85 c0                	test   eax,eax
  41a2af:	0f 84 f5 02 00 00    	je     0x41a5aa
  41a2b5:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  41a2b8:	8d 45 e4             	lea    eax,[ebp-0x1c]
  41a2bb:	50                   	push   eax
  41a2bc:	6a 00                	push   0x0
  41a2be:	51                   	push   ecx
  41a2bf:	56                   	push   esi
  41a2c0:	53                   	push   ebx
  41a2c1:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  41a2c8:	8b 13                	mov    edx,DWORD PTR [ebx]
  41a2ca:	6a 04                	push   0x4
  41a2cc:	8b cb                	mov    ecx,ebx
  41a2ce:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41a2d1:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  41a2d4:	85 c0                	test   eax,eax
  41a2d6:	0f 85 93 00 00 00    	jne    0x41a36f
  41a2dc:	8d 4d c8             	lea    ecx,[ebp-0x38]
  41a2df:	e8 0c bb 06 00       	call   0x485df0
  41a2e4:	8d 4d 08             	lea    ecx,[ebp+0x8]
  41a2e7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  41a2ee:	e8 6b 77 0b 00       	call   0x4d1a5e
  41a2f3:	33 d2                	xor    edx,edx
  41a2f5:	66 8b 96 1c 01 00 00 	mov    dx,WORD PTR [esi+0x11c]
  41a2fc:	68 58 13 51 00       	push   0x511358
  41a301:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  41a305:	52                   	push   edx
  41a306:	68 03 1e 00 00       	push   0x1e03
  41a30b:	e8 e0 36 02 00       	call   0x43d9f0
  41a310:	83 c4 0c             	add    esp,0xc
  41a313:	50                   	push   eax
  41a314:	8d 4d 08             	lea    ecx,[ebp+0x8]
  41a317:	e8 3c 77 0b 00       	call   0x4d1a58
  41a31c:	6a 3f                	push   0x3f
  41a31e:	8d 4d c8             	lea    ecx,[ebp-0x38]
  41a321:	e8 2a be 06 00       	call   0x486150
  41a326:	6a 1e                	push   0x1e
  41a328:	8d 4d c8             	lea    ecx,[ebp-0x38]
  41a32b:	e8 20 be 06 00       	call   0x486150
  41a330:	6a 03                	push   0x3
  41a332:	8d 4d c8             	lea    ecx,[ebp-0x38]
  41a335:	e8 16 be 06 00       	call   0x486150
  41a33a:	8d 45 08             	lea    eax,[ebp+0x8]
  41a33d:	50                   	push   eax
  41a33e:	8d 4d c8             	lea    ecx,[ebp-0x38]
  41a341:	e8 0a c0 06 00       	call   0x486350
  41a346:	8b 16                	mov    edx,DWORD PTR [esi]
  41a348:	8d 45 c8             	lea    eax,[ebp-0x38]
  41a34b:	50                   	push   eax
  41a34c:	8b ce                	mov    ecx,esi
  41a34e:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  41a354:	8d 4d 08             	lea    ecx,[ebp+0x8]
  41a357:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  41a35b:	e8 e0 76 0b 00       	call   0x4d1a40
  41a360:	8d 4d c8             	lea    ecx,[ebp-0x38]
  41a363:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41a36a:	e8 11 bb 06 00       	call   0x485e80
  41a36f:	8b cb                	mov    ecx,ebx
  41a371:	e8 da 33 07 00       	call   0x48d750
  41a376:	a8 01                	test   al,0x1
  41a378:	0f 84 2c 02 00 00    	je     0x41a5aa
  41a37e:	81 ff ff ff 00 00    	cmp    edi,0xffff
  41a384:	0f 85 02 02 00 00    	jne    0x41a58c
  41a38a:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a390:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a392:	ff 52 04             	call   DWORD PTR [edx+0x4]
  41a395:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a39b:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  41a39e:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a3a1:	33 c9                	xor    ecx,ecx
  41a3a3:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  41a3a6:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  41a3aa:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  41a3ad:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a3b3:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41a3b6:	85 c9                	test   ecx,ecx
  41a3b8:	74 0a                	je     0x41a3c4
  41a3ba:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a3bd:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a3bf:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a3c2:	eb 07                	jmp    0x41a3cb
  41a3c4:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  41a3cb:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a3ce:	85 c9                	test   ecx,ecx
  41a3d0:	0f 84 1b 01 00 00    	je     0x41a4f1
  41a3d6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  41a3d9:	85 c0                	test   eax,eax
  41a3db:	0f 85 22 01 00 00    	jne    0x41a503
  41a3e1:	8b 96 9c 01 00 00    	mov    edx,DWORD PTR [esi+0x19c]
  41a3e7:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  41a3ea:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  41a3ed:	3b df                	cmp    ebx,edi
  41a3ef:	75 bc                	jne    0x41a3ad
  41a3f1:	6a 01                	push   0x1
  41a3f3:	8b cf                	mov    ecx,edi
  41a3f5:	e8 a6 20 03 00       	call   0x44c4a0
  41a3fa:	8b cf                	mov    ecx,edi
  41a3fc:	e8 ef 1f 03 00       	call   0x44c3f0
  41a401:	85 c0                	test   eax,eax
  41a403:	0f 85 dc 00 00 00    	jne    0x41a4e5
  41a409:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a40f:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  41a412:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  41a415:	8b 01                	mov    eax,DWORD PTR [ecx]
  41a417:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  41a41d:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a423:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a426:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  41a429:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  41a42c:	ff 48 38             	dec    DWORD PTR [eax+0x38]
  41a42f:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a432:	3b ca                	cmp    ecx,edx
  41a434:	74 3d                	je     0x41a473
  41a436:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a439:	74 34                	je     0x41a46f
  41a43b:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a43d:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  41a440:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  41a443:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a446:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a449:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41a44b:	89 0a                	mov    DWORD PTR [edx],ecx
  41a44d:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41a450:	83 f9 01             	cmp    ecx,0x1
  41a453:	75 0b                	jne    0x41a460
  41a455:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a458:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  41a45b:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a45e:	eb 79                	jmp    0x41a4d9
  41a460:	83 f9 02             	cmp    ecx,0x2
  41a463:	75 74                	jne    0x41a4d9
  41a465:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a468:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a46a:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a46d:	eb 6a                	jmp    0x41a4d9
  41a46f:	3b ca                	cmp    ecx,edx
  41a471:	75 2c                	jne    0x41a49f
  41a473:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a476:	74 2c                	je     0x41a4a4
  41a478:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a47b:	c7 02 00 00 00 00    	mov    DWORD PTR [edx],0x0
  41a481:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a484:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a487:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  41a48a:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a48d:	83 78 40 02          	cmp    DWORD PTR [eax+0x40],0x2
  41a491:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  41a494:	75 43                	jne    0x41a4d9
  41a496:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  41a49d:	eb 3a                	jmp    0x41a4d9
  41a49f:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a4a2:	75 27                	jne    0x41a4cb
  41a4a4:	3b ca                	cmp    ecx,edx
  41a4a6:	74 23                	je     0x41a4cb
  41a4a8:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41a4aa:	c7 41 04 00 00 00 00 	mov    DWORD PTR [ecx+0x4],0x0
  41a4b1:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a4b4:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a4b6:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a4b9:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  41a4bc:	83 78 40 01          	cmp    DWORD PTR [eax+0x40],0x1
  41a4c0:	75 17                	jne    0x41a4d9
  41a4c2:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  41a4c9:	eb 0e                	jmp    0x41a4d9
  41a4cb:	33 c9                	xor    ecx,ecx
  41a4cd:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a4d0:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  41a4d3:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  41a4d6:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  41a4d9:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a4dc:	50                   	push   eax
  41a4dd:	e8 7e 7b 02 00       	call   0x442060
  41a4e2:	83 c4 04             	add    esp,0x4
  41a4e5:	c7 45 f0 01 00 00 00 	mov    DWORD PTR [ebp-0x10],0x1
  41a4ec:	e9 bc fe ff ff       	jmp    0x41a3ad
  41a4f1:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41a4f4:	85 c9                	test   ecx,ecx
  41a4f6:	74 04                	je     0x41a4fc
  41a4f8:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  41a4fc:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  41a503:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a509:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a50b:	ff 52 08             	call   DWORD PTR [edx+0x8]
  41a50e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  41a511:	85 c0                	test   eax,eax
  41a513:	0f 84 91 00 00 00    	je     0x41a5aa
  41a519:	8d 4d b0             	lea    ecx,[ebp-0x50]
  41a51c:	e8 cf b8 06 00       	call   0x485df0
  41a521:	6a 12                	push   0x12
  41a523:	8d 4d b0             	lea    ecx,[ebp-0x50]
  41a526:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  41a52d:	e8 1e bc 06 00       	call   0x486150
  41a532:	6a 00                	push   0x0
  41a534:	8d 4d b0             	lea    ecx,[ebp-0x50]
  41a537:	e8 74 bc 06 00       	call   0x4861b0
  41a53c:	8b ce                	mov    ecx,esi
  41a53e:	e8 bd 11 07 00       	call   0x48b700
  41a543:	50                   	push   eax
  41a544:	8d 4d b0             	lea    ecx,[ebp-0x50]
  41a547:	e8 a4 bc 06 00       	call   0x4861f0
  41a54c:	8b 06                	mov    eax,DWORD PTR [esi]
  41a54e:	6a 00                	push   0x0
  41a550:	8d 4d b0             	lea    ecx,[ebp-0x50]
  41a553:	51                   	push   ecx
  41a554:	8b ce                	mov    ecx,esi
  41a556:	ff 90 6c 01 00 00    	call   DWORD PTR [eax+0x16c]
  41a55c:	8b 16                	mov    edx,DWORD PTR [esi]
  41a55e:	8d 45 b0             	lea    eax,[ebp-0x50]
  41a561:	50                   	push   eax
  41a562:	8b ce                	mov    ecx,esi
  41a564:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  41a56a:	8d 4d b0             	lea    ecx,[ebp-0x50]
  41a56d:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41a574:	e8 07 b9 06 00       	call   0x485e80
  41a579:	5f                   	pop    edi
  41a57a:	5e                   	pop    esi
  41a57b:	5b                   	pop    ebx
  41a57c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41a57f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41a586:	8b e5                	mov    esp,ebp
  41a588:	5d                   	pop    ebp
  41a589:	c2 08 00             	ret    0x8
  41a58c:	8b 8c be a0 01 00 00 	mov    ecx,DWORD PTR [esi+edi*4+0x1a0]
  41a593:	85 c9                	test   ecx,ecx
  41a595:	74 13                	je     0x41a5aa
  41a597:	c7 84 be a0 01 00 00 	mov    DWORD PTR [esi+edi*4+0x1a0],0x0
  41a59e:	00 00 00 00 
  41a5a2:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a5a4:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  41a5aa:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41a5ad:	5f                   	pop    edi
  41a5ae:	5e                   	pop    esi
  41a5af:	5b                   	pop    ebx
  41a5b0:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41a5b7:	8b e5                	mov    esp,ebp

; Character::UseItemByAppearance, recherche par apparence sur 16 bits
; Intervalle 0x0041A5C0 à 0x0041AAE2 (borne supérieure exclue)
  41a5c0:	55                   	push   ebp
  41a5c1:	8b ec                	mov    ebp,esp
  41a5c3:	6a ff                	push   0xffffffff
  41a5c5:	68 68 3f 4d 00       	push   0x4d3f68
  41a5ca:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  41a5d0:	50                   	push   eax
  41a5d1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  41a5d8:	83 ec 3c             	sub    esp,0x3c
  41a5db:	53                   	push   ebx
  41a5dc:	56                   	push   esi
  41a5dd:	57                   	push   edi
  41a5de:	8b f1                	mov    esi,ecx
  41a5e0:	c7 45 e8 04 00 00 00 	mov    DWORD PTR [ebp-0x18],0x4
  41a5e7:	e8 94 56 00 00       	call   0x41fc80
  41a5ec:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a5f2:	33 ff                	xor    edi,edi
  41a5f4:	3b cf                	cmp    ecx,edi
  41a5f6:	0f 84 d3 04 00 00    	je     0x41aacf
  41a5fc:	8b 01                	mov    eax,DWORD PTR [ecx]
  41a5fe:	33 db                	xor    ebx,ebx
  41a600:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  41a603:	ff 50 04             	call   DWORD PTR [eax+0x4]
  41a606:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a60c:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  41a60f:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a612:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a615:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  41a619:	eb 03                	jmp    0x41a61e
  41a61b:	8b 5d f0             	mov    ebx,DWORD PTR [ebp-0x10]
  41a61e:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a624:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  41a627:	74 0a                	je     0x41a633
  41a629:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a62c:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a62e:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a631:	eb 07                	jmp    0x41a63a
  41a633:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  41a63a:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  41a63d:	0f 84 78 01 00 00    	je     0x41a7bb
  41a643:	3b df                	cmp    ebx,edi
  41a645:	0f 85 7c 01 00 00    	jne    0x41a7c7
  41a64b:	8b 96 9c 01 00 00    	mov    edx,DWORD PTR [esi+0x19c]
  41a651:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  41a654:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  41a657:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a659:	ff 52 28             	call   DWORD PTR [edx+0x28]
  41a65c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  41a65f:	81 e1 ff ff 00 00    	and    ecx,0xffff
  41a665:	3b c1                	cmp    eax,ecx
  41a667:	75 b5                	jne    0x41a61e
  41a669:	8b 96 9c 01 00 00    	mov    edx,DWORD PTR [esi+0x19c]
  41a66f:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  41a672:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
  41a675:	8b 13                	mov    edx,DWORD PTR [ebx]
  41a677:	57                   	push   edi
  41a678:	8d 45 e8             	lea    eax,[ebp-0x18]
  41a67b:	50                   	push   eax
  41a67c:	56                   	push   esi
  41a67d:	56                   	push   esi
  41a67e:	53                   	push   ebx
  41a67f:	6a 03                	push   0x3
  41a681:	8b cb                	mov    ecx,ebx
  41a683:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  41a686:	ff 52 24             	call   DWORD PTR [edx+0x24]
  41a689:	8b cb                	mov    ecx,ebx
  41a68b:	e8 c0 30 07 00       	call   0x48d750
  41a690:	a8 01                	test   al,0x1
  41a692:	74 87                	je     0x41a61b
  41a694:	6a 01                	push   0x1
  41a696:	8b cb                	mov    ecx,ebx
  41a698:	e8 03 1e 03 00       	call   0x44c4a0
  41a69d:	8b cb                	mov    ecx,ebx
  41a69f:	e8 4c 1d 03 00       	call   0x44c3f0
  41a6a4:	85 c0                	test   eax,eax
  41a6a6:	0f 85 6f ff ff ff    	jne    0x41a61b
  41a6ac:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a6b2:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  41a6b5:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  41a6b8:	8b 01                	mov    eax,DWORD PTR [ecx]
  41a6ba:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  41a6c0:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a6c6:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a6c9:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  41a6cc:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  41a6cf:	ff 48 38             	dec    DWORD PTR [eax+0x38]
  41a6d2:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a6d5:	3b ca                	cmp    ecx,edx
  41a6d7:	74 5f                	je     0x41a738
  41a6d9:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a6dc:	74 56                	je     0x41a734
  41a6de:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a6e0:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  41a6e3:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  41a6e6:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a6e9:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a6ec:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41a6ee:	89 0a                	mov    DWORD PTR [edx],ecx
  41a6f0:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41a6f3:	83 f9 01             	cmp    ecx,0x1
  41a6f6:	75 1a                	jne    0x41a712
  41a6f8:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a6fb:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  41a6fe:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a701:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a704:	50                   	push   eax
  41a705:	e8 56 79 02 00       	call   0x442060
  41a70a:	83 c4 04             	add    esp,0x4
  41a70d:	e9 09 ff ff ff       	jmp    0x41a61b
  41a712:	83 f9 02             	cmp    ecx,0x2
  41a715:	0f 85 8f 00 00 00    	jne    0x41a7aa
  41a71b:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a71e:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a720:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a723:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a726:	50                   	push   eax
  41a727:	e8 34 79 02 00       	call   0x442060
  41a72c:	83 c4 04             	add    esp,0x4
  41a72f:	e9 e7 fe ff ff       	jmp    0x41a61b
  41a734:	3b ca                	cmp    ecx,edx
  41a736:	75 33                	jne    0x41a76b
  41a738:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a73b:	74 33                	je     0x41a770
  41a73d:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a740:	89 3a                	mov    DWORD PTR [edx],edi
  41a742:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a745:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a748:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  41a74b:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a74e:	83 78 40 02          	cmp    DWORD PTR [eax+0x40],0x2
  41a752:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  41a755:	75 53                	jne    0x41a7aa
  41a757:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a75a:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a75d:	50                   	push   eax
  41a75e:	e8 fd 78 02 00       	call   0x442060
  41a763:	83 c4 04             	add    esp,0x4
  41a766:	e9 b0 fe ff ff       	jmp    0x41a61b
  41a76b:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a76e:	75 2e                	jne    0x41a79e
  41a770:	3b ca                	cmp    ecx,edx
  41a772:	74 2a                	je     0x41a79e
  41a774:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41a776:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  41a779:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a77c:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a77e:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a781:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  41a784:	83 78 40 01          	cmp    DWORD PTR [eax+0x40],0x1
  41a788:	75 20                	jne    0x41a7aa
  41a78a:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a78d:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a790:	50                   	push   eax
  41a791:	e8 ca 78 02 00       	call   0x442060
  41a796:	83 c4 04             	add    esp,0x4
  41a799:	e9 7d fe ff ff       	jmp    0x41a61b
  41a79e:	89 78 20             	mov    DWORD PTR [eax+0x20],edi
  41a7a1:	89 78 24             	mov    DWORD PTR [eax+0x24],edi
  41a7a4:	89 78 28             	mov    DWORD PTR [eax+0x28],edi
  41a7a7:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a7aa:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a7ad:	50                   	push   eax
  41a7ae:	e8 ad 78 02 00       	call   0x442060
  41a7b3:	83 c4 04             	add    esp,0x4
  41a7b6:	e9 60 fe ff ff       	jmp    0x41a61b
  41a7bb:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  41a7be:	74 04                	je     0x41a7c4
  41a7c0:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  41a7c4:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a7c7:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a7cd:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a7cf:	ff 52 08             	call   DWORD PTR [edx+0x8]
  41a7d2:	3b df                	cmp    ebx,edi
  41a7d4:	0f 84 f5 02 00 00    	je     0x41aacf
  41a7da:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  41a7dd:	8b 03                	mov    eax,DWORD PTR [ebx]
  41a7df:	8d 4d ec             	lea    ecx,[ebp-0x14]
  41a7e2:	51                   	push   ecx
  41a7e3:	57                   	push   edi
  41a7e4:	52                   	push   edx
  41a7e5:	56                   	push   esi
  41a7e6:	53                   	push   ebx
  41a7e7:	6a 04                	push   0x4
  41a7e9:	8b cb                	mov    ecx,ebx
  41a7eb:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  41a7ee:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41a7f1:	39 7d ec             	cmp    DWORD PTR [ebp-0x14],edi
  41a7f4:	0f 85 8f 00 00 00    	jne    0x41a889
  41a7fa:	8d 4d d0             	lea    ecx,[ebp-0x30]
  41a7fd:	e8 ee b5 06 00       	call   0x485df0
  41a802:	8d 4d 08             	lea    ecx,[ebp+0x8]
  41a805:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
  41a808:	e8 51 72 0b 00       	call   0x4d1a5e
  41a80d:	33 c0                	xor    eax,eax
  41a80f:	66 8b 86 1c 01 00 00 	mov    ax,WORD PTR [esi+0x11c]
  41a816:	68 58 13 51 00       	push   0x511358
  41a81b:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  41a81f:	50                   	push   eax
  41a820:	68 03 1e 00 00       	push   0x1e03
  41a825:	e8 c6 31 02 00       	call   0x43d9f0
  41a82a:	83 c4 0c             	add    esp,0xc
  41a82d:	50                   	push   eax
  41a82e:	8d 4d 08             	lea    ecx,[ebp+0x8]
  41a831:	e8 22 72 0b 00       	call   0x4d1a58
  41a836:	6a 3f                	push   0x3f
  41a838:	8d 4d d0             	lea    ecx,[ebp-0x30]
  41a83b:	e8 10 b9 06 00       	call   0x486150
  41a840:	6a 1e                	push   0x1e
  41a842:	8d 4d d0             	lea    ecx,[ebp-0x30]
  41a845:	e8 06 b9 06 00       	call   0x486150
  41a84a:	6a 03                	push   0x3
  41a84c:	8d 4d d0             	lea    ecx,[ebp-0x30]
  41a84f:	e8 fc b8 06 00       	call   0x486150
  41a854:	8d 4d 08             	lea    ecx,[ebp+0x8]
  41a857:	51                   	push   ecx
  41a858:	8d 4d d0             	lea    ecx,[ebp-0x30]
  41a85b:	e8 f0 ba 06 00       	call   0x486350
  41a860:	8b 16                	mov    edx,DWORD PTR [esi]
  41a862:	8d 45 d0             	lea    eax,[ebp-0x30]
  41a865:	50                   	push   eax
  41a866:	8b ce                	mov    ecx,esi
  41a868:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  41a86e:	8d 4d 08             	lea    ecx,[ebp+0x8]
  41a871:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  41a875:	e8 c6 71 0b 00       	call   0x4d1a40
  41a87a:	8d 4d d0             	lea    ecx,[ebp-0x30]
  41a87d:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41a884:	e8 f7 b5 06 00       	call   0x485e80
  41a889:	8b cb                	mov    ecx,ebx
  41a88b:	e8 c0 2e 07 00       	call   0x48d750
  41a890:	24 01                	and    al,0x1
  41a892:	32 db                	xor    bl,bl
  41a894:	3c 01                	cmp    al,0x1
  41a896:	0f 85 1e 02 00 00    	jne    0x41aaba
  41a89c:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a8a2:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a8a4:	ff 52 04             	call   DWORD PTR [edx+0x4]
  41a8a7:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a8ad:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  41a8b0:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a8b3:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41a8b6:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  41a8ba:	eb 02                	jmp    0x41a8be
  41a8bc:	33 ff                	xor    edi,edi
  41a8be:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a8c4:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  41a8c7:	74 0a                	je     0x41a8d3
  41a8c9:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a8cc:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a8ce:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a8d1:	eb 07                	jmp    0x41a8da
  41a8d3:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  41a8da:	39 78 20             	cmp    DWORD PTR [eax+0x20],edi
  41a8dd:	0f 84 5d 01 00 00    	je     0x41aa40
  41a8e3:	84 db                	test   bl,bl
  41a8e5:	0f 85 61 01 00 00    	jne    0x41aa4c
  41a8eb:	8b 96 9c 01 00 00    	mov    edx,DWORD PTR [esi+0x19c]
  41a8f1:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  41a8f4:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  41a8f7:	39 7d f0             	cmp    DWORD PTR [ebp-0x10],edi
  41a8fa:	75 c0                	jne    0x41a8bc
  41a8fc:	6a 01                	push   0x1
  41a8fe:	8b cf                	mov    ecx,edi
  41a900:	e8 9b 1b 03 00       	call   0x44c4a0
  41a905:	8b cf                	mov    ecx,edi
  41a907:	e8 e4 1a 03 00       	call   0x44c3f0
  41a90c:	85 c0                	test   eax,eax
  41a90e:	0f 85 25 01 00 00    	jne    0x41aa39
  41a914:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41a91a:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  41a91d:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  41a920:	8b 01                	mov    eax,DWORD PTR [ecx]
  41a922:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  41a928:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41a92e:	8b 58 38             	mov    ebx,DWORD PTR [eax+0x38]
  41a931:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a934:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  41a937:	4b                   	dec    ebx
  41a938:	3b ca                	cmp    ecx,edx
  41a93a:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  41a93d:	89 58 38             	mov    DWORD PTR [eax+0x38],ebx
  41a940:	74 63                	je     0x41a9a5
  41a942:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a945:	74 5a                	je     0x41a9a1
  41a947:	8b 11                	mov    edx,DWORD PTR [ecx]
  41a949:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  41a94c:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  41a94f:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a952:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a955:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41a957:	89 0a                	mov    DWORD PTR [edx],ecx
  41a959:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41a95c:	83 f9 01             	cmp    ecx,0x1
  41a95f:	75 1c                	jne    0x41a97d
  41a961:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a964:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  41a967:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a96a:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a96d:	50                   	push   eax
  41a96e:	e8 ed 76 02 00       	call   0x442060
  41a973:	83 c4 04             	add    esp,0x4
  41a976:	b3 01                	mov    bl,0x1
  41a978:	e9 3f ff ff ff       	jmp    0x41a8bc
  41a97d:	83 f9 02             	cmp    ecx,0x2
  41a980:	0f 85 a7 00 00 00    	jne    0x41aa2d
  41a986:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a989:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a98b:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a98e:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a991:	50                   	push   eax
  41a992:	e8 c9 76 02 00       	call   0x442060
  41a997:	83 c4 04             	add    esp,0x4
  41a99a:	b3 01                	mov    bl,0x1
  41a99c:	e9 1b ff ff ff       	jmp    0x41a8bc
  41a9a1:	3b ca                	cmp    ecx,edx
  41a9a3:	75 3d                	jne    0x41a9e2
  41a9a5:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a9a8:	74 3d                	je     0x41a9e7
  41a9aa:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a9ad:	c7 02 00 00 00 00    	mov    DWORD PTR [edx],0x0
  41a9b3:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41a9b6:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a9b9:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  41a9bc:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  41a9bf:	83 78 40 02          	cmp    DWORD PTR [eax+0x40],0x2
  41a9c3:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  41a9c6:	75 65                	jne    0x41aa2d
  41a9c8:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  41a9cf:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41a9d2:	50                   	push   eax
  41a9d3:	e8 88 76 02 00       	call   0x442060
  41a9d8:	83 c4 04             	add    esp,0x4
  41a9db:	b3 01                	mov    bl,0x1
  41a9dd:	e9 da fe ff ff       	jmp    0x41a8bc
  41a9e2:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  41a9e5:	75 38                	jne    0x41aa1f
  41a9e7:	3b ca                	cmp    ecx,edx
  41a9e9:	74 34                	je     0x41aa1f
  41a9eb:	8b 09                	mov    ecx,DWORD PTR [ecx]
  41a9ed:	c7 41 04 00 00 00 00 	mov    DWORD PTR [ecx+0x4],0x0
  41a9f4:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41a9f7:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41a9f9:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41a9fc:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  41a9ff:	83 78 40 01          	cmp    DWORD PTR [eax+0x40],0x1
  41aa03:	75 28                	jne    0x41aa2d
  41aa05:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  41aa0c:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41aa0f:	50                   	push   eax
  41aa10:	e8 4b 76 02 00       	call   0x442060
  41aa15:	83 c4 04             	add    esp,0x4
  41aa18:	b3 01                	mov    bl,0x1
  41aa1a:	e9 9d fe ff ff       	jmp    0x41a8bc
  41aa1f:	33 c9                	xor    ecx,ecx
  41aa21:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41aa24:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  41aa27:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  41aa2a:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  41aa2d:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  41aa30:	50                   	push   eax
  41aa31:	e8 2a 76 02 00       	call   0x442060
  41aa36:	83 c4 04             	add    esp,0x4
  41aa39:	b3 01                	mov    bl,0x1
  41aa3b:	e9 7c fe ff ff       	jmp    0x41a8bc
  41aa40:	39 78 40             	cmp    DWORD PTR [eax+0x40],edi
  41aa43:	74 04                	je     0x41aa49
  41aa45:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  41aa49:	89 78 40             	mov    DWORD PTR [eax+0x40],edi
  41aa4c:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41aa52:	8b 11                	mov    edx,DWORD PTR [ecx]
  41aa54:	ff 52 08             	call   DWORD PTR [edx+0x8]
  41aa57:	80 fb 01             	cmp    bl,0x1
  41aa5a:	75 5e                	jne    0x41aaba
  41aa5c:	8d 4d b8             	lea    ecx,[ebp-0x48]
  41aa5f:	e8 8c b3 06 00       	call   0x485df0
  41aa64:	6a 12                	push   0x12
  41aa66:	8d 4d b8             	lea    ecx,[ebp-0x48]
  41aa69:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  41aa70:	e8 db b6 06 00       	call   0x486150
  41aa75:	57                   	push   edi
  41aa76:	8d 4d b8             	lea    ecx,[ebp-0x48]
  41aa79:	e8 32 b7 06 00       	call   0x4861b0
  41aa7e:	8b ce                	mov    ecx,esi
  41aa80:	e8 7b 0c 07 00       	call   0x48b700
  41aa85:	50                   	push   eax
  41aa86:	8d 4d b8             	lea    ecx,[ebp-0x48]
  41aa89:	e8 62 b7 06 00       	call   0x4861f0
  41aa8e:	8b 06                	mov    eax,DWORD PTR [esi]
  41aa90:	57                   	push   edi
  41aa91:	8d 4d b8             	lea    ecx,[ebp-0x48]
  41aa94:	51                   	push   ecx
  41aa95:	8b ce                	mov    ecx,esi
  41aa97:	ff 90 6c 01 00 00    	call   DWORD PTR [eax+0x16c]
  41aa9d:	8b 16                	mov    edx,DWORD PTR [esi]
  41aa9f:	8d 45 b8             	lea    eax,[ebp-0x48]
  41aaa2:	50                   	push   eax
  41aaa3:	8b ce                	mov    ecx,esi
  41aaa5:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  41aaab:	8d 4d b8             	lea    ecx,[ebp-0x48]
  41aaae:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  41aab5:	e8 c6 b3 06 00       	call   0x485e80
  41aaba:	5f                   	pop    edi
  41aabb:	5e                   	pop    esi
  41aabc:	b0 01                	mov    al,0x1
  41aabe:	5b                   	pop    ebx
  41aabf:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41aac2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41aac9:	8b e5                	mov    esp,ebp
  41aacb:	5d                   	pop    ebp
  41aacc:	c2 08 00             	ret    0x8
  41aacf:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41aad2:	5f                   	pop    edi
  41aad3:	5e                   	pop    esi
  41aad4:	32 c0                	xor    al,al
  41aad6:	5b                   	pop    ebx
  41aad7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  41aade:	8b e5                	mov    esp,ebp
  41aae0:	5d                   	pop    ebp
  41aae1:	c2               	ret    0x8

; WorldMap::UseItem, emploi d’un objet situé à une position du monde
; Intervalle 0x004B0BA0 à 0x004B0C34 (borne supérieure exclue)
  4b0ba0:	55                   	push   ebp
  4b0ba1:	8b ec                	mov    ebp,esp
  4b0ba3:	53                   	push   ebx
  4b0ba4:	56                   	push   esi
  4b0ba5:	8b d9                	mov    ebx,ecx
  4b0ba7:	8b 03                	mov    eax,DWORD PTR [ebx]
  4b0ba9:	57                   	push   edi
  4b0baa:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4b0bad:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4b0bb0:	33 c9                	xor    ecx,ecx
  4b0bb2:	66 8b 4b 2c          	mov    cx,WORD PTR [ebx+0x2c]
  4b0bb6:	3b d1                	cmp    edx,ecx
  4b0bb8:	7d 6c                	jge    0x4b0c26
  4b0bba:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4b0bbd:	33 c9                	xor    ecx,ecx
  4b0bbf:	66 8b 4b 2e          	mov    cx,WORD PTR [ebx+0x2e]
  4b0bc3:	3b c1                	cmp    eax,ecx
  4b0bc5:	7d 5f                	jge    0x4b0c26
  4b0bc7:	8b 73 24             	mov    esi,DWORD PTR [ebx+0x24]
  4b0bca:	8b ca                	mov    ecx,edx
  4b0bcc:	c1 f9 02             	sar    ecx,0x2
  4b0bcf:	8b 0c 8e             	mov    ecx,DWORD PTR [esi+ecx*4]
  4b0bd2:	8b f8                	mov    edi,eax
  4b0bd4:	c1 ff 02             	sar    edi,0x2
  4b0bd7:	8b 0c b9             	mov    ecx,DWORD PTR [ecx+edi*4]
  4b0bda:	85 c9                	test   ecx,ecx
  4b0bdc:	74 48                	je     0x4b0c26
  4b0bde:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  4b0be1:	56                   	push   esi
  4b0be2:	50                   	push   eax
  4b0be3:	52                   	push   edx
  4b0be4:	e8 27 fe f5 ff       	call   0x410a10
  4b0be9:	8b f0                	mov    esi,eax
  4b0beb:	85 f6                	test   esi,esi
  4b0bed:	74 37                	je     0x4b0c26
  4b0bef:	8b ce                	mov    ecx,esi
  4b0bf1:	e8 7a aa fd ff       	call   0x48b670
  4b0bf6:	3c 03                	cmp    al,0x3
  4b0bf8:	75 2c                	jne    0x4b0c26
  4b0bfa:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
  4b0bfd:	8b 16                	mov    edx,DWORD PTR [esi]
  4b0bff:	6a 00                	push   0x0
  4b0c01:	6a 00                	push   0x0
  4b0c03:	57                   	push   edi
  4b0c04:	57                   	push   edi
  4b0c05:	56                   	push   esi
  4b0c06:	6a 03                	push   0x3
  4b0c08:	8b ce                	mov    ecx,esi
  4b0c0a:	ff 52 24             	call   DWORD PTR [edx+0x24]
  4b0c0d:	8b 06                	mov    eax,DWORD PTR [esi]
  4b0c0f:	8d 4d 14             	lea    ecx,[ebp+0x14]
  4b0c12:	51                   	push   ecx
  4b0c13:	6a 00                	push   0x0
  4b0c15:	57                   	push   edi
  4b0c16:	57                   	push   edi
  4b0c17:	56                   	push   esi
  4b0c18:	6a 04                	push   0x4
  4b0c1a:	8b ce                	mov    ecx,esi
  4b0c1c:	c7 45 14 00 00 00 00 	mov    DWORD PTR [ebp+0x14],0x0
  4b0c23:	ff 50 24             	call   DWORD PTR [eax+0x24]
  4b0c26:	8b 13                	mov    edx,DWORD PTR [ebx]
  4b0c28:	8b cb                	mov    ecx,ebx
  4b0c2a:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4b0c2d:	5f                   	pop    edi
  4b0c2e:	5e                   	pop    esi
  4b0c2f:	5b                   	pop    ebx
  4b0c30:	5d                   	pop    ebp
  4b0c31:	c2 18 00             	ret    0x18

; groupe de conteneur: visite des entrées, visite à pas de 40 et appel virtuel par entrée
; Intervalle 0x004A5720 à 0x004A5786 (borne supérieure exclue)
  4a5720:	55                   	push   ebp
  4a5721:	8b ec                	mov    ebp,esp
  4a5723:	53                   	push   ebx
  4a5724:	56                   	push   esi
  4a5725:	57                   	push   edi
  4a5726:	8b f9                	mov    edi,ecx
  4a5728:	8b 47 1c             	mov    eax,DWORD PTR [edi+0x1c]
  4a572b:	85 c0                	test   eax,eax
  4a572d:	75 04                	jne    0x4a5733
  4a572f:	33 d2                	xor    edx,edx
  4a5731:	eb 16                	jmp    0x4a5749
  4a5733:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  4a5736:	2b c8                	sub    ecx,eax
  4a5738:	b8 67 66 66 66       	mov    eax,0x66666667
  4a573d:	f7 e9                	imul   ecx
  4a573f:	c1 fa 04             	sar    edx,0x4
  4a5742:	8b c2                	mov    eax,edx
  4a5744:	c1 e8 1f             	shr    eax,0x1f
  4a5747:	03 d0                	add    edx,eax
  4a5749:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4a574c:	52                   	push   edx
  4a574d:	8b cb                	mov    ecx,ebx
  4a574f:	e8 7c 41 ff ff       	call   0x4998d0
  4a5754:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  4a5757:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  4a575a:	8b 11                	mov    edx,DWORD PTR [ecx]
  4a575c:	68 7c f3 50 00       	push   0x50f37c
  4a5761:	50                   	push   eax
  4a5762:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4a5765:	8b 77 1c             	mov    esi,DWORD PTR [edi+0x1c]
  4a5768:	3b 77 20             	cmp    esi,DWORD PTR [edi+0x20]
  4a576b:	74 12                	je     0x4a577f
  4a576d:	8b 16                	mov    edx,DWORD PTR [esi]
  4a576f:	53                   	push   ebx
  4a5770:	8b ce                	mov    ecx,esi
  4a5772:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4a5775:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  4a5778:	83 c6 28             	add    esi,0x28
  4a577b:	3b f0                	cmp    esi,eax
  4a577d:	75 ee                	jne    0x4a576d
  4a577f:	5f                   	pop    edi
  4a5780:	5e                   	pop    esi
  4a5781:	5b                   	pop    ebx
  4a5782:	5d                   	pop    ebp
  4a5783:	c2 04 00             	ret    0x4

; groupe de conteneur: traitement auxiliaire, parcours du groupe et traitement temporaire
; Intervalle 0x004A5790 à 0x004A5849 (borne supérieure exclue)
  4a5790:	55                   	push   ebp
  4a5791:	8b ec                	mov    ebp,esp
  4a5793:	6a ff                	push   0xffffffff
  4a5795:	68 d8 ba 4d 00       	push   0x4dbad8
  4a579a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a57a0:	50                   	push   eax
  4a57a1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a57a8:	83 ec 30             	sub    esp,0x30
  4a57ab:	56                   	push   esi
  4a57ac:	57                   	push   edi
  4a57ad:	8d 45 f0             	lea    eax,[ebp-0x10]
  4a57b0:	8b f1                	mov    esi,ecx
  4a57b2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4a57b5:	50                   	push   eax
  4a57b6:	c7 45 f0 ef cd ab 00 	mov    DWORD PTR [ebp-0x10],0xabcdef
  4a57bd:	e8 be 43 ff ff       	call   0x499b80
  4a57c2:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a57c5:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  4a57c8:	8b 11                	mov    edx,DWORD PTR [ecx]
  4a57ca:	68 7c f3 50 00       	push   0x50f37c
  4a57cf:	50                   	push   eax
  4a57d0:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4a57d3:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4a57d6:	33 ff                	xor    edi,edi
  4a57d8:	85 c0                	test   eax,eax
  4a57da:	74 5b                	je     0x4a5837
  4a57dc:	53                   	push   ebx
  4a57dd:	8d 5e 18             	lea    ebx,[esi+0x18]
  4a57e0:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  4a57e3:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  4a57e6:	51                   	push   ecx
  4a57e7:	52                   	push   edx
  4a57e8:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4a57eb:	e8 c0 0c 00 00       	call   0x4a64b0
  4a57f0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4a57f3:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4a57f6:	50                   	push   eax
  4a57f7:	51                   	push   ecx
  4a57f8:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4a57fb:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4a5802:	e8 d9 0d 00 00       	call   0x4a65e0
  4a5807:	8d 55 c4             	lea    edx,[ebp-0x3c]
  4a580a:	52                   	push   edx
  4a580b:	51                   	push   ecx
  4a580c:	54                   	push   esp
  4a580d:	8b cb                	mov    ecx,ebx
  4a580f:	e8 bc 02 00 00       	call   0x4a5ad0
  4a5814:	8d 45 ec             	lea    eax,[ebp-0x14]
  4a5817:	50                   	push   eax
  4a5818:	8b cb                	mov    ecx,ebx
  4a581a:	e8 c1 02 00 00       	call   0x4a5ae0
  4a581f:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  4a5822:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4a5829:	e8 f2 0c 00 00       	call   0x4a6520
  4a582e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4a5831:	47                   	inc    edi
  4a5832:	3b f8                	cmp    edi,eax
  4a5834:	75 aa                	jne    0x4a57e0
  4a5836:	5b                   	pop    ebx
  4a5837:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a583a:	5f                   	pop    edi
  4a583b:	5e                   	pop    esi
  4a583c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a5843:	8b e5                	mov    esp,ebp
  4a5845:	5d                   	pop    ebp
  4a5846:	c2 08 00             	ret    0x8

; groupe de conteneur: comparaison, égalité structurelle des entrées à pas de 40
; Intervalle 0x004A5850 à 0x004A5902 (borne supérieure exclue)
  4a5850:	55                   	push   ebp
  4a5851:	8b ec                	mov    ebp,esp
  4a5853:	53                   	push   ebx
  4a5854:	56                   	push   esi
  4a5855:	8b f1                	mov    esi,ecx
  4a5857:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4a585a:	8b 41 1c             	mov    eax,DWORD PTR [ecx+0x1c]
  4a585d:	85 c0                	test   eax,eax
  4a585f:	57                   	push   edi
  4a5860:	75 04                	jne    0x4a5866
  4a5862:	33 ff                	xor    edi,edi
  4a5864:	eb 18                	jmp    0x4a587e
  4a5866:	8b 49 20             	mov    ecx,DWORD PTR [ecx+0x20]
  4a5869:	2b c8                	sub    ecx,eax
  4a586b:	b8 67 66 66 66       	mov    eax,0x66666667
  4a5870:	f7 e9                	imul   ecx
  4a5872:	c1 fa 04             	sar    edx,0x4
  4a5875:	8b c2                	mov    eax,edx
  4a5877:	c1 e8 1f             	shr    eax,0x1f
  4a587a:	03 d0                	add    edx,eax
  4a587c:	8b fa                	mov    edi,edx
  4a587e:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  4a5881:	85 c0                	test   eax,eax
  4a5883:	75 04                	jne    0x4a5889
  4a5885:	33 d2                	xor    edx,edx
  4a5887:	eb 16                	jmp    0x4a589f
  4a5889:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  4a588c:	2b c8                	sub    ecx,eax
  4a588e:	b8 67 66 66 66       	mov    eax,0x66666667
  4a5893:	f7 e9                	imul   ecx
  4a5895:	c1 fa 04             	sar    edx,0x4
  4a5898:	8b ca                	mov    ecx,edx
  4a589a:	c1 e9 1f             	shr    ecx,0x1f
  4a589d:	03 d1                	add    edx,ecx
  4a589f:	3b fa                	cmp    edi,edx
  4a58a1:	74 09                	je     0x4a58ac
  4a58a3:	5f                   	pop    edi
  4a58a4:	5e                   	pop    esi
  4a58a5:	32 c0                	xor    al,al
  4a58a7:	5b                   	pop    ebx
  4a58a8:	5d                   	pop    ebp
  4a58a9:	c2 04 00             	ret    0x4
  4a58ac:	33 db                	xor    ebx,ebx
  4a58ae:	33 ff                	xor    edi,edi
  4a58b0:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  4a58b3:	85 c0                	test   eax,eax
  4a58b5:	74 42                	je     0x4a58f9
  4a58b7:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  4a58ba:	2b c8                	sub    ecx,eax
  4a58bc:	b8 67 66 66 66       	mov    eax,0x66666667
  4a58c1:	f7 e9                	imul   ecx
  4a58c3:	c1 fa 04             	sar    edx,0x4
  4a58c6:	8b c2                	mov    eax,edx
  4a58c8:	c1 e8 1f             	shr    eax,0x1f
  4a58cb:	03 d0                	add    edx,eax
  4a58cd:	3b da                	cmp    ebx,edx
  4a58cf:	73 28                	jae    0x4a58f9
  4a58d1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4a58d4:	8b 41 1c             	mov    eax,DWORD PTR [ecx+0x1c]
  4a58d7:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  4a58da:	03 c7                	add    eax,edi
  4a58dc:	03 cf                	add    ecx,edi
  4a58de:	83 c0 18             	add    eax,0x18
  4a58e1:	50                   	push   eax
  4a58e2:	83 c1 18             	add    ecx,0x18
  4a58e5:	51                   	push   ecx
  4a58e6:	ff 15 48 e5 4d 00    	call   DWORD PTR ds:0x4de548
  4a58ec:	83 c4 08             	add    esp,0x8
  4a58ef:	84 c0                	test   al,al
  4a58f1:	74 b0                	je     0x4a58a3
  4a58f3:	43                   	inc    ebx
  4a58f4:	83 c7 28             	add    edi,0x28
  4a58f7:	eb b7                	jmp    0x4a58b0
  4a58f9:	5f                   	pop    edi
  4a58fa:	5e                   	pop    esi
  4a58fb:	b0 01                	mov    al,0x1
  4a58fd:	5b                   	pop    ebx
  4a58fe:	5d                   	pop    ebp
  4a58ff:	c2 04 00             	ret    0x4
