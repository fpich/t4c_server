; PASSE 44 — PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Extraits analyses : adresses et bytes verifies statiquement sur T4C Server(1).exe
; Avertissement : preuves d octets x86, pas un test dynamique.

; Unit::DealExhaust : trois parametres et Get/SetExhaust virtuels : de 0x0048f6a0 a 0x0048f7cf
  48f6a0:	55                   	push   ebp
  48f6a1:	8b ec                	mov    ebp,esp
  48f6a3:	83 ec 10             	sub    esp,0x10
  48f6a6:	56                   	push   esi
  48f6a7:	57                   	push   edi
  48f6a8:	8b f9                	mov    edi,ecx
  48f6aa:	8b 07                	mov    eax,DWORD PTR [edi]
  48f6ac:	8d 4d f0             	lea    ecx,[ebp-0x10]
  48f6af:	51                   	push   ecx
  48f6b0:	8b cf                	mov    ecx,edi
  48f6b2:	ff 50 70             	call   DWORD PTR [eax+0x70]
  48f6b5:	e8 d6 2b fe ff       	call   0x472290
  48f6ba:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
  48f6bd:	73 1d                	jae    0x48f6dc
  48f6bf:	e8 cc 2b fe ff       	call   0x472290
  48f6c4:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  48f6c7:	8b c8                	mov    ecx,eax
  48f6c9:	03 d2                	add    edx,edx
  48f6cb:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  48f6d0:	f7 e2                	mul    edx
  48f6d2:	c1 ea 05             	shr    edx,0x5
  48f6d5:	03 ca                	add    ecx,edx
  48f6d7:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  48f6da:	eb 2a                	jmp    0x48f706
  48f6dc:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  48f6df:	8d 0c 00             	lea    ecx,[eax+eax*1]
  48f6e2:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  48f6e7:	f7 e1                	mul    ecx
  48f6e9:	8b f2                	mov    esi,edx
  48f6eb:	c1 ee 05             	shr    esi,0x5
  48f6ee:	e8 9d 2b fe ff       	call   0x472290
  48f6f3:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
  48f6f6:	2b d0                	sub    edx,eax
  48f6f8:	3b d6                	cmp    edx,esi
  48f6fa:	73 0a                	jae    0x48f706
  48f6fc:	e8 8f 2b fe ff       	call   0x472290
  48f701:	03 c6                	add    eax,esi
  48f703:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  48f706:	e8 85 2b fe ff       	call   0x472290
  48f70b:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
  48f70e:	73 1d                	jae    0x48f72d
  48f710:	e8 7b 2b fe ff       	call   0x472290
  48f715:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  48f718:	8b c8                	mov    ecx,eax
  48f71a:	03 d2                	add    edx,edx
  48f71c:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  48f721:	f7 e2                	mul    edx
  48f723:	c1 ea 05             	shr    edx,0x5
  48f726:	03 ca                	add    ecx,edx
  48f728:	89 4d f4             	mov    DWORD PTR [ebp-0xc],ecx
  48f72b:	eb 2a                	jmp    0x48f757
  48f72d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  48f730:	8d 0c 00             	lea    ecx,[eax+eax*1]
  48f733:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  48f738:	f7 e1                	mul    ecx
  48f73a:	8b f2                	mov    esi,edx
  48f73c:	c1 ee 05             	shr    esi,0x5
  48f73f:	e8 4c 2b fe ff       	call   0x472290
  48f744:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
  48f747:	2b d0                	sub    edx,eax
  48f749:	3b d6                	cmp    edx,esi
  48f74b:	73 0a                	jae    0x48f757
  48f74d:	e8 3e 2b fe ff       	call   0x472290
  48f752:	03 c6                	add    eax,esi
  48f754:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
  48f757:	e8 34 2b fe ff       	call   0x472290
  48f75c:	39 45 f0             	cmp    DWORD PTR [ebp-0x10],eax
  48f75f:	73 1b                	jae    0x48f77c
  48f761:	e8 2a 2b fe ff       	call   0x472290
  48f766:	8b c8                	mov    ecx,eax
  48f768:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48f76b:	8d 14 00             	lea    edx,[eax+eax*1]
  48f76e:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  48f773:	f7 e2                	mul    edx
  48f775:	c1 ea 05             	shr    edx,0x5
  48f778:	03 ca                	add    ecx,edx
  48f77a:	eb 2b                	jmp    0x48f7a7
  48f77c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48f77f:	8d 0c 00             	lea    ecx,[eax+eax*1]
  48f782:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  48f787:	f7 e1                	mul    ecx
  48f789:	8b f2                	mov    esi,edx
  48f78b:	c1 ee 05             	shr    esi,0x5
  48f78e:	e8 fd 2a fe ff       	call   0x472290
  48f793:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48f796:	8b d1                	mov    edx,ecx
  48f798:	2b d0                	sub    edx,eax
  48f79a:	3b d6                	cmp    edx,esi
  48f79c:	73 0c                	jae    0x48f7aa
  48f79e:	e8 ed 2a fe ff       	call   0x472290
  48f7a3:	8b c8                	mov    ecx,eax
  48f7a5:	03 ce                	add    ecx,esi
  48f7a7:	89 4d f0             	mov    DWORD PTR [ebp-0x10],ecx
  48f7aa:	8b 07                	mov    eax,DWORD PTR [edi]
  48f7ac:	83 ec 10             	sub    esp,0x10
  48f7af:	8b d4                	mov    edx,esp
  48f7b1:	89 0a                	mov    DWORD PTR [edx],ecx
  48f7b3:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48f7b6:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  48f7b9:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  48f7bc:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  48f7bf:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  48f7c2:	89 4a 0c             	mov    DWORD PTR [edx+0xc],ecx
  48f7c5:	8b cf                	mov    ecx,edi
  48f7c7:	ff 50 74             	call   DWORD PTR [eax+0x74]
  48f7ca:	5f                   	pop    edi
  48f7cb:	5e                   	pop    esi
  48f7cc:	8b e5                	mov    esp,ebp
  48f7ce:	5d                   	pop    ebp
  48f7cf:	c2                   	.byte 0xc2

; Unit::GetExhaust (valeur de base) : de 0x0048b9c0 a 0x0048b9ef
  48b9c0:	55                   	push   ebp
  48b9c1:	8b ec                	mov    ebp,esp
  48b9c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  48b9c6:	53                   	push   ebx
  48b9c7:	56                   	push   esi
  48b9c8:	33 c9                	xor    ecx,ecx
  48b9ca:	8b d8                	mov    ebx,eax
  48b9cc:	89 0b                	mov    DWORD PTR [ebx],ecx
  48b9ce:	33 d2                	xor    edx,edx
  48b9d0:	57                   	push   edi
  48b9d1:	33 f6                	xor    esi,esi
  48b9d3:	89 53 04             	mov    DWORD PTR [ebx+0x4],edx
  48b9d6:	89 73 08             	mov    DWORD PTR [ebx+0x8],esi
  48b9d9:	33 ff                	xor    edi,edi
  48b9db:	89 7b 0c             	mov    DWORD PTR [ebx+0xc],edi
  48b9de:	5f                   	pop    edi
  48b9df:	5e                   	pop    esi
  48b9e0:	5b                   	pop    ebx
  48b9e1:	5d                   	pop    ebp
  48b9e2:	c2 04 00             	ret    0x4
  48b9e5:	90                   	nop
  48b9e6:	90                   	nop
  48b9e7:	90                   	nop
  48b9e8:	90                   	nop
  48b9e9:	90                   	nop
  48b9ea:	90                   	nop
  48b9eb:	90                   	nop
  48b9ec:	90                   	nop
  48b9ed:	90                   	nop
  48b9ee:	90                   	nop
  48b9ef:	90                   	nop

; Unit::SetExhaust (valeur de base) : de 0x0048b9f0 a 0x0048ba24
  48b9f0:	c2 10 00             	ret    0x10
  48b9f3:	90                   	nop
  48b9f4:	90                   	nop
  48b9f5:	90                   	nop
  48b9f6:	90                   	nop
  48b9f7:	90                   	nop
  48b9f8:	90                   	nop
  48b9f9:	90                   	nop
  48b9fa:	90                   	nop
  48b9fb:	90                   	nop
  48b9fc:	90                   	nop
  48b9fd:	90                   	nop
  48b9fe:	90                   	nop
  48b9ff:	90                   	nop
  48ba00:	8a 81 ad 00 00 00    	mov    al,BYTE PTR [ecx+0xad]
  48ba06:	c3                   	ret
  48ba07:	90                   	nop
  48ba08:	90                   	nop
  48ba09:	90                   	nop
  48ba0a:	90                   	nop
  48ba0b:	90                   	nop
  48ba0c:	90                   	nop
  48ba0d:	90                   	nop
  48ba0e:	90                   	nop
  48ba0f:	90                   	nop
  48ba10:	55                   	push   ebp
  48ba11:	8b ec                	mov    ebp,esp
  48ba13:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
  48ba16:	88 81 ad 00 00 00    	mov    BYTE PTR [ecx+0xad],al
  48ba1c:	5d                   	pop    ebp
  48ba1d:	c2 04 00             	ret    0x4
  48ba20:	55                   	push   ebp
  48ba21:	8b ec                	mov    ebp,esp
  48ba23:	8b                   	.byte 0x8b
  48ba24:	45                   	inc    ebp
