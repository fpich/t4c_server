; Extraits bruts de objdump, adresses virtuelles du binaire PE32.
; SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc

; === PRÉCISION 0x438620–0x438691 ===
  438620:	55                   	push   ebp
  438621:	8b ec                	mov    ebp,esp
  438623:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  438626:	85 c0                	test   eax,eax
  438628:	77 05                	ja     0x43862f
  43862a:	b8 01 00 00 00       	mov    eax,0x1
  43862f:	56                   	push   esi
  438630:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  438633:	85 f6                	test   esi,esi
  438635:	57                   	push   edi
  438636:	77 05                	ja     0x43863d
  438638:	be 01 00 00 00       	mov    esi,0x1
  43863d:	50                   	push   eax
  43863e:	6a 01                	push   0x1
  438640:	b9 34 5e 51 00       	mov    ecx,0x515e34
  438645:	e8 56 0a 02 00       	call   0x4590a0
  43864a:	56                   	push   esi
  43864b:	6a 01                	push   0x1
  43864d:	b9 34 5e 51 00       	mov    ecx,0x515e34
  438652:	8b f8                	mov    edi,eax
  438654:	e8 47 0a 02 00       	call   0x4590a0
  438659:	2b f8                	sub    edi,eax
  43865b:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  438660:	f7 65 14             	mul    DWORD PTR [ebp+0x14]
  438663:	d1 ea                	shr    edx,1
  438665:	52                   	push   edx
  438666:	6a 01                	push   0x1
  438668:	b9 34 5e 51 00       	mov    ecx,0x515e34
  43866d:	e8 2e 0a 02 00       	call   0x4590a0
  438672:	2b f8                	sub    edi,eax
  438674:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
  438679:	f7 65 10             	mul    DWORD PTR [ebp+0x10]
  43867c:	d1 ea                	shr    edx,1
  43867e:	52                   	push   edx
  43867f:	6a 01                	push   0x1
  438681:	b9 34 5e 51 00       	mov    ecx,0x515e34
  438686:	e8 15 0a 02 00       	call   0x4590a0
  43868b:	03 c7                	add    eax,edi
  43868d:	5f                   	pop    edi
  43868e:	5e                   	pop    esi
  43868f:	5d                   	pop    ebp
  438690:	c3                   	ret

; === GÉNÉRATEUR 0x4590A0–0x4590BA ===
  4590a0:	55                   	push   ebp
  4590a1:	8b ec                	mov    ebp,esp
  4590a3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4590a6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4590a9:	6a 00                	push   0x0
  4590ab:	40                   	inc    eax
  4590ac:	50                   	push   eax
  4590ad:	51                   	push   ecx
  4590ae:	e8 3d ff ff ff       	call   0x458ff0
  4590b3:	83 c4 0c             	add    esp,0xc
  4590b6:	5d                   	pop    ebp
  4590b7:	c2 08 00             	ret    0x8

; === RNG SOUS-JACENT 0x458FF0–0x45909F ===
  458ff0:	55                   	push   ebp
  458ff1:	8b ec                	mov    ebp,esp
  458ff3:	53                   	push   ebx
  458ff4:	56                   	push   esi
  458ff5:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  458ff8:	57                   	push   edi
  458ff9:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  458ffc:	a1 dc 4c 51 00       	mov    eax,ds:0x514cdc
  459001:	8b 0d d8 4c 51 00    	mov    ecx,DWORD PTR ds:0x514cd8
  459007:	6a 00                	push   0x0
  459009:	68 41 d4 3d 2b       	push   0x2b3dd441
  45900e:	50                   	push   eax
  45900f:	51                   	push   ecx
  459010:	e8 4b 8f 07 00       	call   0x4d1f60
  459015:	83 c0 01             	add    eax,0x1
  459018:	83 d2 00             	adc    edx,0x0
  45901b:	3b f7                	cmp    esi,edi
  45901d:	8b d8                	mov    ebx,eax
  45901f:	89 1d d8 4c 51 00    	mov    DWORD PTR ds:0x514cd8,ebx
  459025:	89 15 dc 4c 51 00    	mov    DWORD PTR ds:0x514cdc,edx
  45902b:	7e 0b                	jle    0x459038
  45902d:	8b c7                	mov    eax,edi
  45902f:	8b fe                	mov    edi,esi
  459031:	8b f0                	mov    esi,eax
  459033:	89 7d 0c             	mov    DWORD PTR [ebp+0xc],edi
  459036:	3b f7                	cmp    esi,edi
  459038:	74 57                	je     0x459091
  45903a:	8b c7                	mov    eax,edi
  45903c:	2b c6                	sub    eax,esi
  45903e:	99                   	cdq
  45903f:	8b f8                	mov    edi,eax
  459041:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  459044:	8b fa                	mov    edi,edx
  459046:	8b 15 dc 4c 51 00    	mov    edx,DWORD PTR ds:0x514cdc
  45904c:	b9 10 00 00 00       	mov    ecx,0x10
  459051:	8b c3                	mov    eax,ebx
  459053:	e8 f8 8f 07 00       	call   0x4d2050
  459058:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  45905b:	57                   	push   edi
  45905c:	51                   	push   ecx
  45905d:	52                   	push   edx
  45905e:	50                   	push   eax
  45905f:	e8 6c 8f 07 00       	call   0x4d1fd0
  459064:	8b 0d e0 4c 51 00    	mov    ecx,DWORD PTR ds:0x514ce0
  45906a:	03 c6                	add    eax,esi
  45906c:	3b c8                	cmp    ecx,eax
  45906e:	75 16                	jne    0x459086
  459070:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  459073:	85 c9                	test   ecx,ecx
  459075:	75 0f                	jne    0x459086
  459077:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  45907a:	c7 45 10 01 00 00 00 	mov    DWORD PTR [ebp+0x10],0x1
  459081:	e9 76 ff ff ff       	jmp    0x458ffc
  459086:	5f                   	pop    edi
  459087:	5e                   	pop    esi
  459088:	a3 e0 4c 51 00       	mov    ds:0x514ce0,eax
  45908d:	99                   	cdq
  45908e:	5b                   	pop    ebx
  45908f:	5d                   	pop    ebp
  459090:	c3                   	ret
  459091:	5f                   	pop    edi
  459092:	8b c6                	mov    eax,esi
  459094:	89 35 e0 4c 51 00    	mov    DWORD PTR ds:0x514ce0,esi
  45909a:	5e                   	pop    esi
  45909b:	99                   	cdq
  45909c:	5b                   	pop    ebx
  45909d:	5d                   	pop    ebp
  45909e:	c3                   	ret

; === DOMMAGES NATURELS 0x4386A0–0x43876F ===
  4386a0:	55                   	push   ebp
  4386a1:	8b ec                	mov    ebp,esp
  4386a3:	56                   	push   esi
  4386a4:	57                   	push   edi
  4386a5:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  4386a8:	8b cf                	mov    ecx,edi
  4386aa:	33 f6                	xor    esi,esi
  4386ac:	e8 bf 2f 05 00       	call   0x48b670
  4386b1:	3c 01                	cmp    al,0x1
  4386b3:	75 7b                	jne    0x438730
  4386b5:	8b cf                	mov    ecx,edi
  4386b7:	e8 64 8f fe ff       	call   0x421620
  4386bc:	84 c0                	test   al,al
  4386be:	74 70                	je     0x438730
  4386c0:	8b cf                	mov    ecx,edi
  4386c2:	e8 89 5a 05 00       	call   0x48e150
  4386c7:	66 3d 14 00          	cmp    ax,0x14
  4386cb:	72 28                	jb     0x4386f5
  4386cd:	8b cf                	mov    ecx,edi
  4386cf:	e8 7c 5a 05 00       	call   0x48e150
  4386d4:	33 c9                	xor    ecx,ecx
  4386d6:	66 8b c8             	mov    cx,ax
  4386d9:	b8 67 66 66 66       	mov    eax,0x66666667
  4386de:	81 e1 ff ff 00 00    	and    ecx,0xffff
  4386e4:	83 e9 14             	sub    ecx,0x14
  4386e7:	f7 e9                	imul   ecx
  4386e9:	c1 fa 03             	sar    edx,0x3
  4386ec:	8b c2                	mov    eax,edx
  4386ee:	c1 e8 1f             	shr    eax,0x1f
  4386f1:	03 d0                	add    edx,eax
  4386f3:	8b f2                	mov    esi,edx
  4386f5:	8b cf                	mov    ecx,edi
  4386f7:	e8 b4 5a 05 00       	call   0x48e1b0
  4386fc:	66 3d 14 00          	cmp    ax,0x14
  438700:	72 68                	jb     0x43876a
  438702:	8b cf                	mov    ecx,edi
  438704:	e8 a7 5a 05 00       	call   0x48e1b0
  438709:	33 c9                	xor    ecx,ecx
  43870b:	66 8b c8             	mov    cx,ax
  43870e:	b8 67 66 66 66       	mov    eax,0x66666667
  438713:	5f                   	pop    edi
  438714:	81 e1 ff ff 00 00    	and    ecx,0xffff
  43871a:	83 e9 14             	sub    ecx,0x14
  43871d:	f7 e9                	imul   ecx
  43871f:	c1 fa 02             	sar    edx,0x2
  438722:	8b ca                	mov    ecx,edx
  438724:	c1 e9 1f             	shr    ecx,0x1f
  438727:	03 d1                	add    edx,ecx
  438729:	03 f2                	add    esi,edx
  43872b:	8b c6                	mov    eax,esi
  43872d:	5e                   	pop    esi
  43872e:	5d                   	pop    ebp
  43872f:	c3                   	ret
  438730:	8b cf                	mov    ecx,edi
  438732:	e8 19 5a 05 00       	call   0x48e150
  438737:	66 3d 14 00          	cmp    ax,0x14
  43873b:	72 2d                	jb     0x43876a
  43873d:	8b cf                	mov    ecx,edi
  43873f:	e8 0c 5a 05 00       	call   0x48e150
  438744:	33 c9                	xor    ecx,ecx
  438746:	66 8b c8             	mov    cx,ax
  438749:	b8 67 66 66 66       	mov    eax,0x66666667
  43874e:	81 e1 ff ff 00 00    	and    ecx,0xffff
  438754:	83 e9 14             	sub    ecx,0x14
  438757:	f7 e9                	imul   ecx
  438759:	d1 fa                	sar    edx,1
  43875b:	8b c2                	mov    eax,edx
  43875d:	c1 e8 1f             	shr    eax,0x1f
  438760:	03 d0                	add    edx,eax
  438762:	33 c9                	xor    ecx,ecx
  438764:	3b ca                	cmp    ecx,edx
  438766:	1b f6                	sbb    esi,esi
  438768:	23 f2                	and    esi,edx
  43876a:	5f                   	pop    edi
  43876b:	8b c6                	mov    eax,esi
  43876d:	5e                   	pop    esi
  43876e:	5d                   	pop    ebp

; === APPEL DE DOMMAGES DANS CHARACTER.ATTACK 0x41AF00–0x41AF85 ===
  41af00:	55                   	push   ebp
  41af01:	8b ec                	mov    ebp,esp
  41af03:	83 ec 0c             	sub    esp,0xc
  41af06:	53                   	push   ebx
  41af07:	56                   	push   esi
  41af08:	57                   	push   edi
  41af09:	8b f1                	mov    esi,ecx
  41af0b:	e8 70 4d 00 00       	call   0x41fc80
  41af10:	8b 06                	mov    eax,DWORD PTR [esi]
  41af12:	68 f4 01 00 00       	push   0x1f4
  41af17:	6a 00                	push   0x0
  41af19:	68 f4 01 00 00       	push   0x1f4
  41af1e:	8b ce                	mov    ecx,esi
  41af20:	ff 50 78             	call   DWORD PTR [eax+0x78]
  41af23:	56                   	push   esi
  41af24:	e8 77 d7 01 00       	call   0x4386a0
  41af29:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  41af2c:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  41af2f:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
  41af36:	df 6d f4             	fild   QWORD PTR [ebp-0xc]
  41af39:	83 c4 04             	add    esp,0x4
  41af3c:	8b ce                	mov    ecx,esi
  41af3e:	dc 07                	fadd   QWORD PTR [edi]
  41af40:	dd 1f                	fstp   QWORD PTR [edi]
  41af42:	e8 a9 32 07 00       	call   0x48e1f0
  41af47:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  41af4a:	8b cb                	mov    ecx,ebx
  41af4c:	25 ff ff 00 00       	and    eax,0xffff
  41af51:	89 47 18             	mov    DWORD PTR [edi+0x18],eax
  41af54:	e8 57 32 07 00       	call   0x48e1b0
  41af59:	8b ce                	mov    ecx,esi
  41af5b:	25 ff ff 00 00       	and    eax,0xffff
  41af60:	50                   	push   eax
  41af61:	e8 4a 32 07 00       	call   0x48e1b0
  41af66:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  41af69:	8b 57 18             	mov    edx,DWORD PTR [edi+0x18]
  41af6c:	25 ff ff 00 00       	and    eax,0xffff
  41af71:	50                   	push   eax
  41af72:	51                   	push   ecx
  41af73:	52                   	push   edx
  41af74:	e8 a7 d6 01 00       	call   0x438620
  41af79:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
  41af7c:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  41af82:	83 c4 10             	add    esp,0x10

; === TFCMAIN.ATTACK: HIT/MISS 0x472540–0x4726BC ===
  472540:	33 c0                	xor    eax,eax
  472542:	b9 08 00 00 00       	mov    ecx,0x8
  472547:	8d 7d d4             	lea    edi,[ebp-0x2c]
  47254a:	f3 ab                	rep stos DWORD PTR es:[edi],eax
  47254c:	8b cb                	mov    ecx,ebx
  47254e:	e8 bd bc 01 00       	call   0x48e210
  472553:	25 ff ff 00 00       	and    eax,0xffff
  472558:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  47255b:	7f 08                	jg     0x472565
  47255d:	b8 01 00 00 00       	mov    eax,0x1
  472562:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  472565:	53                   	push   ebx
  472566:	8d 4d d4             	lea    ecx,[ebp-0x2c]
  472569:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  47256c:	8b 06                	mov    eax,DWORD PTR [esi]
  47256e:	51                   	push   ecx
  47256f:	8b ce                	mov    ecx,esi
  472571:	ff 50 34             	call   DWORD PTR [eax+0x34]
  472574:	dd 45 d4             	fld    QWORD PTR [ebp-0x2c]
  472577:	dd 55 dc             	fst    QWORD PTR [ebp-0x24]
  47257a:	8b ce                	mov    ecx,esi
  47257c:	dd 5d c0             	fstp   QWORD PTR [ebp-0x40]
  47257f:	e8 6c bc 01 00       	call   0x48e1f0
  472584:	33 ff                	xor    edi,edi
  472586:	66 8b f8             	mov    di,ax
  472589:	81 e7 ff ff 00 00    	and    edi,0xffff
  47258f:	77 05                	ja     0x472596
  472591:	bf 01 00 00 00       	mov    edi,0x1
  472596:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  472599:	85 c0                	test   eax,eax
  47259b:	75 03                	jne    0x4725a0
  47259d:	89 7d ec             	mov    DWORD PTR [ebp-0x14],edi
  4725a0:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  4725a3:	85 c0                	test   eax,eax
  4725a5:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4725ac:	75 2a                	jne    0x4725d8
  4725ae:	8b cb                	mov    ecx,ebx
  4725b0:	e8 fb bb 01 00       	call   0x48e1b0
  4725b5:	8b ce                	mov    ecx,esi
  4725b7:	25 ff ff 00 00       	and    eax,0xffff
  4725bc:	50                   	push   eax
  4725bd:	e8 ee bb 01 00       	call   0x48e1b0
  4725c2:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4725c5:	25 ff ff 00 00       	and    eax,0xffff
  4725ca:	50                   	push   eax
  4725cb:	52                   	push   edx
  4725cc:	57                   	push   edi
  4725cd:	e8 4e 60 fc ff       	call   0x438620
  4725d2:	83 c4 10             	add    esp,0x10
  4725d5:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  4725d8:	8b 03                	mov    eax,DWORD PTR [ebx]
  4725da:	8b cb                	mov    ecx,ebx
  4725dc:	ff 90 84 01 00 00    	call   DWORD PTR [eax+0x184]
  4725e2:	85 c0                	test   eax,eax
  4725e4:	74 22                	je     0x472608
  4725e6:	8b cb                	mov    ecx,ebx
  4725e8:	e8 83 90 01 00       	call   0x48b670
  4725ed:	3c 02                	cmp    al,0x2
  4725ef:	75 17                	jne    0x472608
  4725f1:	8b 13                	mov    edx,DWORD PTR [ebx]
  4725f3:	6a 01                	push   0x1
  4725f5:	8b cb                	mov    ecx,ebx
  4725f7:	ff 92 80 00 00 00    	call   DWORD PTR [edx+0x80]
  4725fd:	8b 03                	mov    eax,DWORD PTR [ebx]
  4725ff:	56                   	push   esi
  472600:	8b cb                	mov    ecx,ebx
  472602:	ff 90 ac 00 00 00    	call   DWORD PTR [eax+0xac]
  472608:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  47260b:	85 c0                	test   eax,eax
  47260d:	0f 8f a9 00 00 00    	jg     0x4726bc
  472613:	8b 13                	mov    edx,DWORD PTR [ebx]
  472615:	6a 00                	push   0x0
  472617:	68 31 4e 00 00       	push   0x4e31
  47261c:	8b cb                	mov    ecx,ebx
  47261e:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  472621:	85 c0                	test   eax,eax
  472623:	0f 85 93 00 00 00    	jne    0x4726bc
  472629:	8b 06                	mov    eax,DWORD PTR [esi]
  47262b:	8b ce                	mov    ecx,esi
  47262d:	ff 90 d0 01 00 00    	call   DWORD PTR [eax+0x1d0]
  472633:	8b 13                	mov    edx,DWORD PTR [ebx]
  472635:	50                   	push   eax
  472636:	8d 85 74 ff ff ff    	lea    eax,[ebp-0x8c]
  47263c:	50                   	push   eax
  47263d:	8b cb                	mov    ecx,ebx
  47263f:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  472642:	8b 10                	mov    edx,DWORD PTR [eax]
  472644:	83 ec 0c             	sub    esp,0xc
  472647:	8b cc                	mov    ecx,esp
  472649:	89 11                	mov    DWORD PTR [ecx],edx
  47264b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  47264e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  472651:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  472654:	8b 16                	mov    edx,DWORD PTR [esi]
  472656:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  472659:	8d 85 5c ff ff ff    	lea    eax,[ebp-0xa4]
  47265f:	50                   	push   eax
  472660:	8b ce                	mov    ecx,esi
  472662:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  472665:	8b 10                	mov    edx,DWORD PTR [eax]
  472667:	83 ec 0c             	sub    esp,0xc
  47266a:	8b cc                	mov    ecx,esp
  47266c:	89 11                	mov    DWORD PTR [ecx],edx
  47266e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  472671:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  472674:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  472677:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  47267a:	8b cb                	mov    ecx,ebx
  47267c:	e8 7f 90 01 00       	call   0x48b700
  472681:	50                   	push   eax
  472682:	8b ce                	mov    ecx,esi
  472684:	e8 77 90 01 00       	call   0x48b700
  472689:	8b 16                	mov    edx,DWORD PTR [esi]
  47268b:	50                   	push   eax
  47268c:	6a 14                	push   0x14
  47268e:	8d 85 68 ff ff ff    	lea    eax,[ebp-0x98]
  472694:	50                   	push   eax
  472695:	8b ce                	mov    ecx,esi
  472697:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  47269a:	8b 10                	mov    edx,DWORD PTR [eax]
  47269c:	83 ec 0c             	sub    esp,0xc
  47269f:	8b cc                	mov    ecx,esp
  4726a1:	89 11                	mov    DWORD PTR [ecx],edx
  4726a3:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4726a6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4726a9:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4726ac:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4726af:	e8 dc d6 f9 ff       	call   0x40fd90
  4726b4:	83 c4 34             	add    esp,0x34
  4726b7:	e9 23 04 00 00       	jmp    0x472adf

; === CREATURES.DEATH PRÉAMBULE 0x4324B0–0x4325C8 ===
  4324b0:	55                   	push   ebp
  4324b1:	8b ec                	mov    ebp,esp
  4324b3:	6a ff                	push   0xffffffff
  4324b5:	68 b3 51 4d 00       	push   0x4d51b3
  4324ba:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4324c0:	50                   	push   eax
  4324c1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4324c8:	83 ec 78             	sub    esp,0x78
  4324cb:	53                   	push   ebx
  4324cc:	56                   	push   esi
  4324cd:	57                   	push   edi
  4324ce:	33 db                	xor    ebx,ebx
  4324d0:	8b f1                	mov    esi,ecx
  4324d2:	8b 06                	mov    eax,DWORD PTR [esi]
  4324d4:	53                   	push   ebx
  4324d5:	53                   	push   ebx
  4324d6:	ff 90 dc 00 00 00    	call   DWORD PTR [eax+0xdc]
  4324dc:	8a 86 b0 00 00 00    	mov    al,BYTE PTR [esi+0xb0]
  4324e2:	84 c0                	test   al,al
  4324e4:	0f 85 db 03 00 00    	jne    0x4328c5
  4324ea:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  4324ed:	3b fb                	cmp    edi,ebx
  4324ef:	c6 86 b0 00 00 00 01 	mov    BYTE PTR [esi+0xb0],0x1
  4324f6:	74 21                	je     0x432519
  4324f8:	8b 17                	mov    edx,DWORD PTR [edi]
  4324fa:	6a 03                	push   0x3
  4324fc:	8b cf                	mov    ecx,edi
  4324fe:	ff 92 80 00 00 00    	call   DWORD PTR [edx+0x80]
  432504:	8b 1f                	mov    ebx,DWORD PTR [edi]
  432506:	8b cf                	mov    ecx,edi
  432508:	ff 93 14 01 00 00    	call   DWORD PTR [ebx+0x114]
  43250e:	50                   	push   eax
  43250f:	8b cf                	mov    ecx,edi
  432511:	ff 93 ac 00 00 00    	call   DWORD PTR [ebx+0xac]
  432517:	33 db                	xor    ebx,ebx
  432519:	8d 45 84             	lea    eax,[ebp-0x7c]
  43251c:	50                   	push   eax
  43251d:	c7 85 7c ff ff ff 8c 	mov    DWORD PTR [ebp-0x84],0x4de58c
  432524:	e5 4d 00 
  432527:	c7 45 80 ff ff ff ff 	mov    DWORD PTR [ebp-0x80],0xffffffff
  43252e:	ff 15 dc e0 4d 00    	call   DWORD PTR ds:0x4de0dc
  432534:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
  432537:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
  43253a:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
  43253d:	89 5d ac             	mov    DWORD PTR [ebp-0x54],ebx
  432540:	c7 85 7c ff ff ff 6c 	mov    DWORD PTR [ebp-0x84],0x4de66c
  432547:	e6 4d 00 
  43254a:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
  43254d:	c6 45 b0 08          	mov    BYTE PTR [ebp-0x50],0x8
  432551:	89 5d b4             	mov    DWORD PTR [ebp-0x4c],ebx
  432554:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  432557:	8b 16                	mov    edx,DWORD PTR [esi]
  432559:	8d 85 7c ff ff ff    	lea    eax,[ebp-0x84]
  43255f:	50                   	push   eax
  432560:	51                   	push   ecx
  432561:	57                   	push   edi
  432562:	53                   	push   ebx
  432563:	56                   	push   esi
  432564:	6a 0d                	push   0xd
  432566:	8b ce                	mov    ecx,esi
  432568:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  43256b:	ff 52 24             	call   DWORD PTR [edx+0x24]
  43256e:	8b 16                	mov    edx,DWORD PTR [esi]
  432570:	8d 45 e4             	lea    eax,[ebp-0x1c]
  432573:	50                   	push   eax
  432574:	8b ce                	mov    ecx,esi
  432576:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  432579:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  43257c:	51                   	push   ecx
  43257d:	e8 3e f9 03 00       	call   0x471ec0
  432582:	8b f8                	mov    edi,eax
  432584:	83 c4 04             	add    esp,0x4
  432587:	3b fb                	cmp    edi,ebx
  432589:	89 7d 08             	mov    DWORD PTR [ebp+0x8],edi
  43258c:	0f 84 18 02 00 00    	je     0x4327aa
  432592:	8b ce                	mov    ecx,esi
  432594:	e8 67 91 05 00       	call   0x48b700
  432599:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  43259c:	50                   	push   eax
  43259d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  4325a0:	83 ec 0c             	sub    esp,0xc
  4325a3:	8b d4                	mov    edx,esp
  4325a5:	89 02                	mov    DWORD PTR [edx],eax
  4325a7:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  4325aa:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  4325ad:	8b cf                	mov    ecx,edi
  4325af:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4325b2:	e8 d9 ea 07 00       	call   0x4b1090
  4325b7:	56                   	push   esi
  4325b8:	68 58 2e 50 00       	push   0x502e58
  4325bd:	68 00 04 00 00       	push   0x400
  4325c2:	e8 79 f7 03 00       	call   0x471d40
  4325c7:	83 c4 0c             	add    esp,0xc

; === CREATURES.DEATH PLACEMENT 0x432610–0x432789 ===
  432610:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  432613:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  432616:	8b c1                	mov    eax,ecx
  432618:	41                   	inc    ecx
  432619:	83 f8 07             	cmp    eax,0x7
  43261c:	89 4d 0c             	mov    DWORD PTR [ebp+0xc],ecx
  43261f:	0f 87 ae 00 00 00    	ja     0x4326d3
  432625:	ff 24 85 d8 28 43 00 	jmp    DWORD PTR [eax*4+0x4328d8]
  43262c:	6a 02                	push   0x2
  43262e:	6a 01                	push   0x1
  432630:	b9 34 5e 51 00       	mov    ecx,0x515e34
  432635:	e8 66 6a 02 00       	call   0x4590a0
  43263a:	8b f0                	mov    esi,eax
  43263c:	03 75 e4             	add    esi,DWORD PTR [ebp-0x1c]
  43263f:	e9 8f 00 00 00       	jmp    0x4326d3
  432644:	6a 02                	push   0x2
  432646:	6a 01                	push   0x1
  432648:	b9 34 5e 51 00       	mov    ecx,0x515e34
  43264d:	e8 4e 6a 02 00       	call   0x4590a0
  432652:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  432655:	2b f0                	sub    esi,eax
  432657:	eb 7a                	jmp    0x4326d3
  432659:	6a 02                	push   0x2
  43265b:	6a 01                	push   0x1
  43265d:	b9 34 5e 51 00       	mov    ecx,0x515e34
  432662:	e8 39 6a 02 00       	call   0x4590a0
  432667:	8b 7d e4             	mov    edi,DWORD PTR [ebp-0x1c]
  43266a:	8b f0                	mov    esi,eax
  43266c:	03 f7                	add    esi,edi
  43266e:	eb 28                	jmp    0x432698
  432670:	6a 02                	push   0x2
  432672:	6a 01                	push   0x1
  432674:	b9 34 5e 51 00       	mov    ecx,0x515e34
  432679:	e8 22 6a 02 00       	call   0x4590a0
  43267e:	8b f0                	mov    esi,eax
  432680:	03 75 e4             	add    esi,DWORD PTR [ebp-0x1c]
  432683:	eb 3b                	jmp    0x4326c0
  432685:	6a 02                	push   0x2
  432687:	6a 01                	push   0x1
  432689:	b9 34 5e 51 00       	mov    ecx,0x515e34
  43268e:	e8 0d 6a 02 00       	call   0x4590a0
  432693:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  432696:	2b f0                	sub    esi,eax
  432698:	6a 02                	push   0x2
  43269a:	6a 01                	push   0x1
  43269c:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4326a1:	e8 fa 69 02 00       	call   0x4590a0
  4326a6:	8b f8                	mov    edi,eax
  4326a8:	03 7d e8             	add    edi,DWORD PTR [ebp-0x18]
  4326ab:	eb 26                	jmp    0x4326d3
  4326ad:	6a 02                	push   0x2
  4326af:	6a 01                	push   0x1
  4326b1:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4326b6:	e8 e5 69 02 00       	call   0x4590a0
  4326bb:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
  4326be:	2b f0                	sub    esi,eax
  4326c0:	6a 02                	push   0x2
  4326c2:	6a 01                	push   0x1
  4326c4:	b9 34 5e 51 00       	mov    ecx,0x515e34
  4326c9:	e8 d2 69 02 00       	call   0x4590a0
  4326ce:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
  4326d1:	2b f8                	sub    edi,eax
  4326d3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4326d6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4326d9:	33 d2                	xor    edx,edx
  4326db:	83 f8 07             	cmp    eax,0x7
  4326de:	0f 9f c2             	setg   dl
  4326e1:	6a 00                	push   0x0
  4326e3:	6a 00                	push   0x0
  4326e5:	6a 00                	push   0x0
  4326e7:	83 ec 0c             	sub    esp,0xc
  4326ea:	4a                   	dec    edx
  4326eb:	23 d0                	and    edx,eax
  4326ed:	8b c4                	mov    eax,esp
  4326ef:	89 30                	mov    DWORD PTR [eax],esi
  4326f1:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  4326f4:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
  4326f7:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  4326fa:	e8 51 cb 07 00       	call   0x4af250
  4326ff:	85 c0                	test   eax,eax
  432701:	74 23                	je     0x432726
  432703:	6a 02                	push   0x2
  432705:	83 ec 0c             	sub    esp,0xc
  432708:	8b cc                	mov    ecx,esp
  43270a:	89 31                	mov    DWORD PTR [ecx],esi
  43270c:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  43270f:	8d 55 d8             	lea    edx,[ebp-0x28]
  432712:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
  432715:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  432718:	52                   	push   edx
  432719:	e8 82 fa 07 00       	call   0x4b21a0
  43271e:	8b 30                	mov    esi,DWORD PTR [eax]
  432720:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  432723:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
  432726:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  432729:	33 c0                	xor    eax,eax
  43272b:	66 8b 41 2c          	mov    ax,WORD PTR [ecx+0x2c]
  43272f:	3b f0                	cmp    esi,eax
  432731:	7d 49                	jge    0x43277c
  432733:	33 d2                	xor    edx,edx
  432735:	66 8b 51 2e          	mov    dx,WORD PTR [ecx+0x2e]
  432739:	3b fa                	cmp    edi,edx
  43273b:	7d 3f                	jge    0x43277c
  43273d:	85 f6                	test   esi,esi
  43273f:	7c 3b                	jl     0x43277c
  432741:	85 ff                	test   edi,edi
  432743:	7c 37                	jl     0x43277c
  432745:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  432748:	50                   	push   eax
  432749:	83 ec 0c             	sub    esp,0xc
  43274c:	8b d4                	mov    edx,esp
  43274e:	89 32                	mov    DWORD PTR [edx],esi
  432750:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
  432753:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
  432756:	e8 b5 c9 07 00       	call   0x4af110
  43275b:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  43275e:	6a 01                	push   0x1
  432760:	83 ec 0c             	sub    esp,0xc
  432763:	8b c4                	mov    eax,esp
  432765:	89 30                	mov    DWORD PTR [eax],esi
  432767:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  43276a:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  43276d:	e8 6e d0 05 00       	call   0x48f7e0
  432772:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]
  432775:	33 db                	xor    ebx,ebx
  432777:	e9 6a fe ff ff       	jmp    0x4325e6
  43277c:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  43277f:	8b 11                	mov    edx,DWORD PTR [ecx]
  432781:	ff 92 c4 01 00 00    	call   DWORD PTR [edx+0x1c4]
  432787:	8b 45 9c             	mov    eax,DWORD PTR [ebp-0x64]

