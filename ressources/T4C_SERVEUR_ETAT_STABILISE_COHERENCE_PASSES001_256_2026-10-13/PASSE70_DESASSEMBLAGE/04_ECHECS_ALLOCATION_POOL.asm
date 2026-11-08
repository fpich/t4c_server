; Passe 70 — vérification directe sur le PE SHA-256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; VA .text 0x401000 ; sections PE d’après la passe 69 ; aucun octet de padding compté
; Format GNU objdump -d -M intel --insn-width=16.
; 04_ECHECS_ALLOCATION_POOL.asm

; wrapper malloc avec retour direct ou suivi [0x00441FF0,0x00442051) — 97 octets, 40 instructions
  441ff0:	55                                              	push   ebp
  441ff1:	8b ec                                           	mov    ebp,esp
  441ff3:	83 ec 2c                                        	sub    esp,0x2c
  441ff6:	56                                              	push   esi
  441ff7:	e8 b4 00 00 00                                  	call   0x4420b0
  441ffc:	8b f0                                           	mov    esi,eax
  441ffe:	8a 46 20                                        	mov    al,BYTE PTR [esi+0x20]
  442001:	84 c0                                           	test   al,al
  442003:	75 12                                           	jne    0x442017
  442005:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  442008:	50                                              	push   eax
  442009:	ff 15 94 e2 4d 00                               	call   DWORD PTR ds:0x4de294
  44200f:	83 c4 04                                        	add    esp,0x4
  442012:	5e                                              	pop    esi
  442013:	8b e5                                           	mov    esp,ebp
  442015:	5d                                              	pop    ebp
  442016:	c3                                              	ret
  442017:	8d 4d d4                                        	lea    ecx,[ebp-0x2c]
  44201a:	6a 0a                                           	push   0xa
  44201c:	51                                              	push   ecx
  44201d:	e8 ae 0b 02 00                                  	call   0x462bd0
  442022:	83 c4 08                                        	add    esp,0x8
  442025:	8d 56 08                                        	lea    edx,[esi+0x8]
  442028:	52                                              	push   edx
  442029:	8d 4d fc                                        	lea    ecx,[ebp-0x4]
  44202c:	e8 4f 76 fc ff                                  	call   0x409680
  442031:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  442034:	8d 45 d4                                        	lea    eax,[ebp-0x2c]
  442037:	50                                              	push   eax
  442038:	51                                              	push   ecx
  442039:	8b ce                                           	mov    ecx,esi
  44203b:	e8 a0 02 00 00                                  	call   0x4422e0
  442040:	8d 4d fc                                        	lea    ecx,[ebp-0x4]
  442043:	8b f0                                           	mov    esi,eax
  442045:	e8 56 76 fc ff                                  	call   0x4096a0
  44204a:	8b c6                                           	mov    eax,esi
  44204c:	5e                                              	pop    esi
  44204d:	8b e5                                           	mov    esp,ebp
  44204f:	5d                                              	pop    ebp
  442050:	c3                                              	ret

; création initiale de la table 1024 buckets [0x00442150,0x00442196) — 70 octets, 27 instructions
  442150:	53                                              	push   ebx
  442151:	56                                              	push   esi
  442152:	8b f1                                           	mov    esi,ecx
  442154:	33 db                                           	xor    ebx,ebx
  442156:	57                                              	push   edi
  442157:	68 00 10 00 00                                  	push   0x1000
  44215c:	89 5e 38                                        	mov    DWORD PTR [esi+0x38],ebx
  44215f:	89 5e 24                                        	mov    DWORD PTR [esi+0x24],ebx
  442162:	89 5e 28                                        	mov    DWORD PTR [esi+0x28],ebx
  442165:	89 5e 2c                                        	mov    DWORD PTR [esi+0x2c],ebx
  442168:	89 5e 30                                        	mov    DWORD PTR [esi+0x30],ebx
  44216b:	89 5e 04                                        	mov    DWORD PTR [esi+0x4],ebx
  44216e:	ff 15 94 e2 4d 00                               	call   DWORD PTR ds:0x4de294
  442174:	8b f8                                           	mov    edi,eax
  442176:	33 c0                                           	xor    eax,eax
  442178:	89 7e 34                                        	mov    DWORD PTR [esi+0x34],edi
  44217b:	b9 00 04 00 00                                  	mov    ecx,0x400
  442180:	f3 ab                                           	rep stos DWORD PTR es:[edi],eax
  442182:	83 c4 04                                        	add    esp,0x4
  442185:	8d 46 08                                        	lea    eax,[esi+0x8]
  442188:	50                                              	push   eax
  442189:	ff 15 dc e0 4d 00                               	call   DWORD PTR ds:0x4de0dc
  44218f:	5f                                              	pop    edi
  442190:	88 5e 20                                        	mov    BYTE PTR [esi+0x20],bl
  442193:	5e                                              	pop    esi
  442194:	5b                                              	pop    ebx
  442195:	c3                                              	ret

; enregistrement d allocation et création nœuds [0x004422E0,0x004423CE) — 238 octets, 93 instructions
  4422e0:	55                                              	push   ebp
  4422e1:	8b ec                                           	mov    ebp,esp
  4422e3:	51                                              	push   ecx
  4422e4:	53                                              	push   ebx
  4422e5:	8b d9                                           	mov    ebx,ecx
  4422e7:	8b 43 34                                        	mov    eax,DWORD PTR [ebx+0x34]
  4422ea:	85 c0                                           	test   eax,eax
  4422ec:	75 09                                           	jne    0x4422f7
  4422ee:	33 c0                                           	xor    eax,eax
  4422f0:	5b                                              	pop    ebx
  4422f1:	8b e5                                           	mov    esp,ebp
  4422f3:	5d                                              	pop    ebp
  4422f4:	c2 08 00                                        	ret    0x8
  4422f7:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  4422fa:	56                                              	push   esi
  4422fb:	57                                              	push   edi
  4422fc:	8b 3d 94 e2 4d 00                               	mov    edi,DWORD PTR ds:0x4de294
  442302:	50                                              	push   eax
  442303:	ff d7                                           	call   edi
  442305:	83 c4 04                                        	add    esp,0x4
  442308:	50                                              	push   eax
  442309:	8b cb                                           	mov    ecx,ebx
  44230b:	89 45 fc                                        	mov    DWORD PTR [ebp-0x4],eax
  44230e:	e8 ad ff ff ff                                  	call   0x4422c0
  442313:	8b 4b 34                                        	mov    ecx,DWORD PTR [ebx+0x34]
  442316:	8b f0                                           	mov    esi,eax
  442318:	8b 04 b1                                        	mov    eax,DWORD PTR [ecx+esi*4]
  44231b:	85 c0                                           	test   eax,eax
  44231d:	74 41                                           	je     0x442360
  44231f:	89 43 28                                        	mov    DWORD PTR [ebx+0x28],eax
  442322:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  442325:	85 c9                                           	test   ecx,ecx
  442327:	74 10                                           	je     0x442339
  442329:	8b 53 28                                        	mov    edx,DWORD PTR [ebx+0x28]
  44232c:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  44232f:	89 43 28                                        	mov    DWORD PTR [ebx+0x28],eax
  442332:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  442335:	85 c9                                           	test   ecx,ecx
  442337:	75 f0                                           	jne    0x442329
  442339:	6a 34                                           	push   0x34
  44233b:	ff d7                                           	call   edi
  44233d:	8b 4b 28                                        	mov    ecx,DWORD PTR [ebx+0x28]
  442340:	89 41 30                                        	mov    DWORD PTR [ecx+0x30],eax
  442343:	8b 53 28                                        	mov    edx,DWORD PTR [ebx+0x28]
  442346:	8b 7a 30                                        	mov    edi,DWORD PTR [edx+0x30]
  442349:	83 c4 04                                        	add    esp,0x4
  44234c:	33 c0                                           	xor    eax,eax
  44234e:	b9 0d 00 00 00                                  	mov    ecx,0xd
  442353:	f3 ab                                           	rep stos DWORD PTR es:[edi],eax
  442355:	8b 43 28                                        	mov    eax,DWORD PTR [ebx+0x28]
  442358:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  44235b:	89 4b 2c                                        	mov    DWORD PTR [ebx+0x2c],ecx
  44235e:	eb 28                                           	jmp    0x442388
  442360:	6a 34                                           	push   0x34
  442362:	ff d7                                           	call   edi
  442364:	8b 53 34                                        	mov    edx,DWORD PTR [ebx+0x34]
  442367:	89 04 b2                                        	mov    DWORD PTR [edx+esi*4],eax
  44236a:	8b 53 34                                        	mov    edx,DWORD PTR [ebx+0x34]
  44236d:	8b 3c b2                                        	mov    edi,DWORD PTR [edx+esi*4]
  442370:	83 c4 04                                        	add    esp,0x4
  442373:	33 c0                                           	xor    eax,eax
  442375:	b9 0d 00 00 00                                  	mov    ecx,0xd
  44237a:	f3 ab                                           	rep stos DWORD PTR es:[edi],eax
  44237c:	8b 43 34                                        	mov    eax,DWORD PTR [ebx+0x34]
  44237f:	8b 34 b0                                        	mov    esi,DWORD PTR [eax+esi*4]
  442382:	89 73 28                                        	mov    DWORD PTR [ebx+0x28],esi
  442385:	89 73 2c                                        	mov    DWORD PTR [ebx+0x2c],esi
  442388:	8b 4b 2c                                        	mov    ecx,DWORD PTR [ebx+0x2c]
  44238b:	8b 55 fc                                        	mov    edx,DWORD PTR [ebp-0x4]
  44238e:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  442391:	8b 75 0c                                        	mov    esi,DWORD PTR [ebp+0xc]
  442394:	89 11                                           	mov    DWORD PTR [ecx],edx
  442396:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  442399:	8b 4b 2c                                        	mov    ecx,DWORD PTR [ebx+0x2c]
  44239c:	03 d0                                           	add    edx,eax
  44239e:	89 53 04                                        	mov    DWORD PTR [ebx+0x4],edx
  4423a1:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  4423a4:	8b 7b 2c                                        	mov    edi,DWORD PTR [ebx+0x2c]
  4423a7:	83 c7 08                                        	add    edi,0x8
  4423aa:	b9 0a 00 00 00                                  	mov    ecx,0xa
  4423af:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  4423b1:	8b 53 2c                                        	mov    edx,DWORD PTR [ebx+0x2c]
  4423b4:	c7 42 30 00 00 00 00                            	mov    DWORD PTR [edx+0x30],0x0
  4423bb:	8b 43 38                                        	mov    eax,DWORD PTR [ebx+0x38]
  4423be:	5f                                              	pop    edi
  4423bf:	40                                              	inc    eax
  4423c0:	89 43 38                                        	mov    DWORD PTR [ebx+0x38],eax
  4423c3:	8b 45 fc                                        	mov    eax,DWORD PTR [ebp-0x4]
  4423c6:	5e                                              	pop    esi
  4423c7:	5b                                              	pop    ebx
  4423c8:	8b e5                                           	mov    esp,ebp
  4423ca:	5d                                              	pop    ebp
  4423cb:	c2 08 00                                        	ret    0x8
