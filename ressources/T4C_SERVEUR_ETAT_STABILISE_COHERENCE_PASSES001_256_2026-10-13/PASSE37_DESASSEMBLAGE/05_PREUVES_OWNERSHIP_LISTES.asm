; Preuves T4C Server(1).exe — passe 37 — SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Coupures choisies pour les fonctions semantiquement analysees ; adresses absolues, borne stop exclue.
; CONSIGNE: ne pas assimiler une ligne de bytes verifiee a un contrat de jeu complet.

; Retrait temporaire non proprietaire / 490510 — 0x00490510 .. 0x004905FA (exclusif), 87 instructions confirmees
  490510:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  490513:	8b 51 28             	mov    edx,DWORD PTR [ecx+0x28]
  490516:	89 41 2c             	mov    DWORD PTR [ecx+0x2c],eax
  490519:	ff 49 38             	dec    DWORD PTR [ecx+0x38]
  49051c:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  49051f:	3b c2                	cmp    eax,edx
  490521:	74 57                	je     0x49057a
  490523:	3b 41 24             	cmp    eax,DWORD PTR [ecx+0x24]
  490526:	74 4e                	je     0x490576
  490528:	8b 10                	mov    edx,DWORD PTR [eax]
  49052a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  49052d:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  490530:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  490533:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  490536:	8b 00                	mov    eax,DWORD PTR [eax]
  490538:	89 02                	mov    DWORD PTR [edx],eax
  49053a:	8b 41 40             	mov    eax,DWORD PTR [ecx+0x40]
  49053d:	83 f8 01             	cmp    eax,0x1
  490540:	75 16                	jne    0x490558
  490542:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  490545:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  490548:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
  49054b:	8b 49 2c             	mov    ecx,DWORD PTR [ecx+0x2c]
  49054e:	51                   	push   ecx
  49054f:	e8 0c 1b fb ff       	call   0x442060
  490554:	83 c4 04             	add    esp,0x4
  490557:	c3                   	ret
  490558:	83 f8 02             	cmp    eax,0x2
  49055b:	0f 85 8c 00 00 00    	jne    0x4905ed
  490561:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  490564:	8b 02                	mov    eax,DWORD PTR [edx]
  490566:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
  490569:	8b 49 2c             	mov    ecx,DWORD PTR [ecx+0x2c]
  49056c:	51                   	push   ecx
  49056d:	e8 ee 1a fb ff       	call   0x442060
  490572:	83 c4 04             	add    esp,0x4
  490575:	c3                   	ret
  490576:	3b c2                	cmp    eax,edx
  490578:	75 34                	jne    0x4905ae
  49057a:	3b 41 24             	cmp    eax,DWORD PTR [ecx+0x24]
  49057d:	74 34                	je     0x4905b3
  49057f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  490582:	33 d2                	xor    edx,edx
  490584:	89 10                	mov    DWORD PTR [eax],edx
  490586:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  490589:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  49058c:	89 41 28             	mov    DWORD PTR [ecx+0x28],eax
  49058f:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  490592:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  490595:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
  490598:	83 79 40 02          	cmp    DWORD PTR [ecx+0x40],0x2
  49059c:	75 4f                	jne    0x4905ed
  49059e:	89 51 40             	mov    DWORD PTR [ecx+0x40],edx
  4905a1:	8b 49 2c             	mov    ecx,DWORD PTR [ecx+0x2c]
  4905a4:	51                   	push   ecx
  4905a5:	e8 b6 1a fb ff       	call   0x442060
  4905aa:	83 c4 04             	add    esp,0x4
  4905ad:	c3                   	ret
  4905ae:	3b 41 24             	cmp    eax,DWORD PTR [ecx+0x24]
  4905b1:	75 2c                	jne    0x4905df
  4905b3:	3b c2                	cmp    eax,edx
  4905b5:	74 28                	je     0x4905df
  4905b7:	8b 00                	mov    eax,DWORD PTR [eax]
  4905b9:	33 d2                	xor    edx,edx
  4905bb:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4905be:	8b 41 20             	mov    eax,DWORD PTR [ecx+0x20]
  4905c1:	8b 00                	mov    eax,DWORD PTR [eax]
  4905c3:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
  4905c6:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
  4905c9:	83 79 40 01          	cmp    DWORD PTR [ecx+0x40],0x1
  4905cd:	75 1e                	jne    0x4905ed
  4905cf:	89 51 40             	mov    DWORD PTR [ecx+0x40],edx
  4905d2:	8b 49 2c             	mov    ecx,DWORD PTR [ecx+0x2c]
  4905d5:	51                   	push   ecx
  4905d6:	e8 85 1a fb ff       	call   0x442060
  4905db:	83 c4 04             	add    esp,0x4
  4905de:	c3                   	ret
  4905df:	33 d2                	xor    edx,edx
  4905e1:	89 51 20             	mov    DWORD PTR [ecx+0x20],edx
  4905e4:	89 51 24             	mov    DWORD PTR [ecx+0x24],edx
  4905e7:	89 51 28             	mov    DWORD PTR [ecx+0x28],edx
  4905ea:	89 51 40             	mov    DWORD PTR [ecx+0x40],edx
  4905ed:	8b 49 2c             	mov    ecx,DWORD PTR [ecx+0x2c]
  4905f0:	51                   	push   ecx
  4905f1:	e8 6a 1a fb ff       	call   0x442060
  4905f6:	83 c4 04             	add    esp,0x4
  4905f9:	c3                   	ret

; Retrait temporaire proprietaire / 490600 — 0x00490600 .. 0x004906C1 (exclusif), 75 instructions confirmees
  490600:	56                   	push   esi
  490601:	8b f1                	mov    esi,ecx
  490603:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  490606:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  490609:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  49060c:	ff 4e 38             	dec    DWORD PTR [esi+0x38]
  49060f:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  490612:	3b c1                	cmp    eax,ecx
  490614:	74 3d                	je     0x490653
  490616:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  490619:	74 34                	je     0x49064f
  49061b:	8b 08                	mov    ecx,DWORD PTR [eax]
  49061d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  490620:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  490623:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  490626:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  490629:	8b 10                	mov    edx,DWORD PTR [eax]
  49062b:	89 11                	mov    DWORD PTR [ecx],edx
  49062d:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  490630:	83 f8 01             	cmp    eax,0x1
  490633:	75 0b                	jne    0x490640
  490635:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  490638:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  49063b:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  49063e:	eb 67                	jmp    0x4906a7
  490640:	83 f8 02             	cmp    eax,0x2
  490643:	75 62                	jne    0x4906a7
  490645:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  490648:	8b 02                	mov    eax,DWORD PTR [edx]
  49064a:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  49064d:	eb 58                	jmp    0x4906a7
  49064f:	3b c1                	cmp    eax,ecx
  490651:	75 23                	jne    0x490676
  490653:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  490656:	74 23                	je     0x49067b
  490658:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  49065b:	33 c9                	xor    ecx,ecx
  49065d:	89 0a                	mov    DWORD PTR [edx],ecx
  49065f:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  490662:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  490665:	89 56 28             	mov    DWORD PTR [esi+0x28],edx
  490668:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  49066b:	83 7e 40 02          	cmp    DWORD PTR [esi+0x40],0x2
  49066f:	89 56 20             	mov    DWORD PTR [esi+0x20],edx
  490672:	75 33                	jne    0x4906a7
  490674:	eb 2e                	jmp    0x4906a4
  490676:	3b 46 24             	cmp    eax,DWORD PTR [esi+0x24]
  490679:	75 1e                	jne    0x490699
  49067b:	3b c1                	cmp    eax,ecx
  49067d:	74 1a                	je     0x490699
  49067f:	8b 00                	mov    eax,DWORD PTR [eax]
  490681:	33 c9                	xor    ecx,ecx
  490683:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  490686:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  490689:	8b 02                	mov    eax,DWORD PTR [edx]
  49068b:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  49068e:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  490691:	83 7e 40 01          	cmp    DWORD PTR [esi+0x40],0x1
  490695:	75 10                	jne    0x4906a7
  490697:	eb 0b                	jmp    0x4906a4
  490699:	33 c9                	xor    ecx,ecx
  49069b:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  49069e:	89 4e 24             	mov    DWORD PTR [esi+0x24],ecx
  4906a1:	89 4e 28             	mov    DWORD PTR [esi+0x28],ecx
  4906a4:	89 4e 40             	mov    DWORD PTR [esi+0x40],ecx
  4906a7:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  4906aa:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  4906ad:	51                   	push   ecx
  4906ae:	e8 ad 19 fb ff       	call   0x442060
  4906b3:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  4906b6:	52                   	push   edx
  4906b7:	e8 a4 19 fb ff       	call   0x442060
  4906bc:	83 c4 08             	add    esp,0x8
  4906bf:	5e                   	pop    esi
  4906c0:	c3                   	ret

; Avancement itérateur local / 4906d0 — 0x004906D0 .. 0x00490705 (exclusif), 19 instructions confirmees
  4906d0:	8b 51 40             	mov    edx,DWORD PTR [ecx+0x40]
  4906d3:	85 d2                	test   edx,edx
  4906d5:	b8 01 00 00 00       	mov    eax,0x1
  4906da:	74 0a                	je     0x4906e6
  4906dc:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  4906df:	8b 12                	mov    edx,DWORD PTR [edx]
  4906e1:	89 51 20             	mov    DWORD PTR [ecx+0x20],edx
  4906e4:	eb 03                	jmp    0x4906e9
  4906e6:	89 41 40             	mov    DWORD PTR [ecx+0x40],eax
  4906e9:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  4906ec:	85 d2                	test   edx,edx
  4906ee:	75 14                	jne    0x490704
  4906f0:	8b 41 40             	mov    eax,DWORD PTR [ecx+0x40]
  4906f3:	85 c0                	test   eax,eax
  4906f5:	74 04                	je     0x4906fb
  4906f7:	c6 41 34 07          	mov    BYTE PTR [ecx+0x34],0x7
  4906fb:	c7 41 40 00 00 00 00 	mov    DWORD PTR [ecx+0x40],0x0
  490702:	33 c0                	xor    eax,eax
  490704:	c3                   	ret

