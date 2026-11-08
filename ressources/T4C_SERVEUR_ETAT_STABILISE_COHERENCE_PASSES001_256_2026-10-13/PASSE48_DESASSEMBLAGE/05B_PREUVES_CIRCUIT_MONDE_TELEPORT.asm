; PASSE 48 — WorldMap -> AreaSensitiveEffect -> Teleport
; SHA-256 du serveur: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Seules instructions x86 dont les octets correspondent a la section PE .text
; Extraction statique. Aucune execution du programme ne permet de conclure sur les chemins reels.

; WorldMap::add_effect — [0x4B0350,0x4B04AA[
; Construit des entrees de pas 0x44 et associe des AreaSensitiveEffect aux blocs du monde.
  4b0350:	55                   	push   ebp
  4b0351:	8b ec                	mov    ebp,esp
  4b0353:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4b0359:	6a ff                	push   0xffffffff
  4b035b:	68 6b c7 4d 00       	push   0x4dc76b
  4b0360:	50                   	push   eax
  4b0361:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4b0368:	53                   	push   ebx
  4b0369:	56                   	push   esi
  4b036a:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4b036d:	46                   	inc    esi
  4b036e:	8b d9                	mov    ebx,ecx
  4b0370:	8b 03                	mov    eax,DWORD PTR [ebx]
  4b0372:	89 75 10             	mov    DWORD PTR [ebp+0x10],esi
  4b0375:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  4b0378:	57                   	push   edi
  4b0379:	46                   	inc    esi
  4b037a:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4b037d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4b0380:	3b c6                	cmp    eax,esi
  4b0382:	0f 83 08 01 00 00    	jae    0x4b0490
  4b0388:	8b f8                	mov    edi,eax
  4b038a:	c1 e7 04             	shl    edi,0x4
  4b038d:	03 f8                	add    edi,eax
  4b038f:	c1 e7 02             	shl    edi,0x2
  4b0392:	2b f0                	sub    esi,eax
  4b0394:	89 75 0c             	mov    DWORD PTR [ebp+0xc],esi
  4b0397:	6a 14                	push   0x14
  4b0399:	e8 52 1c f9 ff       	call   0x441ff0
  4b039e:	83 c4 04             	add    esp,0x4
  4b03a1:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  4b03a4:	33 c9                	xor    ecx,ecx
  4b03a6:	3b c1                	cmp    eax,ecx
  4b03a8:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  4b03ab:	74 0c                	je     0x4b03b9
  4b03ad:	8b c8                	mov    ecx,eax
  4b03af:	e8 ac 58 f5 ff       	call   0x405c60
  4b03b4:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
  4b03b7:	eb 03                	jmp    0x4b03bc
  4b03b9:	89 4d 14             	mov    DWORD PTR [ebp+0x14],ecx
  4b03bc:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4b03bf:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  4b03c2:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  4b03c5:	51                   	push   ecx
  4b03c6:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4b03c9:	52                   	push   edx
  4b03ca:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4b03cd:	50                   	push   eax
  4b03ce:	51                   	push   ecx
  4b03cf:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  4b03d2:	52                   	push   edx
  4b03d3:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4b03da:	e8 c1 58 f5 ff       	call   0x405ca0
  4b03df:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  4b03e2:	8b 14 38             	mov    edx,DWORD PTR [eax+edi*1]
  4b03e5:	8d 0c 38             	lea    ecx,[eax+edi*1]
  4b03e8:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4b03eb:	8b 73 20             	mov    esi,DWORD PTR [ebx+0x20]
  4b03ee:	8b 44 3e 24          	mov    eax,DWORD PTR [esi+edi*1+0x24]
  4b03f2:	8b 54 3e 38          	mov    edx,DWORD PTR [esi+edi*1+0x38]
  4b03f6:	03 f7                	add    esi,edi
  4b03f8:	42                   	inc    edx
  4b03f9:	85 c0                	test   eax,eax
  4b03fb:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4b03fe:	c7 46 40 00 00 00 00 	mov    DWORD PTR [esi+0x40],0x0
  4b0405:	c6 46 34 08          	mov    BYTE PTR [esi+0x34],0x8
  4b0409:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  4b040c:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  4b040f:	6a 0c                	push   0xc
  4b0411:	75 2a                	jne    0x4b043d
  4b0413:	e8 d8 1b f9 ff       	call   0x441ff0
  4b0418:	33 c9                	xor    ecx,ecx
  4b041a:	83 c4 04             	add    esp,0x4
  4b041d:	3b c1                	cmp    eax,ecx
  4b041f:	74 07                	je     0x4b0428
  4b0421:	89 08                	mov    DWORD PTR [eax],ecx
  4b0423:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4b0426:	eb 02                	jmp    0x4b042a
  4b0428:	33 c0                	xor    eax,eax
  4b042a:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4b042d:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  4b0430:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4b0433:	89 08                	mov    DWORD PTR [eax],ecx
  4b0435:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  4b0438:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  4b043b:	eb 2e                	jmp    0x4b046b
  4b043d:	e8 ae 1b f9 ff       	call   0x441ff0
  4b0442:	33 c9                	xor    ecx,ecx
  4b0444:	83 c4 04             	add    esp,0x4
  4b0447:	3b c1                	cmp    eax,ecx
  4b0449:	74 07                	je     0x4b0452
  4b044b:	89 08                	mov    DWORD PTR [eax],ecx
  4b044d:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4b0450:	eb 02                	jmp    0x4b0454
  4b0452:	33 c0                	xor    eax,eax
  4b0454:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  4b0457:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  4b045a:	8b 56 2c             	mov    edx,DWORD PTR [esi+0x2c]
  4b045d:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  4b0460:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  4b0463:	89 10                	mov    DWORD PTR [eax],edx
  4b0465:	8b 46 20             	mov    eax,DWORD PTR [esi+0x20]
  4b0468:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4b046b:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  4b046e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4b0471:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  4b0474:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  4b0477:	8b 14 38             	mov    edx,DWORD PTR [eax+edi*1]
  4b047a:	8d 0c 38             	lea    ecx,[eax+edi*1]
  4b047d:	ff 52 08             	call   DWORD PTR [edx+0x8]
  4b0480:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4b0483:	83 c7 44             	add    edi,0x44
  4b0486:	48                   	dec    eax
  4b0487:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
  4b048a:	0f 85 07 ff ff ff    	jne    0x4b0397
  4b0490:	8b 03                	mov    eax,DWORD PTR [ebx]
  4b0492:	8b cb                	mov    ecx,ebx
  4b0494:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4b0497:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4b049a:	5f                   	pop    edi
  4b049b:	5e                   	pop    esi
  4b049c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4b04a3:	5b                   	pop    ebx
  4b04a4:	8b e5                	mov    esp,ebp
  4b04a6:	5d                   	pop    ebp
  4b04a7:	c2 1c 00             	ret    0x1c

; WorldMap::QueryEffects — [0x4B04B0,0x4B0558[
; Calcule offset de bloc (0x44), parcourt des entrees et appelle 0x405D00.
  4b04b0:	55                   	push   ebp
  4b04b1:	8b ec                	mov    ebp,esp
  4b04b3:	53                   	push   ebx
  4b04b4:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  4b04b7:	56                   	push   esi
  4b04b8:	8b f3                	mov    esi,ebx
  4b04ba:	c1 e6 04             	shl    esi,0x4
  4b04bd:	57                   	push   edi
  4b04be:	8b f9                	mov    edi,ecx
  4b04c0:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  4b04c3:	03 f3                	add    esi,ebx
  4b04c5:	c1 e6 02             	shl    esi,0x2
  4b04c8:	8b 14 30             	mov    edx,DWORD PTR [eax+esi*1]
  4b04cb:	8d 0c 30             	lea    ecx,[eax+esi*1]
  4b04ce:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4b04d1:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  4b04d4:	8b 4c 30 24          	mov    ecx,DWORD PTR [eax+esi*1+0x24]
  4b04d8:	03 c6                	add    eax,esi
  4b04da:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4b04dd:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  4b04e4:	c6 40 34 08          	mov    BYTE PTR [eax+0x34],0x8
  4b04e8:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  4b04eb:	8b 4c 30 40          	mov    ecx,DWORD PTR [eax+esi*1+0x40]
  4b04ef:	03 c6                	add    eax,esi
  4b04f1:	85 c9                	test   ecx,ecx
  4b04f3:	74 0a                	je     0x4b04ff
  4b04f5:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  4b04f8:	8b 0a                	mov    ecx,DWORD PTR [edx]
  4b04fa:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  4b04fd:	eb 07                	jmp    0x4b0506
  4b04ff:	c7 40 40 01 00 00 00 	mov    DWORD PTR [eax+0x40],0x1
  4b0506:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  4b0509:	85 c9                	test   ecx,ecx
  4b050b:	74 28                	je     0x4b0535
  4b050d:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4b0510:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4b0513:	52                   	push   edx
  4b0514:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4b0517:	83 ec 0c             	sub    esp,0xc
  4b051a:	8b c4                	mov    eax,esp
  4b051c:	89 08                	mov    DWORD PTR [eax],ecx
  4b051e:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  4b0521:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  4b0524:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  4b0527:	8b 4c 30 20          	mov    ecx,DWORD PTR [eax+esi*1+0x20]
  4b052b:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
  4b052e:	e8 cd 57 f5 ff       	call   0x405d00
  4b0533:	eb b3                	jmp    0x4b04e8
  4b0535:	8b 48 40             	mov    ecx,DWORD PTR [eax+0x40]
  4b0538:	85 c9                	test   ecx,ecx
  4b053a:	74 04                	je     0x4b0540
  4b053c:	c6 40 34 07          	mov    BYTE PTR [eax+0x34],0x7
  4b0540:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
  4b0547:	8b 57 20             	mov    edx,DWORD PTR [edi+0x20]
  4b054a:	8b 04 32             	mov    eax,DWORD PTR [edx+esi*1]
  4b054d:	8d 0c 32             	lea    ecx,[edx+esi*1]
  4b0550:	ff 50 08             	call   DWORD PTR [eax+0x8]
  4b0553:	5f                   	pop    edi
  4b0554:	5e                   	pop    esi
  4b0555:	5b                   	pop    ebx
  4b0556:	5d                   	pop    ebp
  4b0557:	c2 10 00             	ret    0x10

; Unit::Teleport — [0x48BEA0,0x48C1AF[
; Vérifie des coordonnees de carte et traite trois branches: succes, changement de contexte et echec.
  48bea0:	55                   	push   ebp
  48bea1:	8b ec                	mov    ebp,esp
  48bea3:	6a ff                	push   0xffffffff
  48bea5:	68 b0 a6 4d 00       	push   0x4da6b0
  48beaa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  48beb0:	50                   	push   eax
  48beb1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  48beb8:	83 ec 30             	sub    esp,0x30
  48bebb:	53                   	push   ebx
  48bebc:	56                   	push   esi
  48bebd:	8b f1                	mov    esi,ecx
  48bebf:	8b 06                	mov    eax,DWORD PTR [esi]
  48bec1:	57                   	push   edi
  48bec2:	8d 4d dc             	lea    ecx,[ebp-0x24]
  48bec5:	51                   	push   ecx
  48bec6:	8b ce                	mov    ecx,esi
  48bec8:	ff 50 1c             	call   DWORD PTR [eax+0x1c]
  48becb:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  48bece:	52                   	push   edx
  48becf:	e8 ec 5f fe ff       	call   0x471ec0
  48bed4:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  48bed7:	57                   	push   edi
  48bed8:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  48bedb:	e8 e0 5f fe ff       	call   0x471ec0
  48bee0:	6a 05                	push   0x5
  48bee2:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  48bee5:	e8 26 5e fe ff       	call   0x471d10
  48beea:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  48beed:	83 c4 0c             	add    esp,0xc
  48bef0:	85 c0                	test   eax,eax
  48bef2:	74 5a                	je     0x48bf4e
  48bef4:	8b 1e                	mov    ebx,DWORD PTR [esi]
  48bef6:	e8 65 1b fb ff       	call   0x43da60
  48befb:	8b ce                	mov    ecx,esi
  48befd:	50                   	push   eax
  48befe:	8d 45 e8             	lea    eax,[ebp-0x18]
  48bf01:	50                   	push   eax
  48bf02:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  48bf05:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48bf08:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  48bf0b:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  48bf0e:	8b 00                	mov    eax,DWORD PTR [eax]
  48bf10:	56                   	push   esi
  48bf11:	57                   	push   edi
  48bf12:	51                   	push   ecx
  48bf13:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  48bf16:	53                   	push   ebx
  48bf17:	52                   	push   edx
  48bf18:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  48bf1b:	51                   	push   ecx
  48bf1c:	52                   	push   edx
  48bf1d:	50                   	push   eax
  48bf1e:	68 dc dc 50 00       	push   0x50dcdc
  48bf23:	6a 04                	push   0x4
  48bf25:	6a 05                	push   0x5
  48bf27:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  48bf2e:	e8 dd 5d fe ff       	call   0x471d10
  48bf33:	83 c4 04             	add    esp,0x4
  48bf36:	50                   	push   eax
  48bf37:	e8 b4 2b 04 00       	call   0x4ceaf0
  48bf3c:	83 c4 2c             	add    esp,0x2c
  48bf3f:	8d 4d e8             	lea    ecx,[ebp-0x18]
  48bf42:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48bf49:	e8 f2 5a 04 00       	call   0x4d1a40
  48bf4e:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  48bf51:	8d 4e 30             	lea    ecx,[esi+0x30]
  48bf54:	89 4d e8             	mov    DWORD PTR [ebp-0x18],ecx
  48bf57:	ff 50 04             	call   DWORD PTR [eax+0x4]
  48bf5a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  48bf5d:	85 c0                	test   eax,eax
  48bf5f:	0f 84 2e 02 00 00    	je     0x48c193
  48bf65:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48bf68:	85 c9                	test   ecx,ecx
  48bf6a:	0f 84 23 02 00 00    	je     0x48c193
  48bf70:	33 d2                	xor    edx,edx
  48bf72:	66 8b 50 2c          	mov    dx,WORD PTR [eax+0x2c]
  48bf76:	39 55 dc             	cmp    DWORD PTR [ebp-0x24],edx
  48bf79:	0f 8d 14 02 00 00    	jge    0x48c193
  48bf7f:	33 d2                	xor    edx,edx
  48bf81:	66 8b 50 2e          	mov    dx,WORD PTR [eax+0x2e]
  48bf85:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
  48bf88:	3b c2                	cmp    eax,edx
  48bf8a:	0f 8d 03 02 00 00    	jge    0x48c193
  48bf90:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
  48bf93:	85 d2                	test   edx,edx
  48bf95:	0f 8c f8 01 00 00    	jl     0x48c193
  48bf9b:	85 c0                	test   eax,eax
  48bf9d:	0f 8c f0 01 00 00    	jl     0x48c193
  48bfa3:	33 c0                	xor    eax,eax
  48bfa5:	66 8b 41 2c          	mov    ax,WORD PTR [ecx+0x2c]
  48bfa9:	3b d8                	cmp    ebx,eax
  48bfab:	0f 8d e2 01 00 00    	jge    0x48c193
  48bfb1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  48bfb4:	33 d2                	xor    edx,edx
  48bfb6:	66 8b 51 2e          	mov    dx,WORD PTR [ecx+0x2e]
  48bfba:	3b c2                	cmp    eax,edx
  48bfbc:	0f 8d d1 01 00 00    	jge    0x48c193
  48bfc2:	85 db                	test   ebx,ebx
  48bfc4:	0f 8c c9 01 00 00    	jl     0x48c193
  48bfca:	85 c0                	test   eax,eax
  48bfcc:	0f 8c c1 01 00 00    	jl     0x48c193
  48bfd2:	8b 16                	mov    edx,DWORD PTR [esi]
  48bfd4:	83 ec 0c             	sub    esp,0xc
  48bfd7:	8b cc                	mov    ecx,esp
  48bfd9:	89 19                	mov    DWORD PTR [ecx],ebx
  48bfdb:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  48bfde:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  48bfe1:	8b ce                	mov    ecx,esi
  48bfe3:	ff 92 78 01 00 00    	call   DWORD PTR [edx+0x178]
  48bfe9:	8b 46 78             	mov    eax,DWORD PTR [esi+0x78]
  48bfec:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  48bfef:	50                   	push   eax
  48bff0:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  48bff3:	83 ec 0c             	sub    esp,0xc
  48bff6:	8b d4                	mov    edx,esp
  48bff8:	89 02                	mov    DWORD PTR [edx],eax
  48bffa:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  48bffd:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  48c000:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  48c003:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  48c006:	e8 85 50 02 00       	call   0x4b1090
  48c00b:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48c00e:	8b 16                	mov    edx,DWORD PTR [esi]
  48c010:	83 ec 0c             	sub    esp,0xc
  48c013:	8b c4                	mov    eax,esp
  48c015:	89 18                	mov    DWORD PTR [eax],ebx
  48c017:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  48c01a:	8b ce                	mov    ecx,esi
  48c01c:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
  48c01f:	ff 52 20             	call   DWORD PTR [edx+0x20]
  48c022:	8b 46 78             	mov    eax,DWORD PTR [esi+0x78]
  48c025:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
  48c028:	6a 00                	push   0x0
  48c02a:	50                   	push   eax
  48c02b:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
  48c02e:	6a 14                	push   0x14
  48c030:	83 ec 0c             	sub    esp,0xc
  48c033:	8b d4                	mov    edx,esp
  48c035:	89 02                	mov    DWORD PTR [edx],eax
  48c037:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
  48c03a:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  48c03d:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  48c040:	e8 bb 3b f8 ff       	call   0x40fc00
  48c045:	8a 46 73             	mov    al,BYTE PTR [esi+0x73]
  48c048:	83 c4 18             	add    esp,0x18
  48c04b:	3c 01                	cmp    al,0x1
  48c04d:	0f 85 ee 00 00 00    	jne    0x48c141
  48c053:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  48c056:	e8 95 9d ff ff       	call   0x485df0
  48c05b:	6a 39                	push   0x39
  48c05d:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  48c060:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  48c067:	e8 e4 a0 ff ff       	call   0x486150
  48c06c:	53                   	push   ebx
  48c06d:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  48c070:	e8 db a0 ff ff       	call   0x486150
  48c075:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  48c078:	51                   	push   ecx
  48c079:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  48c07c:	e8 cf a0 ff ff       	call   0x486150
  48c081:	57                   	push   edi
  48c082:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  48c085:	e8 c6 a0 ff ff       	call   0x486150
  48c08a:	8b 16                	mov    edx,DWORD PTR [esi]
  48c08c:	8d 45 c4             	lea    eax,[ebp-0x3c]
  48c08f:	50                   	push   eax
  48c090:	8b ce                	mov    ecx,esi
  48c092:	ff 92 4c 01 00 00    	call   DWORD PTR [edx+0x14c]
  48c098:	8b ce                	mov    ecx,esi
  48c09a:	e8 51 ea f8 ff       	call   0x41aaf0
  48c09f:	85 c0                	test   eax,eax
  48c0a1:	74 36                	je     0x48c0d9
  48c0a3:	8b c8                	mov    ecx,eax
  48c0a5:	c7 40 44 00 00 00 00 	mov    DWORD PTR [eax+0x44],0x0
  48c0ac:	c7 40 48 01 00 00 00 	mov    DWORD PTR [eax+0x48],0x1
  48c0b3:	e8 28 8a fc ff       	call   0x454ae0
  48c0b8:	83 e0 02             	and    eax,0x2
  48c0bb:	33 c9                	xor    ecx,ecx
  48c0bd:	0b c1                	or     eax,ecx
  48c0bf:	75 18                	jne    0x48c0d9
  48c0c1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  48c0c4:	83 ec 0c             	sub    esp,0xc
  48c0c7:	8b cc                	mov    ecx,esp
  48c0c9:	89 19                	mov    DWORD PTR [ecx],ebx
  48c0cb:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  48c0ce:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  48c0d1:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48c0d4:	e8 17 65 02 00       	call   0x4b25f0
  48c0d9:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  48c0dc:	e8 df 9d ff ff       	call   0x485ec0
  48c0e1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  48c0e4:	56                   	push   esi
  48c0e5:	6a 14                	push   0x14
  48c0e7:	8d 45 c4             	lea    eax,[ebp-0x3c]
  48c0ea:	50                   	push   eax
  48c0eb:	83 ec 0c             	sub    esp,0xc
  48c0ee:	8b cc                	mov    ecx,esp
  48c0f0:	89 19                	mov    DWORD PTR [ecx],ebx
  48c0f2:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  48c0f5:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  48c0f8:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48c0fb:	e8 40 4b 02 00       	call   0x4b0c40
  48c100:	85 c0                	test   eax,eax
  48c102:	7e 0e                	jle    0x48c112
  48c104:	8b 06                	mov    eax,DWORD PTR [esi]
  48c106:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  48c109:	51                   	push   ecx
  48c10a:	8b ce                	mov    ecx,esi
  48c10c:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  48c112:	8d 4d c4             	lea    ecx,[ebp-0x3c]
  48c115:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  48c11c:	e8 5f 9d ff ff       	call   0x485e80
  48c121:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  48c124:	8b 01                	mov    eax,DWORD PTR [ecx]
  48c126:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48c129:	b8 01 00 00 00       	mov    eax,0x1
  48c12e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48c131:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48c138:	5f                   	pop    edi
  48c139:	5e                   	pop    esi
  48c13a:	5b                   	pop    ebx
  48c13b:	8b e5                	mov    esp,ebp
  48c13d:	5d                   	pop    ebp
  48c13e:	c2 10 00             	ret    0x10
  48c141:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  48c144:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  48c147:	56                   	push   esi
  48c148:	83 ec 0c             	sub    esp,0xc
  48c14b:	8b d4                	mov    edx,esp
  48c14d:	89 1a                	mov    DWORD PTR [edx],ebx
  48c14f:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  48c152:	89 7a 08             	mov    DWORD PTR [edx+0x8],edi
  48c155:	e8 b6 2f 02 00       	call   0x4af110
  48c15a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  48c15d:	6a 01                	push   0x1
  48c15f:	83 ec 0c             	sub    esp,0xc
  48c162:	8b cc                	mov    ecx,esp
  48c164:	89 19                	mov    DWORD PTR [ecx],ebx
  48c166:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  48c169:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  48c16c:	8b ce                	mov    ecx,esi
  48c16e:	e8 6d 36 00 00       	call   0x48f7e0
  48c173:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  48c176:	8b 01                	mov    eax,DWORD PTR [ecx]
  48c178:	ff 50 08             	call   DWORD PTR [eax+0x8]
  48c17b:	b8 01 00 00 00       	mov    eax,0x1
  48c180:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48c183:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48c18a:	5f                   	pop    edi
  48c18b:	5e                   	pop    esi
  48c18c:	5b                   	pop    ebx
  48c18d:	8b e5                	mov    esp,ebp
  48c18f:	5d                   	pop    ebp
  48c190:	c2 10 00             	ret    0x10
  48c193:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  48c196:	8b 11                	mov    edx,DWORD PTR [ecx]
  48c198:	ff 52 08             	call   DWORD PTR [edx+0x8]
  48c19b:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  48c19e:	5f                   	pop    edi
  48c19f:	5e                   	pop    esi
  48c1a0:	33 c0                	xor    eax,eax
  48c1a2:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  48c1a9:	5b                   	pop    ebx
  48c1aa:	8b e5                	mov    esp,ebp
  48c1ac:	5d                   	pop    ebp
  48c1ad:	c2 10 00             	ret    0x10
