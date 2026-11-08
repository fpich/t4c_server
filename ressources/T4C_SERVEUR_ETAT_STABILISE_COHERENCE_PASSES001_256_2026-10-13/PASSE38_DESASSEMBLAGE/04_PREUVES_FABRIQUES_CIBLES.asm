; Passe 38, analyse statique de T4C Server(1).exe SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Adresses x86, cote stop exclusif; preuves selectionnees pour des contrats documentes, pas des dumps aveugles.

; Famille de cle 7: sous objet alloue 0x160 et initialisation  [0x4C72D0,0x4C732C)  28 instructions
  4c72d0:	55                   	push   ebp
  4c72d1:	8b ec                	mov    ebp,esp
  4c72d3:	6a ff                	push   0xffffffff
  4c72d5:	68 9b da 4d 00       	push   0x4dda9b
  4c72da:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c72e0:	50                   	push   eax
  4c72e1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c72e8:	51                   	push   ecx
  4c72e9:	68 60 01 00 00       	push   0x160
  4c72ee:	e8 fd ac f7 ff       	call   0x441ff0
  4c72f3:	83 c4 04             	add    esp,0x4
  4c72f6:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  4c72f9:	85 c0                	test   eax,eax
  4c72fb:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c7302:	74 09                	je     0x4c730d
  4c7304:	8b c8                	mov    ecx,eax
  4c7306:	e8 45 fd ff ff       	call   0x4c7050
  4c730b:	eb 02                	jmp    0x4c730f
  4c730d:	33 c0                	xor    eax,eax
  4c730f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c7312:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c7315:	8b 89 ac 03 00 00    	mov    ecx,DWORD PTR [ecx+0x3ac]
  4c731b:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c731e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c7321:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c7328:	8b e5                	mov    esp,ebp
  4c732a:	5d                   	pop    ebp
  4c732b:	c3                   	ret

; Constructeur associe a cle 7: sous objets a +0x10,+0x80,+0xF0  [0x4C7050,0x4C70B5)  28 instructions
  4c7050:	55                   	push   ebp
  4c7051:	8b ec                	mov    ebp,esp
  4c7053:	6a ff                	push   0xffffffff
  4c7055:	68 29 da 4d 00       	push   0x4dda29
  4c705a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c7060:	50                   	push   eax
  4c7061:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c7068:	51                   	push   ecx
  4c7069:	56                   	push   esi
  4c706a:	8b f1                	mov    esi,ecx
  4c706c:	8d 4e 10             	lea    ecx,[esi+0x10]
  4c706f:	89 75 f0             	mov    DWORD PTR [ebp-0x10],esi
  4c7072:	c7 06 d4 e5 4d 00    	mov    DWORD PTR [esi],0x4de5d4
  4c7078:	e8 43 26 f4 ff       	call   0x4096c0
  4c707d:	8d 8e 80 00 00 00    	lea    ecx,[esi+0x80]
  4c7083:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c708a:	e8 31 26 f4 ff       	call   0x4096c0
  4c708f:	8d 8e f0 00 00 00    	lea    ecx,[esi+0xf0]
  4c7095:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  4c7099:	e8 22 26 f4 ff       	call   0x4096c0
  4c709e:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c70a1:	c7 06 e8 fd 4d 00    	mov    DWORD PTR [esi],0x4dfde8
  4c70a7:	8b c6                	mov    eax,esi
  4c70a9:	5e                   	pop    esi
  4c70aa:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c70b1:	8b e5                	mov    esp,ebp
  4c70b3:	5d                   	pop    ebp
  4c70b4:	c3                   	ret

; Destructeur de famille cle 7  [0x4C70C0,0x4C70DE)  13 instructions
  4c70c0:	55                   	push   ebp
  4c70c1:	8b ec                	mov    ebp,esp
  4c70c3:	56                   	push   esi
  4c70c4:	8b f1                	mov    esi,ecx
  4c70c6:	e8 25 00 00 00       	call   0x4c70f0
  4c70cb:	f6 45 08 01          	test   BYTE PTR [ebp+0x8],0x1
  4c70cf:	74 09                	je     0x4c70da
  4c70d1:	56                   	push   esi
  4c70d2:	e8 89 af f7 ff       	call   0x442060
  4c70d7:	83 c4 04             	add    esp,0x4
  4c70da:	8b c6                	mov    eax,esi
  4c70dc:	5e                   	pop    esi
  4c70dd:	5d                   	pop    ebp

; Exemple fabrique cible de cle 11  [0x4C7430,0x4C748D)  37 instructions
  4c7430:	55                   	push   ebp
  4c7431:	8b ec                	mov    ebp,esp
  4c7433:	6a 0c                	push   0xc
  4c7435:	e8 b6 ab f7 ff       	call   0x441ff0
  4c743a:	83 c4 04             	add    esp,0x4
  4c743d:	85 c0                	test   eax,eax
  4c743f:	74 18                	je     0x4c7459
  4c7441:	8b c8                	mov    ecx,eax
  4c7443:	e8 e8 fe ff ff       	call   0x4c7330
  4c7448:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c744b:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c744e:	8b 89 ac 03 00 00    	mov    ecx,DWORD PTR [ecx+0x3ac]
  4c7454:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c7457:	5d                   	pop    ebp
  4c7458:	c3                   	ret
  4c7459:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c745c:	33 c0                	xor    eax,eax
  4c745e:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  4c7461:	8b 89 ac 03 00 00    	mov    ecx,DWORD PTR [ecx+0x3ac]
  4c7467:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c746a:	5d                   	pop    ebp
  4c746b:	c3                   	ret
  4c746c:	90                   	nop
  4c746d:	90                   	nop
  4c746e:	90                   	nop
  4c746f:	90                   	nop
  4c7470:	55                   	push   ebp
  4c7471:	8b ec                	mov    ebp,esp
  4c7473:	6a ff                	push   0xffffffff
  4c7475:	68 bb da 4d 00       	push   0x4ddabb
  4c747a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c7480:	50                   	push   eax
  4c7481:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c7488:	51                   	push   ecx
  4c7489:	56                   	push   esi
  4c748a:	8b f1                	mov    esi,ecx
  4c748c:	8d                   	.byte 0x8d

; Autre fabrique cible cle 15: attribution d un identifiant depuis +0x3ac  [0x4C6FD0,0x4C7044)  34 instructions
  4c6fd0:	55                   	push   ebp
  4c6fd1:	8b ec                	mov    ebp,esp
  4c6fd3:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c6fd9:	6a ff                	push   0xffffffff
  4c6fdb:	68 fb d9 4d 00       	push   0x4dd9fb
  4c6fe0:	50                   	push   eax
  4c6fe1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c6fe8:	56                   	push   esi
  4c6fe9:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  4c6fec:	8b 86 ac 03 00 00    	mov    eax,DWORD PTR [esi+0x3ac]
  4c6ff2:	68 e0 6b 4c 00       	push   0x4c6be0
  4c6ff7:	50                   	push   eax
  4c6ff8:	e8 13 9b fc ff       	call   0x490b10
  4c6ffd:	68 88 00 00 00       	push   0x88
  4c7002:	e8 e9 af f7 ff       	call   0x441ff0
  4c7007:	83 c4 0c             	add    esp,0xc
  4c700a:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c700d:	85 c0                	test   eax,eax
  4c700f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c7016:	74 09                	je     0x4c7021
  4c7018:	8b c8                	mov    ecx,eax
  4c701a:	e8 41 f9 ff ff       	call   0x4c6960
  4c701f:	eb 02                	jmp    0x4c7023
  4c7021:	33 c0                	xor    eax,eax
  4c7023:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  4c7026:	8b 8e ac 03 00 00    	mov    ecx,DWORD PTR [esi+0x3ac]
  4c702c:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  4c702f:	ff 86 ac 03 00 00    	inc    DWORD PTR [esi+0x3ac]
  4c7035:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c7038:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c703f:	5e                   	pop    esi
  4c7040:	8b e5                	mov    esp,ebp
  4c7042:	5d                   	pop    ebp
  4c7043:	c3                   	ret

