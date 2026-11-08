; T4C Server.exe — Unit::VerifyTimers @0x0048D330 .. 0x0048D651 inclus
; Evidence complementaire, octets compares contre .text du binaire original.
; Note: ne prouve pas une cadence d appel ou la signification metier des callbacks.

0048d330 <.text+0x8c330>:
  48d330:	55                   	push   ebp
  48d331:	8b ec                	mov    ebp,esp
  48d333:	6a ff                	push   0xffffffff
  48d335:	68 80 a7 4d 00       	push   0x4da780
  48d33a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48d340:	50                   	push   eax
  48d341:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48d348:	83 ec 48             	sub    esp,0x48
  48d34b:	56                   	push   esi
  48d34c:	57                   	push   edi
  48d34d:	8b f9                	mov    edi,ecx
  48d34f:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  48d352:	8d 77 30             	lea    esi,[edi+0x30]
  48d355:	8b ce                	mov    ecx,esi
  48d357:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  48d35a:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  48d35d:	85 c0                	test   eax,eax
  48d35f:	0f 84 dd 02 00 00    	je     0x48d642
  48d365:	53                   	push   ebx
  48d366:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  48d369:	51                   	push   ecx
  48d36a:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  48d371:	c7 45 b0 ff ff ff ff 	mov    DWORD PTR [ebp-0x50],0xffffffff
  48d378:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  48d37e:	33 db                	xor    ebx,ebx
  48d380:	89 5d d0             	mov    DWORD PTR [ebp-0x30],ebx
  48d383:	89 5d d4             	mov    DWORD PTR [ebp-0x2c],ebx
  48d386:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx
  48d389:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
  48d38c:	c7 45 ac 3c f8 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df83c
  48d393:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  48d396:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48d39a:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
  48d39d:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48d3a3:	3b cb                	cmp    ecx,ebx
  48d3a5:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  48d3a8:	0f 84 40 02 00 00    	je     0x48d5ee
  48d3ae:	8b 11                	mov    edx,DWORD PTR [ecx]
  48d3b0:	ff 52 04             	call   DWORD PTR [edx+0x4]
  48d3b3:	8b 87 f4 00 00 00    	mov    eax,DWORD PTR [edi+0xf4]
  48d3b9:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  48d3bc:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48d3bf:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48d3c2:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  48d3c6:	8b 87 f4 00 00 00    	mov    eax,DWORD PTR [edi+0xf4]
  48d3cc:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48d3cf:	74 0a                	je     0x48d3db
  48d3d1:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48d3d4:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48d3d6:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48d3d9:	eb 07                	jmp    0x48d3e2
  48d3db:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  48d3e2:	39 58 20             	cmp    DWORD PTR [eax+0x20],ebx
  48d3e5:	0f 84 38 01 00 00    	je     0x48d523
  48d3eb:	8b 97 f4 00 00 00    	mov    edx,DWORD PTR [edi+0xf4]
  48d3f1:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  48d3f4:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  48d3f7:	39 5e 10             	cmp    DWORD PTR [esi+0x10],ebx
  48d3fa:	74 ca                	je     0x48d3c6
  48d3fc:	e8 8f 4e fe ff       	call   0x472290
  48d401:	39 46 10             	cmp    DWORD PTR [esi+0x10],eax
  48d404:	77 c0                	ja     0x48d3c6
  48d406:	39 5e 08             	cmp    DWORD PTR [esi+0x8],ebx
  48d409:	0f 84 04 01 00 00    	je     0x48d513
  48d40f:	56                   	push   esi
  48d410:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48d413:	e8 08 36 00 00       	call   0x490a20
  48d418:	8b 87 f4 00 00 00    	mov    eax,DWORD PTR [edi+0xf4]
  48d41e:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48d421:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  48d424:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  48d427:	ff 48 38             	dec    DWORD PTR [eax+0x38]
  48d42a:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48d42d:	3b ca                	cmp    ecx,edx
  48d42f:	74 5f                	je     0x48d490
  48d431:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  48d434:	74 56                	je     0x48d48c
  48d436:	8b 11                	mov    edx,DWORD PTR [ecx]
  48d438:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  48d43b:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  48d43e:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48d441:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48d444:	8b 09                	mov    ecx,DWORD PTR [ecx]
  48d446:	89 0a                	mov    DWORD PTR [edx],ecx
  48d448:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  48d44b:	83 f9 01             	cmp    ecx,0x1
  48d44e:	75 1a                	jne    0x48d46a
  48d450:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48d453:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  48d456:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48d459:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  48d45c:	50                   	push   eax
  48d45d:	e8 fe 4b fb ff       	call   0x442060
  48d462:	83 c4 04             	add    esp,0x4
  48d465:	e9 5c ff ff ff       	jmp    0x48d3c6
  48d46a:	83 f9 02             	cmp    ecx,0x2
  48d46d:	0f 85 8f 00 00 00    	jne    0x48d502
  48d473:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48d476:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48d478:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48d47b:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  48d47e:	50                   	push   eax
  48d47f:	e8 dc 4b fb ff       	call   0x442060
  48d484:	83 c4 04             	add    esp,0x4
  48d487:	e9 3a ff ff ff       	jmp    0x48d3c6
  48d48c:	3b ca                	cmp    ecx,edx
  48d48e:	75 33                	jne    0x48d4c3
  48d490:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  48d493:	74 33                	je     0x48d4c8
  48d495:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48d498:	89 1a                	mov    DWORD PTR [edx],ebx
  48d49a:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  48d49d:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48d4a0:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  48d4a3:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  48d4a6:	83 78 40 02          	cmp    DWORD PTR [eax+0x40],0x2
  48d4aa:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  48d4ad:	75 53                	jne    0x48d502
  48d4af:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48d4b2:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  48d4b5:	50                   	push   eax
  48d4b6:	e8 a5 4b fb ff       	call   0x442060
  48d4bb:	83 c4 04             	add    esp,0x4
  48d4be:	e9 03 ff ff ff       	jmp    0x48d3c6
  48d4c3:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  48d4c6:	75 2e                	jne    0x48d4f6
  48d4c8:	3b ca                	cmp    ecx,edx
  48d4ca:	74 2a                	je     0x48d4f6
  48d4cc:	8b 09                	mov    ecx,DWORD PTR [ecx]
  48d4ce:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  48d4d1:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  48d4d4:	8b 0a                	mov    ecx,DWORD PTR [edx]
  48d4d6:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  48d4d9:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  48d4dc:	83 78 40 01          	cmp    DWORD PTR [eax+0x40],0x1
  48d4e0:	75 20                	jne    0x48d502
  48d4e2:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48d4e5:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  48d4e8:	50                   	push   eax
  48d4e9:	e8 72 4b fb ff       	call   0x442060
  48d4ee:	83 c4 04             	add    esp,0x4
  48d4f1:	e9 d0 fe ff ff       	jmp    0x48d3c6
  48d4f6:	89 58 20             	mov    DWORD PTR [eax+0x20],ebx
  48d4f9:	89 58 24             	mov    DWORD PTR [eax+0x24],ebx
  48d4fc:	89 58 28             	mov    DWORD PTR [eax+0x28],ebx
  48d4ff:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48d502:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  48d505:	50                   	push   eax
  48d506:	e8 55 4b fb ff       	call   0x442060
  48d50b:	83 c4 04             	add    esp,0x4
  48d50e:	e9 b3 fe ff ff       	jmp    0x48d3c6
  48d513:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48d519:	e8 e2 30 00 00       	call   0x490600
  48d51e:	e9 a3 fe ff ff       	jmp    0x48d3c6
  48d523:	39 58 40             	cmp    DWORD PTR [eax+0x40],ebx
  48d526:	74 04                	je     0x48d52c
  48d528:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  48d52c:	89 58 40             	mov    DWORD PTR [eax+0x40],ebx
  48d52f:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48d535:	8b 11                	mov    edx,DWORD PTR [ecx]
  48d537:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48d53a:	8b 8f f4 00 00 00    	mov    ecx,DWORD PTR [edi+0xf4]
  48d540:	39 59 38             	cmp    DWORD PTR [ecx+0x38],ebx
  48d543:	75 10                	jne    0x48d555
  48d545:	3b cb                	cmp    ecx,ebx
  48d547:	74 06                	je     0x48d54f
  48d549:	8b 01                	mov    eax,DWORD PTR [ecx]
  48d54b:	6a 01                	push   0x1
  48d54d:	ff 10                	call   DWORD PTR [eax]
  48d54f:	89 9f f4 00 00 00    	mov    DWORD PTR [edi+0xf4],ebx
  48d555:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  48d558:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  48d55b:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  48d55e:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48d562:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  48d565:	3b cb                	cmp    ecx,ebx
  48d567:	74 0a                	je     0x48d573
  48d569:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  48d56c:	8b 02                	mov    eax,DWORD PTR [edx]
  48d56e:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48d571:	eb 0b                	jmp    0x48d57e
  48d573:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  48d576:	b9 01 00 00 00       	mov    ecx,0x1
  48d57b:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
  48d57e:	3b c3                	cmp    eax,ebx
  48d580:	74 5e                	je     0x48d5e0
  48d582:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  48d585:	3b f3                	cmp    esi,ebx
  48d587:	75 11                	jne    0x48d59a
  48d589:	68 38 de 50 00       	push   0x50de38
  48d58e:	6a 01                	push   0x1
  48d590:	e8 ab 47 fe ff       	call   0x471d40
  48d595:	83 c4 08             	add    esp,0x8
  48d598:	eb c8                	jmp    0x48d562
  48d59a:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  48d59d:	3b c3                	cmp    eax,ebx
  48d59f:	75 11                	jne    0x48d5b2
  48d5a1:	68 f4 dd 50 00       	push   0x50ddf4
  48d5a6:	6a 01                	push   0x1
  48d5a8:	e8 93 47 fe ff       	call   0x471d40
  48d5ad:	83 c4 08             	add    esp,0x8
  48d5b0:	eb b0                	jmp    0x48d562
  48d5b2:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  48d5b5:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  48d5b8:	53                   	push   ebx
  48d5b9:	51                   	push   ecx
  48d5ba:	53                   	push   ebx
  48d5bb:	53                   	push   ebx
  48d5bc:	57                   	push   edi
  48d5bd:	52                   	push   edx
  48d5be:	6a 05                	push   0x5
  48d5c0:	ff d0                	call   eax
  48d5c2:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  48d5c5:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  48d5c8:	53                   	push   ebx
  48d5c9:	50                   	push   eax
  48d5ca:	53                   	push   ebx
  48d5cb:	53                   	push   ebx
  48d5cc:	57                   	push   edi
  48d5cd:	51                   	push   ecx
  48d5ce:	6a 09                	push   0x9
  48d5d0:	ff 56 08             	call   DWORD PTR [esi+0x8]
  48d5d3:	83 c4 38             	add    esp,0x38
  48d5d6:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48d5d9:	e8 22 30 00 00       	call   0x490600
  48d5de:	eb 82                	jmp    0x48d562
  48d5e0:	3b cb                	cmp    ecx,ebx
  48d5e2:	74 04                	je     0x48d5e8
  48d5e4:	c6 45 e0 07          	mov    BYTE PTR [ebp-0x20],0x7
  48d5e8:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
  48d5eb:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  48d5ee:	8b 16                	mov    edx,DWORD PTR [esi]
  48d5f0:	8b ce                	mov    ecx,esi
  48d5f2:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48d5f5:	c7 45 ac 3c f8 4d 00 	mov    DWORD PTR [ebp-0x54],0x4df83c
  48d5fc:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
  48d5ff:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48d602:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  48d609:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
  48d60c:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  48d60f:	c6 45 e0 08          	mov    BYTE PTR [ebp-0x20],0x8
  48d613:	e8 b8 30 00 00       	call   0x4906d0
  48d618:	85 c0                	test   eax,eax
  48d61a:	5b                   	pop    ebx
  48d61b:	74 14                	je     0x48d631
  48d61d:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48d620:	e8 eb 2e 00 00       	call   0x490510
  48d625:	8d 4d ac             	lea    ecx,[ebp-0x54]
  48d628:	e8 a3 30 00 00       	call   0x4906d0
  48d62d:	85 c0                	test   eax,eax
  48d62f:	75 ec                	jne    0x48d61d
  48d631:	8d 4d b4             	lea    ecx,[ebp-0x4c]
  48d634:	51                   	push   ecx
  48d635:	c7 45 ac 8c e5 4d 00 	mov    DWORD PTR [ebp-0x54],0x4de58c
  48d63c:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  48d642:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48d645:	5f                   	pop    edi
  48d646:	5e                   	pop    esi
  48d647:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48d64e:	8b e5                	mov    esp,ebp
  48d650:	5d                   	pop    ebp
  48d651:	c3                   	ret
