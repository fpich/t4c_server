; PASSE 50 — Effet type 1 — controle, PvP, reaction attacked, application hit, emission
; T4C Server(1).exe SHA256: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions x86-32 et octets exacts compares a la section .text serveur.
; Les ranges sont semi-ouvertes [debut,fin) et ne prouvent pas la couverture de toutes les branches.

; Entree et gardes de type/UnderBlock [0x4c61a0,0x4c6222)
; Tests GetUnderBlock et GetType; un sous-cas retourne sans toucher la cible.
  4c61a0:	55                   	push   ebp
  4c61a1:	8b ec                	mov    ebp,esp
  4c61a3:	6a ff                	push   0xffffffff
  4c61a5:	68 48 d9 4d 00       	push   0x4dd948
  4c61aa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c61b0:	50                   	push   eax
  4c61b1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c61b8:	81 ec 54 08 00 00    	sub    esp,0x854
  4c61be:	53                   	push   ebx
  4c61bf:	56                   	push   esi
  4c61c0:	57                   	push   edi
  4c61c1:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  4c61c4:	8b cf                	mov    ecx,edi
  4c61c6:	e8 c5 92 fc ff       	call   0x48f490
  4c61cb:	3c 06                	cmp    al,0x6
  4c61cd:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  4c61d0:	74 21                	je     0x4c61f3
  4c61d2:	8b cf                	mov    ecx,edi
  4c61d4:	e8 b7 92 fc ff       	call   0x48f490
  4c61d9:	3c 07                	cmp    al,0x7
  4c61db:	74 16                	je     0x4c61f3
  4c61dd:	8b ce                	mov    ecx,esi
  4c61df:	e8 ac 92 fc ff       	call   0x48f490
  4c61e4:	3c 06                	cmp    al,0x6
  4c61e6:	74 0b                	je     0x4c61f3
  4c61e8:	8b ce                	mov    ecx,esi
  4c61ea:	e8 a1 92 fc ff       	call   0x48f490
  4c61ef:	3c 07                	cmp    al,0x7
  4c61f1:	75 2b                	jne    0x4c621e
  4c61f3:	8b ce                	mov    ecx,esi
  4c61f5:	e8 76 54 fc ff       	call   0x48b670
  4c61fa:	3c 01                	cmp    al,0x1
  4c61fc:	75 20                	jne    0x4c621e
  4c61fe:	8b cf                	mov    ecx,edi
  4c6200:	e8 6b 54 fc ff       	call   0x48b670
  4c6205:	3c 01                	cmp    al,0x1
  4c6207:	75 15                	jne    0x4c621e
  4c6209:	33 c0                	xor    eax,eax
  4c620b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c620e:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c6215:	5f                   	pop    edi
  4c6216:	5e                   	pop    esi
  4c6217:	5b                   	pop    ebx
  4c6218:	8b e5                	mov    esp,ebp
  4c621a:	5d                   	pop    ebp
  4c621b:	c2 14 00             	ret    0x14
  4c621e:	56                   	push   esi
  4c621f:	33 db                	xor    ebx,ebx
  4c6221:	57                   	push   edi

; Autorisation InPVP et construction des valeurs intermediaires [0x4c6222,0x4c62a6)
; Appel GAME_RULES::InPVP 0x438fe0, x87, methode virtuelle +0x38; interpretation du filtre a garder conditionnelle.
  4c6222:	89 5d 08             	mov    DWORD PTR [ebp+0x8],ebx
  4c6225:	e8 b6 2d f7 ff       	call   0x438fe0
  4c622a:	83 c4 08             	add    esp,0x8
  4c622d:	85 c0                	test   eax,eax
  4c622f:	0f 84 9a 02 00 00    	je     0x4c64cf
  4c6235:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  4c6238:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  4c623e:	df e0                	fnstsw ax
  4c6240:	f6 c4 40             	test   ah,0x40
  4c6243:	0f 85 86 02 00 00    	jne    0x4c64cf
  4c6249:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  4c624c:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  4c624f:	8d 4e 30             	lea    ecx,[esi+0x30]
  4c6252:	d9 e0                	fchs
  4c6254:	dd 5d d4             	fstp   QWORD PTR [ebp-0x2c]
  4c6257:	89 5d dc             	mov    DWORD PTR [ebp-0x24],ebx
  4c625a:	89 5d e0             	mov    DWORD PTR [ebp-0x20],ebx
  4c625d:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
  4c6260:	89 5d e8             	mov    DWORD PTR [ebp-0x18],ebx
  4c6263:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
  4c6266:	89 4d 18             	mov    DWORD PTR [ebp+0x18],ecx
  4c6269:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4c626c:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  4c626f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c6272:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
  4c6275:	89 4d cc             	mov    DWORD PTR [ebp-0x34],ecx
  4c6278:	80 b8 39 02 00 00 01 	cmp    BYTE PTR [eax+0x239],0x1
  4c627f:	89 55 d0             	mov    DWORD PTR [ebp-0x30],edx
  4c6282:	75 22                	jne    0x4c62a6
  4c6284:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6286:	53                   	push   ebx
  4c6287:	8d 45 d4             	lea    eax,[ebp-0x2c]
  4c628a:	50                   	push   eax
  4c628b:	8b ce                	mov    ecx,esi
  4c628d:	ff 52 38             	call   DWORD PTR [edx+0x38]
  4c6290:	dd 45 d4             	fld    QWORD PTR [ebp-0x2c]
  4c6293:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  4c6299:	df e0                	fnstsw ax
  4c629b:	f6 c4 41             	test   ah,0x41
  4c629e:	74 06                	je     0x4c62a6
  4c62a0:	89 5d d4             	mov    DWORD PTR [ebp-0x2c],ebx
  4c62a3:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx

; Reactions et variantes de messages [0x4c62a6,0x4c63f9)
; Appels conditionnels, messages construits a partir des positions et de la structure; chemins gardes par des flags.
  4c62a6:	dd 45 d4             	fld    QWORD PTR [ebp-0x2c]
  4c62a9:	e8 cc ba 00 00       	call   0x4d1d7a
  4c62ae:	8b cf                	mov    ecx,edi
  4c62b0:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c62b3:	e8 b8 53 fc ff       	call   0x48b670
  4c62b8:	3c 01                	cmp    al,0x1
  4c62ba:	0f 85 93 00 00 00    	jne    0x4c6353
  4c62c0:	8b cf                	mov    ecx,edi
  4c62c2:	e8 29 48 f5 ff       	call   0x41aaf0
  4c62c7:	3b c3                	cmp    eax,ebx
  4c62c9:	0f 84 84 00 00 00    	je     0x4c6353
  4c62cf:	8b c8                	mov    ecx,eax
  4c62d1:	e8 0a e8 f8 ff       	call   0x454ae0
  4c62d6:	25 00 00 00 80       	and    eax,0x80000000
  4c62db:	33 c9                	xor    ecx,ecx
  4c62dd:	0b c1                	or     eax,ecx
  4c62df:	74 72                	je     0x4c6353
  4c62e1:	88 9d a0 f7 ff ff    	mov    BYTE PTR [ebp-0x860],bl
  4c62e7:	8b 1e                	mov    ebx,DWORD PTR [esi]
  4c62e9:	e8 72 77 f7 ff       	call   0x43da60
  4c62ee:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  4c62f1:	50                   	push   eax
  4c62f2:	51                   	push   ecx
  4c62f3:	8b ce                	mov    ecx,esi
  4c62f5:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  4c62f8:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
  4c62fb:	8b 4d d4             	mov    ecx,DWORD PTR [ebp-0x2c]
  4c62fe:	52                   	push   edx
  4c62ff:	8b 55 d0             	mov    edx,DWORD PTR [ebp-0x30]
  4c6302:	51                   	push   ecx
  4c6303:	8b 4d cc             	mov    ecx,DWORD PTR [ebp-0x34]
  4c6306:	52                   	push   edx
  4c6307:	51                   	push   ecx
  4c6308:	33 db                	xor    ebx,ebx
  4c630a:	8b c8                	mov    ecx,eax
  4c630c:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  4c630f:	e8 5c ba f5 ff       	call   0x421d70
  4c6314:	50                   	push   eax
  4c6315:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c6318:	33 d2                	xor    edx,edx
  4c631a:	66 8b 10             	mov    dx,WORD PTR [eax]
  4c631d:	8d 8d a0 f7 ff ff    	lea    ecx,[ebp-0x860]
  4c6323:	52                   	push   edx
  4c6324:	68 b8 01 51 00       	push   0x5101b8
  4c6329:	51                   	push   ecx
  4c632a:	e8 11 d6 f3 ff       	call   0x403940
  4c632f:	83 c4 1c             	add    esp,0x1c
  4c6332:	8b cc                	mov    ecx,esp
  4c6334:	89 65 c4             	mov    DWORD PTR [ebp-0x3c],esp
  4c6337:	50                   	push   eax
  4c6338:	e8 27 b7 00 00       	call   0x4d1a64
  4c633d:	8b cf                	mov    ecx,edi
  4c633f:	e8 4c cb f5 ff       	call   0x422e90
  4c6344:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  4c6347:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c634e:	e8 ed b6 00 00       	call   0x4d1a40
  4c6353:	8b ce                	mov    ecx,esi
  4c6355:	e8 16 53 fc ff       	call   0x48b670
  4c635a:	3c 01                	cmp    al,0x1
  4c635c:	0f 85 97 00 00 00    	jne    0x4c63f9
  4c6362:	8b ce                	mov    ecx,esi
  4c6364:	e8 87 47 f5 ff       	call   0x41aaf0
  4c6369:	3b c3                	cmp    eax,ebx
  4c636b:	0f 84 88 00 00 00    	je     0x4c63f9
  4c6371:	8b c8                	mov    ecx,eax
  4c6373:	e8 68 e7 f8 ff       	call   0x454ae0
  4c6378:	25 00 00 00 80       	and    eax,0x80000000
  4c637d:	33 c9                	xor    ecx,ecx
  4c637f:	0b c1                	or     eax,ecx
  4c6381:	74 76                	je     0x4c63f9
  4c6383:	88 9d a0 f7 ff ff    	mov    BYTE PTR [ebp-0x860],bl
  4c6389:	8b 1f                	mov    ebx,DWORD PTR [edi]
  4c638b:	e8 d0 76 f7 ff       	call   0x43da60
  4c6390:	8d 55 0c             	lea    edx,[ebp+0xc]
  4c6393:	8b cf                	mov    ecx,edi
  4c6395:	50                   	push   eax
  4c6396:	52                   	push   edx
  4c6397:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  4c639a:	8b 4d d8             	mov    ecx,DWORD PTR [ebp-0x28]
  4c639d:	8b 55 d4             	mov    edx,DWORD PTR [ebp-0x2c]
  4c63a0:	51                   	push   ecx
  4c63a1:	8b 4d d0             	mov    ecx,DWORD PTR [ebp-0x30]
  4c63a4:	52                   	push   edx
  4c63a5:	8b 55 cc             	mov    edx,DWORD PTR [ebp-0x34]
  4c63a8:	51                   	push   ecx
  4c63a9:	52                   	push   edx
  4c63aa:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c63ad:	33 c9                	xor    ecx,ecx
  4c63af:	66 8b 0a             	mov    cx,WORD PTR [edx]
  4c63b2:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  4c63b9:	51                   	push   ecx
  4c63ba:	8b c8                	mov    ecx,eax
  4c63bc:	e8 af b9 f5 ff       	call   0x421d70
  4c63c1:	50                   	push   eax
  4c63c2:	8d 85 a0 f7 ff ff    	lea    eax,[ebp-0x860]
  4c63c8:	68 74 01 51 00       	push   0x510174
  4c63cd:	50                   	push   eax
  4c63ce:	e8 6d d5 f3 ff       	call   0x403940
  4c63d3:	83 c4 1c             	add    esp,0x1c
  4c63d6:	8b cc                	mov    ecx,esp
  4c63d8:	89 65 10             	mov    DWORD PTR [ebp+0x10],esp
  4c63db:	50                   	push   eax
  4c63dc:	e8 83 b6 00 00       	call   0x4d1a64
  4c63e1:	8b ce                	mov    ecx,esi
  4c63e3:	e8 a8 ca f5 ff       	call   0x422e90
  4c63e8:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  4c63eb:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c63f2:	e8 49 b6 00 00       	call   0x4d1a40
  4c63f7:	33 db                	xor    ebx,ebx

; Invocation hit puis notifs 0x45 et etat cible [0x4c63f9,0x4c64e7)
; Appel virtuel +0x3C (hit pour les classes pertinentes), diffusion BCObjectChanged, paquet 0x45; branche TrainUnit +0x130.
  4c63f9:	8b 16                	mov    edx,DWORD PTR [esi]
  4c63fb:	57                   	push   edi
  4c63fc:	8d 45 d4             	lea    eax,[ebp-0x2c]
  4c63ff:	50                   	push   eax
  4c6400:	8b ce                	mov    ecx,esi
  4c6402:	ff 52 3c             	call   DWORD PTR [edx+0x3c]
  4c6405:	83 f8 ff             	cmp    eax,0xffffffff
  4c6408:	75 3e                	jne    0x4c6448
  4c640a:	53                   	push   ebx
  4c640b:	8b ce                	mov    ecx,esi
  4c640d:	e8 ee 52 fc ff       	call   0x48b700
  4c6412:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6414:	50                   	push   eax
  4c6415:	8b ce                	mov    ecx,esi
  4c6417:	ff 92 b4 00 00 00    	call   DWORD PTR [edx+0xb4]
  4c641d:	8d 4d c8             	lea    ecx,[ebp-0x38]
  4c6420:	50                   	push   eax
  4c6421:	8b 06                	mov    eax,DWORD PTR [esi]
  4c6423:	6a 19                	push   0x19
  4c6425:	51                   	push   ecx
  4c6426:	8b ce                	mov    ecx,esi
  4c6428:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  4c642b:	8b 08                	mov    ecx,DWORD PTR [eax]
  4c642d:	83 ec 0c             	sub    esp,0xc
  4c6430:	8b d4                	mov    edx,esp
  4c6432:	89 0a                	mov    DWORD PTR [edx],ecx
  4c6434:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  4c6437:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4c643a:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  4c643d:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  4c6440:	e8 1b 97 f4 ff       	call   0x40fb60
  4c6445:	83 c4 1c             	add    esp,0x1c
  4c6448:	dd 45 d4             	fld    QWORD PTR [ebp-0x2c]
  4c644b:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  4c6451:	df e0                	fnstsw ax
  4c6453:	f6 c4 40             	test   ah,0x40
  4c6456:	75 65                	jne    0x4c64bd
  4c6458:	8d 4d ac             	lea    ecx,[ebp-0x54]
  4c645b:	e8 90 f9 fb ff       	call   0x485df0
  4c6460:	6a 45                	push   0x45
  4c6462:	8d 4d ac             	lea    ecx,[ebp-0x54]
  4c6465:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  4c646c:	e8 df fc fb ff       	call   0x486150
  4c6471:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6473:	8d 45 ac             	lea    eax,[ebp-0x54]
  4c6476:	50                   	push   eax
  4c6477:	8b ce                	mov    ecx,esi
  4c6479:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4c647f:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6481:	53                   	push   ebx
  4c6482:	8d 4d ac             	lea    ecx,[ebp-0x54]
  4c6485:	51                   	push   ecx
  4c6486:	6a 14                	push   0x14
  4c6488:	8d 45 a0             	lea    eax,[ebp-0x60]
  4c648b:	50                   	push   eax
  4c648c:	8b ce                	mov    ecx,esi
  4c648e:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4c6491:	8b 10                	mov    edx,DWORD PTR [eax]
  4c6493:	83 ec 0c             	sub    esp,0xc
  4c6496:	8b cc                	mov    ecx,esp
  4c6498:	89 11                	mov    DWORD PTR [ecx],edx
  4c649a:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c649d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4c64a0:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4c64a3:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4c64a6:	e8 45 96 f4 ff       	call   0x40faf0
  4c64ab:	83 c4 18             	add    esp,0x18
  4c64ae:	8d 4d ac             	lea    ecx,[ebp-0x54]
  4c64b1:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c64b8:	e8 c3 f9 fb ff       	call   0x485e80
  4c64bd:	8b 17                	mov    edx,DWORD PTR [edi]
  4c64bf:	8b cf                	mov    ecx,edi
  4c64c1:	ff 92 30 01 00 00    	call   DWORD PTR [edx+0x130]
  4c64c7:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4c64ca:	8b 01                	mov    eax,DWORD PTR [ecx]
  4c64cc:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4c64cf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c64d2:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c64d5:	5f                   	pop    edi
  4c64d6:	5e                   	pop    esi
  4c64d7:	f7 d8                	neg    eax
  4c64d9:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c64e0:	5b                   	pop    ebx
  4c64e1:	8b e5                	mov    esp,ebp
  4c64e3:	5d                   	pop    ebp
  4c64e4:	c2 14 00             	ret    0x14
