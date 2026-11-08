; PASSE43 // preuve binaire PE SHA256 13cf4903da2b7c4548f9347f806ac7d379b1fc72bc7cbab5296f3e464ea9f7fc
; Instructions x86 Intel extraites du binaire serveur (preuve non suffisante de semantique a elle seule).

; Type9 : creation du timer effet, appel GetRound et callback: VA 0x4c7720..0x4c790e (extraits disassembles, PAS un dump de fonctions arbitraires)
  4c7720:	55                   	push   ebp
  4c7721:	8b ec                	mov    ebp,esp
  4c7723:	83 ec 10             	sub    esp,0x10
  4c7726:	53                   	push   ebx
  4c7727:	56                   	push   esi
  4c7728:	57                   	push   edi
  4c7729:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  4c772c:	85 ff                	test   edi,edi
  4c772e:	8b f1                	mov    esi,ecx
  4c7730:	0f 84 d0 01 00 00    	je     0x4c7906
  4c7736:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c7739:	6a 00                	push   0x0
  4c773b:	6a 00                	push   0x0
  4c773d:	6a 00                	push   0x0
  4c773f:	6a 00                	push   0x0
  4c7741:	6a 00                	push   0x0
  4c7743:	6a 00                	push   0x0
  4c7745:	6a 00                	push   0x0
  4c7747:	57                   	push   edi
  4c7748:	50                   	push   eax
  4c7749:	8d 8e 88 00 00 00    	lea    ecx,[esi+0x88]
  4c774f:	e8 fc 4b f4 ff       	call   0x40c350
  4c7754:	e8 21 a6 00 00       	call   0x4d1d7a
  4c7759:	6a 64                	push   0x64
  4c775b:	6a 00                	push   0x0
  4c775d:	b9 bd 71 55 00       	mov    ecx,0x5571bd
  4c7762:	8b d8                	mov    ebx,eax
  4c7764:	e8 37 19 f9 ff       	call   0x4590a0
  4c7769:	3b c3                	cmp    eax,ebx
  4c776b:	0f 8f 95 01 00 00    	jg     0x4c7906
  4c7771:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  4c7774:	51                   	push   ecx
  4c7775:	8b cf                	mov    ecx,edi
  4c7777:	e8 b4 51 fc ff       	call   0x48c930
  4c777c:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  4c777f:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  4c7782:	6a 00                	push   0x0
  4c7784:	6a 00                	push   0x0
  4c7786:	6a 00                	push   0x0
  4c7788:	6a 00                	push   0x0
  4c778a:	6a 00                	push   0x0
  4c778c:	6a 00                	push   0x0
  4c778e:	6a 00                	push   0x0
  4c7790:	57                   	push   edi
  4c7791:	52                   	push   edx
  4c7792:	83 c1 78             	add    ecx,0x78
  4c7795:	e8 b6 4b f4 ff       	call   0x40c350
  4c779a:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  4c779d:	dd 05 28 e6 4d 00    	fld    QWORD PTR ds:0x4de628
  4c77a3:	dd 05 28 fe 4d 00    	fld    QWORD PTR ds:0x4dfe28
  4c77a9:	e8 d2 a5 00 00       	call   0x4d1d80
  4c77ae:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
  4c77b1:	df e0                	fnstsw ax
  4c77b3:	f6 c4 01             	test   ah,0x1
  4c77b6:	74 05                	je     0x4c77bd
  4c77b8:	83 cb ff             	or     ebx,0xffffffff
  4c77bb:	eb 0a                	jmp    0x4c77c7
  4c77bd:	dd 45 f8             	fld    QWORD PTR [ebp-0x8]
  4c77c0:	e8 b5 a5 00 00       	call   0x4d1d7a
  4c77c5:	8b d8                	mov    ebx,eax
  4c77c7:	66 83 7e 0e 05       	cmp    WORD PTR [esi+0xe],0x5
  4c77cc:	75 43                	jne    0x4c7811
  4c77ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c77d1:	6a 00                	push   0x0
  4c77d3:	6a 00                	push   0x0
  4c77d5:	6a 00                	push   0x0
  4c77d7:	6a 00                	push   0x0
  4c77d9:	6a 00                	push   0x0
  4c77db:	6a 00                	push   0x0
  4c77dd:	6a 00                	push   0x0
  4c77df:	57                   	push   edi
  4c77e0:	50                   	push   eax
  4c77e1:	8d 4e 18             	lea    ecx,[esi+0x18]
  4c77e4:	e8 67 4b f4 ff       	call   0x40c350
  4c77e9:	dc 0d 20 fe 4d 00    	fmul   QWORD PTR ds:0x4dfe20
  4c77ef:	dd 5d f0             	fstp   QWORD PTR [ebp-0x10]
  4c77f2:	e8 99 aa fa ff       	call   0x472290
  4c77f7:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  4c77fa:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  4c7801:	df 6d f8             	fild   QWORD PTR [ebp-0x8]
  4c7804:	dc 45 f0             	fadd   QWORD PTR [ebp-0x10]
  4c7807:	e8 6e a5 00 00       	call   0x4d1d7a
  4c780c:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  4c780f:	eb 23                	jmp    0x4c7834
  4c7811:	83 fb ff             	cmp    ebx,0xffffffff
  4c7814:	75 05                	jne    0x4c781b
  4c7816:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  4c7819:	eb 19                	jmp    0x4c7834
  4c781b:	e8 70 aa fa ff       	call   0x472290
  4c7820:	8b c8                	mov    ecx,eax
  4c7822:	8d 14 1b             	lea    edx,[ebx+ebx*1]
  4c7825:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c782a:	f7 e2                	mul    edx
  4c782c:	c1 ea 05             	shr    edx,0x5
  4c782f:	03 ca                	add    ecx,edx
  4c7831:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  4c7834:	6a 14                	push   0x14
  4c7836:	e8 b5 a7 f7 ff       	call   0x441ff0
  4c783b:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c783e:	83 c4 04             	add    esp,0x4
  4c7841:	6a 00                	push   0x0
  4c7843:	6a 00                	push   0x0
  4c7845:	6a 00                	push   0x0
  4c7847:	6a 00                	push   0x0
  4c7849:	8b f8                	mov    edi,eax
  4c784b:	66 8b 46 0e          	mov    ax,WORD PTR [esi+0xe]
  4c784f:	6a 00                	push   0x0
  4c7851:	66 89 07             	mov    WORD PTR [edi],ax
  4c7854:	66 8b 4e 0c          	mov    cx,WORD PTR [esi+0xc]
  4c7858:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c785b:	6a 00                	push   0x0
  4c785d:	6a 00                	push   0x0
  4c785f:	66 89 4f 02          	mov    WORD PTR [edi+0x2],cx
  4c7863:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  4c7866:	52                   	push   edx
  4c7867:	50                   	push   eax
  4c7868:	81 c1 b8 02 00 00    	add    ecx,0x2b8
  4c786e:	e8 dd 4a f4 ff       	call   0x40c350
  4c7873:	e8 02 a5 00 00       	call   0x4d1d7a
  4c7878:	83 fb ff             	cmp    ebx,0xffffffff
  4c787b:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
  4c787e:	75 05                	jne    0x4c7885
  4c7880:	89 5f 10             	mov    DWORD PTR [edi+0x10],ebx
  4c7883:	eb 19                	jmp    0x4c789e
  4c7885:	e8 06 aa fa ff       	call   0x472290
  4c788a:	8b c8                	mov    ecx,eax
  4c788c:	8d 14 1b             	lea    edx,[ebx+ebx*1]
  4c788f:	b8 1f 85 eb 51       	mov    eax,0x51eb851f
  4c7894:	f7 e2                	mul    edx
  4c7896:	c1 ea 05             	shr    edx,0x5
  4c7899:	03 ca                	add    ecx,edx
  4c789b:	89 4f 10             	mov    DWORD PTR [edi+0x10],ecx
  4c789e:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  4c78a1:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
  4c78a4:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  4c78a7:	66 8b 11             	mov    dx,WORD PTR [ecx]
  4c78aa:	66 89 57 04          	mov    WORD PTR [edi+0x4],dx
  4c78ae:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  4c78b1:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  4c78b4:	33 c9                	xor    ecx,ecx
  4c78b6:	66 8b 08             	mov    cx,WORD PTR [eax]
  4c78b9:	50                   	push   eax
  4c78ba:	53                   	push   ebx
  4c78bb:	53                   	push   ebx
  4c78bc:	51                   	push   ecx
  4c78bd:	52                   	push   edx
  4c78be:	e8 5d 8f f9 ff       	call   0x460820
  4c78c3:	6a 20                	push   0x20
  4c78c5:	e8 26 a7 f7 ff       	call   0x441ff0
  4c78ca:	8a 4e 0e             	mov    cl,BYTE PTR [esi+0xe]
  4c78cd:	88 08                	mov    BYTE PTR [eax],cl
  4c78cf:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  4c78d2:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  4c78d5:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  4c78d8:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  4c78db:	c7 40 08 90 79 4c 00 	mov    DWORD PTR [eax+0x8],0x4c7990
  4c78e2:	89 78 0c             	mov    DWORD PTR [eax+0xc],edi
  4c78e5:	89 58 14             	mov    DWORD PTR [eax+0x14],ebx
  4c78e8:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  4c78eb:	33 c9                	xor    ecx,ecx
  4c78ed:	66 8b 0a             	mov    cx,WORD PTR [edx]
  4c78f0:	83 c4 18             	add    esp,0x18
  4c78f3:	50                   	push   eax
  4c78f4:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
  4c78fb:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
  4c78fe:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  4c7901:	e8 0a 4f fc ff       	call   0x48c810
  4c7906:	5f                   	pop    edi
  4c7907:	5e                   	pop    esi
  4c7908:	5b                   	pop    ebx
  4c7909:	8b e5                	mov    esp,ebp
  4c790b:	5d                   	pop    ebp
  4c790c:	c2 20 00             	ret    0x20

; Type14 : evalue quatre champs et declenche statut: VA 0x4c5980..0x4c5aaf (extraits disassembles, PAS un dump de fonctions arbitraires)
  4c5980:	55                   	push   ebp
  4c5981:	8b ec                	mov    ebp,esp
  4c5983:	83 ec 08             	sub    esp,0x8
  4c5986:	53                   	push   ebx
  4c5987:	56                   	push   esi
  4c5988:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  4c598b:	85 f6                	test   esi,esi
  4c598d:	57                   	push   edi
  4c598e:	8b d9                	mov    ebx,ecx
  4c5990:	0f 84 13 01 00 00    	je     0x4c5aa9
  4c5996:	a0 b1 71 55 00       	mov    al,ds:0x5571b1
  4c599b:	a8 01                	test   al,0x1
  4c599d:	75 18                	jne    0x4c59b7
  4c599f:	8a d0                	mov    dl,al
  4c59a1:	80 ca 01             	or     dl,0x1
  4c59a4:	68 c0 5a 4c 00       	push   0x4c5ac0
  4c59a9:	88 15 b1 71 55 00    	mov    BYTE PTR ds:0x5571b1,dl
  4c59af:	e8 57 c3 00 00       	call   0x4d1d0b
  4c59b4:	83 c4 04             	add    esp,0x4
  4c59b7:	6a 64                	push   0x64
  4c59b9:	6a 01                	push   0x1
  4c59bb:	b9 b0 71 55 00       	mov    ecx,0x5571b0
  4c59c0:	e8 db 36 f9 ff       	call   0x4590a0
  4c59c5:	8b 7d 24             	mov    edi,DWORD PTR [ebp+0x24]
  4c59c8:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  4c59cb:	6a 00                	push   0x0
  4c59cd:	57                   	push   edi
  4c59ce:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4c59d1:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  4c59d4:	db 45 10             	fild   DWORD PTR [ebp+0x10]
  4c59d7:	50                   	push   eax
  4c59d8:	6a 00                	push   0x0
  4c59da:	6a 00                	push   0x0
  4c59dc:	dd 5d f8             	fstp   QWORD PTR [ebp-0x8]
  4c59df:	6a 00                	push   0x0
  4c59e1:	6a 00                	push   0x0
  4c59e3:	56                   	push   esi
  4c59e4:	51                   	push   ecx
  4c59e5:	8d 8b 60 01 00 00    	lea    ecx,[ebx+0x160]
  4c59eb:	e8 60 69 f4 ff       	call   0x40c350
  4c59f0:	dc 5d f8             	fcomp  QWORD PTR [ebp-0x8]
  4c59f3:	df e0                	fnstsw ax
  4c59f5:	f6 c4 01             	test   ah,0x1
  4c59f8:	0f 85 ab 00 00 00    	jne    0x4c5aa9
  4c59fe:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  4c5a01:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c5a04:	6a 00                	push   0x0
  4c5a06:	57                   	push   edi
  4c5a07:	52                   	push   edx
  4c5a08:	6a 00                	push   0x0
  4c5a0a:	6a 00                	push   0x0
  4c5a0c:	6a 00                	push   0x0
  4c5a0e:	6a 00                	push   0x0
  4c5a10:	56                   	push   esi
  4c5a11:	50                   	push   eax
  4c5a12:	8d 8b 80 00 00 00    	lea    ecx,[ebx+0x80]
  4c5a18:	e8 33 69 f4 ff       	call   0x40c350
  4c5a1d:	e8 58 c3 00 00       	call   0x4d1d7a
  4c5a22:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  4c5a25:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  4c5a28:	6a 00                	push   0x0
  4c5a2a:	51                   	push   ecx
  4c5a2b:	52                   	push   edx
  4c5a2c:	6a 00                	push   0x0
  4c5a2e:	6a 00                	push   0x0
  4c5a30:	6a 00                	push   0x0
  4c5a32:	6a 00                	push   0x0
  4c5a34:	8b f8                	mov    edi,eax
  4c5a36:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c5a39:	56                   	push   esi
  4c5a3a:	50                   	push   eax
  4c5a3b:	8d 4b 10             	lea    ecx,[ebx+0x10]
  4c5a3e:	e8 0d 69 f4 ff       	call   0x40c350
  4c5a43:	e8 32 c3 00 00       	call   0x4d1d7a
  4c5a48:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  4c5a4b:	8b 55 20             	mov    edx,DWORD PTR [ebp+0x20]
  4c5a4e:	6a 00                	push   0x0
  4c5a50:	51                   	push   ecx
  4c5a51:	52                   	push   edx
  4c5a52:	6a 00                	push   0x0
  4c5a54:	6a 00                	push   0x0
  4c5a56:	6a 00                	push   0x0
  4c5a58:	6a 00                	push   0x0
  4c5a5a:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
  4c5a5d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c5a60:	56                   	push   esi
  4c5a61:	50                   	push   eax
  4c5a62:	8d 8b f0 00 00 00    	lea    ecx,[ebx+0xf0]
  4c5a68:	e8 e3 68 f4 ff       	call   0x40c350
  4c5a6d:	e8 08 c3 00 00       	call   0x4d1d7a
  4c5a72:	8b 16                	mov    edx,DWORD PTR [esi]
  4c5a74:	50                   	push   eax
  4c5a75:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
  4c5a78:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c5a7b:	50                   	push   eax
  4c5a7c:	57                   	push   edi
  4c5a7d:	8b ce                	mov    ecx,esi
  4c5a7f:	ff 52 78             	call   DWORD PTR [edx+0x78]
  4c5a82:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  4c5a85:	3b c7                	cmp    eax,edi
  4c5a87:	76 02                	jbe    0x4c5a8b
  4c5a89:	8b f8                	mov    edi,eax
  4c5a8b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  4c5a8e:	3b c7                	cmp    eax,edi
  4c5a90:	76 02                	jbe    0x4c5a94
  4c5a92:	8b f8                	mov    edi,eax
  4c5a94:	8b 5b 04             	mov    ebx,DWORD PTR [ebx+0x4]
  4c5a97:	33 c9                	xor    ecx,ecx
  4c5a99:	66 8b 0b             	mov    cx,WORD PTR [ebx]
  4c5a9c:	53                   	push   ebx
  4c5a9d:	57                   	push   edi
  4c5a9e:	57                   	push   edi
  4c5a9f:	51                   	push   ecx
  4c5aa0:	56                   	push   esi
  4c5aa1:	e8 7a ad f9 ff       	call   0x460820
  4c5aa6:	83 c4 14             	add    esp,0x14
  4c5aa9:	5f                   	pop    edi
  4c5aaa:	5e                   	pop    esi
  4c5aab:	5b                   	pop    ebx
  4c5aac:	8b e5                	mov    esp,ebp
  4c5aae:	5d                   	pop    ebp
  4c5aaf:	c2                   	.byte 0xc2
