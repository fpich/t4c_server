; Preuves de désassemblage T4C Server (1).exe — Passe 36
; SHA256 executable: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Les adresses sont absolues ; stop-address exclusif ; ne pas assimiler les octets vérifiés à une compréhension exhaustive.

; RegisterSuperstructure et dispatch par type: 0x00460BD0 .. 0x00460C84 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00460bd0 <.text+0x5fbd0>:
  460bd0:	55                   	push   ebp
  460bd1:	8b ec                	mov    ebp,esp
  460bd3:	6a 08                	push   0x8
  460bd5:	e8 16 14 fe ff       	call   0x441ff0
  460bda:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  460bdd:	66 8b 55 0c          	mov    dx,WORD PTR [ebp+0xc]
  460be1:	83 c4 04             	add    esp,0x4
  460be4:	89 08                	mov    DWORD PTR [eax],ecx
  460be6:	50                   	push   eax
  460be7:	b9 60 4d 51 00       	mov    ecx,0x514d60
  460bec:	66 89 50 04          	mov    WORD PTR [eax+0x4],dx
  460bf0:	e8 5b 02 00 00       	call   0x460e50
  460bf5:	5d                   	pop    ebp
  460bf6:	c3                   	ret
  460bf7:	90                   	nop
  460bf8:	90                   	nop
  460bf9:	90                   	nop
  460bfa:	90                   	nop
  460bfb:	90                   	nop
  460bfc:	90                   	nop
  460bfd:	90                   	nop
  460bfe:	90                   	nop
  460bff:	90                   	nop
  460c00:	55                   	push   ebp
  460c01:	8b ec                	mov    ebp,esp
  460c03:	8b 0d 84 4d 51 00    	mov    ecx,DWORD PTR ds:0x514d84
  460c09:	53                   	push   ebx
  460c0a:	56                   	push   esi
  460c0b:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  460c0e:	33 c0                	xor    eax,eax
  460c10:	33 d2                	xor    edx,edx
  460c12:	57                   	push   edi
  460c13:	66 8b 7d 08          	mov    di,WORD PTR [ebp+0x8]
  460c17:	89 0d 80 4d 51 00    	mov    DWORD PTR ds:0x514d80,ecx
  460c1d:	89 15 a0 4d 51 00    	mov    DWORD PTR ds:0x514da0,edx
  460c23:	c6 05 94 4d 51 00 08 	mov    BYTE PTR ds:0x514d94,0x8
  460c2a:	85 d2                	test   edx,edx
  460c2c:	74 0a                	je     0x460c38
  460c2e:	8b 09                	mov    ecx,DWORD PTR [ecx]
  460c30:	89 0d 80 4d 51 00    	mov    DWORD PTR ds:0x514d80,ecx
  460c36:	eb 0b                	jmp    0x460c43
  460c38:	ba 01 00 00 00       	mov    edx,0x1
  460c3d:	89 15 a0 4d 51 00    	mov    DWORD PTR ds:0x514da0,edx
  460c43:	85 c9                	test   ecx,ecx
  460c45:	74 23                	je     0x460c6a
  460c47:	85 c0                	test   eax,eax
  460c49:	75 34                	jne    0x460c7f
  460c4b:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
  460c4e:	66 39 7b 04          	cmp    WORD PTR [ebx+0x4],di
  460c52:	75 d6                	jne    0x460c2a
  460c54:	8b c3                	mov    eax,ebx
  460c56:	56                   	push   esi
  460c57:	ff 10                	call   DWORD PTR [eax]
  460c59:	8b 0d 80 4d 51 00    	mov    ecx,DWORD PTR ds:0x514d80
  460c5f:	8b 15 a0 4d 51 00    	mov    edx,DWORD PTR ds:0x514da0
  460c65:	83 c4 04             	add    esp,0x4
  460c68:	eb c0                	jmp    0x460c2a
  460c6a:	85 d2                	test   edx,edx
  460c6c:	74 07                	je     0x460c75
  460c6e:	c6 05 94 4d 51 00 07 	mov    BYTE PTR ds:0x514d94,0x7
  460c75:	c7 05 a0 4d 51 00 00 	mov    DWORD PTR ds:0x514da0,0x0
  460c7c:	00 00 00 
  460c7f:	5f                   	pop    edi
  460c80:	5e                   	pop    esi
  460c81:	5b                   	pop    ebx
  460c82:	5d                   	pop    ebp
  460c83:	c3                   	ret


; SpellMessageHandler::RegisterSpell: 0x00461360 .. 0x00461560 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00461360 <.text+0x60360>:
  461360:	55                   	push   ebp
  461361:	8b ec                	mov    ebp,esp
  461363:	6a ff                	push   0xffffffff
  461365:	68 b3 7a 4d 00       	push   0x4d7ab3
  46136a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  461370:	50                   	push   eax
  461371:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  461378:	51                   	push   ecx
  461379:	53                   	push   ebx
  46137a:	56                   	push   esi
  46137b:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  46137e:	66 81 fe 10 27       	cmp    si,0x2710
  461383:	0f 82 73 01 00 00    	jb     0x4614fc
  461389:	81 e6 ff ff 00 00    	and    esi,0xffff
  46138f:	8d 9e f0 d8 ff ff    	lea    ebx,[esi-0x2710]
  461395:	81 fb 00 04 00 00    	cmp    ebx,0x400
  46139b:	0f 8d 1b 01 00 00    	jge    0x4614bc
  4613a1:	8b 04 9d a4 4d 51 00 	mov    eax,DWORD PTR [ebx*4+0x514da4]
  4613a8:	85 c0                	test   eax,eax
  4613aa:	0f 84 f2 00 00 00    	je     0x4614a2
  4613b0:	56                   	push   esi
  4613b1:	68 34 6e 50 00       	push   0x506e34
  4613b6:	6a 04                	push   0x4
  4613b8:	e8 83 09 01 00       	call   0x471d40
  4613bd:	8b 34 9d a4 4d 51 00 	mov    esi,DWORD PTR [ebx*4+0x514da4]
  4613c4:	83 c4 0c             	add    esp,0xc
  4613c7:	85 f6                	test   esi,esi
  4613c9:	89 75 08             	mov    DWORD PTR [ebp+0x8],esi
  4613cc:	0f 84 d0 00 00 00    	je     0x4614a2
  4613d2:	57                   	push   edi
  4613d3:	6a 01                	push   0x1
  4613d5:	8d 8e 08 04 00 00    	lea    ecx,[esi+0x408]
  4613db:	c7 45 fc 07 00 00 00 	mov    DWORD PTR [ebp-0x4],0x7
  4613e2:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4613e8:	6a 01                	push   0x1
  4613ea:	8d 8e f8 03 00 00    	lea    ecx,[esi+0x3f8]
  4613f0:	c6 45 fc 06          	mov    BYTE PTR [ebp-0x4],0x6
  4613f4:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  4613fa:	8d be b0 03 00 00    	lea    edi,[esi+0x3b0]
  461400:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  461403:	c7 07 04 f5 4d 00    	mov    DWORD PTR [edi],0x4df504
  461409:	8b cf                	mov    ecx,edi
  46140b:	c6 45 fc 08          	mov    BYTE PTR [ebp-0x4],0x8
  46140f:	e8 6c 15 00 00       	call   0x462980
  461414:	8b cf                	mov    ecx,edi
  461416:	e8 85 15 00 00       	call   0x4629a0
  46141b:	85 c0                	test   eax,eax
  46141d:	74 12                	je     0x461431
  46141f:	8b cf                	mov    ecx,edi
  461421:	e8 ea 15 00 00       	call   0x462a10
  461426:	8b cf                	mov    ecx,edi
  461428:	e8 73 15 00 00       	call   0x4629a0
  46142d:	85 c0                	test   eax,eax
  46142f:	75 ee                	jne    0x46141f
  461431:	c7 07 8c e5 4d 00    	mov    DWORD PTR [edi],0x4de58c
  461437:	83 c7 08             	add    edi,0x8
  46143a:	57                   	push   edi
  46143b:	ff 15 e0 e0 4d 00    	call   DWORD PTR ds:0x4de0e0
  461441:	8d 8e 68 03 00 00    	lea    ecx,[esi+0x368]
  461447:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  46144b:	e8 b0 2f fc ff       	call   0x424400
  461450:	8d 8e b8 02 00 00    	lea    ecx,[esi+0x2b8]
  461456:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  46145a:	e8 01 83 fa ff       	call   0x409760
  46145f:	8d 8e 48 02 00 00    	lea    ecx,[esi+0x248]
  461465:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  461469:	e8 f2 82 fa ff       	call   0x409760
  46146e:	8d 8e e8 00 00 00    	lea    ecx,[esi+0xe8]
  461474:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  461478:	e8 33 fd ff ff       	call   0x4611b0
  46147d:	8d 4e 78             	lea    ecx,[esi+0x78]
  461480:	c6 45 fc 00          	mov    BYTE PTR [ebp-0x4],0x0
  461484:	e8 d7 82 fa ff       	call   0x409760
  461489:	8d 4e 08             	lea    ecx,[esi+0x8]
  46148c:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  461493:	e8 c8 82 fa ff       	call   0x409760
  461498:	56                   	push   esi
  461499:	e8 c2 0b fe ff       	call   0x442060
  46149e:	83 c4 04             	add    esp,0x4
  4614a1:	5f                   	pop    edi
  4614a2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4614a5:	5e                   	pop    esi
  4614a6:	89 04 9d a4 4d 51 00 	mov    DWORD PTR [ebx*4+0x514da4],eax
  4614ad:	5b                   	pop    ebx
  4614ae:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4614b1:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4614b8:	8b e5                	mov    esp,ebp
  4614ba:	5d                   	pop    ebp
  4614bb:	c3                   	ret
  4614bc:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4614bf:	e8 9a 05 07 00       	call   0x4d1a5e
  4614c4:	56                   	push   esi
  4614c5:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4614c8:	68 e4 6d 50 00       	push   0x506de4
  4614cd:	51                   	push   ecx
  4614ce:	c7 45 fc 09 00 00 00 	mov    DWORD PTR [ebp-0x4],0x9
  4614d5:	e8 ba 05 07 00       	call   0x4d1a94
  4614da:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4614dd:	83 c4 0c             	add    esp,0xc
  4614e0:	6a 00                	push   0x0
  4614e2:	68 d8 6d 50 00       	push   0x506dd8
  4614e7:	52                   	push   edx
  4614e8:	6a 00                	push   0x0
  4614ea:	ff 15 64 e4 4d 00    	call   DWORD PTR ds:0x4de464
  4614f0:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4614f7:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4614fa:	eb 44                	jmp    0x461540
  4614fc:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  4614ff:	e8 5a 05 07 00       	call   0x4d1a5e
  461504:	81 e6 ff ff 00 00    	and    esi,0xffff
  46150a:	56                   	push   esi
  46150b:	8d 45 0c             	lea    eax,[ebp+0xc]
  46150e:	68 88 6d 50 00       	push   0x506d88
  461513:	50                   	push   eax
  461514:	c7 45 fc 0a 00 00 00 	mov    DWORD PTR [ebp-0x4],0xa
  46151b:	e8 74 05 07 00       	call   0x4d1a94
  461520:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  461523:	83 c4 0c             	add    esp,0xc
  461526:	6a 00                	push   0x0
  461528:	68 d8 6d 50 00       	push   0x506dd8
  46152d:	51                   	push   ecx
  46152e:	6a 00                	push   0x0
  461530:	ff 15 64 e4 4d 00    	call   DWORD PTR ds:0x4de464
  461536:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  46153d:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  461540:	e8 fb 04 07 00       	call   0x4d1a40
  461545:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  461548:	5e                   	pop    esi
  461549:	5b                   	pop    ebx
  46154a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  461551:	8b e5                	mov    esp,ebp
  461553:	5d                   	pop    ebp
  461554:	c3                   	ret
  461555:	90                   	nop
  461556:	90                   	nop
  461557:	90                   	nop
  461558:	90                   	nop
  461559:	90                   	nop
  46155a:	90                   	nop
  46155b:	90                   	nop
  46155c:	90                   	nop
  46155d:	90                   	nop
  46155e:	90                   	nop
  46155f:	90                   	nop


; SpellMessageHandler::Destroy et parcours des structures: 0x00460F10 .. 0x00460FCF (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00460f10 <.text+0x5ff10>:
  460f10:	53                   	push   ebx
  460f11:	56                   	push   esi
  460f12:	57                   	push   edi
  460f13:	bb a4 4d 51 00       	mov    ebx,0x514da4
  460f18:	33 ff                	xor    edi,edi
  460f1a:	8b 03                	mov    eax,DWORD PTR [ebx]
  460f1c:	3b c7                	cmp    eax,edi
  460f1e:	0f 84 a1 00 00 00    	je     0x460fc5
  460f24:	8d b0 b0 03 00 00    	lea    esi,[eax+0x3b0]
  460f2a:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  460f2d:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  460f30:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460f33:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  460f37:	39 7e 40             	cmp    DWORD PTR [esi+0x40],edi
  460f3a:	74 0a                	je     0x460f46
  460f3c:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  460f3f:	8b 11                	mov    edx,DWORD PTR [ecx]
  460f41:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  460f44:	eb 07                	jmp    0x460f4d
  460f46:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  460f4d:	39 7e 20             	cmp    DWORD PTR [esi+0x20],edi
  460f50:	74 09                	je     0x460f5b
  460f52:	8b ce                	mov    ecx,esi
  460f54:	e8 a7 1b 00 00       	call   0x462b00
  460f59:	eb dc                	jmp    0x460f37
  460f5b:	39 7e 40             	cmp    DWORD PTR [esi+0x40],edi
  460f5e:	74 04                	je     0x460f64
  460f60:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  460f64:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460f67:	8b 33                	mov    esi,DWORD PTR [ebx]
  460f69:	8b 86 8c 03 00 00    	mov    eax,DWORD PTR [esi+0x38c]
  460f6f:	81 c6 68 03 00 00    	add    esi,0x368
  460f75:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  460f78:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460f7b:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  460f7f:	39 7e 40             	cmp    DWORD PTR [esi+0x40],edi
  460f82:	74 0a                	je     0x460f8e
  460f84:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  460f87:	8b 11                	mov    edx,DWORD PTR [ecx]
  460f89:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  460f8c:	eb 07                	jmp    0x460f95
  460f8e:	c7 46 40 01 00 00 00 	mov    DWORD PTR [esi+0x40],0x1
  460f95:	39 7e 20             	cmp    DWORD PTR [esi+0x20],edi
  460f98:	74 09                	je     0x460fa3
  460f9a:	8b ce                	mov    ecx,esi
  460f9c:	e8 9f 36 fc ff       	call   0x424640
  460fa1:	eb dc                	jmp    0x460f7f
  460fa3:	39 7e 40             	cmp    DWORD PTR [esi+0x40],edi
  460fa6:	74 04                	je     0x460fac
  460fa8:	c6 46 34 07          	mov    BYTE PTR [esi+0x34],0x7
  460fac:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  460faf:	8b 33                	mov    esi,DWORD PTR [ebx]
  460fb1:	3b f7                	cmp    esi,edi
  460fb3:	74 10                	je     0x460fc5
  460fb5:	8b ce                	mov    ecx,esi
  460fb7:	e8 24 00 00 00       	call   0x460fe0
  460fbc:	56                   	push   esi
  460fbd:	e8 9e 10 fe ff       	call   0x442060
  460fc2:	83 c4 04             	add    esp,0x4
  460fc5:	83 c3 04             	add    ebx,0x4
  460fc8:	81 fb a4 5d 51 00    	cmp    ebx,0x515da4
  460fce:	0f                   	.byte 0xf


; GetSpell lookup: 0x00462230 .. 0x00462300 (borne exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00462230 <.text+0x61230>:
  462230:	55                   	push   ebp
  462231:	8b ec                	mov    ebp,esp
  462233:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  462236:	33 c0                	xor    eax,eax
  462238:	66 81 f9 10 27       	cmp    cx,0x2710
  46223d:	72 1b                	jb     0x46225a
  46223f:	81 e1 ff ff 00 00    	and    ecx,0xffff
  462245:	81 c1 f0 d8 ff ff    	add    ecx,0xffffd8f0
  46224b:	81 f9 00 04 00 00    	cmp    ecx,0x400
  462251:	7d 07                	jge    0x46225a
  462253:	8b 04 8d a4 4d 51 00 	mov    eax,DWORD PTR [ecx*4+0x514da4]
  46225a:	5d                   	pop    ebp
  46225b:	c3                   	ret
  46225c:	90                   	nop
  46225d:	90                   	nop
  46225e:	90                   	nop
  46225f:	90                   	nop
  462260:	55                   	push   ebp
  462261:	8b ec                	mov    ebp,esp
  462263:	6a ff                	push   0xffffffff
  462265:	68 f9 7a 4d 00       	push   0x4d7af9
  46226a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  462270:	50                   	push   eax
  462271:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  462278:	51                   	push   ecx
  462279:	53                   	push   ebx
  46227a:	56                   	push   esi
  46227b:	57                   	push   edi
  46227c:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  46227f:	b8 a4 4d 51 00       	mov    eax,0x514da4
  462284:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  46228b:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  46228e:	8b 18                	mov    ebx,DWORD PTR [eax]
  462290:	85 db                	test   ebx,ebx
  462292:	74 4a                	je     0x4622de
  462294:	85 ff                	test   edi,edi
  462296:	8b 0d d8 e4 4d 00    	mov    ecx,DWORD PTR ds:0x4de4d8
  46229c:	8b f1                	mov    esi,ecx
  46229e:	74 02                	je     0x4622a2
  4622a0:	8b f7                	mov    esi,edi
  4622a2:	8b 83 00 04 00 00    	mov    eax,DWORD PTR [ebx+0x400]
  4622a8:	85 c0                	test   eax,eax
  4622aa:	75 07                	jne    0x4622b3
  4622ac:	b8 58 13 51 00       	mov    eax,0x511358
  4622b1:	eb 19                	jmp    0x4622cc
  4622b3:	8b 83 fc 03 00 00    	mov    eax,DWORD PTR [ebx+0x3fc]
  4622b9:	85 c0                	test   eax,eax
  4622bb:	75 02                	jne    0x4622bf
  4622bd:	8b c1                	mov    eax,ecx
  4622bf:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4622c2:	51                   	push   ecx
  4622c3:	50                   	push   eax
  4622c4:	e8 77 b8 fd ff       	call   0x43db40
  4622c9:	83 c4 08             	add    esp,0x8
  4622cc:	56                   	push   esi
  4622cd:	50                   	push   eax
  4622ce:	ff 15 e4 e2 4d 00    	call   DWORD PTR ds:0x4de2e4
  4622d4:	83 c4 08             	add    esp,0x8
  4622d7:	85 c0                	test   eax,eax
  4622d9:	74 37                	je     0x462312
  4622db:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4622de:	83 c0 04             	add    eax,0x4
  4622e1:	3d a4 5d 51 00       	cmp    eax,0x515da4
  4622e6:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4622e9:	7c a3                	jl     0x46228e
  4622eb:	85 ff                	test   edi,edi
  4622ed:	74 71                	je     0x462360
  4622ef:	8a 47 ff             	mov    al,BYTE PTR [edi-0x1]
  4622f2:	84 c0                	test   al,al
  4622f4:	74 60                	je     0x462356
  4622f6:	3c ff                	cmp    al,0xff
  4622f8:	74 5c                	je     0x462356
  4622fa:	fe c8                	dec    al
  4622fc:	88 47 ff             	mov    BYTE PTR [edi-0x1],al
  4622ff:	5f                   	pop    edi

