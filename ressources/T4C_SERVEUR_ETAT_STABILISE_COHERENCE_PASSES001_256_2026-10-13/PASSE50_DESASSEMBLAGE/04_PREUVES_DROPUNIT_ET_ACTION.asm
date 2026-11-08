; PASSE 50 — Depots d objets et appelant direct independant des penalites de mort
; T4C Server(1).exe SHA256: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions x86-32 et octets exacts compares a la section .text serveur.
; Les ranges sont semi-ouvertes [debut,fin) et ne prouvent pas la couverture de toutes les branches.

; Position, monde, portée [0x417240,0x417312)
; Rayon fallback 0x0A, ecarts absolus x/y, acces au monde.
  417240:	55                   	push   ebp
  417241:	8b ec                	mov    ebp,esp
  417243:	6a ff                	push   0xffffffff
  417245:	68 d3 3c 4d 00       	push   0x4d3cd3
  41724a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  417250:	50                   	push   eax
  417251:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  417258:	81 ec 88 01 00 00    	sub    esp,0x188
  41725e:	53                   	push   ebx
  41725f:	56                   	push   esi
  417260:	57                   	push   edi
  417261:	8b f1                	mov    esi,ecx
  417263:	e8 18 8a 00 00       	call   0x41fc80
  417268:	8b 06                	mov    eax,DWORD PTR [esi]
  41726a:	6a 00                	push   0x0
  41726c:	68 39 4e 00 00       	push   0x4e39
  417271:	8b ce                	mov    ecx,esi
  417273:	c7 45 d0 03 00 00 00 	mov    DWORD PTR [ebp-0x30],0x3
  41727a:	ff 50 0c             	call   DWORD PTR [eax+0xc]
  41727d:	8b f8                	mov    edi,eax
  41727f:	85 ff                	test   edi,edi
  417281:	75 05                	jne    0x417288
  417283:	bf 0a 00 00 00       	mov    edi,0xa
  417288:	8b 16                	mov    edx,DWORD PTR [esi]
  41728a:	8d 45 c4             	lea    eax,[ebp-0x3c]
  41728d:	50                   	push   eax
  41728e:	8b ce                	mov    ecx,esi
  417290:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  417293:	8b 10                	mov    edx,DWORD PTR [eax]
  417295:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  417298:	8b cb                	mov    ecx,ebx
  41729a:	2b ca                	sub    ecx,edx
  41729c:	8b c1                	mov    eax,ecx
  41729e:	99                   	cdq
  41729f:	33 c2                	xor    eax,edx
  4172a1:	2b c2                	sub    eax,edx
  4172a3:	3b c7                	cmp    eax,edi
  4172a5:	0f 8d 7c 03 00 00    	jge    0x417627
  4172ab:	8b 16                	mov    edx,DWORD PTR [esi]
  4172ad:	8d 45 c4             	lea    eax,[ebp-0x3c]
  4172b0:	50                   	push   eax
  4172b1:	8b ce                	mov    ecx,esi
  4172b3:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4172b6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4172b9:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4172bc:	2b ca                	sub    ecx,edx
  4172be:	8b c1                	mov    eax,ecx
  4172c0:	99                   	cdq
  4172c1:	33 c2                	xor    eax,edx
  4172c3:	2b c2                	sub    eax,edx
  4172c5:	3b c7                	cmp    eax,edi
  4172c7:	0f 8d 5a 03 00 00    	jge    0x417627
  4172cd:	8b 16                	mov    edx,DWORD PTR [esi]
  4172cf:	8d 85 6c ff ff ff    	lea    eax,[ebp-0x94]
  4172d5:	50                   	push   eax
  4172d6:	8b ce                	mov    ecx,esi
  4172d8:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4172db:	33 c9                	xor    ecx,ecx
  4172dd:	66 8b 48 08          	mov    cx,WORD PTR [eax+0x8]
  4172e1:	51                   	push   ecx
  4172e2:	e8 d9 ab 05 00       	call   0x471ec0
  4172e7:	83 c4 04             	add    esp,0x4
  4172ea:	85 c0                	test   eax,eax
  4172ec:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  4172ef:	0f 84 32 03 00 00    	je     0x417627
  4172f5:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  4172fb:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  4172fe:	8b 01                	mov    eax,DWORD PTR [ecx]
  417300:	89 55 d4             	mov    DWORD PTR [ebp-0x2c],edx
  417303:	ff 50 04             	call   DWORD PTR [eax+0x4]
  417306:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41730c:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  41730f:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx

; Filtre quantite, flags et fonctions sur objets [0x417312,0x4174b3)
; GetQty, message 20 a l objet et flags, appels conditionnels et verifications des coordonnees.
  417312:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  417319:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  41731d:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  417323:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  417326:	85 c9                	test   ecx,ecx
  417328:	74 0a                	je     0x417334
  41732a:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41732d:	8b 0a                	mov    ecx,DWORD PTR [edx]
  41732f:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  417332:	eb 07                	jmp    0x41733b
  417334:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  41733b:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41733e:	85 c9                	test   ecx,ecx
  417340:	0f 84 c4 02 00 00    	je     0x41760a
  417346:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  41734c:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  41734f:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
  417352:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
  417355:	8b cf                	mov    ecx,edi
  417357:	89 55 18             	mov    DWORD PTR [ebp+0x18],edx
  41735a:	e8 a1 43 07 00       	call   0x48b700
  41735f:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
  417362:	75 b9                	jne    0x41731d
  417364:	8b 17                	mov    edx,DWORD PTR [edi]
  417366:	8b cf                	mov    ecx,edi
  417368:	ff 52 28             	call   DWORD PTR [edx+0x28]
  41736b:	8b 0d 5c 05 4e 00    	mov    ecx,DWORD PTR ds:0x4e055c
  417371:	3b 01                	cmp    eax,DWORD PTR [ecx]
  417373:	75 0e                	jne    0x417383
  417375:	8b 16                	mov    edx,DWORD PTR [esi]
  417377:	8b ce                	mov    ecx,esi
  417379:	ff 92 04 01 00 00    	call   DWORD PTR [edx+0x104]
  41737f:	85 c0                	test   eax,eax
  417381:	74 9a                	je     0x41731d
  417383:	8b cf                	mov    ecx,edi
  417385:	e8 66 50 03 00       	call   0x44c3f0
  41738a:	3b 45 d4             	cmp    eax,DWORD PTR [ebp-0x2c]
  41738d:	73 0a                	jae    0x417399
  41738f:	8b cf                	mov    ecx,edi
  417391:	e8 5a 50 03 00       	call   0x44c3f0
  417396:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
  417399:	8d 4d d8             	lea    ecx,[ebp-0x28]
  41739c:	51                   	push   ecx
  41739d:	6a 00                	push   0x0
  41739f:	6a 00                	push   0x0
  4173a1:	6a 00                	push   0x0
  4173a3:	6a 00                	push   0x0
  4173a5:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [ebp-0x28],0x0
  4173ac:	8b 07                	mov    eax,DWORD PTR [edi]
  4173ae:	6a 14                	push   0x14
  4173b0:	8b cf                	mov    ecx,edi
  4173b2:	ff 50 24             	call   DWORD PTR [eax+0x24]
  4173b5:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  4173b8:	85 c0                	test   eax,eax
  4173ba:	0f 84 5d ff ff ff    	je     0x41731d
  4173c0:	f6 40 14 01          	test   BYTE PTR [eax+0x14],0x1
  4173c4:	74 34                	je     0x4173fa
  4173c6:	8b 16                	mov    edx,DWORD PTR [esi]
  4173c8:	68 58 13 51 00       	push   0x511358
  4173cd:	8b ce                	mov    ecx,esi
  4173cf:	ff 92 94 01 00 00    	call   DWORD PTR [edx+0x194]
  4173d5:	50                   	push   eax
  4173d6:	68 0e 1e 00 00       	push   0x1e0e
  4173db:	e8 10 66 02 00       	call   0x43d9f0
  4173e0:	83 c4 08             	add    esp,0x8
  4173e3:	8b cc                	mov    ecx,esp
  4173e5:	89 65 18             	mov    DWORD PTR [ebp+0x18],esp
  4173e8:	50                   	push   eax
  4173e9:	e8 76 a6 0b 00       	call   0x4d1a64
  4173ee:	8b ce                	mov    ecx,esi
  4173f0:	e8 9b ba 00 00       	call   0x422e90
  4173f5:	e9 23 ff ff ff       	jmp    0x41731d
  4173fa:	8b 07                	mov    eax,DWORD PTR [edi]
  4173fc:	6a 00                	push   0x0
  4173fe:	8d 4d d0             	lea    ecx,[ebp-0x30]
  417401:	51                   	push   ecx
  417402:	56                   	push   esi
  417403:	6a 00                	push   0x0
  417405:	57                   	push   edi
  417406:	6a 03                	push   0x3
  417408:	8b cf                	mov    ecx,edi
  41740a:	ff 50 24             	call   DWORD PTR [eax+0x24]
  41740d:	8b cf                	mov    ecx,edi
  41740f:	e8 3c 63 07 00       	call   0x48d750
  417414:	a8 01                	test   al,0x1
  417416:	0f 85 20 02 00 00    	jne    0x41763c
  41741c:	8b 16                	mov    edx,DWORD PTR [esi]
  41741e:	8d 85 78 ff ff ff    	lea    eax,[ebp-0x88]
  417424:	50                   	push   eax
  417425:	8b ce                	mov    ecx,esi
  417427:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  41742a:	3b 18                	cmp    ebx,DWORD PTR [eax]
  41742c:	75 53                	jne    0x417481
  41742e:	8b 16                	mov    edx,DWORD PTR [esi]
  417430:	8d 45 90             	lea    eax,[ebp-0x70]
  417433:	50                   	push   eax
  417434:	8b ce                	mov    ecx,esi
  417436:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  417439:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  41743c:	3b 48 04             	cmp    ecx,DWORD PTR [eax+0x4]
  41743f:	75 40                	jne    0x417481
  417441:	6a 05                	push   0x5
  417443:	83 ec 0c             	sub    esp,0xc
  417446:	8b d4                	mov    edx,esp
  417448:	89 1a                	mov    DWORD PTR [edx],ebx
  41744a:	8b c1                	mov    eax,ecx
  41744c:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  41744f:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  417452:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  417455:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  417458:	8d 55 c4             	lea    edx,[ebp-0x3c]
  41745b:	52                   	push   edx
  41745c:	e8 3f ad 09 00       	call   0x4b21a0
  417461:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
  417464:	83 f8 ff             	cmp    eax,0xffffffff
  417467:	74 18                	je     0x417481
  417469:	8b 4d c8             	mov    ecx,DWORD PTR [ebp-0x38]
  41746c:	83 f9 ff             	cmp    ecx,0xffffffff
  41746f:	74 10                	je     0x417481
  417471:	8b d8                	mov    ebx,eax
  417473:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
  417476:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
  417479:	89 4d 0c             	mov    DWORD PTR [ebp+0xc],ecx
  41747c:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  41747f:	eb 03                	jmp    0x417484
  417481:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  417484:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
  417487:	33 d2                	xor    edx,edx
  417489:	66 8b 50 2c          	mov    dx,WORD PTR [eax+0x2c]
  41748d:	3b da                	cmp    ebx,edx
  41748f:	0f 8d 41 01 00 00    	jge    0x4175d6
  417495:	33 d2                	xor    edx,edx
  417497:	66 8b 50 2e          	mov    dx,WORD PTR [eax+0x2e]
  41749b:	3b ca                	cmp    ecx,edx
  41749d:	0f 8d 33 01 00 00    	jge    0x4175d6
  4174a3:	85 db                	test   ebx,ebx
  4174a5:	0f 8c 2b 01 00 00    	jl     0x4175d6
  4174ab:	85 c9                	test   ecx,ecx
  4174ad:	0f 8c 23 01 00 00    	jl     0x4175d6

; Blocage et selection de case [0x4174b3,0x417573)
; IsBlocking et GetCollisionPos, comparaison des positions trouvees.
  4174b3:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  4174b6:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4174b9:	6a 00                	push   0x0
  4174bb:	6a 00                	push   0x0
  4174bd:	6a 00                	push   0x0
  4174bf:	83 ec 0c             	sub    esp,0xc
  4174c2:	8b c4                	mov    eax,esp
  4174c4:	89 18                	mov    DWORD PTR [eax],ebx
  4174c6:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4174c9:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  4174cc:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  4174cf:	e8 7c 7d 09 00       	call   0x4af250
  4174d4:	85 c0                	test   eax,eax
  4174d6:	0f 85 fa 00 00 00    	jne    0x4175d6
  4174dc:	6a 01                	push   0x1
  4174de:	6a 01                	push   0x1
  4174e0:	8d 45 9c             	lea    eax,[ebp-0x64]
  4174e3:	50                   	push   eax
  4174e4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4174e7:	8d 4d a0             	lea    ecx,[ebp-0x60]
  4174ea:	51                   	push   ecx
  4174eb:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4174ee:	83 ec 0c             	sub    esp,0xc
  4174f1:	8b d4                	mov    edx,esp
  4174f3:	89 1a                	mov    DWORD PTR [edx],ebx
  4174f5:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  4174f8:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  4174fb:	8b 16                	mov    edx,DWORD PTR [esi]
  4174fd:	8d 45 84             	lea    eax,[ebp-0x7c]
  417500:	50                   	push   eax
  417501:	8b ce                	mov    ecx,esi
  417503:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  417506:	8b 10                	mov    edx,DWORD PTR [eax]
  417508:	83 ec 0c             	sub    esp,0xc
  41750b:	8b cc                	mov    ecx,esp
  41750d:	89 11                	mov    DWORD PTR [ecx],edx
  41750f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  417512:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  417515:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  417518:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  41751b:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  41751e:	e8 dd b1 09 00       	call   0x4b2700
  417523:	39 5d a0             	cmp    DWORD PTR [ebp-0x60],ebx
  417526:	75 08                	jne    0x417530
  417528:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  41752b:	39 4d a4             	cmp    DWORD PTR [ebp-0x5c],ecx
  41752e:	74 2f                	je     0x41755f
  417530:	8b 16                	mov    edx,DWORD PTR [esi]
  417532:	68 58 13 51 00       	push   0x511358
  417537:	8b ce                	mov    ecx,esi
  417539:	ff 92 94 01 00 00    	call   DWORD PTR [edx+0x194]
  41753f:	50                   	push   eax
  417540:	68 d4 01 00 00       	push   0x1d4
  417545:	e8 a6 64 02 00       	call   0x43d9f0
  41754a:	83 c4 08             	add    esp,0x8
  41754d:	8b cc                	mov    ecx,esp
  41754f:	89 65 dc             	mov    DWORD PTR [ebp-0x24],esp
  417552:	50                   	push   eax
  417553:	e8 0c a5 0b 00       	call   0x4d1a64
  417558:	8b ce                	mov    ecx,esi
  41755a:	e8 31 b9 00 00       	call   0x422e90
  41755f:	8b cf                	mov    ecx,edi
  417561:	c6 45 f3 00          	mov    BYTE PTR [ebp-0xd],0x0
  417565:	e8 86 4e 03 00       	call   0x44c3f0
  41756a:	83 f8 01             	cmp    eax,0x1
  41756d:	0f 86 dd 01 00 00    	jbe    0x417750

; Fractionnement de pile et creation Objects [0x417573,0x41763c)
; Si GetQty >1, nouvelle instance de taille 0x120 et copie de l objet source; delete si creation echoue.
  417573:	68 20 01 00 00       	push   0x120
  417578:	e8 73 aa 02 00       	call   0x441ff0
  41757d:	83 c4 04             	add    esp,0x4
  417580:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  417583:	85 c0                	test   eax,eax
  417585:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  41758c:	74 09                	je     0x417597
  41758e:	8b c8                	mov    ecx,eax
  417590:	e8 eb 47 03 00       	call   0x44bd80
  417595:	eb 02                	jmp    0x417599
  417597:	33 c0                	xor    eax,eax
  417599:	8b 18                	mov    ebx,DWORD PTR [eax]
  41759b:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  41759e:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  4175a1:	8b 07                	mov    eax,DWORD PTR [edi]
  4175a3:	8b cf                	mov    ecx,edi
  4175a5:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4175ac:	ff 50 28             	call   DWORD PTR [eax+0x28]
  4175af:	8b d3                	mov    edx,ebx
  4175b1:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
  4175b4:	50                   	push   eax
  4175b5:	6a 03                	push   0x3
  4175b7:	8b cb                	mov    ecx,ebx
  4175b9:	ff 52 18             	call   DWORD PTR [edx+0x18]
  4175bc:	85 c0                	test   eax,eax
  4175be:	0f 85 79 01 00 00    	jne    0x41773d
  4175c4:	8b 03                	mov    eax,DWORD PTR [ebx]
  4175c6:	8b cb                	mov    ecx,ebx
  4175c8:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  4175ce:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4175d1:	e9 47 fd ff ff       	jmp    0x41731d
  4175d6:	8b 16                	mov    edx,DWORD PTR [esi]
  4175d8:	68 58 13 51 00       	push   0x511358
  4175dd:	8b ce                	mov    ecx,esi
  4175df:	ff 92 94 01 00 00    	call   DWORD PTR [edx+0x194]
  4175e5:	50                   	push   eax
  4175e6:	68 d4 01 00 00       	push   0x1d4
  4175eb:	e8 00 64 02 00       	call   0x43d9f0
  4175f0:	83 c4 08             	add    esp,0x8
  4175f3:	8b cc                	mov    ecx,esp
  4175f5:	89 65 18             	mov    DWORD PTR [ebp+0x18],esp
  4175f8:	50                   	push   eax
  4175f9:	e8 66 a4 0b 00       	call   0x4d1a64
  4175fe:	8b ce                	mov    ecx,esi
  417600:	e8 8b b8 00 00       	call   0x422e90
  417605:	e9 13 fd ff ff       	jmp    0x41731d
  41760a:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41760d:	85 c9                	test   ecx,ecx
  41760f:	74 04                	je     0x417615
  417611:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  417615:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  41761c:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  417622:	8b 11                	mov    edx,DWORD PTR [ecx]
  417624:	ff 52 08             	call   DWORD PTR [edx+0x8]
  417627:	33 c0                	xor    eax,eax
  417629:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  41762c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  417633:	5f                   	pop    edi
  417634:	5e                   	pop    esi
  417635:	5b                   	pop    ebx
  417636:	8b e5                	mov    esp,ebp
  417638:	5d                   	pop    ebp
  417639:	c2 14 00             	ret    0x14

; Retrait et mise a jour des listes [0x41763c,0x417750)
; Objects::Remove, GetQty, maillons de liste de contenu Character+0x19C, suppressions conditionnelles.
  41763c:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  41763f:	50                   	push   eax
  417640:	8b cf                	mov    ecx,edi
  417642:	e8 59 4e 03 00       	call   0x44c4a0
  417647:	8b cf                	mov    ecx,edi
  417649:	e8 a2 4d 03 00       	call   0x44c3f0
  41764e:	85 c0                	test   eax,eax
  417650:	0f 85 d7 00 00 00    	jne    0x41772d
  417656:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  41765c:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  41765f:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  417662:	8b 01                	mov    eax,DWORD PTR [ecx]
  417664:	ff 90 c4 01 00 00    	call   DWORD PTR [eax+0x1c4]
  41766a:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  417670:	8b 58 38             	mov    ebx,DWORD PTR [eax+0x38]
  417673:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  417676:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  417679:	4b                   	dec    ebx
  41767a:	3b ca                	cmp    ecx,edx
  41767c:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  41767f:	89 58 38             	mov    DWORD PTR [eax+0x38],ebx
  417682:	74 3d                	je     0x4176c1
  417684:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  417687:	74 34                	je     0x4176bd
  417689:	8b 11                	mov    edx,DWORD PTR [ecx]
  41768b:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  41768e:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  417691:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  417694:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  417697:	8b 09                	mov    ecx,DWORD PTR [ecx]
  417699:	89 0a                	mov    DWORD PTR [edx],ecx
  41769b:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41769e:	83 f9 01             	cmp    ecx,0x1
  4176a1:	75 0b                	jne    0x4176ae
  4176a3:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  4176a6:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  4176a9:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4176ac:	eb 73                	jmp    0x417721
  4176ae:	83 f9 02             	cmp    ecx,0x2
  4176b1:	75 6e                	jne    0x417721
  4176b3:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  4176b6:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4176b8:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4176bb:	eb 64                	jmp    0x417721
  4176bd:	3b ca                	cmp    ecx,edx
  4176bf:	75 2c                	jne    0x4176ed
  4176c1:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  4176c4:	74 2c                	je     0x4176f2
  4176c6:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4176c9:	c7 02 00 00 00 00    	mov    DWORD PTR [edx],0x0
  4176cf:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  4176d2:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4176d5:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  4176d8:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4176db:	83 78 40 02          	cmp    DWORD PTR [eax+0x40],0x2
  4176df:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  4176e2:	75 3d                	jne    0x417721
  4176e4:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  4176eb:	eb 34                	jmp    0x417721
  4176ed:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  4176f0:	75 21                	jne    0x417713
  4176f2:	3b ca                	cmp    ecx,edx
  4176f4:	74 1d                	je     0x417713
  4176f6:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4176f8:	33 d2                	xor    edx,edx
  4176fa:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4176fd:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  417700:	8b 09                	mov    ecx,DWORD PTR [ecx]
  417702:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  417705:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  417708:	83 78 40 01          	cmp    DWORD PTR [eax+0x40],0x1
  41770c:	75 13                	jne    0x417721
  41770e:	89 50 40             	mov    DWORD PTR [eax+0x40],edx
  417711:	eb 0e                	jmp    0x417721
  417713:	33 c9                	xor    ecx,ecx
  417715:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  417718:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  41771b:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  41771e:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  417721:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
  417724:	52                   	push   edx
  417725:	e8 36 a9 02 00       	call   0x442060
  41772a:	83 c4 04             	add    esp,0x4
  41772d:	8b 8e 9c 01 00 00    	mov    ecx,DWORD PTR [esi+0x19c]
  417733:	8b 01                	mov    eax,DWORD PTR [ecx]
  417735:	ff 50 08             	call   DWORD PTR [eax+0x8]
  417738:	e9 ea fe ff ff       	jmp    0x417627
  41773d:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  417740:	51                   	push   ecx
  417741:	8b cb                	mov    ecx,ebx
  417743:	e8 b8 4c 03 00       	call   0x44c400
  417748:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  41774b:	e9 cc 00 00 00       	jmp    0x41781c

; Branche Add et suite des liens de liste [0x417750,0x417825)
; Objects::Add et mise a jour des liens; destination finale necessite de suivre branche complete.
  417750:	8b 86 9c 01 00 00    	mov    eax,DWORD PTR [esi+0x19c]
  417756:	8b 48 38             	mov    ecx,DWORD PTR [eax+0x38]
  417759:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  41775c:	49                   	dec    ecx
  41775d:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
  417760:	8b ca                	mov    ecx,edx
  417762:	89 50 2c             	mov    DWORD PTR [eax+0x2c],edx
  417765:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  417768:	3b ca                	cmp    ecx,edx
  41776a:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  41776d:	c6 45 f3 01          	mov    BYTE PTR [ebp-0xd],0x1
  417771:	74 3d                	je     0x4177b0
  417773:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  417776:	74 34                	je     0x4177ac
  417778:	8b 11                	mov    edx,DWORD PTR [ecx]
  41777a:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  41777d:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  417780:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  417783:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  417786:	8b 09                	mov    ecx,DWORD PTR [ecx]
  417788:	89 0a                	mov    DWORD PTR [edx],ecx
  41778a:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  41778d:	83 f9 01             	cmp    ecx,0x1
  417790:	75 0b                	jne    0x41779d
  417792:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  417795:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  417798:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  41779b:	eb 73                	jmp    0x417810
  41779d:	83 f9 02             	cmp    ecx,0x2
  4177a0:	75 6e                	jne    0x417810
  4177a2:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  4177a5:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4177a7:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4177aa:	eb 64                	jmp    0x417810
  4177ac:	3b ca                	cmp    ecx,edx
  4177ae:	75 2c                	jne    0x4177dc
  4177b0:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  4177b3:	74 2c                	je     0x4177e1
  4177b5:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4177b8:	c7 02 00 00 00 00    	mov    DWORD PTR [edx],0x0
  4177be:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  4177c1:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4177c4:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  4177c7:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  4177ca:	83 78 40 02          	cmp    DWORD PTR [eax+0x40],0x2
  4177ce:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  4177d1:	75 3d                	jne    0x417810
  4177d3:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  4177da:	eb 34                	jmp    0x417810
  4177dc:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  4177df:	75 21                	jne    0x417802
  4177e1:	3b ca                	cmp    ecx,edx
  4177e3:	74 1d                	je     0x417802
  4177e5:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4177e7:	33 d2                	xor    edx,edx
  4177e9:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4177ec:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  4177ef:	8b 09                	mov    ecx,DWORD PTR [ecx]
  4177f1:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4177f4:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  4177f7:	83 78 40 01          	cmp    DWORD PTR [eax+0x40],0x1
  4177fb:	75 13                	jne    0x417810
  4177fd:	89 50 40             	mov    DWORD PTR [eax+0x40],edx
  417800:	eb 0e                	jmp    0x417810
  417802:	33 c9                	xor    ecx,ecx
  417804:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  417807:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  41780a:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  41780d:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  417810:	8b 40 2c             	mov    eax,DWORD PTR [eax+0x2c]
  417813:	50                   	push   eax
  417814:	e8 47 a8 02 00       	call   0x442060
  417819:	83 c4 04             	add    esp,0x4
  41781c:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  41781f:	8b 01                	mov    eax,DWORD PTR [ecx]
  417821:	6a 03                	push   0x3
  417823:	8d 95 6c fe ff ff    	lea    edx,[ebp-0x194]

; Appelant direct du depot distinct de Death [0x47aa3a,0x47aaa9)
; 0x47AA71 appelle Character::DropUnit, puis BroadcastPopup si succes; aucun appel direct a DropUnit observe dans Character::Death.
  47aa3a:	8b cf                	mov    ecx,edi
  47aa3c:	e8 af b9 00 00       	call   0x4863f0
  47aa41:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47aa44:	8b 11                	mov    edx,DWORD PTR [ecx]
  47aa46:	8d 45 d0             	lea    eax,[ebp-0x30]
  47aa49:	50                   	push   eax
  47aa4a:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47aa4d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  47aa50:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  47aa53:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  47aa56:	51                   	push   ecx
  47aa57:	52                   	push   edx
  47aa58:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  47aa5b:	83 ec 0c             	sub    esp,0xc
  47aa5e:	8b cc                	mov    ecx,esp
  47aa60:	89 11                	mov    DWORD PTR [ecx],edx
  47aa62:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  47aa65:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  47aa68:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  47aa6b:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  47aa6e:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  47aa71:	e8 ca c7 f9 ff       	call   0x417240
  47aa76:	3b c3                	cmp    eax,ebx
  47aa78:	74 1f                	je     0x47aa99
  47aa7a:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  47aa7d:	6a 01                	push   0x1
  47aa7f:	83 ec 0c             	sub    esp,0xc
  47aa82:	8b cc                	mov    ecx,esp
  47aa84:	89 11                	mov    DWORD PTR [ecx],edx
  47aa86:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
  47aa89:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  47aa8c:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  47aa8f:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  47aa92:	8b c8                	mov    ecx,eax
  47aa94:	e8 47 4d 01 00       	call   0x48f7e0
  47aa99:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  47aa9c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  47aaa3:	5f                   	pop    edi
  47aaa4:	5e                   	pop    esi
  47aaa5:	5b                   	pop    ebx
  47aaa6:	8b e5                	mov    esp,ebp
  47aaa8:	5d                   	pop    ebp
