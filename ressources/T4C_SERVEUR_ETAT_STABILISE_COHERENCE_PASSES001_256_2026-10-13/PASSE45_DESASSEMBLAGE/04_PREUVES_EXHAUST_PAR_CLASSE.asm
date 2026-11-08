; T4C Server.exe, passe 45, SHA256 : 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Contrat virtuel Get/SetExhaust et stockage dépendant du type dynamique
; Extraits analysés et vérifiés sur le PE : données de couverture, pas une preuve d exécution dynamique.

; Character::GetExhaust et SetExhaust : +0x17c | [0x41dad0, 0x41db22[
  41dad0:	55                   	push   ebp
  41dad1:	8b ec                	mov    ebp,esp
  41dad3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  41dad6:	81 c1 7c 01 00 00    	add    ecx,0x17c
  41dadc:	56                   	push   esi
  41dadd:	8b 31                	mov    esi,DWORD PTR [ecx]
  41dadf:	8b d0                	mov    edx,eax
  41dae1:	89 32                	mov    DWORD PTR [edx],esi
  41dae3:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  41dae6:	89 72 04             	mov    DWORD PTR [edx+0x4],esi
  41dae9:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  41daec:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
  41daef:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  41daf2:	89 4a 0c             	mov    DWORD PTR [edx+0xc],ecx
  41daf5:	5e                   	pop    esi
  41daf6:	5d                   	pop    ebp
  41daf7:	c2 04 00             	ret    0x4
  41dafa:	90                   	nop
  41dafb:	90                   	nop
  41dafc:	90                   	nop
  41dafd:	90                   	nop
  41dafe:	90                   	nop
  41daff:	90                   	nop
  41db00:	55                   	push   ebp
  41db01:	8b ec                	mov    ebp,esp
  41db03:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  41db06:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  41db09:	81 c1 7c 01 00 00    	add    ecx,0x17c
  41db0f:	89 01                	mov    DWORD PTR [ecx],eax
  41db11:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  41db14:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  41db17:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  41db1a:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  41db1d:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  41db20:	5d                   	pop    ebp
  41db21:	c2                   	.byte 0xc2

; Creatures::GetExhaust et SetExhaust : +0x124 | [0x432990, 0x4329e2[
  432990:	55                   	push   ebp
  432991:	8b ec                	mov    ebp,esp
  432993:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  432996:	81 c1 24 01 00 00    	add    ecx,0x124
  43299c:	56                   	push   esi
  43299d:	8b 31                	mov    esi,DWORD PTR [ecx]
  43299f:	8b d0                	mov    edx,eax
  4329a1:	89 32                	mov    DWORD PTR [edx],esi
  4329a3:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  4329a6:	89 72 04             	mov    DWORD PTR [edx+0x4],esi
  4329a9:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  4329ac:	89 72 08             	mov    DWORD PTR [edx+0x8],esi
  4329af:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  4329b2:	89 4a 0c             	mov    DWORD PTR [edx+0xc],ecx
  4329b5:	5e                   	pop    esi
  4329b6:	5d                   	pop    ebp
  4329b7:	c2 04 00             	ret    0x4
  4329ba:	90                   	nop
  4329bb:	90                   	nop
  4329bc:	90                   	nop
  4329bd:	90                   	nop
  4329be:	90                   	nop
  4329bf:	90                   	nop
  4329c0:	55                   	push   ebp
  4329c1:	8b ec                	mov    ebp,esp
  4329c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4329c6:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  4329c9:	81 c1 24 01 00 00    	add    ecx,0x124
  4329cf:	89 01                	mov    DWORD PTR [ecx],eax
  4329d1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4329d4:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4329d7:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4329da:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4329dd:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  4329e0:	5d                   	pop    ebp
  4329e1:	c2                   	.byte 0xc2

; Unit::GetExhaust zero et SetExhaust no-op | [0x48b9c0, 0x48b9f3[
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
  48b9f0:	c2 10 00             	ret    0x10

; Unit::DealExhaust et les trois échéances | [0x48f6a0, 0x48f7d0[
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

; Character::TraceExhaust stub return | [0x412420, 0x412421[
  412420:	c3                   	ret
