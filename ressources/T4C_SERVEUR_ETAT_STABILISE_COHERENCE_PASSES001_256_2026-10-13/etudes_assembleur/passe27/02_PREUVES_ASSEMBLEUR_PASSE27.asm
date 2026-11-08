# PREUVES ASSEMBLEUR — PASSE 27

# Source : objdump -d -M intel sur T4C Server(1).exe (PE32 x86)
# Les adresses et les octets des lignes sont controlés contre la section .text par le mesureur historique.
# ATTENTION : plages sélectionnées de fonctions, pas désassemblage intégral de tous leurs appelants.


# Chargement du groupe, extraction de ObjectID, recherche et insertion : 0x49f213 .. 0x49f400


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0049f213 <.text+0x9e213>:
  49f213:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  49f216:	50                   	push   eax
  49f217:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f21d:	e8 5c 29 03 00       	call   0x4d1b7e
  49f222:	53                   	push   ebx
  49f223:	68 78 ef 50 00       	push   0x50ef78
  49f228:	6a 04                	push   0x4
  49f22a:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f230:	c6 45 fc 16          	mov    BYTE PTR [ebp-0x4],0x16
  49f234:	e8 3f 29 03 00       	call   0x4d1b78
  49f239:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f23f:	e8 22 29 03 00       	call   0x4d1b66
  49f244:	85 c0                	test   eax,eax
  49f246:	0f 85 b4 01 00 00    	jne    0x49f400
  49f24c:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f252:	e8 09 29 03 00       	call   0x4d1b60
  49f257:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f25d:	e8 04 29 03 00       	call   0x4d1b66
  49f262:	85 c0                	test   eax,eax
  49f264:	0f 85 96 01 00 00    	jne    0x49f400
  49f26a:	8d 4d b8             	lea    ecx,[ebp-0x48]
  49f26d:	51                   	push   ecx
  49f26e:	e8 e7 28 03 00       	call   0x4d1b5a
  49f273:	8d 55 b8             	lea    edx,[ebp-0x48]
  49f276:	52                   	push   edx
  49f277:	68 00 f3 50 00       	push   0x50f300
  49f27c:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f282:	c6 45 fc 17          	mov    BYTE PTR [ebp-0x4],0x17
  49f286:	e8 e7 28 03 00       	call   0x4d1b72
  49f28b:	8a 45 0f             	mov    al,BYTE PTR [ebp+0xf]
  49f28e:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
  49f291:	53                   	push   ebx
  49f292:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49f295:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
  49f298:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  49f29e:	83 c9 ff             	or     ecx,0xffffffff
  49f2a1:	33 c0                	xor    eax,eax
  49f2a3:	8b fe                	mov    edi,esi
  49f2a5:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  49f2a7:	f7 d1                	not    ecx
  49f2a9:	49                   	dec    ecx
  49f2aa:	51                   	push   ecx
  49f2ab:	56                   	push   esi
  49f2ac:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49f2af:	ff 15 f4 e4 4d 00    	call   DWORD PTR ds:0x4de4f4
  49f2b5:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49f2b8:	51                   	push   ecx
  49f2b9:	8d 4d d0             	lea    ecx,[ebp-0x30]
  49f2bc:	c6 45 fc 18          	mov    BYTE PTR [ebp-0x4],0x18
  49f2c0:	e8 2b 27 00 00       	call   0x4a19f0
  49f2c5:	3b 45 d4             	cmp    eax,DWORD PTR [ebp-0x2c]
  49f2c8:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  49f2cb:	74 1a                	je     0x49f2e7
  49f2cd:	83 c0 0c             	add    eax,0xc
  49f2d0:	50                   	push   eax
  49f2d1:	8d 55 e4             	lea    edx,[ebp-0x1c]
  49f2d4:	52                   	push   edx
  49f2d5:	ff 15 18 e5 4d 00    	call   DWORD PTR ds:0x4de518
  49f2db:	83 c4 08             	add    esp,0x8
  49f2de:	84 c0                	test   al,al
  49f2e0:	75 05                	jne    0x49f2e7
  49f2e2:	8d 45 e0             	lea    eax,[ebp-0x20]
  49f2e5:	eb 09                	jmp    0x49f2f0
  49f2e7:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
  49f2ea:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  49f2ed:	8d 45 dc             	lea    eax,[ebp-0x24]
  49f2f0:	8b 38                	mov    edi,DWORD PTR [eax]
  49f2f2:	3b 7d d4             	cmp    edi,DWORD PTR [ebp-0x2c]
  49f2f5:	89 7d e0             	mov    DWORD PTR [ebp-0x20],edi
  49f2f8:	0f 84 c7 00 00 00    	je     0x49f3c5
  49f2fe:	8b 4f 1c             	mov    ecx,DWORD PTR [edi+0x1c]
  49f301:	8b 75 cc             	mov    esi,DWORD PTR [ebp-0x34]
  49f304:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  49f307:	8b c1                	mov    eax,ecx
  49f309:	c1 e0 04             	shl    eax,0x4
  49f30c:	03 c1                	add    eax,ecx
  49f30e:	c1 e0 04             	shl    eax,0x4
  49f311:	03 c2                	add    eax,edx
  49f313:	83 c0 34             	add    eax,0x34
  49f316:	50                   	push   eax
  49f317:	8d 55 e4             	lea    edx,[ebp-0x1c]
  49f31a:	52                   	push   edx
  49f31b:	ff 15 28 e5 4d 00    	call   DWORD PTR ds:0x4de528
  49f321:	83 c4 08             	add    esp,0x8
  49f324:	84 c0                	test   al,al
  49f326:	74 34                	je     0x49f35c
  49f328:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  49f32b:	3b c3                	cmp    eax,ebx
  49f32d:	75 05                	jne    0x49f334
  49f32f:	a1 d8 e4 4d 00       	mov    eax,ds:0x4de4d8
  49f334:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  49f337:	8b 39                	mov    edi,DWORD PTR [ecx]
  49f339:	50                   	push   eax
  49f33a:	8d 95 6c f6 ff ff    	lea    edx,[ebp-0x994]
  49f340:	68 48 ef 50 00       	push   0x50ef48
  49f345:	52                   	push   edx
  49f346:	e8 f5 45 f6 ff       	call   0x403940
  49f34b:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  49f34e:	83 c4 0c             	add    esp,0xc
  49f351:	50                   	push   eax
  49f352:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  49f355:	50                   	push   eax
  49f356:	ff 57 04             	call   DWORD PTR [edi+0x4]
  49f359:	8b 7d e0             	mov    edi,DWORD PTR [ebp-0x20]
  49f35c:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  49f35f:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  49f362:	51                   	push   ecx
  49f363:	52                   	push   edx
  49f364:	8d 8d 7c fe ff ff    	lea    ecx,[ebp-0x184]
  49f36a:	e8 a1 62 00 00       	call   0x4a5610
  49f36f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  49f372:	50                   	push   eax
  49f373:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f379:	51                   	push   ecx
  49f37a:	8d 8d 7c fe ff ff    	lea    ecx,[ebp-0x184]
  49f380:	c6 45 fc 19          	mov    BYTE PTR [ebp-0x4],0x19
  49f384:	e8 87 65 00 00       	call   0x4a5910
  49f389:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  49f38c:	8b 47 1c             	mov    eax,DWORD PTR [edi+0x1c]
  49f38f:	8b f0                	mov    esi,eax
  49f391:	c1 e6 04             	shl    esi,0x4
  49f394:	03 f0                	add    esi,eax
  49f396:	8d 95 7c fe ff ff    	lea    edx,[ebp-0x184]
  49f39c:	52                   	push   edx
  49f39d:	c1 e6 04             	shl    esi,0x4
  49f3a0:	51                   	push   ecx
  49f3a1:	03 f1                	add    esi,ecx
  49f3a3:	54                   	push   esp
  49f3a4:	8b ce                	mov    ecx,esi
  49f3a6:	e8 d5 06 00 00       	call   0x49fa80
  49f3ab:	8d 45 c8             	lea    eax,[ebp-0x38]
  49f3ae:	50                   	push   eax
  49f3af:	8b ce                	mov    ecx,esi
  49f3b1:	e8 2a 08 00 00       	call   0x49fbe0
  49f3b6:	8d 8d 7c fe ff ff    	lea    ecx,[ebp-0x184]
  49f3bc:	c6 45 fc 18          	mov    BYTE PTR [ebp-0x4],0x18
  49f3c0:	e8 bb 62 00 00       	call   0x4a5680
  49f3c5:	6a 01                	push   0x1
  49f3c7:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  49f3ca:	c6 45 fc 17          	mov    BYTE PTR [ebp-0x4],0x17
  49f3ce:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  49f3d4:	8d 4d b8             	lea    ecx,[ebp-0x48]
  49f3d7:	51                   	push   ecx
  49f3d8:	c6 45 fc 16          	mov    BYTE PTR [ebp-0x4],0x16
  49f3dc:	ff 15 18 e4 4d 00    	call   DWORD PTR ds:0x4de418
  49f3e2:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f3e8:	e8 67 27 03 00       	call   0x4d1b54
  49f3ed:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f3f3:	e8 6e 27 03 00       	call   0x4d1b66
  49f3f8:	85 c0                	test   eax,eax
  49f3fa:	0f 84 6a fe ff ff    	je     0x49f26a


# Fin de la boucle de groupes et transition vers Objects_AttrBoosts : 0x49f400 .. 0x49f490


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0049f400 <.text+0x9e400>:
  49f400:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f406:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  49f409:	e8 5e 27 03 00       	call   0x4d1b6c
  49f40e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  49f411:	52                   	push   edx
  49f412:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f418:	e8 61 27 03 00       	call   0x4d1b7e
  49f41d:	53                   	push   ebx
  49f41e:	68 24 ef 50 00       	push   0x50ef24
  49f423:	6a 04                	push   0x4
  49f425:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f42b:	c6 45 fc 1a          	mov    BYTE PTR [ebp-0x4],0x1a
  49f42f:	e8 44 27 03 00       	call   0x4d1b78
  49f434:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f43a:	e8 27 27 03 00       	call   0x4d1b66
  49f43f:	85 c0                	test   eax,eax
  49f441:	0f 85 38 02 00 00    	jne    0x49f67f
  49f447:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f44d:	e8 0e 27 03 00       	call   0x4d1b60
  49f452:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f458:	e8 09 27 03 00       	call   0x4d1b66
  49f45d:	85 c0                	test   eax,eax
  49f45f:	0f 85 1a 02 00 00    	jne    0x49f67f
  49f465:	8d 45 b8             	lea    eax,[ebp-0x48]
  49f468:	50                   	push   eax
  49f469:	e8 ec 26 03 00       	call   0x4d1b5a
  49f46e:	8d 4d b8             	lea    ecx,[ebp-0x48]
  49f471:	51                   	push   ecx
  49f472:	68 00 f3 50 00       	push   0x50f300
  49f477:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f47d:	c6 45 fc 1b          	mov    BYTE PTR [ebp-0x4],0x1b
  49f481:	e8 ec 26 03 00       	call   0x4d1b72
  49f486:	8a 55 0f             	mov    dl,BYTE PTR [ebp+0xf]
  49f489:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
  49f48c:	53                   	push   ebx
  49f48d:	8d 4d e4             	lea    ecx,[ebp-0x1c]


# Chargement detaille de Objects_ContainerItems, filtre par groupe : 0x4a5910 .. 0x4a5a8e


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004a5910 <.text+0xa4910>:
  4a5910:	55                   	push   ebp
  4a5911:	8b ec                	mov    ebp,esp
  4a5913:	6a ff                	push   0xffffffff
  4a5915:	68 0b bb 4d 00       	push   0x4dbb0b
  4a591a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a5920:	50                   	push   eax
  4a5921:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a5928:	81 ec d0 08 00 00    	sub    esp,0x8d0
  4a592e:	53                   	push   ebx
  4a592f:	56                   	push   esi
  4a5930:	57                   	push   edi
  4a5931:	8d 45 e4             	lea    eax,[ebp-0x1c]
  4a5934:	50                   	push   eax
  4a5935:	8b f1                	mov    esi,ecx
  4a5937:	e8 1e c2 02 00       	call   0x4d1b5a
  4a593c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4a593f:	8b 11                	mov    edx,DWORD PTR [ecx]
  4a5941:	8d 45 e4             	lea    eax,[ebp-0x1c]
  4a5944:	50                   	push   eax
  4a5945:	68 78 f3 50 00       	push   0x50f378
  4a594a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4a5951:	ff 52 4c             	call   DWORD PTR [edx+0x4c]
  4a5954:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4a5957:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a595a:	50                   	push   eax
  4a595b:	8d 95 24 f7 ff ff    	lea    edx,[ebp-0x8dc]
  4a5961:	68 ec f3 50 00       	push   0x50f3ec
  4a5966:	c6 85 24 f7 ff ff 00 	mov    BYTE PTR [ebp-0x8dc],0x0
  4a596d:	8b 19                	mov    ebx,DWORD PTR [ecx]
  4a596f:	52                   	push   edx
  4a5970:	8b f8                	mov    edi,eax
  4a5972:	e8 c9 df f5 ff       	call   0x403940
  4a5977:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a597a:	83 c4 0c             	add    esp,0xc
  4a597d:	50                   	push   eax
  4a597e:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  4a5981:	50                   	push   eax
  4a5982:	ff 53 04             	call   DWORD PTR [ebx+0x4]
  4a5985:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  4a5988:	53                   	push   ebx
  4a5989:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a598f:	e8 ea c1 02 00       	call   0x4d1b7e
  4a5994:	6a 00                	push   0x0
  4a5996:	57                   	push   edi
  4a5997:	8d 8d 24 f7 ff ff    	lea    ecx,[ebp-0x8dc]
  4a599d:	68 ac f3 50 00       	push   0x50f3ac
  4a59a2:	51                   	push   ecx
  4a59a3:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4a59a7:	e8 94 df f5 ff       	call   0x403940
  4a59ac:	83 c4 0c             	add    esp,0xc
  4a59af:	50                   	push   eax
  4a59b0:	6a 04                	push   0x4
  4a59b2:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a59b8:	e8 bb c1 02 00       	call   0x4d1b78
  4a59bd:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a59c3:	e8 9e c1 02 00       	call   0x4d1b66
  4a59c8:	85 c0                	test   eax,eax
  4a59ca:	0f 85 81 00 00 00    	jne    0x4a5a51
  4a59d0:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a59d6:	e8 85 c1 02 00       	call   0x4d1b60
  4a59db:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a59e1:	e8 80 c1 02 00       	call   0x4d1b66
  4a59e6:	85 c0                	test   eax,eax
  4a59e8:	75 78                	jne    0x4a5a62
  4a59ea:	8d 7e 18             	lea    edi,[esi+0x18]
  4a59ed:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  4a59f0:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  4a59f3:	52                   	push   edx
  4a59f4:	50                   	push   eax
  4a59f5:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4a59f8:	e8 b3 0a 00 00       	call   0x4a64b0
  4a59fd:	53                   	push   ebx
  4a59fe:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a5a04:	51                   	push   ecx
  4a5a05:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4a5a08:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4a5a0c:	e8 2f 0c 00 00       	call   0x4a6640
  4a5a11:	8d 55 bc             	lea    edx,[ebp-0x44]
  4a5a14:	52                   	push   edx
  4a5a15:	51                   	push   ecx
  4a5a16:	54                   	push   esp
  4a5a17:	8b cf                	mov    ecx,edi
  4a5a19:	e8 b2 00 00 00       	call   0x4a5ad0
  4a5a1e:	8d 45 08             	lea    eax,[ebp+0x8]
  4a5a21:	50                   	push   eax
  4a5a22:	8b cf                	mov    ecx,edi
  4a5a24:	e8 b7 00 00 00       	call   0x4a5ae0
  4a5a29:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a5a2f:	e8 20 c1 02 00       	call   0x4d1b54
  4a5a34:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4a5a37:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4a5a3b:	e8 e0 0a 00 00       	call   0x4a6520
  4a5a40:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a5a46:	e8 1b c1 02 00       	call   0x4d1b66
  4a5a4b:	85 c0                	test   eax,eax
  4a5a4d:	74 9e                	je     0x4a59ed
  4a5a4f:	eb 11                	jmp    0x4a5a62
  4a5a51:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a5a54:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  4a5a57:	8b 11                	mov    edx,DWORD PTR [ecx]
  4a5a59:	68 8c f3 50 00       	push   0x50f38c
  4a5a5e:	50                   	push   eax
  4a5a5f:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4a5a62:	8d 8d 24 ff ff ff    	lea    ecx,[ebp-0xdc]
  4a5a68:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  4a5a6c:	e8 fb c0 02 00       	call   0x4d1b6c
  4a5a71:	8d 4d e4             	lea    ecx,[ebp-0x1c]
  4a5a74:	51                   	push   ecx
  4a5a75:	ff 15 18 e4 4d 00    	call   DWORD PTR ds:0x4de418
  4a5a7b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a5a7e:	5f                   	pop    edi
  4a5a7f:	5e                   	pop    esi
  4a5a80:	5b                   	pop    ebx
  4a5a81:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a5a88:	8b e5                	mov    esp,ebp
  4a5a8a:	5d                   	pop    ebp
  4a5a8b:	c2 08 00             	ret    0x8


# Extraction ConjureID et construction du sous-conteneur : 0x4a6640 .. 0x4a675c


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004a6640 <.text+0xa5640>:
  4a6640:	55                   	push   ebp
  4a6641:	8b ec                	mov    ebp,esp
  4a6643:	6a ff                	push   0xffffffff
  4a6645:	68 d8 bb 4d 00       	push   0x4dbbd8
  4a664a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a6650:	50                   	push   eax
  4a6651:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a6658:	81 ec 14 08 00 00    	sub    esp,0x814
  4a665e:	53                   	push   ebx
  4a665f:	57                   	push   edi
  4a6660:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  4a6663:	8b d9                	mov    ebx,ecx
  4a6665:	8b cf                	mov    ecx,edi
  4a6667:	89 5d f0             	mov    DWORD PTR [ebp-0x10],ebx
  4a666a:	e8 f7 b4 02 00       	call   0x4d1b66
  4a666f:	85 c0                	test   eax,eax
  4a6671:	0f 85 d3 00 00 00    	jne    0x4a674a
  4a6677:	56                   	push   esi
  4a6678:	8d 45 e0             	lea    eax,[ebp-0x20]
  4a667b:	50                   	push   eax
  4a667c:	e8 d9 b4 02 00       	call   0x4d1b5a
  4a6681:	8b 17                	mov    edx,DWORD PTR [edi]
  4a6683:	8d 45 e0             	lea    eax,[ebp-0x20]
  4a6686:	50                   	push   eax
  4a6687:	68 00 f4 50 00       	push   0x50f400
  4a668c:	8b cf                	mov    ecx,edi
  4a668e:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4a6695:	ff 52 4c             	call   DWORD PTR [edx+0x4c]
  4a6698:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
  4a669b:	83 c9 ff             	or     ecx,0xffffffff
  4a669e:	33 c0                	xor    eax,eax
  4a66a0:	83 c3 18             	add    ebx,0x18
  4a66a3:	8b fa                	mov    edi,edx
  4a66a5:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  4a66a7:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  4a66aa:	f7 d1                	not    ecx
  4a66ac:	49                   	dec    ecx
  4a66ad:	85 c0                	test   eax,eax
  4a66af:	8b f9                	mov    edi,ecx
  4a66b1:	8b f2                	mov    esi,edx
  4a66b3:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  4a66b6:	74 1c                	je     0x4a66d4
  4a66b8:	3b c2                	cmp    eax,edx
  4a66ba:	77 18                	ja     0x4a66d4
  4a66bc:	8b 4b 08             	mov    ecx,DWORD PTR [ebx+0x8]
  4a66bf:	03 c8                	add    ecx,eax
  4a66c1:	3b d1                	cmp    edx,ecx
  4a66c3:	77 0f                	ja     0x4a66d4
  4a66c5:	57                   	push   edi
  4a66c6:	2b d0                	sub    edx,eax
  4a66c8:	52                   	push   edx
  4a66c9:	53                   	push   ebx
  4a66ca:	8b cb                	mov    ecx,ebx
  4a66cc:	ff 15 fc e4 4d 00    	call   DWORD PTR ds:0x4de4fc
  4a66d2:	eb 2f                	jmp    0x4a6703
  4a66d4:	6a 01                	push   0x1
  4a66d6:	57                   	push   edi
  4a66d7:	8b cb                	mov    ecx,ebx
  4a66d9:	ff 15 e0 e4 4d 00    	call   DWORD PTR ds:0x4de4e0
  4a66df:	84 c0                	test   al,al
  4a66e1:	74 20                	je     0x4a6703
  4a66e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a66e6:	8b cf                	mov    ecx,edi
  4a66e8:	8b 7b 04             	mov    edi,DWORD PTR [ebx+0x4]
  4a66eb:	8b d1                	mov    edx,ecx
  4a66ed:	c1 e9 02             	shr    ecx,0x2
  4a66f0:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  4a66f2:	8b ca                	mov    ecx,edx
  4a66f4:	83 e1 03             	and    ecx,0x3
  4a66f7:	f3 a4                	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  4a66f9:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  4a66fc:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  4a66ff:	c6 04 01 00          	mov    BYTE PTR [ecx+eax*1],0x0
  4a6703:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
  4a6706:	85 db                	test   ebx,ebx
  4a6708:	c6 85 e0 f7 ff ff 00 	mov    BYTE PTR [ebp-0x820],0x0
  4a670f:	75 06                	jne    0x4a6717
  4a6711:	8b 1d d8 e4 4d 00    	mov    ebx,DWORD PTR ds:0x4de4d8
  4a6717:	8b 75 f0             	mov    esi,DWORD PTR [ebp-0x10]
  4a671a:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  4a671d:	8b 3a                	mov    edi,DWORD PTR [edx]
  4a671f:	53                   	push   ebx
  4a6720:	8d 85 e0 f7 ff ff    	lea    eax,[ebp-0x820]
  4a6726:	68 fc f3 50 00       	push   0x50f3fc
  4a672b:	50                   	push   eax
  4a672c:	e8 0f d2 f5 ff       	call   0x403940
  4a6731:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  4a6734:	83 c4 0c             	add    esp,0xc
  4a6737:	50                   	push   eax
  4a6738:	51                   	push   ecx
  4a6739:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4a673c:	ff 57 04             	call   DWORD PTR [edi+0x4]
  4a673f:	8d 55 e0             	lea    edx,[ebp-0x20]
  4a6742:	52                   	push   edx
  4a6743:	ff 15 18 e4 4d 00    	call   DWORD PTR ds:0x4de418
  4a6749:	5e                   	pop    esi
  4a674a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a674d:	5f                   	pop    edi
  4a674e:	5b                   	pop    ebx
  4a674f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a6756:	8b e5                	mov    esp,ebp
  4a6758:	5d                   	pop    ebp
  4a6759:	c2 08 00             	ret    0x8


# Emplacements du sous-conteneur 40 octets / helpers internes : 0x4a5a90 .. 0x4a5b4f


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004a5a90 <.text+0xa4a90>:
  4a5a90:	53                   	push   ebx
  4a5a91:	8b d9                	mov    ebx,ecx
  4a5a93:	56                   	push   esi
  4a5a94:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
  4a5a97:	85 f6                	test   esi,esi
  4a5a99:	74 24                	je     0x4a5abf
  4a5a9b:	57                   	push   edi
  4a5a9c:	8b 7b 08             	mov    edi,DWORD PTR [ebx+0x8]
  4a5a9f:	3b f7                	cmp    esi,edi
  4a5aa1:	74 0f                	je     0x4a5ab2
  4a5aa3:	8b 06                	mov    eax,DWORD PTR [esi]
  4a5aa5:	6a 00                	push   0x0
  4a5aa7:	8b ce                	mov    ecx,esi
  4a5aa9:	ff 10                	call   DWORD PTR [eax]
  4a5aab:	83 c6 28             	add    esi,0x28
  4a5aae:	3b f7                	cmp    esi,edi
  4a5ab0:	75 f1                	jne    0x4a5aa3
  4a5ab2:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  4a5ab5:	51                   	push   ecx
  4a5ab6:	e8 a5 c5 f9 ff       	call   0x442060
  4a5abb:	83 c4 04             	add    esp,0x4
  4a5abe:	5f                   	pop    edi
  4a5abf:	33 c0                	xor    eax,eax
  4a5ac1:	5e                   	pop    esi
  4a5ac2:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  4a5ac5:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  4a5ac8:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
  4a5acb:	5b                   	pop    ebx
  4a5acc:	c3                   	ret
  4a5acd:	90                   	nop
  4a5ace:	90                   	nop
  4a5acf:	90                   	nop
  4a5ad0:	55                   	push   ebp
  4a5ad1:	8b ec                	mov    ebp,esp
  4a5ad3:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4a5ad6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a5ad9:	89 08                	mov    DWORD PTR [eax],ecx
  4a5adb:	5d                   	pop    ebp
  4a5adc:	c2 04 00             	ret    0x4
  4a5adf:	90                   	nop
  4a5ae0:	55                   	push   ebp
  4a5ae1:	8b ec                	mov    ebp,esp
  4a5ae3:	56                   	push   esi
  4a5ae4:	57                   	push   edi
  4a5ae5:	8b f9                	mov    edi,ecx
  4a5ae7:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  4a5aea:	85 f6                	test   esi,esi
  4a5aec:	74 18                	je     0x4a5b06
  4a5aee:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  4a5af1:	2b ce                	sub    ecx,esi
  4a5af3:	b8 67 66 66 66       	mov    eax,0x66666667
  4a5af8:	f7 e9                	imul   ecx
  4a5afa:	c1 fa 04             	sar    edx,0x4
  4a5afd:	8b c2                	mov    eax,edx
  4a5aff:	c1 e8 1f             	shr    eax,0x1f
  4a5b02:	03 d0                	add    edx,eax
  4a5b04:	75 04                	jne    0x4a5b0a
  4a5b06:	33 f6                	xor    esi,esi
  4a5b08:	eb 18                	jmp    0x4a5b22
  4a5b0a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4a5b0d:	2b ce                	sub    ecx,esi
  4a5b0f:	b8 67 66 66 66       	mov    eax,0x66666667
  4a5b14:	f7 e9                	imul   ecx
  4a5b16:	c1 fa 04             	sar    edx,0x4
  4a5b19:	8b ca                	mov    ecx,edx
  4a5b1b:	c1 e9 1f             	shr    ecx,0x1f
  4a5b1e:	03 d1                	add    edx,ecx
  4a5b20:	8b f2                	mov    esi,edx
  4a5b22:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4a5b25:	52                   	push   edx
  4a5b26:	6a 01                	push   0x1
  4a5b28:	51                   	push   ecx
  4a5b29:	8d 45 0c             	lea    eax,[ebp+0xc]
  4a5b2c:	8b cc                	mov    ecx,esp
  4a5b2e:	50                   	push   eax
  4a5b2f:	e8 1c 00 00 00       	call   0x4a5b50
  4a5b34:	8b cf                	mov    ecx,edi
  4a5b36:	e8 25 00 00 00       	call   0x4a5b60
  4a5b3b:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  4a5b3e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a5b41:	8d 0c b6             	lea    ecx,[esi+esi*4]
  4a5b44:	8d 0c ca             	lea    ecx,[edx+ecx*8]
  4a5b47:	5f                   	pop    edi
  4a5b48:	89 08                	mov    DWORD PTR [eax],ecx
  4a5b4a:	5e                   	pop    esi
  4a5b4b:	5d                   	pop    ebp
  4a5b4c:	c2 0c 00             	ret    0xc


# Comparaison de conteneurs 40 octets : 0x4a5850 .. 0x4a5902


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004a5850 <.text+0xa4850>:
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


# Insertion d une entree dans les definitions 272 octets : 0x49fbe0 .. 0x49fc4f


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

0049fbe0 <.text+0x9ebe0>:
  49fbe0:	55                   	push   ebp
  49fbe1:	8b ec                	mov    ebp,esp
  49fbe3:	56                   	push   esi
  49fbe4:	57                   	push   edi
  49fbe5:	8b f9                	mov    edi,ecx
  49fbe7:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  49fbea:	85 f6                	test   esi,esi
  49fbec:	74 18                	je     0x49fc06
  49fbee:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  49fbf1:	2b ce                	sub    ecx,esi
  49fbf3:	b8 67 66 66 66       	mov    eax,0x66666667
  49fbf8:	f7 e9                	imul   ecx
  49fbfa:	c1 fa 04             	sar    edx,0x4
  49fbfd:	8b c2                	mov    eax,edx
  49fbff:	c1 e8 1f             	shr    eax,0x1f
  49fc02:	03 d0                	add    edx,eax
  49fc04:	75 04                	jne    0x49fc0a
  49fc06:	33 f6                	xor    esi,esi
  49fc08:	eb 18                	jmp    0x49fc22
  49fc0a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  49fc0d:	2b ce                	sub    ecx,esi
  49fc0f:	b8 67 66 66 66       	mov    eax,0x66666667
  49fc14:	f7 e9                	imul   ecx
  49fc16:	c1 fa 04             	sar    edx,0x4
  49fc19:	8b ca                	mov    ecx,edx
  49fc1b:	c1 e9 1f             	shr    ecx,0x1f
  49fc1e:	03 d1                	add    edx,ecx
  49fc20:	8b f2                	mov    esi,edx
  49fc22:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  49fc25:	52                   	push   edx
  49fc26:	6a 01                	push   0x1
  49fc28:	51                   	push   ecx
  49fc29:	8d 45 0c             	lea    eax,[ebp+0xc]
  49fc2c:	8b cc                	mov    ecx,esp
  49fc2e:	50                   	push   eax
  49fc2f:	e8 ac 00 00 00       	call   0x49fce0
  49fc34:	8b cf                	mov    ecx,edi
  49fc36:	e8 b5 03 00 00       	call   0x49fff0
  49fc3b:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  49fc3e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  49fc41:	8d 0c b6             	lea    ecx,[esi+esi*4]
  49fc44:	8d 0c ca             	lea    ecx,[edx+ecx*8]
  49fc47:	5f                   	pop    edi
  49fc48:	89 08                	mov    DWORD PTR [eax],ecx
  49fc4a:	5e                   	pop    esi
  49fc4b:	5d                   	pop    ebp
  49fc4c:	c2 0c 00             	ret    0xc


# Constructeur du conteneur auxiliaire et destructeur : 0x4a5610 .. 0x4a5701


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004a5610 <.text+0xa4610>:
  4a5610:	55                   	push   ebp
  4a5611:	8b ec                	mov    ebp,esp
  4a5613:	6a ff                	push   0xffffffff
  4a5615:	68 a3 ba 4d 00       	push   0x4dbaa3
  4a561a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a5620:	50                   	push   eax
  4a5621:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a5628:	51                   	push   ecx
  4a5629:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a562c:	56                   	push   esi
  4a562d:	8b f1                	mov    esi,ecx
  4a562f:	50                   	push   eax
  4a5630:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4a5633:	e8 08 82 00 00       	call   0x4ad840
  4a5638:	8a 4d 0b             	mov    cl,BYTE PTR [ebp+0xb]
  4a563b:	33 c0                	xor    eax,eax
  4a563d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4a5640:	88 4e 18             	mov    BYTE PTR [esi+0x18],cl
  4a5643:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  4a5646:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4a5649:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4a564c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4a564f:	52                   	push   edx
  4a5650:	8b ce                	mov    ecx,esi
  4a5652:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4a5656:	c7 06 68 f9 4d 00    	mov    DWORD PTR [esi],0x4df968
  4a565c:	e8 2f 82 00 00       	call   0x4ad890
  4a5661:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a5664:	8b c6                	mov    eax,esi
  4a5666:	5e                   	pop    esi
  4a5667:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a566e:	8b e5                	mov    esp,ebp
  4a5670:	5d                   	pop    ebp
  4a5671:	c2 08 00             	ret    0x8
  4a5674:	90                   	nop
  4a5675:	90                   	nop
  4a5676:	90                   	nop
  4a5677:	90                   	nop
  4a5678:	90                   	nop
  4a5679:	90                   	nop
  4a567a:	90                   	nop
  4a567b:	90                   	nop
  4a567c:	90                   	nop
  4a567d:	90                   	nop
  4a567e:	90                   	nop
  4a567f:	90                   	nop
  4a5680:	55                   	push   ebp
  4a5681:	8b ec                	mov    ebp,esp
  4a5683:	6a ff                	push   0xffffffff
  4a5685:	68 b8 ba 4d 00       	push   0x4dbab8
  4a568a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a5690:	50                   	push   eax
  4a5691:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a5698:	51                   	push   ecx
  4a5699:	56                   	push   esi
  4a569a:	57                   	push   edi
  4a569b:	8b f9                	mov    edi,ecx
  4a569d:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  4a56a0:	c7 07 68 f9 4d 00    	mov    DWORD PTR [edi],0x4df968
  4a56a6:	8b 77 1c             	mov    esi,DWORD PTR [edi+0x1c]
  4a56a9:	85 f6                	test   esi,esi
  4a56ab:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4a56b2:	74 24                	je     0x4a56d8
  4a56b4:	53                   	push   ebx
  4a56b5:	8b 5f 20             	mov    ebx,DWORD PTR [edi+0x20]
  4a56b8:	3b f3                	cmp    esi,ebx
  4a56ba:	74 0f                	je     0x4a56cb
  4a56bc:	8b 06                	mov    eax,DWORD PTR [esi]
  4a56be:	6a 00                	push   0x0
  4a56c0:	8b ce                	mov    ecx,esi
  4a56c2:	ff 10                	call   DWORD PTR [eax]
  4a56c4:	83 c6 28             	add    esi,0x28
  4a56c7:	3b f3                	cmp    esi,ebx
  4a56c9:	75 f1                	jne    0x4a56bc
  4a56cb:	8b 47 1c             	mov    eax,DWORD PTR [edi+0x1c]
  4a56ce:	50                   	push   eax
  4a56cf:	e8 8c c9 f9 ff       	call   0x442060
  4a56d4:	83 c4 04             	add    esp,0x4
  4a56d7:	5b                   	pop    ebx
  4a56d8:	33 c0                	xor    eax,eax
  4a56da:	8b cf                	mov    ecx,edi
  4a56dc:	89 47 1c             	mov    DWORD PTR [edi+0x1c],eax
  4a56df:	89 47 20             	mov    DWORD PTR [edi+0x20],eax
  4a56e2:	89 47 24             	mov    DWORD PTR [edi+0x24],eax
  4a56e5:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4a56ec:	e8 7f 81 00 00       	call   0x4ad870
  4a56f1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a56f4:	5f                   	pop    edi
  4a56f5:	5e                   	pop    esi
  4a56f6:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a56fd:	8b e5                	mov    esp,ebp
  4a56ff:	5d                   	pop    ebp
  4a5700:	c3                   	ret


# Parcours de chaque element pour traitement polymorphe : 0x4a5720 .. 0x4a5786


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004a5720 <.text+0xa4720>:
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


# Constructeur du conteneur auxiliaire pour chargement SQL : 0x4a64b0 .. 0x4a6514


/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004a64b0 <.text+0xa54b0>:
  4a64b0:	55                   	push   ebp
  4a64b1:	8b ec                	mov    ebp,esp
  4a64b3:	6a ff                	push   0xffffffff
  4a64b5:	68 c4 bb 4d 00       	push   0x4dbbc4
  4a64ba:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4a64c0:	50                   	push   eax
  4a64c1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4a64c8:	51                   	push   ecx
  4a64c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4a64cc:	56                   	push   esi
  4a64cd:	8b f1                	mov    esi,ecx
  4a64cf:	50                   	push   eax
  4a64d0:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4a64d3:	e8 68 73 00 00       	call   0x4ad840
  4a64d8:	8a 4d 0b             	mov    cl,BYTE PTR [ebp+0xb]
  4a64db:	33 c0                	xor    eax,eax
  4a64dd:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4a64e0:	88 4e 18             	mov    BYTE PTR [esi+0x18],cl
  4a64e3:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  4a64e6:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4a64e9:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4a64ec:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4a64ef:	52                   	push   edx
  4a64f0:	8b ce                	mov    ecx,esi
  4a64f2:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4a64f6:	c7 06 e8 f9 4d 00    	mov    DWORD PTR [esi],0x4df9e8
  4a64fc:	e8 8f 73 00 00       	call   0x4ad890
  4a6501:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4a6504:	8b c6                	mov    eax,esi
  4a6506:	5e                   	pop    esi
  4a6507:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4a650e:	8b e5                	mov    esp,ebp
  4a6510:	5d                   	pop    ebp
  4a6511:	c2 08 00             	ret    0x8
