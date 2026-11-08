; PASSE 50 — Effet type 1 — calcul des PV, clamp GetMaxHP, SetHP et paquets
; T4C Server(1).exe SHA256: 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions x86-32 et octets exacts compares a la section .text serveur.
; Les ranges sont semi-ouvertes [debut,fin) et ne prouvent pas la couverture de toutes les branches.

; GetHP, calcul en virgule flottante et conversion [0x4c64f0,0x4c6540)
; Routine de traitement du second signe : GetHP par slot +0xD8, addition valeur arrondie, puis gardes.
  4c64f0:	55                   	push   ebp
  4c64f1:	8b ec                	mov    ebp,esp
  4c64f3:	6a ff                	push   0xffffffff
  4c64f5:	68 78 d9 4d 00       	push   0x4dd978
  4c64fa:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c6500:	50                   	push   eax
  4c6501:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c6508:	81 ec 28 08 00 00    	sub    esp,0x828
  4c650e:	53                   	push   ebx
  4c650f:	56                   	push   esi
  4c6510:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  4c6513:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  4c6516:	8d 4e 30             	lea    ecx,[esi+0x30]
  4c6519:	57                   	push   edi
  4c651a:	ff 50 04             	call   DWORD PTR [eax+0x4]
  4c651d:	dd 45 14             	fld    QWORD PTR [ebp+0x14]
  4c6520:	e8 55 b8 00 00       	call   0x4d1d7a
  4c6525:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6527:	8b f8                	mov    edi,eax
  4c6529:	8b ce                	mov    ecx,esi
  4c652b:	89 7d f0             	mov    DWORD PTR [ebp-0x10],edi
  4c652e:	ff 92 d8 00 00 00    	call   DWORD PTR [edx+0xd8]
  4c6534:	8b d8                	mov    ebx,eax
  4c6536:	03 df                	add    ebx,edi
  4c6538:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  4c653b:	8b cf                	mov    ecx,edi
  4c653d:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx

; Messages conditionnels selon la cible [0x4c6540,0x4c667d)
; Branche selon GetType et flags du joueur; sorties MFC/string; aucun envoi systematique de message de chat.
  4c6540:	e8 2b 51 fc ff       	call   0x48b670
  4c6545:	3c 01                	cmp    al,0x1
  4c6547:	0f 85 91 00 00 00    	jne    0x4c65de
  4c654d:	8b cf                	mov    ecx,edi
  4c654f:	e8 9c 45 f5 ff       	call   0x41aaf0
  4c6554:	85 c0                	test   eax,eax
  4c6556:	0f 84 21 01 00 00    	je     0x4c667d
  4c655c:	8b c8                	mov    ecx,eax
  4c655e:	e8 7d e5 f8 ff       	call   0x454ae0
  4c6563:	25 00 00 00 80       	and    eax,0x80000000
  4c6568:	33 c9                	xor    ecx,ecx
  4c656a:	0b c1                	or     eax,ecx
  4c656c:	0f 84 0b 01 00 00    	je     0x4c667d
  4c6572:	8b 1e                	mov    ebx,DWORD PTR [esi]
  4c6574:	88 8d cc f7 ff ff    	mov    BYTE PTR [ebp-0x834],cl
  4c657a:	e8 e1 74 f7 ff       	call   0x43da60
  4c657f:	8b ce                	mov    ecx,esi
  4c6581:	50                   	push   eax
  4c6582:	8d 45 08             	lea    eax,[ebp+0x8]
  4c6585:	50                   	push   eax
  4c6586:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  4c6589:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4c658c:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4c658f:	51                   	push   ecx
  4c6590:	52                   	push   edx
  4c6591:	8b c8                	mov    ecx,eax
  4c6593:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c659a:	e8 d1 b7 f5 ff       	call   0x421d70
  4c659f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4c65a2:	50                   	push   eax
  4c65a3:	33 c0                	xor    eax,eax
  4c65a5:	66 8b 01             	mov    ax,WORD PTR [ecx]
  4c65a8:	8d 95 cc f7 ff ff    	lea    edx,[ebp-0x834]
  4c65ae:	50                   	push   eax
  4c65af:	68 24 02 51 00       	push   0x510224
  4c65b4:	52                   	push   edx
  4c65b5:	e8 86 d3 f3 ff       	call   0x403940
  4c65ba:	83 c4 14             	add    esp,0x14
  4c65bd:	8b cc                	mov    ecx,esp
  4c65bf:	89 65 10             	mov    DWORD PTR [ebp+0x10],esp
  4c65c2:	50                   	push   eax
  4c65c3:	e8 9c b4 00 00       	call   0x4d1a64
  4c65c8:	8b cf                	mov    ecx,edi
  4c65ca:	e8 c1 c8 f5 ff       	call   0x422e90
  4c65cf:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c65d6:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4c65d9:	e9 97 00 00 00       	jmp    0x4c6675
  4c65de:	8b ce                	mov    ecx,esi
  4c65e0:	e8 8b 50 fc ff       	call   0x48b670
  4c65e5:	3c 01                	cmp    al,0x1
  4c65e7:	0f 85 90 00 00 00    	jne    0x4c667d
  4c65ed:	8b ce                	mov    ecx,esi
  4c65ef:	e8 fc 44 f5 ff       	call   0x41aaf0
  4c65f4:	85 c0                	test   eax,eax
  4c65f6:	0f 84 81 00 00 00    	je     0x4c667d
  4c65fc:	8b c8                	mov    ecx,eax
  4c65fe:	e8 dd e4 f8 ff       	call   0x454ae0
  4c6603:	25 00 00 00 80       	and    eax,0x80000000
  4c6608:	33 c9                	xor    ecx,ecx
  4c660a:	0b c1                	or     eax,ecx
  4c660c:	74 6f                	je     0x4c667d
  4c660e:	8b 1f                	mov    ebx,DWORD PTR [edi]
  4c6610:	88 8d cc f7 ff ff    	mov    BYTE PTR [ebp-0x834],cl
  4c6616:	e8 45 74 f7 ff       	call   0x43da60
  4c661b:	8b cf                	mov    ecx,edi
  4c661d:	50                   	push   eax
  4c661e:	8d 45 08             	lea    eax,[ebp+0x8]
  4c6621:	50                   	push   eax
  4c6622:	ff 53 48             	call   DWORD PTR [ebx+0x48]
  4c6625:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  4c6628:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  4c662b:	51                   	push   ecx
  4c662c:	52                   	push   edx
  4c662d:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c6630:	33 c9                	xor    ecx,ecx
  4c6632:	66 8b 0a             	mov    cx,WORD PTR [edx]
  4c6635:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [ebp-0x4],0x1
  4c663c:	51                   	push   ecx
  4c663d:	8b c8                	mov    ecx,eax
  4c663f:	e8 2c b7 f5 ff       	call   0x421d70
  4c6644:	50                   	push   eax
  4c6645:	8d 85 cc f7 ff ff    	lea    eax,[ebp-0x834]
  4c664b:	68 f4 01 51 00       	push   0x5101f4
  4c6650:	50                   	push   eax
  4c6651:	e8 ea d2 f3 ff       	call   0x403940
  4c6656:	83 c4 14             	add    esp,0x14
  4c6659:	8b cc                	mov    ecx,esp
  4c665b:	89 65 10             	mov    DWORD PTR [ebp+0x10],esp
  4c665e:	50                   	push   eax
  4c665f:	e8 00 b4 00 00       	call   0x4d1a64
  4c6664:	8b ce                	mov    ecx,esi
  4c6666:	e8 25 c8 f5 ff       	call   0x422e90
  4c666b:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c6672:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4c6675:	e8 c6 b3 00 00       	call   0x4d1a40
  4c667a:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]

; Borne maximum et appel SetHP [0x4c667d,0x4c66b8)
; GetMaxHP +0xCC, comparaison de valeur calculee, SetHP +0xDC avec notify=1.
  4c667d:	8b 16                	mov    edx,DWORD PTR [esi]
  4c667f:	8b ce                	mov    ecx,esi
  4c6681:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  4c6687:	3b d8                	cmp    ebx,eax
  4c6689:	7c 17                	jl     0x4c66a2
  4c668b:	8b 3e                	mov    edi,DWORD PTR [esi]
  4c668d:	6a 01                	push   0x1
  4c668f:	8b ce                	mov    ecx,esi
  4c6691:	ff 97 cc 00 00 00    	call   DWORD PTR [edi+0xcc]
  4c6697:	50                   	push   eax
  4c6698:	8b ce                	mov    ecx,esi
  4c669a:	ff 97 dc 00 00 00    	call   DWORD PTR [edi+0xdc]
  4c66a0:	eb 0d                	jmp    0x4c66af
  4c66a2:	8b 06                	mov    eax,DWORD PTR [esi]
  4c66a4:	6a 01                	push   0x1
  4c66a6:	53                   	push   ebx
  4c66a7:	8b ce                	mov    ecx,esi
  4c66a9:	ff 90 dc 00 00 00    	call   DWORD PTR [eax+0xdc]
  4c66af:	8b 56 30             	mov    edx,DWORD PTR [esi+0x30]
  4c66b2:	8d 4e 30             	lea    ecx,[esi+0x30]
  4c66b5:	ff 52 08             	call   DWORD PTR [edx+0x8]

; Deux paquets 0x21 et 0x45 [0x4c66b8,0x4c6778)
; Construction TFCPacket, champs GetHP/GetMaxHP puis SendPlayerMessage; branche 0x45 via PacketUnitInformation.
  4c66b8:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c66bb:	e8 30 f7 fb ff       	call   0x485df0
  4c66c0:	6a 21                	push   0x21
  4c66c2:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c66c5:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [ebp-0x4],0x2
  4c66cc:	e8 7f fa fb ff       	call   0x486150
  4c66d1:	8b 06                	mov    eax,DWORD PTR [esi]
  4c66d3:	8b ce                	mov    ecx,esi
  4c66d5:	ff 90 d8 00 00 00    	call   DWORD PTR [eax+0xd8]
  4c66db:	50                   	push   eax
  4c66dc:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c66df:	e8 0c fb fb ff       	call   0x4861f0
  4c66e4:	8b 16                	mov    edx,DWORD PTR [esi]
  4c66e6:	8b ce                	mov    ecx,esi
  4c66e8:	ff 92 cc 00 00 00    	call   DWORD PTR [edx+0xcc]
  4c66ee:	50                   	push   eax
  4c66ef:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c66f2:	e8 f9 fa fb ff       	call   0x4861f0
  4c66f7:	8b 06                	mov    eax,DWORD PTR [esi]
  4c66f9:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c66fc:	51                   	push   ecx
  4c66fd:	8b ce                	mov    ecx,esi
  4c66ff:	ff 90 4c 01 00 00    	call   DWORD PTR [eax+0x14c]
  4c6705:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c6708:	e8 b3 f7 fb ff       	call   0x485ec0
  4c670d:	6a 45                	push   0x45
  4c670f:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c6712:	e8 39 fa fb ff       	call   0x486150
  4c6717:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6719:	8d 45 d8             	lea    eax,[ebp-0x28]
  4c671c:	50                   	push   eax
  4c671d:	8b ce                	mov    ecx,esi
  4c671f:	ff 92 ac 01 00 00    	call   DWORD PTR [edx+0x1ac]
  4c6725:	8b 16                	mov    edx,DWORD PTR [esi]
  4c6727:	6a 00                	push   0x0
  4c6729:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c672c:	51                   	push   ecx
  4c672d:	6a 14                	push   0x14
  4c672f:	8d 45 cc             	lea    eax,[ebp-0x34]
  4c6732:	50                   	push   eax
  4c6733:	8b ce                	mov    ecx,esi
  4c6735:	ff 52 1c             	call   DWORD PTR [edx+0x1c]
  4c6738:	8b 10                	mov    edx,DWORD PTR [eax]
  4c673a:	83 ec 0c             	sub    esp,0xc
  4c673d:	8b cc                	mov    ecx,esp
  4c673f:	89 11                	mov    DWORD PTR [ecx],edx
  4c6741:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  4c6744:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  4c6747:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  4c674a:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  4c674d:	e8 9e 93 f4 ff       	call   0x40faf0
  4c6752:	83 c4 18             	add    esp,0x18
  4c6755:	8d 4d d8             	lea    ecx,[ebp-0x28]
  4c6758:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c675f:	e8 1c f7 fb ff       	call   0x485e80
  4c6764:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c6767:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
  4c676a:	5f                   	pop    edi
  4c676b:	5e                   	pop    esi
  4c676c:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c6773:	5b                   	pop    ebx
  4c6774:	8b e5                	mov    esp,ebp
  4c6776:	5d                   	pop    ebp
  4c6777:	c2 14 00             	ret    0x14

; Selection des branches suivant expression [0x4c6780,0x4c688d)
; Seuil de chance via 0x4590A0 et expression a +0xF0; valeur de sortie fait choisir 0x4C61A0 ou 0x4C64F0.
  4c6780:	55                   	push   ebp
  4c6781:	8b ec                	mov    ebp,esp
  4c6783:	83 ec 08             	sub    esp,0x8
  4c6786:	53                   	push   ebx
  4c6787:	56                   	push   esi
  4c6788:	57                   	push   edi
  4c6789:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  4c678c:	85 ff                	test   edi,edi
  4c678e:	8b f1                	mov    esi,ecx
  4c6790:	75 0b                	jne    0x4c679d
  4c6792:	5f                   	pop    edi
  4c6793:	5e                   	pop    esi
  4c6794:	33 c0                	xor    eax,eax
  4c6796:	5b                   	pop    ebx
  4c6797:	8b e5                	mov    esp,ebp
  4c6799:	5d                   	pop    ebp
  4c679a:	c2 20 00             	ret    0x20
  4c679d:	a0 b5 71 55 00       	mov    al,ds:0x5571b5
  4c67a2:	bb 01 00 00 00       	mov    ebx,0x1
  4c67a7:	84 c3                	test   bl,al
  4c67a9:	75 17                	jne    0x4c67c2
  4c67ab:	8a d0                	mov    dl,al
  4c67ad:	0a d3                	or     dl,bl
  4c67af:	68 90 68 4c 00       	push   0x4c6890
  4c67b4:	88 15 b5 71 55 00    	mov    BYTE PTR ds:0x5571b5,dl
  4c67ba:	e8 4c b5 00 00       	call   0x4d1d0b
  4c67bf:	83 c4 04             	add    esp,0x4
  4c67c2:	6a 64                	push   0x64
  4c67c4:	53                   	push   ebx
  4c67c5:	b9 b4 71 55 00       	mov    ecx,0x5571b4
  4c67ca:	e8 d1 28 f9 ff       	call   0x4590a0
  4c67cf:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  4c67d2:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  4c67d5:	6a 00                	push   0x0
  4c67d7:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4c67da:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  4c67dd:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  4c67e0:	50                   	push   eax
  4c67e1:	51                   	push   ecx
  4c67e2:	6a 00                	push   0x0
  4c67e4:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  4c67e7:	6a 00                	push   0x0
  4c67e9:	6a 00                	push   0x0
  4c67eb:	6a 00                	push   0x0
  4c67ed:	57                   	push   edi
  4c67ee:	53                   	push   ebx
  4c67ef:	8d 8e f0 00 00 00    	lea    ecx,[esi+0xf0]
  4c67f5:	e8 56 5b f4 ff       	call   0x40c350
  4c67fa:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
  4c67fd:	df e0                	fnstsw ax
  4c67ff:	f6 c4 01             	test   ah,0x1
  4c6802:	74 0b                	je     0x4c680f
  4c6804:	5f                   	pop    edi
  4c6805:	5e                   	pop    esi
  4c6806:	33 c0                	xor    eax,eax
  4c6808:	5b                   	pop    ebx
  4c6809:	8b e5                	mov    esp,ebp
  4c680b:	5d                   	pop    ebp
  4c680c:	c2 20 00             	ret    0x20
  4c680f:	dd 45 20             	fld    QWORD PTR [ebp+0x20]
  4c6812:	6a 00                	push   0x0
  4c6814:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  4c681a:	df e0                	fnstsw ax
  4c681c:	f6 c4 40             	test   ah,0x40
  4c681f:	74 13                	je     0x4c6834
  4c6821:	6a 00                	push   0x0
  4c6823:	6a 00                	push   0x0
  4c6825:	6a 00                	push   0x0
  4c6827:	6a 00                	push   0x0
  4c6829:	6a 00                	push   0x0
  4c682b:	6a 00                	push   0x0
  4c682d:	57                   	push   edi
  4c682e:	53                   	push   ebx
  4c682f:	8d 4e 10             	lea    ecx,[esi+0x10]
  4c6832:	eb 18                	jmp    0x4c684c
  4c6834:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  4c6837:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4c683a:	52                   	push   edx
  4c683b:	50                   	push   eax
  4c683c:	6a 00                	push   0x0
  4c683e:	6a 00                	push   0x0
  4c6840:	6a 00                	push   0x0
  4c6842:	6a 00                	push   0x0
  4c6844:	57                   	push   edi
  4c6845:	53                   	push   ebx
  4c6846:	8d 8e 80 00 00 00    	lea    ecx,[esi+0x80]
  4c684c:	e8 ff 5a f4 ff       	call   0x40c350
  4c6851:	dd 55 20             	fst    QWORD PTR [ebp+0x20]
  4c6854:	dc 1d 30 e6 4d 00    	fcomp  QWORD PTR ds:0x4de630
  4c685a:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  4c685d:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  4c6860:	51                   	push   ecx
  4c6861:	52                   	push   edx
  4c6862:	df e0                	fnstsw ax
  4c6864:	8b ce                	mov    ecx,esi
  4c6866:	f6 c4 01             	test   ah,0x1
  4c6869:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4c686c:	50                   	push   eax
  4c686d:	57                   	push   edi
  4c686e:	53                   	push   ebx
  4c686f:	74 0e                	je     0x4c687f
  4c6871:	e8 2a f9 ff ff       	call   0x4c61a0
  4c6876:	5f                   	pop    edi
  4c6877:	5e                   	pop    esi
  4c6878:	5b                   	pop    ebx
  4c6879:	8b e5                	mov    esp,ebp
  4c687b:	5d                   	pop    ebp
  4c687c:	c2 20 00             	ret    0x20
  4c687f:	e8 6c fc ff ff       	call   0x4c64f0
  4c6884:	5f                   	pop    edi
  4c6885:	5e                   	pop    esi
  4c6886:	5b                   	pop    ebx
  4c6887:	8b e5                	mov    esp,ebp
  4c6889:	5d                   	pop    ebp
  4c688a:	c2 20 00             	ret    0x20
