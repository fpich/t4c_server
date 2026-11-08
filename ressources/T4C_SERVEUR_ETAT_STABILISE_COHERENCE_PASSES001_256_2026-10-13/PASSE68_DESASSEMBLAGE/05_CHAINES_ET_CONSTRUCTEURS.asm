; Passe 68 - preuves du binaire original ; SHA256=13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; section .text ; VA de base 0x401000 ; seuls les octets concordants sont comptés

; === 0x0045D300 - 0x0045D448 (fin exclue) ===
  0045d300:	55                        	push   ebp
  0045d301:	8b ec                     	mov    ebp,esp
  0045d303:	51                        	push   ecx
  0045d304:	8a 41 14                  	mov    al,BYTE PTR [ecx+0x14]
  0045d307:	53                        	push   ebx
  0045d308:	8b 5d 08                  	mov    ebx,DWORD PTR [ebp+0x8]
  0045d30b:	56                        	push   esi
  0045d30c:	33 d2                     	xor    edx,edx
  0045d30e:	8d 71 14                  	lea    esi,[ecx+0x14]
  0045d311:	88 03                     	mov    BYTE PTR [ebx],al
  0045d313:	89 53 04                  	mov    DWORD PTR [ebx+0x4],edx
  0045d316:	89 53 08                  	mov    DWORD PTR [ebx+0x8],edx
  0045d319:	89 53 0c                  	mov    DWORD PTR [ebx+0xc],edx
  0045d31c:	a1 ec e4 4d 00            	mov    eax,ds:0x4de4ec
  0045d321:	8b 4e 08                  	mov    ecx,DWORD PTR [esi+0x8]
  0045d324:	8b 00                     	mov    eax,DWORD PTR [eax]
  0045d326:	57                        	push   edi
  0045d327:	8b f9                     	mov    edi,ecx
  0045d329:	3b c7                     	cmp    eax,edi
  0045d32b:	89 55 fc                  	mov    DWORD PTR [ebp-0x4],edx
  0045d32e:	89 7d 08                  	mov    DWORD PTR [ebp+0x8],edi
  0045d331:	73 05                     	jae    0x45d338
  0045d333:	89 45 08                  	mov    DWORD PTR [ebp+0x8],eax
  0045d336:	8b f8                     	mov    edi,eax
  0045d338:	3b de                     	cmp    ebx,esi
  0045d33a:	75 73                     	jne    0x45d3af
  0045d33c:	3b fa                     	cmp    edi,edx
  0045d33e:	8b f0                     	mov    esi,eax
  0045d340:	76 0a                     	jbe    0x45d34c
  0045d342:	8b cb                     	mov    ecx,ebx
  0045d344:	ff 15 e8 e4 4d 00         	call   DWORD PTR ds:0x4de4e8
  0045d34a:	33 d2                     	xor    edx,edx
  0045d34c:	8b 43 08                  	mov    eax,DWORD PTR [ebx+0x8]
  0045d34f:	2b c7                     	sub    eax,edi
  0045d351:	3b c6                     	cmp    eax,esi
  0045d353:	73 02                     	jae    0x45d357
  0045d355:	8b f0                     	mov    esi,eax
  0045d357:	3b f2                     	cmp    esi,edx
  0045d359:	0f 86 de 00 00 00         	jbe    0x45d43d
  0045d35f:	8b cb                     	mov    ecx,ebx
  0045d361:	ff 15 e4 e4 4d 00         	call   DWORD PTR ds:0x4de4e4
  0045d367:	8b 53 08                  	mov    edx,DWORD PTR [ebx+0x8]
  0045d36a:	8b 4b 04                  	mov    ecx,DWORD PTR [ebx+0x4]
  0045d36d:	2b d6                     	sub    edx,esi
  0045d36f:	8d 04 0f                  	lea    eax,[edi+ecx*1]
  0045d372:	2b d7                     	sub    edx,edi
  0045d374:	52                        	push   edx
  0045d375:	8d 0c 30                  	lea    ecx,[eax+esi*1]
  0045d378:	51                        	push   ecx
  0045d379:	50                        	push   eax
  0045d37a:	ff 15 7c e3 4d 00         	call   DWORD PTR ds:0x4de37c
  0045d380:	8b 7b 08                  	mov    edi,DWORD PTR [ebx+0x8]
  0045d383:	83 c4 0c                  	add    esp,0xc
  0045d386:	6a 00                     	push   0x0
  0045d388:	2b fe                     	sub    edi,esi
  0045d38a:	57                        	push   edi
  0045d38b:	8b cb                     	mov    ecx,ebx
  0045d38d:	ff 15 e0 e4 4d 00         	call   DWORD PTR ds:0x4de4e0
  0045d393:	84 c0                     	test   al,al
  0045d395:	0f 84 a2 00 00 00         	je     0x45d43d
  0045d39b:	57                        	push   edi
  0045d39c:	8b cb                     	mov    ecx,ebx
  0045d39e:	ff 15 dc e4 4d 00         	call   DWORD PTR ds:0x4de4dc
  0045d3a4:	5f                        	pop    edi
  0045d3a5:	5e                        	pop    esi
  0045d3a6:	8b c3                     	mov    eax,ebx
  0045d3a8:	5b                        	pop    ebx
  0045d3a9:	8b e5                     	mov    esp,ebp
  0045d3ab:	5d                        	pop    ebp
  0045d3ac:	c2 04 00                  	ret    0x4
  0045d3af:	3b fa                     	cmp    edi,edx
  0045d3b1:	76 4e                     	jbe    0x45d401
  0045d3b3:	3b f9                     	cmp    edi,ecx
  0045d3b5:	75 4a                     	jne    0x45d401
  0045d3b7:	8b 46 04                  	mov    eax,DWORD PTR [esi+0x4]
  0045d3ba:	3b c2                     	cmp    eax,edx
  0045d3bc:	75 05                     	jne    0x45d3c3
  0045d3be:	a1 d8 e4 4d 00            	mov    eax,ds:0x4de4d8
  0045d3c3:	80 78 ff fe               	cmp    BYTE PTR [eax-0x1],0xfe
  0045d3c7:	73 38                     	jae    0x45d401
  0045d3c9:	6a 01                     	push   0x1
  0045d3cb:	8b cb                     	mov    ecx,ebx
  0045d3cd:	ff 15 14 e5 4d 00         	call   DWORD PTR ds:0x4de514
  0045d3d3:	8b 46 04                  	mov    eax,DWORD PTR [esi+0x4]
  0045d3d6:	85 c0                     	test   eax,eax
  0045d3d8:	75 05                     	jne    0x45d3df
  0045d3da:	a1 d8 e4 4d 00            	mov    eax,ds:0x4de4d8
  0045d3df:	89 43 04                  	mov    DWORD PTR [ebx+0x4],eax
  0045d3e2:	8b 56 08                  	mov    edx,DWORD PTR [esi+0x8]
  0045d3e5:	89 53 08                  	mov    DWORD PTR [ebx+0x8],edx
  0045d3e8:	8b 4e 0c                  	mov    ecx,DWORD PTR [esi+0xc]
  0045d3eb:	89 4b 0c                  	mov    DWORD PTR [ebx+0xc],ecx
  0045d3ee:	8a 48 ff                  	mov    cl,BYTE PTR [eax-0x1]
  0045d3f1:	5f                        	pop    edi
  0045d3f2:	fe c1                     	inc    cl
  0045d3f4:	88 48 ff                  	mov    BYTE PTR [eax-0x1],cl
  0045d3f7:	5e                        	pop    esi
  0045d3f8:	8b c3                     	mov    eax,ebx
  0045d3fa:	5b                        	pop    ebx
  0045d3fb:	8b e5                     	mov    esp,ebp
  0045d3fd:	5d                        	pop    ebp
  0045d3fe:	c2 04 00                  	ret    0x4
  0045d401:	6a 01                     	push   0x1
  0045d403:	57                        	push   edi
  0045d404:	8b cb                     	mov    ecx,ebx
  0045d406:	ff 15 e0 e4 4d 00         	call   DWORD PTR ds:0x4de4e0
  0045d40c:	84 c0                     	test   al,al
  0045d40e:	74 2d                     	je     0x45d43d
  0045d410:	8b 76 04                  	mov    esi,DWORD PTR [esi+0x4]
  0045d413:	85 f6                     	test   esi,esi
  0045d415:	75 06                     	jne    0x45d41d
  0045d417:	8b 35 d8 e4 4d 00         	mov    esi,DWORD PTR ds:0x4de4d8
  0045d41d:	8b 45 08                  	mov    eax,DWORD PTR [ebp+0x8]
  0045d420:	8b cf                     	mov    ecx,edi
  0045d422:	8b 7b 04                  	mov    edi,DWORD PTR [ebx+0x4]
  0045d425:	8b d1                     	mov    edx,ecx
  0045d427:	c1 e9 02                  	shr    ecx,0x2
  0045d42a:	f3 a5                     	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  0045d42c:	8b ca                     	mov    ecx,edx
  0045d42e:	83 e1 03                  	and    ecx,0x3
  0045d431:	f3 a4                     	rep movs BYTE PTR es:[edi],BYTE PTR ds:[esi]
  0045d433:	8b 4b 04                  	mov    ecx,DWORD PTR [ebx+0x4]
  0045d436:	89 43 08                  	mov    DWORD PTR [ebx+0x8],eax
  0045d439:	c6 04 08 00               	mov    BYTE PTR [eax+ecx*1],0x0
  0045d43d:	5f                        	pop    edi
  0045d43e:	5e                        	pop    esi
  0045d43f:	8b c3                     	mov    eax,ebx
  0045d441:	5b                        	pop    ebx
  0045d442:	8b e5                     	mov    esp,ebp
  0045d444:	5d                        	pop    ebp
  0045d445:	c2 04 00                  	ret    0x4

; === 0x0045E4D0 - 0x0045E4FD (fin exclue) ===
  0045e4d0:	55                        	push   ebp
  0045e4d1:	8b ec                     	mov    ebp,esp
  0045e4d3:	6a 0c                     	push   0xc
  0045e4d5:	e8 16 3b fe ff            	call   0x441ff0
  0045e4da:	8b 4d 08                  	mov    ecx,DWORD PTR [ebp+0x8]
  0045e4dd:	83 c4 04                  	add    esp,0x4
  0045e4e0:	85 c9                     	test   ecx,ecx
  0045e4e2:	75 02                     	jne    0x45e4e6
  0045e4e4:	8b c8                     	mov    ecx,eax
  0045e4e6:	89 08                     	mov    DWORD PTR [eax],ecx
  0045e4e8:	8b 4d 0c                  	mov    ecx,DWORD PTR [ebp+0xc]
  0045e4eb:	85 c9                     	test   ecx,ecx
  0045e4ed:	74 07                     	je     0x45e4f6
  0045e4ef:	89 48 04                  	mov    DWORD PTR [eax+0x4],ecx
  0045e4f2:	5d                        	pop    ebp
  0045e4f3:	c2 08 00                  	ret    0x8
  0045e4f6:	89 40 04                  	mov    DWORD PTR [eax+0x4],eax
  0045e4f9:	5d                        	pop    ebp
  0045e4fa:	c2 08 00                  	ret    0x8

; === 0x0045E8A0 - 0x0045E8ED (fin exclue) ===
  0045e8a0:	55                        	push   ebp
  0045e8a1:	8b ec                     	mov    ebp,esp
  0045e8a3:	8b 45 0c                  	mov    eax,DWORD PTR [ebp+0xc]
  0045e8a6:	8a 00                     	mov    al,BYTE PTR [eax]
  0045e8a8:	56                        	push   esi
  0045e8a9:	8b f1                     	mov    esi,ecx
  0045e8ab:	8b 4d 08                  	mov    ecx,DWORD PTR [ebp+0x8]
  0045e8ae:	8a 09                     	mov    cl,BYTE PTR [ecx]
  0045e8b0:	6a 30                     	push   0x30
  0045e8b2:	88 0e                     	mov    BYTE PTR [esi],cl
  0045e8b4:	88 46 01                  	mov    BYTE PTR [esi+0x1],al
  0045e8b7:	e8 34 37 fe ff            	call   0x441ff0
  0045e8bc:	83 c4 04                  	add    esp,0x4
  0045e8bf:	33 c9                     	xor    ecx,ecx
  0045e8c1:	89 48 04                  	mov    DWORD PTR [eax+0x4],ecx
  0045e8c4:	88 48 29                  	mov    BYTE PTR [eax+0x29],cl
  0045e8c7:	b2 01                     	mov    dl,0x1
  0045e8c9:	88 50 28                  	mov    BYTE PTR [eax+0x28],dl
  0045e8cc:	89 46 04                  	mov    DWORD PTR [esi+0x4],eax
  0045e8cf:	88 50 29                  	mov    BYTE PTR [eax+0x29],dl
  0045e8d2:	8b 46 04                  	mov    eax,DWORD PTR [esi+0x4]
  0045e8d5:	89 40 04                  	mov    DWORD PTR [eax+0x4],eax
  0045e8d8:	8b 46 04                  	mov    eax,DWORD PTR [esi+0x4]
  0045e8db:	89 00                     	mov    DWORD PTR [eax],eax
  0045e8dd:	8b 46 04                  	mov    eax,DWORD PTR [esi+0x4]
  0045e8e0:	89 40 08                  	mov    DWORD PTR [eax+0x8],eax
  0045e8e3:	89 4e 08                  	mov    DWORD PTR [esi+0x8],ecx
  0045e8e6:	8b c6                     	mov    eax,esi
  0045e8e8:	5e                        	pop    esi
  0045e8e9:	5d                        	pop    ebp
  0045e8ea:	c2 08 00                  	ret    0x8

