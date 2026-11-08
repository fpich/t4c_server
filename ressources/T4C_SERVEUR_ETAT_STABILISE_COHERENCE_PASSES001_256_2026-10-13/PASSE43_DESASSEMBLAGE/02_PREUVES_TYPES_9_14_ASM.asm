; PASSE43 // preuve binaire PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions x86 Intel extraites du binaire serveur (preuve non suffisante de semantique a elle seule).

; Validateur type9 : aiguillage ID1..4: VA 0x4c75a0..0x4c7708 (extraits disassembles, PAS un dump de fonctions arbitraires)
  4c75a0:	55                   	push   ebp
  4c75a1:	8b ec                	mov    ebp,esp
  4c75a3:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c75a9:	6a ff                	push   0xffffffff
  4c75ab:	68 f8 da 4d 00       	push   0x4ddaf8
  4c75b0:	50                   	push   eax
  4c75b1:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c75b8:	53                   	push   ebx
  4c75b9:	56                   	push   esi
  4c75ba:	57                   	push   edi
  4c75bb:	8b f9                	mov    edi,ecx
  4c75bd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4c75c0:	25 ff ff 00 00       	and    eax,0xffff
  4c75c5:	48                   	dec    eax
  4c75c6:	83 f8 03             	cmp    eax,0x3
  4c75c9:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c75d0:	bb 01 00 00 00       	mov    ebx,0x1
  4c75d5:	0f 87 08 01 00 00    	ja     0x4c76e3
  4c75db:	ff 24 85 0c 77 4c 00 	jmp    DWORD PTR [eax*4+0x4c770c]
  4c75e2:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c75e5:	8b 35 e4 e2 4d 00    	mov    esi,DWORD PTR ds:0x4de2e4
  4c75eb:	68 78 02 51 00       	push   0x510278
  4c75f0:	51                   	push   ecx
  4c75f1:	ff d6                	call   esi
  4c75f3:	83 c4 08             	add    esp,0x8
  4c75f6:	85 c0                	test   eax,eax
  4c75f8:	75 0b                	jne    0x4c7605
  4c75fa:	66 c7 47 0e 01 00    	mov    WORD PTR [edi+0xe],0x1
  4c7600:	e9 e0 00 00 00       	jmp    0x4c76e5
  4c7605:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c7608:	68 6c 02 51 00       	push   0x51026c
  4c760d:	52                   	push   edx
  4c760e:	ff d6                	call   esi
  4c7610:	83 c4 08             	add    esp,0x8
  4c7613:	85 c0                	test   eax,eax
  4c7615:	75 0b                	jne    0x4c7622
  4c7617:	66 c7 47 0e 02 00    	mov    WORD PTR [edi+0xe],0x2
  4c761d:	e9 c3 00 00 00       	jmp    0x4c76e5
  4c7622:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c7625:	68 64 02 51 00       	push   0x510264
  4c762a:	50                   	push   eax
  4c762b:	ff d6                	call   esi
  4c762d:	83 c4 08             	add    esp,0x8
  4c7630:	85 c0                	test   eax,eax
  4c7632:	75 0b                	jne    0x4c763f
  4c7634:	66 c7 47 0e 05 00    	mov    WORD PTR [edi+0xe],0x5
  4c763a:	e9 a6 00 00 00       	jmp    0x4c76e5
  4c763f:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c7642:	68 58 02 51 00       	push   0x510258
  4c7647:	51                   	push   ecx
  4c7648:	ff d6                	call   esi
  4c764a:	83 c4 08             	add    esp,0x8
  4c764d:	85 c0                	test   eax,eax
  4c764f:	75 0b                	jne    0x4c765c
  4c7651:	66 c7 47 0e 03 00    	mov    WORD PTR [edi+0xe],0x3
  4c7657:	e9 89 00 00 00       	jmp    0x4c76e5
  4c765c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c765f:	68 50 02 51 00       	push   0x510250
  4c7664:	52                   	push   edx
  4c7665:	ff d6                	call   esi
  4c7667:	83 c4 08             	add    esp,0x8
  4c766a:	85 c0                	test   eax,eax
  4c766c:	75 08                	jne    0x4c7676
  4c766e:	66 c7 47 0e 0e 00    	mov    WORD PTR [edi+0xe],0xe
  4c7674:	eb 6f                	jmp    0x4c76e5
  4c7676:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c7679:	68 44 02 51 00       	push   0x510244
  4c767e:	50                   	push   eax
  4c767f:	ff d6                	call   esi
  4c7681:	83 c4 08             	add    esp,0x8
  4c7684:	85 c0                	test   eax,eax
  4c7686:	75 5b                	jne    0x4c76e3
  4c7688:	66 c7 47 0e 1c 00    	mov    WORD PTR [edi+0xe],0x1c
  4c768e:	eb 55                	jmp    0x4c76e5
  4c7690:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c7693:	51                   	push   ecx
  4c7694:	ff 15 14 e3 4d 00    	call   DWORD PTR ds:0x4de314
  4c769a:	83 c4 04             	add    esp,0x4
  4c769d:	66 85 c0             	test   ax,ax
  4c76a0:	66 89 47 0c          	mov    WORD PTR [edi+0xc],ax
  4c76a4:	75 3f                	jne    0x4c76e5
  4c76a6:	eb 3b                	jmp    0x4c76e3
  4c76a8:	51                   	push   ecx
  4c76a9:	8d 55 08             	lea    edx,[ebp+0x8]
  4c76ac:	8b cc                	mov    ecx,esp
  4c76ae:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  4c76b1:	52                   	push   edx
  4c76b2:	e8 95 a3 00 00       	call   0x4d1a4c
  4c76b7:	8d 8f 88 00 00 00    	lea    ecx,[edi+0x88]
  4c76bd:	e8 3e 22 f4 ff       	call   0x409900
  4c76c2:	85 c0                	test   eax,eax
  4c76c4:	75 1f                	jne    0x4c76e5
  4c76c6:	eb 1b                	jmp    0x4c76e3
  4c76c8:	51                   	push   ecx
  4c76c9:	8d 45 08             	lea    eax,[ebp+0x8]
  4c76cc:	8b cc                	mov    ecx,esp
  4c76ce:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  4c76d1:	50                   	push   eax
  4c76d2:	e8 75 a3 00 00       	call   0x4d1a4c
  4c76d7:	8d 4f 18             	lea    ecx,[edi+0x18]
  4c76da:	e8 21 22 f4 ff       	call   0x409900
  4c76df:	85 c0                	test   eax,eax
  4c76e1:	75 02                	jne    0x4c76e5
  4c76e3:	33 db                	xor    ebx,ebx
  4c76e5:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4c76e8:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c76ef:	e8 4c a3 00 00       	call   0x4d1a40
  4c76f4:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c76f7:	5f                   	pop    edi
  4c76f8:	5e                   	pop    esi
  4c76f9:	8b c3                	mov    eax,ebx
  4c76fb:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c7702:	5b                   	pop    ebx
  4c7703:	8b e5                	mov    esp,ebp
  4c7705:	5d                   	pop    ebp
  4c7706:	c2 08 00             	ret    0x8

; Validateur type14 : aiguillage ID1..4: VA 0x4c5880..0x4c596d (extraits disassembles, PAS un dump de fonctions arbitraires)
  4c5880:	55                   	push   ebp
  4c5881:	8b ec                	mov    ebp,esp
  4c5883:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  4c5889:	6a ff                	push   0xffffffff
  4c588b:	68 38 d8 4d 00       	push   0x4dd838
  4c5890:	50                   	push   eax
  4c5891:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  4c5898:	56                   	push   esi
  4c5899:	8b f1                	mov    esi,ecx
  4c589b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  4c589e:	25 ff ff 00 00       	and    eax,0xffff
  4c58a3:	48                   	dec    eax
  4c58a4:	83 f8 03             	cmp    eax,0x3
  4c58a7:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c58ae:	77 42                	ja     0x4c58f2
  4c58b0:	ff 24 85 70 59 4c 00 	jmp    DWORD PTR [eax*4+0x4c5970]
  4c58b7:	51                   	push   ecx
  4c58b8:	8d 55 08             	lea    edx,[ebp+0x8]
  4c58bb:	8b cc                	mov    ecx,esp
  4c58bd:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  4c58c0:	52                   	push   edx
  4c58c1:	e8 86 c1 00 00       	call   0x4d1a4c
  4c58c6:	8d 8e 80 00 00 00    	lea    ecx,[esi+0x80]
  4c58cc:	e8 2f 40 f4 ff       	call   0x409900
  4c58d1:	85 c0                	test   eax,eax
  4c58d3:	75 74                	jne    0x4c5949
  4c58d5:	eb 1b                	jmp    0x4c58f2
  4c58d7:	51                   	push   ecx
  4c58d8:	8d 45 08             	lea    eax,[ebp+0x8]
  4c58db:	8b cc                	mov    ecx,esp
  4c58dd:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  4c58e0:	50                   	push   eax
  4c58e1:	e8 66 c1 00 00       	call   0x4d1a4c
  4c58e6:	8d 4e 10             	lea    ecx,[esi+0x10]
  4c58e9:	e8 12 40 f4 ff       	call   0x409900
  4c58ee:	85 c0                	test   eax,eax
  4c58f0:	75 57                	jne    0x4c5949
  4c58f2:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4c58f5:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c58fc:	e8 3f c1 00 00       	call   0x4d1a40
  4c5901:	33 c0                	xor    eax,eax
  4c5903:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c5906:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c590d:	5e                   	pop    esi
  4c590e:	8b e5                	mov    esp,ebp
  4c5910:	5d                   	pop    ebp
  4c5911:	c2 08 00             	ret    0x8
  4c5914:	51                   	push   ecx
  4c5915:	8d 55 08             	lea    edx,[ebp+0x8]
  4c5918:	8b cc                	mov    ecx,esp
  4c591a:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  4c591d:	52                   	push   edx
  4c591e:	e8 29 c1 00 00       	call   0x4d1a4c
  4c5923:	8d 8e f0 00 00 00    	lea    ecx,[esi+0xf0]
  4c5929:	eb be                	jmp    0x4c58e9
  4c592b:	51                   	push   ecx
  4c592c:	8d 45 08             	lea    eax,[ebp+0x8]
  4c592f:	8b cc                	mov    ecx,esp
  4c5931:	89 65 0c             	mov    DWORD PTR [ebp+0xc],esp
  4c5934:	50                   	push   eax
  4c5935:	e8 12 c1 00 00       	call   0x4d1a4c
  4c593a:	8d 8e 60 01 00 00    	lea    ecx,[esi+0x160]
  4c5940:	e8 bb 3f f4 ff       	call   0x409900
  4c5945:	85 c0                	test   eax,eax
  4c5947:	74 a9                	je     0x4c58f2
  4c5949:	8d 4d 08             	lea    ecx,[ebp+0x8]
  4c594c:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  4c5953:	e8 e8 c0 00 00       	call   0x4d1a40
  4c5958:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  4c595b:	b8 01 00 00 00       	mov    eax,0x1
  4c5960:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  4c5967:	5e                   	pop    esi
  4c5968:	8b e5                	mov    esp,ebp
  4c596a:	5d                   	pop    ebp
  4c596b:	c2 08 00             	ret    0x8
