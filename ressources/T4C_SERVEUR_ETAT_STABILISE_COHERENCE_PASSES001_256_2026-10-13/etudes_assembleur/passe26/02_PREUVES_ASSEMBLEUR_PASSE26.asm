; PREUVES PASSE 26 — T4C Server(1).exe
; Binaire SHA-256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Génération : objdump -d -Mintel, sections choisies par analyse.
; Chaque ligne conservée ci-dessous a été recoupée avec les octets de .text.
; Les blocs sont des extraits ciblés, pas des fonctions exhaustives.

; ==== Passerelles d’importation MFC42.DLL [004D1B30 .. 004D1B90) ====
  4d1b30:	ff 25 e8 e1 4d 00    	jmp    DWORD PTR ds:0x4de1e8
  4d1b36:	ff 25 e4 e1 4d 00    	jmp    DWORD PTR ds:0x4de1e4
  4d1b3c:	ff 25 e0 e1 4d 00    	jmp    DWORD PTR ds:0x4de1e0
  4d1b42:	ff 25 dc e1 4d 00    	jmp    DWORD PTR ds:0x4de1dc
  4d1b48:	ff 25 d8 e1 4d 00    	jmp    DWORD PTR ds:0x4de1d8
  4d1b4e:	ff 25 d4 e1 4d 00    	jmp    DWORD PTR ds:0x4de1d4
  4d1b54:	ff 25 d0 e1 4d 00    	jmp    DWORD PTR ds:0x4de1d0
  4d1b5a:	ff 25 cc e1 4d 00    	jmp    DWORD PTR ds:0x4de1cc
  4d1b60:	ff 25 c8 e1 4d 00    	jmp    DWORD PTR ds:0x4de1c8
  4d1b66:	ff 25 c4 e1 4d 00    	jmp    DWORD PTR ds:0x4de1c4
  4d1b6c:	ff 25 b4 e1 4d 00    	jmp    DWORD PTR ds:0x4de1b4
  4d1b72:	ff 25 c0 e1 4d 00    	jmp    DWORD PTR ds:0x4de1c0
  4d1b78:	ff 25 bc e1 4d 00    	jmp    DWORD PTR ds:0x4de1bc
  4d1b7e:	ff 25 b8 e1 4d 00    	jmp    DWORD PTR ds:0x4de1b8
  4d1b84:	ff 25 88 e2 4d 00    	jmp    DWORD PTR ds:0x4de288
  4d1b8a:	ff 25 84 e3 4d 00    	jmp    DWORD PTR ds:0x4de384

; ==== Lecture Creatures_Items et indexation [00494F23 .. 0049507D) ====
  494f23:	68 c4 e6 50 00       	push   0x50e6c4
  494f28:	6a 04                	push   0x4
  494f2a:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f30:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  494f34:	e8 3f cc 03 00       	call   0x4d1b78
  494f39:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f3f:	e8 22 cc 03 00       	call   0x4d1b66
  494f44:	85 c0                	test   eax,eax
  494f46:	0f 85 23 01 00 00    	jne    0x49506f
  494f4c:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f52:	e8 09 cc 03 00       	call   0x4d1b60
  494f57:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f5d:	e8 04 cc 03 00       	call   0x4d1b66
  494f62:	85 c0                	test   eax,eax
  494f64:	0f 85 05 01 00 00    	jne    0x49506f
  494f6a:	8d 4d c0             	lea    ecx,[ebp-0x40]
  494f6d:	51                   	push   ecx
  494f6e:	e8 e7 cb 03 00       	call   0x4d1b5a
  494f73:	8d 55 c0             	lea    edx,[ebp-0x40]
  494f76:	52                   	push   edx
  494f77:	68 20 e9 50 00       	push   0x50e920
  494f7c:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494f82:	c6 45 fc 11          	mov    BYTE PTR [ebp-0x4],0x11
  494f86:	e8 e7 cb 03 00       	call   0x4d1b72
  494f8b:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
  494f8e:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  494f91:	51                   	push   ecx
  494f92:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  494f95:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  494f98:	e8 13 23 00 00       	call   0x4972b0
  494f9d:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  494fa0:	3b c1                	cmp    eax,ecx
  494fa2:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  494fa5:	74 0d                	je     0x494fb4
  494fa7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  494faa:	3b 50 0c             	cmp    edx,DWORD PTR [eax+0xc]
  494fad:	72 05                	jb     0x494fb4
  494faf:	8d 45 08             	lea    eax,[ebp+0x8]
  494fb2:	eb 06                	jmp    0x494fba
  494fb4:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
  494fb7:	8d 45 e0             	lea    eax,[ebp-0x20]
  494fba:	8b 30                	mov    esi,DWORD PTR [eax]
  494fbc:	3b f1                	cmp    esi,ecx
  494fbe:	75 0d                	jne    0x494fcd
  494fc0:	8d 45 c0             	lea    eax,[ebp-0x40]
  494fc3:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  494fc7:	50                   	push   eax
  494fc8:	e9 89 00 00 00       	jmp    0x495056
  494fcd:	8d 4d c0             	lea    ecx,[ebp-0x40]
  494fd0:	51                   	push   ecx
  494fd1:	68 bc e6 50 00       	push   0x50e6bc
  494fd6:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  494fdc:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
  494fdf:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
  494fe6:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  494fed:	e8 80 cb 03 00       	call   0x4d1b72
  494ff2:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  494ff5:	8d 45 c0             	lea    eax,[ebp-0x40]
  494ff8:	50                   	push   eax
  494ff9:	68 ac e6 50 00       	push   0x50e6ac
  494ffe:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  495004:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
  495007:	e8 66 cb 03 00       	call   0x4d1b72
  49500c:	8b 4d c8             	mov    ecx,DWORD PTR [ebp-0x38]
  49500f:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  495012:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
  495015:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
  495018:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  49501b:	8b 4f 1c             	mov    ecx,DWORD PTR [edi+0x1c]
  49501e:	8b d0                	mov    edx,eax
  495020:	c1 e2 05             	shl    edx,0x5
  495023:	03 d0                	add    edx,eax
  495025:	8d 04 d1             	lea    eax,[ecx+edx*8]
  495028:	8d 70 14             	lea    esi,[eax+0x14]
  49502b:	8d 45 e4             	lea    eax,[ebp-0x1c]
  49502e:	50                   	push   eax
  49502f:	51                   	push   ecx
  495030:	54                   	push   esp
  495031:	8b ce                	mov    ecx,esi
  495033:	e8 48 02 00 00       	call   0x495280
  495038:	8d 4d b8             	lea    ecx,[ebp-0x48]
  49503b:	51                   	push   ecx
  49503c:	8b ce                	mov    ecx,esi
  49503e:	e8 dd 03 00 00       	call   0x495420
  495043:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  495049:	e8 06 cb 03 00       	call   0x4d1b54
  49504e:	8d 55 c0             	lea    edx,[ebp-0x40]
  495051:	c6 45 fc 10          	mov    BYTE PTR [ebp-0x4],0x10
  495055:	52                   	push   edx
  495056:	ff 15 18 e4 4d 00    	call   DWORD PTR ds:0x4de418
  49505c:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  495062:	e8 ff ca 03 00       	call   0x4d1b66
  495067:	85 c0                	test   eax,eax
  495069:	0f 84 fb fe ff ff    	je     0x494f6a
  49506f:	8d 8d f0 fe ff ff    	lea    ecx,[ebp-0x110]
  495075:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  495078:	e8 ef ca 03 00       	call   0x4d1b6c

; ==== Aide accès aux enregistrements créature [00495280 .. 004952B0) ====
  495280:	55                   	push   ebp
  495281:	8b ec                	mov    ebp,esp
  495283:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  495286:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  495289:	89 08                	mov    DWORD PTR [eax],ecx
  49528b:	5d                   	pop    ebp
  49528c:	c2 04 00             	ret    0x4
  49528f:	90                   	nop
  495290:	55                   	push   ebp
  495291:	8b ec                	mov    ebp,esp
  495293:	51                   	push   ecx
  495294:	8b c1                	mov    eax,ecx
  495296:	8a 4d ff             	mov    cl,BYTE PTR [ebp-0x1]
  495299:	88 08                	mov    BYTE PTR [eax],cl
  49529b:	33 c9                	xor    ecx,ecx
  49529d:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4952a0:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4952a3:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  4952a6:	8b e5                	mov    esp,ebp
  4952a8:	5d                   	pop    ebp
  4952a9:	c3                   	ret
  4952aa:	90                   	nop
  4952ab:	90                   	nop
  4952ac:	90                   	nop
  4952ad:	90                   	nop
  4952ae:	90                   	nop
  4952af:	90                   	nop

; ==== Gestion d’un tableau d’entrées de 16 octets [00495420 .. 004954C1) ====
  495420:	55                   	push   ebp
  495421:	8b ec                	mov    ebp,esp
  495423:	56                   	push   esi
  495424:	57                   	push   edi
  495425:	8b f9                	mov    edi,ecx
  495427:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  49542a:	85 c0                	test   eax,eax
  49542c:	74 0d                	je     0x49543b
  49542e:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  495431:	2b c8                	sub    ecx,eax
  495433:	f7 c1 f0 ff ff ff    	test   ecx,0xfffffff0
  495439:	75 04                	jne    0x49543f
  49543b:	33 f6                	xor    esi,esi
  49543d:	eb 08                	jmp    0x495447
  49543f:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  495442:	2b f0                	sub    esi,eax
  495444:	c1 fe 04             	sar    esi,0x4
  495447:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  49544a:	52                   	push   edx
  49544b:	6a 01                	push   0x1
  49544d:	51                   	push   ecx
  49544e:	8d 45 0c             	lea    eax,[ebp+0xc]
  495451:	8b cc                	mov    ecx,esp
  495453:	50                   	push   eax
  495454:	e8 b7 00 00 00       	call   0x495510
  495459:	8b cf                	mov    ecx,edi
  49545b:	e8 70 07 00 00       	call   0x495bd0
  495460:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  495463:	c1 e6 04             	shl    esi,0x4
  495466:	03 f0                	add    esi,eax
  495468:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  49546b:	5f                   	pop    edi
  49546c:	89 30                	mov    DWORD PTR [eax],esi
  49546e:	5e                   	pop    esi
  49546f:	5d                   	pop    ebp
  495470:	c2 0c 00             	ret    0xc
  495473:	90                   	nop
  495474:	90                   	nop
  495475:	90                   	nop
  495476:	90                   	nop
  495477:	90                   	nop
  495478:	90                   	nop
  495479:	90                   	nop
  49547a:	90                   	nop
  49547b:	90                   	nop
  49547c:	90                   	nop
  49547d:	90                   	nop
  49547e:	90                   	nop
  49547f:	90                   	nop
  495480:	55                   	push   ebp
  495481:	8b ec                	mov    ebp,esp
  495483:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  495486:	56                   	push   esi
  495487:	8b f1                	mov    esi,ecx
  495489:	33 c9                	xor    ecx,ecx
  49548b:	3b c1                	cmp    eax,ecx
  49548d:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  495490:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  495493:	89 4e 0c             	mov    DWORD PTR [esi+0xc],ecx
  495496:	75 07                	jne    0x49549f
  495498:	32 c0                	xor    al,al
  49549a:	5e                   	pop    esi
  49549b:	5d                   	pop    ebp
  49549c:	c2 04 00             	ret    0x4
  49549f:	c1 e0 04             	shl    eax,0x4
  4954a2:	57                   	push   edi
  4954a3:	8b f8                	mov    edi,eax
  4954a5:	57                   	push   edi
  4954a6:	e8 45 cb fa ff       	call   0x441ff0
  4954ab:	83 c4 04             	add    esp,0x4
  4954ae:	03 f8                	add    edi,eax
  4954b0:	89 7e 0c             	mov    DWORD PTR [esi+0xc],edi
  4954b3:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  4954b6:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  4954b9:	5f                   	pop    edi
  4954ba:	b0 01                	mov    al,0x1
  4954bc:	5e                   	pop    esi
  4954bd:	5d                   	pop    ebp
  4954be:	c2 04 00             	ret    0x4

; ==== Début du chargeur Objects [0049E9C0 .. 0049EA80) ====
  49e9c0:	55                   	push   ebp
  49e9c1:	8b ec                	mov    ebp,esp
  49e9c3:	6a ff                	push   0xffffffff
  49e9c5:	68 53 b5 4d 00       	push   0x4db553
  49e9ca:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  49e9d0:	50                   	push   eax
  49e9d1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  49e9d8:	81 ec 88 09 00 00    	sub    esp,0x988
  49e9de:	56                   	push   esi
  49e9df:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  49e9e2:	57                   	push   edi
  49e9e3:	8b f9                	mov    edi,ecx
  49e9e5:	8b ce                	mov    ecx,esi
  49e9e7:	89 7d cc             	mov    DWORD PTR [ebp-0x34],edi
  49e9ea:	e8 77 31 03 00       	call   0x4d1b66
  49e9ef:	85 c0                	test   eax,eax
  49e9f1:	0f 85 34 10 00 00    	jne    0x49fa2b
  49e9f7:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  49e9fa:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  49e9fd:	8b 01                	mov    eax,DWORD PTR [ecx]
  49e9ff:	53                   	push   ebx
  49ea00:	68 0c f3 50 00       	push   0x50f30c
  49ea05:	52                   	push   edx
  49ea06:	ff 50 04             	call   DWORD PTR [eax+0x4]
  49ea09:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  49ea0c:	50                   	push   eax
  49ea0d:	8d 4d 0b             	lea    ecx,[ebp+0xb]
  49ea10:	51                   	push   ecx
  49ea11:	8d 4d d0             	lea    ecx,[ebp-0x30]
  49ea14:	e8 27 30 00 00       	call   0x4a1a40
  49ea19:	8d 4d d0             	lea    ecx,[ebp-0x30]
  49ea1c:	e8 0f 4f f8 ff       	call   0x423930
  49ea21:	33 db                	xor    ebx,ebx
  49ea23:	8b ce                	mov    ecx,esi
  49ea25:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  49ea28:	88 9d 6c f6 ff ff    	mov    BYTE PTR [ebp-0x994],bl
  49ea2e:	e8 2d 31 03 00       	call   0x4d1b60
  49ea33:	8b ce                	mov    ecx,esi
  49ea35:	e8 2c 31 03 00       	call   0x4d1b66
  49ea3a:	85 c0                	test   eax,eax
  49ea3c:	0f 85 d1 07 00 00    	jne    0x49f213
  49ea42:	8d 55 e4             	lea    edx,[ebp-0x1c]
  49ea45:	52                   	push   edx
  49ea46:	e8 0f 31 03 00       	call   0x4d1b5a
  49ea4b:	8a 45 0f             	mov    al,BYTE PTR [ebp+0xf]
  49ea4e:	53                   	push   ebx
  49ea4f:	8d 8d a4 fe ff ff    	lea    ecx,[ebp-0x15c]
  49ea55:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  49ea59:	88 85 a4 fe ff ff    	mov    BYTE PTR [ebp-0x15c],al
  49ea5f:	e8 ec 11 00 00       	call   0x49fc50
  49ea64:	8d 8d b4 fe ff ff    	lea    ecx,[ebp-0x14c]
  49ea6a:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  49ea6e:	e8 1d 10 00 00       	call   0x49fa90
  49ea73:	8d 8d c4 fe ff ff    	lea    ecx,[ebp-0x13c]
  49ea79:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  49ea7e:	7e 10                	jle    0x49ea90

; ==== Chargement Objects_ContainerGroups [0049F223 .. 0049F290) ====
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

; ==== Accès aux modèles d’objets [0049F300 .. 0049F3C5) ====
  49f300:	1c 8b                	sbb    al,0x8b
  49f302:	75 cc                	jne    0x49f2d0
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

; ==== Suite et sortie du chargement groupes [0049F3C5 .. 0049F40E) ====
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
  49f400:	8d 8d 1c ff ff ff    	lea    ecx,[ebp-0xe4]
  49f406:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  49f409:	e8 5e 27 03 00       	call   0x4d1b6c

; ==== Gestion tableau objets : nettoyage [0049FAB0 .. 0049FAED) ====
  49fab0:	53                   	push   ebx
  49fab1:	8b d9                	mov    ebx,ecx
  49fab3:	56                   	push   esi
  49fab4:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
  49fab7:	85 f6                	test   esi,esi
  49fab9:	74 24                	je     0x49fadf
  49fabb:	57                   	push   edi
  49fabc:	8b 7b 08             	mov    edi,DWORD PTR [ebx+0x8]
  49fabf:	3b f7                	cmp    esi,edi
  49fac1:	74 0f                	je     0x49fad2
  49fac3:	8b 06                	mov    eax,DWORD PTR [esi]
  49fac5:	6a 00                	push   0x0
  49fac7:	8b ce                	mov    ecx,esi
  49fac9:	ff 10                	call   DWORD PTR [eax]
  49facb:	83 c6 38             	add    esi,0x38
  49face:	3b f7                	cmp    esi,edi
  49fad0:	75 f1                	jne    0x49fac3
  49fad2:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  49fad5:	51                   	push   ecx
  49fad6:	e8 85 25 fa ff       	call   0x442060
  49fadb:	83 c4 04             	add    esp,0x4
  49fade:	5f                   	pop    edi
  49fadf:	33 c0                	xor    eax,eax
  49fae1:	5e                   	pop    esi
  49fae2:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  49fae5:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  49fae8:	89 43 0c             	mov    DWORD PTR [ebx+0xc],eax
  49faeb:	5b                   	pop    ebx
  49faec:	c3                   	ret

; ==== Calcul des offsets d’une liste d’objets [0049FBE0 .. 0049FC50) ====
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
  49fc4f:	90                   	nop

; ==== Registre global : réservation [00489D14 .. 00489DBA) ====
  489d14:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  489d17:	85 c0                	test   eax,eax
  489d19:	74 26                	je     0x489d41
  489d1b:	8b c6                	mov    eax,esi
  489d1d:	25 ff ff 00 00       	and    eax,0xffff
  489d22:	8b 0c 85 f4 63 51 00 	mov    ecx,DWORD PTR [eax*4+0x5163f4]
  489d29:	85 c9                	test   ecx,ecx
  489d2b:	74 14                	je     0x489d41
  489d2d:	46                   	inc    esi
  489d2e:	8b ce                	mov    ecx,esi
  489d30:	81 e1 ff ff 00 00    	and    ecx,0xffff
  489d36:	8b 04 8d f4 63 51 00 	mov    eax,DWORD PTR [ecx*4+0x5163f4]
  489d3d:	85 c0                	test   eax,eax
  489d3f:	75 ec                	jne    0x489d2d
  489d41:	8b c6                	mov    eax,esi
  489d43:	25 ff ff 00 00       	and    eax,0xffff
  489d48:	8b 0c 85 f4 63 51 00 	mov    ecx,DWORD PTR [eax*4+0x5163f4]
  489d4f:	85 c9                	test   ecx,ecx
  489d51:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  489d54:	0f 85 23 01 00 00    	jne    0x489e7d
  489d5a:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  489d5d:	81 e2 ff 00 00 00    	and    edx,0xff
  489d63:	52                   	push   edx
  489d64:	53                   	push   ebx
  489d65:	50                   	push   eax
  489d66:	68 3c db 50 00       	push   0x50db3c
  489d6b:	68 00 08 00 00       	push   0x800
  489d70:	e8 cb 7f fe ff       	call   0x471d40
  489d75:	6a 08                	push   0x8
  489d77:	e8 74 82 fb ff       	call   0x441ff0
  489d7c:	8b f8                	mov    edi,eax
  489d7e:	83 c4 18             	add    esp,0x18
  489d81:	89 7d 1c             	mov    DWORD PTR [ebp+0x1c],edi
  489d84:	85 ff                	test   edi,edi
  489d86:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  489d8d:	74 09                	je     0x489d98
  489d8f:	8b cf                	mov    ecx,edi
  489d91:	e8 c8 7c 04 00       	call   0x4d1a5e
  489d96:	eb 02                	jmp    0x489d9a
  489d98:	33 ff                	xor    edi,edi
  489d9a:	8a 45 14             	mov    al,BYTE PTR [ebp+0x14]
  489d9d:	53                   	push   ebx
  489d9e:	8b cf                	mov    ecx,edi
  489da0:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  489da7:	88 47 04             	mov    BYTE PTR [edi+0x4],al
  489daa:	e8 a9 7c 04 00       	call   0x4d1a58
  489daf:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  489db2:	66 89 77 06          	mov    WORD PTR [edi+0x6],si
  489db6:	66 89 71 04          	mov    WORD PTR [ecx+0x4],si

; ==== Chaîne du dépôt de butin : fonctions internes [004950D9 .. 0049511A) ====
  4950d9:	3b c6                	cmp    eax,esi
  4950db:	74 21                	je     0x4950fe
  4950dd:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  4950e0:	8b f8                	mov    edi,eax
  4950e2:	e8 69 2b 00 00       	call   0x497c50
  4950e7:	57                   	push   edi
  4950e8:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4950eb:	51                   	push   ecx
  4950ec:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  4950ef:	e8 0c 1a 00 00       	call   0x496b00
  4950f4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4950f7:	3b c6                	cmp    eax,esi
  4950f9:	75 e2                	jne    0x4950dd
  4950fb:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  4950fe:	51                   	push   ecx
  4950ff:	e8 5c cf fa ff       	call   0x442060
  495104:	83 c4 04             	add    esp,0x4
  495107:	5b                   	pop    ebx
  495108:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  49510b:	5f                   	pop    edi
  49510c:	5e                   	pop    esi
  49510d:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  495114:	8b e5                	mov    esp,ebp
  495116:	5d                   	pop    ebp
  495117:	c2 08 00             	ret    0x8

; ==== Création chargement container [004A5910 .. 004A59D0) ====
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
