; Preuves passe 53 — T4C Server.exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles exclusifs et uniquement regions executees. Les tables de dispatch ne sont pas comptees.

; [0x0040D3F1,0x0040E205) Comparaisons textuelles vraies/boostees, elements lumiere/tenebres, AC, or, distance
  40d3f1:	be 60 0e 50 00       	mov    esi,0x500e60
  40d3f6:	8b c7                	mov    eax,edi
  40d3f8:	8a 10                	mov    dl,BYTE PTR [eax]
  40d3fa:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d3fc:	8a ca                	mov    cl,dl
  40d3fe:	3a d3                	cmp    dl,bl
  40d400:	75 1e                	jne    0x40d420
  40d402:	84 c9                	test   cl,cl
  40d404:	74 16                	je     0x40d41c
  40d406:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d409:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d40c:	8a ca                	mov    cl,dl
  40d40e:	3a d3                	cmp    dl,bl
  40d410:	75 0e                	jne    0x40d420
  40d412:	83 c0 02             	add    eax,0x2
  40d415:	83 c6 02             	add    esi,0x2
  40d418:	84 c9                	test   cl,cl
  40d41a:	75 dc                	jne    0x40d3f8
  40d41c:	33 c0                	xor    eax,eax
  40d41e:	eb 05                	jmp    0x40d425
  40d420:	1b c0                	sbb    eax,eax
  40d422:	83 d8 ff             	sbb    eax,0xffffffff
  40d425:	85 c0                	test   eax,eax
  40d427:	75 0c                	jne    0x40d435
  40d429:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d42c:	c6 40 10 39          	mov    BYTE PTR [eax+0x10],0x39
  40d430:	e9 a6 1c 00 00       	jmp    0x40f0db
  40d435:	be 54 0e 50 00       	mov    esi,0x500e54
  40d43a:	8b c7                	mov    eax,edi
  40d43c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d43e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d440:	8a ca                	mov    cl,dl
  40d442:	3a d3                	cmp    dl,bl
  40d444:	75 1e                	jne    0x40d464
  40d446:	84 c9                	test   cl,cl
  40d448:	74 16                	je     0x40d460
  40d44a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d44d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d450:	8a ca                	mov    cl,dl
  40d452:	3a d3                	cmp    dl,bl
  40d454:	75 0e                	jne    0x40d464
  40d456:	83 c0 02             	add    eax,0x2
  40d459:	83 c6 02             	add    esi,0x2
  40d45c:	84 c9                	test   cl,cl
  40d45e:	75 dc                	jne    0x40d43c
  40d460:	33 c0                	xor    eax,eax
  40d462:	eb 05                	jmp    0x40d469
  40d464:	1b c0                	sbb    eax,eax
  40d466:	83 d8 ff             	sbb    eax,0xffffffff
  40d469:	85 c0                	test   eax,eax
  40d46b:	75 0c                	jne    0x40d479
  40d46d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d470:	c6 40 10 3a          	mov    BYTE PTR [eax+0x10],0x3a
  40d474:	e9 62 1c 00 00       	jmp    0x40f0db
  40d479:	be 48 0e 50 00       	mov    esi,0x500e48
  40d47e:	8b c7                	mov    eax,edi
  40d480:	8a 10                	mov    dl,BYTE PTR [eax]
  40d482:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d484:	8a ca                	mov    cl,dl
  40d486:	3a d3                	cmp    dl,bl
  40d488:	75 1e                	jne    0x40d4a8
  40d48a:	84 c9                	test   cl,cl
  40d48c:	74 16                	je     0x40d4a4
  40d48e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d491:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d494:	8a ca                	mov    cl,dl
  40d496:	3a d3                	cmp    dl,bl
  40d498:	75 0e                	jne    0x40d4a8
  40d49a:	83 c0 02             	add    eax,0x2
  40d49d:	83 c6 02             	add    esi,0x2
  40d4a0:	84 c9                	test   cl,cl
  40d4a2:	75 dc                	jne    0x40d480
  40d4a4:	33 c0                	xor    eax,eax
  40d4a6:	eb 05                	jmp    0x40d4ad
  40d4a8:	1b c0                	sbb    eax,eax
  40d4aa:	83 d8 ff             	sbb    eax,0xffffffff
  40d4ad:	85 c0                	test   eax,eax
  40d4af:	75 0c                	jne    0x40d4bd
  40d4b1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d4b4:	c6 40 10 3b          	mov    BYTE PTR [eax+0x10],0x3b
  40d4b8:	e9 1e 1c 00 00       	jmp    0x40f0db
  40d4bd:	be 3c 0e 50 00       	mov    esi,0x500e3c
  40d4c2:	8b c7                	mov    eax,edi
  40d4c4:	8a 10                	mov    dl,BYTE PTR [eax]
  40d4c6:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d4c8:	8a ca                	mov    cl,dl
  40d4ca:	3a d3                	cmp    dl,bl
  40d4cc:	75 1e                	jne    0x40d4ec
  40d4ce:	84 c9                	test   cl,cl
  40d4d0:	74 16                	je     0x40d4e8
  40d4d2:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d4d5:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d4d8:	8a ca                	mov    cl,dl
  40d4da:	3a d3                	cmp    dl,bl
  40d4dc:	75 0e                	jne    0x40d4ec
  40d4de:	83 c0 02             	add    eax,0x2
  40d4e1:	83 c6 02             	add    esi,0x2
  40d4e4:	84 c9                	test   cl,cl
  40d4e6:	75 dc                	jne    0x40d4c4
  40d4e8:	33 c0                	xor    eax,eax
  40d4ea:	eb 05                	jmp    0x40d4f1
  40d4ec:	1b c0                	sbb    eax,eax
  40d4ee:	83 d8 ff             	sbb    eax,0xffffffff
  40d4f1:	85 c0                	test   eax,eax
  40d4f3:	75 0c                	jne    0x40d501
  40d4f5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d4f8:	c6 40 10 3c          	mov    BYTE PTR [eax+0x10],0x3c
  40d4fc:	e9 da 1b 00 00       	jmp    0x40f0db
  40d501:	be 2c 0e 50 00       	mov    esi,0x500e2c
  40d506:	8b c7                	mov    eax,edi
  40d508:	8a 10                	mov    dl,BYTE PTR [eax]
  40d50a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d50c:	8a ca                	mov    cl,dl
  40d50e:	3a d3                	cmp    dl,bl
  40d510:	75 1e                	jne    0x40d530
  40d512:	84 c9                	test   cl,cl
  40d514:	74 16                	je     0x40d52c
  40d516:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d519:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d51c:	8a ca                	mov    cl,dl
  40d51e:	3a d3                	cmp    dl,bl
  40d520:	75 0e                	jne    0x40d530
  40d522:	83 c0 02             	add    eax,0x2
  40d525:	83 c6 02             	add    esi,0x2
  40d528:	84 c9                	test   cl,cl
  40d52a:	75 dc                	jne    0x40d508
  40d52c:	33 c0                	xor    eax,eax
  40d52e:	eb 05                	jmp    0x40d535
  40d530:	1b c0                	sbb    eax,eax
  40d532:	83 d8 ff             	sbb    eax,0xffffffff
  40d535:	85 c0                	test   eax,eax
  40d537:	75 0c                	jne    0x40d545
  40d539:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d53c:	c6 40 10 3d          	mov    BYTE PTR [eax+0x10],0x3d
  40d540:	e9 96 1b 00 00       	jmp    0x40f0db
  40d545:	be 1c 0e 50 00       	mov    esi,0x500e1c
  40d54a:	8b c7                	mov    eax,edi
  40d54c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d54e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d550:	8a ca                	mov    cl,dl
  40d552:	3a d3                	cmp    dl,bl
  40d554:	75 1e                	jne    0x40d574
  40d556:	84 c9                	test   cl,cl
  40d558:	74 16                	je     0x40d570
  40d55a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d55d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d560:	8a ca                	mov    cl,dl
  40d562:	3a d3                	cmp    dl,bl
  40d564:	75 0e                	jne    0x40d574
  40d566:	83 c0 02             	add    eax,0x2
  40d569:	83 c6 02             	add    esi,0x2
  40d56c:	84 c9                	test   cl,cl
  40d56e:	75 dc                	jne    0x40d54c
  40d570:	33 c0                	xor    eax,eax
  40d572:	eb 05                	jmp    0x40d579
  40d574:	1b c0                	sbb    eax,eax
  40d576:	83 d8 ff             	sbb    eax,0xffffffff
  40d579:	85 c0                	test   eax,eax
  40d57b:	75 0c                	jne    0x40d589
  40d57d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d580:	c6 40 10 3e          	mov    BYTE PTR [eax+0x10],0x3e
  40d584:	e9 52 1b 00 00       	jmp    0x40f0db
  40d589:	be 0c 0e 50 00       	mov    esi,0x500e0c
  40d58e:	8b c7                	mov    eax,edi
  40d590:	8a 10                	mov    dl,BYTE PTR [eax]
  40d592:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d594:	8a ca                	mov    cl,dl
  40d596:	3a d3                	cmp    dl,bl
  40d598:	75 1e                	jne    0x40d5b8
  40d59a:	84 c9                	test   cl,cl
  40d59c:	74 16                	je     0x40d5b4
  40d59e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d5a1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d5a4:	8a ca                	mov    cl,dl
  40d5a6:	3a d3                	cmp    dl,bl
  40d5a8:	75 0e                	jne    0x40d5b8
  40d5aa:	83 c0 02             	add    eax,0x2
  40d5ad:	83 c6 02             	add    esi,0x2
  40d5b0:	84 c9                	test   cl,cl
  40d5b2:	75 dc                	jne    0x40d590
  40d5b4:	33 c0                	xor    eax,eax
  40d5b6:	eb 05                	jmp    0x40d5bd
  40d5b8:	1b c0                	sbb    eax,eax
  40d5ba:	83 d8 ff             	sbb    eax,0xffffffff
  40d5bd:	85 c0                	test   eax,eax
  40d5bf:	75 0c                	jne    0x40d5cd
  40d5c1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d5c4:	c6 40 10 3f          	mov    BYTE PTR [eax+0x10],0x3f
  40d5c8:	e9 0e 1b 00 00       	jmp    0x40f0db
  40d5cd:	be 00 0e 50 00       	mov    esi,0x500e00
  40d5d2:	8b c7                	mov    eax,edi
  40d5d4:	8a 10                	mov    dl,BYTE PTR [eax]
  40d5d6:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d5d8:	8a ca                	mov    cl,dl
  40d5da:	3a d3                	cmp    dl,bl
  40d5dc:	75 1e                	jne    0x40d5fc
  40d5de:	84 c9                	test   cl,cl
  40d5e0:	74 16                	je     0x40d5f8
  40d5e2:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d5e5:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d5e8:	8a ca                	mov    cl,dl
  40d5ea:	3a d3                	cmp    dl,bl
  40d5ec:	75 0e                	jne    0x40d5fc
  40d5ee:	83 c0 02             	add    eax,0x2
  40d5f1:	83 c6 02             	add    esi,0x2
  40d5f4:	84 c9                	test   cl,cl
  40d5f6:	75 dc                	jne    0x40d5d4
  40d5f8:	33 c0                	xor    eax,eax
  40d5fa:	eb 05                	jmp    0x40d601
  40d5fc:	1b c0                	sbb    eax,eax
  40d5fe:	83 d8 ff             	sbb    eax,0xffffffff
  40d601:	85 c0                	test   eax,eax
  40d603:	75 0c                	jne    0x40d611
  40d605:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d608:	c6 40 10 40          	mov    BYTE PTR [eax+0x10],0x40
  40d60c:	e9 ca 1a 00 00       	jmp    0x40f0db
  40d611:	be f0 0d 50 00       	mov    esi,0x500df0
  40d616:	8b c7                	mov    eax,edi
  40d618:	8a 10                	mov    dl,BYTE PTR [eax]
  40d61a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d61c:	8a ca                	mov    cl,dl
  40d61e:	3a d3                	cmp    dl,bl
  40d620:	75 1e                	jne    0x40d640
  40d622:	84 c9                	test   cl,cl
  40d624:	74 16                	je     0x40d63c
  40d626:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d629:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d62c:	8a ca                	mov    cl,dl
  40d62e:	3a d3                	cmp    dl,bl
  40d630:	75 0e                	jne    0x40d640
  40d632:	83 c0 02             	add    eax,0x2
  40d635:	83 c6 02             	add    esi,0x2
  40d638:	84 c9                	test   cl,cl
  40d63a:	75 dc                	jne    0x40d618
  40d63c:	33 c0                	xor    eax,eax
  40d63e:	eb 05                	jmp    0x40d645
  40d640:	1b c0                	sbb    eax,eax
  40d642:	83 d8 ff             	sbb    eax,0xffffffff
  40d645:	85 c0                	test   eax,eax
  40d647:	75 0c                	jne    0x40d655
  40d649:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d64c:	c6 40 10 41          	mov    BYTE PTR [eax+0x10],0x41
  40d650:	e9 86 1a 00 00       	jmp    0x40f0db
  40d655:	be e0 0d 50 00       	mov    esi,0x500de0
  40d65a:	8b c7                	mov    eax,edi
  40d65c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d65e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d660:	8a ca                	mov    cl,dl
  40d662:	3a d3                	cmp    dl,bl
  40d664:	75 1e                	jne    0x40d684
  40d666:	84 c9                	test   cl,cl
  40d668:	74 16                	je     0x40d680
  40d66a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d66d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d670:	8a ca                	mov    cl,dl
  40d672:	3a d3                	cmp    dl,bl
  40d674:	75 0e                	jne    0x40d684
  40d676:	83 c0 02             	add    eax,0x2
  40d679:	83 c6 02             	add    esi,0x2
  40d67c:	84 c9                	test   cl,cl
  40d67e:	75 dc                	jne    0x40d65c
  40d680:	33 c0                	xor    eax,eax
  40d682:	eb 05                	jmp    0x40d689
  40d684:	1b c0                	sbb    eax,eax
  40d686:	83 d8 ff             	sbb    eax,0xffffffff
  40d689:	85 c0                	test   eax,eax
  40d68b:	75 0c                	jne    0x40d699
  40d68d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d690:	c6 40 10 42          	mov    BYTE PTR [eax+0x10],0x42
  40d694:	e9 42 1a 00 00       	jmp    0x40f0db
  40d699:	be d0 0d 50 00       	mov    esi,0x500dd0
  40d69e:	8b c7                	mov    eax,edi
  40d6a0:	8a 10                	mov    dl,BYTE PTR [eax]
  40d6a2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d6a4:	8a ca                	mov    cl,dl
  40d6a6:	3a d3                	cmp    dl,bl
  40d6a8:	75 1e                	jne    0x40d6c8
  40d6aa:	84 c9                	test   cl,cl
  40d6ac:	74 16                	je     0x40d6c4
  40d6ae:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d6b1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d6b4:	8a ca                	mov    cl,dl
  40d6b6:	3a d3                	cmp    dl,bl
  40d6b8:	75 0e                	jne    0x40d6c8
  40d6ba:	83 c0 02             	add    eax,0x2
  40d6bd:	83 c6 02             	add    esi,0x2
  40d6c0:	84 c9                	test   cl,cl
  40d6c2:	75 dc                	jne    0x40d6a0
  40d6c4:	33 c0                	xor    eax,eax
  40d6c6:	eb 05                	jmp    0x40d6cd
  40d6c8:	1b c0                	sbb    eax,eax
  40d6ca:	83 d8 ff             	sbb    eax,0xffffffff
  40d6cd:	85 c0                	test   eax,eax
  40d6cf:	75 0c                	jne    0x40d6dd
  40d6d1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d6d4:	c6 40 10 43          	mov    BYTE PTR [eax+0x10],0x43
  40d6d8:	e9 fe 19 00 00       	jmp    0x40f0db
  40d6dd:	be c0 0d 50 00       	mov    esi,0x500dc0
  40d6e2:	8b c7                	mov    eax,edi
  40d6e4:	8a 10                	mov    dl,BYTE PTR [eax]
  40d6e6:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d6e8:	8a ca                	mov    cl,dl
  40d6ea:	3a d3                	cmp    dl,bl
  40d6ec:	75 1e                	jne    0x40d70c
  40d6ee:	84 c9                	test   cl,cl
  40d6f0:	74 16                	je     0x40d708
  40d6f2:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d6f5:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d6f8:	8a ca                	mov    cl,dl
  40d6fa:	3a d3                	cmp    dl,bl
  40d6fc:	75 0e                	jne    0x40d70c
  40d6fe:	83 c0 02             	add    eax,0x2
  40d701:	83 c6 02             	add    esi,0x2
  40d704:	84 c9                	test   cl,cl
  40d706:	75 dc                	jne    0x40d6e4
  40d708:	33 c0                	xor    eax,eax
  40d70a:	eb 05                	jmp    0x40d711
  40d70c:	1b c0                	sbb    eax,eax
  40d70e:	83 d8 ff             	sbb    eax,0xffffffff
  40d711:	85 c0                	test   eax,eax
  40d713:	75 0c                	jne    0x40d721
  40d715:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d718:	c6 40 10 45          	mov    BYTE PTR [eax+0x10],0x45
  40d71c:	e9 ba 19 00 00       	jmp    0x40f0db
  40d721:	be b0 0d 50 00       	mov    esi,0x500db0
  40d726:	8b c7                	mov    eax,edi
  40d728:	8a 10                	mov    dl,BYTE PTR [eax]
  40d72a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d72c:	8a ca                	mov    cl,dl
  40d72e:	3a d3                	cmp    dl,bl
  40d730:	75 1e                	jne    0x40d750
  40d732:	84 c9                	test   cl,cl
  40d734:	74 16                	je     0x40d74c
  40d736:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d739:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d73c:	8a ca                	mov    cl,dl
  40d73e:	3a d3                	cmp    dl,bl
  40d740:	75 0e                	jne    0x40d750
  40d742:	83 c0 02             	add    eax,0x2
  40d745:	83 c6 02             	add    esi,0x2
  40d748:	84 c9                	test   cl,cl
  40d74a:	75 dc                	jne    0x40d728
  40d74c:	33 c0                	xor    eax,eax
  40d74e:	eb 05                	jmp    0x40d755
  40d750:	1b c0                	sbb    eax,eax
  40d752:	83 d8 ff             	sbb    eax,0xffffffff
  40d755:	85 c0                	test   eax,eax
  40d757:	75 0c                	jne    0x40d765
  40d759:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d75c:	c6 40 10 46          	mov    BYTE PTR [eax+0x10],0x46
  40d760:	e9 76 19 00 00       	jmp    0x40f0db
  40d765:	be 9c 0d 50 00       	mov    esi,0x500d9c
  40d76a:	8b c7                	mov    eax,edi
  40d76c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d76e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d770:	8a ca                	mov    cl,dl
  40d772:	3a d3                	cmp    dl,bl
  40d774:	75 1e                	jne    0x40d794
  40d776:	84 c9                	test   cl,cl
  40d778:	74 16                	je     0x40d790
  40d77a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d77d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d780:	8a ca                	mov    cl,dl
  40d782:	3a d3                	cmp    dl,bl
  40d784:	75 0e                	jne    0x40d794
  40d786:	83 c0 02             	add    eax,0x2
  40d789:	83 c6 02             	add    esi,0x2
  40d78c:	84 c9                	test   cl,cl
  40d78e:	75 dc                	jne    0x40d76c
  40d790:	33 c0                	xor    eax,eax
  40d792:	eb 05                	jmp    0x40d799
  40d794:	1b c0                	sbb    eax,eax
  40d796:	83 d8 ff             	sbb    eax,0xffffffff
  40d799:	85 c0                	test   eax,eax
  40d79b:	75 0c                	jne    0x40d7a9
  40d79d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d7a0:	c6 40 10 48          	mov    BYTE PTR [eax+0x10],0x48
  40d7a4:	e9 32 19 00 00       	jmp    0x40f0db
  40d7a9:	be 8c 0d 50 00       	mov    esi,0x500d8c
  40d7ae:	8b c7                	mov    eax,edi
  40d7b0:	8a 10                	mov    dl,BYTE PTR [eax]
  40d7b2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d7b4:	8a ca                	mov    cl,dl
  40d7b6:	3a d3                	cmp    dl,bl
  40d7b8:	75 1e                	jne    0x40d7d8
  40d7ba:	84 c9                	test   cl,cl
  40d7bc:	74 16                	je     0x40d7d4
  40d7be:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d7c1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d7c4:	8a ca                	mov    cl,dl
  40d7c6:	3a d3                	cmp    dl,bl
  40d7c8:	75 0e                	jne    0x40d7d8
  40d7ca:	83 c0 02             	add    eax,0x2
  40d7cd:	83 c6 02             	add    esi,0x2
  40d7d0:	84 c9                	test   cl,cl
  40d7d2:	75 dc                	jne    0x40d7b0
  40d7d4:	33 c0                	xor    eax,eax
  40d7d6:	eb 05                	jmp    0x40d7dd
  40d7d8:	1b c0                	sbb    eax,eax
  40d7da:	83 d8 ff             	sbb    eax,0xffffffff
  40d7dd:	85 c0                	test   eax,eax
  40d7df:	75 0c                	jne    0x40d7ed
  40d7e1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d7e4:	c6 40 10 49          	mov    BYTE PTR [eax+0x10],0x49
  40d7e8:	e9 ee 18 00 00       	jmp    0x40f0db
  40d7ed:	be 7c 0d 50 00       	mov    esi,0x500d7c
  40d7f2:	8b c7                	mov    eax,edi
  40d7f4:	8a 10                	mov    dl,BYTE PTR [eax]
  40d7f6:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d7f8:	8a ca                	mov    cl,dl
  40d7fa:	3a d3                	cmp    dl,bl
  40d7fc:	75 1e                	jne    0x40d81c
  40d7fe:	84 c9                	test   cl,cl
  40d800:	74 16                	je     0x40d818
  40d802:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d805:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d808:	8a ca                	mov    cl,dl
  40d80a:	3a d3                	cmp    dl,bl
  40d80c:	75 0e                	jne    0x40d81c
  40d80e:	83 c0 02             	add    eax,0x2
  40d811:	83 c6 02             	add    esi,0x2
  40d814:	84 c9                	test   cl,cl
  40d816:	75 dc                	jne    0x40d7f4
  40d818:	33 c0                	xor    eax,eax
  40d81a:	eb 05                	jmp    0x40d821
  40d81c:	1b c0                	sbb    eax,eax
  40d81e:	83 d8 ff             	sbb    eax,0xffffffff
  40d821:	85 c0                	test   eax,eax
  40d823:	75 0c                	jne    0x40d831
  40d825:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d828:	c6 40 10 4a          	mov    BYTE PTR [eax+0x10],0x4a
  40d82c:	e9 aa 18 00 00       	jmp    0x40f0db
  40d831:	be 68 0d 50 00       	mov    esi,0x500d68
  40d836:	8b c7                	mov    eax,edi
  40d838:	8a 10                	mov    dl,BYTE PTR [eax]
  40d83a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d83c:	8a ca                	mov    cl,dl
  40d83e:	3a d3                	cmp    dl,bl
  40d840:	75 1e                	jne    0x40d860
  40d842:	84 c9                	test   cl,cl
  40d844:	74 16                	je     0x40d85c
  40d846:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d849:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d84c:	8a ca                	mov    cl,dl
  40d84e:	3a d3                	cmp    dl,bl
  40d850:	75 0e                	jne    0x40d860
  40d852:	83 c0 02             	add    eax,0x2
  40d855:	83 c6 02             	add    esi,0x2
  40d858:	84 c9                	test   cl,cl
  40d85a:	75 dc                	jne    0x40d838
  40d85c:	33 c0                	xor    eax,eax
  40d85e:	eb 05                	jmp    0x40d865
  40d860:	1b c0                	sbb    eax,eax
  40d862:	83 d8 ff             	sbb    eax,0xffffffff
  40d865:	85 c0                	test   eax,eax
  40d867:	75 0c                	jne    0x40d875
  40d869:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d86c:	c6 40 10 4b          	mov    BYTE PTR [eax+0x10],0x4b
  40d870:	e9 66 18 00 00       	jmp    0x40f0db
  40d875:	be 54 0d 50 00       	mov    esi,0x500d54
  40d87a:	8b c7                	mov    eax,edi
  40d87c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d87e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d880:	8a ca                	mov    cl,dl
  40d882:	3a d3                	cmp    dl,bl
  40d884:	75 1e                	jne    0x40d8a4
  40d886:	84 c9                	test   cl,cl
  40d888:	74 16                	je     0x40d8a0
  40d88a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d88d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d890:	8a ca                	mov    cl,dl
  40d892:	3a d3                	cmp    dl,bl
  40d894:	75 0e                	jne    0x40d8a4
  40d896:	83 c0 02             	add    eax,0x2
  40d899:	83 c6 02             	add    esi,0x2
  40d89c:	84 c9                	test   cl,cl
  40d89e:	75 dc                	jne    0x40d87c
  40d8a0:	33 c0                	xor    eax,eax
  40d8a2:	eb 05                	jmp    0x40d8a9
  40d8a4:	1b c0                	sbb    eax,eax
  40d8a6:	83 d8 ff             	sbb    eax,0xffffffff
  40d8a9:	85 c0                	test   eax,eax
  40d8ab:	75 0c                	jne    0x40d8b9
  40d8ad:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d8b0:	c6 40 10 4c          	mov    BYTE PTR [eax+0x10],0x4c
  40d8b4:	e9 22 18 00 00       	jmp    0x40f0db
  40d8b9:	be 40 0d 50 00       	mov    esi,0x500d40
  40d8be:	8b c7                	mov    eax,edi
  40d8c0:	8a 10                	mov    dl,BYTE PTR [eax]
  40d8c2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d8c4:	8a ca                	mov    cl,dl
  40d8c6:	3a d3                	cmp    dl,bl
  40d8c8:	75 1e                	jne    0x40d8e8
  40d8ca:	84 c9                	test   cl,cl
  40d8cc:	74 16                	je     0x40d8e4
  40d8ce:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d8d1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d8d4:	8a ca                	mov    cl,dl
  40d8d6:	3a d3                	cmp    dl,bl
  40d8d8:	75 0e                	jne    0x40d8e8
  40d8da:	83 c0 02             	add    eax,0x2
  40d8dd:	83 c6 02             	add    esi,0x2
  40d8e0:	84 c9                	test   cl,cl
  40d8e2:	75 dc                	jne    0x40d8c0
  40d8e4:	33 c0                	xor    eax,eax
  40d8e6:	eb 05                	jmp    0x40d8ed
  40d8e8:	1b c0                	sbb    eax,eax
  40d8ea:	83 d8 ff             	sbb    eax,0xffffffff
  40d8ed:	85 c0                	test   eax,eax
  40d8ef:	75 0c                	jne    0x40d8fd
  40d8f1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d8f4:	c6 40 10 4d          	mov    BYTE PTR [eax+0x10],0x4d
  40d8f8:	e9 de 17 00 00       	jmp    0x40f0db
  40d8fd:	be 2c 0d 50 00       	mov    esi,0x500d2c
  40d902:	8b c7                	mov    eax,edi
  40d904:	8a 10                	mov    dl,BYTE PTR [eax]
  40d906:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d908:	8a ca                	mov    cl,dl
  40d90a:	3a d3                	cmp    dl,bl
  40d90c:	75 1e                	jne    0x40d92c
  40d90e:	84 c9                	test   cl,cl
  40d910:	74 16                	je     0x40d928
  40d912:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d915:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d918:	8a ca                	mov    cl,dl
  40d91a:	3a d3                	cmp    dl,bl
  40d91c:	75 0e                	jne    0x40d92c
  40d91e:	83 c0 02             	add    eax,0x2
  40d921:	83 c6 02             	add    esi,0x2
  40d924:	84 c9                	test   cl,cl
  40d926:	75 dc                	jne    0x40d904
  40d928:	33 c0                	xor    eax,eax
  40d92a:	eb 05                	jmp    0x40d931
  40d92c:	1b c0                	sbb    eax,eax
  40d92e:	83 d8 ff             	sbb    eax,0xffffffff
  40d931:	85 c0                	test   eax,eax
  40d933:	75 0c                	jne    0x40d941
  40d935:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d938:	c6 40 10 4e          	mov    BYTE PTR [eax+0x10],0x4e
  40d93c:	e9 9a 17 00 00       	jmp    0x40f0db
  40d941:	be 18 0d 50 00       	mov    esi,0x500d18
  40d946:	8b c7                	mov    eax,edi
  40d948:	8a 10                	mov    dl,BYTE PTR [eax]
  40d94a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d94c:	8a ca                	mov    cl,dl
  40d94e:	3a d3                	cmp    dl,bl
  40d950:	75 1e                	jne    0x40d970
  40d952:	84 c9                	test   cl,cl
  40d954:	74 16                	je     0x40d96c
  40d956:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d959:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d95c:	8a ca                	mov    cl,dl
  40d95e:	3a d3                	cmp    dl,bl
  40d960:	75 0e                	jne    0x40d970
  40d962:	83 c0 02             	add    eax,0x2
  40d965:	83 c6 02             	add    esi,0x2
  40d968:	84 c9                	test   cl,cl
  40d96a:	75 dc                	jne    0x40d948
  40d96c:	33 c0                	xor    eax,eax
  40d96e:	eb 05                	jmp    0x40d975
  40d970:	1b c0                	sbb    eax,eax
  40d972:	83 d8 ff             	sbb    eax,0xffffffff
  40d975:	85 c0                	test   eax,eax
  40d977:	75 0c                	jne    0x40d985
  40d979:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d97c:	c6 40 10 4f          	mov    BYTE PTR [eax+0x10],0x4f
  40d980:	e9 56 17 00 00       	jmp    0x40f0db
  40d985:	be 08 0d 50 00       	mov    esi,0x500d08
  40d98a:	8b c7                	mov    eax,edi
  40d98c:	8a 10                	mov    dl,BYTE PTR [eax]
  40d98e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d990:	8a ca                	mov    cl,dl
  40d992:	3a d3                	cmp    dl,bl
  40d994:	75 1e                	jne    0x40d9b4
  40d996:	84 c9                	test   cl,cl
  40d998:	74 16                	je     0x40d9b0
  40d99a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d99d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d9a0:	8a ca                	mov    cl,dl
  40d9a2:	3a d3                	cmp    dl,bl
  40d9a4:	75 0e                	jne    0x40d9b4
  40d9a6:	83 c0 02             	add    eax,0x2
  40d9a9:	83 c6 02             	add    esi,0x2
  40d9ac:	84 c9                	test   cl,cl
  40d9ae:	75 dc                	jne    0x40d98c
  40d9b0:	33 c0                	xor    eax,eax
  40d9b2:	eb 05                	jmp    0x40d9b9
  40d9b4:	1b c0                	sbb    eax,eax
  40d9b6:	83 d8 ff             	sbb    eax,0xffffffff
  40d9b9:	85 c0                	test   eax,eax
  40d9bb:	75 0c                	jne    0x40d9c9
  40d9bd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40d9c0:	c6 40 10 50          	mov    BYTE PTR [eax+0x10],0x50
  40d9c4:	e9 12 17 00 00       	jmp    0x40f0db
  40d9c9:	be f8 0c 50 00       	mov    esi,0x500cf8
  40d9ce:	8b c7                	mov    eax,edi
  40d9d0:	8a 10                	mov    dl,BYTE PTR [eax]
  40d9d2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40d9d4:	8a ca                	mov    cl,dl
  40d9d6:	3a d3                	cmp    dl,bl
  40d9d8:	75 1e                	jne    0x40d9f8
  40d9da:	84 c9                	test   cl,cl
  40d9dc:	74 16                	je     0x40d9f4
  40d9de:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40d9e1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40d9e4:	8a ca                	mov    cl,dl
  40d9e6:	3a d3                	cmp    dl,bl
  40d9e8:	75 0e                	jne    0x40d9f8
  40d9ea:	83 c0 02             	add    eax,0x2
  40d9ed:	83 c6 02             	add    esi,0x2
  40d9f0:	84 c9                	test   cl,cl
  40d9f2:	75 dc                	jne    0x40d9d0
  40d9f4:	33 c0                	xor    eax,eax
  40d9f6:	eb 05                	jmp    0x40d9fd
  40d9f8:	1b c0                	sbb    eax,eax
  40d9fa:	83 d8 ff             	sbb    eax,0xffffffff
  40d9fd:	85 c0                	test   eax,eax
  40d9ff:	75 0c                	jne    0x40da0d
  40da01:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40da04:	c6 40 10 51          	mov    BYTE PTR [eax+0x10],0x51
  40da08:	e9 ce 16 00 00       	jmp    0x40f0db
  40da0d:	be e8 0c 50 00       	mov    esi,0x500ce8
  40da12:	8b c7                	mov    eax,edi
  40da14:	8a 10                	mov    dl,BYTE PTR [eax]
  40da16:	8a 1e                	mov    bl,BYTE PTR [esi]
  40da18:	8a ca                	mov    cl,dl
  40da1a:	3a d3                	cmp    dl,bl
  40da1c:	75 1e                	jne    0x40da3c
  40da1e:	84 c9                	test   cl,cl
  40da20:	74 16                	je     0x40da38
  40da22:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40da25:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40da28:	8a ca                	mov    cl,dl
  40da2a:	3a d3                	cmp    dl,bl
  40da2c:	75 0e                	jne    0x40da3c
  40da2e:	83 c0 02             	add    eax,0x2
  40da31:	83 c6 02             	add    esi,0x2
  40da34:	84 c9                	test   cl,cl
  40da36:	75 dc                	jne    0x40da14
  40da38:	33 c0                	xor    eax,eax
  40da3a:	eb 05                	jmp    0x40da41
  40da3c:	1b c0                	sbb    eax,eax
  40da3e:	83 d8 ff             	sbb    eax,0xffffffff
  40da41:	85 c0                	test   eax,eax
  40da43:	75 0c                	jne    0x40da51
  40da45:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40da48:	c6 40 10 52          	mov    BYTE PTR [eax+0x10],0x52
  40da4c:	e9 8a 16 00 00       	jmp    0x40f0db
  40da51:	be d8 0c 50 00       	mov    esi,0x500cd8
  40da56:	8b c7                	mov    eax,edi
  40da58:	8a 10                	mov    dl,BYTE PTR [eax]
  40da5a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40da5c:	8a ca                	mov    cl,dl
  40da5e:	3a d3                	cmp    dl,bl
  40da60:	75 1e                	jne    0x40da80
  40da62:	84 c9                	test   cl,cl
  40da64:	74 16                	je     0x40da7c
  40da66:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40da69:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40da6c:	8a ca                	mov    cl,dl
  40da6e:	3a d3                	cmp    dl,bl
  40da70:	75 0e                	jne    0x40da80
  40da72:	83 c0 02             	add    eax,0x2
  40da75:	83 c6 02             	add    esi,0x2
  40da78:	84 c9                	test   cl,cl
  40da7a:	75 dc                	jne    0x40da58
  40da7c:	33 c0                	xor    eax,eax
  40da7e:	eb 05                	jmp    0x40da85
  40da80:	1b c0                	sbb    eax,eax
  40da82:	83 d8 ff             	sbb    eax,0xffffffff
  40da85:	85 c0                	test   eax,eax
  40da87:	75 0c                	jne    0x40da95
  40da89:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40da8c:	c6 40 10 53          	mov    BYTE PTR [eax+0x10],0x53
  40da90:	e9 46 16 00 00       	jmp    0x40f0db
  40da95:	be c8 0c 50 00       	mov    esi,0x500cc8
  40da9a:	8b c7                	mov    eax,edi
  40da9c:	8a 10                	mov    dl,BYTE PTR [eax]
  40da9e:	8a 1e                	mov    bl,BYTE PTR [esi]
  40daa0:	8a ca                	mov    cl,dl
  40daa2:	3a d3                	cmp    dl,bl
  40daa4:	75 1e                	jne    0x40dac4
  40daa6:	84 c9                	test   cl,cl
  40daa8:	74 16                	je     0x40dac0
  40daaa:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40daad:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dab0:	8a ca                	mov    cl,dl
  40dab2:	3a d3                	cmp    dl,bl
  40dab4:	75 0e                	jne    0x40dac4
  40dab6:	83 c0 02             	add    eax,0x2
  40dab9:	83 c6 02             	add    esi,0x2
  40dabc:	84 c9                	test   cl,cl
  40dabe:	75 dc                	jne    0x40da9c
  40dac0:	33 c0                	xor    eax,eax
  40dac2:	eb 05                	jmp    0x40dac9
  40dac4:	1b c0                	sbb    eax,eax
  40dac6:	83 d8 ff             	sbb    eax,0xffffffff
  40dac9:	85 c0                	test   eax,eax
  40dacb:	75 0c                	jne    0x40dad9
  40dacd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dad0:	c6 40 10 54          	mov    BYTE PTR [eax+0x10],0x54
  40dad4:	e9 02 16 00 00       	jmp    0x40f0db
  40dad9:	be b8 0c 50 00       	mov    esi,0x500cb8
  40dade:	8b c7                	mov    eax,edi
  40dae0:	8a 10                	mov    dl,BYTE PTR [eax]
  40dae2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dae4:	8a ca                	mov    cl,dl
  40dae6:	3a d3                	cmp    dl,bl
  40dae8:	75 1e                	jne    0x40db08
  40daea:	84 c9                	test   cl,cl
  40daec:	74 16                	je     0x40db04
  40daee:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40daf1:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40daf4:	8a ca                	mov    cl,dl
  40daf6:	3a d3                	cmp    dl,bl
  40daf8:	75 0e                	jne    0x40db08
  40dafa:	83 c0 02             	add    eax,0x2
  40dafd:	83 c6 02             	add    esi,0x2
  40db00:	84 c9                	test   cl,cl
  40db02:	75 dc                	jne    0x40dae0
  40db04:	33 c0                	xor    eax,eax
  40db06:	eb 05                	jmp    0x40db0d
  40db08:	1b c0                	sbb    eax,eax
  40db0a:	83 d8 ff             	sbb    eax,0xffffffff
  40db0d:	85 c0                	test   eax,eax
  40db0f:	75 0c                	jne    0x40db1d
  40db11:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40db14:	c6 40 10 55          	mov    BYTE PTR [eax+0x10],0x55
  40db18:	e9 be 15 00 00       	jmp    0x40f0db
  40db1d:	be a8 0c 50 00       	mov    esi,0x500ca8
  40db22:	8b c7                	mov    eax,edi
  40db24:	8a 10                	mov    dl,BYTE PTR [eax]
  40db26:	8a 1e                	mov    bl,BYTE PTR [esi]
  40db28:	8a ca                	mov    cl,dl
  40db2a:	3a d3                	cmp    dl,bl
  40db2c:	75 1e                	jne    0x40db4c
  40db2e:	84 c9                	test   cl,cl
  40db30:	74 16                	je     0x40db48
  40db32:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40db35:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40db38:	8a ca                	mov    cl,dl
  40db3a:	3a d3                	cmp    dl,bl
  40db3c:	75 0e                	jne    0x40db4c
  40db3e:	83 c0 02             	add    eax,0x2
  40db41:	83 c6 02             	add    esi,0x2
  40db44:	84 c9                	test   cl,cl
  40db46:	75 dc                	jne    0x40db24
  40db48:	33 c0                	xor    eax,eax
  40db4a:	eb 05                	jmp    0x40db51
  40db4c:	1b c0                	sbb    eax,eax
  40db4e:	83 d8 ff             	sbb    eax,0xffffffff
  40db51:	85 c0                	test   eax,eax
  40db53:	75 0c                	jne    0x40db61
  40db55:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40db58:	c6 40 10 56          	mov    BYTE PTR [eax+0x10],0x56
  40db5c:	e9 7a 15 00 00       	jmp    0x40f0db
  40db61:	be 98 0c 50 00       	mov    esi,0x500c98
  40db66:	8b c7                	mov    eax,edi
  40db68:	8a 10                	mov    dl,BYTE PTR [eax]
  40db6a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40db6c:	8a ca                	mov    cl,dl
  40db6e:	3a d3                	cmp    dl,bl
  40db70:	75 1e                	jne    0x40db90
  40db72:	84 c9                	test   cl,cl
  40db74:	74 16                	je     0x40db8c
  40db76:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40db79:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40db7c:	8a ca                	mov    cl,dl
  40db7e:	3a d3                	cmp    dl,bl
  40db80:	75 0e                	jne    0x40db90
  40db82:	83 c0 02             	add    eax,0x2
  40db85:	83 c6 02             	add    esi,0x2
  40db88:	84 c9                	test   cl,cl
  40db8a:	75 dc                	jne    0x40db68
  40db8c:	33 c0                	xor    eax,eax
  40db8e:	eb 05                	jmp    0x40db95
  40db90:	1b c0                	sbb    eax,eax
  40db92:	83 d8 ff             	sbb    eax,0xffffffff
  40db95:	85 c0                	test   eax,eax
  40db97:	75 0c                	jne    0x40dba5
  40db99:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40db9c:	c6 40 10 57          	mov    BYTE PTR [eax+0x10],0x57
  40dba0:	e9 36 15 00 00       	jmp    0x40f0db
  40dba5:	be 88 0c 50 00       	mov    esi,0x500c88
  40dbaa:	8b c7                	mov    eax,edi
  40dbac:	8a 10                	mov    dl,BYTE PTR [eax]
  40dbae:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dbb0:	8a ca                	mov    cl,dl
  40dbb2:	3a d3                	cmp    dl,bl
  40dbb4:	75 1e                	jne    0x40dbd4
  40dbb6:	84 c9                	test   cl,cl
  40dbb8:	74 16                	je     0x40dbd0
  40dbba:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dbbd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dbc0:	8a ca                	mov    cl,dl
  40dbc2:	3a d3                	cmp    dl,bl
  40dbc4:	75 0e                	jne    0x40dbd4
  40dbc6:	83 c0 02             	add    eax,0x2
  40dbc9:	83 c6 02             	add    esi,0x2
  40dbcc:	84 c9                	test   cl,cl
  40dbce:	75 dc                	jne    0x40dbac
  40dbd0:	33 c0                	xor    eax,eax
  40dbd2:	eb 05                	jmp    0x40dbd9
  40dbd4:	1b c0                	sbb    eax,eax
  40dbd6:	83 d8 ff             	sbb    eax,0xffffffff
  40dbd9:	85 c0                	test   eax,eax
  40dbdb:	75 0c                	jne    0x40dbe9
  40dbdd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dbe0:	c6 40 10 58          	mov    BYTE PTR [eax+0x10],0x58
  40dbe4:	e9 f2 14 00 00       	jmp    0x40f0db
  40dbe9:	be 78 0c 50 00       	mov    esi,0x500c78
  40dbee:	8b c7                	mov    eax,edi
  40dbf0:	8a 10                	mov    dl,BYTE PTR [eax]
  40dbf2:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dbf4:	8a ca                	mov    cl,dl
  40dbf6:	3a d3                	cmp    dl,bl
  40dbf8:	75 1e                	jne    0x40dc18
  40dbfa:	84 c9                	test   cl,cl
  40dbfc:	74 16                	je     0x40dc14
  40dbfe:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dc01:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dc04:	8a ca                	mov    cl,dl
  40dc06:	3a d3                	cmp    dl,bl
  40dc08:	75 0e                	jne    0x40dc18
  40dc0a:	83 c0 02             	add    eax,0x2
  40dc0d:	83 c6 02             	add    esi,0x2
  40dc10:	84 c9                	test   cl,cl
  40dc12:	75 dc                	jne    0x40dbf0
  40dc14:	33 c0                	xor    eax,eax
  40dc16:	eb 05                	jmp    0x40dc1d
  40dc18:	1b c0                	sbb    eax,eax
  40dc1a:	83 d8 ff             	sbb    eax,0xffffffff
  40dc1d:	85 c0                	test   eax,eax
  40dc1f:	75 0c                	jne    0x40dc2d
  40dc21:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dc24:	c6 40 10 5a          	mov    BYTE PTR [eax+0x10],0x5a
  40dc28:	e9 ae 14 00 00       	jmp    0x40f0db
  40dc2d:	be 68 0c 50 00       	mov    esi,0x500c68
  40dc32:	8b c7                	mov    eax,edi
  40dc34:	8a 10                	mov    dl,BYTE PTR [eax]
  40dc36:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dc38:	8a ca                	mov    cl,dl
  40dc3a:	3a d3                	cmp    dl,bl
  40dc3c:	75 1e                	jne    0x40dc5c
  40dc3e:	84 c9                	test   cl,cl
  40dc40:	74 16                	je     0x40dc58
  40dc42:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dc45:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dc48:	8a ca                	mov    cl,dl
  40dc4a:	3a d3                	cmp    dl,bl
  40dc4c:	75 0e                	jne    0x40dc5c
  40dc4e:	83 c0 02             	add    eax,0x2
  40dc51:	83 c6 02             	add    esi,0x2
  40dc54:	84 c9                	test   cl,cl
  40dc56:	75 dc                	jne    0x40dc34
  40dc58:	33 c0                	xor    eax,eax
  40dc5a:	eb 05                	jmp    0x40dc61
  40dc5c:	1b c0                	sbb    eax,eax
  40dc5e:	83 d8 ff             	sbb    eax,0xffffffff
  40dc61:	85 c0                	test   eax,eax
  40dc63:	75 0c                	jne    0x40dc71
  40dc65:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dc68:	c6 40 10 5b          	mov    BYTE PTR [eax+0x10],0x5b
  40dc6c:	e9 6a 14 00 00       	jmp    0x40f0db
  40dc71:	be 54 0c 50 00       	mov    esi,0x500c54
  40dc76:	8b c7                	mov    eax,edi
  40dc78:	8a 10                	mov    dl,BYTE PTR [eax]
  40dc7a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dc7c:	8a ca                	mov    cl,dl
  40dc7e:	3a d3                	cmp    dl,bl
  40dc80:	75 1e                	jne    0x40dca0
  40dc82:	84 c9                	test   cl,cl
  40dc84:	74 16                	je     0x40dc9c
  40dc86:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dc89:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dc8c:	8a ca                	mov    cl,dl
  40dc8e:	3a d3                	cmp    dl,bl
  40dc90:	75 0e                	jne    0x40dca0
  40dc92:	83 c0 02             	add    eax,0x2
  40dc95:	83 c6 02             	add    esi,0x2
  40dc98:	84 c9                	test   cl,cl
  40dc9a:	75 dc                	jne    0x40dc78
  40dc9c:	33 c0                	xor    eax,eax
  40dc9e:	eb 05                	jmp    0x40dca5
  40dca0:	1b c0                	sbb    eax,eax
  40dca2:	83 d8 ff             	sbb    eax,0xffffffff
  40dca5:	85 c0                	test   eax,eax
  40dca7:	75 0c                	jne    0x40dcb5
  40dca9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dcac:	c6 40 10 5d          	mov    BYTE PTR [eax+0x10],0x5d
  40dcb0:	e9 26 14 00 00       	jmp    0x40f0db
  40dcb5:	be 40 0c 50 00       	mov    esi,0x500c40
  40dcba:	8b c7                	mov    eax,edi
  40dcbc:	8a 10                	mov    dl,BYTE PTR [eax]
  40dcbe:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dcc0:	8a ca                	mov    cl,dl
  40dcc2:	3a d3                	cmp    dl,bl
  40dcc4:	75 1e                	jne    0x40dce4
  40dcc6:	84 c9                	test   cl,cl
  40dcc8:	74 16                	je     0x40dce0
  40dcca:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dccd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dcd0:	8a ca                	mov    cl,dl
  40dcd2:	3a d3                	cmp    dl,bl
  40dcd4:	75 0e                	jne    0x40dce4
  40dcd6:	83 c0 02             	add    eax,0x2
  40dcd9:	83 c6 02             	add    esi,0x2
  40dcdc:	84 c9                	test   cl,cl
  40dcde:	75 dc                	jne    0x40dcbc
  40dce0:	33 c0                	xor    eax,eax
  40dce2:	eb 05                	jmp    0x40dce9
  40dce4:	1b c0                	sbb    eax,eax
  40dce6:	83 d8 ff             	sbb    eax,0xffffffff
  40dce9:	85 c0                	test   eax,eax
  40dceb:	75 0c                	jne    0x40dcf9
  40dced:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dcf0:	c6 40 10 5e          	mov    BYTE PTR [eax+0x10],0x5e
  40dcf4:	e9 e2 13 00 00       	jmp    0x40f0db
  40dcf9:	be 2c 0c 50 00       	mov    esi,0x500c2c
  40dcfe:	8b c7                	mov    eax,edi
  40dd00:	8a 10                	mov    dl,BYTE PTR [eax]
  40dd02:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dd04:	8a ca                	mov    cl,dl
  40dd06:	3a d3                	cmp    dl,bl
  40dd08:	75 1e                	jne    0x40dd28
  40dd0a:	84 c9                	test   cl,cl
  40dd0c:	74 16                	je     0x40dd24
  40dd0e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dd11:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dd14:	8a ca                	mov    cl,dl
  40dd16:	3a d3                	cmp    dl,bl
  40dd18:	75 0e                	jne    0x40dd28
  40dd1a:	83 c0 02             	add    eax,0x2
  40dd1d:	83 c6 02             	add    esi,0x2
  40dd20:	84 c9                	test   cl,cl
  40dd22:	75 dc                	jne    0x40dd00
  40dd24:	33 c0                	xor    eax,eax
  40dd26:	eb 05                	jmp    0x40dd2d
  40dd28:	1b c0                	sbb    eax,eax
  40dd2a:	83 d8 ff             	sbb    eax,0xffffffff
  40dd2d:	85 c0                	test   eax,eax
  40dd2f:	75 0c                	jne    0x40dd3d
  40dd31:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dd34:	c6 40 10 5f          	mov    BYTE PTR [eax+0x10],0x5f
  40dd38:	e9 9e 13 00 00       	jmp    0x40f0db
  40dd3d:	be 18 0c 50 00       	mov    esi,0x500c18
  40dd42:	8b c7                	mov    eax,edi
  40dd44:	8a 10                	mov    dl,BYTE PTR [eax]
  40dd46:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dd48:	8a ca                	mov    cl,dl
  40dd4a:	3a d3                	cmp    dl,bl
  40dd4c:	75 1e                	jne    0x40dd6c
  40dd4e:	84 c9                	test   cl,cl
  40dd50:	74 16                	je     0x40dd68
  40dd52:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dd55:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dd58:	8a ca                	mov    cl,dl
  40dd5a:	3a d3                	cmp    dl,bl
  40dd5c:	75 0e                	jne    0x40dd6c
  40dd5e:	83 c0 02             	add    eax,0x2
  40dd61:	83 c6 02             	add    esi,0x2
  40dd64:	84 c9                	test   cl,cl
  40dd66:	75 dc                	jne    0x40dd44
  40dd68:	33 c0                	xor    eax,eax
  40dd6a:	eb 05                	jmp    0x40dd71
  40dd6c:	1b c0                	sbb    eax,eax
  40dd6e:	83 d8 ff             	sbb    eax,0xffffffff
  40dd71:	85 c0                	test   eax,eax
  40dd73:	75 0c                	jne    0x40dd81
  40dd75:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dd78:	c6 40 10 60          	mov    BYTE PTR [eax+0x10],0x60
  40dd7c:	e9 5a 13 00 00       	jmp    0x40f0db
  40dd81:	be 04 0c 50 00       	mov    esi,0x500c04
  40dd86:	8b c7                	mov    eax,edi
  40dd88:	8a 10                	mov    dl,BYTE PTR [eax]
  40dd8a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dd8c:	8a ca                	mov    cl,dl
  40dd8e:	3a d3                	cmp    dl,bl
  40dd90:	75 1e                	jne    0x40ddb0
  40dd92:	84 c9                	test   cl,cl
  40dd94:	74 16                	je     0x40ddac
  40dd96:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dd99:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dd9c:	8a ca                	mov    cl,dl
  40dd9e:	3a d3                	cmp    dl,bl
  40dda0:	75 0e                	jne    0x40ddb0
  40dda2:	83 c0 02             	add    eax,0x2
  40dda5:	83 c6 02             	add    esi,0x2
  40dda8:	84 c9                	test   cl,cl
  40ddaa:	75 dc                	jne    0x40dd88
  40ddac:	33 c0                	xor    eax,eax
  40ddae:	eb 05                	jmp    0x40ddb5
  40ddb0:	1b c0                	sbb    eax,eax
  40ddb2:	83 d8 ff             	sbb    eax,0xffffffff
  40ddb5:	85 c0                	test   eax,eax
  40ddb7:	75 0c                	jne    0x40ddc5
  40ddb9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40ddbc:	c6 40 10 61          	mov    BYTE PTR [eax+0x10],0x61
  40ddc0:	e9 16 13 00 00       	jmp    0x40f0db
  40ddc5:	be f0 0b 50 00       	mov    esi,0x500bf0
  40ddca:	8b c7                	mov    eax,edi
  40ddcc:	8a 10                	mov    dl,BYTE PTR [eax]
  40ddce:	8a 1e                	mov    bl,BYTE PTR [esi]
  40ddd0:	8a ca                	mov    cl,dl
  40ddd2:	3a d3                	cmp    dl,bl
  40ddd4:	75 1e                	jne    0x40ddf4
  40ddd6:	84 c9                	test   cl,cl
  40ddd8:	74 16                	je     0x40ddf0
  40ddda:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dddd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dde0:	8a ca                	mov    cl,dl
  40dde2:	3a d3                	cmp    dl,bl
  40dde4:	75 0e                	jne    0x40ddf4
  40dde6:	83 c0 02             	add    eax,0x2
  40dde9:	83 c6 02             	add    esi,0x2
  40ddec:	84 c9                	test   cl,cl
  40ddee:	75 dc                	jne    0x40ddcc
  40ddf0:	33 c0                	xor    eax,eax
  40ddf2:	eb 05                	jmp    0x40ddf9
  40ddf4:	1b c0                	sbb    eax,eax
  40ddf6:	83 d8 ff             	sbb    eax,0xffffffff
  40ddf9:	85 c0                	test   eax,eax
  40ddfb:	75 0c                	jne    0x40de09
  40ddfd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40de00:	c6 40 10 62          	mov    BYTE PTR [eax+0x10],0x62
  40de04:	e9 d2 12 00 00       	jmp    0x40f0db
  40de09:	be dc 0b 50 00       	mov    esi,0x500bdc
  40de0e:	8b c7                	mov    eax,edi
  40de10:	8a 10                	mov    dl,BYTE PTR [eax]
  40de12:	8a 1e                	mov    bl,BYTE PTR [esi]
  40de14:	8a ca                	mov    cl,dl
  40de16:	3a d3                	cmp    dl,bl
  40de18:	75 1e                	jne    0x40de38
  40de1a:	84 c9                	test   cl,cl
  40de1c:	74 16                	je     0x40de34
  40de1e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40de21:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40de24:	8a ca                	mov    cl,dl
  40de26:	3a d3                	cmp    dl,bl
  40de28:	75 0e                	jne    0x40de38
  40de2a:	83 c0 02             	add    eax,0x2
  40de2d:	83 c6 02             	add    esi,0x2
  40de30:	84 c9                	test   cl,cl
  40de32:	75 dc                	jne    0x40de10
  40de34:	33 c0                	xor    eax,eax
  40de36:	eb 05                	jmp    0x40de3d
  40de38:	1b c0                	sbb    eax,eax
  40de3a:	83 d8 ff             	sbb    eax,0xffffffff
  40de3d:	85 c0                	test   eax,eax
  40de3f:	75 0c                	jne    0x40de4d
  40de41:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40de44:	c6 40 10 63          	mov    BYTE PTR [eax+0x10],0x63
  40de48:	e9 8e 12 00 00       	jmp    0x40f0db
  40de4d:	be c8 0b 50 00       	mov    esi,0x500bc8
  40de52:	8b c7                	mov    eax,edi
  40de54:	8a 10                	mov    dl,BYTE PTR [eax]
  40de56:	8a 1e                	mov    bl,BYTE PTR [esi]
  40de58:	8a ca                	mov    cl,dl
  40de5a:	3a d3                	cmp    dl,bl
  40de5c:	75 1e                	jne    0x40de7c
  40de5e:	84 c9                	test   cl,cl
  40de60:	74 16                	je     0x40de78
  40de62:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40de65:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40de68:	8a ca                	mov    cl,dl
  40de6a:	3a d3                	cmp    dl,bl
  40de6c:	75 0e                	jne    0x40de7c
  40de6e:	83 c0 02             	add    eax,0x2
  40de71:	83 c6 02             	add    esi,0x2
  40de74:	84 c9                	test   cl,cl
  40de76:	75 dc                	jne    0x40de54
  40de78:	33 c0                	xor    eax,eax
  40de7a:	eb 05                	jmp    0x40de81
  40de7c:	1b c0                	sbb    eax,eax
  40de7e:	83 d8 ff             	sbb    eax,0xffffffff
  40de81:	85 c0                	test   eax,eax
  40de83:	75 0c                	jne    0x40de91
  40de85:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40de88:	c6 40 10 64          	mov    BYTE PTR [eax+0x10],0x64
  40de8c:	e9 4a 12 00 00       	jmp    0x40f0db
  40de91:	be b8 0b 50 00       	mov    esi,0x500bb8
  40de96:	8b c7                	mov    eax,edi
  40de98:	8a 10                	mov    dl,BYTE PTR [eax]
  40de9a:	8a 1e                	mov    bl,BYTE PTR [esi]
  40de9c:	8a ca                	mov    cl,dl
  40de9e:	3a d3                	cmp    dl,bl
  40dea0:	75 1e                	jne    0x40dec0
  40dea2:	84 c9                	test   cl,cl
  40dea4:	74 16                	je     0x40debc
  40dea6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dea9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40deac:	8a ca                	mov    cl,dl
  40deae:	3a d3                	cmp    dl,bl
  40deb0:	75 0e                	jne    0x40dec0
  40deb2:	83 c0 02             	add    eax,0x2
  40deb5:	83 c6 02             	add    esi,0x2
  40deb8:	84 c9                	test   cl,cl
  40deba:	75 dc                	jne    0x40de98
  40debc:	33 c0                	xor    eax,eax
  40debe:	eb 05                	jmp    0x40dec5
  40dec0:	1b c0                	sbb    eax,eax
  40dec2:	83 d8 ff             	sbb    eax,0xffffffff
  40dec5:	85 c0                	test   eax,eax
  40dec7:	75 0c                	jne    0x40ded5
  40dec9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40decc:	c6 40 10 65          	mov    BYTE PTR [eax+0x10],0x65
  40ded0:	e9 06 12 00 00       	jmp    0x40f0db
  40ded5:	be a4 0b 50 00       	mov    esi,0x500ba4
  40deda:	8b c7                	mov    eax,edi
  40dedc:	8a 10                	mov    dl,BYTE PTR [eax]
  40dede:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dee0:	8a ca                	mov    cl,dl
  40dee2:	3a d3                	cmp    dl,bl
  40dee4:	75 1e                	jne    0x40df04
  40dee6:	84 c9                	test   cl,cl
  40dee8:	74 16                	je     0x40df00
  40deea:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40deed:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40def0:	8a ca                	mov    cl,dl
  40def2:	3a d3                	cmp    dl,bl
  40def4:	75 0e                	jne    0x40df04
  40def6:	83 c0 02             	add    eax,0x2
  40def9:	83 c6 02             	add    esi,0x2
  40defc:	84 c9                	test   cl,cl
  40defe:	75 dc                	jne    0x40dedc
  40df00:	33 c0                	xor    eax,eax
  40df02:	eb 05                	jmp    0x40df09
  40df04:	1b c0                	sbb    eax,eax
  40df06:	83 d8 ff             	sbb    eax,0xffffffff
  40df09:	85 c0                	test   eax,eax
  40df0b:	75 0c                	jne    0x40df19
  40df0d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40df10:	c6 40 10 66          	mov    BYTE PTR [eax+0x10],0x66
  40df14:	e9 c2 11 00 00       	jmp    0x40f0db
  40df19:	be 90 0b 50 00       	mov    esi,0x500b90
  40df1e:	8b c7                	mov    eax,edi
  40df20:	8a 10                	mov    dl,BYTE PTR [eax]
  40df22:	8a 1e                	mov    bl,BYTE PTR [esi]
  40df24:	8a ca                	mov    cl,dl
  40df26:	3a d3                	cmp    dl,bl
  40df28:	75 1e                	jne    0x40df48
  40df2a:	84 c9                	test   cl,cl
  40df2c:	74 16                	je     0x40df44
  40df2e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40df31:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40df34:	8a ca                	mov    cl,dl
  40df36:	3a d3                	cmp    dl,bl
  40df38:	75 0e                	jne    0x40df48
  40df3a:	83 c0 02             	add    eax,0x2
  40df3d:	83 c6 02             	add    esi,0x2
  40df40:	84 c9                	test   cl,cl
  40df42:	75 dc                	jne    0x40df20
  40df44:	33 c0                	xor    eax,eax
  40df46:	eb 05                	jmp    0x40df4d
  40df48:	1b c0                	sbb    eax,eax
  40df4a:	83 d8 ff             	sbb    eax,0xffffffff
  40df4d:	85 c0                	test   eax,eax
  40df4f:	75 0c                	jne    0x40df5d
  40df51:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40df54:	c6 40 10 67          	mov    BYTE PTR [eax+0x10],0x67
  40df58:	e9 7e 11 00 00       	jmp    0x40f0db
  40df5d:	be 7c 0b 50 00       	mov    esi,0x500b7c
  40df62:	8b c7                	mov    eax,edi
  40df64:	8a 10                	mov    dl,BYTE PTR [eax]
  40df66:	8a 1e                	mov    bl,BYTE PTR [esi]
  40df68:	8a ca                	mov    cl,dl
  40df6a:	3a d3                	cmp    dl,bl
  40df6c:	75 1e                	jne    0x40df8c
  40df6e:	84 c9                	test   cl,cl
  40df70:	74 16                	je     0x40df88
  40df72:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40df75:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40df78:	8a ca                	mov    cl,dl
  40df7a:	3a d3                	cmp    dl,bl
  40df7c:	75 0e                	jne    0x40df8c
  40df7e:	83 c0 02             	add    eax,0x2
  40df81:	83 c6 02             	add    esi,0x2
  40df84:	84 c9                	test   cl,cl
  40df86:	75 dc                	jne    0x40df64
  40df88:	33 c0                	xor    eax,eax
  40df8a:	eb 05                	jmp    0x40df91
  40df8c:	1b c0                	sbb    eax,eax
  40df8e:	83 d8 ff             	sbb    eax,0xffffffff
  40df91:	85 c0                	test   eax,eax
  40df93:	75 0c                	jne    0x40dfa1
  40df95:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40df98:	c6 40 10 68          	mov    BYTE PTR [eax+0x10],0x68
  40df9c:	e9 3a 11 00 00       	jmp    0x40f0db
  40dfa1:	be 68 0b 50 00       	mov    esi,0x500b68
  40dfa6:	8b c7                	mov    eax,edi
  40dfa8:	8a 10                	mov    dl,BYTE PTR [eax]
  40dfaa:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dfac:	8a ca                	mov    cl,dl
  40dfae:	3a d3                	cmp    dl,bl
  40dfb0:	75 1e                	jne    0x40dfd0
  40dfb2:	84 c9                	test   cl,cl
  40dfb4:	74 16                	je     0x40dfcc
  40dfb6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dfb9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40dfbc:	8a ca                	mov    cl,dl
  40dfbe:	3a d3                	cmp    dl,bl
  40dfc0:	75 0e                	jne    0x40dfd0
  40dfc2:	83 c0 02             	add    eax,0x2
  40dfc5:	83 c6 02             	add    esi,0x2
  40dfc8:	84 c9                	test   cl,cl
  40dfca:	75 dc                	jne    0x40dfa8
  40dfcc:	33 c0                	xor    eax,eax
  40dfce:	eb 05                	jmp    0x40dfd5
  40dfd0:	1b c0                	sbb    eax,eax
  40dfd2:	83 d8 ff             	sbb    eax,0xffffffff
  40dfd5:	85 c0                	test   eax,eax
  40dfd7:	75 0c                	jne    0x40dfe5
  40dfd9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40dfdc:	c6 40 10 69          	mov    BYTE PTR [eax+0x10],0x69
  40dfe0:	e9 f6 10 00 00       	jmp    0x40f0db
  40dfe5:	be 54 0b 50 00       	mov    esi,0x500b54
  40dfea:	8b c7                	mov    eax,edi
  40dfec:	8a 10                	mov    dl,BYTE PTR [eax]
  40dfee:	8a 1e                	mov    bl,BYTE PTR [esi]
  40dff0:	8a ca                	mov    cl,dl
  40dff2:	3a d3                	cmp    dl,bl
  40dff4:	75 1e                	jne    0x40e014
  40dff6:	84 c9                	test   cl,cl
  40dff8:	74 16                	je     0x40e010
  40dffa:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40dffd:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e000:	8a ca                	mov    cl,dl
  40e002:	3a d3                	cmp    dl,bl
  40e004:	75 0e                	jne    0x40e014
  40e006:	83 c0 02             	add    eax,0x2
  40e009:	83 c6 02             	add    esi,0x2
  40e00c:	84 c9                	test   cl,cl
  40e00e:	75 dc                	jne    0x40dfec
  40e010:	33 c0                	xor    eax,eax
  40e012:	eb 05                	jmp    0x40e019
  40e014:	1b c0                	sbb    eax,eax
  40e016:	83 d8 ff             	sbb    eax,0xffffffff
  40e019:	85 c0                	test   eax,eax
  40e01b:	75 0c                	jne    0x40e029
  40e01d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e020:	c6 40 10 6a          	mov    BYTE PTR [eax+0x10],0x6a
  40e024:	e9 b2 10 00 00       	jmp    0x40f0db
  40e029:	be 48 0b 50 00       	mov    esi,0x500b48
  40e02e:	8b c7                	mov    eax,edi
  40e030:	8a 10                	mov    dl,BYTE PTR [eax]
  40e032:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e034:	8a ca                	mov    cl,dl
  40e036:	3a d3                	cmp    dl,bl
  40e038:	75 1e                	jne    0x40e058
  40e03a:	84 c9                	test   cl,cl
  40e03c:	74 16                	je     0x40e054
  40e03e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e041:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e044:	8a ca                	mov    cl,dl
  40e046:	3a d3                	cmp    dl,bl
  40e048:	75 0e                	jne    0x40e058
  40e04a:	83 c0 02             	add    eax,0x2
  40e04d:	83 c6 02             	add    esi,0x2
  40e050:	84 c9                	test   cl,cl
  40e052:	75 dc                	jne    0x40e030
  40e054:	33 c0                	xor    eax,eax
  40e056:	eb 05                	jmp    0x40e05d
  40e058:	1b c0                	sbb    eax,eax
  40e05a:	83 d8 ff             	sbb    eax,0xffffffff
  40e05d:	85 c0                	test   eax,eax
  40e05f:	75 0c                	jne    0x40e06d
  40e061:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e064:	c6 40 10 6c          	mov    BYTE PTR [eax+0x10],0x6c
  40e068:	e9 6e 10 00 00       	jmp    0x40f0db
  40e06d:	be 40 0b 50 00       	mov    esi,0x500b40
  40e072:	8b c7                	mov    eax,edi
  40e074:	8a 10                	mov    dl,BYTE PTR [eax]
  40e076:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e078:	8a ca                	mov    cl,dl
  40e07a:	3a d3                	cmp    dl,bl
  40e07c:	75 1e                	jne    0x40e09c
  40e07e:	84 c9                	test   cl,cl
  40e080:	74 16                	je     0x40e098
  40e082:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e085:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e088:	8a ca                	mov    cl,dl
  40e08a:	3a d3                	cmp    dl,bl
  40e08c:	75 0e                	jne    0x40e09c
  40e08e:	83 c0 02             	add    eax,0x2
  40e091:	83 c6 02             	add    esi,0x2
  40e094:	84 c9                	test   cl,cl
  40e096:	75 dc                	jne    0x40e074
  40e098:	33 c0                	xor    eax,eax
  40e09a:	eb 05                	jmp    0x40e0a1
  40e09c:	1b c0                	sbb    eax,eax
  40e09e:	83 d8 ff             	sbb    eax,0xffffffff
  40e0a1:	85 c0                	test   eax,eax
  40e0a3:	75 0c                	jne    0x40e0b1
  40e0a5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e0a8:	c6 40 10 6b          	mov    BYTE PTR [eax+0x10],0x6b
  40e0ac:	e9 2a 10 00 00       	jmp    0x40f0db
  40e0b1:	be 34 0b 50 00       	mov    esi,0x500b34
  40e0b6:	8b c7                	mov    eax,edi
  40e0b8:	8a 10                	mov    dl,BYTE PTR [eax]
  40e0ba:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e0bc:	8a ca                	mov    cl,dl
  40e0be:	3a d3                	cmp    dl,bl
  40e0c0:	75 1e                	jne    0x40e0e0
  40e0c2:	84 c9                	test   cl,cl
  40e0c4:	74 16                	je     0x40e0dc
  40e0c6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e0c9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e0cc:	8a ca                	mov    cl,dl
  40e0ce:	3a d3                	cmp    dl,bl
  40e0d0:	75 0e                	jne    0x40e0e0
  40e0d2:	83 c0 02             	add    eax,0x2
  40e0d5:	83 c6 02             	add    esi,0x2
  40e0d8:	84 c9                	test   cl,cl
  40e0da:	75 dc                	jne    0x40e0b8
  40e0dc:	33 c0                	xor    eax,eax
  40e0de:	eb 05                	jmp    0x40e0e5
  40e0e0:	1b c0                	sbb    eax,eax
  40e0e2:	83 d8 ff             	sbb    eax,0xffffffff
  40e0e5:	85 c0                	test   eax,eax
  40e0e7:	75 0c                	jne    0x40e0f5
  40e0e9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e0ec:	c6 40 10 6d          	mov    BYTE PTR [eax+0x10],0x6d
  40e0f0:	e9 e6 0f 00 00       	jmp    0x40f0db
  40e0f5:	be 28 0b 50 00       	mov    esi,0x500b28
  40e0fa:	8b c7                	mov    eax,edi
  40e0fc:	8a 10                	mov    dl,BYTE PTR [eax]
  40e0fe:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e100:	8a ca                	mov    cl,dl
  40e102:	3a d3                	cmp    dl,bl
  40e104:	75 1e                	jne    0x40e124
  40e106:	84 c9                	test   cl,cl
  40e108:	74 16                	je     0x40e120
  40e10a:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e10d:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e110:	8a ca                	mov    cl,dl
  40e112:	3a d3                	cmp    dl,bl
  40e114:	75 0e                	jne    0x40e124
  40e116:	83 c0 02             	add    eax,0x2
  40e119:	83 c6 02             	add    esi,0x2
  40e11c:	84 c9                	test   cl,cl
  40e11e:	75 dc                	jne    0x40e0fc
  40e120:	33 c0                	xor    eax,eax
  40e122:	eb 05                	jmp    0x40e129
  40e124:	1b c0                	sbb    eax,eax
  40e126:	83 d8 ff             	sbb    eax,0xffffffff
  40e129:	85 c0                	test   eax,eax
  40e12b:	75 0c                	jne    0x40e139
  40e12d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e130:	c6 40 10 70          	mov    BYTE PTR [eax+0x10],0x70
  40e134:	e9 a2 0f 00 00       	jmp    0x40f0db
  40e139:	be 1c 0b 50 00       	mov    esi,0x500b1c
  40e13e:	8b c7                	mov    eax,edi
  40e140:	8a 10                	mov    dl,BYTE PTR [eax]
  40e142:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e144:	8a ca                	mov    cl,dl
  40e146:	3a d3                	cmp    dl,bl
  40e148:	75 1e                	jne    0x40e168
  40e14a:	84 c9                	test   cl,cl
  40e14c:	74 16                	je     0x40e164
  40e14e:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e151:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e154:	8a ca                	mov    cl,dl
  40e156:	3a d3                	cmp    dl,bl
  40e158:	75 0e                	jne    0x40e168
  40e15a:	83 c0 02             	add    eax,0x2
  40e15d:	83 c6 02             	add    esi,0x2
  40e160:	84 c9                	test   cl,cl
  40e162:	75 dc                	jne    0x40e140
  40e164:	33 c0                	xor    eax,eax
  40e166:	eb 05                	jmp    0x40e16d
  40e168:	1b c0                	sbb    eax,eax
  40e16a:	83 d8 ff             	sbb    eax,0xffffffff
  40e16d:	85 c0                	test   eax,eax
  40e16f:	75 0c                	jne    0x40e17d
  40e171:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e174:	c6 40 10 71          	mov    BYTE PTR [eax+0x10],0x71
  40e178:	e9 5e 0f 00 00       	jmp    0x40f0db
  40e17d:	be 14 0b 50 00       	mov    esi,0x500b14
  40e182:	8b c7                	mov    eax,edi
  40e184:	8a 10                	mov    dl,BYTE PTR [eax]
  40e186:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e188:	8a ca                	mov    cl,dl
  40e18a:	3a d3                	cmp    dl,bl
  40e18c:	75 1e                	jne    0x40e1ac
  40e18e:	84 c9                	test   cl,cl
  40e190:	74 16                	je     0x40e1a8
  40e192:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e195:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e198:	8a ca                	mov    cl,dl
  40e19a:	3a d3                	cmp    dl,bl
  40e19c:	75 0e                	jne    0x40e1ac
  40e19e:	83 c0 02             	add    eax,0x2
  40e1a1:	83 c6 02             	add    esi,0x2
  40e1a4:	84 c9                	test   cl,cl
  40e1a6:	75 dc                	jne    0x40e184
  40e1a8:	33 c0                	xor    eax,eax
  40e1aa:	eb 05                	jmp    0x40e1b1
  40e1ac:	1b c0                	sbb    eax,eax
  40e1ae:	83 d8 ff             	sbb    eax,0xffffffff
  40e1b1:	85 c0                	test   eax,eax
  40e1b3:	75 0c                	jne    0x40e1c1
  40e1b5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e1b8:	c6 40 10 6e          	mov    BYTE PTR [eax+0x10],0x6e
  40e1bc:	e9 1a 0f 00 00       	jmp    0x40f0db
  40e1c1:	be 08 0b 50 00       	mov    esi,0x500b08
  40e1c6:	8b c7                	mov    eax,edi
  40e1c8:	8a 10                	mov    dl,BYTE PTR [eax]
  40e1ca:	8a 1e                	mov    bl,BYTE PTR [esi]
  40e1cc:	8a ca                	mov    cl,dl
  40e1ce:	3a d3                	cmp    dl,bl
  40e1d0:	75 1e                	jne    0x40e1f0
  40e1d2:	84 c9                	test   cl,cl
  40e1d4:	74 16                	je     0x40e1ec
  40e1d6:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
  40e1d9:	8a 5e 01             	mov    bl,BYTE PTR [esi+0x1]
  40e1dc:	8a ca                	mov    cl,dl
  40e1de:	3a d3                	cmp    dl,bl
  40e1e0:	75 0e                	jne    0x40e1f0
  40e1e2:	83 c0 02             	add    eax,0x2
  40e1e5:	83 c6 02             	add    esi,0x2
  40e1e8:	84 c9                	test   cl,cl
  40e1ea:	75 dc                	jne    0x40e1c8
  40e1ec:	33 c0                	xor    eax,eax
  40e1ee:	eb 05                	jmp    0x40e1f5
  40e1f0:	1b c0                	sbb    eax,eax
  40e1f2:	83 d8 ff             	sbb    eax,0xffffffff
  40e1f5:	85 c0                	test   eax,eax
  40e1f7:	75 0c                	jne    0x40e205
  40e1f9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40e1fc:	c6 40 10 6f          	mov    BYTE PTR [eax+0x10],0x6f
  40e200:	e9 d6 0e 00 00       	jmp    0x40f0db

