; Passe 69 - preuve de désassemblage strictement comparée à SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; section .text, base VA 0x401000; aucune instruction tronquée ni remplissage NOP/INT3 inclus
; Assemblage GNU objdump x86 Intel. Ordinals MFC identifiés via l'annuaire PE, rôle exact inconnu.

; [004422E0,004423CE) - enregistrement pool, chaînage des métadonnées 0x34 octets
  004422e0:	55                                             	push   ebp
  004422e1:	8b ec                                          	mov    ebp,esp
  004422e3:	51                                             	push   ecx
  004422e4:	53                                             	push   ebx
  004422e5:	8b d9                                          	mov    ebx,ecx
  004422e7:	8b 43 34                                       	mov    eax,DWORD PTR [ebx+0x34]
  004422ea:	85 c0                                          	test   eax,eax
  004422ec:	75 09                                          	jne    0x4422f7
  004422ee:	33 c0                                          	xor    eax,eax
  004422f0:	5b                                             	pop    ebx
  004422f1:	8b e5                                          	mov    esp,ebp
  004422f3:	5d                                             	pop    ebp
  004422f4:	c2 08 00                                       	ret    0x8
  004422f7:	8b 45 08                                       	mov    eax,DWORD PTR [ebp+0x8]
  004422fa:	56                                             	push   esi
  004422fb:	57                                             	push   edi
  004422fc:	8b 3d 94 e2 4d 00                              	mov    edi,DWORD PTR ds:0x4de294
  00442302:	50                                             	push   eax
  00442303:	ff d7                                          	call   edi
  00442305:	83 c4 04                                       	add    esp,0x4
  00442308:	50                                             	push   eax
  00442309:	8b cb                                          	mov    ecx,ebx
  0044230b:	89 45 fc                                       	mov    DWORD PTR [ebp-0x4],eax
  0044230e:	e8 ad ff ff ff                                 	call   0x4422c0
  00442313:	8b 4b 34                                       	mov    ecx,DWORD PTR [ebx+0x34]
  00442316:	8b f0                                          	mov    esi,eax
  00442318:	8b 04 b1                                       	mov    eax,DWORD PTR [ecx+esi*4]
  0044231b:	85 c0                                          	test   eax,eax
  0044231d:	74 41                                          	je     0x442360
  0044231f:	89 43 28                                       	mov    DWORD PTR [ebx+0x28],eax
  00442322:	8b 48 30                                       	mov    ecx,DWORD PTR [eax+0x30]
  00442325:	85 c9                                          	test   ecx,ecx
  00442327:	74 10                                          	je     0x442339
  00442329:	8b 53 28                                       	mov    edx,DWORD PTR [ebx+0x28]
  0044232c:	8b 42 30                                       	mov    eax,DWORD PTR [edx+0x30]
  0044232f:	89 43 28                                       	mov    DWORD PTR [ebx+0x28],eax
  00442332:	8b 48 30                                       	mov    ecx,DWORD PTR [eax+0x30]
  00442335:	85 c9                                          	test   ecx,ecx
  00442337:	75 f0                                          	jne    0x442329
  00442339:	6a 34                                          	push   0x34
  0044233b:	ff d7                                          	call   edi
  0044233d:	8b 4b 28                                       	mov    ecx,DWORD PTR [ebx+0x28]
  00442340:	89 41 30                                       	mov    DWORD PTR [ecx+0x30],eax
  00442343:	8b 53 28                                       	mov    edx,DWORD PTR [ebx+0x28]
  00442346:	8b 7a 30                                       	mov    edi,DWORD PTR [edx+0x30]
  00442349:	83 c4 04                                       	add    esp,0x4
  0044234c:	33 c0                                          	xor    eax,eax
  0044234e:	b9 0d 00 00 00                                 	mov    ecx,0xd
  00442353:	f3 ab                                          	rep stos DWORD PTR es:[edi],eax
  00442355:	8b 43 28                                       	mov    eax,DWORD PTR [ebx+0x28]
  00442358:	8b 48 30                                       	mov    ecx,DWORD PTR [eax+0x30]
  0044235b:	89 4b 2c                                       	mov    DWORD PTR [ebx+0x2c],ecx
  0044235e:	eb 28                                          	jmp    0x442388
  00442360:	6a 34                                          	push   0x34
  00442362:	ff d7                                          	call   edi
  00442364:	8b 53 34                                       	mov    edx,DWORD PTR [ebx+0x34]
  00442367:	89 04 b2                                       	mov    DWORD PTR [edx+esi*4],eax
  0044236a:	8b 53 34                                       	mov    edx,DWORD PTR [ebx+0x34]
  0044236d:	8b 3c b2                                       	mov    edi,DWORD PTR [edx+esi*4]
  00442370:	83 c4 04                                       	add    esp,0x4
  00442373:	33 c0                                          	xor    eax,eax
  00442375:	b9 0d 00 00 00                                 	mov    ecx,0xd
  0044237a:	f3 ab                                          	rep stos DWORD PTR es:[edi],eax
  0044237c:	8b 43 34                                       	mov    eax,DWORD PTR [ebx+0x34]
  0044237f:	8b 34 b0                                       	mov    esi,DWORD PTR [eax+esi*4]
  00442382:	89 73 28                                       	mov    DWORD PTR [ebx+0x28],esi
  00442385:	89 73 2c                                       	mov    DWORD PTR [ebx+0x2c],esi
  00442388:	8b 4b 2c                                       	mov    ecx,DWORD PTR [ebx+0x2c]
  0044238b:	8b 55 fc                                       	mov    edx,DWORD PTR [ebp-0x4]
  0044238e:	8b 45 08                                       	mov    eax,DWORD PTR [ebp+0x8]
  00442391:	8b 75 0c                                       	mov    esi,DWORD PTR [ebp+0xc]
  00442394:	89 11                                          	mov    DWORD PTR [ecx],edx
  00442396:	8b 53 04                                       	mov    edx,DWORD PTR [ebx+0x4]
  00442399:	8b 4b 2c                                       	mov    ecx,DWORD PTR [ebx+0x2c]
  0044239c:	03 d0                                          	add    edx,eax
  0044239e:	89 53 04                                       	mov    DWORD PTR [ebx+0x4],edx
  004423a1:	89 41 04                                       	mov    DWORD PTR [ecx+0x4],eax
  004423a4:	8b 7b 2c                                       	mov    edi,DWORD PTR [ebx+0x2c]
  004423a7:	83 c7 08                                       	add    edi,0x8
  004423aa:	b9 0a 00 00 00                                 	mov    ecx,0xa
  004423af:	f3 a5                                          	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  004423b1:	8b 53 2c                                       	mov    edx,DWORD PTR [ebx+0x2c]
  004423b4:	c7 42 30 00 00 00 00                           	mov    DWORD PTR [edx+0x30],0x0
  004423bb:	8b 43 38                                       	mov    eax,DWORD PTR [ebx+0x38]
  004423be:	5f                                             	pop    edi
  004423bf:	40                                             	inc    eax
  004423c0:	89 43 38                                       	mov    DWORD PTR [ebx+0x38],eax
  004423c3:	8b 45 fc                                       	mov    eax,DWORD PTR [ebp-0x4]
  004423c6:	5e                                             	pop    esi
  004423c7:	5b                                             	pop    ebx
  004423c8:	8b e5                                          	mov    esp,ebp
  004423ca:	5d                                             	pop    ebp
  004423cb:	c2 08 00                                       	ret    0x8

