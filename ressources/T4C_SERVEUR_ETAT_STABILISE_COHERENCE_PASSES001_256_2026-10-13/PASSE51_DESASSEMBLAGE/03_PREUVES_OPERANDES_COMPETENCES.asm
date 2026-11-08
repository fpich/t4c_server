; PASSE 51 — BoostFormula — competences, boosts, items et flags
; SHA256 PE serveur 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Tout code assembleur compte uniquement si ses octets sont compares a la section .text du serveur.
; Intervalles semi-ouverts. Les ranges ne sont pas des claims de couverture de tous les chemins.

; Choix par condition et fallback evaluation [0x40a0a3,0x40a0e4)
; Reevalue un operande fils a +0x14; les valeurs de contexte sont transmises.
  40a0a3:	dd d8                	fstp   st(0)
  40a0a5:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  40a0a8:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  40a0ab:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  40a0ae:	53                   	push   ebx
  40a0af:	52                   	push   edx
  40a0b0:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  40a0b3:	50                   	push   eax
  40a0b4:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40a0b7:	51                   	push   ecx
  40a0b8:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  40a0bb:	52                   	push   edx
  40a0bc:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  40a0bf:	50                   	push   eax
  40a0c0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40a0c3:	51                   	push   ecx
  40a0c4:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  40a0c7:	52                   	push   edx
  40a0c8:	50                   	push   eax
  40a0c9:	51                   	push   ecx
  40a0ca:	8b cf                	mov    ecx,edi
  40a0cc:	e8 3f fb ff ff       	call   0x409c10
  40a0d1:	5f                   	pop    edi
  40a0d2:	5e                   	pop    esi
  40a0d3:	5b                   	pop    ebx
  40a0d4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a0d7:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a0de:	8b e5                	mov    esp,ebp
  40a0e0:	5d                   	pop    ebp
  40a0e1:	c2 28 00             	ret    0x28

; Acces GetSkill et QueryBoost avec decalage 10000 [0x40a0e4,0x40a182)
; GetSkill par vtable +0x170; USER_SKILL +0x4, QueryBoost(numero_competence+10000); mutation conditionnelle du champ.
  40a0e4:	8b 55 2c             	mov    edx,DWORD PTR [ebp+0x2c]
  40a0e7:	dd d8                	fstp   st(0)
  40a0e9:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  40a0ec:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  40a0ef:	52                   	push   edx
  40a0f0:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  40a0f3:	50                   	push   eax
  40a0f4:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  40a0f7:	51                   	push   ecx
  40a0f8:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  40a0fb:	52                   	push   edx
  40a0fc:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  40a0ff:	50                   	push   eax
  40a100:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  40a103:	51                   	push   ecx
  40a104:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a107:	52                   	push   edx
  40a108:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  40a10b:	50                   	push   eax
  40a10c:	51                   	push   ecx
  40a10d:	52                   	push   edx
  40a10e:	8b cf                	mov    ecx,edi
  40a110:	e8 fb fa ff ff       	call   0x409c10
  40a115:	e8 60 7c 0c 00       	call   0x4d1d7a
  40a11a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a11d:	8b 11                	mov    edx,DWORD PTR [ecx]
  40a11f:	50                   	push   eax
  40a120:	ff 92 70 01 00 00    	call   DWORD PTR [edx+0x170]
  40a126:	8b f0                	mov    esi,eax
  40a128:	3b f3                	cmp    esi,ebx
  40a12a:	0f 84 55 1f 00 00    	je     0x40c085
  40a130:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a133:	33 c0                	xor    eax,eax
  40a135:	66 8b 06             	mov    ax,WORD PTR [esi]
  40a138:	66 05 10 27          	add    ax,0x2710
  40a13c:	50                   	push   eax
  40a13d:	e8 1e 3d 08 00       	call   0x48de60
  40a142:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  40a145:	f7 d8                	neg    eax
  40a147:	3b c1                	cmp    eax,ecx
  40a149:	7e 1c                	jle    0x40a167
  40a14b:	5f                   	pop    edi
  40a14c:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  40a14f:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a152:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a155:	5e                   	pop    esi
  40a156:	5b                   	pop    ebx
  40a157:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a15a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a161:	8b e5                	mov    esp,ebp
  40a163:	5d                   	pop    ebp
  40a164:	c2 28 00             	ret    0x28
  40a167:	5f                   	pop    edi
  40a168:	2b c8                	sub    ecx,eax
  40a16a:	5e                   	pop    esi
  40a16b:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  40a16e:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a171:	5b                   	pop    ebx
  40a172:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a175:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a17c:	8b e5                	mov    esp,ebp
  40a17e:	5d                   	pop    ebp
  40a17f:	c2 28 00             	ret    0x28

; Deux chemins de lecture de competence avec boost [0x40a182,0x40a22b)
; GetSkill sur une autre unite du contexte; QueryBoost et acces au champ +4; certaines branches ecrivent dans ce champ.
  40a182:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  40a185:	dd d8                	fstp   st(0)
  40a187:	3b c3                	cmp    eax,ebx
  40a189:	0f 84 f6 1e 00 00    	je     0x40c085
  40a18f:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  40a192:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  40a195:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  40a198:	51                   	push   ecx
  40a199:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  40a19c:	52                   	push   edx
  40a19d:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  40a1a0:	50                   	push   eax
  40a1a1:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40a1a4:	51                   	push   ecx
  40a1a5:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  40a1a8:	52                   	push   edx
  40a1a9:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  40a1ac:	50                   	push   eax
  40a1ad:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40a1b0:	51                   	push   ecx
  40a1b1:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  40a1b4:	52                   	push   edx
  40a1b5:	50                   	push   eax
  40a1b6:	51                   	push   ecx
  40a1b7:	8b cf                	mov    ecx,edi
  40a1b9:	e8 52 fa ff ff       	call   0x409c10
  40a1be:	e8 b7 7b 0c 00       	call   0x4d1d7a
  40a1c3:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a1c6:	8b 11                	mov    edx,DWORD PTR [ecx]
  40a1c8:	50                   	push   eax
  40a1c9:	ff 92 70 01 00 00    	call   DWORD PTR [edx+0x170]
  40a1cf:	8b f0                	mov    esi,eax
  40a1d1:	3b f3                	cmp    esi,ebx
  40a1d3:	0f 84 ac 1e 00 00    	je     0x40c085
  40a1d9:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a1dc:	33 c0                	xor    eax,eax
  40a1de:	66 8b 06             	mov    ax,WORD PTR [esi]
  40a1e1:	66 05 10 27          	add    ax,0x2710
  40a1e5:	50                   	push   eax
  40a1e6:	e8 75 3c 08 00       	call   0x48de60
  40a1eb:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  40a1ee:	f7 d8                	neg    eax
  40a1f0:	3b c1                	cmp    eax,ecx
  40a1f2:	7e 1c                	jle    0x40a210
  40a1f4:	5f                   	pop    edi
  40a1f5:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  40a1f8:	89 5d 10             	mov    DWORD PTR [ebp+0x10],ebx
  40a1fb:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a1fe:	5e                   	pop    esi
  40a1ff:	5b                   	pop    ebx
  40a200:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a203:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a20a:	8b e5                	mov    esp,ebp
  40a20c:	5d                   	pop    ebp
  40a20d:	c2 28 00             	ret    0x28
  40a210:	5f                   	pop    edi
  40a211:	2b c8                	sub    ecx,eax
  40a213:	5e                   	pop    esi
  40a214:	89 4d 10             	mov    DWORD PTR [ebp+0x10],ecx
  40a217:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a21a:	5b                   	pop    ebx
  40a21b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a21e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a225:	8b e5                	mov    esp,ebp
  40a227:	5d                   	pop    ebp
  40a228:	c2 28 00             	ret    0x28

; Autres chemins lisant valeur d une competence [0x40a22b,0x40a301)
; GetSkill et retour de valeur +0x4 selon la cible; absence de pointeur entraine un fallback.
  40a22b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40a22e:	dd d8                	fstp   st(0)
  40a230:	3b c3                	cmp    eax,ebx
  40a232:	0f 84 4d 1e 00 00    	je     0x40c085
  40a238:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  40a23b:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  40a23e:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  40a241:	51                   	push   ecx
  40a242:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  40a245:	52                   	push   edx
  40a246:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  40a249:	50                   	push   eax
  40a24a:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40a24d:	51                   	push   ecx
  40a24e:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  40a251:	52                   	push   edx
  40a252:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  40a255:	50                   	push   eax
  40a256:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40a259:	51                   	push   ecx
  40a25a:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  40a25d:	52                   	push   edx
  40a25e:	50                   	push   eax
  40a25f:	51                   	push   ecx
  40a260:	8b cf                	mov    ecx,edi
  40a262:	e8 a9 f9 ff ff       	call   0x409c10
  40a267:	e8 0e 7b 0c 00       	call   0x4d1d7a
  40a26c:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a26f:	8b 11                	mov    edx,DWORD PTR [ecx]
  40a271:	50                   	push   eax
  40a272:	ff 92 70 01 00 00    	call   DWORD PTR [edx+0x170]
  40a278:	3b c3                	cmp    eax,ebx
  40a27a:	0f 84 05 1e 00 00    	je     0x40c085
  40a280:	db 40 04             	fild   DWORD PTR [eax+0x4]
  40a283:	5f                   	pop    edi
  40a284:	5e                   	pop    esi
  40a285:	5b                   	pop    ebx
  40a286:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a289:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a290:	8b e5                	mov    esp,ebp
  40a292:	5d                   	pop    ebp
  40a293:	c2 28 00             	ret    0x28
  40a296:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  40a299:	dd d8                	fstp   st(0)
  40a29b:	3b c3                	cmp    eax,ebx
  40a29d:	0f 84 e2 1d 00 00    	je     0x40c085
  40a2a3:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  40a2a6:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  40a2a9:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  40a2ac:	50                   	push   eax
  40a2ad:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  40a2b0:	51                   	push   ecx
  40a2b1:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40a2b4:	52                   	push   edx
  40a2b5:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  40a2b8:	50                   	push   eax
  40a2b9:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  40a2bc:	51                   	push   ecx
  40a2bd:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a2c0:	52                   	push   edx
  40a2c1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40a2c4:	50                   	push   eax
  40a2c5:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  40a2c8:	51                   	push   ecx
  40a2c9:	52                   	push   edx
  40a2ca:	50                   	push   eax
  40a2cb:	8b cf                	mov    ecx,edi
  40a2cd:	e8 3e f9 ff ff       	call   0x409c10
  40a2d2:	e8 a3 7a 0c 00       	call   0x4d1d7a
  40a2d7:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a2da:	8b 11                	mov    edx,DWORD PTR [ecx]
  40a2dc:	50                   	push   eax
  40a2dd:	ff 92 70 01 00 00    	call   DWORD PTR [edx+0x170]
  40a2e3:	3b c3                	cmp    eax,ebx
  40a2e5:	0f 84 9a 1d 00 00    	je     0x40c085
  40a2eb:	db 40 04             	fild   DWORD PTR [eax+0x4]
  40a2ee:	5f                   	pop    edi
  40a2ef:	5e                   	pop    esi
  40a2f0:	5b                   	pop    ebx
  40a2f1:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a2f4:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a2fb:	8b e5                	mov    esp,ebp
  40a2fd:	5d                   	pop    ebp
  40a2fe:	c2 28 00             	ret    0x28

; Consultation de flags par vtable +0xC [0x40a301,0x40a3be)
; ViewFlag avec cle obtenue par evaluation recursive, retour entier converti en flottant.
  40a301:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  40a304:	dd d8                	fstp   st(0)
  40a306:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  40a309:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  40a30c:	50                   	push   eax
  40a30d:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  40a310:	51                   	push   ecx
  40a311:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40a314:	52                   	push   edx
  40a315:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  40a318:	50                   	push   eax
  40a319:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  40a31c:	51                   	push   ecx
  40a31d:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a320:	52                   	push   edx
  40a321:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40a324:	50                   	push   eax
  40a325:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  40a328:	51                   	push   ecx
  40a329:	52                   	push   edx
  40a32a:	50                   	push   eax
  40a32b:	8b cf                	mov    ecx,edi
  40a32d:	e8 de f8 ff ff       	call   0x409c10
  40a332:	e8 43 7a 0c 00       	call   0x4d1d7a
  40a337:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a33a:	8b 11                	mov    edx,DWORD PTR [ecx]
  40a33c:	53                   	push   ebx
  40a33d:	50                   	push   eax
  40a33e:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40a341:	5f                   	pop    edi
  40a342:	5e                   	pop    esi
  40a343:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a346:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a349:	5b                   	pop    ebx
  40a34a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a34d:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a354:	8b e5                	mov    esp,ebp
  40a356:	5d                   	pop    ebp
  40a357:	c2 28 00             	ret    0x28
  40a35a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  40a35d:	dd d8                	fstp   st(0)
  40a35f:	3b c3                	cmp    eax,ebx
  40a361:	0f 84 1e 1d 00 00    	je     0x40c085
  40a367:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  40a36a:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  40a36d:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  40a370:	50                   	push   eax
  40a371:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  40a374:	51                   	push   ecx
  40a375:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40a378:	52                   	push   edx
  40a379:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  40a37c:	50                   	push   eax
  40a37d:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  40a380:	51                   	push   ecx
  40a381:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a384:	52                   	push   edx
  40a385:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40a388:	50                   	push   eax
  40a389:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  40a38c:	51                   	push   ecx
  40a38d:	52                   	push   edx
  40a38e:	50                   	push   eax
  40a38f:	8b cf                	mov    ecx,edi
  40a391:	e8 7a f8 ff ff       	call   0x409c10
  40a396:	e8 df 79 0c 00       	call   0x4d1d7a
  40a39b:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a39e:	8b 11                	mov    edx,DWORD PTR [ecx]
  40a3a0:	53                   	push   ebx
  40a3a1:	50                   	push   eax
  40a3a2:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  40a3a5:	5f                   	pop    edi
  40a3a6:	5e                   	pop    esi
  40a3a7:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a3aa:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a3ad:	5b                   	pop    ebx
  40a3ae:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a3b1:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a3b8:	8b e5                	mov    esp,ebp
  40a3ba:	5d                   	pop    ebp
  40a3bb:	c2 28 00             	ret    0x28

; Comptage d objets via __CheckItem [0x40a3be,0x40a47b)
; Un argument d unite et un identifiant d objet converti en entier, puis fonction __CheckItem 0x445e80.
  40a3be:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  40a3c1:	dd d8                	fstp   st(0)
  40a3c3:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  40a3c6:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  40a3c9:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40a3cc:	50                   	push   eax
  40a3cd:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  40a3d0:	51                   	push   ecx
  40a3d1:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40a3d4:	52                   	push   edx
  40a3d5:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  40a3d8:	50                   	push   eax
  40a3d9:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  40a3dc:	51                   	push   ecx
  40a3dd:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a3e0:	52                   	push   edx
  40a3e1:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  40a3e4:	50                   	push   eax
  40a3e5:	51                   	push   ecx
  40a3e6:	53                   	push   ebx
  40a3e7:	52                   	push   edx
  40a3e8:	8b cf                	mov    ecx,edi
  40a3ea:	e8 21 f8 ff ff       	call   0x409c10
  40a3ef:	e8 86 79 0c 00       	call   0x4d1d7a
  40a3f4:	50                   	push   eax
  40a3f5:	53                   	push   ebx
  40a3f6:	e8 85 ba 03 00       	call   0x445e80
  40a3fb:	83 c4 08             	add    esp,0x8
  40a3fe:	5f                   	pop    edi
  40a3ff:	5e                   	pop    esi
  40a400:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a403:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a406:	5b                   	pop    ebx
  40a407:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a40a:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a411:	8b e5                	mov    esp,ebp
  40a413:	5d                   	pop    ebp
  40a414:	c2 28 00             	ret    0x28
  40a417:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  40a41a:	dd d8                	fstp   st(0)
  40a41c:	3b c3                	cmp    eax,ebx
  40a41e:	0f 84 61 1c 00 00    	je     0x40c085
  40a424:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  40a427:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  40a42a:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  40a42d:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  40a430:	50                   	push   eax
  40a431:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  40a434:	51                   	push   ecx
  40a435:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40a438:	52                   	push   edx
  40a439:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  40a43c:	50                   	push   eax
  40a43d:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  40a440:	51                   	push   ecx
  40a441:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a444:	52                   	push   edx
  40a445:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  40a448:	50                   	push   eax
  40a449:	53                   	push   ebx
  40a44a:	51                   	push   ecx
  40a44b:	52                   	push   edx
  40a44c:	8b cf                	mov    ecx,edi
  40a44e:	e8 bd f7 ff ff       	call   0x409c10
  40a453:	e8 22 79 0c 00       	call   0x4d1d7a
  40a458:	50                   	push   eax
  40a459:	53                   	push   ebx
  40a45a:	e8 21 ba 03 00       	call   0x445e80
  40a45f:	83 c4 08             	add    esp,0x8
  40a462:	5f                   	pop    edi
  40a463:	5e                   	pop    esi
  40a464:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  40a467:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40a46a:	5b                   	pop    ebx
  40a46b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a46e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a475:	8b e5                	mov    esp,ebp
  40a477:	5d                   	pop    ebp
  40a478:	c2 28 00             	ret    0x28

; Autres parametres de contexte des operandes [0x40a47b,0x40a620)
; Nouvel aiguillage recursive, les cas non examines exhaustivement restent inconnus.
  40a47b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a47e:	dd d8                	fstp   st(0)
  40a480:	e8 eb 11 08 00       	call   0x48b670
  40a485:	3c 01                	cmp    al,0x1
  40a487:	0f 85 f8 1b 00 00    	jne    0x40c085
  40a48d:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  40a490:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  40a493:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  40a496:	50                   	push   eax
  40a497:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  40a49a:	51                   	push   ecx
  40a49b:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  40a49e:	52                   	push   edx
  40a49f:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  40a4a2:	50                   	push   eax
  40a4a3:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  40a4a6:	51                   	push   ecx
  40a4a7:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a4aa:	52                   	push   edx
  40a4ab:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  40a4ae:	50                   	push   eax
  40a4af:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  40a4b2:	51                   	push   ecx
  40a4b3:	52                   	push   edx
  40a4b4:	50                   	push   eax
  40a4b5:	8b cf                	mov    ecx,edi
  40a4b7:	e8 54 f7 ff ff       	call   0x409c10
  40a4bc:	e8 b9 78 0c 00       	call   0x4d1d7a
  40a4c1:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  40a4c4:	50                   	push   eax
  40a4c5:	e8 d6 7e 01 00       	call   0x4223a0
  40a4ca:	5f                   	pop    edi
  40a4cb:	89 5d 18             	mov    DWORD PTR [ebp+0x18],ebx
  40a4ce:	5e                   	pop    esi
  40a4cf:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  40a4d2:	df 6d 14             	fild   QWORD PTR [ebp+0x14]
  40a4d5:	5b                   	pop    ebx
  40a4d6:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a4d9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a4e0:	8b e5                	mov    esp,ebp
  40a4e2:	5d                   	pop    ebp
  40a4e3:	c2 28 00             	ret    0x28
  40a4e6:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  40a4e9:	dd d8                	fstp   st(0)
  40a4eb:	3b c3                	cmp    eax,ebx
  40a4ed:	0f 84 92 1b 00 00    	je     0x40c085
  40a4f3:	8b c8                	mov    ecx,eax
  40a4f5:	e8 76 11 08 00       	call   0x48b670
  40a4fa:	3c 01                	cmp    al,0x1
  40a4fc:	0f 85 83 1b 00 00    	jne    0x40c085
  40a502:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  40a505:	8b 55 28             	mov    edx,DWORD PTR [ebp+0x28]
  40a508:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  40a50b:	51                   	push   ecx
  40a50c:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  40a50f:	52                   	push   edx
  40a510:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  40a513:	50                   	push   eax
  40a514:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  40a517:	51                   	push   ecx
  40a518:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  40a51b:	52                   	push   edx
  40a51c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  40a51f:	50                   	push   eax
  40a520:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  40a523:	51                   	push   ecx
  40a524:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  40a527:	52                   	push   edx
  40a528:	50                   	push   eax
  40a529:	51                   	push   ecx
  40a52a:	8b cf                	mov    ecx,edi
  40a52c:	e8 df f6 ff ff       	call   0x409c10
  40a531:	e8 44 78 0c 00       	call   0x4d1d7a
  40a536:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  40a539:	50                   	push   eax
  40a53a:	e8 61 7e 01 00       	call   0x4223a0
  40a53f:	5f                   	pop    edi
  40a540:	89 5d 18             	mov    DWORD PTR [ebp+0x18],ebx
  40a543:	5e                   	pop    esi
  40a544:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  40a547:	df 6d 14             	fild   QWORD PTR [ebp+0x14]
  40a54a:	5b                   	pop    ebx
  40a54b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a54e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a555:	8b e5                	mov    esp,ebp
  40a557:	5d                   	pop    ebp
  40a558:	c2 28 00             	ret    0x28
  40a55b:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  40a55e:	dd d8                	fstp   st(0)
  40a560:	3b c3                	cmp    eax,ebx
  40a562:	0f 84 1d 1b 00 00    	je     0x40c085
  40a568:	8b 76 18             	mov    esi,DWORD PTR [esi+0x18]
  40a56b:	8b 16                	mov    edx,DWORD PTR [esi]
  40a56d:	8a 45 13             	mov    al,BYTE PTR [ebp+0x13]
  40a570:	83 c9 ff             	or     ecx,0xffffffff
  40a573:	88 45 9c             	mov    BYTE PTR [ebp-0x64],al
  40a576:	33 c0                	xor    eax,eax
  40a578:	8b fa                	mov    edi,edx
  40a57a:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
  40a57d:	89 5d a4             	mov    DWORD PTR [ebp-0x5c],ebx
  40a580:	89 5d a8             	mov    DWORD PTR [ebp-0x58],ebx
  40a583:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
  40a585:	f7 d1                	not    ecx
  40a587:	49                   	dec    ecx
  40a588:	51                   	push   ecx
  40a589:	52                   	push   edx
  40a58a:	8d 4d 9c             	lea    ecx,[ebp-0x64]
  40a58d:	ff 15 f4 e4 4d 00    	call   DWORD PTR ds:0x4de4f4
  40a593:	8d 4d 9c             	lea    ecx,[ebp-0x64]
  40a596:	51                   	push   ecx
  40a597:	8d 4d ac             	lea    ecx,[ebp-0x54]
  40a59a:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  40a5a1:	ff 15 10 e5 4d 00    	call   DWORD PTR ds:0x4de510
  40a5a7:	c7 45 bc 00 00 00 00 	mov    DWORD PTR [ebp-0x44],0x0
  40a5ae:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [ebp-0x40],0x0
  40a5b5:	8b 4d 2c             	mov    ecx,DWORD PTR [ebp+0x2c]
  40a5b8:	8d 55 ac             	lea    edx,[ebp-0x54]
  40a5bb:	52                   	push   edx
  40a5bc:	8d 45 14             	lea    eax,[ebp+0x14]
  40a5bf:	50                   	push   eax
  40a5c0:	c6 45 fc 03          	mov    BYTE PTR [ebp-0x4],0x3
  40a5c4:	e8 67 4c 00 00       	call   0x40f230
  40a5c9:	8b 30                	mov    esi,DWORD PTR [eax]
  40a5cb:	6a 01                	push   0x1
  40a5cd:	8d 4d ac             	lea    ecx,[ebp-0x54]
  40a5d0:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  40a5d4:	ff 15 14 e5 4d 00    	call   DWORD PTR ds:0x4de514
  40a5da:	dd 46 20             	fld    QWORD PTR [esi+0x20]
  40a5dd:	8b 45 a0             	mov    eax,DWORD PTR [ebp-0x60]
  40a5e0:	dd 55 e0             	fst    QWORD PTR [ebp-0x20]
  40a5e3:	3b c3                	cmp    eax,ebx
  40a5e5:	0f 84 da f7 ff ff    	je     0x409dc5
  40a5eb:	8d 48 ff             	lea    ecx,[eax-0x1]
  40a5ee:	8a 01                	mov    al,BYTE PTR [ecx]
  40a5f0:	3a c3                	cmp    al,bl
  40a5f2:	74 1b                	je     0x40a60f
  40a5f4:	3c ff                	cmp    al,0xff
  40a5f6:	74 17                	je     0x40a60f
  40a5f8:	5f                   	pop    edi
  40a5f9:	fe c8                	dec    al
  40a5fb:	5e                   	pop    esi
  40a5fc:	88 01                	mov    BYTE PTR [ecx],al
  40a5fe:	5b                   	pop    ebx
  40a5ff:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40a602:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40a609:	8b e5                	mov    esp,ebp
  40a60b:	5d                   	pop    ebp
  40a60c:	c2 28 00             	ret    0x28
  40a60f:	51                   	push   ecx
  40a610:	dd d8                	fstp   st(0)
  40a612:	e8 49 7a 03 00       	call   0x442060
  40a617:	83 c4 04             	add    esp,0x4
  40a61a:	e9 a3 f7 ff ff       	jmp    0x409dc2
  40a61f:	33 c0                	xor    eax,eax
