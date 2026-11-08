; PASSE52 — preuve assembleur du binaire original 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Intervalles semi-ouverts, extraits relus semantiquement ; aucune zone de table en octets assimilee a du code

; [0x40a55b,0x40a61f) — Passage chaine/contexte, consultation du parseur et decrement conditionnel d un octet lie a un resultat
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

; [0x40c085,0x40c114) — Repli x87 et calcul spatial: deux composantes, differences absolues, carres et fsqrt
  40c085:	dd 05 30 e6 4d 00    	fld    QWORD PTR ds:0x4de630
  40c08b:	5f                   	pop    edi
  40c08c:	5e                   	pop    esi
  40c08d:	5b                   	pop    ebx
  40c08e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c091:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c098:	8b e5                	mov    esp,ebp
  40c09a:	5d                   	pop    ebp
  40c09b:	c2 28 00             	ret    0x28
  40c09e:	8b 17                	mov    edx,DWORD PTR [edi]
  40c0a0:	8d 45 dc             	lea    eax,[ebp-0x24]
  40c0a3:	50                   	push   eax
  40c0a4:	8b cf                	mov    ecx,edi
  40c0a6:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0a9:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  40c0ac:	8b 13                	mov    edx,DWORD PTR [ebx]
  40c0ae:	8b f0                	mov    esi,eax
  40c0b0:	8d 45 d0             	lea    eax,[ebp-0x30]
  40c0b3:	50                   	push   eax
  40c0b4:	8b cb                	mov    ecx,ebx
  40c0b6:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0b9:	8b 16                	mov    edx,DWORD PTR [esi]
  40c0bb:	8b 00                	mov    eax,DWORD PTR [eax]
  40c0bd:	2b c2                	sub    eax,edx
  40c0bf:	99                   	cdq
  40c0c0:	8b f0                	mov    esi,eax
  40c0c2:	33 f2                	xor    esi,edx
  40c0c4:	8d 45 c4             	lea    eax,[ebp-0x3c]
  40c0c7:	2b f2                	sub    esi,edx
  40c0c9:	8b 13                	mov    edx,DWORD PTR [ebx]
  40c0cb:	50                   	push   eax
  40c0cc:	8b cb                	mov    ecx,ebx
  40c0ce:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0d1:	8b 17                	mov    edx,DWORD PTR [edi]
  40c0d3:	8b d8                	mov    ebx,eax
  40c0d5:	8d 45 b8             	lea    eax,[ebp-0x48]
  40c0d8:	50                   	push   eax
  40c0d9:	8b cf                	mov    ecx,edi
  40c0db:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  40c0de:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  40c0e1:	8b 4b 04             	mov    ecx,DWORD PTR [ebx+0x4]
  40c0e4:	2b ca                	sub    ecx,edx
  40c0e6:	8b c1                	mov    eax,ecx
  40c0e8:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  40c0eb:	99                   	cdq
  40c0ec:	33 c2                	xor    eax,edx
  40c0ee:	2b c2                	sub    eax,edx
  40c0f0:	8b d0                	mov    edx,eax
  40c0f2:	0f af d0             	imul   edx,eax
  40c0f5:	8b c6                	mov    eax,esi
  40c0f7:	0f af c6             	imul   eax,esi
  40c0fa:	03 d0                	add    edx,eax
  40c0fc:	89 55 10             	mov    DWORD PTR [ebp+0x10],edx
  40c0ff:	5f                   	pop    edi
  40c100:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  40c103:	5e                   	pop    esi
  40c104:	5b                   	pop    ebx
  40c105:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  40c10c:	d9 fa                	fsqrt
  40c10e:	8b e5                	mov    esp,ebp
  40c110:	5d                   	pop    ebp
  40c111:	c2 28 00             	ret    0x28

