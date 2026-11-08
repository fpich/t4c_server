; Passe 69 - preuve de désassemblage strictement comparée à SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; section .text, base VA 0x401000; aucune instruction tronquée ni remplissage NOP/INT3 inclus
; Assemblage GNU objdump x86 Intel. Ordinals MFC identifiés via l'annuaire PE, rôle exact inconnu.

; [004420B0,004420E3) - instance globale et initialisation paresseuse du pool
  004420b0:	8a 0d 44 43 51 00                              	mov    cl,BYTE PTR ds:0x514344
  004420b6:	b0 01                                          	mov    al,0x1
  004420b8:	84 c8                                          	test   al,cl
  004420ba:	75 21                                          	jne    0x4420dd
  004420bc:	8a d1                                          	mov    dl,cl
  004420be:	0a d0                                          	or     dl,al
  004420c0:	b9 08 43 51 00                                 	mov    ecx,0x514308
  004420c5:	88 15 44 43 51 00                              	mov    BYTE PTR ds:0x514344,dl
  004420cb:	e8 30 00 00 00                                 	call   0x442100
  004420d0:	68 f0 20 44 00                                 	push   0x4420f0
  004420d5:	e8 31 fc 08 00                                 	call   0x4d1d0b
  004420da:	83 c4 04                                       	add    esp,0x4
  004420dd:	b8 08 43 51 00                                 	mov    eax,0x514308
  004420e2:	c3                                             	ret

; [004420F0,004420FA) - relai de destruction pool
  004420f0:	b9 08 43 51 00                                 	mov    ecx,0x514308
  004420f5:	e9 a6 00 00 00                                 	jmp    0x4421a0

; [00442100,00442112) - constructeur pool
  00442100:	56                                             	push   esi
  00442101:	8b f1                                          	mov    esi,ecx
  00442103:	c7 06 34 f1 4d 00                              	mov    DWORD PTR [esi],0x4df134
  00442109:	e8 42 00 00 00                                 	call   0x442150
  0044210e:	8b c6                                          	mov    eax,esi
  00442110:	5e                                             	pop    esi
  00442111:	c3                                             	ret

; [00442120,00442141) - destructeur conditionnel pool
  00442120:	55                                             	push   ebp
  00442121:	8b ec                                          	mov    ebp,esp
  00442123:	56                                             	push   esi
  00442124:	8b f1                                          	mov    esi,ecx
  00442126:	e8 75 00 00 00                                 	call   0x4421a0
  0044212b:	f6 45 08 01                                    	test   BYTE PTR [ebp+0x8],0x1
  0044212f:	74 09                                          	je     0x44213a
  00442131:	56                                             	push   esi
  00442132:	e8 29 ff ff ff                                 	call   0x442060
  00442137:	83 c4 04                                       	add    esp,0x4
  0044213a:	8b c6                                          	mov    eax,esi
  0044213c:	5e                                             	pop    esi
  0044213d:	5d                                             	pop    ebp
  0044213e:	c2 04 00                                       	ret    0x4

; [00442150,00442196) - initialisation table de 1024 buckets
  00442150:	53                                             	push   ebx
  00442151:	56                                             	push   esi
  00442152:	8b f1                                          	mov    esi,ecx
  00442154:	33 db                                          	xor    ebx,ebx
  00442156:	57                                             	push   edi
  00442157:	68 00 10 00 00                                 	push   0x1000
  0044215c:	89 5e 38                                       	mov    DWORD PTR [esi+0x38],ebx
  0044215f:	89 5e 24                                       	mov    DWORD PTR [esi+0x24],ebx
  00442162:	89 5e 28                                       	mov    DWORD PTR [esi+0x28],ebx
  00442165:	89 5e 2c                                       	mov    DWORD PTR [esi+0x2c],ebx
  00442168:	89 5e 30                                       	mov    DWORD PTR [esi+0x30],ebx
  0044216b:	89 5e 04                                       	mov    DWORD PTR [esi+0x4],ebx
  0044216e:	ff 15 94 e2 4d 00                              	call   DWORD PTR ds:0x4de294
  00442174:	8b f8                                          	mov    edi,eax
  00442176:	33 c0                                          	xor    eax,eax
  00442178:	89 7e 34                                       	mov    DWORD PTR [esi+0x34],edi
  0044217b:	b9 00 04 00 00                                 	mov    ecx,0x400
  00442180:	f3 ab                                          	rep stos DWORD PTR es:[edi],eax
  00442182:	83 c4 04                                       	add    esp,0x4
  00442185:	8d 46 08                                       	lea    eax,[esi+0x8]
  00442188:	50                                             	push   eax
  00442189:	ff 15 dc e0 4d 00                              	call   DWORD PTR ds:0x4de0dc
  0044218f:	5f                                             	pop    edi
  00442190:	88 5e 20                                       	mov    BYTE PTR [esi+0x20],bl
  00442193:	5e                                             	pop    esi
  00442194:	5b                                             	pop    ebx
  00442195:	c3                                             	ret

; [004421A0,004421BB) - nettoyage pool et remise du drapeau
  004421a0:	56                                             	push   esi
  004421a1:	8b f1                                          	mov    esi,ecx
  004421a3:	c7 06 34 f1 4d 00                              	mov    DWORD PTR [esi],0x4df134
  004421a9:	e8 32 00 00 00                                 	call   0x4421e0
  004421ae:	8a 46 20                                       	mov    al,BYTE PTR [esi+0x20]
  004421b1:	84 c0                                          	test   al,al
  004421b3:	74 04                                          	je     0x4421b9
  004421b5:	c6 46 20 00                                    	mov    BYTE PTR [esi+0x20],0x0
  004421b9:	5e                                             	pop    esi
  004421ba:	c3                                             	ret

; [004421C0,004421C5) - activation mode pool
  004421c0:	c6 41 20 01                                    	mov    BYTE PTR [ecx+0x20],0x1
  004421c4:	c3                                             	ret

; [004421D0,004421D9) - désactivation / nettoyage mode pool
  004421d0:	c6 41 20 00                                    	mov    BYTE PTR [ecx+0x20],0x0
  004421d4:	e9 07 00 00 00                                 	jmp    0x4421e0

; [004421E0,004422B1) - parcours buckets et comptabilité libération
  004421e0:	55                                             	push   ebp
  004421e1:	8b ec                                          	mov    ebp,esp
  004421e3:	81 ec d8 07 00 00                              	sub    esp,0x7d8
  004421e9:	53                                             	push   ebx
  004421ea:	56                                             	push   esi
  004421eb:	57                                             	push   edi
  004421ec:	8b f1                                          	mov    esi,ecx
  004421ee:	68 50 39 50 00                                 	push   0x503950
  004421f3:	68 20 4e 50 00                                 	push   0x504e20
  004421f8:	c6 46 20 00                                    	mov    BYTE PTR [esi+0x20],0x0
  004421fc:	33 ff                                          	xor    edi,edi
  004421fe:	ff 15 34 e3 4d 00                              	call   DWORD PTR ds:0x4de334
  00442204:	83 c4 08                                       	add    esp,0x8
  00442207:	33 db                                          	xor    ebx,ebx
  00442209:	33 c9                                          	xor    ecx,ecx
  0044220b:	89 45 fc                                       	mov    DWORD PTR [ebp-0x4],eax
  0044220e:	89 4d f8                                       	mov    DWORD PTR [ebp-0x8],ecx
  00442211:	8b 46 34                                       	mov    eax,DWORD PTR [esi+0x34]
  00442214:	8b 04 01                                       	mov    eax,DWORD PTR [ecx+eax*1]
  00442217:	85 c0                                          	test   eax,eax
  00442219:	89 46 2c                                       	mov    DWORD PTR [esi+0x2c],eax
  0044221c:	74 45                                          	je     0x442263
  0044221e:	8b 4e 2c                                       	mov    ecx,DWORD PTR [esi+0x2c]
  00442221:	8b 51 30                                       	mov    edx,DWORD PTR [ecx+0x30]
  00442224:	89 56 28                                       	mov    DWORD PTR [esi+0x28],edx
  00442227:	83 39 00                                       	cmp    DWORD PTR [ecx],0x0
  0044222a:	74 2a                                          	je     0x442256
  0044222c:	47                                             	inc    edi
  0044222d:	b8 01 00 00 00                                 	mov    eax,0x1
  00442232:	83 c1 0c                                       	add    ecx,0xc
  00442235:	83 39 00                                       	cmp    DWORD PTR [ecx],0x0
  00442238:	74 09                                          	je     0x442243
  0044223a:	40                                             	inc    eax
  0044223b:	83 c1 04                                       	add    ecx,0x4
  0044223e:	83 f8 0a                                       	cmp    eax,0xa
  00442241:	7c f2                                          	jl     0x442235
  00442243:	8d 85 10 fc ff ff                              	lea    eax,[ebp-0x3f0]
  00442249:	50                                             	push   eax
  0044224a:	ff 15 bc e0 4d 00                              	call   DWORD PTR ds:0x4de0bc
  00442250:	8b 4e 2c                                       	mov    ecx,DWORD PTR [esi+0x2c]
  00442253:	03 59 04                                       	add    ebx,DWORD PTR [ecx+0x4]
  00442256:	8b 46 28                                       	mov    eax,DWORD PTR [esi+0x28]
  00442259:	85 c0                                          	test   eax,eax
  0044225b:	89 46 2c                                       	mov    DWORD PTR [esi+0x2c],eax
  0044225e:	75 be                                          	jne    0x44221e
  00442260:	8b 4d f8                                       	mov    ecx,DWORD PTR [ebp-0x8]
  00442263:	83 c1 04                                       	add    ecx,0x4
  00442266:	81 f9 00 10 00 00                              	cmp    ecx,0x1000
  0044226c:	89 4d f8                                       	mov    DWORD PTR [ebp-0x8],ecx
  0044226f:	7c a0                                          	jl     0x442211
  00442271:	85 ff                                          	test   edi,edi
  00442273:	74 1b                                          	je     0x442290
  00442275:	33 d2                                          	xor    edx,edx
  00442277:	8b c3                                          	mov    eax,ebx
  00442279:	f7 f7                                          	div    edi
  0044227b:	8b 55 fc                                       	mov    edx,DWORD PTR [ebp-0x4]
  0044227e:	57                                             	push   edi
  0044227f:	53                                             	push   ebx
  00442280:	50                                             	push   eax
  00442281:	68 04 4e 50 00                                 	push   0x504e04
  00442286:	52                                             	push   edx
  00442287:	ff 15 38 e3 4d 00                              	call   DWORD PTR ds:0x4de338
  0044228d:	83 c4 14                                       	add    esp,0x14
  00442290:	8b 45 fc                                       	mov    eax,DWORD PTR [ebp-0x4]
  00442293:	50                                             	push   eax
  00442294:	ff 15 3c e3 4d 00                              	call   DWORD PTR ds:0x4de33c
  0044229a:	83 c4 04                                       	add    esp,0x4
  0044229d:	8d 8d 28 f8 ff ff                              	lea    ecx,[ebp-0x7d8]
  004422a3:	51                                             	push   ecx
  004422a4:	ff 15 bc e0 4d 00                              	call   DWORD PTR ds:0x4de0bc
  004422aa:	5f                                             	pop    edi
  004422ab:	5e                                             	pop    esi
  004422ac:	5b                                             	pop    ebx
  004422ad:	8b e5                                          	mov    esp,ebp
  004422af:	5d                                             	pop    ebp
  004422b0:	c3                                             	ret

