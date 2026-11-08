; PASSE43 // preuve binaire PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions x86 Intel extraites du binaire serveur (preuve non suffisante de semantique a elle seule).

; Validateur type2 : comparaisons _stricmp, enums et alternative skill: VA 0x4c32f0..0x4c38ae (extraits disassembles, PAS un dump de fonctions arbitraires)
  4c32f0:	55                   	push   ebp
  4c32f1:	8b ec                	mov    ebp,esp
  4c32f3:	6a ff                	push   0xffffffff
  4c32f5:	68 48 d5 4d 00       	push   0x4dd548
  4c32fa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c3300:	50                   	push   eax
  4c3301:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c3308:	51                   	push   ecx
  4c3309:	53                   	push   ebx
  4c330a:	56                   	push   esi
  4c330b:	57                   	push   edi
  4c330c:	8b d9                	mov    ebx,ecx
  4c330e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4c3311:	33 f6                	xor    esi,esi
  4c3313:	25 ff ff 00 00       	and    eax,0xffff
  4c3318:	48                   	dec    eax
  4c3319:	bf 01 00 00 00       	mov    edi,0x1
  4c331e:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
  4c3321:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  4c3324:	0f 84 44 05 00 00    	je     0x4c386e
  4c332a:	48                   	dec    eax
  4c332b:	74 32                	je     0x4c335f
  4c332d:	48                   	dec    eax
  4c332e:	74 08                	je     0x4c3338
  4c3330:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4c3333:	e9 52 05 00 00       	jmp    0x4c388a
  4c3338:	51                   	push   ecx
  4c3339:	8d 45 08             	lea    eax,[ebp+0x8]
  4c333c:	8b cc                	mov    ecx,esp
  4c333e:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  4c3341:	50                   	push   eax
  4c3342:	e8 05 e7 00 00       	call   0x4d1a4c
  4c3347:	8d 4b 10             	lea    ecx,[ebx+0x10]
  4c334a:	e8 b1 65 f4 ff       	call   0x409900
  4c334f:	3b c6                	cmp    eax,esi
  4c3351:	0f 85 33 05 00 00    	jne    0x4c388a
  4c3357:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4c335a:	e9 2b 05 00 00       	jmp    0x4c388a
  4c335f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3362:	8b 35 e4 e2 4d 00    	mov    esi,DWORD PTR ds:0x4de2e4
  4c3368:	68 30 01 51 00       	push   0x510130
  4c336d:	51                   	push   ecx
  4c336e:	ff d6                	call   esi
  4c3370:	83 c4 08             	add    esp,0x8
  4c3373:	85 c0                	test   eax,eax
  4c3375:	0f 84 eb 04 00 00    	je     0x4c3866
  4c337b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c337e:	68 2c 01 51 00       	push   0x51012c
  4c3383:	52                   	push   edx
  4c3384:	ff d6                	call   esi
  4c3386:	83 c4 08             	add    esp,0x8
  4c3389:	85 c0                	test   eax,eax
  4c338b:	0f 84 d5 04 00 00    	je     0x4c3866
  4c3391:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c3394:	68 24 01 51 00       	push   0x510124
  4c3399:	50                   	push   eax
  4c339a:	ff d6                	call   esi
  4c339c:	83 c4 08             	add    esp,0x8
  4c339f:	85 c0                	test   eax,eax
  4c33a1:	0f 84 b7 04 00 00    	je     0x4c385e
  4c33a7:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c33aa:	68 20 01 51 00       	push   0x510120
  4c33af:	51                   	push   ecx
  4c33b0:	ff d6                	call   esi
  4c33b2:	83 c4 08             	add    esp,0x8
  4c33b5:	85 c0                	test   eax,eax
  4c33b7:	0f 84 a1 04 00 00    	je     0x4c385e
  4c33bd:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c33c0:	68 14 01 51 00       	push   0x510114
  4c33c5:	52                   	push   edx
  4c33c6:	ff d6                	call   esi
  4c33c8:	83 c4 08             	add    esp,0x8
  4c33cb:	85 c0                	test   eax,eax
  4c33cd:	0f 84 83 04 00 00    	je     0x4c3856
  4c33d3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c33d6:	68 10 01 51 00       	push   0x510110
  4c33db:	50                   	push   eax
  4c33dc:	ff d6                	call   esi
  4c33de:	83 c4 08             	add    esp,0x8
  4c33e1:	85 c0                	test   eax,eax
  4c33e3:	0f 84 6d 04 00 00    	je     0x4c3856
  4c33e9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c33ec:	68 08 01 51 00       	push   0x510108
  4c33f1:	51                   	push   ecx
  4c33f2:	ff d6                	call   esi
  4c33f4:	83 c4 08             	add    esp,0x8
  4c33f7:	85 c0                	test   eax,eax
  4c33f9:	0f 84 4f 04 00 00    	je     0x4c384e
  4c33ff:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c3402:	68 04 01 51 00       	push   0x510104
  4c3407:	52                   	push   edx
  4c3408:	ff d6                	call   esi
  4c340a:	83 c4 08             	add    esp,0x8
  4c340d:	85 c0                	test   eax,eax
  4c340f:	0f 84 39 04 00 00    	je     0x4c384e
  4c3415:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c3418:	68 f4 00 51 00       	push   0x5100f4
  4c341d:	50                   	push   eax
  4c341e:	ff d6                	call   esi
  4c3420:	83 c4 08             	add    esp,0x8
  4c3423:	85 c0                	test   eax,eax
  4c3425:	0f 84 1d 04 00 00    	je     0x4c3848
  4c342b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c342e:	68 f0 00 51 00       	push   0x5100f0
  4c3433:	51                   	push   ecx
  4c3434:	ff d6                	call   esi
  4c3436:	83 c4 08             	add    esp,0x8
  4c3439:	85 c0                	test   eax,eax
  4c343b:	0f 84 07 04 00 00    	je     0x4c3848
  4c3441:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c3444:	68 e0 00 51 00       	push   0x5100e0
  4c3449:	52                   	push   edx
  4c344a:	ff d6                	call   esi
  4c344c:	33 ff                	xor    edi,edi
  4c344e:	83 c4 08             	add    esp,0x8
  4c3451:	3b c7                	cmp    eax,edi
  4c3453:	0f 84 e7 03 00 00    	je     0x4c3840
  4c3459:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c345c:	68 d8 00 51 00       	push   0x5100d8
  4c3461:	50                   	push   eax
  4c3462:	ff d6                	call   esi
  4c3464:	83 c4 08             	add    esp,0x8
  4c3467:	3b c7                	cmp    eax,edi
  4c3469:	0f 84 d1 03 00 00    	je     0x4c3840
  4c346f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3472:	68 cc 00 51 00       	push   0x5100cc
  4c3477:	51                   	push   ecx
  4c3478:	ff d6                	call   esi
  4c347a:	83 c4 08             	add    esp,0x8
  4c347d:	3b c7                	cmp    eax,edi
  4c347f:	0f 84 b3 03 00 00    	je     0x4c3838
  4c3485:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c3488:	68 c4 00 51 00       	push   0x5100c4
  4c348d:	52                   	push   edx
  4c348e:	ff d6                	call   esi
  4c3490:	83 c4 08             	add    esp,0x8
  4c3493:	3b c7                	cmp    eax,edi
  4c3495:	0f 84 9d 03 00 00    	je     0x4c3838
  4c349b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c349e:	68 bc 00 51 00       	push   0x5100bc
  4c34a3:	50                   	push   eax
  4c34a4:	ff d6                	call   esi
  4c34a6:	83 c4 08             	add    esp,0x8
  4c34a9:	3b c7                	cmp    eax,edi
  4c34ab:	0f 84 7f 03 00 00    	je     0x4c3830
  4c34b1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c34b4:	68 b8 00 51 00       	push   0x5100b8
  4c34b9:	51                   	push   ecx
  4c34ba:	ff d6                	call   esi
  4c34bc:	83 c4 08             	add    esp,0x8
  4c34bf:	3b c7                	cmp    eax,edi
  4c34c1:	0f 84 69 03 00 00    	je     0x4c3830
  4c34c7:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c34ca:	68 ac 00 51 00       	push   0x5100ac
  4c34cf:	52                   	push   edx
  4c34d0:	ff d6                	call   esi
  4c34d2:	83 c4 08             	add    esp,0x8
  4c34d5:	3b c7                	cmp    eax,edi
  4c34d7:	75 0b                	jne    0x4c34e4
  4c34d9:	66 c7 43 0c 0b 00    	mov    WORD PTR [ebx+0xc],0xb
  4c34df:	e9 a6 03 00 00       	jmp    0x4c388a
  4c34e4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c34e7:	68 a4 00 51 00       	push   0x5100a4
  4c34ec:	50                   	push   eax
  4c34ed:	ff d6                	call   esi
  4c34ef:	83 c4 08             	add    esp,0x8
  4c34f2:	3b c7                	cmp    eax,edi
  4c34f4:	75 0b                	jne    0x4c3501
  4c34f6:	66 c7 43 0c f0 00    	mov    WORD PTR [ebx+0xc],0xf0
  4c34fc:	e9 89 03 00 00       	jmp    0x4c388a
  4c3501:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3504:	68 98 00 51 00       	push   0x510098
  4c3509:	51                   	push   ecx
  4c350a:	ff d6                	call   esi
  4c350c:	83 c4 08             	add    esp,0x8
  4c350f:	3b c7                	cmp    eax,edi
  4c3511:	0f 84 11 03 00 00    	je     0x4c3828
  4c3517:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c351a:	68 90 00 51 00       	push   0x510090
  4c351f:	52                   	push   edx
  4c3520:	ff d6                	call   esi
  4c3522:	83 c4 08             	add    esp,0x8
  4c3525:	3b c7                	cmp    eax,edi
  4c3527:	0f 84 fb 02 00 00    	je     0x4c3828
  4c352d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c3530:	68 80 00 51 00       	push   0x510080
  4c3535:	50                   	push   eax
  4c3536:	ff d6                	call   esi
  4c3538:	83 c4 08             	add    esp,0x8
  4c353b:	3b c7                	cmp    eax,edi
  4c353d:	0f 84 dd 02 00 00    	je     0x4c3820
  4c3543:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3546:	68 78 00 51 00       	push   0x510078
  4c354b:	51                   	push   ecx
  4c354c:	ff d6                	call   esi
  4c354e:	83 c4 08             	add    esp,0x8
  4c3551:	3b c7                	cmp    eax,edi
  4c3553:	0f 84 c7 02 00 00    	je     0x4c3820
  4c3559:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c355c:	68 6c 00 51 00       	push   0x51006c
  4c3561:	52                   	push   edx
  4c3562:	ff d6                	call   esi
  4c3564:	83 c4 08             	add    esp,0x8
  4c3567:	3b c7                	cmp    eax,edi
  4c3569:	0f 84 a9 02 00 00    	je     0x4c3818
  4c356f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c3572:	68 64 00 51 00       	push   0x510064
  4c3577:	50                   	push   eax
  4c3578:	ff d6                	call   esi
  4c357a:	83 c4 08             	add    esp,0x8
  4c357d:	3b c7                	cmp    eax,edi
  4c357f:	0f 84 93 02 00 00    	je     0x4c3818
  4c3585:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3588:	68 54 00 51 00       	push   0x510054
  4c358d:	51                   	push   ecx
  4c358e:	ff d6                	call   esi
  4c3590:	83 c4 08             	add    esp,0x8
  4c3593:	3b c7                	cmp    eax,edi
  4c3595:	0f 84 75 02 00 00    	je     0x4c3810
  4c359b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c359e:	68 4c 00 51 00       	push   0x51004c
  4c35a3:	52                   	push   edx
  4c35a4:	ff d6                	call   esi
  4c35a6:	83 c4 08             	add    esp,0x8
  4c35a9:	3b c7                	cmp    eax,edi
  4c35ab:	0f 84 5f 02 00 00    	je     0x4c3810
  4c35b1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c35b4:	68 40 00 51 00       	push   0x510040
  4c35b9:	50                   	push   eax
  4c35ba:	ff d6                	call   esi
  4c35bc:	83 c4 08             	add    esp,0x8
  4c35bf:	3b c7                	cmp    eax,edi
  4c35c1:	0f 84 41 02 00 00    	je     0x4c3808
  4c35c7:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c35ca:	68 3c 00 51 00       	push   0x51003c
  4c35cf:	51                   	push   ecx
  4c35d0:	ff d6                	call   esi
  4c35d2:	83 c4 08             	add    esp,0x8
  4c35d5:	3b c7                	cmp    eax,edi
  4c35d7:	0f 84 2b 02 00 00    	je     0x4c3808
  4c35dd:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c35e0:	68 30 00 51 00       	push   0x510030
  4c35e5:	52                   	push   edx
  4c35e6:	ff d6                	call   esi
  4c35e8:	83 c4 08             	add    esp,0x8
  4c35eb:	3b c7                	cmp    eax,edi
  4c35ed:	0f 84 0a 02 00 00    	je     0x4c37fd
  4c35f3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c35f6:	68 28 00 51 00       	push   0x510028
  4c35fb:	50                   	push   eax
  4c35fc:	ff d6                	call   esi
  4c35fe:	83 c4 08             	add    esp,0x8
  4c3601:	3b c7                	cmp    eax,edi
  4c3603:	0f 84 f4 01 00 00    	je     0x4c37fd
  4c3609:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c360c:	68 1c 00 51 00       	push   0x51001c
  4c3611:	51                   	push   ecx
  4c3612:	ff d6                	call   esi
  4c3614:	83 c4 08             	add    esp,0x8
  4c3617:	3b c7                	cmp    eax,edi
  4c3619:	0f 84 d3 01 00 00    	je     0x4c37f2
  4c361f:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c3622:	68 14 00 51 00       	push   0x510014
  4c3627:	52                   	push   edx
  4c3628:	ff d6                	call   esi
  4c362a:	83 c4 08             	add    esp,0x8
  4c362d:	3b c7                	cmp    eax,edi
  4c362f:	0f 84 bd 01 00 00    	je     0x4c37f2
  4c3635:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c3638:	68 08 00 51 00       	push   0x510008
  4c363d:	50                   	push   eax
  4c363e:	ff d6                	call   esi
  4c3640:	83 c4 08             	add    esp,0x8
  4c3643:	3b c7                	cmp    eax,edi
  4c3645:	0f 84 9c 01 00 00    	je     0x4c37e7
  4c364b:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c364e:	68 00 00 51 00       	push   0x510000
  4c3653:	51                   	push   ecx
  4c3654:	ff d6                	call   esi
  4c3656:	83 c4 08             	add    esp,0x8
  4c3659:	3b c7                	cmp    eax,edi
  4c365b:	0f 84 86 01 00 00    	je     0x4c37e7
  4c3661:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c3664:	68 f0 ff 50 00       	push   0x50fff0
  4c3669:	52                   	push   edx
  4c366a:	ff d6                	call   esi
  4c366c:	83 c4 08             	add    esp,0x8
  4c366f:	3b c7                	cmp    eax,edi
  4c3671:	0f 84 65 01 00 00    	je     0x4c37dc
  4c3677:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c367a:	68 e8 ff 50 00       	push   0x50ffe8
  4c367f:	50                   	push   eax
  4c3680:	ff d6                	call   esi
  4c3682:	83 c4 08             	add    esp,0x8
  4c3685:	3b c7                	cmp    eax,edi
  4c3687:	0f 84 4f 01 00 00    	je     0x4c37dc
  4c368d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3690:	68 dc ff 50 00       	push   0x50ffdc
  4c3695:	51                   	push   ecx
  4c3696:	ff d6                	call   esi
  4c3698:	83 c4 08             	add    esp,0x8
  4c369b:	3b c7                	cmp    eax,edi
  4c369d:	0f 84 2e 01 00 00    	je     0x4c37d1
  4c36a3:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c36a6:	68 d4 ff 50 00       	push   0x50ffd4
  4c36ab:	52                   	push   edx
  4c36ac:	ff d6                	call   esi
  4c36ae:	83 c4 08             	add    esp,0x8
  4c36b1:	3b c7                	cmp    eax,edi
  4c36b3:	0f 84 18 01 00 00    	je     0x4c37d1
  4c36b9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c36bc:	68 c8 ff 50 00       	push   0x50ffc8
  4c36c1:	50                   	push   eax
  4c36c2:	ff d6                	call   esi
  4c36c4:	83 c4 08             	add    esp,0x8
  4c36c7:	3b c7                	cmp    eax,edi
  4c36c9:	0f 84 f7 00 00 00    	je     0x4c37c6
  4c36cf:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c36d2:	68 c0 ff 50 00       	push   0x50ffc0
  4c36d7:	51                   	push   ecx
  4c36d8:	ff d6                	call   esi
  4c36da:	83 c4 08             	add    esp,0x8
  4c36dd:	3b c7                	cmp    eax,edi
  4c36df:	0f 84 e1 00 00 00    	je     0x4c37c6
  4c36e5:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c36e8:	68 b4 ff 50 00       	push   0x50ffb4
  4c36ed:	52                   	push   edx
  4c36ee:	ff d6                	call   esi
  4c36f0:	83 c4 08             	add    esp,0x8
  4c36f3:	3b c7                	cmp    eax,edi
  4c36f5:	0f 84 c0 00 00 00    	je     0x4c37bb
  4c36fb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c36fe:	68 ac ff 50 00       	push   0x50ffac
  4c3703:	50                   	push   eax
  4c3704:	ff d6                	call   esi
  4c3706:	83 c4 08             	add    esp,0x8
  4c3709:	3b c7                	cmp    eax,edi
  4c370b:	0f 84 aa 00 00 00    	je     0x4c37bb
  4c3711:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3714:	68 a8 ff 50 00       	push   0x50ffa8
  4c3719:	51                   	push   ecx
  4c371a:	ff d6                	call   esi
  4c371c:	83 c4 08             	add    esp,0x8
  4c371f:	3b c7                	cmp    eax,edi
  4c3721:	75 0b                	jne    0x4c372e
  4c3723:	66 c7 43 0c 14 00    	mov    WORD PTR [ebx+0xc],0x14
  4c3729:	e9 5c 01 00 00       	jmp    0x4c388a
  4c372e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c3731:	68 a0 ff 50 00       	push   0x50ffa0
  4c3736:	52                   	push   edx
  4c3737:	ff d6                	call   esi
  4c3739:	83 c4 08             	add    esp,0x8
  4c373c:	3b c7                	cmp    eax,edi
  4c373e:	75 0b                	jne    0x4c374b
  4c3740:	66 c7 43 0c 19 00    	mov    WORD PTR [ebx+0xc],0x19
  4c3746:	e9 3f 01 00 00       	jmp    0x4c388a
  4c374b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c374e:	68 94 ff 50 00       	push   0x50ff94
  4c3753:	50                   	push   eax
  4c3754:	ff d6                	call   esi
  4c3756:	83 c4 08             	add    esp,0x8
  4c3759:	3b c7                	cmp    eax,edi
  4c375b:	75 0b                	jne    0x4c3768
  4c375d:	66 c7 43 0c 1a 00    	mov    WORD PTR [ebx+0xc],0x1a
  4c3763:	e9 22 01 00 00       	jmp    0x4c388a
  4c3768:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4c376b:	e8 18 e3 00 00       	call   0x4d1a88
  4c3770:	68 8c ff 50 00       	push   0x50ff8c
  4c3775:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4c3778:	e8 65 e3 00 00       	call   0x4d1ae2
  4c377d:	33 c9                	xor    ecx,ecx
  4c377f:	83 f8 ff             	cmp    eax,0xffffffff
  4c3782:	0f 95 c1             	setne  cl
  4c3785:	8b c1                	mov    eax,ecx
  4c3787:	3b c7                	cmp    eax,edi
  4c3789:	74 1a                	je     0x4c37a5
  4c378b:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c378e:	8d 44 10 05          	lea    eax,[eax+edx*1+0x5]
  4c3792:	50                   	push   eax
  4c3793:	ff 15 14 e3 4d 00    	call   DWORD PTR ds:0x4de314
  4c3799:	83 c4 04             	add    esp,0x4
  4c379c:	66 3b c7             	cmp    ax,di
  4c379f:	66 89 43 0c          	mov    WORD PTR [ebx+0xc],ax
  4c37a3:	75 08                	jne    0x4c37ad
  4c37a5:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  4c37a8:	e9 dd 00 00 00       	jmp    0x4c388a
  4c37ad:	05 10 27 00 00       	add    eax,0x2710
  4c37b2:	66 89 43 0c          	mov    WORD PTR [ebx+0xc],ax
  4c37b6:	e9 cf 00 00 00       	jmp    0x4c388a
  4c37bb:	66 c7 43 0c 18 00    	mov    WORD PTR [ebx+0xc],0x18
  4c37c1:	e9 c4 00 00 00       	jmp    0x4c388a
  4c37c6:	66 c7 43 0c 17 00    	mov    WORD PTR [ebx+0xc],0x17
  4c37cc:	e9 b9 00 00 00       	jmp    0x4c388a
  4c37d1:	66 c7 43 0c 16 00    	mov    WORD PTR [ebx+0xc],0x16
  4c37d7:	e9 ae 00 00 00       	jmp    0x4c388a
  4c37dc:	66 c7 43 0c 15 00    	mov    WORD PTR [ebx+0xc],0x15
  4c37e2:	e9 a3 00 00 00       	jmp    0x4c388a
  4c37e7:	66 c7 43 0c 13 00    	mov    WORD PTR [ebx+0xc],0x13
  4c37ed:	e9 98 00 00 00       	jmp    0x4c388a
  4c37f2:	66 c7 43 0c 11 00    	mov    WORD PTR [ebx+0xc],0x11
  4c37f8:	e9 8d 00 00 00       	jmp    0x4c388a
  4c37fd:	66 c7 43 0c 12 00    	mov    WORD PTR [ebx+0xc],0x12
  4c3803:	e9 82 00 00 00       	jmp    0x4c388a
  4c3808:	66 c7 43 0c 10 00    	mov    WORD PTR [ebx+0xc],0x10
  4c380e:	eb 7a                	jmp    0x4c388a
  4c3810:	66 c7 43 0c 0f 00    	mov    WORD PTR [ebx+0xc],0xf
  4c3816:	eb 72                	jmp    0x4c388a
  4c3818:	66 c7 43 0c 0d 00    	mov    WORD PTR [ebx+0xc],0xd
  4c381e:	eb 6a                	jmp    0x4c388a
  4c3820:	66 c7 43 0c 0e 00    	mov    WORD PTR [ebx+0xc],0xe
  4c3826:	eb 62                	jmp    0x4c388a
  4c3828:	66 c7 43 0c 0c 00    	mov    WORD PTR [ebx+0xc],0xc
  4c382e:	eb 5a                	jmp    0x4c388a
  4c3830:	66 c7 43 0c 0a 00    	mov    WORD PTR [ebx+0xc],0xa
  4c3836:	eb 52                	jmp    0x4c388a
  4c3838:	66 c7 43 0c 09 00    	mov    WORD PTR [ebx+0xc],0x9
  4c383e:	eb 4a                	jmp    0x4c388a
  4c3840:	66 c7 43 0c 08 00    	mov    WORD PTR [ebx+0xc],0x8
  4c3846:	eb 42                	jmp    0x4c388a
  4c3848:	66 89 7b 0c          	mov    WORD PTR [ebx+0xc],di
  4c384c:	eb 3c                	jmp    0x4c388a
  4c384e:	66 c7 43 0c 04 00    	mov    WORD PTR [ebx+0xc],0x4
  4c3854:	eb 34                	jmp    0x4c388a
  4c3856:	66 c7 43 0c 02 00    	mov    WORD PTR [ebx+0xc],0x2
  4c385c:	eb 2c                	jmp    0x4c388a
  4c385e:	66 c7 43 0c 06 00    	mov    WORD PTR [ebx+0xc],0x6
  4c3864:	eb 24                	jmp    0x4c388a
  4c3866:	66 c7 43 0c 03 00    	mov    WORD PTR [ebx+0xc],0x3
  4c386c:	eb 1c                	jmp    0x4c388a
  4c386e:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c3871:	68 90 f7 50 00       	push   0x50f790
  4c3876:	51                   	push   ecx
  4c3877:	ff 15 e4 e2 4d 00    	call   DWORD PTR ds:0x4de2e4
  4c387d:	83 c4 08             	add    esp,0x8
  4c3880:	3b c6                	cmp    eax,esi
  4c3882:	75 06                	jne    0x4c388a
  4c3884:	89 bb 80 00 00 00    	mov    DWORD PTR [ebx+0x80],edi
  4c388a:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4c388d:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c3894:	e8 a7 e1 00 00       	call   0x4d1a40
  4c3899:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c389c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4c389f:	5f                   	pop    edi
  4c38a0:	5e                   	pop    esi
  4c38a1:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c38a8:	5b                   	pop    ebx
  4c38a9:	8b e5                	mov    esp,ebp
  4c38ab:	5d                   	pop    ebp
  4c38ac:	c2 08 00             	ret    0x8
