; Passe 29 — T4C Server.exe — code statique désassemblé avec objdump, octets à vérifier contre la section .text
; Les tableaux .rdata et adresses de vtables sont documentés dans les TSV, hors .text.

; Unit::SendUnitMessage | Aiguillage des messages (1 à 28) vers les méthodes de la définition statique | [0x0048B150, 0x0048B5F5)
  48b150:	55                   	push   ebp
  48b151:	8b ec                	mov    ebp,esp
  48b153:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48b159:	6a ff                	push   0xffffffff
  48b15b:	68 88 a6 4d 00       	push   0x4da688
  48b160:	50                   	push   eax
  48b161:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48b168:	53                   	push   ebx
  48b169:	56                   	push   esi
  48b16a:	8b f1                	mov    esi,ecx
  48b16c:	8b 46 74             	mov    eax,DWORD PTR [esi+0x74]
  48b16f:	3d ff ff 00 00       	cmp    eax,0xffff
  48b174:	57                   	push   edi
  48b175:	76 15                	jbe    0x48b18c
  48b177:	33 c0                	xor    eax,eax
  48b179:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b17c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48b183:	5f                   	pop    edi
  48b184:	5e                   	pop    esi
  48b185:	5b                   	pop    ebx
  48b186:	8b e5                	mov    esp,ebp
  48b188:	5d                   	pop    ebp
  48b189:	c2 18 00             	ret    0x18
  48b18c:	8b 0c 85 f4 63 51 00 	mov    ecx,DWORD PTR [eax*4+0x5163f4]
  48b193:	85 c9                	test   ecx,ecx
  48b195:	0f 84 de 03 00 00    	je     0x48b579
  48b19b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  48b19e:	49                   	dec    ecx
  48b19f:	83 f9 1b             	cmp    ecx,0x1b
  48b1a2:	c6 46 72 00          	mov    BYTE PTR [esi+0x72],0x0
  48b1a6:	0f 87 34 04 00 00    	ja     0x48b5e0
  48b1ac:	ff 24 8d f8 b5 48 00 	jmp    DWORD PTR [ecx*4+0x48b5f8]
  48b1b3:	8b 8e fc 00 00 00    	mov    ecx,DWORD PTR [esi+0xfc]
  48b1b9:	83 f9 01             	cmp    ecx,0x1
  48b1bc:	72 15                	jb     0x48b1d3
  48b1be:	33 c0                	xor    eax,eax
  48b1c0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b1c3:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48b1ca:	5f                   	pop    edi
  48b1cb:	5e                   	pop    esi
  48b1cc:	5b                   	pop    ebx
  48b1cd:	8b e5                	mov    esp,ebp
  48b1cf:	5d                   	pop    ebp
  48b1d0:	c2 18 00             	ret    0x18
  48b1d3:	41                   	inc    ecx
  48b1d4:	89 8e fc 00 00 00    	mov    DWORD PTR [esi+0xfc],ecx
  48b1da:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b1dd:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b1e4:	8b 10                	mov    edx,DWORD PTR [eax]
  48b1e6:	51                   	push   ecx
  48b1e7:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b1ea:	51                   	push   ecx
  48b1eb:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b1ee:	51                   	push   ecx
  48b1ef:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b1f2:	51                   	push   ecx
  48b1f3:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b1f6:	51                   	push   ecx
  48b1f7:	8b c8                	mov    ecx,eax
  48b1f9:	ff 12                	call   DWORD PTR [edx]
  48b1fb:	ff 8e fc 00 00 00    	dec    DWORD PTR [esi+0xfc]
  48b201:	eb 73                	jmp    0x48b276
  48b203:	8b 8e fc 00 00 00    	mov    ecx,DWORD PTR [esi+0xfc]
  48b209:	83 f9 01             	cmp    ecx,0x1
  48b20c:	72 15                	jb     0x48b223
  48b20e:	33 c0                	xor    eax,eax
  48b210:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b213:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48b21a:	5f                   	pop    edi
  48b21b:	5e                   	pop    esi
  48b21c:	5b                   	pop    ebx
  48b21d:	8b e5                	mov    esp,ebp
  48b21f:	5d                   	pop    ebp
  48b220:	c2 18 00             	ret    0x18
  48b223:	41                   	inc    ecx
  48b224:	89 8e fc 00 00 00    	mov    DWORD PTR [esi+0xfc],ecx
  48b22a:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b22d:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b234:	8b 10                	mov    edx,DWORD PTR [eax]
  48b236:	51                   	push   ecx
  48b237:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b23a:	51                   	push   ecx
  48b23b:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b23e:	51                   	push   ecx
  48b23f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b242:	51                   	push   ecx
  48b243:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b246:	51                   	push   ecx
  48b247:	8b c8                	mov    ecx,eax
  48b249:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48b24c:	ff 8e fc 00 00 00    	dec    DWORD PTR [esi+0xfc]
  48b252:	eb 22                	jmp    0x48b276
  48b254:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b257:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b25e:	8b 10                	mov    edx,DWORD PTR [eax]
  48b260:	51                   	push   ecx
  48b261:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b264:	51                   	push   ecx
  48b265:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b268:	51                   	push   ecx
  48b269:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b26c:	51                   	push   ecx
  48b26d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b270:	51                   	push   ecx
  48b271:	8b c8                	mov    ecx,eax
  48b273:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48b276:	b8 01 00 00 00       	mov    eax,0x1
  48b27b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b27e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48b285:	5f                   	pop    edi
  48b286:	5e                   	pop    esi
  48b287:	5b                   	pop    ebx
  48b288:	8b e5                	mov    esp,ebp
  48b28a:	5d                   	pop    ebp
  48b28b:	c2 18 00             	ret    0x18
  48b28e:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b291:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b298:	8b 10                	mov    edx,DWORD PTR [eax]
  48b29a:	51                   	push   ecx
  48b29b:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b29e:	51                   	push   ecx
  48b29f:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b2a2:	51                   	push   ecx
  48b2a3:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b2a6:	51                   	push   ecx
  48b2a7:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b2aa:	51                   	push   ecx
  48b2ab:	8b c8                	mov    ecx,eax
  48b2ad:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  48b2b0:	eb c4                	jmp    0x48b276
  48b2b2:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b2b5:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b2bc:	8b 10                	mov    edx,DWORD PTR [eax]
  48b2be:	51                   	push   ecx
  48b2bf:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b2c2:	51                   	push   ecx
  48b2c3:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b2c6:	51                   	push   ecx
  48b2c7:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b2ca:	51                   	push   ecx
  48b2cb:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b2ce:	51                   	push   ecx
  48b2cf:	8b c8                	mov    ecx,eax
  48b2d1:	ff 52 10             	call   DWORD PTR [edx+0x10]
  48b2d4:	eb a0                	jmp    0x48b276
  48b2d6:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b2d9:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b2e0:	8b 10                	mov    edx,DWORD PTR [eax]
  48b2e2:	51                   	push   ecx
  48b2e3:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b2e6:	51                   	push   ecx
  48b2e7:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b2ea:	51                   	push   ecx
  48b2eb:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b2ee:	51                   	push   ecx
  48b2ef:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b2f2:	51                   	push   ecx
  48b2f3:	8b c8                	mov    ecx,eax
  48b2f5:	ff 52 14             	call   DWORD PTR [edx+0x14]
  48b2f8:	e9 79 ff ff ff       	jmp    0x48b276
  48b2fd:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b300:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b307:	8b 10                	mov    edx,DWORD PTR [eax]
  48b309:	51                   	push   ecx
  48b30a:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b30d:	51                   	push   ecx
  48b30e:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b311:	51                   	push   ecx
  48b312:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b315:	51                   	push   ecx
  48b316:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b319:	51                   	push   ecx
  48b31a:	8b c8                	mov    ecx,eax
  48b31c:	ff 52 18             	call   DWORD PTR [edx+0x18]
  48b31f:	e9 52 ff ff ff       	jmp    0x48b276
  48b324:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b327:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b32e:	8b 10                	mov    edx,DWORD PTR [eax]
  48b330:	51                   	push   ecx
  48b331:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b334:	51                   	push   ecx
  48b335:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b338:	51                   	push   ecx
  48b339:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b33c:	51                   	push   ecx
  48b33d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b340:	51                   	push   ecx
  48b341:	8b c8                	mov    ecx,eax
  48b343:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  48b346:	e9 2b ff ff ff       	jmp    0x48b276
  48b34b:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b34e:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b355:	8b 10                	mov    edx,DWORD PTR [eax]
  48b357:	51                   	push   ecx
  48b358:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b35b:	51                   	push   ecx
  48b35c:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b35f:	51                   	push   ecx
  48b360:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b363:	51                   	push   ecx
  48b364:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b367:	51                   	push   ecx
  48b368:	8b c8                	mov    ecx,eax
  48b36a:	ff 52 20             	call   DWORD PTR [edx+0x20]
  48b36d:	e9 04 ff ff ff       	jmp    0x48b276
  48b372:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b375:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b37c:	8b 10                	mov    edx,DWORD PTR [eax]
  48b37e:	51                   	push   ecx
  48b37f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b382:	51                   	push   ecx
  48b383:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b386:	51                   	push   ecx
  48b387:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b38a:	51                   	push   ecx
  48b38b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b38e:	51                   	push   ecx
  48b38f:	8b c8                	mov    ecx,eax
  48b391:	ff 52 24             	call   DWORD PTR [edx+0x24]
  48b394:	e9 dd fe ff ff       	jmp    0x48b276
  48b399:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b39c:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b3a3:	8b 10                	mov    edx,DWORD PTR [eax]
  48b3a5:	51                   	push   ecx
  48b3a6:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b3a9:	51                   	push   ecx
  48b3aa:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b3ad:	51                   	push   ecx
  48b3ae:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b3b1:	51                   	push   ecx
  48b3b2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b3b5:	51                   	push   ecx
  48b3b6:	8b c8                	mov    ecx,eax
  48b3b8:	ff 52 28             	call   DWORD PTR [edx+0x28]
  48b3bb:	e9 b6 fe ff ff       	jmp    0x48b276
  48b3c0:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b3c3:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b3ca:	8b 10                	mov    edx,DWORD PTR [eax]
  48b3cc:	51                   	push   ecx
  48b3cd:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b3d0:	51                   	push   ecx
  48b3d1:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b3d4:	51                   	push   ecx
  48b3d5:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b3d8:	51                   	push   ecx
  48b3d9:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b3dc:	51                   	push   ecx
  48b3dd:	8b c8                	mov    ecx,eax
  48b3df:	ff 52 2c             	call   DWORD PTR [edx+0x2c]
  48b3e2:	e9 8f fe ff ff       	jmp    0x48b276
  48b3e7:	8b 8e fc 00 00 00    	mov    ecx,DWORD PTR [esi+0xfc]
  48b3ed:	83 f9 01             	cmp    ecx,0x1
  48b3f0:	72 15                	jb     0x48b407
  48b3f2:	33 c0                	xor    eax,eax
  48b3f4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b3f7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48b3fe:	5f                   	pop    edi
  48b3ff:	5e                   	pop    esi
  48b400:	5b                   	pop    ebx
  48b401:	8b e5                	mov    esp,ebp
  48b403:	5d                   	pop    ebp
  48b404:	c2 18 00             	ret    0x18
  48b407:	41                   	inc    ecx
  48b408:	89 8e fc 00 00 00    	mov    DWORD PTR [esi+0xfc],ecx
  48b40e:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b411:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b418:	8b 10                	mov    edx,DWORD PTR [eax]
  48b41a:	51                   	push   ecx
  48b41b:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b41e:	51                   	push   ecx
  48b41f:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b422:	51                   	push   ecx
  48b423:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b426:	51                   	push   ecx
  48b427:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b42a:	51                   	push   ecx
  48b42b:	8b c8                	mov    ecx,eax
  48b42d:	ff 52 30             	call   DWORD PTR [edx+0x30]
  48b430:	ff 8e fc 00 00 00    	dec    DWORD PTR [esi+0xfc]
  48b436:	e9 3b fe ff ff       	jmp    0x48b276
  48b43b:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b43e:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b445:	8b 10                	mov    edx,DWORD PTR [eax]
  48b447:	51                   	push   ecx
  48b448:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b44b:	51                   	push   ecx
  48b44c:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b44f:	51                   	push   ecx
  48b450:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b453:	51                   	push   ecx
  48b454:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b457:	51                   	push   ecx
  48b458:	8b c8                	mov    ecx,eax
  48b45a:	ff 52 38             	call   DWORD PTR [edx+0x38]
  48b45d:	e9 14 fe ff ff       	jmp    0x48b276
  48b462:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b465:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b46c:	8b 10                	mov    edx,DWORD PTR [eax]
  48b46e:	51                   	push   ecx
  48b46f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b472:	51                   	push   ecx
  48b473:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b476:	51                   	push   ecx
  48b477:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b47a:	51                   	push   ecx
  48b47b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b47e:	51                   	push   ecx
  48b47f:	8b c8                	mov    ecx,eax
  48b481:	ff 52 3c             	call   DWORD PTR [edx+0x3c]
  48b484:	e9 ed fd ff ff       	jmp    0x48b276
  48b489:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b48c:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b493:	8b 10                	mov    edx,DWORD PTR [eax]
  48b495:	51                   	push   ecx
  48b496:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b499:	51                   	push   ecx
  48b49a:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b49d:	51                   	push   ecx
  48b49e:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b4a1:	51                   	push   ecx
  48b4a2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b4a5:	51                   	push   ecx
  48b4a6:	8b c8                	mov    ecx,eax
  48b4a8:	ff 52 48             	call   DWORD PTR [edx+0x48]
  48b4ab:	e9 c6 fd ff ff       	jmp    0x48b276
  48b4b0:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b4b3:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b4ba:	8b 10                	mov    edx,DWORD PTR [eax]
  48b4bc:	51                   	push   ecx
  48b4bd:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b4c0:	51                   	push   ecx
  48b4c1:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b4c4:	51                   	push   ecx
  48b4c5:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b4c8:	51                   	push   ecx
  48b4c9:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b4cc:	51                   	push   ecx
  48b4cd:	8b c8                	mov    ecx,eax
  48b4cf:	ff 52 4c             	call   DWORD PTR [edx+0x4c]
  48b4d2:	e9 9f fd ff ff       	jmp    0x48b276
  48b4d7:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b4da:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b4e1:	8b 10                	mov    edx,DWORD PTR [eax]
  48b4e3:	51                   	push   ecx
  48b4e4:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b4e7:	51                   	push   ecx
  48b4e8:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b4eb:	51                   	push   ecx
  48b4ec:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b4ef:	51                   	push   ecx
  48b4f0:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b4f3:	51                   	push   ecx
  48b4f4:	8b c8                	mov    ecx,eax
  48b4f6:	ff 52 50             	call   DWORD PTR [edx+0x50]
  48b4f9:	e9 78 fd ff ff       	jmp    0x48b276
  48b4fe:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b501:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b508:	8b 10                	mov    edx,DWORD PTR [eax]
  48b50a:	51                   	push   ecx
  48b50b:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b50e:	51                   	push   ecx
  48b50f:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b512:	51                   	push   ecx
  48b513:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b516:	51                   	push   ecx
  48b517:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b51a:	51                   	push   ecx
  48b51b:	8b c8                	mov    ecx,eax
  48b51d:	ff 52 54             	call   DWORD PTR [edx+0x54]
  48b520:	e9 51 fd ff ff       	jmp    0x48b276
  48b525:	8b 8e fc 00 00 00    	mov    ecx,DWORD PTR [esi+0xfc]
  48b52b:	83 f9 01             	cmp    ecx,0x1
  48b52e:	72 15                	jb     0x48b545
  48b530:	33 c0                	xor    eax,eax
  48b532:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b535:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48b53c:	5f                   	pop    edi
  48b53d:	5e                   	pop    esi
  48b53e:	5b                   	pop    ebx
  48b53f:	8b e5                	mov    esp,ebp
  48b541:	5d                   	pop    ebp
  48b542:	c2 18 00             	ret    0x18
  48b545:	41                   	inc    ecx
  48b546:	89 8e fc 00 00 00    	mov    DWORD PTR [esi+0xfc],ecx
  48b54c:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b54f:	8b 04 85 f4 63 51 00 	mov    eax,DWORD PTR [eax*4+0x5163f4]
  48b556:	8b 10                	mov    edx,DWORD PTR [eax]
  48b558:	51                   	push   ecx
  48b559:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  48b55c:	51                   	push   ecx
  48b55d:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  48b560:	51                   	push   ecx
  48b561:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  48b564:	51                   	push   ecx
  48b565:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48b568:	51                   	push   ecx
  48b569:	8b c8                	mov    ecx,eax
  48b56b:	ff 52 34             	call   DWORD PTR [edx+0x34]
  48b56e:	ff 8e fc 00 00 00    	dec    DWORD PTR [esi+0xfc]
  48b574:	e9 fd fc ff ff       	jmp    0x48b276
  48b579:	8a 46 73             	mov    al,BYTE PTR [esi+0x73]
  48b57c:	3c 04                	cmp    al,0x4
  48b57e:	0f 84 f2 fc ff ff    	je     0x48b276
  48b584:	84 c0                	test   al,al
  48b586:	0f 84 ea fc ff ff    	je     0x48b276
  48b58c:	50                   	push   eax
  48b58d:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  48b590:	89 45 1c             	mov    DWORD PTR [ebp+0x1c],eax
  48b593:	58                   	pop    eax
  48b594:	8a 5e 73             	mov    bl,BYTE PTR [esi+0x73]
  48b597:	8b 3e                	mov    edi,DWORD PTR [esi]
  48b599:	e8 c2 24 fb ff       	call   0x43da60
  48b59e:	8d 55 18             	lea    edx,[ebp+0x18]
  48b5a1:	8b ce                	mov    ecx,esi
  48b5a3:	50                   	push   eax
  48b5a4:	52                   	push   edx
  48b5a5:	ff 57 48             	call   DWORD PTR [edi+0x48]
  48b5a8:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  48b5ab:	8b 56 74             	mov    edx,DWORD PTR [esi+0x74]
  48b5ae:	8b 00                	mov    eax,DWORD PTR [eax]
  48b5b0:	51                   	push   ecx
  48b5b1:	52                   	push   edx
  48b5b2:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  48b5b5:	0f be cb             	movsx  ecx,bl
  48b5b8:	51                   	push   ecx
  48b5b9:	50                   	push   eax
  48b5ba:	52                   	push   edx
  48b5bb:	68 30 dc 50 00       	push   0x50dc30
  48b5c0:	6a 04                	push   0x4
  48b5c2:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48b5c9:	e8 72 67 fe ff       	call   0x471d40
  48b5ce:	83 c4 1c             	add    esp,0x1c
  48b5d1:	8d 4d 18             	lea    ecx,[ebp+0x18]
  48b5d4:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48b5db:	e8 60 64 04 00       	call   0x4d1a40
  48b5e0:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48b5e3:	5f                   	pop    edi
  48b5e4:	5e                   	pop    esi
  48b5e5:	33 c0                	xor    eax,eax
  48b5e7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48b5ee:	5b                   	pop    ebx
  48b5ef:	8b e5                	mov    esp,ebp
  48b5f1:	5d                   	pop    ebp
  48b5f2:	c2 18 00             	ret    0x18

; Character::SendUnitMessage | Surcharge restreinte observée pour un type de message | [0x0041DD60, 0x0041DD7B)
  41dd60:	55                   	push   ebp
  41dd61:	8b ec                	mov    ebp,esp
  41dd63:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  41dd66:	33 c0                	xor    eax,eax
  41dd68:	83 fa 14             	cmp    edx,0x14
  41dd6b:	75 0a                	jne    0x41dd77
  41dd6d:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  41dd70:	89 08                	mov    DWORD PTR [eax],ecx
  41dd72:	b8 01 00 00 00       	mov    eax,0x1
  41dd77:	5d                   	pop    ebp
  41dd78:	c2 18 00             	ret    0x18

; ObjectStructure::OnDisturbed | Message 3, traitement des effets associés | [0x0044D0D0, 0x0044D206)
  44d0d0:	55                   	push   ebp
  44d0d1:	8b ec                	mov    ebp,esp
  44d0d3:	83 ec 20             	sub    esp,0x20
  44d0d6:	53                   	push   ebx
  44d0d7:	56                   	push   esi
  44d0d8:	57                   	push   edi
  44d0d9:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44d0dc:	8b 07                	mov    eax,DWORD PTR [edi]
  44d0de:	8b f1                	mov    esi,ecx
  44d0e0:	6a 00                	push   0x0
  44d0e2:	6a 1b                	push   0x1b
  44d0e4:	8b cf                	mov    ecx,edi
  44d0e6:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  44d0e9:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  44d0ec:	8b 96 c0 01 00 00    	mov    edx,DWORD PTR [esi+0x1c0]
  44d0f2:	81 c6 c0 01 00 00    	add    esi,0x1c0
  44d0f8:	8b ce                	mov    ecx,esi
  44d0fa:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  44d0fd:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44d100:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44d103:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  44d106:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  44d109:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  44d10c:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44d113:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44d117:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44d11a:	85 c0                	test   eax,eax
  44d11c:	74 0a                	je     0x44d128
  44d11e:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  44d121:	8b 11                	mov    edx,DWORD PTR [ecx]
  44d123:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  44d126:	eb 07                	jmp    0x44d12f
  44d128:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44d12f:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44d132:	85 c0                	test   eax,eax
  44d134:	0f 84 80 00 00 00    	je     0x44d1ba
  44d13a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  44d13d:	8b 88 e0 01 00 00    	mov    ecx,DWORD PTR [eax+0x1e0]
  44d143:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  44d146:	66 83 78 02 03       	cmp    WORD PTR [eax+0x2],0x3
  44d14b:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  44d14e:	75 c7                	jne    0x44d117
  44d150:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44d153:	85 c0                	test   eax,eax
  44d155:	74 4e                	je     0x44d1a5
  44d157:	85 db                	test   ebx,ebx
  44d159:	75 0a                	jne    0x44d165
  44d15b:	8b 17                	mov    edx,DWORD PTR [edi]
  44d15d:	8d 45 ec             	lea    eax,[ebp-0x14]
  44d160:	50                   	push   eax
  44d161:	8b cf                	mov    ecx,edi
  44d163:	eb 08                	jmp    0x44d16d
  44d165:	8b 13                	mov    edx,DWORD PTR [ebx]
  44d167:	8d 45 e0             	lea    eax,[ebp-0x20]
  44d16a:	50                   	push   eax
  44d16b:	8b cb                	mov    ecx,ebx
  44d16d:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  44d170:	8b 10                	mov    edx,DWORD PTR [eax]
  44d172:	83 ec 0c             	sub    esp,0xc
  44d175:	8b cc                	mov    ecx,esp
  44d177:	89 11                	mov    DWORD PTR [ecx],edx
  44d179:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  44d17c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  44d17f:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  44d182:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  44d185:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44d188:	33 d2                	xor    edx,edx
  44d18a:	66 8b 11             	mov    dx,WORD PTR [ecx]
  44d18d:	53                   	push   ebx
  44d18e:	57                   	push   edi
  44d18f:	53                   	push   ebx
  44d190:	52                   	push   edx
  44d191:	e8 ca 43 01 00       	call   0x461560
  44d196:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44d199:	83 c4 1c             	add    esp,0x1c
  44d19c:	48                   	dec    eax
  44d19d:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  44d1a0:	e9 72 ff ff ff       	jmp    0x44d117
  44d1a5:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  44d1a8:	8b 01                	mov    eax,DWORD PTR [ecx]
  44d1aa:	6a 00                	push   0x0
  44d1ac:	6a 00                	push   0x0
  44d1ae:	53                   	push   ebx
  44d1af:	6a 00                	push   0x0
  44d1b1:	53                   	push   ebx
  44d1b2:	ff 50 24             	call   DWORD PTR [eax+0x24]
  44d1b5:	e9 5d ff ff ff       	jmp    0x44d117
  44d1ba:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44d1bd:	85 c0                	test   eax,eax
  44d1bf:	74 04                	je     0x44d1c5
  44d1c1:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44d1c5:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44d1cc:	8b 16                	mov    edx,DWORD PTR [esi]
  44d1ce:	8b ce                	mov    ecx,esi
  44d1d0:	ff 52 08             	call   DWORD PTR [edx+0x8]
  44d1d3:	8b cf                	mov    ecx,edi
  44d1d5:	e8 56 01 04 00       	call   0x48d330
  44d1da:	53                   	push   ebx
  44d1db:	57                   	push   edi
  44d1dc:	6a 00                	push   0x0
  44d1de:	6a 03                	push   0x3
  44d1e0:	8b cf                	mov    ecx,edi
  44d1e2:	e8 29 ff 03 00       	call   0x48d110
  44d1e7:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
  44d1ea:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44d1ed:	3b c1                	cmp    eax,ecx
  44d1ef:	74 0e                	je     0x44d1ff
  44d1f1:	85 c0                	test   eax,eax
  44d1f3:	7e 0a                	jle    0x44d1ff
  44d1f5:	8b 07                	mov    eax,DWORD PTR [edi]
  44d1f7:	51                   	push   ecx
  44d1f8:	6a 1b                	push   0x1b
  44d1fa:	8b cf                	mov    ecx,edi
  44d1fc:	ff 50 04             	call   DWORD PTR [eax+0x4]
  44d1ff:	5f                   	pop    edi
  44d200:	5e                   	pop    esi
  44d201:	5b                   	pop    ebx
  44d202:	8b e5                	mov    esp,ebp
  44d204:	5d                   	pop    ebp
  44d205:	c2               	ret    0x14

; ObjectStructure::OnUse | Message 4, activation conditionnelle des sorts | [0x0044D2E0, 0x0044D3F5)
  44d2e0:	55                   	push   ebp
  44d2e1:	8b ec                	mov    ebp,esp
  44d2e3:	83 ec 18             	sub    esp,0x18
  44d2e6:	53                   	push   ebx
  44d2e7:	56                   	push   esi
  44d2e8:	57                   	push   edi
  44d2e9:	8b f1                	mov    esi,ecx
  44d2eb:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44d2ee:	8b 01                	mov    eax,DWORD PTR [ecx]
  44d2f0:	6a 00                	push   0x0
  44d2f2:	6a 1b                	push   0x1b
  44d2f4:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
  44d2f7:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  44d2fa:	8b 96 c0 01 00 00    	mov    edx,DWORD PTR [esi+0x1c0]
  44d300:	81 c6 c0 01 00 00    	add    esi,0x1c0
  44d306:	8b ce                	mov    ecx,esi
  44d308:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  44d30b:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  44d30e:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44d311:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  44d314:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  44d317:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  44d31a:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44d321:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44d325:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44d328:	85 c0                	test   eax,eax
  44d32a:	74 0a                	je     0x44d336
  44d32c:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  44d32f:	8b 11                	mov    edx,DWORD PTR [ecx]
  44d331:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  44d334:	eb 07                	jmp    0x44d33d
  44d336:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44d33d:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44d340:	85 c0                	test   eax,eax
  44d342:	74 76                	je     0x44d3ba
  44d344:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
  44d347:	8b 88 e0 01 00 00    	mov    ecx,DWORD PTR [eax+0x1e0]
  44d34d:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
  44d350:	66 83 7b 02 04       	cmp    WORD PTR [ebx+0x2],0x4
  44d355:	75 ce                	jne    0x44d325
  44d357:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  44d35a:	85 c0                	test   eax,eax
  44d35c:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  44d35f:	c7 02 01 00 00 00    	mov    DWORD PTR [edx],0x1
  44d365:	74 3e                	je     0x44d3a5
  44d367:	8b 07                	mov    eax,DWORD PTR [edi]
  44d369:	8d 4d e8             	lea    ecx,[ebp-0x18]
  44d36c:	51                   	push   ecx
  44d36d:	8b cf                	mov    ecx,edi
  44d36f:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  44d372:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  44d375:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  44d378:	83 ec 0c             	sub    esp,0xc
  44d37b:	8b d4                	mov    edx,esp
  44d37d:	89 02                	mov    DWORD PTR [edx],eax
  44d37f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  44d382:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  44d385:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44d388:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  44d38b:	33 d2                	xor    edx,edx
  44d38d:	66 8b 13             	mov    dx,WORD PTR [ebx]
  44d390:	57                   	push   edi
  44d391:	51                   	push   ecx
  44d392:	57                   	push   edi
  44d393:	52                   	push   edx
  44d394:	e8 c7 41 01 00       	call   0x461560
  44d399:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  44d39c:	83 c4 1c             	add    esp,0x1c
  44d39f:	48                   	dec    eax
  44d3a0:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  44d3a3:	eb 80                	jmp    0x44d325
  44d3a5:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  44d3a8:	8b 01                	mov    eax,DWORD PTR [ecx]
  44d3aa:	6a 00                	push   0x0
  44d3ac:	6a 00                	push   0x0
  44d3ae:	57                   	push   edi
  44d3af:	6a 00                	push   0x0
  44d3b1:	57                   	push   edi
  44d3b2:	ff 50 24             	call   DWORD PTR [eax+0x24]
  44d3b5:	e9 6b ff ff ff       	jmp    0x44d325
  44d3ba:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44d3bd:	85 c0                	test   eax,eax
  44d3bf:	74 04                	je     0x44d3c5
  44d3c1:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44d3c5:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  44d3cc:	8b 16                	mov    edx,DWORD PTR [esi]
  44d3ce:	8b ce                	mov    ecx,esi
  44d3d0:	ff 52 08             	call   DWORD PTR [edx+0x8]
  44d3d3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  44d3d6:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  44d3d9:	3b c8                	cmp    ecx,eax
  44d3db:	74 0f                	je     0x44d3ec
  44d3dd:	85 c9                	test   ecx,ecx
  44d3df:	7e 0b                	jle    0x44d3ec
  44d3e1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44d3e4:	8b 11                	mov    edx,DWORD PTR [ecx]
  44d3e6:	50                   	push   eax
  44d3e7:	6a 1b                	push   0x1b
  44d3e9:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44d3ec:	5f                   	pop    edi
  44d3ed:	5e                   	pop    esi
  44d3ee:	5b                   	pop    ebx
  44d3ef:	8b e5                	mov    esp,ebp
  44d3f1:	5d                   	pop    ebp
  44d3f2:	c2 14 00             	ret    0x14

; Objects::GetQty | Accès direct au champ quantité | [0x0044C3F0, 0x0044C3F7)
  44c3f0:	8b 81 04 01 00 00    	mov    eax,DWORD PTR [ecx+0x104]
  44c3f6:	c3                   	ret

; Objects::Remove | Décrément contrôlé de la quantité | [0x0044C4A0, 0x0044C4FA)
  44c4a0:	55                   	push   ebp
  44c4a1:	8b ec                	mov    ebp,esp
  44c4a3:	56                   	push   esi
  44c4a4:	8b f1                	mov    esi,ecx
  44c4a6:	8b 86 04 01 00 00    	mov    eax,DWORD PTR [esi+0x104]
  44c4ac:	57                   	push   edi
  44c4ad:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44c4b0:	3b c7                	cmp    eax,edi
  44c4b2:	72 11                	jb     0x44c4c5
  44c4b4:	e8 47 00 00 00       	call   0x44c500
  44c4b9:	84 c0                	test   al,al
  44c4bb:	75 08                	jne    0x44c4c5
  44c4bd:	29 be 04 01 00 00    	sub    DWORD PTR [esi+0x104],edi
  44c4c3:	eb 0a                	jmp    0x44c4cf
  44c4c5:	c7 86 04 01 00 00 00 	mov    DWORD PTR [esi+0x104],0x0
  44c4cc:	00 00 00 
  44c4cf:	8b ce                	mov    ecx,esi
  44c4d1:	e8 2a 00 00 00       	call   0x44c500
  44c4d6:	84 c0                	test   al,al
  44c4d8:	75 1a                	jne    0x44c4f4
  44c4da:	8b 06                	mov    eax,DWORD PTR [esi]
  44c4dc:	6a 00                	push   0x0
  44c4de:	6a 1b                	push   0x1b
  44c4e0:	8b ce                	mov    ecx,esi
  44c4e2:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  44c4e5:	85 c0                	test   eax,eax
  44c4e7:	7c 0b                	jl     0x44c4f4
  44c4e9:	8b 16                	mov    edx,DWORD PTR [esi]
  44c4eb:	6a 01                	push   0x1
  44c4ed:	6a 1b                	push   0x1b
  44c4ef:	8b ce                	mov    ecx,esi
  44c4f1:	ff 52 04             	call   DWORD PTR [edx+0x4]
  44c4f4:	5f                   	pop    edi
  44c4f5:	5e                   	pop    esi
  44c4f6:	5d                   	pop    ebp
  44c4f7:	c2 04 00             	ret    0x4

; Objects::IsUnique | Lecture du drapeau interne +0x108 | [0x0044C500, 0x0044C507)
  44c500:	8a 81 08 01 00 00    	mov    al,BYTE PTR [ecx+0x108]
  44c506:	c3                   	ret

; Unit::DeleteUnit | Décroissance du compteur de références +0x5c | [0x0048AF10, 0x0048B002)
  48af10:	55                   	push   ebp
  48af11:	8b ec                	mov    ebp,esp
  48af13:	6a ff                	push   0xffffffff
  48af15:	68 68 a6 4d 00       	push   0x4da668
  48af1a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48af20:	50                   	push   eax
  48af21:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48af28:	51                   	push   ecx
  48af29:	a0 a8 63 51 00       	mov    al,ds:0x5163a8
  48af2e:	a8 01                	test   al,0x1
  48af30:	56                   	push   esi
  48af31:	8b f1                	mov    esi,ecx
  48af33:	75 33                	jne    0x48af68
  48af35:	0c 01                	or     al,0x1
  48af37:	68 90 63 51 00       	push   0x516390
  48af3c:	a2 a8 63 51 00       	mov    ds:0x5163a8,al
  48af41:	c7 05 88 63 51 00 8c 	mov    DWORD PTR ds:0x516388,0x4de58c
  48af48:	e5 4d 00 
  48af4b:	c7 05 8c 63 51 00 ff 	mov    DWORD PTR ds:0x51638c,0xffffffff
  48af52:	ff ff ff 
  48af55:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  48af5b:	68 10 b0 48 00       	push   0x48b010
  48af60:	e8 a6 6d 04 00       	call   0x4d1d0b
  48af65:	83 c4 04             	add    esp,0x4
  48af68:	a1 88 63 51 00       	mov    eax,ds:0x516388
  48af6d:	b9 88 63 51 00       	mov    ecx,0x516388
  48af72:	c7 45 f0 88 63 51 00 	mov    DWORD PTR [ebp-0x10],0x516388
  48af79:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48af7c:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  48af7f:	48                   	dec    eax
  48af80:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48af87:	89 46 5c             	mov    DWORD PTR [esi+0x5c],eax
  48af8a:	75 51                	jne    0x48afdd
  48af8c:	8b 16                	mov    edx,DWORD PTR [esi]
  48af8e:	6a 00                	push   0x0
  48af90:	6a 00                	push   0x0
  48af92:	6a 00                	push   0x0
  48af94:	6a 00                	push   0x0
  48af96:	56                   	push   esi
  48af97:	6a 09                	push   0x9
  48af99:	8b ce                	mov    ecx,esi
  48af9b:	ff 52 24             	call   DWORD PTR [edx+0x24]
  48af9e:	85 f6                	test   esi,esi
  48afa0:	74 0a                	je     0x48afac
  48afa2:	8b 06                	mov    eax,DWORD PTR [esi]
  48afa4:	6a 00                	push   0x0
  48afa6:	8b ce                	mov    ecx,esi
  48afa8:	ff 10                	call   DWORD PTR [eax]
  48afaa:	eb 02                	jmp    0x48afae
  48afac:	33 c0                	xor    eax,eax
  48afae:	50                   	push   eax
  48afaf:	e8 ac 70 fb ff       	call   0x442060
  48afb4:	8b 15 88 63 51 00    	mov    edx,DWORD PTR ds:0x516388
  48afba:	83 c4 04             	add    esp,0x4
  48afbd:	b9 88 63 51 00       	mov    ecx,0x516388
  48afc2:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48afc9:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48afcc:	b0 01                	mov    al,0x1
  48afce:	5e                   	pop    esi
  48afcf:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48afd2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48afd9:	8b e5                	mov    esp,ebp
  48afdb:	5d                   	pop    ebp
  48afdc:	c3                   	ret
  48afdd:	a1 88 63 51 00       	mov    eax,ds:0x516388
  48afe2:	b9 88 63 51 00       	mov    ecx,0x516388
  48afe7:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48afee:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48aff1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48aff4:	32 c0                	xor    al,al
  48aff6:	5e                   	pop    esi
  48aff7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48affe:	8b e5                	mov    esp,ebp
  48b000:	5d                   	pop    ebp
  48b001:	c3                   	ret
