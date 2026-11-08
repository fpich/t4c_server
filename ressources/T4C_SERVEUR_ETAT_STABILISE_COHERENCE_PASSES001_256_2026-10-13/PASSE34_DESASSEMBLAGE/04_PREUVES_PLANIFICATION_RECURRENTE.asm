; T4C Server(1).exe / passe 34 : désassemblage objdump x86 validé contre les octets PE32.
; Les portions sont des plages de preuves, pas une garantie de comportement complet.

; Enregistrement et annulation timer ID=4 -- VA 0x00459750 jusqu’à 0x00459870 (exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00459750 <.text+0x58750>:
  459750:	6a 00                	push   0x0
  459752:	68 f0 4c 51 00       	push   0x514cf0
  459757:	68 70 98 45 00       	push   0x459870
  45975c:	e8 2f 8b 01 00       	call   0x472290
  459761:	50                   	push   eax
  459762:	6a 04                	push   0x4
  459764:	e8 97 ff 02 00       	call   0x489700
  459769:	83 c4 14             	add    esp,0x14
  45976c:	c3                   	ret
  45976d:	90                   	nop
  45976e:	90                   	nop
  45976f:	90                   	nop
  459770:	55                   	push   ebp
  459771:	8b ec                	mov    ebp,esp
  459773:	83 ec 08             	sub    esp,0x8
  459776:	53                   	push   ebx
  459777:	56                   	push   esi
  459778:	57                   	push   edi
  459779:	50                   	push   eax
  45977a:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  45977d:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  459780:	58                   	pop    eax
  459781:	e8 7a aa fd ff       	call   0x434200
  459786:	8b 10                	mov    edx,DWORD PTR [eax]
  459788:	8d 4d fc             	lea    ecx,[ebp-0x4]
  45978b:	51                   	push   ecx
  45978c:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
  45978f:	68 10 4d 51 00       	push   0x514d10
  459794:	51                   	push   ecx
  459795:	8b c8                	mov    ecx,eax
  459797:	ff 12                	call   DWORD PTR [edx]
  459799:	68 18 4d 51 00       	push   0x514d18
  45979e:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  4597a4:	e8 57 aa fd ff       	call   0x434200
  4597a9:	8b 10                	mov    edx,DWORD PTR [eax]
  4597ab:	68 14 4d 51 00       	push   0x514d14
  4597b0:	8d 4d fc             	lea    ecx,[ebp-0x4]
  4597b3:	51                   	push   ecx
  4597b4:	8b c8                	mov    ecx,eax
  4597b6:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4597b9:	6a 04                	push   0x4
  4597bb:	e8 b0 ff 02 00       	call   0x489770
  4597c0:	83 c4 04             	add    esp,0x4
  4597c3:	85 c0                	test   eax,eax
  4597c5:	74 44                	je     0x45980b
  4597c7:	8a 45 08             	mov    al,BYTE PTR [ebp+0x8]
  4597ca:	84 c0                	test   al,al
  4597cc:	74 3d                	je     0x45980b
  4597ce:	33 db                	xor    ebx,ebx
  4597d0:	53                   	push   ebx
  4597d1:	68 58 13 51 00       	push   0x511358
  4597d6:	33 f6                	xor    esi,esi
  4597d8:	33 ff                	xor    edi,edi
  4597da:	e8 81 42 fe ff       	call   0x43da60
  4597df:	50                   	push   eax
  4597e0:	6a 2c                	push   0x2c
  4597e2:	e8 09 42 fe ff       	call   0x43d9f0
  4597e7:	83 c4 08             	add    esp,0x8
  4597ea:	8b cc                	mov    ecx,esp
  4597ec:	89 65 08             	mov    DWORD PTR [ebp+0x8],esp
  4597ef:	50                   	push   eax
  4597f0:	e8 6f 82 07 00       	call   0x4d1a64
  4597f5:	53                   	push   ebx
  4597f6:	83 ec 0c             	sub    esp,0xc
  4597f9:	8b d4                	mov    edx,esp
  4597fb:	89 32                	mov    DWORD PTR [edx],esi
  4597fd:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
  459800:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
  459803:	e8 e8 67 fb ff       	call   0x40fff0
  459808:	83 c4 18             	add    esp,0x18
  45980b:	51                   	push   ecx
  45980c:	8b 0d 08 4d 51 00    	mov    ecx,DWORD PTR ds:0x514d08
  459812:	89 65 08             	mov    DWORD PTR [ebp+0x8],esp
  459815:	8b c4                	mov    eax,esp
  459817:	51                   	push   ecx
  459818:	8b d4                	mov    edx,esp
  45981a:	89 08                	mov    DWORD PTR [eax],ecx
  45981c:	89 65 08             	mov    DWORD PTR [ebp+0x8],esp
  45981f:	52                   	push   edx
  459820:	b9 00 4d 51 00       	mov    ecx,0x514d00
  459825:	e8 86 03 00 00       	call   0x459bb0
  45982a:	8d 45 f8             	lea    eax,[ebp-0x8]
  45982d:	50                   	push   eax
  45982e:	b9 00 4d 51 00       	mov    ecx,0x514d00
  459833:	e8 98 03 00 00       	call   0x459bd0
  459838:	c6 05 30 4d 51 00 00 	mov    BYTE PTR ds:0x514d30,0x0
  45983f:	e8 bc a9 fd ff       	call   0x434200
  459844:	8b 10                	mov    edx,DWORD PTR [eax]
  459846:	68 14 4d 51 00       	push   0x514d14
  45984b:	8b c8                	mov    ecx,eax
  45984d:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  459850:	68 18 4d 51 00       	push   0x514d18
  459855:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  45985b:	5f                   	pop    edi
  45985c:	5e                   	pop    esi
  45985d:	5b                   	pop    ebx
  45985e:	8b e5                	mov    esp,ebp
  459860:	5d                   	pop    ebp
  459861:	c3                   	ret
  459862:	90                   	nop
  459863:	90                   	nop
  459864:	90                   	nop
  459865:	90                   	nop
  459866:	90                   	nop
  459867:	90                   	nop
  459868:	90                   	nop
  459869:	90                   	nop
  45986a:	90                   	nop
  45986b:	90                   	nop
  45986c:	90                   	nop
  45986d:	90                   	nop
  45986e:	90                   	nop
  45986f:	90                   	nop


; Callback programmé : branche code 5 et réenregistrement -- VA 0x00459870 jusqu’à 0x00459BB0 (exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00459870 <.text+0x58870>:
  459870:	55                   	push   ebp
  459871:	8b ec                	mov    ebp,esp
  459873:	6a ff                	push   0xffffffff
  459875:	68 1b 75 4d 00       	push   0x4d751b
  45987a:	64 a1 00 00 00 00    	mov    eax,fs:0x0
  459880:	50                   	push   eax
  459881:	64 89 25 00 00 00 00 	mov    DWORD PTR fs:0x0,esp
  459888:	81 ec 34 01 00 00    	sub    esp,0x134
  45988e:	53                   	push   ebx
  45988f:	56                   	push   esi
  459890:	57                   	push   edi
  459891:	89 65 f0             	mov    DWORD PTR [ebp-0x10],esp
  459894:	50                   	push   eax
  459895:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  459898:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
  45989b:	58                   	pop    eax
  45989c:	e8 5f a9 fd ff       	call   0x434200
  4598a1:	8b 10                	mov    edx,DWORD PTR [eax]
  4598a3:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4598a6:	51                   	push   ecx
  4598a7:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  4598aa:	68 10 4d 51 00       	push   0x514d10
  4598af:	51                   	push   ecx
  4598b0:	8b c8                	mov    ecx,eax
  4598b2:	ff 12                	call   DWORD PTR [edx]
  4598b4:	68 18 4d 51 00       	push   0x514d18
  4598b9:	ff 15 f8 e0 4d 00    	call   DWORD PTR ds:0x4de0f8
  4598bf:	e8 3c a9 fd ff       	call   0x434200
  4598c4:	8b 10                	mov    edx,DWORD PTR [eax]
  4598c6:	68 14 4d 51 00       	push   0x514d14
  4598cb:	8d 4d e8             	lea    ecx,[ebp-0x18]
  4598ce:	51                   	push   ecx
  4598cf:	8b c8                	mov    ecx,eax
  4598d1:	ff 52 04             	call   DWORD PTR [edx+0x4]
  4598d4:	a0 30 4d 51 00       	mov    al,ds:0x514d30
  4598d9:	33 f6                	xor    esi,esi
  4598db:	33 ff                	xor    edi,edi
  4598dd:	33 db                	xor    ebx,ebx
  4598df:	84 c0                	test   al,al
  4598e1:	0f 84 97 02 00 00    	je     0x459b7e
  4598e7:	80 7d 0c 05          	cmp    BYTE PTR [ebp+0xc],0x5
  4598eb:	0f 85 8d 02 00 00    	jne    0x459b7e
  4598f1:	a1 f4 4c 51 00       	mov    eax,ds:0x514cf4
  4598f6:	83 f8 ff             	cmp    eax,0xffffffff
  4598f9:	0f 85 3d 01 00 00    	jne    0x459a3c
  4598ff:	8d 4d d0             	lea    ecx,[ebp-0x30]
  459902:	e8 e9 c4 02 00       	call   0x485df0
  459907:	6a 14                	push   0x14
  459909:	8d 4d d0             	lea    ecx,[ebp-0x30]
  45990c:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
  45990f:	e8 3c c8 02 00       	call   0x486150
  459914:	33 c0                	xor    eax,eax
  459916:	50                   	push   eax
  459917:	50                   	push   eax
  459918:	6a 01                	push   0x1
  45991a:	83 ec 0c             	sub    esp,0xc
  45991d:	8b d4                	mov    edx,esp
  45991f:	89 32                	mov    DWORD PTR [edx],esi
  459921:	89 7a 04             	mov    DWORD PTR [edx+0x4],edi
  459924:	89 5a 08             	mov    DWORD PTR [edx+0x8],ebx
  459927:	6a ff                	push   0xffffffff
  459929:	8b c8                	mov    ecx,eax
  45992b:	83 ec 10             	sub    esp,0x10
  45992e:	8b d4                	mov    edx,esp
  459930:	89 0a                	mov    DWORD PTR [edx],ecx
  459932:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  459935:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  459938:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
  45993b:	8d 45 d0             	lea    eax,[ebp-0x30]
  45993e:	50                   	push   eax
  45993f:	e8 3c 7a ff ff       	call   0x451380
  459944:	6a ff                	push   0xffffffff
  459946:	e8 05 9a fd ff       	call   0x433350
  45994b:	a0 f9 4c 51 00       	mov    al,ds:0x514cf9
  459950:	83 c4 34             	add    esp,0x34
  459953:	84 c0                	test   al,al
  459955:	74 4f                	je     0x4599a6
  459957:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  45995d:	e8 2e f8 ff ff       	call   0x459190
  459962:	68 fc 45 50 00       	push   0x5045fc
  459967:	68 02 00 00 80       	push   0x80000002
  45996c:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  459972:	c6 45 fc 01          	mov    BYTE PTR [ebp-0x4],0x1
  459976:	e8 95 f8 ff ff       	call   0x459210
  45997b:	6a 01                	push   0x1
  45997d:	68 f0 45 50 00       	push   0x5045f0
  459982:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  459988:	e8 03 f9 ff ff       	call   0x459290
  45998d:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  459993:	e8 28 fa ff ff       	call   0x4593c0
  459998:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
  45999e:	88 5d fc             	mov    BYTE PTR [ebp-0x4],bl
  4599a1:	e8 fa f7 ff ff       	call   0x4591a0
  4599a6:	e8 55 77 ff ff       	call   0x451100
  4599ab:	e8 00 a6 ff ff       	call   0x453fb0
  4599b0:	68 f4 01 00 00       	push   0x1f4
  4599b5:	ff 15 20 e1 4d 00    	call   DWORD PTR ds:0x4de120
  4599bb:	68 30 6b 50 00       	push   0x506b30
  4599c0:	6a 04                	push   0x4
  4599c2:	e8 79 83 01 00       	call   0x471d40
  4599c7:	83 c4 08             	add    esp,0x8
  4599ca:	e8 21 8a fb ff       	call   0x4123f0
  4599cf:	68 14 6b 50 00       	push   0x506b14
  4599d4:	6a 04                	push   0x4
  4599d6:	e8 65 83 01 00       	call   0x471d40
  4599db:	8b 35 04 4d 51 00    	mov    esi,DWORD PTR ds:0x514d04
  4599e1:	83 c4 08             	add    esp,0x8
  4599e4:	c6 45 fc 02          	mov    BYTE PTR [ebp-0x4],0x2
  4599e8:	3b 35 08 4d 51 00    	cmp    esi,DWORD PTR ds:0x514d08
  4599ee:	74 15                	je     0x459a05
  4599f0:	68 f0 4c 51 00       	push   0x514cf0
  4599f5:	ff 16                	call   DWORD PTR [esi]
  4599f7:	83 c4 04             	add    esp,0x4
  4599fa:	83 c6 04             	add    esi,0x4
  4599fd:	eb e9                	jmp    0x4599e8
  4599ff:	b8 05 9a 45 00       	mov    eax,0x459a05
  459a04:	c3                   	ret
  459a05:	68 f4 6a 50 00       	push   0x506af4
  459a0a:	68 80 00 00 00       	push   0x80
  459a0f:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
  459a16:	e8 25 83 01 00       	call   0x471d40
  459a1b:	83 c4 08             	add    esp,0x8
  459a1e:	c6 45 fc 04          	mov    BYTE PTR [ebp-0x4],0x4
  459a22:	e8 b9 7f fe ff       	call   0x4419e0
  459a27:	8b c8                	mov    ecx,eax
  459a29:	e8 e2 83 fe ff       	call   0x441e10
  459a2e:	6a 6f                	push   0x6f
  459a30:	ff 15 40 e3 4d 00    	call   DWORD PTR ds:0x4de340
  459a36:	b8 2e 9a 45 00       	mov    eax,0x459a2e
  459a3b:	c3                   	ret
  459a3c:	85 c0                	test   eax,eax
  459a3e:	75 65                	jne    0x459aa5
  459a40:	a0 f8 4c 51 00       	mov    al,ds:0x514cf8
  459a45:	84 c0                	test   al,al
  459a47:	74 39                	je     0x459a82
  459a49:	6a 00                	push   0x0
  459a4b:	68 58 13 51 00       	push   0x511358
  459a50:	e8 0b 40 fe ff       	call   0x43da60
  459a55:	50                   	push   eax
  459a56:	6a 2b                	push   0x2b
  459a58:	e8 93 3f fe ff       	call   0x43d9f0
  459a5d:	83 c4 08             	add    esp,0x8
  459a60:	8b cc                	mov    ecx,esp
  459a62:	89 65 ec             	mov    DWORD PTR [ebp-0x14],esp
  459a65:	50                   	push   eax
  459a66:	e8 f9 7f 07 00       	call   0x4d1a64
  459a6b:	6a 00                	push   0x0
  459a6d:	83 ec 0c             	sub    esp,0xc
  459a70:	8b cc                	mov    ecx,esp
  459a72:	89 31                	mov    DWORD PTR [ecx],esi
  459a74:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  459a77:	89 59 08             	mov    DWORD PTR [ecx+0x8],ebx
  459a7a:	e8 71 65 fb ff       	call   0x40fff0
  459a7f:	83 c4 18             	add    esp,0x18
  459a82:	6a 00                	push   0x0
  459a84:	68 f0 4c 51 00       	push   0x514cf0
  459a89:	68 70 98 45 00       	push   0x459870
  459a8e:	c7 05 f4 4c 51 00 ff 	mov    DWORD PTR ds:0x514cf4,0xffffffff
  459a95:	ff ff ff 
  459a98:	e8 f3 87 01 00       	call   0x472290
  459a9d:	83 c0 64             	add    eax,0x64
  459aa0:	e9 ce 00 00 00       	jmp    0x459b73
  459aa5:	8a 0d f8 4c 51 00    	mov    cl,BYTE PTR ds:0x514cf8
  459aab:	84 c9                	test   cl,cl
  459aad:	0f 84 a4 00 00 00    	je     0x459b57
  459ab3:	83 f8 05             	cmp    eax,0x5
  459ab6:	7c 10                	jl     0x459ac8
  459ab8:	99                   	cdq
  459ab9:	b9 05 00 00 00       	mov    ecx,0x5
  459abe:	f7 f9                	idiv   ecx
  459ac0:	85 d2                	test   edx,edx
  459ac2:	0f 85 8a 00 00 00    	jne    0x459b52
  459ac8:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  459acb:	e8 8e 7f 07 00       	call   0x4d1a5e
  459ad0:	68 58 13 51 00       	push   0x511358
  459ad5:	c7 45 fc 06 00 00 00 	mov    DWORD PTR [ebp-0x4],0x6
  459adc:	e8 7f 3f fe ff       	call   0x43da60
  459ae1:	50                   	push   eax
  459ae2:	6a 2a                	push   0x2a
  459ae4:	e8 07 3f fe ff       	call   0x43d9f0
  459ae9:	8b 15 f4 4c 51 00    	mov    edx,DWORD PTR ds:0x514cf4
  459aef:	83 c4 0c             	add    esp,0xc
  459af2:	50                   	push   eax
  459af3:	52                   	push   edx
  459af4:	68 58 13 51 00       	push   0x511358
  459af9:	e8 62 3f fe ff       	call   0x43da60
  459afe:	50                   	push   eax
  459aff:	6a 29                	push   0x29
  459b01:	e8 ea 3e fe ff       	call   0x43d9f0
  459b06:	83 c4 0c             	add    esp,0xc
  459b09:	50                   	push   eax
  459b0a:	8d 45 0c             	lea    eax,[ebp+0xc]
  459b0d:	68 e8 6a 50 00       	push   0x506ae8
  459b12:	50                   	push   eax
  459b13:	e8 7c 7f 07 00       	call   0x4d1a94
  459b18:	83 c4 14             	add    esp,0x14
  459b1b:	6a 00                	push   0x0
  459b1d:	51                   	push   ecx
  459b1e:	8d 55 0c             	lea    edx,[ebp+0xc]
  459b21:	8b cc                	mov    ecx,esp
  459b23:	89 65 ec             	mov    DWORD PTR [ebp-0x14],esp
  459b26:	52                   	push   edx
  459b27:	e8 20 7f 07 00       	call   0x4d1a4c
  459b2c:	6a 00                	push   0x0
  459b2e:	83 ec 0c             	sub    esp,0xc
  459b31:	8b c4                	mov    eax,esp
  459b33:	89 30                	mov    DWORD PTR [eax],esi
  459b35:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  459b38:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  459b3b:	e8 b0 64 fb ff       	call   0x40fff0
  459b40:	83 c4 18             	add    esp,0x18
  459b43:	8d 4d 0c             	lea    ecx,[ebp+0xc]
  459b46:	c7 45 fc ff ff ff ff 	mov    DWORD PTR [ebp-0x4],0xffffffff
  459b4d:	e8 ee 7e 07 00       	call   0x4d1a40
  459b52:	a1 f4 4c 51 00       	mov    eax,ds:0x514cf4
  459b57:	6a 00                	push   0x0
  459b59:	48                   	dec    eax
  459b5a:	68 f0 4c 51 00       	push   0x514cf0
  459b5f:	68 70 98 45 00       	push   0x459870
  459b64:	a3 f4 4c 51 00       	mov    ds:0x514cf4,eax
  459b69:	e8 22 87 01 00       	call   0x472290
  459b6e:	05 b0 04 00 00       	add    eax,0x4b0
  459b73:	50                   	push   eax
  459b74:	6a 04                	push   0x4
  459b76:	e8 85 fb 02 00       	call   0x489700
  459b7b:	83 c4 14             	add    esp,0x14
  459b7e:	e8 7d a6 fd ff       	call   0x434200
  459b83:	8b 10                	mov    edx,DWORD PTR [eax]
  459b85:	68 14 4d 51 00       	push   0x514d14
  459b8a:	8b c8                	mov    ecx,eax
  459b8c:	ff 52 0c             	call   DWORD PTR [edx+0xc]
  459b8f:	68 18 4d 51 00       	push   0x514d18
  459b94:	ff 15 fc e0 4d 00    	call   DWORD PTR ds:0x4de0fc
  459b9a:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
  459b9d:	5f                   	pop    edi
  459b9e:	5e                   	pop    esi
  459b9f:	64 89 0d 00 00 00 00 	mov    DWORD PTR fs:0x0,ecx
  459ba6:	5b                   	pop    ebx
  459ba7:	8b e5                	mov    esp,ebp
  459ba9:	5d                   	pop    ebp
  459baa:	c3                   	ret
  459bab:	90                   	nop
  459bac:	90                   	nop
  459bad:	90                   	nop
  459bae:	90                   	nop
  459baf:	90                   	nop


; BeforeNPCThread : appels successifs aux deux gestionnaires -- VA 0x00444DCC jusqu’à 0x00444DE9 (exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

00444dcc <.text+0x43dcc>:
  444dcc:	8d 8d 50 fe ff ff    	lea    ecx,[ebp-0x1b0]
  444dd2:	e8 d9 eb fe ff       	call   0x4339b0
  444dd7:	e8 64 92 00 00       	call   0x44e040
  444ddc:	e8 cf 49 04 00       	call   0x4897b0
  444de1:	6a 14                	push   0x14
  444de3:	ff 15 20 e1 4d 00    	call   DWORD PTR ds:0x4de120


; Programmation timer avec callback 0x4C9620 -- VA 0x004C924F jusqu’à 0x004C9265 (exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c924f <.text+0xc824f>:
  4c924f:	6a 01                	push   0x1
  4c9251:	53                   	push   ebx
  4c9252:	68 20 96 4c 00       	push   0x4c9620
  4c9257:	68 c8 00 00 00       	push   0xc8
  4c925c:	6a 64                	push   0x64
  4c925e:	e8 9d 04 fc ff       	call   0x489700
  4c9263:	83                   	.byte 0x83
  4c9264:	c4                   	.byte 0xc4


; Deuxième programmation du même callback -- VA 0x004C96FB jusqu’à 0x004C9712 (exclue)

/mnt/data/T4C Server(1).exe:     file format pei-i386


Disassembly of section .text:

004c96fb <.text+0xc86fb>:
  4c96fb:	6a 01                	push   0x1
  4c96fd:	56                   	push   esi
  4c96fe:	68 20 96 4c 00       	push   0x4c9620
  4c9703:	68 c8 00 00 00       	push   0xc8
  4c9708:	6a 64                	push   0x64
  4c970a:	e8 f1 ff fb ff       	call   0x489700
  4c970f:	83 c4 14             	add    esp,0x14

