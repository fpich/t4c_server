; Passe 30 — désassemblage statique de T4C Server.exe (PE32 x86).
; Chaque instruction est vérifiée par comparaison des octets à la section .text.
; Attention : ne PAS interpréter les tables de saut embarquées (0x461F2C, 0x461F78) comme des instructions.

; SpellMessageHandler::RegisterSpell / remplacements et gardes (VA 0x461360-0x461554)
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

; SpellMessageHandler::ActivateSpell / contrôles, acquisition, cible, diffusion et boucle (VA 0x461560-0x461F29)
  461560:	55                   	push   ebp
  461561:	8b ec                	mov    ebp,esp
  461563:	81 ec 80 00 00 00    	sub    esp,0x80
  461569:	53                   	push   ebx
  46156a:	56                   	push   esi
  46156b:	57                   	push   edi
  46156c:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  46156f:	85 ff                	test   edi,edi
  461571:	0f 84 12 01 00 00    	je     0x461689
  461577:	8b 07                	mov    eax,DWORD PTR [edi]
  461579:	8d 4d 98             	lea    ecx,[ebp-0x68]
  46157c:	51                   	push   ecx
  46157d:	8b cf                	mov    ecx,edi
  46157f:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  461582:	33 d2                	xor    edx,edx
  461584:	66 8b 50 08          	mov    dx,WORD PTR [eax+0x8]
  461588:	52                   	push   edx
  461589:	e8 32 09 01 00       	call   0x471ec0
  46158e:	8b d8                	mov    ebx,eax
  461590:	83 c4 04             	add    esp,0x4
  461593:	85 db                	test   ebx,ebx
  461595:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  461598:	0f 84 eb 00 00 00    	je     0x461689
  46159e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4615a1:	66 3d 10 27          	cmp    ax,0x2710
  4615a5:	0f 82 de 00 00 00    	jb     0x461689
  4615ab:	25 ff ff 00 00       	and    eax,0xffff
  4615b0:	05 f0 d8 ff ff       	add    eax,0xffffd8f0
  4615b5:	3d 00 04 00 00       	cmp    eax,0x400
  4615ba:	0f 8d c9 00 00 00    	jge    0x461689
  4615c0:	8b 04 85 a4 4d 51 00 	mov    eax,DWORD PTR [eax*4+0x514da4]
  4615c7:	85 c0                	test   eax,eax
  4615c9:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4615cc:	0f 84 b7 00 00 00    	je     0x461689
  4615d2:	8a 80 3a 02 00 00    	mov    al,BYTE PTR [eax+0x23a]
  4615d8:	3c 05                	cmp    al,0x5
  4615da:	74 08                	je     0x4615e4
  4615dc:	3c 0f                	cmp    al,0xf
  4615de:	74 04                	je     0x4615e4
  4615e0:	3c 12                	cmp    al,0x12
  4615e2:	75 04                	jne    0x4615e8
  4615e4:	8b f7                	mov    esi,edi
  4615e6:	eb 03                	jmp    0x4615eb
  4615e8:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  4615eb:	68 a0 86 01 00       	push   0x186a0
  4615f0:	6a 01                	push   0x1
  4615f2:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4615f7:	e8 a4 7a ff ff       	call   0x4590a0
  4615fc:	6a 00                	push   0x0
  4615fe:	6a 00                	push   0x0
  461600:	6a 00                	push   0x0
  461602:	6a 00                	push   0x0
  461604:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  461607:	db 45 14             	fild   DWORD PTR [ebp+0x14]
  46160a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  46160d:	6a 00                	push   0x0
  46160f:	6a 00                	push   0x0
  461611:	dc 0d 18 f5 4d 00    	fmul   QWORD PTR ds:0x4df518
  461617:	6a 00                	push   0x0
  461619:	56                   	push   esi
  46161a:	57                   	push   edi
  46161b:	dd 5d cc             	fstp   QWORD PTR [ebp-0x34]
  46161e:	8d 88 48 02 00 00    	lea    ecx,[eax+0x248]
  461624:	e8 27 ad fa ff       	call   0x40c350
  461629:	dc 5d cc             	fcomp  QWORD PTR [ebp-0x34]
  46162c:	df e0                	fnstsw ax
  46162e:	f6 c4 01             	test   ah,0x1
  461631:	75 56                	jne    0x461689
  461633:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  461636:	8a 81 2c 03 00 00    	mov    al,BYTE PTR [ecx+0x32c]
  46163c:	84 c0                	test   al,al
  46163e:	0f 84 b4 00 00 00    	je     0x4616f8
  461644:	85 f6                	test   esi,esi
  461646:	0f 84 ac 00 00 00    	je     0x4616f8
  46164c:	56                   	push   esi
  46164d:	57                   	push   edi
  46164e:	e8 8d 79 fd ff       	call   0x438fe0
  461653:	83 c4 08             	add    esp,0x8
  461656:	85 c0                	test   eax,eax
  461658:	75 38                	jne    0x461692
  46165a:	8b 17                	mov    edx,DWORD PTR [edi]
  46165c:	68 58 13 51 00       	push   0x511358
  461661:	8b cf                	mov    ecx,edi
  461663:	ff 92 94 01 00 00    	call   DWORD PTR [edx+0x194]
  461669:	50                   	push   eax
  46166a:	68 cf 01 00 00       	push   0x1cf
  46166f:	e8 7c c3 fd ff       	call   0x43d9f0
  461674:	83 c4 08             	add    esp,0x8
  461677:	8b cc                	mov    ecx,esp
  461679:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  46167c:	50                   	push   eax
  46167d:	e8 e2 03 07 00       	call   0x4d1a64
  461682:	8b cf                	mov    ecx,edi
  461684:	e8 07 18 fc ff       	call   0x422e90
  461689:	33 c0                	xor    eax,eax
  46168b:	5f                   	pop    edi
  46168c:	5e                   	pop    esi
  46168d:	5b                   	pop    ebx
  46168e:	8b e5                	mov    esp,ebp
  461690:	5d                   	pop    ebp
  461691:	c3                   	ret
  461692:	8b cf                	mov    ecx,edi
  461694:	e8 f7 dd 02 00       	call   0x48f490
  461699:	3c 06                	cmp    al,0x6
  46169b:	74 21                	je     0x4616be
  46169d:	8b cf                	mov    ecx,edi
  46169f:	e8 ec dd 02 00       	call   0x48f490
  4616a4:	3c 07                	cmp    al,0x7
  4616a6:	74 16                	je     0x4616be
  4616a8:	8b ce                	mov    ecx,esi
  4616aa:	e8 e1 dd 02 00       	call   0x48f490
  4616af:	3c 06                	cmp    al,0x6
  4616b1:	74 0b                	je     0x4616be
  4616b3:	8b ce                	mov    ecx,esi
  4616b5:	e8 d6 dd 02 00       	call   0x48f490
  4616ba:	3c 07                	cmp    al,0x7
  4616bc:	75 3a                	jne    0x4616f8
  4616be:	8b ce                	mov    ecx,esi
  4616c0:	e8 ab 9f 02 00       	call   0x48b670
  4616c5:	3c 01                	cmp    al,0x1
  4616c7:	75 2f                	jne    0x4616f8
  4616c9:	8b cf                	mov    ecx,edi
  4616cb:	e8 a0 9f 02 00       	call   0x48b670
  4616d0:	3c 01                	cmp    al,0x1
  4616d2:	75 24                	jne    0x4616f8
  4616d4:	8b 07                	mov    eax,DWORD PTR [edi]
  4616d6:	68 58 13 51 00       	push   0x511358
  4616db:	8b cf                	mov    ecx,edi
  4616dd:	ff 90 94 01 00 00    	call   DWORD PTR [eax+0x194]
  4616e3:	50                   	push   eax
  4616e4:	68 cf 01 00 00       	push   0x1cf
  4616e9:	e8 02 c3 fd ff       	call   0x43d9f0
  4616ee:	83 c4 08             	add    esp,0x8
  4616f1:	8b cc                	mov    ecx,esp
  4616f3:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  4616f6:	eb 84                	jmp    0x46167c
  4616f8:	8b 17                	mov    edx,DWORD PTR [edi]
  4616fa:	8d 45 a4             	lea    eax,[ebp-0x5c]
  4616fd:	50                   	push   eax
  4616fe:	8b cf                	mov    ecx,edi
  461700:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  461703:	85 f6                	test   esi,esi
  461705:	75 05                	jne    0x46170c
  461707:	8d 45 18             	lea    eax,[ebp+0x18]
  46170a:	eb 0b                	jmp    0x461717
  46170c:	8b 16                	mov    edx,DWORD PTR [esi]
  46170e:	8d 45 98             	lea    eax,[ebp-0x68]
  461711:	50                   	push   eax
  461712:	8b ce                	mov    ecx,esi
  461714:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  461717:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  46171a:	8b 91 28 03 00 00    	mov    edx,DWORD PTR [ecx+0x328]
  461720:	85 d2                	test   edx,edx
  461722:	74 67                	je     0x46178b
  461724:	3b f7                	cmp    esi,edi
  461726:	74 63                	je     0x46178b
  461728:	33 c9                	xor    ecx,ecx
  46172a:	6a 01                	push   0x1
  46172c:	51                   	push   ecx
  46172d:	89 4d f8             	mov    DWORD PTR [ebp-0x8],ecx
  461730:	89 4d b0             	mov    DWORD PTR [ebp-0x50],ecx
  461733:	89 4d b4             	mov    DWORD PTR [ebp-0x4c],ecx
  461736:	89 4d b8             	mov    DWORD PTR [ebp-0x48],ecx
  461739:	8d 55 f8             	lea    edx,[ebp-0x8]
  46173c:	52                   	push   edx
  46173d:	8d 4d b0             	lea    ecx,[ebp-0x50]
  461740:	51                   	push   ecx
  461741:	8b 08                	mov    ecx,DWORD PTR [eax]
  461743:	83 ec 0c             	sub    esp,0xc
  461746:	8b d4                	mov    edx,esp
  461748:	89 0a                	mov    DWORD PTR [edx],ecx
  46174a:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  46174d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  461750:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  461753:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  461756:	8b 55 a4             	mov    edx,DWORD PTR [ebp-0x5c]
  461759:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
  46175c:	83 ec 0c             	sub    esp,0xc
  46175f:	8b cc                	mov    ecx,esp
  461761:	89 11                	mov    DWORD PTR [ecx],edx
  461763:	8b 55 ac             	mov    edx,DWORD PTR [ebp-0x54]
  461766:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  461769:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  46176c:	8b cb                	mov    ecx,ebx
  46176e:	e8 8d 0f 05 00       	call   0x4b2700
  461773:	85 c0                	test   eax,eax
  461775:	74 34                	je     0x4617ab
  461777:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
  46177a:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
  46177d:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
  461780:	8b 55 b8             	mov    edx,DWORD PTR [ebp-0x48]
  461783:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
  461786:	89 4d 1c             	mov    DWORD PTR [ebp+0x1c],ecx
  461789:	eb 1d                	jmp    0x4617a8
  46178b:	85 f6                	test   esi,esi
  46178d:	74 47                	je     0x4617d6
  46178f:	8b 06                	mov    eax,DWORD PTR [esi]
  461791:	8d 4d 98             	lea    ecx,[ebp-0x68]
  461794:	51                   	push   ecx
  461795:	8b ce                	mov    ecx,esi
  461797:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  46179a:	8b 10                	mov    edx,DWORD PTR [eax]
  46179c:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  46179f:	89 55 18             	mov    DWORD PTR [ebp+0x18],edx
  4617a2:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  4617a5:	89 4d 1c             	mov    DWORD PTR [ebp+0x1c],ecx
  4617a8:	89 55 20             	mov    DWORD PTR [ebp+0x20],edx
  4617ab:	85 f6                	test   esi,esi
  4617ad:	74 27                	je     0x4617d6
  4617af:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4617b2:	33 c0                	xor    eax,eax
  4617b4:	8a 81 3a 02 00 00    	mov    al,BYTE PTR [ecx+0x23a]
  4617ba:	48                   	dec    eax
  4617bb:	83 f8 12             	cmp    eax,0x12
  4617be:	77 16                	ja     0x4617d6
  4617c0:	ff 24 85 2c 1f 46 00 	jmp    DWORD PTR [eax*4+0x461f2c]
  4617c7:	8b ce                	mov    ecx,esi
  4617c9:	e8 a2 9e 02 00       	call   0x48b670
  4617ce:	3c 03                	cmp    al,0x3
  4617d0:	0f 85 79 01 00 00    	jne    0x46194f
  4617d6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4617d9:	80 b9 3a 02 00 00 12 	cmp    BYTE PTR [ecx+0x23a],0x12
  4617e0:	75 1e                	jne    0x461800
  4617e2:	8b 17                	mov    edx,DWORD PTR [edi]
  4617e4:	8d 45 98             	lea    eax,[ebp-0x68]
  4617e7:	50                   	push   eax
  4617e8:	8b cf                	mov    ecx,edi
  4617ea:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4617ed:	8b 08                	mov    ecx,DWORD PTR [eax]
  4617ef:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4617f2:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4617f5:	89 4d 18             	mov    DWORD PTR [ebp+0x18],ecx
  4617f8:	89 55 1c             	mov    DWORD PTR [ebp+0x1c],edx
  4617fb:	89 45 20             	mov    DWORD PTR [ebp+0x20],eax
  4617fe:	33 f6                	xor    esi,esi
  461800:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  461803:	66 83 b9 3c 02 00 00 00 	cmp    WORD PTR [ecx+0x23c],0x0
  46180b:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
  461812:	0f 84 05 02 00 00    	je     0x461a1d
  461818:	85 f6                	test   esi,esi
  46181a:	0f 84 66 01 00 00    	je     0x461986
  461820:	8b ce                	mov    ecx,esi
  461822:	e8 d9 9e 02 00       	call   0x48b700
  461827:	8b 16                	mov    edx,DWORD PTR [esi]
  461829:	8b d8                	mov    ebx,eax
  46182b:	8d 45 98             	lea    eax,[ebp-0x68]
  46182e:	50                   	push   eax
  46182f:	8b ce                	mov    ecx,esi
  461831:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  461834:	8b 08                	mov    ecx,DWORD PTR [eax]
  461836:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  461839:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  46183c:	89 4d c8             	mov    DWORD PTR [ebp-0x38],ecx
  46183f:	89 55 cc             	mov    DWORD PTR [ebp-0x34],edx
  461842:	e9 50 01 00 00       	jmp    0x461997
  461847:	8b ce                	mov    ecx,esi
  461849:	e8 22 9e 02 00       	call   0x48b670
  46184e:	3c 01                	cmp    al,0x1
  461850:	74 84                	je     0x4617d6
  461852:	8b ce                	mov    ecx,esi
  461854:	e8 17 9e 02 00       	call   0x48b670
  461859:	3c 02                	cmp    al,0x2
  46185b:	e9 70 ff ff ff       	jmp    0x4617d0
  461860:	3b f7                	cmp    esi,edi
  461862:	0f 84 e7 00 00 00    	je     0x46194f
  461868:	8b ce                	mov    ecx,esi
  46186a:	e8 01 9e 02 00       	call   0x48b670
  46186f:	3c 01                	cmp    al,0x1
  461871:	0f 85 d8 00 00 00    	jne    0x46194f
  461877:	e9 5a ff ff ff       	jmp    0x4617d6
  46187c:	3b f7                	cmp    esi,edi
  46187e:	0f 84 cb 00 00 00    	je     0x46194f
  461884:	8b ce                	mov    ecx,esi
  461886:	e8 e5 9d 02 00       	call   0x48b670
  46188b:	3c 02                	cmp    al,0x2
  46188d:	0f 84 43 ff ff ff    	je     0x4617d6
  461893:	8b ce                	mov    ecx,esi
  461895:	e8 d6 9d 02 00       	call   0x48b670
  46189a:	3c 01                	cmp    al,0x1
  46189c:	0f 85 ad 00 00 00    	jne    0x46194f
  4618a2:	e9 2f ff ff ff       	jmp    0x4617d6
  4618a7:	3b f7                	cmp    esi,edi
  4618a9:	0f 84 a0 00 00 00    	je     0x46194f
  4618af:	e9 22 ff ff ff       	jmp    0x4617d6
  4618b4:	3b fe                	cmp    edi,esi
  4618b6:	0f 84 1a ff ff ff    	je     0x4617d6
  4618bc:	8b cf                	mov    ecx,edi
  4618be:	e8 ad 9d 02 00       	call   0x48b670
  4618c3:	3c 01                	cmp    al,0x1
  4618c5:	0f 85 84 00 00 00    	jne    0x46194f
  4618cb:	3b fe                	cmp    edi,esi
  4618cd:	0f 84 03 ff ff ff    	je     0x4617d6
  4618d3:	8b ce                	mov    ecx,esi
  4618d5:	e8 96 9d 02 00       	call   0x48b670
  4618da:	3c 01                	cmp    al,0x1
  4618dc:	75 71                	jne    0x46194f
  4618de:	8b cf                	mov    ecx,edi
  4618e0:	e8 db e3 fb ff       	call   0x41fcc0
  4618e5:	85 c0                	test   eax,eax
  4618e7:	74 66                	je     0x46194f
  4618e9:	56                   	push   esi
  4618ea:	8b cf                	mov    ecx,edi
  4618ec:	e8 cf e3 fb ff       	call   0x41fcc0
  4618f1:	8b c8                	mov    ecx,eax
  4618f3:	e8 b8 92 fd ff       	call   0x43abb0
  4618f8:	84 c0                	test   al,al
  4618fa:	74 53                	je     0x46194f
  4618fc:	e9 d5 fe ff ff       	jmp    0x4617d6
  461901:	3b f7                	cmp    esi,edi
  461903:	75 06                	jne    0x46190b
  461905:	eb 48                	jmp    0x46194f
  461907:	3b f7                	cmp    esi,edi
  461909:	74 44                	je     0x46194f
  46190b:	8b cf                	mov    ecx,edi
  46190d:	e8 5e 9d 02 00       	call   0x48b670
  461912:	3c 01                	cmp    al,0x1
  461914:	0f 85 bc fe ff ff    	jne    0x4617d6
  46191a:	8b ce                	mov    ecx,esi
  46191c:	e8 4f 9d 02 00       	call   0x48b670
  461921:	3c 01                	cmp    al,0x1
  461923:	0f 85 ad fe ff ff    	jne    0x4617d6
  461929:	8b cf                	mov    ecx,edi
  46192b:	e8 90 e3 fb ff       	call   0x41fcc0
  461930:	85 c0                	test   eax,eax
  461932:	0f 84 9e fe ff ff    	je     0x4617d6
  461938:	56                   	push   esi
  461939:	8b cf                	mov    ecx,edi
  46193b:	e8 80 e3 fb ff       	call   0x41fcc0
  461940:	8b c8                	mov    ecx,eax
  461942:	e8 69 92 fd ff       	call   0x43abb0
  461947:	84 c0                	test   al,al
  461949:	0f 84 87 fe ff ff    	je     0x4617d6
  46194f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  461952:	80 ba 3a 02 00 00 12 	cmp    BYTE PTR [edx+0x23a],0x12
  461959:	0f 84 77 fe ff ff    	je     0x4617d6
  46195f:	8b 07                	mov    eax,DWORD PTR [edi]
  461961:	68 58 13 51 00       	push   0x511358
  461966:	8b cf                	mov    ecx,edi
  461968:	ff 90 94 01 00 00    	call   DWORD PTR [eax+0x194]
  46196e:	50                   	push   eax
  46196f:	68 d6 01 00 00       	push   0x1d6
  461974:	e8 77 c0 fd ff       	call   0x43d9f0
  461979:	83 c4 08             	add    esp,0x8
  46197c:	8b cc                	mov    ecx,esp
  46197e:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  461981:	e9 f6 fc ff ff       	jmp    0x46167c
  461986:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  461989:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  46198c:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  46198f:	33 db                	xor    ebx,ebx
  461991:	89 4d c8             	mov    DWORD PTR [ebp-0x38],ecx
  461994:	89 55 cc             	mov    DWORD PTR [ebp-0x34],edx
  461997:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
  46199a:	e8 71 0e 00 00       	call   0x462810
  46199f:	8b 55 c8             	mov    edx,DWORD PTR [ebp-0x38]
  4619a2:	6a 00                	push   0x0
  4619a4:	6a 00                	push   0x0
  4619a6:	50                   	push   eax
  4619a7:	83 ec 0c             	sub    esp,0xc
  4619aa:	8b cc                	mov    ecx,esp
  4619ac:	89 11                	mov    DWORD PTR [ecx],edx
  4619ae:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
  4619b1:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4619b4:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  4619b7:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  4619ba:	8b 07                	mov    eax,DWORD PTR [edi]
  4619bc:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4619bf:	8d 4d 98             	lea    ecx,[ebp-0x68]
  4619c2:	51                   	push   ecx
  4619c3:	8b cf                	mov    ecx,edi
  4619c5:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  4619c8:	8b 08                	mov    ecx,DWORD PTR [eax]
  4619ca:	83 ec 0c             	sub    esp,0xc
  4619cd:	8b d4                	mov    edx,esp
  4619cf:	89 0a                	mov    DWORD PTR [edx],ecx
  4619d1:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4619d4:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4619d7:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  4619da:	53                   	push   ebx
  4619db:	8b cf                	mov    ecx,edi
  4619dd:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4619e0:	e8 1b 9d 02 00       	call   0x48b700
  4619e5:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4619e8:	33 d2                	xor    edx,edx
  4619ea:	66 8b 91 3c 02 00 00 	mov    dx,WORD PTR [ecx+0x23c]
  4619f1:	50                   	push   eax
  4619f2:	8b 07                	mov    eax,DWORD PTR [edi]
  4619f4:	8d 4d bc             	lea    ecx,[ebp-0x44]
  4619f7:	52                   	push   edx
  4619f8:	6a 1e                	push   0x1e
  4619fa:	51                   	push   ecx
  4619fb:	8b cf                	mov    ecx,edi
  4619fd:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  461a00:	8b 08                	mov    ecx,DWORD PTR [eax]
  461a02:	83 ec 0c             	sub    esp,0xc
  461a05:	8b d4                	mov    edx,esp
  461a07:	89 0a                	mov    DWORD PTR [edx],ecx
  461a09:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  461a0c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  461a0f:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  461a12:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  461a15:	e8 e6 e4 fa ff       	call   0x40ff00
  461a1a:	83 c4 40             	add    esp,0x40
  461a1d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  461a20:	8b 1f                	mov    ebx,DWORD PTR [edi]
  461a22:	6a 00                	push   0x0
  461a24:	6a 00                	push   0x0
  461a26:	6a 00                	push   0x0
  461a28:	6a 00                	push   0x0
  461a2a:	6a 00                	push   0x0
  461a2c:	6a 00                	push   0x0
  461a2e:	6a 00                	push   0x0
  461a30:	56                   	push   esi
  461a31:	57                   	push   edi
  461a32:	81 c1 58 01 00 00    	add    ecx,0x158
  461a38:	e8 13 a9 fa ff       	call   0x40c350
  461a3d:	e8 38 03 07 00       	call   0x4d1d7a
  461a42:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  461a45:	50                   	push   eax
  461a46:	6a 00                	push   0x0
  461a48:	6a 00                	push   0x0
  461a4a:	6a 00                	push   0x0
  461a4c:	6a 00                	push   0x0
  461a4e:	6a 00                	push   0x0
  461a50:	6a 00                	push   0x0
  461a52:	6a 00                	push   0x0
  461a54:	56                   	push   esi
  461a55:	57                   	push   edi
  461a56:	8d 8a c8 01 00 00    	lea    ecx,[edx+0x1c8]
  461a5c:	e8 ef a8 fa ff       	call   0x40c350
  461a61:	e8 14 03 07 00       	call   0x4d1d7a
  461a66:	50                   	push   eax
  461a67:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  461a6a:	6a 00                	push   0x0
  461a6c:	6a 00                	push   0x0
  461a6e:	6a 00                	push   0x0
  461a70:	6a 00                	push   0x0
  461a72:	6a 00                	push   0x0
  461a74:	6a 00                	push   0x0
  461a76:	6a 00                	push   0x0
  461a78:	56                   	push   esi
  461a79:	57                   	push   edi
  461a7a:	8d 88 e8 00 00 00    	lea    ecx,[eax+0xe8]
  461a80:	e8 cb a8 fa ff       	call   0x40c350
  461a85:	e8 f0 02 07 00       	call   0x4d1d7a
  461a8a:	50                   	push   eax
  461a8b:	8b cf                	mov    ecx,edi
  461a8d:	ff 53 78             	call   DWORD PTR [ebx+0x78]
  461a90:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
  461a93:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  461a96:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  461a99:	6a 00                	push   0x0
  461a9b:	6a 00                	push   0x0
  461a9d:	83 ec 0c             	sub    esp,0xc
  461aa0:	8b cc                	mov    ecx,esp
  461aa2:	89 19                	mov    DWORD PTR [ecx],ebx
  461aa4:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  461aa7:	56                   	push   esi
  461aa8:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  461aab:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  461aae:	57                   	push   edi
  461aaf:	51                   	push   ecx
  461ab0:	e8 1b 05 00 00       	call   0x461fd0
  461ab5:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  461ab8:	88 45 e0             	mov    BYTE PTR [ebp-0x20],al
  461abb:	8a 82 3b 02 00 00    	mov    al,BYTE PTR [edx+0x23b]
  461ac1:	83 c4 20             	add    esp,0x20
  461ac4:	84 c0                	test   al,al
  461ac6:	75 0f                	jne    0x461ad7
  461ac8:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  461acb:	25 ff 00 00 00       	and    eax,0xff
  461ad0:	5f                   	pop    edi
  461ad1:	5e                   	pop    esi
  461ad2:	5b                   	pop    ebx
  461ad3:	8b e5                	mov    esp,ebp
  461ad5:	5d                   	pop    ebp
  461ad6:	c3                   	ret
  461ad7:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  461ada:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  461add:	89 55 c4             	mov    DWORD PTR [ebp-0x3c],edx
  461ae0:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
  461ae3:	25 ff 00 00 00       	and    eax,0xff
  461ae8:	8b cb                	mov    ecx,ebx
  461aea:	2b c8                	sub    ecx,eax
  461aec:	ba 00 00 00 00       	mov    edx,0x0
  461af1:	0f 98 c2             	sets   dl
  461af4:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  461af7:	4a                   	dec    edx
  461af8:	23 d1                	and    edx,ecx
  461afa:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  461afd:	89 55 e8             	mov    DWORD PTR [ebp-0x18],edx
  461b00:	2b c8                	sub    ecx,eax
  461b02:	ba 00 00 00 00       	mov    edx,0x0
  461b07:	0f 98 c2             	sets   dl
  461b0a:	03 c3                	add    eax,ebx
  461b0c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  461b0f:	4a                   	dec    edx
  461b10:	23 d1                	and    edx,ecx
  461b12:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  461b15:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
  461b18:	e8 23 01 05 00       	call   0x4b1c40
  461b1d:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
  461b20:	7c 0c                	jl     0x461b2e
  461b22:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  461b25:	e8 16 01 05 00       	call   0x4b1c40
  461b2a:	48                   	dec    eax
  461b2b:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  461b2e:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  461b31:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  461b34:	33 c0                	xor    eax,eax
  461b36:	8a 81 3b 02 00 00    	mov    al,BYTE PTR [ecx+0x23b]
  461b3c:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  461b3f:	03 c2                	add    eax,edx
  461b41:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  461b44:	e8 07 01 05 00       	call   0x4b1c50
  461b49:	39 45 14             	cmp    DWORD PTR [ebp+0x14],eax
  461b4c:	7c 0c                	jl     0x461b5a
  461b4e:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  461b51:	e8 fa 00 05 00       	call   0x4b1c50
  461b56:	48                   	dec    eax
  461b57:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  461b5a:	85 f6                	test   esi,esi
  461b5c:	75 14                	jne    0x461b72
  461b5e:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  461b61:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  461b64:	89 5d b0             	mov    DWORD PTR [ebp-0x50],ebx
  461b67:	89 55 b4             	mov    DWORD PTR [ebp-0x4c],edx
  461b6a:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
  461b6d:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
  461b70:	eb 26                	jmp    0x461b98
  461b72:	8b 16                	mov    edx,DWORD PTR [esi]
  461b74:	8d 45 98             	lea    eax,[ebp-0x68]
  461b77:	50                   	push   eax
  461b78:	8b ce                	mov    ecx,esi
  461b7a:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  461b7d:	8b 08                	mov    ecx,DWORD PTR [eax]
  461b7f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  461b82:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  461b85:	89 4d b0             	mov    DWORD PTR [ebp-0x50],ecx
  461b88:	8b ce                	mov    ecx,esi
  461b8a:	89 55 b4             	mov    DWORD PTR [ebp-0x4c],edx
  461b8d:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
  461b90:	e8 6b 9b 02 00       	call   0x48b700
  461b95:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  461b98:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  461b9b:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
  461b9e:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  461ba1:	0f 8d 74 03 00 00    	jge    0x461f1b
  461ba7:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  461baa:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  461bad:	3b c1                	cmp    eax,ecx
  461baf:	8b d8                	mov    ebx,eax
  461bb1:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  461bb4:	0f 8d 4f 03 00 00    	jge    0x461f09
  461bba:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
  461bbd:	2b 45 bc             	sub    eax,DWORD PTR [ebp-0x44]
  461bc0:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  461bc3:	8b 75 c0             	mov    esi,DWORD PTR [ebp-0x40]
  461bc6:	8b 4d dc             	mov    ecx,DWORD PTR [ebp-0x24]
  461bc9:	8b c3                	mov    eax,ebx
  461bcb:	2b c6                	sub    eax,esi
  461bcd:	85 c9                	test   ecx,ecx
  461bcf:	75 08                	jne    0x461bd9
  461bd1:	85 c0                	test   eax,eax
  461bd3:	0f 84 1e 03 00 00    	je     0x461ef7
  461bd9:	8b d0                	mov    edx,eax
  461bdb:	0f af d0             	imul   edx,eax
  461bde:	8b c1                	mov    eax,ecx
  461be0:	0f af c1             	imul   eax,ecx
  461be3:	03 d0                	add    edx,eax
  461be5:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
  461be8:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  461beb:	33 c9                	xor    ecx,ecx
  461bed:	db 45 d8             	fild   DWORD PTR [ebp-0x28]
  461bf0:	8a 8a 3b 02 00 00    	mov    cl,BYTE PTR [edx+0x23b]
  461bf6:	d9 fa                	fsqrt
  461bf8:	89 4d d8             	mov    DWORD PTR [ebp-0x28],ecx
  461bfb:	dd 55 cc             	fst    QWORD PTR [ebp-0x34]
  461bfe:	db 45 d8             	fild   DWORD PTR [ebp-0x28]
  461c01:	d9 c9                	fxch   st(1)
  461c03:	de d9                	fcompp
  461c05:	df e0                	fnstsw ax
  461c07:	f6 c4 01             	test   ah,0x1
  461c0a:	0f 84 e7 02 00 00    	je     0x461ef7
  461c10:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  461c13:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
  461c16:	83 ec 0c             	sub    esp,0xc
  461c19:	8b c4                	mov    eax,esp
  461c1b:	89 08                	mov    DWORD PTR [eax],ecx
  461c1d:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  461c20:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  461c23:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  461c26:	e8 95 d4 04 00       	call   0x4af0c0
  461c2b:	8b f0                	mov    esi,eax
  461c2d:	85 f6                	test   esi,esi
  461c2f:	0f 84 c2 02 00 00    	je     0x461ef7
  461c35:	8b ce                	mov    ecx,esi
  461c37:	e8 34 9a 02 00       	call   0x48b670
  461c3c:	3c 04                	cmp    al,0x4
  461c3e:	0f 84 b3 02 00 00    	je     0x461ef7
  461c44:	8b ce                	mov    ecx,esi
  461c46:	e8 25 9a 02 00       	call   0x48b670
  461c4b:	3c 03                	cmp    al,0x3
  461c4d:	0f 84 a4 02 00 00    	je     0x461ef7
  461c53:	8b ce                	mov    ecx,esi
  461c55:	e8 16 9a 02 00       	call   0x48b670
  461c5a:	3c 01                	cmp    al,0x1
  461c5c:	75 1f                	jne    0x461c7d
  461c5e:	8b ce                	mov    ecx,esi
  461c60:	e8 8b 8e fb ff       	call   0x41aaf0
  461c65:	85 c0                	test   eax,eax
  461c67:	74 14                	je     0x461c7d
  461c69:	8b c8                	mov    ecx,eax
  461c6b:	e8 70 2e ff ff       	call   0x454ae0
  461c70:	83 e2 10             	and    edx,0x10
  461c73:	33 c0                	xor    eax,eax
  461c75:	0b c2                	or     eax,edx
  461c77:	0f 85 7a 02 00 00    	jne    0x461ef7
  461c7d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  461c80:	33 c0                	xor    eax,eax
  461c82:	8a 81 3a 02 00 00    	mov    al,BYTE PTR [ecx+0x23a]
  461c88:	48                   	dec    eax
  461c89:	83 f8 12             	cmp    eax,0x12
  461c8c:	0f 87 31 01 00 00    	ja     0x461dc3
  461c92:	ff 24 85 78 1f 46 00 	jmp    DWORD PTR [eax*4+0x461f78]
  461c99:	8b ce                	mov    ecx,esi
  461c9b:	e8 d0 99 02 00       	call   0x48b670
  461ca0:	3c 03                	cmp    al,0x3
  461ca2:	0f 85 4f 02 00 00    	jne    0x461ef7
  461ca8:	e9 16 01 00 00       	jmp    0x461dc3
  461cad:	8b ce                	mov    ecx,esi
  461caf:	e8 bc 99 02 00       	call   0x48b670
  461cb4:	3c 01                	cmp    al,0x1
  461cb6:	0f 84 07 01 00 00    	je     0x461dc3
  461cbc:	8b ce                	mov    ecx,esi
  461cbe:	e8 ad 99 02 00       	call   0x48b670
  461cc3:	3c 02                	cmp    al,0x2
  461cc5:	0f 85 2c 02 00 00    	jne    0x461ef7
  461ccb:	e9 f3 00 00 00       	jmp    0x461dc3
  461cd0:	3b f7                	cmp    esi,edi
  461cd2:	0f 84 1f 02 00 00    	je     0x461ef7
  461cd8:	8b ce                	mov    ecx,esi
  461cda:	e8 91 99 02 00       	call   0x48b670
  461cdf:	3c 01                	cmp    al,0x1
  461ce1:	0f 85 10 02 00 00    	jne    0x461ef7
  461ce7:	e9 d7 00 00 00       	jmp    0x461dc3
  461cec:	3b f7                	cmp    esi,edi
  461cee:	0f 84 03 02 00 00    	je     0x461ef7
  461cf4:	8b ce                	mov    ecx,esi
  461cf6:	e8 75 99 02 00       	call   0x48b670
  461cfb:	3c 02                	cmp    al,0x2
  461cfd:	0f 84 c0 00 00 00    	je     0x461dc3
  461d03:	8b ce                	mov    ecx,esi
  461d05:	e8 66 99 02 00       	call   0x48b670
  461d0a:	3c 01                	cmp    al,0x1
  461d0c:	0f 85 e5 01 00 00    	jne    0x461ef7
  461d12:	e9 ac 00 00 00       	jmp    0x461dc3
  461d17:	3b f7                	cmp    esi,edi
  461d19:	0f 84 d8 01 00 00    	je     0x461ef7
  461d1f:	e9 9f 00 00 00       	jmp    0x461dc3
  461d24:	3b fe                	cmp    edi,esi
  461d26:	0f 84 97 00 00 00    	je     0x461dc3
  461d2c:	8b cf                	mov    ecx,edi
  461d2e:	e8 3d 99 02 00       	call   0x48b670
  461d33:	3c 01                	cmp    al,0x1
  461d35:	0f 85 bc 01 00 00    	jne    0x461ef7
  461d3b:	3b fe                	cmp    edi,esi
  461d3d:	0f 84 80 00 00 00    	je     0x461dc3
  461d43:	8b ce                	mov    ecx,esi
  461d45:	e8 26 99 02 00       	call   0x48b670
  461d4a:	3c 01                	cmp    al,0x1
  461d4c:	0f 85 a5 01 00 00    	jne    0x461ef7
  461d52:	8b cf                	mov    ecx,edi
  461d54:	e8 67 df fb ff       	call   0x41fcc0
  461d59:	85 c0                	test   eax,eax
  461d5b:	0f 84 96 01 00 00    	je     0x461ef7
  461d61:	56                   	push   esi
  461d62:	8b cf                	mov    ecx,edi
  461d64:	e8 57 df fb ff       	call   0x41fcc0
  461d69:	8b c8                	mov    ecx,eax
  461d6b:	e8 40 8e fd ff       	call   0x43abb0
  461d70:	84 c0                	test   al,al
  461d72:	0f 84 7f 01 00 00    	je     0x461ef7
  461d78:	eb 49                	jmp    0x461dc3
  461d7a:	3b f7                	cmp    esi,edi
  461d7c:	75 0d                	jne    0x461d8b
  461d7e:	e9 74 01 00 00       	jmp    0x461ef7
  461d83:	3b f7                	cmp    esi,edi
  461d85:	0f 84 6c 01 00 00    	je     0x461ef7
  461d8b:	8b cf                	mov    ecx,edi
  461d8d:	e8 de 98 02 00       	call   0x48b670
  461d92:	3c 01                	cmp    al,0x1
  461d94:	75 2d                	jne    0x461dc3
  461d96:	8b ce                	mov    ecx,esi
  461d98:	e8 d3 98 02 00       	call   0x48b670
  461d9d:	3c 01                	cmp    al,0x1
  461d9f:	75 22                	jne    0x461dc3
  461da1:	8b cf                	mov    ecx,edi
  461da3:	e8 18 df fb ff       	call   0x41fcc0
  461da8:	85 c0                	test   eax,eax
  461daa:	74 17                	je     0x461dc3
  461dac:	56                   	push   esi
  461dad:	8b cf                	mov    ecx,edi
  461daf:	e8 0c df fb ff       	call   0x41fcc0
  461db4:	8b c8                	mov    ecx,eax
  461db6:	e8 f5 8d fd ff       	call   0x43abb0
  461dbb:	84 c0                	test   al,al
  461dbd:	0f 85 34 01 00 00    	jne    0x461ef7
  461dc3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  461dc6:	8a 82 2c 03 00 00    	mov    al,BYTE PTR [edx+0x32c]
  461dcc:	84 c0                	test   al,al
  461dce:	74 12                	je     0x461de2
  461dd0:	56                   	push   esi
  461dd1:	57                   	push   edi
  461dd2:	e8 09 72 fd ff       	call   0x438fe0
  461dd7:	83 c4 08             	add    esp,0x8
  461dda:	85 c0                	test   eax,eax
  461ddc:	0f 84 15 01 00 00    	je     0x461ef7
  461de2:	33 c0                	xor    eax,eax
  461de4:	50                   	push   eax
  461de5:	50                   	push   eax
  461de6:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
  461de9:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
  461dec:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
  461def:	89 45 a0             	mov    DWORD PTR [ebp-0x60],eax
  461df2:	8b 16                	mov    edx,DWORD PTR [esi]
  461df4:	8d 45 d4             	lea    eax,[ebp-0x2c]
  461df7:	50                   	push   eax
  461df8:	8d 4d 98             	lea    ecx,[ebp-0x68]
  461dfb:	51                   	push   ecx
  461dfc:	8d 45 8c             	lea    eax,[ebp-0x74]
  461dff:	50                   	push   eax
  461e00:	8b ce                	mov    ecx,esi
  461e02:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  461e05:	8b 10                	mov    edx,DWORD PTR [eax]
  461e07:	83 ec 0c             	sub    esp,0xc
  461e0a:	8b cc                	mov    ecx,esp
  461e0c:	89 11                	mov    DWORD PTR [ecx],edx
  461e0e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  461e11:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  461e14:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  461e17:	8b 55 bc             	mov    edx,DWORD PTR [ebp-0x44]
  461e1a:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  461e1d:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
  461e20:	83 ec 0c             	sub    esp,0xc
  461e23:	8b cc                	mov    ecx,esp
  461e25:	89 11                	mov    DWORD PTR [ecx],edx
  461e27:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
  461e2a:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  461e2d:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  461e30:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  461e33:	e8 c8 08 05 00       	call   0x4b2700
  461e38:	85 c0                	test   eax,eax
  461e3a:	0f 85 b7 00 00 00    	jne    0x461ef7
  461e40:	8b 06                	mov    eax,DWORD PTR [esi]
  461e42:	8d 4d 80             	lea    ecx,[ebp-0x80]
  461e45:	51                   	push   ecx
  461e46:	8b ce                	mov    ecx,esi
  461e48:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  461e4b:	8b 38                	mov    edi,DWORD PTR [eax]
  461e4d:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  461e50:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  461e53:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  461e56:	66 83 b8 3e 02 00 00 00 	cmp    WORD PTR [eax+0x23e],0x0
  461e5e:	89 55 20             	mov    DWORD PTR [ebp+0x20],edx
  461e61:	74 65                	je     0x461ec8
  461e63:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  461e66:	6a 00                	push   0x0
  461e68:	51                   	push   ecx
  461e69:	e8 a2 09 00 00       	call   0x462810
  461e6e:	50                   	push   eax
  461e6f:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  461e72:	83 ec 0c             	sub    esp,0xc
  461e75:	8b d4                	mov    edx,esp
  461e77:	89 3a                	mov    DWORD PTR [edx],edi
  461e79:	89 5a 04             	mov    DWORD PTR [edx+0x4],ebx
  461e7c:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  461e7f:	8b 55 b0             	mov    edx,DWORD PTR [ebp-0x50]
  461e82:	8b 45 b4             	mov    eax,DWORD PTR [ebp-0x4c]
  461e85:	83 ec 0c             	sub    esp,0xc
  461e88:	8b cc                	mov    ecx,esp
  461e8a:	89 11                	mov    DWORD PTR [ecx],edx
  461e8c:	8b 55 b8             	mov    edx,DWORD PTR [ebp-0x48]
  461e8f:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  461e92:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  461e95:	8b ce                	mov    ecx,esi
  461e97:	e8 64 98 02 00       	call   0x48b700
  461e9c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  461e9f:	50                   	push   eax
  461ea0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  461ea3:	33 d2                	xor    edx,edx
  461ea5:	66 8b 91 3e 02 00 00 	mov    dx,WORD PTR [ecx+0x23e]
  461eac:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  461eaf:	50                   	push   eax
  461eb0:	52                   	push   edx
  461eb1:	6a 1e                	push   0x1e
  461eb3:	83 ec 0c             	sub    esp,0xc
  461eb6:	8b c4                	mov    eax,esp
  461eb8:	89 38                	mov    DWORD PTR [eax],edi
  461eba:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  461ebd:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  461ec0:	e8 3b e0 fa ff       	call   0x40ff00
  461ec5:	83 c4 40             	add    esp,0x40
  461ec8:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
  461ecb:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  461ece:	52                   	push   edx
  461ecf:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  461ed2:	50                   	push   eax
  461ed3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  461ed6:	83 ec 0c             	sub    esp,0xc
  461ed9:	8b cc                	mov    ecx,esp
  461edb:	89 39                	mov    DWORD PTR [ecx],edi
  461edd:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  461ee0:	56                   	push   esi
  461ee1:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  461ee4:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  461ee7:	50                   	push   eax
  461ee8:	51                   	push   ecx
  461ee9:	e8 e2 00 00 00       	call   0x461fd0
  461eee:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  461ef1:	8b 5d e8             	mov    ebx,DWORD PTR [ebp-0x18]
  461ef4:	83 c4 20             	add    esp,0x20
  461ef7:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  461efa:	43                   	inc    ebx
  461efb:	3b d9                	cmp    ebx,ecx
  461efd:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  461f00:	0f 8c bd fc ff ff    	jl     0x461bc3
  461f06:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  461f09:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
  461f0c:	8b 75 f4             	mov    esi,DWORD PTR [ebp-0xc]
  461f0f:	42                   	inc    edx
  461f10:	3b d6                	cmp    edx,esi
  461f12:	89 55 f8             	mov    DWORD PTR [ebp-0x8],edx
  461f15:	0f 8c 92 fc ff ff    	jl     0x461bad
  461f1b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  461f1e:	5f                   	pop    edi
  461f1f:	5e                   	pop    esi
  461f20:	25 ff 00 00 00       	and    eax,0xff
  461f25:	5b                   	pop    ebx
  461f26:	8b e5                	mov    esp,ebp
  461f28:	5d                   	pop    ebp
  461f29:	c3                   	ret

; Sous-routine interne de distribution du sort (VA 0x461FD0-0x46222D)
  461fd0:	55                   	push   ebp
  461fd1:	8b ec                	mov    ebp,esp
  461fd3:	6a ff                	push   0xffffffff
  461fd5:	68 d8 7a 4d 00       	push   0x4d7ad8
  461fda:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  461fe0:	50                   	push   eax
  461fe1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  461fe8:	51                   	push   ecx
  461fe9:	53                   	push   ebx
  461fea:	56                   	push   esi
  461feb:	57                   	push   edi
  461fec:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  461fef:	85 ff                	test   edi,edi
  461ff1:	0f 84 8b 00 00 00    	je     0x462082
  461ff7:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  461ffa:	57                   	push   edi
  461ffb:	56                   	push   esi
  461ffc:	68 fc 6e 50 00       	push   0x506efc
  462001:	68 00 08 00 00       	push   0x800
  462006:	e8 35 fd 00 00       	call   0x471d40
  46200b:	83 c4 10             	add    esp,0x10
  46200e:	85 f6                	test   esi,esi
  462010:	74 05                	je     0x462017
  462012:	8d 5e 30             	lea    ebx,[esi+0x30]
  462015:	eb 02                	jmp    0x462019
  462017:	33 db                	xor    ebx,ebx
  462019:	8b 03                	mov    eax,DWORD PTR [ebx]
  46201b:	8b cb                	mov    ecx,ebx
  46201d:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
  462024:	ff 50 04             	call   DWORD PTR [eax+0x4]
  462027:	8b 57 30             	mov    edx,DWORD PTR [edi+0x30]
  46202a:	8d 4f 30             	lea    ecx,[edi+0x30]
  46202d:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  462030:	85 c0                	test   eax,eax
  462032:	75 2f                	jne    0x462063
  462034:	8b 03                	mov    eax,DWORD PTR [ebx]
  462036:	8b cb                	mov    ecx,ebx
  462038:	ff 50 08             	call   DWORD PTR [eax+0x8]
  46203b:	6a 00                	push   0x0
  46203d:	ff 15 20 e1 4d 00    	call   DWORD PTR ds:0x4de120
  462043:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  462046:	40                   	inc    eax
  462047:	83 f8 0a             	cmp    eax,0xa
  46204a:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  46204d:	73 20                	jae    0x46206f
  46204f:	8b 13                	mov    edx,DWORD PTR [ebx]
  462051:	8b cb                	mov    ecx,ebx
  462053:	ff 52 04             	call   DWORD PTR [edx+0x4]
  462056:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  462059:	8d 4f 30             	lea    ecx,[edi+0x30]
  46205c:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  46205f:	85 c0                	test   eax,eax
  462061:	74 d1                	je     0x462034
  462063:	8b 17                	mov    edx,DWORD PTR [edi]
  462065:	8b cf                	mov    ecx,edi
  462067:	ff 92 c8 01 00 00    	call   DWORD PTR [edx+0x1c8]
  46206d:	eb 6b                	jmp    0x4620da
  46206f:	32 c0                	xor    al,al
  462071:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  462074:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  46207b:	5f                   	pop    edi
  46207c:	5e                   	pop    esi
  46207d:	5b                   	pop    ebx
  46207e:	8b e5                	mov    esp,ebp
  462080:	5d                   	pop    ebp
  462081:	c3                   	ret
  462082:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  462085:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  462088:	8d 4e 30             	lea    ecx,[esi+0x30]
  46208b:	ff 50 04             	call   DWORD PTR [eax+0x4]
  46208e:	8b 1e                	mov    ebx,DWORD PTR [esi]
  462090:	e8 cb b9 fd ff       	call   0x43da60
  462095:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  462098:	50                   	push   eax
  462099:	51                   	push   ecx
  46209a:	8b ce                	mov    ecx,esi
  46209c:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  46209f:	8b d8                	mov    ebx,eax
  4620a1:	8b ce                	mov    ecx,esi
  4620a3:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4620aa:	e8 51 96 02 00       	call   0x48b700
  4620af:	8b 13                	mov    edx,DWORD PTR [ebx]
  4620b1:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4620b4:	50                   	push   eax
  4620b5:	33 c0                	xor    eax,eax
  4620b7:	66 8b 03             	mov    ax,WORD PTR [ebx]
  4620ba:	52                   	push   edx
  4620bb:	50                   	push   eax
  4620bc:	68 c0 6e 50 00       	push   0x506ec0
  4620c1:	68 00 08 00 00       	push   0x800
  4620c6:	e8 75 fc 00 00       	call   0x471d40
  4620cb:	83 c4 14             	add    esp,0x14
  4620ce:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4620d5:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  4620d8:	eb 7a                	jmp    0x462154
  4620da:	8b 1f                	mov    ebx,DWORD PTR [edi]
  4620dc:	e8 7f b9 fd ff       	call   0x43da60
  4620e1:	8d 4d f0             	lea    ecx,[ebp-0x10]
  4620e4:	50                   	push   eax
  4620e5:	51                   	push   ecx
  4620e6:	8b cf                	mov    ecx,edi
  4620e8:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  4620eb:	8b 10                	mov    edx,DWORD PTR [eax]
  4620ed:	8b 1e                	mov    ebx,DWORD PTR [esi]
  4620ef:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  4620f6:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  4620f9:	e8 62 b9 fd ff       	call   0x43da60
  4620fe:	8b ce                	mov    ecx,esi
  462100:	50                   	push   eax
  462101:	8d 45 10             	lea    eax,[ebp+0x10]
  462104:	50                   	push   eax
  462105:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  462108:	8b 18                	mov    ebx,DWORD PTR [eax]
  46210a:	8b cf                	mov    ecx,edi
  46210c:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  462110:	e8 eb 95 02 00       	call   0x48b700
  462115:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  462118:	50                   	push   eax
  462119:	51                   	push   ecx
  46211a:	8b ce                	mov    ecx,esi
  46211c:	e8 df 95 02 00       	call   0x48b700
  462121:	50                   	push   eax
  462122:	53                   	push   ebx
  462123:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  462126:	33 d2                	xor    edx,edx
  462128:	66 8b 13             	mov    dx,WORD PTR [ebx]
  46212b:	52                   	push   edx
  46212c:	68 80 6e 50 00       	push   0x506e80
  462131:	68 00 08 00 00       	push   0x800
  462136:	e8 05 fc 00 00       	call   0x471d40
  46213b:	83 c4 1c             	add    esp,0x1c
  46213e:	8d 4d 10             	lea    ecx,[ebp+0x10]
  462141:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  462145:	e8 f6 f8 06 00       	call   0x4d1a40
  46214a:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  462151:	8d 4d f0             	lea    ecx,[ebp-0x10]
  462154:	e8 e7 f8 06 00       	call   0x4d1a40
  462159:	8b 83 b0 03 00 00    	mov    eax,DWORD PTR [ebx+0x3b0]
  46215f:	8d 8b b0 03 00 00    	lea    ecx,[ebx+0x3b0]
  462165:	ff 50 04             	call   DWORD PTR [eax+0x4]
  462168:	8b 8b d4 03 00 00    	mov    ecx,DWORD PTR [ebx+0x3d4]
  46216e:	89 8b d0 03 00 00    	mov    DWORD PTR [ebx+0x3d0],ecx
  462174:	c7 83 f0 03 00 00 00 00 00 00 	mov    DWORD PTR [ebx+0x3f0],0x0
  46217e:	c6 83 e4 03 00 00 08 	mov    BYTE PTR [ebx+0x3e4],0x8
  462185:	8b 83 f0 03 00 00    	mov    eax,DWORD PTR [ebx+0x3f0]
  46218b:	85 c0                	test   eax,eax
  46218d:	8d 8b b0 03 00 00    	lea    ecx,[ebx+0x3b0]
  462193:	74 0a                	je     0x46219f
  462195:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  462198:	8b 02                	mov    eax,DWORD PTR [edx]
  46219a:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
  46219d:	eb 07                	jmp    0x4621a6
  46219f:	c7 41 40 01 00 00 00 	mov    DWORD PTR [ecx+0x40],0x1
  4621a6:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  4621a9:	85 c0                	test   eax,eax
  4621ab:	74 35                	je     0x4621e2
  4621ad:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  4621b0:	8b 8b d0 03 00 00    	mov    ecx,DWORD PTR [ebx+0x3d0]
  4621b6:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
  4621b9:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4621bc:	8b 11                	mov    edx,DWORD PTR [ecx]
  4621be:	50                   	push   eax
  4621bf:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4621c2:	50                   	push   eax
  4621c3:	83 ec 0c             	sub    esp,0xc
  4621c6:	8b c4                	mov    eax,esp
  4621c8:	89 18                	mov    DWORD PTR [eax],ebx
  4621ca:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
  4621cd:	57                   	push   edi
  4621ce:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  4621d1:	8b 5d 1c             	mov    ebx,DWORD PTR [ebp+0x1c]
  4621d4:	6a 00                	push   0x0
  4621d6:	56                   	push   esi
  4621d7:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  4621da:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4621dd:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4621e0:	eb a3                	jmp    0x462185
  4621e2:	8b 41 40             	mov    eax,DWORD PTR [ecx+0x40]
  4621e5:	85 c0                	test   eax,eax
  4621e7:	74 04                	je     0x4621ed
  4621e9:	c6 41 34 07          	mov    BYTE PTR [ecx+0x34],0x7
  4621ed:	c7 41 40 00 00 00 00 	mov    DWORD PTR [ecx+0x40],0x0
  4621f4:	8b 11                	mov    edx,DWORD PTR [ecx]
  4621f6:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4621f9:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  4621fc:	83 c6 30             	add    esi,0x30
  4621ff:	8b ce                	mov    ecx,esi
  462201:	ff 50 08             	call   DWORD PTR [eax+0x8]
  462204:	85 ff                	test   edi,edi
  462206:	74 13                	je     0x46221b
  462208:	8b 57 30             	mov    edx,DWORD PTR [edi+0x30]
  46220b:	8d 4f 30             	lea    ecx,[edi+0x30]
  46220e:	ff 52 08             	call   DWORD PTR [edx+0x8]
  462211:	8b 07                	mov    eax,DWORD PTR [edi]
  462213:	8b cf                	mov    ecx,edi
  462215:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  46221b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  46221e:	5f                   	pop    edi
  46221f:	5e                   	pop    esi
  462220:	b0 01                	mov    al,0x1
  462222:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  462229:	5b                   	pop    ebx
  46222a:	8b e5                	mov    esp,ebp
  46222c:	5d                   	pop    ebp
  46222d:	c3                   	ret

; SpellMessageHandler::GetSpell / recherche dans la table (VA 0x462230-0x46225B)
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
