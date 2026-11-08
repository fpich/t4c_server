; T4C Server 2003 / passe 9 / 2026-10-08
; SHA256 du binaire : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Source : objdump -D -Mintel (PE32, adresses virtuelles)
; Fichier explicatif : 29_RAPPORT_PASSE9_CHAINE_SQL_ASYNCHRONE.md


; === Soumission du lot depuis SaveCharacter: 0x00414a79-0x00414b24 ===

00414a79 <.text+0x13a79>:
  414a79:	39 5d 08             	cmp    DWORD PTR [ebp+0x8],ebx
  414a7c:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  414a7f:	8b 55 f0             	mov    edx,DWORD PTR [ebp-0x10]
  414a82:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  414a85:	74 4c                	je     0x414ad3
  414a87:	68 30 13 50 00       	push   0x501330
  414a8c:	68 00 08 00 00       	push   0x800
  414a91:	e8 aa d2 05 00       	call   0x471d40
  414a96:	83 c4 08             	add    esp,0x8
  414a99:	8d 45 08             	lea    eax,[ebp+0x8]
  414a9c:	50                   	push   eax
  414a9d:	8b ce                	mov    ecx,esi
  414a9f:	e8 ac 8f 00 00       	call   0x41da50
  414aa4:	8b 00                	mov    eax,DWORD PTR [eax]
  414aa6:	50                   	push   eax
  414aa7:	68 04 13 50 00       	push   0x501304
  414aac:	6a 04                	push   0x4
  414aae:	c6 45 fc 12          	mov    BYTE PTR [ebp-0x4],0x12
  414ab2:	e8 89 d2 05 00       	call   0x471d40
  414ab7:	83 c4 0c             	add    esp,0xc
  414aba:	8d 4d 08             	lea    ecx,[ebp+0x8]
  414abd:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  414ac1:	e8 7a cf 0b 00       	call   0x4d1a40
  414ac6:	68 f4 12 50 00       	push   0x5012f4
  414acb:	56                   	push   esi
  414acc:	68 a0 3c 41 00       	push   0x413ca0
  414ad1:	eb 46                	jmp    0x414b19
  414ad3:	68 cc 12 50 00       	push   0x5012cc
  414ad8:	68 00 08 00 00       	push   0x800
  414add:	e8 5e d2 05 00       	call   0x471d40
  414ae2:	83 c4 08             	add    esp,0x8
  414ae5:	8d 4d 08             	lea    ecx,[ebp+0x8]
  414ae8:	51                   	push   ecx
  414ae9:	8b ce                	mov    ecx,esi
  414aeb:	e8 60 8f 00 00       	call   0x41da50
  414af0:	8b 00                	mov    eax,DWORD PTR [eax]
  414af2:	50                   	push   eax
  414af3:	68 a0 12 50 00       	push   0x5012a0
  414af8:	6a 04                	push   0x4
  414afa:	c6 45 fc 13          	mov    BYTE PTR [ebp-0x4],0x13
  414afe:	e8 3d d2 05 00       	call   0x471d40
  414b03:	83 c4 0c             	add    esp,0xc
  414b06:	8d 4d 08             	lea    ecx,[ebp+0x8]
  414b09:	c6 45 fc 0f          	mov    BYTE PTR [ebp-0x4],0xf
  414b0d:	e8 2e cf 0b 00       	call   0x4d1a40
  414b12:	68 f4 12 50 00       	push   0x5012f4
  414b17:	56                   	push   esi
  414b18:	53                   	push   ebx
  414b19:	57                   	push   edi
  414b1a:	b9 78 14 51 00       	mov    ecx,0x511478
  414b1f:	e8 cc a6 03 00       	call   0x44f1f0

; === Callback de sauvegarde du personnage: 0x00413ca0-0x00413d42 ===

00413ca0 <.text+0x12ca0>:
  413ca0:	55                   	push   ebp
  413ca1:	8b ec                	mov    ebp,esp
  413ca3:	6a ff                	push   0xffffffff
  413ca5:	68 70 3a 4d 00       	push   0x4d3a70
  413caa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  413cb0:	50                   	push   eax
  413cb1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  413cb8:	51                   	push   ecx
  413cb9:	56                   	push   esi
  413cba:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  413cbd:	8d 45 0c             	lea    eax,[ebp+0xc]
  413cc0:	50                   	push   eax
  413cc1:	8b ce                	mov    ecx,esi
  413cc3:	e8 88 9d 00 00       	call   0x41da50
  413cc8:	8b 00                	mov    eax,DWORD PTR [eax]
  413cca:	50                   	push   eax
  413ccb:	68 80 12 50 00       	push   0x501280
  413cd0:	68 00 08 00 00       	push   0x800
  413cd5:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  413cdc:	e8 5f e0 05 00       	call   0x471d40
  413ce1:	83 c4 0c             	add    esp,0xc
  413ce4:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  413ce7:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  413cee:	e8 4d dd 0b 00       	call   0x4d1a40
  413cf3:	8d 4d f0             	lea    ecx,[ebp-0x10]
  413cf6:	51                   	push   ecx
  413cf7:	8b ce                	mov    ecx,esi
  413cf9:	e8 52 9d 00 00       	call   0x41da50
  413cfe:	8b 00                	mov    eax,DWORD PTR [eax]
  413d00:	50                   	push   eax
  413d01:	68 5c 12 50 00       	push   0x50125c
  413d06:	6a 04                	push   0x4
  413d08:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  413d0f:	e8 2c e0 05 00       	call   0x471d40
  413d14:	83 c4 0c             	add    esp,0xc
  413d17:	8d 4d f0             	lea    ecx,[ebp-0x10]
  413d1a:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  413d21:	e8 1a dd 0b 00       	call   0x4d1a40
  413d26:	8b 96 20 01 00 00    	mov    edx,DWORD PTR [esi+0x120]
  413d2c:	52                   	push   edx
  413d2d:	ff 15 2c e1 4d 00    	call   DWORD PTR ds:0x4de12c
  413d33:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  413d36:	5e                   	pop    esi
  413d37:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  413d3e:	8b e5                	mov    esp,ebp
  413d40:	5d                   	pop    ebp
  413d41:	c3                   	ret

; === Accesseur chaine 0x41DA50 - pas une transaction: 0x0041da50-0x0041da74 ===

0041da50 <.text+0x1ca50>:
  41da50:	55                   	push   ebp
  41da51:	8b ec                	mov    ebp,esp
  41da53:	51                   	push   ecx
  41da54:	56                   	push   esi
  41da55:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  41da58:	81 c1 5c 01 00 00    	add    ecx,0x15c
  41da5e:	51                   	push   ecx
  41da5f:	8b ce                	mov    ecx,esi
  41da61:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  41da68:	e8 df 3f 0b 00       	call   0x4d1a4c
  41da6d:	8b c6                	mov    eax,esi
  41da6f:	5e                   	pop    esi
  41da70:	8b e5                	mov    esp,ebp
  41da72:	5d                   	pop    ebp
  41da73:	c2               	ret    0x4

; === Construction du canal IOCP: 0x0044f1b0-0x0044f1e9 ===

0044f1b0 <.text+0x4e1b0>:
  44f1b0:	56                   	push   esi
  44f1b1:	8b f1                	mov    esi,ecx
  44f1b3:	8b 86 f8 01 00 00    	mov    eax,DWORD PTR [esi+0x1f8]
  44f1b9:	85 c0                	test   eax,eax
  44f1bb:	75 2b                	jne    0x44f1e8
  44f1bd:	6a 01                	push   0x1
  44f1bf:	6a 00                	push   0x0
  44f1c1:	6a 00                	push   0x0
  44f1c3:	6a ff                	push   0xffffffff
  44f1c5:	ff 15 08 e1 4d 00    	call   DWORD PTR ds:0x4de108
  44f1cb:	56                   	push   esi
  44f1cc:	6a 00                	push   0x0
  44f1ce:	68 60 f2 44 00       	push   0x44f260
  44f1d3:	89 86 fc 01 00 00    	mov    DWORD PTR [esi+0x1fc],eax
  44f1d9:	ff 15 58 e3 4d 00    	call   DWORD PTR ds:0x4de358
  44f1df:	83 c4 0c             	add    esp,0xc
  44f1e2:	89 86 f8 01 00 00    	mov    DWORD PTR [esi+0x1f8],eax
  44f1e8:	5e                   	pop    esi

; === Post du travail (IOCP): 0x0044f1f0-0x0044f233 ===

0044f1f0 <.text+0x4e1f0>:
  44f1f0:	55                   	push   ebp
  44f1f1:	8b ec                	mov    ebp,esp
  44f1f3:	56                   	push   esi
  44f1f4:	8b f1                	mov    esi,ecx
  44f1f6:	e8 b5 ff ff ff       	call   0x44f1b0
  44f1fb:	6a 10                	push   0x10
  44f1fd:	e8 ee 2d ff ff       	call   0x441ff0
  44f202:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44f205:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  44f208:	83 c4 04             	add    esp,0x4
  44f20b:	6a 00                	push   0x0
  44f20d:	89 08                	mov    DWORD PTR [eax],ecx
  44f20f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  44f212:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  44f215:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  44f218:	50                   	push   eax
  44f219:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  44f21c:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  44f21f:	8b 86 fc 01 00 00    	mov    eax,DWORD PTR [esi+0x1fc]
  44f225:	6a 00                	push   0x0
  44f227:	50                   	push   eax
  44f228:	ff 15 0c e1 4d 00    	call   DWORD PTR ds:0x4de10c
  44f22e:	5e                   	pop    esi
  44f22f:	5d                   	pop    ebp
  44f230:	c2 10 00             	ret    0x10

; === Worker: reception et execution SQL: 0x0044f260-0x0044f450 ===

0044f260 <.text+0x4e260>:
  44f260:	55                   	push   ebp
  44f261:	8b ec                	mov    ebp,esp
  44f263:	6a ff                	push   0xffffffff
  44f265:	68 c8 69 4d 00       	push   0x4d69c8
  44f26a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  44f270:	50                   	push   eax
  44f271:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  44f278:	83 ec 60             	sub    esp,0x60
  44f27b:	53                   	push   ebx
  44f27c:	56                   	push   esi
  44f27d:	8b 35 14 e1 4d 00    	mov    esi,DWORD PTR ds:0x4de114
  44f283:	57                   	push   edi
  44f284:	ff d6                	call   esi
  44f286:	50                   	push   eax
  44f287:	68 a4 5d 50 00       	push   0x505da4
  44f28c:	6a 04                	push   0x4
  44f28e:	e8 ad 2a 02 00       	call   0x471d40
  44f293:	83 c4 0c             	add    esp,0xc
  44f296:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  44f299:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
  44f2a0:	e8 7b 44 fe ff       	call   0x433720
  44f2a5:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  44f2ac:	ff d6                	call   esi
  44f2ae:	50                   	push   eax
  44f2af:	68 e0 93 04 00       	push   0x493e0
  44f2b4:	51                   	push   ecx
  44f2b5:	8b cc                	mov    ecx,esp
  44f2b7:	89 65 dc             	mov    DWORD PTR [ebp-0x24],esp
  44f2ba:	68 94 5d 50 00       	push   0x505d94
  44f2bf:	e8 a0 27 08 00       	call   0x4d1a64
  44f2c4:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  44f2c7:	8b 87 f8 01 00 00    	mov    eax,DWORD PTR [edi+0x1f8]
  44f2cd:	50                   	push   eax
  44f2ce:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  44f2d1:	e8 0a 45 fe ff       	call   0x4337e0
  44f2d6:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f2d9:	e8 80 27 08 00       	call   0x4d1a5e
  44f2de:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  44f2e1:	85 c0                	test   eax,eax
  44f2e3:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  44f2e7:	0f 85 44 04 00 00    	jne    0x44f731
  44f2ed:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  44f2f0:	e8 8b 46 fe ff       	call   0x433980
  44f2f5:	68 c4 09 00 00       	push   0x9c4
  44f2fa:	8d 4d d8             	lea    ecx,[ebp-0x28]
  44f2fd:	51                   	push   ecx
  44f2fe:	8b 8f fc 01 00 00    	mov    ecx,DWORD PTR [edi+0x1fc]
  44f304:	8d 55 e0             	lea    edx,[ebp-0x20]
  44f307:	52                   	push   edx
  44f308:	8d 45 e4             	lea    eax,[ebp-0x1c]
  44f30b:	50                   	push   eax
  44f30c:	51                   	push   ecx
  44f30d:	ff 15 10 e1 4d 00    	call   DWORD PTR ds:0x4de110
  44f313:	85 c0                	test   eax,eax
  44f315:	0f 84 d4 03 00 00    	je     0x44f6ef
  44f31b:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  44f31e:	e8 7d 46 fe ff       	call   0x4339a0
  44f323:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  44f326:	85 c0                	test   eax,eax
  44f328:	0f 85 03 04 00 00    	jne    0x44f731
  44f32e:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  44f331:	8b 30                	mov    esi,DWORD PTR [eax]
  44f333:	8b cf                	mov    ecx,edi
  44f335:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  44f338:	33 db                	xor    ebx,ebx
  44f33a:	e8 41 f6 ff ff       	call   0x44e980
  44f33f:	e8 ac a8 03 00       	call   0x489bf0
  44f344:	8b 56 24             	mov    edx,DWORD PTR [esi+0x24]
  44f347:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  44f34a:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  44f34d:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  44f350:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44f354:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  44f357:	85 c0                	test   eax,eax
  44f359:	74 0a                	je     0x44f365
  44f35b:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44f35e:	8b 08                	mov    ecx,DWORD PTR [eax]
  44f360:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  44f363:	eb 07                	jmp    0x44f36c
  44f365:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44f36c:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  44f36f:	85 c0                	test   eax,eax
  44f371:	0f 84 d7 00 00 00    	je     0x44f44e
  44f377:	85 db                	test   ebx,ebx
  44f379:	0f 85 e1 00 00 00    	jne    0x44f460
  44f37f:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  44f382:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f385:	e8 16 27 08 00       	call   0x4d1aa0
  44f38a:	8d 55 cc             	lea    edx,[ebp-0x34]
  44f38d:	52                   	push   edx
  44f38e:	ff 15 00 e3 4d 00    	call   DWORD PTR ds:0x4de300
  44f394:	83 c4 04             	add    esp,0x4
  44f397:	50                   	push   eax
  44f398:	8d 45 f0             	lea    eax,[ebp-0x10]
  44f39b:	50                   	push   eax
  44f39c:	e8 f3 26 08 00       	call   0x4d1a94
  44f3a1:	83 c4 08             	add    esp,0x8
  44f3a4:	68 90 5d 50 00       	push   0x505d90
  44f3a9:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3ac:	e8 a1 26 08 00       	call   0x4d1a52
  44f3b1:	83 c7 04             	add    edi,0x4
  44f3b4:	57                   	push   edi
  44f3b5:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3b8:	e8 fb 26 08 00       	call   0x4d1ab8
  44f3bd:	68 90 5d 50 00       	push   0x505d90
  44f3c2:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3c5:	e8 88 26 08 00       	call   0x4d1a52
  44f3ca:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  44f3cd:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  44f3d0:	52                   	push   edx
  44f3d1:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3d4:	e8 79 26 08 00       	call   0x4d1a52
  44f3d9:	68 e0 31 50 00       	push   0x5031e0
  44f3de:	8d 4d f0             	lea    ecx,[ebp-0x10]
  44f3e1:	e8 6c 26 08 00       	call   0x4d1a52
  44f3e6:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f3ec:	e8 bf 05 00 00       	call   0x44f9b0
  44f3f1:	51                   	push   ecx
  44f3f2:	8d 45 f0             	lea    eax,[ebp-0x10]
  44f3f5:	8b cc                	mov    ecx,esp
  44f3f7:	89 65 d4             	mov    DWORD PTR [ebp-0x2c],esp
  44f3fa:	50                   	push   eax
  44f3fb:	e8 4c 26 08 00       	call   0x4d1a4c
  44f400:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f406:	e8 b5 04 00 00       	call   0x44f8c0
  44f40b:	8b 0d f4 42 51 00    	mov    ecx,DWORD PTR ds:0x5142f4
  44f411:	e8 ea 05 00 00       	call   0x44fa00
  44f416:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  44f419:	51                   	push   ecx
  44f41a:	68 84 5d 50 00       	push   0x505d84
  44f41f:	68 00 08 00 00       	push   0x800
  44f424:	e8 17 29 02 00       	call   0x471d40
  44f429:	8b 3f                	mov    edi,DWORD PTR [edi]
  44f42b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44f42e:	83 c4 0c             	add    esp,0xc
  44f431:	53                   	push   ebx
  44f432:	57                   	push   edi
  44f433:	e8 48 f9 ff ff       	call   0x44ed80
  44f438:	85 c0                	test   eax,eax
  44f43a:	75 05                	jne    0x44f441
  44f43c:	bb 01 00 00 00       	mov    ebx,0x1
  44f441:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  44f444:	e8 67 45 fe ff       	call   0x4339b0
  44f449:	e9 06 ff ff ff       	jmp    0x44f354
  44f44e:	8b 46              	mov    eax,DWORD PTR [esi+0x40]

; === Worker: commit/rollback/callback: 0x0044f4a1-0x0044f5c8 ===

0044f4a1 <.text+0x4e4a1>:
  44f4a1:	3b df                	cmp    ebx,edi
  44f4a3:	0f 84 00 01 00 00    	je     0x44f5a9
  44f4a9:	6a 06                	push   0x6
  44f4ab:	e8 60 28 02 00       	call   0x471d10
  44f4b0:	83 c4 04             	add    esp,0x4
  44f4b3:	85 c0                	test   eax,eax
  44f4b5:	0f 84 d4 00 00 00    	je     0x44f58f
  44f4bb:	6a 06                	push   0x6
  44f4bd:	e8 4e 28 02 00       	call   0x471d10
  44f4c2:	83 c4 04             	add    esp,0x4
  44f4c5:	8b c8                	mov    ecx,eax
  44f4c7:	e8 14 f6 07 00       	call   0x4ceae0
  44f4cc:	a8 08                	test   al,0x8
  44f4ce:	0f 84 bb 00 00 00    	je     0x44f58f
  44f4d4:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44f4d7:	e8 82 25 08 00       	call   0x4d1a5e
  44f4dc:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  44f4df:	50                   	push   eax
  44f4e0:	8d 55 ec             	lea    edx,[ebp-0x14]
  44f4e3:	68 30 5d 50 00       	push   0x505d30
  44f4e8:	52                   	push   edx
  44f4e9:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  44f4ed:	e8 a2 25 08 00       	call   0x4d1a94
  44f4f2:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  44f4f5:	83 c4 0c             	add    esp,0xc
  44f4f8:	50                   	push   eax
  44f4f9:	6a 08                	push   0x8
  44f4fb:	e8 40 28 02 00       	call   0x471d40
  44f500:	83 c4 08             	add    esp,0x8
  44f503:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44f506:	e8 95 25 08 00       	call   0x4d1aa0
  44f50b:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  44f50e:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  44f511:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  44f514:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  44f518:	39 7e 40             	cmp    DWORD PTR [esi+0x40],edi
  44f51b:	74 0a                	je     0x44f527
  44f51d:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  44f520:	8b 02                	mov    eax,DWORD PTR [edx]
  44f522:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  44f525:	eb 07                	jmp    0x44f52e
  44f527:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  44f52e:	39 7e 20             	cmp    DWORD PTR [esi+0x20],edi
  44f531:	74 44                	je     0x44f577
  44f533:	68 2c 5d 50 00       	push   0x505d2c
  44f538:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44f53b:	e8 12 25 08 00       	call   0x4d1a52
  44f540:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  44f543:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  44f546:	83 c2 04             	add    edx,0x4
  44f549:	52                   	push   edx
  44f54a:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44f54d:	e8 66 25 08 00       	call   0x4d1ab8
  44f552:	68 28 5d 50 00       	push   0x505d28
  44f557:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44f55a:	e8 f3 24 08 00       	call   0x4d1a52
  44f55f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  44f562:	50                   	push   eax
  44f563:	6a 08                	push   0x8
  44f565:	e8 d6 27 02 00       	call   0x471d40
  44f56a:	83 c4 08             	add    esp,0x8
  44f56d:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44f570:	e8 2b 25 08 00       	call   0x4d1aa0
  44f575:	eb a1                	jmp    0x44f518
  44f577:	39 7e 40             	cmp    DWORD PTR [esi+0x40],edi
  44f57a:	74 04                	je     0x44f580
  44f57c:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  44f580:	8d 4d ec             	lea    ecx,[ebp-0x14]
  44f583:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  44f586:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  44f58a:	e8 b1 24 08 00       	call   0x4d1a40
  44f58f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44f592:	e8 a9 f7 ff ff       	call   0x44ed40
  44f597:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  44f59a:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  44f59d:	3b c7                	cmp    eax,edi
  44f59f:	74 26                	je     0x44f5c7
  44f5a1:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  44f5a4:	51                   	push   ecx
  44f5a5:	6a 01                	push   0x1
  44f5a7:	eb 19                	jmp    0x44f5c2
  44f5a9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  44f5ac:	e8 6f f7 ff ff       	call   0x44ed20
  44f5b1:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  44f5b4:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  44f5b7:	3b c7                	cmp    eax,edi
  44f5b9:	74 0c                	je     0x44f5c7
  44f5bb:	8b ca                	mov    ecx,edx
  44f5bd:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  44f5c0:	52                   	push   edx
  44f5c1:	57                   	push   edi
  44f5c2:	ff d0                	call   eax
  44f5c4:	83 c4 08             	add    esp,0x8
  44f5c7:	8b               	mov    eax,DWORD PTR [esi+0x24]

; === Wrapper SQLExecDirect: 0x0044ed80-0x0044edb0 ===

0044ed80 <.text+0x4dd80>:
  44ed80:	55                   	push   ebp
  44ed81:	8b ec                	mov    ebp,esp
  44ed83:	81 ec d8 00 00 00    	sub    esp,0xd8
  44ed89:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  44ed8c:	53                   	push   ebx
  44ed8d:	56                   	push   esi
  44ed8e:	57                   	push   edi
  44ed8f:	6a fd                	push   0xfffffffd
  44ed91:	8b f1                	mov    esi,ecx
  44ed93:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  44ed96:	50                   	push   eax
  44ed97:	51                   	push   ecx
  44ed98:	e8 d5 f6 07 00       	call   0x4ce472
  44ed9d:	66 85 c0             	test   ax,ax
  44eda0:	66 89 06             	mov    WORD PTR [esi],ax
  44eda3:	75 0e                	jne    0x44edb3
  44eda5:	5f                   	pop    edi
  44eda6:	5e                   	pop    esi
  44eda7:	b8 01 00 00 00       	mov    eax,0x1
  44edac:	5b                   	pop    ebx
  44edad:	8b e5                	mov    esp,ebp
  44edaf:	5d                   	pop    ebp

; === Wrapper SQLTransact - commit: 0x0044ed20-0x0044ed36 ===

0044ed20 <.text+0x4dd20>:
  44ed20:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  44ed23:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  44ed26:	6a 00                	push   0x0
  44ed28:	50                   	push   eax
  44ed29:	51                   	push   ecx
  44ed2a:	e8 49 f7 07 00       	call   0x4ce478
  44ed2f:	66 f7 d8             	neg    ax
  44ed32:	1b c0                	sbb    eax,eax
  44ed34:	40                   	inc    eax
  44ed35:	c3                   	ret

; === Wrapper SQLTransact - rollback: 0x0044ed40-0x0044ed56 ===

0044ed40 <.text+0x4dd40>:
  44ed40:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  44ed43:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  44ed46:	6a 01                	push   0x1
  44ed48:	50                   	push   eax
  44ed49:	51                   	push   ecx
  44ed4a:	e8 29 f7 07 00       	call   0x4ce478
  44ed4f:	66 f7 d8             	neg    ax
  44ed52:	1b c0                	sbb    eax,eax
  44ed54:	40                   	inc    eax
  44ed55:	c3                   	ret

; === Fin du worker - signalisation: 0x0044f6ed-0x0044f735 ===

0044f6ed <.text+0x4e6ed>:
  44f6ed:	eb 37                	jmp    0x44f726
  44f6ef:	8b 87 d4 01 00 00    	mov    eax,DWORD PTR [edi+0x1d4]
  44f6f5:	85 c0                	test   eax,eax
  44f6f7:	74 25                	je     0x44f71e
  44f6f9:	a1 ac 46 51 00       	mov    eax,ds:0x5146ac
  44f6fe:	85 c0                	test   eax,eax
  44f700:	7e 16                	jle    0x44f718
  44f702:	68 fc 5c 50 00       	push   0x505cfc
  44f707:	6a 04                	push   0x4
  44f709:	e8 32 26 02 00       	call   0x471d40
  44f70e:	83 c4 08             	add    esp,0x8
  44f711:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
  44f718:	ff 05 ac 46 51 00    	inc    DWORD PTR ds:0x5146ac
  44f71e:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  44f721:	e8 7a 42 fe ff       	call   0x4339a0
  44f726:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  44f729:	85 c0                	test   eax,eax
  44f72b:	0f 84 bc fb ff ff    	je     0x44f2ed
  44f731:	8d 4d 94             	lea    ecx,[ebp-0x6c]
  44f734:	e8           	call   0x4338a0
